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

// No direct access
defined('_JEXEC') or die;

jimport( 'joomla.application.component.view' );
require_once JPATH_COMPONENT.'/helpers/messages.php';

class UserExtranetViewMessages extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('messages.view') ) {
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_MESSAGES'));
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
		}
		//}
		
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
		// Initialise variables.
		$this->state		    = $this->get('State');
		$this->items		    = $this->get('Items');
		$this->pagination	    = $this->get('Pagination');
		
		UserExtranetHelper::addSubmenu('messages');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_MESSAGES'), 'envelope inbox');
		
		//new, mass
		if ($canDo->get('core.create') && $this->ueACL->can('messages.add')) {
			JToolBarHelper::custom( 'message.new_message', 'writemess', '', JText::_('COM_USEREXTRANET_NEW_MESSAGE'), false, false);
			JToolBarHelper::custom( 'message.mass_message', 'massmess', '', ucwords(JText::_('COM_USEREXTRANET_MASS_MESSAGE')) , false);
			//JToolBarHelper::custom( 'message.mass_message', 'massmess.png', '', ucwords(JText::_('COM_USEREXTRANET_MASS_MESSAGE')), false, false);
			JToolBarHelper::divider();
		}
		
		//mark as read/unread
		if ($canDo->get('core.edit.state') && $this->ueACL->can('messages.edit')) {
			JToolBarHelper::publish('messages.mark_as_read', 'COM_USEREXTRANET_MARK_AS_READ', true);
			JToolBarHelper::unpublish('messages.mark_as_unread', 'COM_USEREXTRANET_MARK_AS_UNREAD', true);
			JToolBarHelper::divider();
		}
		
		//delete
		if ($canDo->get('core.delete') && $this->ueACL->can('messages.delete')) {
			JToolBarHelper::deleteList('', 'messages.delete', 'JTOOLBAR_DELETE');
			JToolBarHelper::divider();
		}
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		//help
		$showNote = UserExtranetHelper::showHelpNote(1);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=93#adminForm');
		
		JHtmlSidebar::setAction('index.php?option=com_userextranet&view=messages');
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_SELECT_STATE').' -',
			'filter_read',
			JHtml::_('select.options', UserExtranetHelperMessages::getStateOptions(), 'value', 'text', $this->state->get('filter.read'))
		);
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_SENT_FROM').' -',
			'filter_location',
			JHtml::_('select.options', UserExtranetHelperMessages::getLocationOptions(), 'value', 'text', $this->state->get('filter.location'))
		);
		
		JHtmlSidebar::addFilter(
			'',
			'filter_folder',
			JHtml::_('select.options', UserExtranetHelperMessages::getFolderOptions(), 'value', 'text', $this->state->get('filter.folder')),
			true
		);
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_MESSAGES'));
	}
	
	protected function getSortFields() {
		return array(
			'subject' => JText::_('COM_USEREXTRANET_SUBJECT'),
			'msendername' => JText::_('COM_USEREXTRANET_SENDER'),
			'mread' => JText::_('COM_USEREXTRANET_READ'),
			'm.location' => JText::_('COM_USEREXTRANET_SENT_FROM'),
			'm.created_date' => JText::_('COM_USEREXTRANET_DATE')
		);
	}
}
?>
