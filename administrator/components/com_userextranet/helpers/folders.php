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

class UserExtranetHelperFolders
{
	static function getActionMessage() {
		//get the session
		$session = JFactory::getSession();
		$action = $session->get( 'ue_folder_action', 0 );
		$items = $session->get( 'ue_folder_action_ids', array() );
		
		//if no action pending or no files/folders
		if ( !$action || empty($items) ) {
			return false;
		}
		
		//get items names
		$ids = implode(',', $items);
		$db = JFactory::getDbo();
		$query = 'SELECT f.fname, f.ffolder, f.ftype'
			. ' FROM #__ue_folders AS f'
			. ' WHERE f.id IN ('.$ids.')'
		;
		$db->setQuery($query);
		$objList = $db->loadObjectList();
		$s = array();
		foreach ( $objList as $obj ) {
			$fname = $obj->fname;
			if (!$obj->ffolder):
				$fname .= '.'.$obj->ftype;
			endif;
			$s[] = $fname;
		}
		$s = implode(', ', $s);
		
		//prepare message
		if ( $action == 1 ) {
			$jtext = 'moved';
		}
		else if ( $action == 2 ) {
			$jtext = 'copied';
		}
		
		//set message
		$message = sprintf(JText::_('COM_USEREXTRANET_READY_TO_BE_'.strtoupper($jtext)), $s);
		
		return $message;
	}
}