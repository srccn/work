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

class UserExtranetControllerUgmembers extends JControllerAdmin
{
	protected $text_prefix = 'COM_USEREXTRANET_UGMEMBERS';
	
	public function &getModel($name = 'Ugmember', $prefix = 'UserExtranetModel') {
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	
	public function add_users_to_group() {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);
		$gid = JRequest::getVar('assigned_group', 0, 'post', 'int');

		if (count( $cid ) < 1) {
			JError::raiseError(500, JText::_( 'COM_USEREXTRANET_SELECT_A_USER' ) );
		}

		$model = $this->getModel();
		if(!$model->store($cid, $gid)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_USERS_COULD_NOT_BE_ADDED_TO_GROUP' ));
		} else {
			$msg = sprintf(JText::_( 'COM_USEREXTRANET_USERS_ADDED_TO_GROUP' ), count( $cid ));
		}

		$this->setRedirect( 'index.php?option=com_userextranet&view=ugmembers', $msg );
	}
}