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

class UserExtranetViewHome extends JViewLegacy
{
	
	function display( $tpl = null) {
		//required libraries
		$app = JFactory::getApplication();
		$ueParams = $app->getParams('com_userextranet');
		
		//css
		JHtml::stylesheet( 'components/com_userextranet/assets/css/general.css' );
		JHtml::stylesheet( 'components/com_userextranet/assets/css/home.css' );
		
		//front_title
		$front_title = $ueParams->get('front_title');
		if (!$front_title) $front_title = 'Extranet';
		$this->front_title = $front_title;
		
		//front_welcome
		$front_welcome = $ueParams->get('front_welcome');
		$this->front_welcome = $front_welcome;
		
		//last added documents
		$ldocs_status = $ueParams->get('ldocs_status');
		if (!$ldocs_status) $ldocs_status = 1;
		$this->ldocs_status = $ldocs_status;
		if ( $this->ldocs_status == 1 ) {
			$this->latest = $this->get('LastAdded');
		}
		
		//alerts status
		$front_alerts = $ueParams->get('front_alerts');
		if (!$front_alerts) $front_alerts = 1;
		$this->front_alerts = $front_alerts;
		if ( $this->front_alerts == 1 ) {
			$this->alerts = $this->get('Alerts');
		}
		
		//search status
		$front_search = $ueParams->get('front_search');
		if (!$front_search) $front_search = 1;
		$this->front_search = $front_search;
		
		//messages status
		$front_messages = $ueParams->get('front_messages');
		if (!$front_messages) $front_messages = 1;
		$this->front_messages = $front_messages;
		if ( $this->front_messages == 1 ) {
			$this->unreadmsg = $this->get('UnreadMessages');
		}
		
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
		
		//return url
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		parent::display($tpl);
		$this->setDocument();
	}
	
	protected function setDocument() {
		$document = JFactory::getDocument();
		$document->setTitle($this->front_title);
	}
}
?>