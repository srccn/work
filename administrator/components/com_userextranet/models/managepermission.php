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

jimport('joomla.application.component.modeladmin');

class UserExtranetModelManagepermission extends JModelAdmin
{
	public function getForm($data = array(), $loadData = true) {}
	
	public function publish ($cid = array(), $publish = 1) {
		if (count( $cid )) {
			//allow
			if ( $publish ) {
				foreach ( $cid as $uid ) {
					//check if user already allowed
					$check = 'SELECT eu.id'
						. ' FROM #__ue_users AS eu'
						. ' WHERE eu.user_id = '
						. $uid
					;
					$this->_db->setQuery($check);
					$res = $this->_db->loadResult();
					
					//if not allowed we can proceed
					if ( !$res ): 
					$query = 'INSERT INTO #__ue_users'
						. ' (user_id)'
						. ' VALUES'
						. ' ('.$uid.')'
					;
					$this->_db->setQuery( $query );
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					endif;
				}
			}
			//block
			else {
				foreach ( $cid as $uid ) {
					$query = 'DELETE FROM #__ue_users'
						. ' WHERE user_id = '
						. $uid
					;
					$this->_db->setQuery( $query );
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
			}
		}

		return true;
	}
}

?>