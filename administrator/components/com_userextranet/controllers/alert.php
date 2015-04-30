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

class UserExtranetControllerAlert extends JControllerForm
{
	
	protected $text_prefix = 'COM_USEREXTRANET_ALERTS';
	
	protected function allowSave($data, $key = 'id') {
		return parent::allowSave($data, $key);
	}
	
	public function add () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		// Get the post data.
		$fid = JRequest::getVar('fid', 0, 'post', 'int');
		
		//redirect
		$this->setRedirect(JRoute::_('index.php?option=com_userextranet&view=alert&layout=edit&fid='.$fid, false));
	}
	
	public function save () {
		//Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get application
		$app = JFactory::getApplication();
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$jform = JRequest::getVar( 'jform', array(), 'post', 'array' );
		
		//folder id ( if any )
		$id = (int)$jform['id'];
		
		//set session data
		$app->setUserState('com_userextranet.edit.alert.data', $jform);
		
		//set redirects
		$redirectNew = 'index.php?option=com_userextranet&view=alert&layout=edit&fid='.$fid;
		$redirectEdit = 'index.php?option=com_userextranet&view=alert&layout=edit&id='.$id.'&fid='.$fid;
		$redirectList = 'index.php?option=com_userextranet&view=alerts&fid='.$fid;
		$redirectFolder = $id ? $redirectEdit : $redirectNew;
		
		//get the model
		$model = $this->getModel();
		if(!$model->store($jform, $fid)) {
			$this->setRedirect($redirectFolder, JText::_('COM_USEREXTRANET_ALERT_COULD_NOT_BE_SAVED'), 'error');
			return false;
		} else {
			$msg = JText::_( 'COM_USEREXTRANET_ALERT_SAVE_SUCCESS' );
		}
		
		//if save success release session data
		$app->setUserState('com_userextranet.edit.alert.data', array());
		
		//redirect succes
		$task = $this->getTask();
		if ( $task == 'save2new' ) {
			$this->setRedirect($redirectNew, $msg);
		}
		if ( $task == 'save' ) {
			$this->setRedirect($redirectList, $msg);
		}
	}
	
	public function cancel () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		// Get the post data.
		$fid = JRequest::getVar('fid', 0, 'post', 'int');
		
		//redirect
		$this->setRedirect(JRoute::_('index.php?option=com_userextranet&view=alerts&fid='.$fid, false));
	}
	
}