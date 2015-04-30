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

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.controlleradmin');

class UserExtranetControllerUsergroups extends JControllerAdmin
{
	protected $text_prefix = 'COM_USEREXTRANET_USERGROUPS';
	
	public function &getModel($name = 'Usergroup', $prefix = 'UserExtranetModel') {
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	
	public function add_m_users_to_group () {
		$this->setRedirect(JRoute::_('index.php?option=com_userextranet&view=ugmembers', false));
	}
}