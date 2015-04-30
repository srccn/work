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

class JFormFieldMessageNewRecipients extends JFormField
{
	public $type = 'MessageNewRecipients';

	protected function getInput()
	{
		//initialize database
		$db = JFactory::getDbo();
		
		$userObj  = JFactory::getUser();
		$userId = (int)$userObj->get('id');
		
		//mainframe
		$app = JFactory::getApplication();
		
		//get form values from session
		/* $formValues = $app->getUserState('com_beestohelpdesk.edit.ticket.data', array());
		$sessionValue = isset($formValues['new_ticket_assign']) ? $formValues['new_ticket_assign'] : 0; */
		
		//get recipients
		$query = 'SELECT u.id, u.name, u.email'
			. ' FROM #__users AS u'
			. ' WHERE u.id != '
			. $userId
		;
		$db->setQuery($query);
		$users = $db->loadObjectList();
		
		//all users
		$allusers = array();
		foreach ( $users as $v ) {
			$allusers[] = $v->id;
		}
		$allusers = implode(',', $allusers);
		
		//get groups
		$table = 'SELECT group_id, GROUP_CONCAT(user_id SEPARATOR ",") AS ids FROM #__ue_usergroups_rel GROUP BY group_id';
		$query = 'SELECT ug.id, ug.title,'
			. ' ugr.ids'
			. ' FROM #__ue_usergroups AS ug'
			. ' LEFT JOIN ('.$table.') AS ugr ON ugr.group_id = ug.id'
			. ' ORDER BY ug.ordering ASC'
		;
		$db->setQuery($query);
		$groups = $db->loadObjectList();
		
		// Initialize variables.
		$html = array();
		
		//recipients
		$html[] = '<div class="control-label">';
		$html[] = '<label class="hasTooltip required" data-original-title="'.JText::_('COM_USEREXTRANET_FIELD_MESSAGE_RECIPIENTS_DESC').'" title="">'.JText::_('COM_USEREXTRANET_FIELD_MESSAGE_RECIPIENTS_LABEL').'<span class="star">&nbsp;*</span></label>';
		$html[] = '</div>';
		
		$html[] = '<div class="controls">';
		$html[] = '<div style="min-height: 250px; float: left; padding: 10px; background: #F6F4F0; border: 1px solid #D4D4D4; border-right: none; width: 60%;">';
		$html[] = '<div style="max-height: 230px; overflow: auto; padding: 10px;">';
		$html[] = '<table style="border-collapse: collapse; width: 100%;">';
		$html[] = '<thead>';
		$html[] = '<tr>';
		$html[] = '<th style="text-align: left;">';
		$html[] = '<input type="checkbox" onclick="makeSelection(\'m\', ['.$allusers.'])" />';
		$html[] = '<input type="hidden" name="jform[group_selected_m]" id="jform_group_selected_m_id" value="0" />';
		$html[] = '</th>';
		$html[] = '<th style="text-align: left;">';
		$html[] = JText::_('COM_USEREXTRANET_NAME');
		$html[] = '</th>';
		$html[] = '<th style="text-align: left;">';
		$html[] = JText::_('COM_USEREXTRANET_EMAIL');
		$html[] = '</th>';
		$html[] = '<th style="text-align: left;">';
		$html[] = JText::_('COM_USEREXTRANET_ID');
		$html[] = '</th>';
		$html[] = '</tr>';
		$html[] = '</thead>';
		$html[] = '<tbody>';
		foreach ( $users as $user ) {
			$html[] = '<tr id="jform_row_uid_'.$user->id.'_id">';
			$html[] = '<td style="border-bottom: 1px dotted #D4D4D4;">';
			$html[] = '<input type="checkbox" name="jform[uid_'.$user->id.']" id="jform_uid_'.$user->id.'_id" onclick="setTrBackground('.$user->id.');" />';
			$html[] = '</td>';
			$html[] = '<td style="border-bottom: 1px solid #D4D4D4;">';
			$html[] = '<a href="'.JRoute::_('index.php?option=com_users&task=user.edit&id='.$user->id).'" target="_blank" title="'.JText::_('COM_USEREXTRANET_VIEW_PROFILE').'">'.$user->name.'</a>';
			$html[] = '</td>';
			$html[] = '<td style="border-bottom: 1px solid #D4D4D4;">';
			$html[] = $user->email;
			$html[] = '</td>';
			$html[] = '<td style="border-bottom: 1px solid #D4D4D4;">';
			$html[] = $user->id;
			$html[] = '</td>';
			$html[] = '</tr>';
		}
		$html[] = '</tbody>';
		$html[] = '</table>';
		$html[] = '</div>';
		$html[] = '</div>';
		
		$html[] = '<div style="min-height: 250px; float: left; margin: 0; padding: 10px; background: #F6F4F0; border: 1px solid #D4D4D4; border-left: none;">';
		$html[] = '<div style="min-width: 200px; max-height: 230px; overflow: auto; padding: 10px;">';
		$html[] = '<div style="font-weight: bold;">';
		$html[] = JText::_('COM_USEREXTRANET_USER_GROUPS');
		$html[] = '</div>';
		if (!empty($groups)) {
			foreach ( $groups as $group ) {
				$html[] = '<div id="jform_div_group_'.$group->id.'_id">';
				$html[] = '<a href="javascript:void(0);" onclick="makeSelection('.$group->id.', ['.$group->ids.']);">'.$group->title.'</a>';
				$html[] = '<input type="hidden" name="jform[group_selected_'.$group->id.']" id="jform_group_selected_'.$group->id.'_id" value="0" />';
				$html[] = '</div>';
			}
		}
		else {
			$html[] = '<div style="font-style: italic;">';
			$html[] = JText::_('COM_USEREXTRANET_NO_GROUP_AVAILABLE');
			$html[] = '</div>';
		}
		$html[] = '</div>';
		$html[] = '</div>';
		$html[] = '</div>';
		
		return implode("\n", $html);
	}
}