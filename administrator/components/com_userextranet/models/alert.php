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

class UserExtranetModelAlert extends JModelAdmin
{
	public function __construct () {
		$fid = JRequest::getVar('fid', 0, 'get', 'int');
		$this->fid = (int)$fid;
		
		parent::__construct();
	}
	
	protected function canDelete($record)
	{
		$user = JFactory::getUser();

		if ($record->id) {
			return $user->authorise('core.delete', 'com_userextranet.alert.'.(int) $record->id);
		} else {
			return parent::canDelete($record);
		}
	}

	protected function canEditState($record)
	{
		$user = JFactory::getUser();
		
		//if ($record->id) {
		//	return $user->authorise('core.edit.state', 'com_beestohelpdesk.canned.'.(int) $record->id);
		//} else {
			return parent::canEditState($record);
		//}
	}


	public function getTable($type = 'Alert', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_userextranet.alert', 'alert', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form)) {
			return false;
		}

		// Modify the form based on access controls.
		if ($this->canEditState((object) $data) != true) {
			// Disable fields for display.
			$form->setFieldAttribute('ordering', 'disabled', 'true');

			// Disable fields while saving.
			// The controller has already verified this is a record you can edit.
			$form->setFieldAttribute('ordering', 'filter', 'unset');
		}

		return $form;
	}

	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_userextranet.edit.alert.data', array());

		if (empty($data)) {
			$data = $this->getItem();
		}

		return $data;
	}

	protected function getReorderConditions($table = null)
	{
		
		$condition = array();
		//$condition[] = 'id = '.(int) $table->id;
		return $condition;
	}
	
	public function publish ($cid = array(), $publish = 1) {
		
		if (count( $cid ))
		{
			JArrayHelper::toInteger($cid);
			$cids = implode( ',', $cid );
			
			$query = 'UPDATE #__ue_alerts'
				. ' SET published = '.(int) $publish
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
				//delete from #__ue_alerts
				$query = 'DELETE FROM #__ue_alerts'
					. ' WHERE id = '
					. (int) $id
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				//delete from #__ue_alerts_users_rel
				$query = 'DELETE FROM #__ue_alerts_users_rel'
					. ' WHERE alert_id = '
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
	
	public function store($data, $fid) {
		//get table
		$row = $this->getTable();
		
		//file id ( if any )
		$id = (int)$data['id'];
		
		//prepare data
		//atitle
		$data['atitle'] = htmlspecialchars_decode($data['atitle'], ENT_QUOTES);
		//atext
		$data['atext'] = UserExtranetHelper::filterText($data['atext']);
		//fid
		$data['fid'] = $fid;
		
		//insert into #__ue_alerts {
		// Bind the form fields
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		// Make sure the record is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		// Store to the database
		if (!$row->store()) {
			$this->setError( $this->_db->getErrorMsg() );
			return false;
		}
		//}
		
		//insert into #__ue_alerts_users_rel {
		$query = 'DELETE'
			. ' FROM #__ue_alerts_users_rel'
			. ' WHERE alert_id = '
			. $row->id
		;
		$this->_db->setQuery( $query );
		$this->_db->query();
		$allusers = $this->getAllUsers();
		if (!empty($allusers)):
		foreach ( $allusers as $val ) {
			if ( isset($data['uid_'.$val->id]) ) {
				$query = 'INSERT INTO #__ue_alerts_users_rel'
					. ' (alert_id, user_id)'
					. ' VALUES'
					. ' ('.$row->id.', '.(int)$val->id.')'
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
			}
		}
		endif;
		//}
		
		return $row->id;
	}
	
	public function getFid () {
		return $this->fid;
	}
	
	protected function getAllUsers () {
		$query = 'SELECT u.*'
			. ' FROM #__users AS u'
		;
		$this->_db->setQuery($query);
		$allusers = $this->_db->loadObjectList();
		
		return $allusers;
	}
}

?>