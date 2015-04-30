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
require_once JPATH_COMPONENT.'/helpers/downloads.php';
jimport( 'joomla.application.component.view' );

class UserExtranetViewDownloads extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('downloads.view') ) {
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_DOWNLOADS'));
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
		}
		//}
		
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		JHtml::stylesheet( 'media/system/css/modal.css' );
		
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
		
		UserExtranetHelper::addSubmenu('downloads');
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_DOWNLOADS'), 'arrow-down-2');
		
		//delete
		if ($canDo->get('core.delete') && $this->ueACL->can('downloads.delete')) {
			JToolBarHelper::deleteList('', 'downloads.delete', 'JTOOLBAR_DELETE');
			JToolBarHelper::divider();
		}
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		//help
		$showNote = UserExtranetHelper::showHelpNote(9);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=92#adminForm');
		
		JHtmlSidebar::setAction('index.php?option=com_userextranet&view=downloads');
		
		JHtmlSidebar::addFilter(
			'- '.JText::_('COM_USEREXTRANET_DOWN_LOCATION').' -',
			'filter_location',
			JHtml::_('select.options', UserExtranetHelperDownloads::getLocationOptions(), 'value', 'text', $this->state->get('filter.location'))
		);
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_DOWNLOADS'));
	}
	
	protected function getSortFields() {
		return array(
			'f.fname' => JText::_('COM_USEREXTRANET_FILE'),
			'd.location' => JText::_('COM_USEREXTRANET_DOWN_LOCATION'),
			'u.name' => JText::_('COM_USEREXTRANET_USER'),
			'd.created_date' => JText::_('COM_USEREXTRANET_DATE')
		);
	}
}
?>