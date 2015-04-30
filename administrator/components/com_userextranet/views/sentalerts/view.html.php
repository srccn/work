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
require_once JPATH_COMPONENT.'/helpers/sentalerts.php';
jimport( 'joomla.application.component.view' );

class UserExtranetViewSentalerts extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
		// Initialise variables.
		$this->state      = $this->get('State');
		$this->items      = $this->get('Items');
		$this->pagination = $this->get('Pagination');
		$this->uid		  = $this->get('Uid');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		//alert link
		$link = 'index.php?option=com_userextranet&view=sentalert&layout=edit&id=';
		$text = JText::_('COM_USEREXTRANET_READ');
		JHTML::_('behavior.modal', 'a.modal-button');
		$modalAlert = new JObject();
		$modalAlert->set('modal', true);
		$modalAlert->set('link', $link);
		$modalAlert->set('text', $text);
		$modalAlert->set('name', 'image');
		$modalAlert->set('modalname', 'modal-button');
		$modalAlert->set('options', "{handler: 'iframe', size: {x: 680, y: 520}, onClose: function(){window.parent.location.reload();}}");
		$this->modalAlert = $modalAlert;
		
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
		JRequest::setVar('hidemainmenu', true);
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_ALERTS'), 'feed');
		
		//back
		JToolBarHelper::custom( 'sentalerts.back', 'home-2', '', JText::_('COM_USEREXTRANET_CONTROL_PANEL'), false);
		JToolBarHelper::divider();
		
		//enable/disable
		if ($canDo->get('core.edit.state')) {
			JToolBarHelper::publish('sentalerts.mark_as_read', 'COM_USEREXTRANET_MARK_AS_READ', true);
		}	
		if ($canDo->get('core.edit.state')) {
			JToolBarHelper::unpublish('sentalerts.mark_as_unread', 'COM_USEREXTRANET_MARK_AS_UNREAD', true);
			JToolBarHelper::divider();
		}
		
		//delete
		if ($canDo->get('core.delete')) {
			JToolBarHelper::deleteList('', 'sentalerts.delete', 'JTOOLBAR_DELETE');
			JToolBarHelper::divider();
		}
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		JHtmlSidebar::setAction('index.php?option=com_userextranet&view=sentalerts');
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_SELECT_STATE').' -',
			'filter_state',
			JHtml::_('select.options', UserExtranetHelperSentalerts::getStateOptions(), 'value', 'text', $this->state->get('filter.state'))
		);
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_SELECT_PRIORITY').' -',
			'filter_priority',
			JHtml::_('select.options', UserExtranetHelperSentalerts::getPriorityOptions(), 'value', 'text', $this->state->get('filter.priority'))
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
			'aread' => JText::_('COM_USEREXTRANET_STATE'),
			'created_date' => JText::_('COM_USEREXTRANET_CREATED_DATE')
		);
	}
}
?>