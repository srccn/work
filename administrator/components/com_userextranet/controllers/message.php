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

class UserExtranetControllerMessage extends JControllerForm
{
	
	protected $text_prefix = 'COM_USEREXTRANET_MESSAGES';
	
	protected function allowSave($data, $key = 'id') {
		return parent::allowSave($data, $key);
	}
	
	public function new_message () {
		$this->setRedirect(JRoute::_('index.php?option=com_userextranet&view=message&layout=edit&mtype=1', false));
	}
	
	public function mass_message () {
		$this->setRedirect(JRoute::_('index.php?option=com_userextranet&view=message&layout=edit&mtype=2', false));
	}
	
	public function send () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		// Get the post data.
		$data = JRequest::getVar('jform', array(), 'post', 'array');
		
		$model = $this->getModel();
		if(!$model->send($data)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_MESSAGE_COULD_NOT_BE_SENT' ));
		} else {
			$msg = JText::_( 'COM_USEREXTRANET_MESSAGE_SUCCESSFULLY_SENT' );
		}

		$this->setRedirect( 'index.php?option=com_userextranet&view=messages', $msg );
	}
	
	public function reply () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		// Get the post data.
		$data = JRequest::getVar('jform', array(), 'post', 'array');
		
		//message id
		$id = (int)$data['id'];
		
		//get the model
		$model = $this->getModel();
		
		//get message data
		$message = $model->getReplyData($id);
		
		//reply will have the same visibility as the message
		$private = 1 - $message->visibility;
		$model->setReplyVisibility($id, $private);
		
		//set data in a session
		$replyData = array();
		$replyData['new_recipient'] = $message->from_id;
		$replyData['subject'] = JText::_('COM_USEREXTRANET_RE').': '.$message->subject;
		JFactory::getApplication()->setUserState('com_userextranet.edit.message.data', $replyData);
		
		//reset checked out
		UserExtranetHelper::resetCheckedOut('messages', $id);
		
		//redirect
		$this->setRedirect( 'index.php?option=com_userextranet&view=message&layout=edit&mtype=1', $msg );
	}
	
}