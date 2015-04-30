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

class JFormFieldMessageNewOptAttach extends JFormField
{
	public $type = 'MessageNewOptAttach';

	protected function getInput()
	{
		//get option
		$userId = JFactory::getUser()->get('id');
		$db = JFactory::getDbo();
		$query = 'SELECT mo.opt_value'
			. ' FROM #__ue_messages_opt AS mo'
			. ' WHERE mo.opt_name = '
			. $db->Quote('attach')
			. ' AND mo.user_id = '
			. $userId
		;
		$db->setQuery($query);
		$res = $db->loadResult();
		
		// Initialize variables.
		$html = array();
		
		$html[] = '<div style="font-size:13px;">';
		$html[] = '<table>';
		$html[] = '<tr>';
		$html[] = '<td style="padding: 0 5px 6px 0;">';
		$checked = $res ? 'checked="checked"' : '';
		$html[] = '<input type="checkbox" id="'.$this->id.'" name="'.$this->name.'" '.$checked.'>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = JText::_('COM_USEREXTRANET_ATTACH_MESSAGE');
		$html[] = '</td>';
		$html[] = '</tr>';
		$html[] = '</table>';
		$html[] = '</div>';
		
		return implode("\n", $html);
	}
}