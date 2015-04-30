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

class UserExtranetViewUgmember extends JViewLegacy
{
	protected $item;
	protected $form;
	protected $state;
	
	public function display($tpl = null)
	{
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('usergroups.view') ) {
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_USERGROUPS'));
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
		}
		//}
		
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		$this->state	= $this->get('State');
		
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
		$canDo		= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_ADD_USER_TO_GROUP'), 'users');
		
		// If not checked out, can save the item.
		if ($canDo->get('core.edit') && $this->ueACL->can('usergroups.add')) {
			JToolBarHelper::custom( 'ugmember.add_user', 'save.png', '', JText::_('COM_USEREXTRANET_SAVE'), false, false);
		}
		
		JToolBarHelper::cancel('ugmember.cancel', 'JTOOLBAR_CANCEL');
		
		//help
		JToolBarHelper::divider();
		$showNote = UserExtranetHelper::showHelpNote(8);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=90#adminForm');
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_ADD_USER_TO_GROUP'));
	}
}
