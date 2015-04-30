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

defined( '_JEXEC' ) or die;

jimport('joomla.application.component.controllerform');

class UserExtranetControllerFSearch extends JControllerForm
{
	public function search() {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$newArr = array();
		$keyword = JRequest::getVar('ue-search', '', 'post', 'string');
		$urlFrom = JRequest::getVar('returnurl', '', 'post', 'BASE64');
		$urlFrom = base64_decode($urlFrom);
		$keyArr = explode(' ', $keyword);
		foreach ( $keyArr as $val ) {
			if ( $val ) { $newArr[] = trim($val); }
		}
		$newKey = implode('+', $newArr);
		$newKey = base64_encode($newKey);
		
		if ( trim($keyword) ) {
			$session = JFactory::getSession();
			$session->set('ue-keyword', $newKey);
			$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=fsearch', false) );
		}
		else {
			$msg = JText::_('COM_USEREXTRANET_INVALID_SEARCH');
			$this->setRedirect( JRoute::_($urlFrom, false), $msg, 'error' );
		}
		
		
	}
}	