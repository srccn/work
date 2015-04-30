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
error_reporting(E_ALL & ~E_NOTICE & ~E_STRICT & ~E_DEPRECATED);

if ( !defined('DS') ) define('DS', DIRECTORY_SEPARATOR);
// No direct access to this file
defined('_JEXEC') or die('Restricted access');

// Access check.
if (!JFactory::getUser()->authorise('core.manage', 'com_userextranet')) 
{
	return JError::raiseWarning(404, JText::_('JERROR_ALERTNOAUTHOR'));
}

// require helper file
JLoader::register('UserExtranetHelper', dirname(__FILE__) . DS . 'helpers' . DS . 'userextranet.php');
// require helper file - ue ACL
JLoader::register('UserExtranetHelperACL', dirname(__FILE__) . DS . 'helpers' . DS . 'acl.php');

// import joomla controller library
jimport('joomla.application.component.controller');

// Get an instance of the controller prefixed by UserExtranet
$controller	= JControllerLegacy::getInstance('UserExtranet');

// Perform the Request task
$controller->execute(JFactory::getApplication()->input->get('task'));

// Redirect if set by the controller
$controller->redirect();