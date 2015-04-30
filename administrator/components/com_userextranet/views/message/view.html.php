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
	protected $form;
	protected $state;
	
	public function display($tpl = null)
	{
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('messages.view') ) {
			//reset checked out
			UserExtranetHelper::resetCheckedOut('messages', $this->item->id);
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_MESSAGES'));
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
		}
		//}
		
		$this->mtype = JRequest::getVar('mtype', 0, 'get', 'int');
		if ( !$this->mtype ) $this->hnId = 4;
		if ( $this->mtype == 1 ) $this->hnId = 2;
		if ( $this->mtype == 2 ) $this->hnId = 3;
		
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		$this->state	= $this->get('State');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		//css
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
		//mark as read
		if ( $this->item->id ) {
			$model = $this->getModel();
			$model->setMessageAsRead($this->item->id);
		}
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		$this->addToolbar();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolbar()
	{
		JRequest::setVar('hidemainmenu', true);

		$user		= JFactory::getUser();
		$isNew		= ($this->item->id == 0);
		$checkedOut	= !($this->item->checked_out == 0 || $this->item->checked_out == $user->get('id'));
		$canDo		= UserExtranetHelper::getActions();

		if ( $isNew && $this->mtype == 1 ) {
			JToolBarHelper::title(JText::_('COM_USEREXTRANET_NEW_MESSAGE'), 'envelope inbox');
		}
		else if ( $isNew && $this->mtype == 2 ) {
			JToolBarHelper::title(ucwords(JText::_('COM_USEREXTRANET_MASS_MESSAGE')), 'envelope inbox');
		}
		else {
			JToolBarHelper::title(JText::_('COM_USEREXTRANET_VIEW_MESSAGE'), 'envelope inbox');
		}
		
		// If not checked out, can save the item.
		if (!$checkedOut && $canDo->get('core.create') && $this->ueACL->can('messages.add')) {
			if ( $this->item->id ) {
				if ( $this->item->from_id != $user->get('id') ) {
					JToolBarHelper::custom('message.reply', 'reply', 'reply', 'COM_USEREXTRANET_REPLY', false);
				}
			}
			else {
				JToolBarHelper::custom( 'message.send', 'save', '', JText::_('COM_USEREXTRANET_SEND'), false, false);
			}
		}
		
		if (empty($this->item->id)) {
			JToolBarHelper::cancel('message.cancel');
		} else {
			JToolBarHelper::cancel('message.cancel', 'JTOOLBAR_CLOSE');
		}

		//help
		JToolBarHelper::divider();
		$showNote = UserExtranetHelper::showHelpNote($this->hnId);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=93#adminForm');
	}
	
	protected function setDocument() {
		$isNew	  = ($this->item->id == 0);
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.($isNew ? JText::_('COM_USEREXTRANET_NEW_MESSAGE') : JText::_('COM_USEREXTRANET_VIEW_MESSAGE')));
	}
}
