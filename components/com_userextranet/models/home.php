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

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.modellist');

class UserExtranetModelHome extends JModelList
{
	public function getLastAdded() {
		$db = $this->getDbo();
		$app = JFactory::getApplication();
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		$ueFACL = UserExtranetHelper::ueFACL();
		
		$ueParams = $app->getParams('com_userextranet');
		$ldocs_count = $ueParams->get('ldocs_count');
		if (!$ldocs_count) $ldocs_count = 5;
		$ldocs_lifetime = $ueParams->get('ldocs_lifetime');
		if (!$ldocs_lifetime) $ldocs_lifetime = 30;
		
		$lifetime = $ldocs_lifetime * 24 * 60 * 60;
		$limitL = time() - $lifetime;
		$limitL = date('Y-m-d H:i:s', $limitL);
		
		$query = 'SELECT f.id, f.pid, f.fname, f.ftype, f.ffolder, f.created_date'
			. ' FROM #__ue_folders AS f'
			. ' WHERE f.created_date > '
			. $db->Quote($limitL)
			. ' ORDER BY f.created_date DESC'
		;
		$db->setQuery($query);
		$objList = $db->loadObjectList();
		
		$lastAdded = array();
		if (!empty($objList)):
		$count = 0;
		foreach ( $objList as $obj ) {
			//if folder check if user can access folder and view files inside folder
			if ( $obj->ffolder ) {
				$canAccessFolder = $ueFACL->can($obj->id.'.access', $userId);
				$canViewFolder = $ueFACL->can($obj->id.'.view', $userId);
			}
			//if file
			else {
				//if file have root as parent allow access
				$canAccessFolder = true;
				$canViewFolder = true;
				//if parent is other than root check if user can access parent folder and view files inside
				if ( $obj->pid ) {
					$canAccessFolder = $ueFACL->can($obj->pid.'.access', $userId);
					$canViewFolder = $ueFACL->can($obj->pid.'.view', $userId);
				}
			}
			//if user can view file or folder add file/folder to last added array
			if ( $canAccessFolder && $canViewFolder ) {
				$lastAdded[] = $obj;
				$count++;
			}
			//if items limit is reached we stop here
			if ( $count == (int)$ldocs_count ) {
				break;
			}
		}
		endif;
		
		return $lastAdded;
	}
	
	public function getUnreadMessages() {
		$db = $this->getDbo();
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		$query = 'SELECT COUNT(*)'
			. ' FROM #__ue_messages_to AS mt'
			. ' LEFT JOIN #__ue_messages_read AS mr ON mr.message_id = mt.message_id'
			. ' WHERE mt.to_id = '
			. $userId
			. ' AND mr.id IS NULL'
		;
		$db->setQuery($query);
		$unread = $db->loadResult();
		
		return $unread;
	}
	
	public function getAlerts () {
		$db = $this->getDbo();
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		$query = 'SELECT a.id, a.atitle'
			. ' FROM #__ue_alerts_sent AS a'
			. ' WHERE a.user_id = '
			. $userId
			. ' AND a.aread = 0'
			. ' ORDER BY a.created_date DESC'
		;
		
		$db->setQuery($query);
		$alerts = $db->loadObjectList();
		
		return $alerts;
	}
}