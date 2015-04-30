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

class JFormFieldMessageRead extends JFormField
{
	public $type = 'MessageRead';

	protected function getInput()
	{
		//get message
		$id = $this->form->getValue('id');
		$db = JFactory::getDbo();
		$query = 'SELECT m.from_id, m.subject, m.body, m.created_date,'
			. ' u.name'
			. ' FROM #__ue_messages AS m'
			. ' LEFT JOIN #__users AS u ON u.id = m.from_id'
			. ' WHERE m.id = '
			. $id
		;
		$db->setQuery($query);
		$message = $db->loadObject();
		
		// Initialize variables.
		$html = array();
		
		$html[] = '<div style="font-size:12px;">';
		$html[] = '<table border="0" cellspacing="5" cellpadding="3" style="width: 100%;">';
		
		//from
		$html[] = '<tr>';
		$html[] = '<td style="width: 100px;">';
		$html[] = '<span style="font-weight: bold;">'.JText::_('COM_USEREXTRANET_FROM').'</span>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = '<a href="'.JRoute::_('index.php?option=com_users&task=user.edit&id='.$message->from_id).'" target="_blank" title="'.JText::_('COM_USEREXTRANET_VIEW_PROFILE').'">'.$message->name.'</a>';
		$html[] = '</td>';
		$html[] = '</tr>';
		
		//date
		$date = (int)$message->created_date ? JHtml::_('date',$message->created_date, JText::_('DATE_FORMAT_LC2')/* "Y-m-d H:i" */) : '---';
		$html[] = '<tr>';
		$html[] = '<td>';
		$html[] = '<span style="font-weight: bold;">'.JText::_('COM_USEREXTRANET_DATE').'</span>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = $date;
		$html[] = '</td>';
		$html[] = '</tr>';
		
		//subject
		$html[] = '<tr>';
		$html[] = '<td>';
		$html[] = '<span style="font-weight: bold;">'.JText::_('COM_USEREXTRANET_SUBJECT').'</span>';
		$html[] = '</td>';
		$html[] = '<td>';
		$html[] = $message->subject;
		$html[] = '</td>';
		$html[] = '</tr>';
		
		//message
		$html[] = '<tr>';
		$html[] = '<td colspan="2">';
		$html[] = '<span style="font-weight: bold;">'.JText::_('COM_USEREXTRANET_MESSAGE').'</span>';
		$html[] = '</td>';
		$html[] = '</tr>';
		$html[] = '<tr>';
		$html[] = '<td colspan="2">';
		$html[] = '<div style="padding: 10px; background-color: #F6F4F0; border: 1px solid #D4D4D4; -moz-border-radius: 5px; border-radius: 5px;">';
		$html[] = $message->body;
		$html[] = '</div>';
		$html[] = '</td>';
		$html[] = '</tr>';
		
		$html[] = '</table>';
		$html[] = '</div>';
		
		return implode("\n", $html);
	}
}