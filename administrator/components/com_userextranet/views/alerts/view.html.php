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
require_once JPATH_COMPONENT.'/helpers/alerts.php';
jimport( 'joomla.application.component.view' );

class UserExtranetViewAlerts extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('alerts.view') ) {
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_ALERTS'));
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
		}
		//}
		
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
		// Initialise variables.
		$this->state      = $this->get('State');
		$this->items      = $this->get('Items');
		$this->pagination = $this->get('Pagination');
		$this->fid		  = $this->get('Fid');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		UserExtranetHelper::addSubmenu('alerts');
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		JRequest::setVar('hidemainmenu', true);
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_ALERTS'), 'feed');
		
		//enable/disable
		if ($canDo->get('core.edit.state') && $this->ueACL->can('alerts.add')) {
			JToolBarHelper::publish('alerts.enable', 'COM_USEREXTRANET_ENABLE_ALERT', true);
		}	
		if ($canDo->get('core.edit.state') && $this->ueACL->can('alerts.delete')) {
			JToolBarHelper::unpublish('alerts.disable', 'COM_USEREXTRANET_DISABLE_ALERT', true);
			JToolBarHelper::divider();
		}
		
		//new, delete
		if ($canDo->get('core.create') && $this->ueACL->can('alerts.add')) {
			JToolBarHelper::addNew('alert.add','JTOOLBAR_NEW');
		}
		if ($canDo->get('core.delete') && $this->ueACL->can('alerts.delete')) {
			JToolBarHelper::deleteList('', 'alerts.delete', 'JTOOLBAR_DELETE');
			JToolBarHelper::divider();
		}
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		//help
		$showNote = UserExtranetHelper::showHelpNote(18);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=94#adminForm');
		
		JHtmlSidebar::setAction('index.php?option=com_userextranet&view=alerts');
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_SELECT_STATE').' -',
			'filter_state',
			JHtml::_('select.options', UserExtranetHelperAlerts::getStateOptions(), 'value', 'text', $this->state->get('filter.state'))
		);
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_SELECT_PRIORITY').' -',
			'filter_priority',
			JHtml::_('select.options', UserExtranetHelperAlerts::getPriorityOptions(), 'value', 'text', $this->state->get('filter.priority'))
		);
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_ALERTS'));
	}
	
	protected function getSortFields() {
		return array(
			'atitle' => JText::_('COM_USEREXTRANET_ALERT_TITLE'),
			'apriority' => JText::_('COM_USEREXTRANET_PRIORITY'),
			'published' => JText::_('COM_USEREXTRANET_STATE'),
			'created_date' => JText::_('COM_USEREXTRANET_CREATED_DATE')
		);
	}
}
?>