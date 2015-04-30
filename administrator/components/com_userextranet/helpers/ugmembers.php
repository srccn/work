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

class UserExtranetHelperUgmembers
{
	static function getGroupsOptions() {
		// Build the filter options.
		$db = JFactory::getDbo();
		$query = 'SELECT ug.id, ug.title'
			. ' FROM #__ue_usergroups AS ug'
			. ' ORDER BY ug.ordering ASC'
		;
		$db->setQuery($query);
		$groups = $db->loadObjectList();
		$options = array();
		$options[]	= JHtml::_('select.option',	0, '- '.JText::_('COM_USEREXTRANET_UNCATEGORIZED_USERS').' -');
		foreach ( $groups as $val ) {
			$options[]	= JHtml::_('select.option',	$val->id, $val->title);
		}
		
		return $options;
	}
}