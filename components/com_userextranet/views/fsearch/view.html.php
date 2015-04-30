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

class UserExtranetViewFSearch extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		
		$ueParams = $app->getParams('com_userextranet');
		
		//front_title
		$front_title = $ueParams->get('front_title');
		if (!$front_title) $front_title = 'Extranet';
		$this->front_title = $front_title;
		
		//search status
		$front_search = $ueParams->get('front_search');
		if (!$front_search) $front_search = 1;
		$this->front_search = $front_search;
		if ( $this->front_search != 1 ) {
			$msg = JText::_('COM_USEREXTRANET_PAGE_NOT_FOUND');
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
			return false;
		}
		
		//preview length
		$this->preview_length = 50;
		
		//return url
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		JHtml::stylesheet( 'components/com_userextranet/assets/css/general.css' );
		JHtml::stylesheet( 'components/com_userextranet/assets/css/fsearch.css' );
		
		// Initialise variables.
		$this->items = $this->get('Items');
		$this->total = $this->get('Total');
		$this->keyword = $this->get('Keyword');
		
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
		$document->setTitle($this->front_title.' - '.JText::_('COM_USEREXTRANET_SEARCH'));
	}
}
?>