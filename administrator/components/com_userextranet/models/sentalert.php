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

class UserExtranetModelSentalert extends JModelAdmin
{
	public function getTable($type = 'Sentalert', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	public function getForm($data = array(), $loadData = true) {}
	
	public function publish ($cid = array(), $publish = 1) {
		
		if (count( $cid ))
		{
			JArrayHelper::toInteger($cid);
			$cids = implode( ',', $cid );
			
			$query = 'UPDATE #__ue_alerts_sent'
				. ' SET aread = '.(int) $publish
				. ' WHERE id IN ( '.$cids.' )'
			;
			$this->_db->setQuery( $query );
			if (!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
		}

		return true;
	}
	
	public function delete ($cid = array()) {

		if (count( $cid )) {
			JArrayHelper::toInteger($cid);
			
			foreach ( $cid as $id ) {
				//delete from #__ue_alerts_sent
				$query = 'DELETE FROM #__ue_alerts_sent'
					. ' WHERE id = '
					. (int) $id
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
			}
		}

		return true;
	}
}

?>