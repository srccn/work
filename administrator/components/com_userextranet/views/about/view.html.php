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

defined('_JEXEC') or die('Restricted access');

jimport( 'joomla.application.component.view' );

class UserExtranetViewAbout extends JViewLegacy
{
	function display($tpl = null) {
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		UserExtranetHelper::addSubmenu('about');
		$this->addToolBar();
		$this->sidebar = JHtmlSidebar::render();
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function addToolBar() {
		$canDo	= UserExtranetHelper::getActions();
		JToolBarHelper::title(JText::_('COM_USEREXTRANET_ABOUT'), 'info');
		if ($canDo->get('core.admin')) {
			JToolBarHelper::preferences('com_userextranet');
			JToolBarHelper::divider();
		}
		$bar = JToolBar::getInstance('toolbar');
		//$bar->appendButton('Popup', 'help', 'JHELP', 'http://www.beesto.com/index.php?option=com_beestohelpdesk&view=kbarticle&id=65#adminForm',976,700);
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle(JText::_('COM_USEREXTRANET').' - '.JText::_('COM_USEREXTRANET_ABOUT'));
	}
}
?>
