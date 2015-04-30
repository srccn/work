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

class JFormFieldAlertTextTags extends JFormField
{
	public $type = 'AlertTextTags';

	protected function getInput()
	{
		// Initialize variables.
		$html = array();
		
		$html[] = '<div style="margin: 5px 0;">';
		$html[] = JText::_('COM_USEREXTRANET_TAGS').': ';
		$html[] = '<a href="javascript:void(0)" onclick="Insert(\'USER_NAME\')">'. JText::_('COM_USEREXTRANET_USER_NAME_L').'</a> | <a href="javascript:void(0)" onclick="Insert(\'FOLDER_NAME\')">'. JText::_('COM_USEREXTRANET_FOLDER_NAME_L').'</a> | <a href="javascript:void(0)" onclick="Insert(\'FILE_NAME\')">'. JText::_('COM_USEREXTRANET_FILE_NAME_L').'</a> | <a href="javascript:void(0)" onclick="Insert(\'SUBFOLDER_NAME\')">'. JText::_('COM_USEREXTRANET_SUBFOLDER_NAME_L').'</a>';
		$html[] = '</div>';
		
		return implode("\n", $html);
	}
}