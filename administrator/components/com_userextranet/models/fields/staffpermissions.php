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
 
defined('JPATH_BASE') or die;
jimport('joomla.form.formfield');

class JFormFieldStaffPermissions extends JFormField
{
	public $type = 'StaffPermissions';

	protected function getInput()
	{
		//database object
		$db = JFactory::getDbo();
		
		//tasks
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
		
		//get staff user_id
		$user_id = $this->form->getValue('user_id');
		
		//get staff permissions
		$query = 'SELECT ua.*'
			. ' FROM #__ue_user_acl AS ua'
			. ' WHERE ua.user_id = '
			. (int)$user_id
		;
		$db->setQuery($query);
		$permissions = $db->loadObjectList();
		$task = array();
		if ( !empty($permissions) ) {
			foreach ( $permissions as $permission ) {
				$task[$permission->cfg_class.'_'.$permission->cfg_task] = $permission->cfg_value;
			}
		}
		else {
			foreach ( $tasks as $tval ) {
				$task[$tval] = 1;
			}
		}
		
		// Initialize variables.
		$html = array();
		
		$html[] = '<style type="text/css">';
		$html[] = 'table tr td { vertical-align: top; }';
		$html[] = '.ue-staff-check { margin: 0; }';
		$html[] = '</style>';
		
		$html[] = '<div style="font-size:12px; width: 100%;">';
		$html[] = '<table style="width: 100%;" cellpadding="5">';
		
		//folders {
		$html[] = '<tr style="background-color: #E5E5E5;">';
		$html[] = '<td colspan="3" style="padding: 5px; font-weight: bold;">';
		$html[] = JText::_('COM_USEREXTRANET_FILES_AND_FOLDERS');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td style="width: 10px;">';
		$checked = $task['folders_view'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_folders_view" name="jform[folders_view]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td style="width: 50px;">';
		$html[] = JText::_('COM_USEREXTRANET_VIEW');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_FOLDERS_VIEW_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['folders_edit'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_folders_edit" name="jform[folders_edit]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_EDIT');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_FOLDERS_EDIT_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['folders_add'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_folders_add" name="jform[folders_add]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_ADD');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_FOLDERS_ADD_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['folders_delete'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_folders_delete" name="jform[folders_delete]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_DELETE');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_FOLDERS_DELETE_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		//}
		
		//permissions {
		$html[] = '<tr style="background-color: #E5E5E5;">';
		$html[] = '<td colspan="3" style="padding: 5px; font-weight: bold;">';
		$html[] = JText::_('COM_USEREXTRANET_MANAGE_PERMISSIONS');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['permissions_view'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_permissions_view" name="jform[permissions_view]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_VIEW');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_PERMISSIONS_VIEW_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['permissions_edit'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_permissions_edit" name="jform[permissions_edit]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_EDIT');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_PERMISSIONS_EDIT_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['permissions_add'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_permissions_add" name="jform[permissions_add]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_ADD');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_PERMISSIONS_ADD_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['permissions_delete'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_permissions_delete" name="jform[permissions_delete]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_DELETE');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_PERMISSIONS_DELETE_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		//}
		
		//usergroups {
		$html[] = '<tr style="background-color: #E5E5E5;">';
		$html[] = '<td colspan="3" style="padding: 5px; font-weight: bold;">';
		$html[] = JText::_('COM_USEREXTRANET_USER_GROUPS');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['usergroups_view'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_usergroups_view" name="jform[usergroups_view]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_VIEW');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_USERGROUPS_VIEW_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['usergroups_edit'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_usergroups_edit" name="jform[usergroups_edit]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_EDIT');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_USERGROUPS_EDIT_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['usergroups_add'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_usergroups_add" name="jform[usergroups_add]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_ADD');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_USERGROUPS_ADD_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['usergroups_delete'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_usergroups_delete" name="jform[usergroups_delete]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_DELETE');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_USERGROUPS_DELETE_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		//}
		
		//staff {
		$html[] = '<tr style="background-color: #E5E5E5;">';
		$html[] = '<td colspan="3" style="padding: 5px; font-weight: bold;">';
		$html[] = JText::_('COM_USEREXTRANET_STAFF');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['staff_view'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_staff_view" name="jform[staff_view]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_VIEW');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_STAFF_VIEW_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['staff_edit'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_staff_edit" name="jform[staff_edit]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_EDIT');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_STAFF_EDIT_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['staff_add'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_staff_add" name="jform[staff_add]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_ADD');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_STAFF_ADD_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['staff_delete'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_staff_delete" name="jform[staff_delete]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_DELETE');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_STAFF_DELETE_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		//}
		
		//downloads {
		$html[] = '<tr style="background-color: #E5E5E5;">';
		$html[] = '<td colspan="3" style="padding: 5px; font-weight: bold;">';
		$html[] = JText::_('COM_USEREXTRANET_DOWNLOADS');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['downloads_view'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_downloads_view" name="jform[downloads_view]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_VIEW');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_DOWNLOADS_VIEW_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['downloads_delete'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_downloads_delete" name="jform[downloads_delete]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_DELETE');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_DOWNLOADS_DELETE_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		//}
		
		//messages {
		$html[] = '<tr style="background-color: #E5E5E5;">';
		$html[] = '<td colspan="3" style="padding: 5px; font-weight: bold;">';
		$html[] = JText::_('COM_USEREXTRANET_MESSAGES');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['messages_view'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_messages_view" name="jform[messages_view]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_VIEW');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_MESSAGES_VIEW_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['messages_edit'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_messages_edit" name="jform[messages_edit]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_EDIT');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_MESSAGES_EDIT_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['messages_add'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_messages_add" name="jform[messages_add]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_ADD');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_MESSAGES_ADD_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['messages_delete'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_messages_delete" name="jform[messages_delete]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_DELETE');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_MESSAGES_DELETE_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		//}
		
		//alerts {
		$html[] = '<tr style="background-color: #E5E5E5;">';
		$html[] = '<td colspan="3" style="padding: 5px; font-weight: bold;">';
		$html[] = JText::_('COM_USEREXTRANET_ALERTS');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['alerts_view'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_alerts_view" name="jform[alerts_view]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_VIEW');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_ALERTS_VIEW_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['alerts_edit'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_alerts_edit" name="jform[alerts_edit]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_EDIT');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_ALERTS_EDIT_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['alerts_add'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_alerts_add" name="jform[alerts_add]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_ADD');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_ALERTS_ADD_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '<tr>';
		$html[] = '<td>';
		$checked = $task['alerts_delete'] ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" class="ue-staff-check" id="jform_alerts_delete" name="jform[alerts_delete]" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_DELETE');
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_STAFF_ALERTS_DELETE_DESC');
		$html[] = '</td>';
		$html[] = '</tr>';
		//}
		
		$html[] = '</table>';
		$html[] = '</div>';
		
		return implode("\n", $html);
	}
}