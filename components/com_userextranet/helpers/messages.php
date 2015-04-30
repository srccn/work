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

class UserExtranetHelperMessages
{
	static function getStateOptions() {
		// Build the filter options.
		$options	= array();
		$options[]	= JHtml::_('select.option',	1,	JText::_('COM_USEREXTRANET_READ'));
		$options[]	= JHtml::_('select.option',	0,	JText::_('COM_USEREXTRANET_UNREAD'));
		return $options;
	}
	
	static function getFolderOptions() {
		// Build the filter options.
		$options	= array();
		$options[]	= JHtml::_('select.option',	0,	JText::_('COM_USEREXTRANET_INBOX'));
		$options[]	= JHtml::_('select.option',	1,	JText::_('COM_USEREXTRANET_SENT'));
		return $options;
	}
}