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
// no direct access
defined('_JEXEC') or die;

// Include dependancies
jimport('joomla.application.component.controller');

// require helper file
JLoader::register('UserExtranetHelper', dirname(__FILE__) . DS . 'helpers' . DS . 'userextranet.php');

$controller	= JControllerLegacy::getInstance('UserExtranet');
$controller->execute(JFactory::getApplication()->input->get('task'));
$controller->redirect();

?>