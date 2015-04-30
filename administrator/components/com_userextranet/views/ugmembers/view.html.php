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
require_once JPATH_COMPONENT.'/helpers/ugmembers.php';
jimport( 'joomla.application.component.view' );

class UserExtranetViewUgmembers extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('usergroups.view') ) {
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_USERGROUPS'));
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
		
		UserExtranetHelper::addSubmenu('ugmembers');
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		$this->canAdd = $canDo->get('core.create') && $this->ueACL->can('usergroups.add');
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_ADD_M_USERS_TO_GROUP'), 'users');
		
		//back to user groups
		JToolBarHelper::custom( 'ugmember.cancel', 'back', '', JText::_('COM_USEREXTRANET_BACK_TO_USER_GROUPS'), false);
		JToolBarHelper::divider();
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		//help
		if ($this->canAdd):
		$showNote = UserExtranetHelper::showHelpNote(7);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		endif;
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=90#adminForm');
		
		JHtmlSidebar::setAction('index.php?option=com_userextranet&view=ugmembers');
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_SELECT_GROUP').' -',
			'filter_group',
			JHtml::_('select.options', UserExtranetHelperUgmembers::getGroupsOptions(), 'value', 'text', $this->state->get('filter.group'))
		);
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_ADD_M_USERS_TO_GROUP'));
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