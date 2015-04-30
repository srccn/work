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

defined( '_JEXEC' ) or die;

jimport('joomla.application.component.controllerform');

class UserExtranetControllerSentalert extends JControllerForm
{
	
	protected $text_prefix = 'COM_USEREXTRANET_SENTALERTS';
	
	protected function allowSave($data, $key = 'id') {
		return parent::allowSave($data, $key);
	}
}