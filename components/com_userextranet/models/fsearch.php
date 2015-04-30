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

class UserExtranetModelFSearch extends JModelList
{
	public function __construct () {
		//keyword
		$session = JFactory::getSession();
		$keyword = $session->get('ue-keyword', '');
		$keyword = base64_decode($keyword);
		$keyword = str_replace('+', ' ', $keyword);
		$this->keyword = $keyword;
		//total result
		$this->total = 0;
		
		parent::__construct();
	}
	
	public function getItems() {
		$db = $this->getDbo();
		$app = JFactory::getApplication();
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		$ueFACL = UserExtranetHelper::ueFACL();
		
		$ueParams = $app->getParams('com_userextranet');
		
		$items = array();
		
		if (!empty($this->keyword)):
		
		$query = 'SELECT f.id, f.pid, f.fname, f.ftype, f.fdesc, f.ffolder, f.created_date'
			. ' FROM #__ue_folders AS f'
			//. ' WHERE MATCH(f.fname, f.fdesc) AGAINST ('.$db->Quote($this->keyword).') OR f.fname LIKE '.$db->Quote('%'.$this->keyword.'%').' OR f.fdesc LIKE '.$db->Quote('%'.$this->keyword.'%')
			. ' WHERE f.fname LIKE '.$db->Quote('%'.$this->keyword.'%').' OR f.fdesc LIKE '.$db->Quote('%'.$this->keyword.'%').' OR f.ftype LIKE '.$db->Quote('%'.$this->keyword.'%')
			. ' ORDER BY f.created_date DESC'
		;
		
		$db->setQuery($query);
		$objList = $db->loadObjectList();
		
		if (!empty($objList)):
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
				$items[] = $obj;
				$this->total++;
			}
		}
		endif;
		
		endif;
		
		return $items;
	}
	
	public function getKeyword () {
		return $this->keyword;
	}
	
	public function getTotal () {
		return $this->total;
	}
}