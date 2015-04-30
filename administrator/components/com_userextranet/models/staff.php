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

class UserExtranetModelStaff extends JModelAdmin
{
	
	protected function canDelete($record)
	{
		$user = JFactory::getUser();

		if ($record->id) {
			return $user->authorise('core.delete', 'com_userextranet.staff.'.(int) $record->id);
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


	public function getTable($type = 'Staff', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_userextranet.staff', 'staff', array('control' => 'jform', 'load_data' => $loadData));
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
		$data = JFactory::getApplication()->getUserState('com_userextranet.edit.staff.data', array());

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
	
	public function store ( $cid = array(), $data = array(), $multiple = 0 ) {
		
		$tasks = array(
			'folders_view',
			'folders_edit',
			'folders_add',
			'folders_delete',
			'permissions_view',
			'permissions_edit',
			'permissions_add',
			'permissions_delete',
			'usergroups_view',
			'usergroups_edit',
			'usergroups_add',
			'usergroups_delete',
			'staff_view',
			'staff_edit',
			'staff_add',
			'staff_delete',
			'downloads_view',
			'downloads_delete',
			'messages_view',
			'messages_edit',
			'messages_add',
			'messages_delete',
			'alerts_view',
			'alerts_edit',
			'alerts_add',
			'alerts_delete'
		)
		;
		
		$count = count($cid);
		
		if ($count) {
			foreach ( $cid as $uid ) {
				//insert into #__ue_user_acl {
				//delete previous permissions
				$query = 'DELETE'
					. ' FROM #__ue_user_acl'
					. ' WHERE user_id = '
					. $uid
				;
				$this->_db->setQuery($query);
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				foreach ( $tasks as $task ) {
					//insert new permissions
					$tempArr = explode('_', $task);
					$cfg_class = $tempArr[0];
					$cfg_task = $tempArr[1];
					if ($multiple) {
						$cfg_value = 1;
					}
					else {
						$cfg_value = isset($data[$task]) ? 1 : 0;
					}
					$query = 'INSERT'
						. ' INTO #__ue_user_acl'
						. ' (user_id, cfg_class, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$uid.', '.$this->_db->Quote($cfg_class).', '.$this->_db->Quote($cfg_task).', '.$this->_db->Quote($cfg_value).')'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				//}
				//insert into #__ue_staff
				$user = JFactory::getUser();
				$userId = (int)$user->get('id');
				$date = JFactory::getDate()->toSQL();
				if (!$data['id']) {
					$query = 'INSERT'
						. ' INTO #__ue_staff'
						. ' (user_id, created_date, created_by)'
						. ' VALUES'
						. ' ('.$uid.', '.$this->_db->Quote($date).', '.$userId.')'
					;
				}
				else {
					$query = 'UPDATE #__ue_staff'
						. ' SET'
						. ' created_date = '.$this->_db->Quote($data['created_date']).','
						. ' created_by = '.$this->_db->Quote($data['created_by']).','
						. ' created_by_alias = '.$this->_db->Quote($data['created_by_alias']).','
						. ' modified_date = '.$this->_db->Quote($date).','
						. ' modified_by = '.$userId.','
						. ' checked_out = 0,'
						. ' checked_out_time = '.$this->_db->Quote('0000-00-00 00:00:00')
						. ' WHERE id = '
						. $data['id']
					;
				}
				$this->_db->setQuery($query);
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
			}
		}
		
		//if no error occurred
		$return = $data['id'] ? 2 : 1;
		return $return;
	}
	
	public function check ($uid) {
		$query = 'SELECT s.id'
			. ' FROM #__ue_staff AS s'
			. ' WHERE s.user_id = '
			. (int)$uid
		;
		$this->_db->setQuery($query);
		$res = $this->_db->loadResult();
		
		return $res;
	}
	
	public function delete ($cid = array()) {

		if (count( $cid )) {
			JArrayHelper::toInteger($cid);
			
			foreach ( $cid as $key=>$value ) {
				//get staff user id
				$query = 'SELECT s.user_id'
					. ' FROM #__ue_staff AS s'
					. ' WHERE s.id = '
					. (int) $value
				;
				$this->_db->setQuery( $query );
				$user_id = $this->_db->loadResult();
				//delete from #__ue_staff
				$query = 'DELETE FROM #__ue_staff'
					. ' WHERE id = '
					. (int) $value
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				//delete from #__ue_user_acl
				$query = 'DELETE FROM #__ue_user_acl'
					. ' WHERE user_id = '
					. (int) $user_id
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