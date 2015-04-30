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

class UserExtranetViewAlert extends JViewLegacy
{
	protected $item;
	protected $form;
	protected $state;
	
	public function display($tpl = null)
	{
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('alerts.view') ) {
			//reset checked out
			UserExtranetHelper::resetCheckedOut('alerts', $this->item->id);
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_ALERTS'));
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
		}
		//}
		
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		$this->state	= $this->get('State');
		$this->fid  	= $this->get('Fid');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		//css
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
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

		JToolBarHelper::title($isNew ? JText::_('COM_USEREXTRANET_NEW_ALERT') : JText::_('COM_USEREXTRANET_EDIT_ALERT'), 'feed');
		
		// If not checked out, can save the item.
		if (!$checkedOut && $canDo->get('core.edit') && $this->ueACL->can('alerts.add')) {
			JToolBarHelper::save('alert.save');
		}
	
		if (!$checkedOut && $canDo->get('core.edit') && $canDo->get('core.create') && $this->ueACL->can('alerts.add')) {
			JToolBarHelper::save2new('alert.save2new');
		}
		
		if (empty($this->item->id)) {
			JToolBarHelper::cancel('alert.cancel');
		} else {
			JToolBarHelper::cancel('alert.cancel', 'JTOOLBAR_CLOSE');
		}

		//help
		JToolBarHelper::divider();
		$showNote = UserExtranetHelper::showHelpNote(18);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=94#adminForm');
	}
	
	protected function setDocument() {
		$isNew	  = ($this->item->id == 0);
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.($isNew ? JText::_('COM_USEREXTRANET_NEW_ALERT') : JText::_('COM_USEREXTRANET_EDIT_ALERT')));
	}
}
