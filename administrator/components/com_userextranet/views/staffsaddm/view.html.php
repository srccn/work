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
require_once JPATH_COMPONENT.'/helpers/staffsaddm.php';
jimport( 'joomla.application.component.view' );

class UserExtranetViewStaffsaddm extends JViewLegacy
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
		$this->state      = $this->get('State');
		$this->items      = $this->get('Items');
		$this->pagination = $this->get('Pagination');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		UserExtranetHelper::addSubmenu('staffsaddm');
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		$this->canAdd = $canDo->get('core.create') && $this->ueACL->can('staff.add');
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_ADD_M_USERS_TO_STAFF'), 'users');
		
		//back to staff
		JToolBarHelper::custom( 'staffsaddm.back', 'back', '', JText::_('COM_USEREXTRANET_BACK_TO_STAFF'), false);
		JToolBarHelper::divider();
		
		//add multiple users to staff
		if ($canDo->get('core.create') && $this->ueACL->can('staff.add')) {
			JToolBarHelper::custom( 'staffsaddm.add_users_to_staff', 'ugmembers', '', JText::_('COM_USEREXTRANET_ADD_M_USERS_TO_STAFF'), true);
			JToolBarHelper::divider();
		}
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		//help
		if ($this->canAdd):
		$showNote = UserExtranetHelper::showHelpNote(12);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		endif;
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=91#adminForm');
		
		JHtmlSidebar::setAction('index.php?option=com_userextranet&view=staffsaddm');
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_SELECT_GROUP').' -',
			'filter_group',
			JHtml::_('select.options', UserExtranetHelperStaffsaddm::getGroupsOptions(), 'value', 'text', $this->state->get('filter.group'))
		);
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_ADD_M_USERS_TO_STAFF'));
	}
	
	protected function getSortFields() {
		return array(
			'u.name' => JText::_('COM_USEREXTRANET_USER_NAME'),
			'ug.title' => JText::_('COM_USEREXTRANET_GROUP_TITLE'),
			'u.id' => JText::_('COM_USEREXTRANET_ID')
		);
	}
}
?>
