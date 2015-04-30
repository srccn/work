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
	
	public function display($tpl = null)
	{
		$app = JFactory::getApplication();
		$this->ueFACL = UserExtranetHelper::ueFACL();
		$ueParams = $app->getParams('com_userextranet');
		
		$this->maxsize = $ueParams->get('filesize');
		if ( !$this->maxsize ):
			$this->maxsize = 2;
		endif;
		$this->extensions = $ueParams->get('filetype');
		if ( !$this->extensions ):
			$this->extensions = 'gif,jpg,png,zip,rar,csv,doc,docx,txt,pdf,mp3,mp4,avi';
		endif;
		
		//user id
		$user = JFactory::getUser();
		$userId = $user->get('id');
		
		//session data
		$this->data = $app->getUserState('com_userextranet.edit.file.data', array());
		
		//layout
		$layout = JRequest::getCmd('layout');
		
		//get item
		$this->item = $this->get('Item');
		
		//parent folder
		$this->fid = $this->get('Fid');
		
		//front_title
		$front_title = $ueParams->get('front_title');
		if (!$front_title) $front_title = 'Extranet';
		$this->front_title = $front_title;
		
		//search status
		$front_search = $ueParams->get('front_search');
		if (!$front_search) $front_search = 1;
		$this->front_search = $front_search;
		
		$this->keyword = $this->get('Keyword');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		//css
		JHtml::stylesheet( 'components/com_userextranet/assets/css/general.css' );
		JHtml::stylesheet( 'components/com_userextranet/assets/css/folder.css' );
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle($this->front_title.' - '.JText::_('COM_USEREXTRANET_DOCUMENTS'));
	}
}
