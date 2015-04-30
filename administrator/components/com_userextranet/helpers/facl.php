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

class ueFACL
{
	protected $_db;
	protected $_user;
	
	public function __construct () {
		$this->_db   = JFactory::getDbo();
		$this->_user = JFactory::getUser();
	}
	
	/*
	Check folder permissions
	$action    {cfg_folder.cfg_task}
	$user_id   optional parameter, if not provided will be ID of current user
	return	false,0,1
	*/
	public function can ($action, $user_id = 0) {
		
		$action = explode('.', $action);
		
		$cfgFolder = $action[0];
		$cfgTask = $action[1];
		
		if ( !$user_id ) $user_id = (int)$this->_user->get('id');
		
		$query = 'SELECT fa.cfg_value'
			. ' FROM #__ue_folder_acl AS fa'
			. ' WHERE fa.user_id = '
			. (int)$user_id
			. ' AND fa.cfg_folder = '
			. (int)$cfgFolder
			. ' AND fa.cfg_task = '
			. $this->_db->Quote($cfgTask)
		;
		$this->_db->setQuery($query);
		$res = $this->_db->loadResult();
		
		if ( !$res ) {
			return false;
		}
		
		return $res;
	}
	
	public function canGroup ($action, $group_id = 0) {
		
		$action = explode('.', $action);
		
		$cfgFolder = $action[0];
		$cfgTask = $action[1];
		
		$query = 'SELECT fa.cfg_value'
			. ' FROM #__ue_folder_acl_g AS fa'
			. ' WHERE fa.group_id = '
			. (int)$group_id
			. ' AND fa.cfg_folder = '
			. (int)$cfgFolder
			. ' AND fa.cfg_task = '
			. $this->_db->Quote($cfgTask)
		;
		$this->_db->setQuery($query);
		$res = $this->_db->loadResult();
		
		if ( !$res ) {
			return false;
		}
		
		return $res;
	}
}
