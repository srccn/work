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

// import Joomla controller library
jimport('joomla.application.component.controller');

class UserExtranetController extends JControllerLegacy
{
	//display task
	function display($cachable = false, $urlparams = false) {
		
		// set default view if not set
		JRequest::setVar('view', JRequest::getCmd('view', 'UserExtranet'));
		
		//check if logged user can access ue {
		$isStaff = UserExtranetHelper::isStaff();
		$isSuperUser = UserExtranetHelper::isSuperUser();
		//case is not staff but is super user - automatically create staff account
		if ( !$isStaff && $isSuperUser ) {
			UserExtranetHelper::createStaffAccount();
		}
		//}
		
		// call parent behavior
		parent::display($cachable);
	}
}
