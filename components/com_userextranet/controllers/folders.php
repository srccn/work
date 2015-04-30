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

		$this->setRedirect( JRoute::_($redirect, false), $msg );
	}
	
	public function edit_file () {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$editid = JRequest::getVar( 'editid', 0, 'post', 'int' );
		
		//redirect
		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=file&layout=edit&id='.(int)$editid.'&pid='.(int)$fid, false));
	}
	
	public function file_details () {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$detailsid = JRequest::getVar( 'detailsid', 0, 'post', 'int' );
		
		//redirect
		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=file&layout=default&id='.(int)$detailsid.'&pid='.(int)$fid, false));
	}
	
	public function back_to_folder () {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		//redirect
		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=folders&fid='.(int)$fid, false) );
	}
	
	public function add_file () {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		//redirect
		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=file&layout=new&pid='.(int)$fid, false) );
	}
}