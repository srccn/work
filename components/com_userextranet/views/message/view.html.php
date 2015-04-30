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

jimport('joomla.application.component.view');

class UserExtranetViewMessage extends JViewLegacy
{
	protected $item;
	
	public function display($tpl = null)
	{
		$app = JFactory::getApplication();
		$ueParams = $app->getParams('com_userextranet');
		
		//user id
		$user = JFactory::getUser();
		$userId = $user->get('id');
		
		//session data
		$this->data = $app->getUserState('com_userextranet.edit.message.data', array());
		
		//layout
		$layout = JRequest::getCmd('layout');
		
		//get item
		$this->item = $this->get('Item');
		
		//messages status
		$front_messages = $ueParams->get('front_messages');
		if (!$front_messages) $front_messages = 1;
		$this->front_messages = $front_messages;
		if ( $this->front_messages != 1 || ( empty($this->item) && $layout != 'edit' ) ) {
			$msg = JText::_('COM_USEREXTRANET_PAGE_NOT_FOUND');
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
			return false;
		}
		
		//front_title
		$front_title = $ueParams->get('front_title');
		if (!$front_title) $front_title = 'Extranet';
		$this->front_title = $front_title;
		
		//search status
		$front_search = $ueParams->get('front_search');
		if (!$front_search) $front_search = 1;
		$this->front_search = $front_search;
		
		$this->keyword = $this->get('Keyword');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		//automatically mark as read
		if ( $layout != 'edit' && $this->item->from_id != $userId ) {
			$model = $this->getModel();
			$model->publish(array($this->item->id), 1);
		}
		
		//$this->item->body = htmlentities($this->item->body);
		
		//css
		JHtml::stylesheet( 'components/com_userextranet/assets/css/general.css' );
		JHtml::stylesheet( 'components/com_userextranet/assets/css/message.css' );
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle($this->front_title.' - '.JText::_('COM_USEREXTRANET_MESSAGES'));
	}
}
