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

jimport('joomla.application.component.controlleradmin');

class UserExtranetControllerHelpNotes extends JControllerAdmin
{
	public function disable_note() {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$nid = JRequest::getVar( 'noteid', 0, 'post', 'int' );
		$return = base64_decode(JRequest::getVar('returnurl', '', 'post', 'BASE64'));
		
		if(!UserExtranetHelper::setHelpNoteState($nid, 0)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_NOTE_COULD_NOT_BE_DISABLED' ));
		} else {
			$msg = null;//JText::_( 'COM_USEREXTRANET_NOTE_SUCCESSFULLY_DISABLED' );
		}

		$this->setRedirect( JRoute::_($return), $msg );
	}
	
	public function enable_note() {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$nid = JRequest::getVar( 'noteid', 0, 'post', 'int' );
		$return = base64_decode(JRequest::getVar('returnurl', '', 'post', 'BASE64'));
		
		if(!UserExtranetHelper::setHelpNoteState($nid, 1)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_NOTE_COULD_NOT_BE_ENABLED' ));
		} else {
			$msg = null;//JText::_( 'COM_USEREXTRANET_NOTE_SUCCESSFULLY_ENABLED' );
		}

		$this->setRedirect( JRoute::_($return), $msg );
	}
}