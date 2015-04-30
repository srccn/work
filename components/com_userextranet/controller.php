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
 
// No direct access to this file
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.controller');

class UserExtranetController extends JControllerLegacy
{
	function display($cachable = false) {
		// set default view if not set
		JRequest::setVar('view', JRequest::getCmd('view', 'home'));

		//get user
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		//database object
		$db = JFactory::getDbo();
		
		//session object
		$session = JFactory::getSession();
		
		//mainframe
		$app = JFactory::getApplication();
		
		//variables
		$view   = JRequest::getCmd('view', 'UserExtranet');
		$layout = JRequest::getCmd('layout', 'default');
		$id	    = JRequest::getInt('id');
		
		//ue params
		$ueParams = $app->getParams('com_userextranet');
		
		//clear search session if not fsearch view
		if ( $view != 'fsearch' ) {
			$session->clear('ue-keyword');
		}
		
		//set ue user session
		$log = $session->get( 'ue_log_session' );
		if ( !$log ) {
			$session->set('ue_log_session', 1);
		}
		
		//case user not logged redirect him to login page {
		if ( !$userId ) {
			//get extranet menu item
			$menus	   = $app->getMenu('site');
			$component = JComponentHelper::getComponent('com_userextranet');
			$items 	   = $menus->getItems('component_id', $component->id);
			$Itemid    = $items[0]->id;
			
			$afterlogin = 'index.php?option=com_userextranet&view=home&Itemid='.$Itemid;
			//$afterlogin = urlencode(base64_encode($afterlogin));
			$afterlogin = base64_encode($afterlogin);
			$msg = JText::_('COM_USEREXTRANET_YOU_MUST_LOG');
			//$this->setRedirect(JRoute::_('index.php?option=com_users&view=login&return='.$afterlogin), $msg, 'notice');
			$this->setRedirect(JRoute::_('index.php?option=com_users&view=login&return='.$afterlogin, false), $msg, 'notice');

			return false;
		}
		//}
		
		//check if user can access extranet {
		if ( $userId ) {
			//can access folder
			$query = 'SELECT fa.id'
				. ' FROM #__ue_folder_acl AS fa'
				. ' WHERE fa.user_id = '
				. $userId
				. ' AND fa.cfg_task = '
				. $db->Quote('access')
				. ' AND fa.cfg_value = 1'
			;
			$db->setQuery($query);
			$canAccessFolder = $db->loadResult();
			
			//is extranet user
			$query = 'SELECT u.id'
				. ' FROM #__ue_users AS u'
				. ' WHERE u.user_id = '
				. $userId
			;
			$db->setQuery($query);
			$isExtranetUser = $db->loadResult();
			
			//if not allowed redirect to a custom page ( if set ) or home page
			if ( !$canAccessFolder || !$isExtranetUser ) {
				$redirectDenied = $ueParams->get('redirect_denied');
				if ( !$redirectDenied ) $redirectDenied = JRoute::_(JURI::base());
				$msg = JText::_('COM_USEREXTRANET_ACCESS_DENIED');
				$this->setRedirect(JRoute::_($redirectDenied, false), $msg, 'notice');

				return false;
			}
		}
		//}
		
		// call parent behavior
		parent::display($cachable);
	}
}
?>