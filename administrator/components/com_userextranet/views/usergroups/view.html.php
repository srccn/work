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

class UserExtranetViewUsergroups extends JViewLegacy
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
		
		UserExtranetHelper::addSubmenu('usergroups');
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_USERGROUPS'), 'users');
		
		//add user(s) to group
		if ($canDo->get('core.create') && $this->ueACL->can('usergroups.add')) {
			JToolBarHelper::custom( 'usergroups.add_m_users_to_group', 'ugmembers', '', JText::_('COM_USEREXTRANET_ADD_M_USERS_TO_GROUP'), false, false);
			JToolBarHelper::custom( 'ugmember.add_user_to_group', 'addusertogroup', '', JText::_('COM_USEREXTRANET_ADD_USER_TO_GROUP'), false, false);
			JToolBarHelper::divider();
		}
		
		//new, edit, delete
		if ($canDo->get('core.create') && $this->ueACL->can('usergroups.add')) {
			JToolBarHelper::addNew('usergroup.add','COM_USEREXTRANET_NEW_GROUP');
		}
		if ($canDo->get('core.edit') && $this->ueACL->can('usergroups.edit')) {
			JToolBarHelper::editList('usergroup.edit');
		}
		if ($canDo->get('core.delete') && $this->ueACL->can('usergroups.delete')) {
			JToolBarHelper::deleteList('', 'usergroups.delete', 'JTOOLBAR_DELETE');
			JToolBarHelper::divider();
		}
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		//help
		$showNote = UserExtranetHelper::showHelpNote(5);
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
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_USERGROUPS'));
	}
	
	protected function getSortFields() {
		return array(
			'g.title' => JText::_('COM_USEREXTRANET_GROUP_TITLE'),
			'm.members' => JText::_('COM_USEREXTRANET_MEMBERS'),
			'g.ordering' => JText::_('COM_USEREXTRANET_ORDERING'),
			'g.created_date' => JText::_('COM_USEREXTRANET_CREATED_DATE'),
			'g.id' => JText::_('COM_USEREXTRANET_ID')
		);
	}
}
?>