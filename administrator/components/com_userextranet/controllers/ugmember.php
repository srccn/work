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

class UserExtranetControllerUgmember extends JControllerForm
{
	
	protected $text_prefix = 'COM_USEREXTRANET_UGMEMBERS';
	
	protected function allowSave($data, $key = 'id') {
		return parent::allowSave($data, $key);
	}
	
	public function add_user_to_group () {
		$this->setRedirect(JRoute::_('index.php?option=com_userextranet&view=ugmember&layout=edit', false));
	}
	
	public function cancel () {
		$this->setRedirect(JRoute::_('index.php?option=com_userextranet&view=usergroups', false));
	}
	
	public function add_user () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		// Get the post data.
		$data = JRequest::getVar('jform', array(), 'post', 'array');
		$uid = (int)$data['user_id'];
		$gid = (int)$data['group_id'];
		
		//if no user provided
		if ( !$uid ) {
			$msg = JText::_('COM_USEREXTRANET_ERROR_NO_USER_SELECTED');
			$this->setRedirect( 'index.php?option=com_userextranet&view=usergroups', $msg, 'error' );
			return false;
		}
		
		$model = $this->getModel();
		if(!$model->store(array($uid), $gid)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_USER_COULD_NOT_BE_ADDED_TO_GROUP' ));
		} else {
			$msg = JText::_( 'COM_USEREXTRANET_USER_SUCCESSFULLY_ADDED_TO_GROUP' );
		}

		$this->setRedirect( 'index.php?option=com_userextranet&view=usergroups', $msg );
	}
}