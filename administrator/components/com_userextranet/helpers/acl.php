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

class ueACL
{
	protected $_db;
	protected $_user;
	
	public function __construct () {
		$this->_db   = JFactory::getDbo();
		$this->_user = JFactory::getUser();
	}
	
	/*
	Check user permissions for component backend sections
	$action    {cfg_class.cfg_task}
	$user_id   optional parameter, if not provided will be ID of current user
	return	true,false,0,1
	*/
	public function can ($action, $user_id = 0) {
		
		$ueParams = JComponentHelper::getParams('com_userextranet');
		$staff = $ueParams->get('staff_status');
		if (!$staff) $staff = 1;
		if ( $staff == 2 ) {
			return true;
		}
		
		$action = explode('.', $action);
		
		$cfgClass = $action[0];
		$cfgTask = $action[1];
		
		if ( !$user_id ) $user_id = (int)$this->_user->get('id');
		
		$query = 'SELECT ua.cfg_value'
			. ' FROM #__ue_user_acl AS ua'
			. ' WHERE ua.user_id = '
			. $user_id
			. ' AND ua.cfg_class = '
			. $this->_db->Quote($cfgClass)
			. ' AND ua.cfg_task = '
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
