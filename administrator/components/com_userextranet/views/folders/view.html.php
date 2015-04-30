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
require_once JPATH_COMPONENT.'/helpers/folders.php';
jimport( 'joomla.application.component.view' );

class UserExtranetViewFolders extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('folders.view') ) {
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_FILES_AND_FOLDERS'));
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
		}
		//}
		
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
		// Initialise variables.
		$this->state      = $this->get('State');
		$this->items      = $this->get('Items');
		//$this->pagination = $this->get('Pagination');
		
		$this->fid = $this->get('Fid');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		//stats link
		$link = 'index.php?option=com_userextranet&view=downloads';
		$text = JText::_('COM_USEREXTRANET_STATS');
		JHTML::_('behavior.modal', 'a.modal-button');
		$modalStats = new JObject();
		$modalStats->set('modal', true);
		$modalStats->set('link', $link);
		$modalStats->set('text', $text);
		$modalStats->set('name', 'image');
		$modalStats->set('modalname', 'modal-button');
		//$modalStats->set('options', "{handler: 'iframe', size: {x: 1024, y: 768}, onClose: function(){window.parent.location.reload();}}");
		$modalStats->set('options', "{handler: 'iframe', size: {x: 1024, y: 768}, onClose: function(){}}");
		$this->modalStats = $modalStats;
		
		//alerts link
		$link = 'index.php?option=com_userextranet&view=alerts';
		$text = JText::_('COM_USEREXTRANET_ALERTS');
		JHTML::_('behavior.modal', 'a.modal-button');
		$modalAlerts = new JObject();
		$modalAlerts->set('modal', true);
		$modalAlerts->set('link', $link);
		$modalAlerts->set('text', $text);
		$modalAlerts->set('name', 'image');
		$modalAlerts->set('modalname', 'modal-button');
		//$modalAlerts->set('options', "{handler: 'iframe', size: {x: 1024, y: 768}, onClose: function(){window.parent.location.reload();}}");
		$modalAlerts->set('options', "{handler: 'iframe', size: {x: 1024, y: 768}, onClose: function(){}}");
		$this->modalAlerts = $modalAlerts;
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		UserExtranetHelper::addSubmenu('folders');
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_FILES_AND_FOLDERS'), 'folder');
		
		//ftp synchronization
		if ($canDo->get('core.create') && $this->ueACL->can('folders.add')) {
			JToolBarHelper::custom( 'folders.sync', 'uepurge', '', JText::_('COM_USEREXTRANET_SYNC'), true);
			JToolBarHelper::divider();
		}
		
		//new folder, new file
		if ($canDo->get('core.create') && $this->ueACL->can('folders.add')) {
			JToolBarHelper::custom( 'file.add_multiple', 'addmfiles', '', JText::_('COM_USEREXTRANET_ADD_M_FILES'), false);
			JToolBarHelper::custom( 'file.add', 'addfile', '', JText::_('COM_USEREXTRANET_NEW_FILE'), false);
			JToolBarHelper::custom( 'folder.add', 'addfolder', '', JText::_('COM_USEREXTRANET_NEW_FOLDER'), false);
			JToolBarHelper::divider();
		}
		
		//move, copy, delete
		if ($canDo->get('core.create') && $this->ueACL->can('folders.add')) {
			JToolBarHelper::custom( 'folders.move', 'move.png', '', JText::_('COM_USEREXTRANET_MOVE'), true);
		}
		if ($canDo->get('core.create') && $this->ueACL->can('folders.add')) {
			JToolBarHelper::custom( 'folders.copy', 'copy.png', '', JText::_('COM_USEREXTRANET_COPY'), true);
		}
		/* if ($canDo->get('core.edit') && $this->ueACL->can('folders.edit')) {
			JToolBarHelper::editList('folder.edit');
		} */
		if ($canDo->get('core.delete') && $this->ueACL->can('folders.delete')) {
			JToolBarHelper::deleteList('', 'folders.delete', 'JTOOLBAR_DELETE');
			JToolBarHelper::divider();
		}
		
		//options
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		
		//help
		$showNote = UserExtranetHelper::showHelpNote(15);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=88#adminForm');
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_FILES_AND_FOLDERS'));
	}
	
	protected function getSortFields() {
		return array(
			'f.ordering' => JText::_('COM_USEREXTRANET_ORDERING'),
			'f.created_date' => JText::_('COM_USEREXTRANET_CREATED_DATE')
		);
	}
}
?>