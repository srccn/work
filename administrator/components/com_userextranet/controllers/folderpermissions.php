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

class UserExtranetControllerFolderpermissions extends JControllerAdmin
{
	protected $text_prefix = 'COM_USEREXTRANET_FOLDERPERMISSIONS';
	
	public function &getModel($name = 'Folderpermission', $prefix = 'UserExtranetModel') {
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	
	public function back () {
		$this->setRedirect(JRoute::_('index.php?option=com_userextranet&view=managepermissions', false));
	}
	
	public function apply_permissions() {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$allfid = JRequest::getVar( 'allfid', array(), 'post', 'array' );
		JArrayHelper::toInteger($allfid);
		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);
		$fviewid = JRequest::getVar( 'fviewid', array(), 'post', 'array' );
		JArrayHelper::toInteger($fviewid);
		$fdownid = JRequest::getVar( 'fdownid', array(), 'post', 'array' );
		JArrayHelper::toInteger($fdownid);
		$feditid = JRequest::getVar( 'feditid', array(), 'post', 'array' );
		JArrayHelper::toInteger($feditid);
		$faddid = JRequest::getVar( 'faddid', array(), 'post', 'array' );
		JArrayHelper::toInteger($faddid);
		$fdelid = JRequest::getVar( 'fdelid', array(), 'post', 'array' );
		JArrayHelper::toInteger($fdelid);
		$recurseid = JRequest::getVar( 'recurseid', array(), 'post', 'array' );
		JArrayHelper::toInteger($recurseid);
		$uid = JRequest::getVar( 'uid', 0, 'post', 'int' );
		$gid = JRequest::getVar( 'gid', 0, 'post', 'int' );
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		$model = $this->getModel();
		if(!$model->apply_permissions($allfid, $cid, $fviewid, $fdownid, $feditid, $faddid, $fdelid, $recurseid, $uid, $gid)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_PERMISSIONS_COULD_NOT_BE_SAVED' ));
		} else {
			$msg = JText::_( 'COM_USEREXTRANET_PERMISSIONS_SAVED' );
		}
		

		$this->setRedirect( 'index.php?option=com_userextranet&view=folderpermissions&fid='.$fid.'&uid='.$uid.'&gid='.$gid, $msg );
	}
}