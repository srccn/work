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
require_once JPATH_COMPONENT.'/helpers/managepermissions.php';
jimport( 'joomla.application.component.view' );

class UserExtranetViewManagepermissions extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('permissions.view') ) {
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_MANAGE_PERMISSIONS'));
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
		
		UserExtranetHelper::addSubmenu('managepermissions');
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_MANAGE_PERMISSIONS'), 'cog');
		
		//enable/disable extranet access
		if ($canDo->get('core.edit.state') && $this->ueACL->can('permissions.add')) {
			JToolBarHelper::publish('managepermissions.access_enable', 'COM_USEREXTRANET_ENABLE_EXTRANET_ACCESS', true);
		}	
		if ($canDo->get('core.edit.state') && $this->ueACL->can('permissions.delete')) {
			JToolBarHelper::unpublish('managepermissions.access_disable', 'COM_USEREXTRANET_DISABLE_EXTRANET_ACCESS', true);
			JToolBarHelper::divider();
		}
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		//help
		$showNote = UserExtranetHelper::showHelpNote(13);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=89#adminForm');
		
		JHtmlSidebar::setAction('index.php?option=com_userextranet&view=managepermissions');
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_SELECT_GROUP').' -',
			'filter_group',
			JHtml::_('select.options', UserExtranetHelperManagepermissions::getGroupsOptions(), 'value', 'text', $this->state->get('filter.group'))
		);
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_MANAGE_PERMISSIONS'));
	}
	
	protected function getSortFields() {
		return array(
			'u.name' => JText::_('COM_USEREXTRANET_USER_NAME'),
			'ug.title' => JText::_('COM_USEREXTRANET_GROUP_TITLE'),
			'eid' => JText::_('COM_USEREXTRANET_EXTRANET_ACCESS'),
			'u.id' => JText::_('COM_USEREXTRANET_ID')
		);
	}
}
?>