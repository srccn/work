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

class UserExtranetViewStaffs extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('staff.view') ) {
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_STAFF'));
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
		}
		//}
		
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
		// Initialise variables.
		$this->state		    = $this->get('State');
		$this->items		    = $this->get('Items');
		$this->pagination	    = $this->get('Pagination');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		UserExtranetHelper::addSubmenu('staffs');
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_STAFF'), 'users');
		
		//add multiple users to staff
		if ($canDo->get('core.create') && $this->ueACL->can('staff.add')) {
			JToolBarHelper::custom( 'staffs.add_m_users_to_staff', 'ugmembers', '', JText::_('COM_USEREXTRANET_ADD_M_USERS_TO_STAFF'), false, false);
			JToolBarHelper::divider();
		}
		
		//new, edit, delete
		if ($canDo->get('core.create') && $this->ueACL->can('staff.add')) {
			JToolBarHelper::addNew('staff.add','JTOOLBAR_NEW');
		}
		if ($canDo->get('core.edit') && $this->ueACL->can('staff.edit')) {
			JToolBarHelper::editList('usergroup.edit');
		}
		if ($canDo->get('core.delete') && $this->ueACL->can('staff.delete')) {
			JToolBarHelper::deleteList('', 'staffs.delete', 'JTOOLBAR_DELETE');
			JToolBarHelper::divider();
		}
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		//help
		$showNote = UserExtranetHelper::showHelpNote(10);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=91#adminForm');
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_STAFF'));
	}
	
	protected function getSortFields() {
		return array(
			'u.name' => JText::_('COM_USEREXTRANET_NAME'),
			's.created_date' => JText::_('COM_USEREXTRANET_CREATED_DATE')
		);
	}
}
?>