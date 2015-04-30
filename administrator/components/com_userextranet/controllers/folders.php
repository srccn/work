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

class UserExtranetControllerFolders extends JControllerAdmin
{
	protected $text_prefix = 'COM_USEREXTRANET_FOLDERS';
	
	public function &getModel($name = 'Folder', $prefix = 'UserExtranetModel') {
		$model = parent::getModel($name, $prefix, array('ignore_request' => true));
		return $model;
	}
	
	public function reset_order_state() {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );

		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		$app = JFactory::getApplication();
		
		$app->setUserState('com_userextranet.folders.ordercol', '');
		$app->setUserState('com_userextranet.folders.orderdirn', '');
		
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect, $msg );
	}
	
	public function saveorder() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		if ( $fid ) $this->view_list .= '&fid='.$fid;

		parent::saveorder();
	}
	
	public function reorder() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		if ( $fid ) $this->view_list .= '&fid='.$fid;

		parent::reorder();
	}
	
	public function checkin() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		if ( $fid ) $this->view_list .= '&fid='.$fid;

		parent::checkin();
	}
	
	public function op_folder() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$op = JRequest::getVar( 'op', 0, 'post', 'int' );
		$opid = JRequest::getVar( 'opid', 0, 'post', 'int' );
		
		//clear previous session and set a new one
		$session = JFactory::getSession();
		$session->set( 'ue_folder_action', $op );
		$session->set( 'ue_folder_action_ids', array($opid) );
		
		//redirect
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect );
	}
	
	public function move() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);
		
		//clear previous session and set a new one
		$session = JFactory::getSession();
		$session->set( 'ue_folder_action', 1 );
		$session->set( 'ue_folder_action_ids', $cid );
		
		//redirect
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect );
	}
	
	public function copy() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);
		
		//clear previous session and set a new one
		$session = JFactory::getSession();
		$session->set( 'ue_folder_action', 2 );
		$session->set( 'ue_folder_action_ids', $cid );
		
		//redirect
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect );
	}
	
	public function op_cancel() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		//clear previous session and set a new one
		$session = JFactory::getSession();
		$session->clear( 'ue_folder_action' );
		$session->clear( 'ue_folder_action_ids' );
		
		//redirect
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect );
	}
	
	public function paste() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		//get session data
		$session = JFactory::getSession();
		$action = $session->get( 'ue_folder_action', 0 );
		$ids = $session->get( 'ue_folder_action_ids', array() );
		//clear session data
		$session->clear( 'ue_folder_action');
		$session->clear( 'ue_folder_action_ids' );
		
		//get model
		$model = $this->getModel();
		if(!$model->paste($ids, $fid, $action)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_OPERATION_FAILED' ));
		} else {
			$msg = JText::_( 'COM_USEREXTRANET_OPERATION_SUCCESSFULLY_COMPLETED' );
		}
		
		//redirect
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect, $msg );
	}
	
	public function delete_folder() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$delid = JRequest::getVar( 'delid', 0, 'post', 'int' );
		
		//get model
		$model = $this->getModel();
		if(!$model->delete(array($delid))) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_ITEM_COULD_NOT_BE_DELETED' ));
		} else {
			$msg = JText::_( 'COM_USEREXTRANET_ITEM_DELETED' );
		}
		
		//redirect
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect, $msg );
	}
	
	public function delete() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);
		
		if (count( $cid ) < 1) {
			JError::raiseError(500, JText::_( 'COM_USEREXTRANET_SELECT_AN_ITEM' ) );
		}

		$model = $this->getModel();
		if(!$model->delete($cid)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_ITEM_COULD_NOT_BE_DELETED' ));
		} else {
			$msg = sprintf(JText::_( 'COM_USEREXTRANET_ITEMS_DELETED' ), count( $cid ));
		}
		
		//redirect
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect, $msg );
	}
	
	public function sync_folder() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$syncid = JRequest::getVar( 'syncid', 0, 'post', 'int' );
		
		//get model
		$model = $this->getModel();
		if(!$model->sync(array($syncid))) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_OPERATION_FAILED' ));
		} else {
			$msg = JText::_( 'COM_USEREXTRANET_OPERATION_SUCCESSFULLY_COMPLETED' );
		}
		
		//redirect
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect, $msg );
	}
	
	public function sync() {
		
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$cid = JRequest::getVar( 'cid', array(), 'post', 'array' );
		JArrayHelper::toInteger($cid);
		
		if (count( $cid ) < 1) {
			JError::raiseError(500, JText::_( 'COM_USEREXTRANET_SELECT_AN_ITEM' ) );
		}

		$model = $this->getModel();
		if(!$model->sync($cid)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_OPERATION_FAILED' ));
		} else {
			$msg = JText::_( 'COM_USEREXTRANET_OPERATION_SUCCESSFULLY_COMPLETED' );
		}
		
		//redirect
		$redirect = 'index.php?option=com_userextranet&view=folders';
		if ( $fid ) $redirect .= '&fid='.$fid;

		$this->setRedirect( $redirect, $msg );
	}
}