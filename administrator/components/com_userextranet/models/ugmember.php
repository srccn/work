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

class UserExtranetModelUgmember extends JModelAdmin
{
	public function __construct() {
		$this->uid = JRequest::getVar('uid', 0, 'get', 'int');
		
		parent::__construct();
	}
	
	protected function canDelete($record)
	{
		$user = JFactory::getUser();

		if ($record->id) {
			return $user->authorise('core.delete', 'com_userextranet.ugmember.'.(int) $record->id);
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


	public function getTable($type = 'Ugmember', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_userextranet.ugmember', 'ugmember', array('control' => 'jform', 'load_data' => $loadData));
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
		$data = JFactory::getApplication()->getUserState('com_userextranet.edit.ugmember.data', array());

		if (empty($data)) {
			$data = $this->getItem();
		}
		
		if ($this->uid) $data->user_id = $this->uid;

		return $data;
	}

	protected function getReorderConditions($table = null)
	{
		
		$condition = array();
		//$condition[] = 'id = '.(int) $table->id;
		return $condition;
	}
	
	public function store ( $cid = array(), $gid ) {
		
		if (count( $cid )) {
			foreach ( $cid as $uid ) {
				//if uncategorized users
				if ( !$gid ) {
					$query = 'DELETE'
						. ' FROM #__ue_usergroups_rel'
						. ' WHERE user_id = '
						. $uid
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				//if group selected
				else {
					//check if user have any group assigned
					$query = 'SELECT ugr.id'
						. ' FROM #__ue_usergroups_rel AS ugr'
						. ' WHERE ugr.user_id = '
						. $uid
					;
					$this->_db->setQuery($query);
					$res = $this->_db->loadResult();
					//if user have a group assigned: update
					if ($res) {
						$query = 'UPDATE #__ue_usergroups_rel'
							. ' SET group_id = '
							. $gid
							. ' WHERE user_id = '
							. $uid
						;
					}
					//if not: insert
					else {
						$query = 'INSERT INTO #__ue_usergroups_rel'
							. ' (user_id, group_id)'
							. ' VALUES'
							. ' ('.$uid.', '.$gid.')'
						;
					}
					//apply query
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
			}
		}
		
		//if no error occurred
		return true;
	}
}

?>