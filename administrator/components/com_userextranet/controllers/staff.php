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

class UserExtranetControllerStaff extends JControllerForm
{
	
	protected $text_prefix = 'COM_USEREXTRANET_STAFF';
	
	protected function allowSave($data, $key = 'id') {
		return parent::allowSave($data, $key);
	}
	
	public function add_user () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		// Get the post data.
		$data = JRequest::getVar('jform', array(), 'post', 'array');
		$uid = (int)$data['user_id'];
		
		//get the model
		$model = $this->getModel();
		
		//if no user provided
		if ( !$uid ) {
			$msg = JText::_('COM_USEREXTRANET_ERROR_NO_USER_SELECTED');
			$this->setRedirect( 'index.php?option=com_userextranet&view=staffs', $msg, 'error' );
			return false;
		}
		
		//case new user check if user is already recorded
		if ( !$data['id'] && $model->check($uid) ) {
			$msg = JText::_('COM_USEREXTRANET_ERROR_ALREADY_STAFF');
			$this->setRedirect( 'index.php?option=com_userextranet&view=staffs', $msg, 'error' );
			return false;
		}
		
		$store = $model->store(array($uid), $data);
		if(!$store) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_USER_COULD_NOT_BE_ADDED_TO_STAFF' ));
		} else {
			if ($store == 1) {
				$msg = JText::_( 'COM_USEREXTRANET_USER_SUCCESSFULLY_ADDED_TO_STAFF' );
			}
			else {
				$msg = JText::_( 'COM_USEREXTRANET_STAFF_SUCCESSFULLY_SAVED' );
			}
		}

		$this->setRedirect( 'index.php?option=com_userextranet&view=staffs', $msg );
	}
}