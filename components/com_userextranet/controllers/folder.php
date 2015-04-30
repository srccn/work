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

class UserExtranetControllerFolder extends JControllerForm
{
	
	protected $text_prefix = 'COM_USEREXTRANET_FOLDERS';
	
	protected function allowSave($data, $key = 'id') {
		return parent::allowSave($data, $key);
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

		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=messages', false), $msg );
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
		
		//set data in a session
		$replyData = array();
		$replyData['reply_to'] = $message->from_id;
		$replyData['visibility'] = $message->visibility;
		$replyData['subject'] = JText::_('COM_USEREXTRANET_RE').': '.$message->subject;
		JFactory::getApplication()->setUserState('com_userextranet.edit.message.data', $replyData);
		
		//redirect
		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=message&layout=edit', false), $msg );
	}
	
	public function cancel () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		//clear session data
		JFactory::getApplication()->setUserState('com_userextranet.edit.message.data', array());
		
		//redirect
		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=messages', false));
	}
}