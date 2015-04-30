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

class JFormFieldUgmemberGroup extends JFormField
{
	public $type = 'UgmemberGroup';

	protected function getInput()
	{
		//initialize database
		$db = JFactory::getDbo();
		
		//get groups
		$query = 'SELECT ug.id, ug.title'
			. ' FROM #__ue_usergroups AS ug'
			. ' ORDER BY ug.ordering ASC'
		;
		$db->setQuery($query);
		$groups = $db->loadObjectList();
		
		// Initialize variables.
		$html = array();
		
		//recipients
		$html[] = '<div class="control-label">';
		$html[] = '<label id="jform_group_id-lbl" for="jform_group_id" class="hasTooltip required" data-original-title="'.JText::_('COM_USEREXTRANET_FIELD_UGMEMBER_GROUP_DESC').'" title="">'.JText::_('COM_USEREXTRANET_FIELD_UGMEMBER_GROUP_LABEL').'<span class="star">&nbsp;*</span></label>';
		$html[] = '</div>';
		
		$html[] = '<div class="controls">';
		$html[] = '<select name="jform[group_id]" id="jform_group_id">';
		$html[] = '<option value="0">-- '.JText::_('COM_USEREXTRANET_UNCATEGORIZED_USERS').' --</option>';
		if (!empty($groups)):
		foreach ( $groups as $group ) {
			$html[] = '<option value="'.$group->id.'">'.$group->title.'</option>';
		}
		endif;
		$html[] = '</select>';
		$html[] = '</div>';
		
		return implode("\n", $html);
	}
}