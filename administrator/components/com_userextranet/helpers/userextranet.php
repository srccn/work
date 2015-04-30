<?php
/*
 * @package Joomla 3
 * @copyright Copyright (C) 2005 Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 *
 * @component UserExtranet 1.3
 * @copyright Copyright (C) 2014 Popa S. Alexandru www.beesto.com
 * @license : GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die;

require_once JPATH_COMPONENT.'/helpers/acl.php';
require_once JPATH_COMPONENT.'/helpers/facl.php';

class UserExtranetHelper
{
	
	public static function addSubmenu($submenu) {
		$submenus = array('UserExtranet','folders','managepermissions','folderpermissions','usergroups','ugmembers','staffs','staffsaddm','downloads','messages','about');
		$ueACL = self::ueACL();
		if (in_array($submenu, $submenus)) {
			JHtmlSidebar::addEntry(JText::_('COM_USEREXTRANET_CONTROL_PANEL'), 'index.php?option=com_userextranet', $submenu == 'UserExtranet');
			
			if ($ueACL->can('folders.view')):
			JHtmlSidebar::addEntry(JText::_('COM_USEREXTRANET_FILES_AND_FOLDERS'), 'index.php?option=com_userextranet&view=folders', $submenu == 'folders');
			endif;
			
			if ($ueACL->can('permissions.view')):
			JHtmlSidebar::addEntry(JText::_('COM_USEREXTRANET_MANAGE_PERMISSIONS'), 'index.php?option=com_userextranet&view=managepermissions', $submenu == 'managepermissions' || $submenu == 'folderpermissions');
			endif;
			
			if ($ueACL->can('usergroups.view')):
			JHtmlSidebar::addEntry(JText::_('COM_USEREXTRANET_USER_GROUPS'), 'index.php?option=com_userextranet&view=usergroups', $submenu == 'usergroups' || $submenu == 'ugmembers');
			endif;
			
			if ($ueACL->can('staff.view')):
			JHtmlSidebar::addEntry(JText::_('COM_USEREXTRANET_STAFF'), 'index.php?option=com_userextranet&view=staffs', $submenu == 'staffs' || $submenu == 'staffsaddm');
			endif;
			
			if ($ueACL->can('downloads.view')):
			JHtmlSidebar::addEntry(JText::_('COM_USEREXTRANET_DOWNLOADS'), 'index.php?option=com_userextranet&view=downloads', $submenu == 'downloads');
			endif;
			
			if ($ueACL->can('messages.view')):
			JHtmlSidebar::addEntry(JText::_('COM_USEREXTRANET_MESSAGES'), 'index.php?option=com_userextranet&view=messages', $submenu == 'messages');
			endif;
			
			JHtmlSidebar::addEntry(JText::_('COM_USEREXTRANET_ABOUT'), 'index.php?option=com_userextranet&view=about', $submenu == 'about');
		}
	}
	
	public static function getActions() {
		$user	= JFactory::getUser();
		$result	= new JObject;

		$assetName = 'com_userextranet';
		
		$actions = array(
			'core.admin', 'core.manage', 'core.create', 'core.edit', 'core.edit.state', 'core.delete'
		);

		foreach ($actions as $action) {
			$result->set($action,	$user->authorise($action, $assetName));
		}

		return $result;
	}
	
	public static function ueACL() {
		$result	= new ueACL;

		return $result;
	}
	
	public static function ueFACL() {
		$result	= new ueFACL;

		return $result;
	}
	
	public static function filterText($text)
	{
		// Filter settings
		jimport('joomla.application.component.helper');
		$config		= JComponentHelper::getParams('com_userextranet');
		
		$filters = $config->get('filters');

		$blackListTags			= array();
		$blackListAttributes	= array();

		$whiteListTags			= array();
		$whiteListAttributes	= array();

		$noHtml		= false;
		$whiteList	= false;
		$blackList	= false;
		$unfiltered	= false;

		// May have not saved the filters.
		if (!isset($filters->filter_type)) {
			$filters->filter_type = 'BL';
			$filters->filter_tags = '';
			$filters->filter_attributes = '';
		}

		$filterData = $filters;
		$filterType	= strtoupper($filterData->filter_type);

		if ($filterType == 'NH') {
			// Maximum HTML filtering.
			$noHtml = true;
		}
		else if ($filterType == 'NONE') {
			// No HTML filtering.
			$unfiltered = true;
		}
		else {
			// Black or white list.
			// Preprocess the tags and attributes.
			$tags			= explode(',', $filterData->filter_tags);
			$attributes		= explode(',', $filterData->filter_attributes);
			$tempTags		= array();
			$tempAttributes	= array();

			foreach ($tags AS $tag)
			{
				$tag = trim($tag);

				if ($tag) {
					$tempTags[] = $tag;
				}
			}

			foreach ($attributes AS $attribute)
			{
				$attribute = trim($attribute);

				if ($attribute) {
					$tempAttributes[] = $attribute;
				}
			}

			// Collect the black or white list tags and attributes.
			// Each list is cummulative.
			if ($filterType == 'BL') {
				$blackList				= true;
				$blackListTags			= array_merge($blackListTags, $tempTags);
				$blackListAttributes	= array_merge($blackListAttributes, $tempAttributes);
			}
			else if ($filterType == 'WL') {
				$whiteList				= true;
				$whiteListTags			= array_merge($whiteListTags, $tempTags);
				$whiteListAttributes	= array_merge($whiteListAttributes, $tempAttributes);
			}
		}

		// Remove duplicates before processing (because the black list uses both sets of arrays).
		$blackListTags			= array_unique($blackListTags);
		$blackListAttributes	= array_unique($blackListAttributes);
		$whiteListTags			= array_unique($whiteListTags);
		$whiteListAttributes	= array_unique($whiteListAttributes);

		// Unfiltered assumes first priority.
		if ($unfiltered) {
			// Dont apply filtering.
		}
		else {
			// Black lists take second precedence.
			if ($blackList) {
				// Remove the white-listed attributes from the black-list.
				$filter = JFilterInput::getInstance(
					array_diff($blackListTags, $whiteListTags), 			// blacklisted tags
					array_diff($blackListAttributes, $whiteListAttributes), // blacklisted attributes
					1,														// blacklist tags
					1														// blacklist attributes
				);
			}
			// White lists take third precedence.
			else if ($whiteList) {
				$filter	= JFilterInput::getInstance($whiteListTags, $whiteListAttributes, 0, 0, 0);  // turn off xss auto clean
			}
			// No HTML takes last place.
			else {
				$filter = JFilterInput::getInstance();
			}

			$text = $filter->clean($text, 'html');
		}

		return $text;
	}
	
	public static function resetCheckedOut($table, $id) {
		$db = JFactory::getDbo();
		$query = 'UPDATE #__ue_'.$table
			. ' SET checked_out = 0, checked_out_time = '.$db->Quote('0000-00-00 00:00:00')
			. ' WHERE id = '
			. (int)$id
		;
		$db->setQuery($query);
		$db->query();
	}
	
	public static function editSystemMessages () {
		//session object
		$session = JFactory::getSession();
		
		$msg = $session->get('application.queue');
		if ( !empty($msg) ) {
			$add = '<!-- bhd_close_message_button --><div style="float:right;"><a style="color:#FFFFFF;border:1px solid #962B10; background: #C33714; padding: 3px 5px;" onclick="document.getElementById(\'system-message-container\').style.display=\'none\'" href="javascript:void(0);">'.JText::_('COM_BEESTOHELPDESK_CLOSE_THIS_MESSAGE').'</a></div>';
			foreach ( $msg as $key=>$value ) {
				if ( !strpos($msg[$key]['message'], '<!-- bhd_close_message_button -->') ) {
					$msg[$key]['message'] = $msg[$key]['message'].$add;
				}
			}
			$session->set('application.queue', $msg);
		}
	}
	
	public static function getRow ($table = '', $columns = array(), $rowid = 0) {
		//get database object
		$db = JFactory::getDbo();
		
		//check if the parameters are set
		if (!$table || empty($columns) || !$rowid) {
			return false;
		}
		
		//set the query
		$columns = implode(',', $columns);
		$query = 'SELECT '.$columns
			. ' FROM '.$table
			. ' WHERE id = '
			. (int)$rowid
		;
		$db->setQuery($query);
		
		//get row result as object
		$res = $db->loadObject();
		
		return $res;
	}
	
	public static function showHelpNote ( $noteId, $userId = 0 ) {
		//get database object
		$db = JFactory::getDbo();
		
		//get user object
		$user = JFactory::getUser();
		
		if ( !$userId ) $userId = (int)$user->get('id');
		
		$query = 'SELECT hs.hn_state'
			. ' FROM #__ue_helpnotes_states AS hs'
			. ' WHERE hs.user_id = '
			. $userId
			. ' AND hs.hn_id = '
			. $noteId
		;
		$db->setQuery($query);
		$res = $db->loadResult();
		
		if ( !is_numeric($res) && !$res ) {
			return true;
		}
		
		return $res;
	}
	
	public static function getHelpNote ( $noteId ) {
		//get database object
		$db = JFactory::getDbo();
		
		$query = 'SELECT h.hn_body'
			. ' FROM #__ue_helpnotes AS h'
			. ' WHERE h.id = '
			. $noteId
		;
		$db->setQuery($query);
		$hn = $db->loadResult();
		
		return $hn;
	}
	
	public static function setHelpNoteState ( $noteId, $state ) {
		//get database object
		$db = JFactory::getDbo();
		
		//get user object
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		//check if user in #__ue_helpnotes_states
		$query = 'SELECT hs.id'
			. ' FROM #__ue_helpnotes_states AS hs'
			. ' WHERE hs.user_id = '
			. $userId
			. ' AND hs.hn_id = '
			. $noteId
		;
		$db->setQuery($query);
		$res = $db->loadResult();
		
		if ( $res ) {
			$query = 'UPDATE #__ue_helpnotes_states'
				. ' SET hn_state = '
				. $state
				. ' WHERE user_id = '
				. $userId
				. ' AND hn_id = '
				. $noteId
			;
		}
		else {
			$query = 'INSERT INTO #__ue_helpnotes_states'
				. ' (user_id, hn_id, hn_state)'
				. ' VALUES'
				. ' ('.$userId.', '.$noteId.', '.$state.')'
			;
		}
		
		$db->setQuery($query);
		if (!$db->query()) {
			return false;
		}
		
		return true;
	}
	
	public static function getDirectory ( $fid = 0 ) {
		//get database object
		$db = JFactory::getDbo();
		
		//get ancestors
		$dirPath = array();
		$dirId = 0;
		$id = $fid;
		while ( $id > 0 ) {
			$query = 'SELECT f.pid,'
				. ' p.fname'
				. ' FROM #__ue_folders AS f'
				. ' LEFT JOIN #__ue_folders AS p ON p.id = f.pid'
				. ' WHERE f.id = '
				. $id
			;
			$db->setQuery($query);
			$obj = $db->loadObject();
			//if given id not exist
			if ( !$obj ) {
				return false;
			}
			$id = $obj->pid;
			if (!$dirId) $dirId = $id;
			if ($id) $dirPath[] = $obj->fname;
		}
		
		if ( empty($dirPath) ) {
			return false;
		}
		
		$dirPath = array_reverse($dirPath);
		$dirPath = implode('/', $dirPath);
		
		$dir = new stdClass();
		$dir->path = $dirPath;
		$dir->id = $dirId;
		
		return $dir;
	}
	
	public static function isStaff ($user_id = 0) {
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		if (!$user_id) $user_id = $userId;
		
		$db = JFactory::getDbo();
		
		$query = 'SELECT s.id'
			. ' FROM #__ue_staff AS s'
			. ' WHERE s.user_id = '
			. $user_id
		;
		$db->setQuery($query);
		$isStaff = $db->loadResult();
		
		return $isStaff;
	}
	
	public static function isSuperUser ($user_id = 0) {
		if (!$user_id) {
			$user = JFactory::getUser();
		}
		else {
			$user = JFactory::getUser($user_id);
		}
		
		$isSuperUser = $user->authorise('core.admin');
		
		return $isSuperUser;
	}
	
	public static function createStaffAccount ($user_id = 0) {
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		if (!$user_id) $user_id = $userId;
		
		$db = JFactory::getDbo();
		
		$date = JFactory::getDate()->toSQL();
		
		$tasks = array(
			'folders.view',
			'folders.edit',
			'folders.add',
			'folders.delete',
			'permissions.view',
			'permissions.edit',
			'permissions.add',
			'permissions.delete',
			'usergroups.view',
			'usergroups.edit',
			'usergroups.add',
			'usergroups.delete',
			'staff.view',
			'staff.edit',
			'staff.add',
			'staff.delete',
			'downloads.view',
			'downloads.delete',
			'messages.view',
			'messages.edit',
			'messages.add',
			'messages.delete',
			'alerts.view',
			'alerts.edit',
			'alerts.add',
			'alerts.delete'
		)
		;
		
		//insert into #__ue_staff
		$query = 'INSERT'
			. ' INTO #__ue_staff'
			. ' (user_id, created_date, created_by)'
			. ' VALUES'
			. ' ('.$user_id.', '.$db->Quote($date).', '.$user_id.')'
		;
		$db->setQuery($query);
		$db->query();
		
		//delete from #__ue_user_acl
		$query = 'DELETE'
			. ' FROM #__ue_user_acl'
			. ' WHERE user_id = '
			. $user_id
		;
		$db->setQuery($query);
		$db->query();
		
		//insert into #__ue_user_acl
		foreach ( $tasks as $task ) {
			$cfg = explode('.', $task);
			$cfg_class = $cfg[0];
			$cfg_task = $cfg[1];
			$query = 'INSERT'
				. ' INTO #__ue_user_acl'
				. ' (user_id, cfg_class, cfg_task, cfg_value)'
				. ' VALUES'
				. ' ('.$user_id.', '.$db->Quote($cfg_class).', '.$db->Quote($cfg_task).', 1)'
			;
			$db->setQuery($query);
			$db->query();
		}
	}
	
	public static function getPath ( $fid = 0 ) {
		//get database object
		$db = JFactory::getDbo();
		
		//initialize path
		$path = array();
		
		//add current dir to path
		$obj = new stdClass;
		$obj->id = $fid;
		$obj->name = self::getFName($fid);
		$path[] = $obj;
		
		//get ancestors
		$pathId = 0;
		$id = $fid;
		while ( $id > 0 ) {
			$query = 'SELECT f.pid AS id,'
				. ' p.fname AS name'
				. ' FROM #__ue_folders AS f'
				. ' LEFT JOIN #__ue_folders AS p ON p.id = f.pid'
				. ' WHERE f.id = '
				. $id
			;
			$db->setQuery($query);
			$obj = $db->loadObject();
			//if given id not exist
			$id = $obj->id;
			if (!$pathId) $pathId = $id;
			if ($id) $path[] = $obj;
		}
		
		//add root dir to path
		$obj = new stdClass;
		$obj->id = 0;
		$obj->name = JText::_('COM_USEREXTRANET_ROOT');
		$path[] = $obj;
		
		$path = array_reverse($path);
		
		return $path;
	}
	
	public static function getFName ( $fid = 0 ) {
		$db = JFactory::getDbo();
		$query = 'SELECT f.fname'
			. ' FROM #__ue_folders AS f'
			. ' WHERE f.id = '
			. $fid
		;
		$db->setQuery($query);
		$res = $db->loadResult();
		
		return $res;
	}
	
	public static function getTreeData ( $fid ) {
		$db = JFactory::getDbo();
		
		$treedata = array();
		$first = new stdClass;
		$first->id = $fid;
		$parents = array($first);
		while ( !empty($parents) ) {
			$temp = array();
			foreach ( $parents as $parent ) {
				$query = 'SELECT f.*,'
					. ' pf.frname AS pfrname'
					. ' FROM #__ue_folders AS f'
					. ' LEFT JOIN #__ue_folders AS pf ON pf.id = f.pid'
					. ' WHERE f.pid = '
					. $parent->id
				;
				$db->setQuery($query);
				$objList = $db->loadObjectList();
				if ( !empty($objList) ) {
					$temp = array_merge($temp, $objList);
				}
			}
			if (!empty($temp)) {
				$treedata = array_merge($treedata, $temp);
			}
			$parents = $temp;
		}
		
		return $treedata;
	}
	
	public static function setCode () {
		$db = JFactory::getDbo();
		
		$chars = array_merge(range('a', 'z'), range(0, 9));
		
		$res = 1;
		while ( $res ) {
			$try = '';
			for ( $i=0; $i<20; $i++ ) {
				$try .= $chars[rand(0, 35)];
			}
			$query = 'SELECT c.value'
				. ' FROM #__ue_codes AS c'
				. ' WHERE c.value = '
				. $db->Quote($try)
			;
			$db->setQuery($query);
			$res = $db->loadResult();
		}
		
		$query = 'INSERT'
			. ' INTO #__ue_codes'
			. ' (value)'
			. ' VALUES'
			. ' ('.$db->Quote($try).')'
		;
		$db->setQuery($query);
		$db->query();
		
		return $try;
	}
	
	public static function convertSize ( $size ) {
		$mb = 1024*1024;
		if ( $size > $mb ) {
			$size = number_format($size/$mb, 2, '.', ',').' MB';
		}
		else {
			$size = number_format($size/1024, 2, '.', ',').' KB';
		}
		
		return $size;
	}
	
	public function getFolderSize ( $id ) {
		$fsize = 0;
		//get subfolders
		$sub = self::getTreeData($id);
		if ( !empty($sub) ) {
			foreach ( $sub as $subobj ) {
				$fsize += $subobj->fsize;
			}
		}
		
		return $fsize;
	}
	
	public function getFolderAccess ( $id ) {
		$db = JFactory::getDbo();
		$query = 'SELECT fa.id'
			. ' FROM #__ue_folder_acl AS fa'
			. ' WHERE fa.cfg_folder = '
			. $id
			. ' AND fa.cfg_task = '
			. $db->Quote('access')
			. ' LIMIT 0,1'
		;
		$db->setQuery($query);
		$res = $db->loadResult();
		
		if ( !$res ) {
			return false;
		}
		
		return true;
	}
	
	public static function sendAlert ($fid, $event, $eventLoc, $fileId, $fileNames, $subfolderId) {
		$db = JFactory::getDbo();
		$date = JFactory::getDate()->toSQL();
		$app = JFactory::getApplication();
		
		//search for alerts
		$query = 'SELECT a.*'
			. ' FROM #__ue_alerts AS a'
			. ' WHERE a.fid = '
			. $fid
			. ' AND a.atask = '
			. $event
			. ' AND ( a.ataskloc = '.$eventLoc.' OR a.ataskloc = 2 )'
		;
		$db->setQuery($query);
		$alerts = $db->loadObjectList();
		
		if ( !empty($alerts) ) {
			
			//folder name
			$objFolder = UserExtranetHelper::getRow('#__ue_folders', array('fname'), $fid);
			$folderName = $objFolder->fname;
			
			//file name
			$fileName = $fileNames;
			if ( $fileId ):
			$objFile = UserExtranetHelper::getRow('#__ue_folders', array('fname', 'ftype'), $fileId);
			$fileName = $objFile->fname.'.'.$objFile->ftype;
			endif;
			
			//subfolder name
			$subfolderName = '';
			if ( $subfolderId ):
			$objSubfolder = UserExtranetHelper::getRow('#__ue_folders', array('fname'), $subfolderId);
			$subfolderName = $objSubfolder->fname;
			endif;
			
			//regex
			$regex = '/^[a-zA-Z0-9._-]+(\+[a-zA-Z0-9._-]+)*@([a-zA-Z0-9.-]+\.)+[a-zA-Z0-9.-]{2,4}$/';
			
			//from
			$namefrom = $app->getCfg( 'sitename' );
			
			//no-reply email
			$ueParams = JComponentHelper::getParams('com_userextranet');
			$mailfrom = $ueParams->get('noreply_email');
			if ( !$mailfrom ) $mailfrom = $namefrom;
			
			foreach ( $alerts as $alert ) {
				if ( $alert->published ) {
					//replace tags
					$alert->atext = str_replace('{FOLDER_NAME}', $folderName, $alert->atext);
					$alert->atext = str_replace('{FILE_NAME}', $fileName, $alert->atext);
					$alert->atext = str_replace('{SUBFOLDER_NAME}', $subfolderName, $alert->atext);
					
					//email subject
					$subject = $alert->atitle;
					
					//email format
					//html mode
					$format = false;
					
					//get recipients
					$query = 'SELECT aur.user_id,'
						. ' u.email, u.name'
						. ' FROM #__ue_alerts_users_rel AS aur'
						. ' LEFT JOIN #__users AS u ON u.id = aur.user_id'
						. ' WHERE aur.alert_id = '
						. $alert->id
					;
					$db->setQuery($query);
					$recipients = $db->loadObjectList();
					
					if ( !empty($recipients) ) {
						foreach ( $recipients as $recipient ) {
							//replace tags
							$atext = str_replace('{USER_NAME}', $recipient->name, $alert->atext);
							//email message
							$message = $atext;
							//send by email
							if ( !$alert->asendby || $alert->asendby == 2 ) {
								//email
								$email = $recipient->email;
								//send email
								if ( preg_match($regex, $email) ):
								$mailer = JFactory::getMailer();
								$mailer->setSender(array($mailfrom, $mailfrom));
								$mailer->setSubject(stripslashes($subject));
								$mailer->setBody($message);
								$mailer->IsHTML($format);
								$mailer->addRecipient($email);
								$rs	= $mailer->Send();
								endif;
							}
							//send by message
							if ( $alert->asendby == 1 || $alert->asendby == 2 ) {
								$query = 'INSERT'
									. ' INTO #__ue_alerts_sent'
									. ' (user_id, atitle, atext, aread, apriority, created_date)'
									. ' VALUES'
									. ' ('.$recipient->user_id.', '.$db->Quote($alert->atitle).', '.$db->Quote($atext).', 0, '.$alert->apriority.', '.$db->Quote($date).')'
								;
								$db->setQuery($query);
								$db->query();
							}
						}
					}
				}
			}
		}
	}
}