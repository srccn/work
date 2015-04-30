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

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.view');

class UserExtranetViewFile extends JViewLegacy
{
	protected $item;
	protected $form;
	protected $state;
	
	public function display($tpl = null)
	{
		$app = JFactory::getApplication();
		$params = JComponentHelper::getParams('com_userextranet');
		$this->maxsize = $params->get('filesize');
		if ( !$this->maxsize ):
			$this->maxsize = 2;
		endif;
		$this->extensions = $params->get('filetype');
		if ( !$this->extensions ):
			$this->extensions = 'gif,jpg,png,zip,rar,csv,doc,docx,txt,pdf,mp3,mp4,avi';
		endif;
		$this->ueACL = UserExtranetHelper::ueACL();
		
		//UE ACCESS {
		if ( !$this->ueACL->can('folders.view') ) {
			//reset checked out
			UserExtranetHelper::resetCheckedOut('folders', $this->item->id);
			//redirect
			$msg = sprintf(JText::_('COM_USEREXTRANET_YOU_ARE_NOT_AUTHORIZED_TO_VIEW'), JText::_('COM_USEREXTRANET_FILES_AND_FOLDERS'));
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
		}
		//}
		
		$this->form		= $this->get('Form');
		$this->item		= $this->get('Item');
		$this->state	= $this->get('State');
		
		$this->pid = JRequest::getVar('pid', 0, 'get', 'int');
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		if ($this->item->id):
		$filepath = JPATH_COMPONENT.DS.'root';
		if ( $this->item->pid ):
			$pfrname = UserExtranetHelper::getRow('#__ue_folders', array('frname'), $this->item->pid)->frname;
			$filepath .= DS.$pfrname;
		endif;
		$filepath .= DS.$this->item->frname.'.'.$this->item->ftype;
		$filepath = JPath::clean($filepath);
		$this->filepath = $filepath;
		endif;
		
		//css
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		$this->addToolbar();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolbar()
	{
		JRequest::setVar('hidemainmenu', true);

		$user		= JFactory::getUser();
		$isNew		= ($this->item->id == 0);
		$checkedOut	= !($this->item->checked_out == 0 || $this->item->checked_out == $user->get('id'));
		$canDo		= UserExtranetHelper::getActions();
		
		JToolBarHelper::title($isNew ? JText::_('COM_USEREXTRANET_NEW_FILE') : JText::_('COM_USEREXTRANET_EDIT_FILE'), 'folder');
		
		// If not checked out, can save the item.
		if (!$checkedOut && $canDo->get('core.edit') && $this->ueACL->can('folders.add')) {
			JToolBarHelper::save('file.save');
		}
	
		if (!$checkedOut && $canDo->get('core.edit') && $canDo->get('core.create') && $this->ueACL->can('folders.add')) {
			JToolBarHelper::save2new('file.save2new');
		}
		
		if (empty($this->item->id)) {
			JToolBarHelper::cancel('file.cancel');
		} else {
			JToolBarHelper::cancel('file.cancel', 'JTOOLBAR_CLOSE');
		}

		//help
		JToolBarHelper::divider();
		$showNote = UserExtranetHelper::showHelpNote(17);
		if ( $showNote ) {
			JToolBarHelper::custom( 'helpnotes.disable_note', 'helpnotehide.png', '', JText::_('COM_USEREXTRANET_HIDE_NOTE'), false, false);
		}
		else {
			JToolBarHelper::custom( 'helpnotes.enable_note', 'helpnoteshow.png', '', JText::_('COM_USEREXTRANET_SHOW_NOTE'), false, false);
		}
		JToolbarHelper::help('JHELP', false, 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=88#adminForm');
	}
	
	protected function setDocument() {
		$isNew	  = ($this->item->id == 0);
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.($isNew ? JText::_('COM_USEREXTRANET_NEW_FILE') : JText::_('COM_USEREXTRANET_EDIT_FILE')));
	}
}
