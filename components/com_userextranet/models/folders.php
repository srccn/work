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

class UserExtranetModelFolders extends JModelList
{
	
	public function __construct($config = array()) {
		//user
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		//keyword
		$session = JFactory::getSession();
		$keyword = $session->get('ue-keyword', '');
		$keyword = base64_decode($keyword);
		$keyword = str_replace('+', ' ', $keyword);
		$this->keyword = $keyword;
		
		//folder id
		$this->fid = JRequest::getVar('fid', 0);
		
		//check if user can access folder
		$ueFACL = UserExtranetHelper::ueFACL();
		$canAccess = $ueFACL->can($this->fid.'.access', $userId);
		
		//if not redirect the user
		$app = JFactory::getApplication();
		if ( $this->fid && !$canAccess ) {
			$msg = JText::_('COM_USEREXTRANET_PAGE_NOT_FOUND');
			$app->redirect(JRoute::_('index.php?option=com_userextranet', false), $msg, 'error');
			return false;
		}
		
		parent::__construct($config);
	}
	
	public function getFolders() {
		$db = $this->getDbo();
		$app = JFactory::getApplication();
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		$ueFACL = UserExtranetHelper::ueFACL();
		
		$query = 'SELECT f.id, f.pid, f.fname, f.ftype, f.ffolder, f.created_date'
			. ' FROM #__ue_folders AS f'
			. ' WHERE f.pid = '
			. $this->fid
			. ' ORDER BY f.ordering ASC'
		;
		$db->setQuery($query);
		$objList = $db->loadObjectList();
		
		$docs = array();
		if (!empty($objList)):
		foreach ( $objList as $obj ) {
			//if folder check if user can access folder and view files inside folder
			if ( $obj->ffolder ) {
				$canAccessFolder = $ueFACL->can($obj->id.'.access', $userId);
				//$canViewFolder = $ueFACL->can($obj->id.'.view', $userId);
				$canViewFolder = true;
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
				$docs[] = $obj;
			}
		}
		endif;
		
		return $docs;
	}
	
	public function getFid () {
		return $this->fid;
	}
	
	public function getKeyword () {
		return $this->keyword;
	}
}