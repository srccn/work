<?php
/*
 * @package Joomla 2.5
 * @copyright Copyright (C) 2005 Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 *
 * @component UserExtranet 1.3
 * @copyright Copyright (C) 2013 Popa S. Alexandru www.beesto.com
 * @license : GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die('Restricted access');

jimport( 'joomla.application.component.view' );

class UserExtranetViewUserExtranet extends JViewLegacy
{
	function display($tpl = null) {
		$this->ueACL = UserExtranetHelper::ueACL();
		$this->alerts = $this->getAlerts();
		
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
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
		
		UserExtranetHelper::addSubmenu('UserExtranet');
		$this->sidebar = JHtmlSidebar::render();
		$this->addToolBar();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$canDo	= UserextranetHelper::getActions();
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_CONTROL_PANEL'), 'home-2');
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_CONTROL_PANEL'));
	}
	
	protected function getAlerts () {
		$db = JFactory::getDbo();
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		$query = 'SELECT a.id, a.atitle'
			. ' FROM #__ue_alerts_sent AS a'
			. ' WHERE a.user_id = '
			. $userId
			. ' AND a.aread = 0'
			. ' ORDER BY a.created_date DESC'
		;
		
		$db->setQuery($query);
		$alerts = $db->loadObjectList();
		
		return $alerts;
	}
}
?>