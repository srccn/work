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

class UserExtranetViewSentalerts extends JViewLegacy
{
	function display($tpl = null) {
		$app = JFactory::getApplication();
		$ueParams = $app->getParams('com_userextranet');
		
		//css
		JHtml::stylesheet( 'components/com_userextranet/assets/css/general.css' );
		JHtml::stylesheet( 'components/com_userextranet/assets/css/sentalert.css' );
		
		//alerts status
		$front_alerts = $ueParams->get('front_alerts');
		if (!$front_alerts) $front_alerts = 1;
		$this->front_alerts = $front_alerts;
		if ( $this->front_alerts != 1 ) {
			$msg = JText::_('COM_USEREXTRANET_PAGE_NOT_FOUND');
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
			return false;
		}
		
		//front_title
		$front_title = $ueParams->get('front_title');
		if (!$front_title) $front_title = 'Extranet';
		$this->front_title = $front_title;
		
		//search status
		$front_search = $ueParams->get('front_search');
		if (!$front_search) $front_search = 1;
		$this->front_search = $front_search;
		
		// Initialise variables.
		$this->state      = $this->get('State');
		$this->items      = $this->get('Items');
		$this->pagination = $this->get('Pagination');
		$this->uid		  = $this->get('Uid');
		$this->keyword    = $this->get('Keyword');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		//alert link
		$link = 'index.php?option=com_userextranet&view=sentalert&layout=edit&id=';
		$text = JText::_('COM_USEREXTRANET_READ');
		JHTML::_('behavior.modal', 'a.modal');
		$modalAlert = new JObject();
		$modalAlert->set('modal', true);
		$modalAlert->set('link', $link);
		$modalAlert->set('text', $text);
		$modalAlert->set('name', 'image');
		$modalAlert->set('modalname', 'modal');
		$modalAlert->set('options', "{handler: 'iframe', size: {x: 680, y: 520}, onClose: function(){window.parent.location.reload();}}");
		$this->modalAlert = $modalAlert;
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		//$this->addToolBar();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		/* JRequest::setVar('hidemainmenu', true);
		$state	= $this->get('State');
		$canDo	= UserExtranetHelper::getActions();
		
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_ALERTS'), 'alerts');
		
		//back
		JToolBarHelper::custom( 'sentalerts.back', 'cpanel.png', '', JText::_('COM_USEREXTRANET_CONTROL_PANEL'), false);
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
		} */
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle($this->front_title.' - '.JText::_('COM_USEREXTRANET_ALERTS'));
	}
}
?>
