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
jimport( 'joomla.filesystem.file' );

class UserExtranetControllerFile extends JControllerForm
{
	
	protected $text_prefix = 'COM_USEREXTRANET_FILE';
	
	protected function allowSave($data, $key = 'id') {
		return parent::allowSave($data, $key);
	}
	
	public function save () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		//app
		$app = JFactory::getApplication();
		
		// Get the post data.
		$data = JRequest::getVar('jform', array(), 'post', 'array');
		//$data['fdesc'] = JRequest::_cleanVar($data['fdesc']);
		$data['fdesc'] = stripslashes($data['fdesc']);
		
		//store post data in a session
		$app->setUserState('com_userextranet.edit.file.data', $data);
		
		$model = $this->getModel();
		if(!$model->store($data)) {
			$msg = JText::_( 'COM_USEREXTRANET_FILE_COULD_NOT_BE_EDITED' );
			$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=file&layout=edit&id='.(int)$data['id'].'&pid='.(int)$data['pid'], false), $msg, 'error');
			return false;
		} else {
			$app->setUserState('com_userextranet.edit.file.data', array());
			$msg = JText::_( 'COM_USEREXTRANET_FILE_SUCCESSFULLY_EDITED' );
		}

		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=file&layout=default&id='.(int)$data['id'].'&pid='.(int)$data['pid'], false), $msg);
	}
	
	public function cancel () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		// Get the post data.
		$data = JRequest::getVar('jform', array(), 'post', 'array');
		
		//clear session data
		JFactory::getApplication()->setUserState('com_userextranet.edit.file.data', array());
		
		//redirect
		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=file&layout=default&id='.(int)$data['id'].'&pid='.(int)$data['pid'], false));
	}
	
	public function save_new () {
		//Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get application
		$app = JFactory::getApplication();
		
		//get parent folder id from post
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		//get post data
		$jform = JRequest::getVar( 'jform', array(), 'post', 'array' );
		
		//file id ( if any )
		$id = (int)$jform['id'];
		
		//set data session for new files
		if (!$id):
		$app->setUserState('com_userextranet.edit.file.data', $jform);
		endif;
		
		//set redirects
		$redirectList = 'index.php?option=com_userextranet&view=folders&fid='.$fid;
		$redirectFile = 'index.php?option=com_userextranet&view=file&layout=new&pid='.$fid;
		
		//UPLOAD {
		//get upload data from post
		$file = JRequest::getVar('Filedata', '', 'files', 'array');
		
		//component params
		$params = JComponentHelper::getParams('com_userextranet');
		$max_upload_size = $params->get('filesize');
		if ( !$max_upload_size ) {
			$max_upload_size = 2;
		}
		$filetype = $params->get('filetype');
		if ( !$filetype ) {
			$filetype = 'gif,jpg,png,zip,rar,csv,doc,docx,txt,pdf,mp3,mp4,avi';
		}
		
		// Perform basic checks on file info before attempting anything {
		//check filename
		if (!isset($file['name']) && !$id) {
			// No filename (after the name was cleaned by JFile::makeSafe)
			$this->setRedirect(JRoute::_($redirectFile, false), JText::_('COM_USEREXTRANET_INVALID_REQUEST'), 'error');
			return false;
		}
		if (empty($file['name']) && !$id) {
			// No filename (after the name was cleaned by JFile::makeSafe)
			$this->setRedirect(JRoute::_($redirectFile, false), JText::_('COM_USEREXTRANET_SELECT_FILE_TO_UPLOAD'), 'error');
			return false;
		}
		
		//check upload size
		//check post size
		//use $_SERVER['CONTENT_LENGTH'] instead $file['size']
		//check file size
		if ( !empty($file['name']) ) {
			if (
				$file['size']>($max_upload_size * 1024 * 1024) ||
				$file['size']>(int)(ini_get('upload_max_filesize'))* 1024 * 1024 ||
				$file['size']>(int)(ini_get('post_max_size'))* 1024 * 1024 ||
				(($file['size'] > (int) (ini_get('memory_limit')) * 1024 * 1024) && ((int) (ini_get('memory_limit')) != -1))
			) {
				JError::raiseWarning(100, JText::_('COM_USEREXTRANET_ERROR_WARNFILETOOLARGE'));
				$this->setRedirect(JRoute::_($redirectFile, false));
				return false;
			}
			
			if ($file['error']==1) {
				JError::raiseWarning(100, JText::_('COM_USEREXTRANET_ERROR_WARNFILETOOLARGE'));
				$this->setRedirect(JRoute::_($redirectFile, false));
				return false;
			}
			
			//check file type
			$filetype = str_replace(' ', '', $filetype);
			$filetype = explode(',', $filetype);
			$ext = JFile::getExt($file['name']);
			if ( !in_array($ext, $filetype) ) {
				JError::raiseWarning(100, JText::_('COM_USEREXTRANET_ERROR_WARNFILETYPE'));
				$this->setRedirect(JRoute::_($redirectFile, false));
				return false;
			}
		}
		
		/*
		//check if file already exists
		if (JFile::exists($file['filepath']))
		{
			// A file with this name already exists
			JError::raiseWarning(100, JText::_('COM_USEREXTRANET_ERROR_FILE_EXISTS'));
			return false;
		}
		*/
		//}
		//}
		
		//get the model
		$model = $this->getModel();
		if(!$fileId = $model->store_new($file, $fid, $jform)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_FILE_COULD_NOT_BE_SAVED' ));
		} else {
			//send alert
			if (!$id):
			UserExtranetHelper::sendAlert($fid, 0, 1, $fileId, '', 0);
			endif;
			$msg = JText::_( 'COM_USEREXTRANET_FILE_SAVE_SUCCESS' );
		}
		
		//if save success release session data ( for new files )
		if (!$id):
		$app->setUserState('com_userextranet.edit.file.data', array());
		endif;
		
		//set redirect
		/* $task = $this->getTask();
		if ( $task == 'save2new_new' ) {
			$this->setRedirect($redirectFile, $msg);
		}
		if ( $task == 'save_new' ) {
			$this->setRedirect($redirectList, $msg);
		} */
		
		$this->setRedirect(JRoute::_($redirectList, false), $msg);
	}
	
	public function cancel_new () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		// Get the post data.
		$data = JRequest::getVar('jform', array(), 'post', 'array');
		$fid = JRequest::getVar('fid', 0, 'post', 'int');
		
		//clear session data
		JFactory::getApplication()->setUserState('com_userextranet.edit.file.data', array());
		
		//redirect
		$this->setRedirect( JRoute::_('index.php?option=com_userextranet&view=folders&fid='.(int)$fid, false));
	}
}