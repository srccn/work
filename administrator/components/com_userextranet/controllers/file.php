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
	
	protected $text_prefix = 'COM_USEREXTRANET_FILES';
	
	protected function allowSave($data, $key = 'id') {
		return parent::allowSave($data, $key);
	}
	
	public function add () {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		$this->setRedirect('index.php?option=com_userextranet&view=file&layout=edit&pid='.(int)$fid);
	}
	
	public function add_multiple () {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		$this->setRedirect('index.php?option=com_userextranet&view=multifile&layout=edit&pid='.(int)$fid);
	}
	
	public function save () {
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
		$redirectNew  = 'index.php?option=com_userextranet&view=file&layout=edit&pid='.$fid;
		$redirectEdit = 'index.php?option=com_userextranet&view=file&layout=edit&id='.$id.'&pid='.$fid;
		$redirectList = 'index.php?option=com_userextranet&view=folders&fid='.$fid;
		$redirectFile = $id ? $redirectEdit : $redirectNew;
		
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
			$this->setRedirect($redirectFile, JText::_('COM_USEREXTRANET_INVALID_REQUEST'), 'error');
			return false;
		}
		if (empty($file['name']) && !$id) {
			// No filename (after the name was cleaned by JFile::makeSafe)
			$this->setRedirect($redirectFile, JText::_('COM_USEREXTRANET_SELECT_FILE_TO_UPLOAD'), 'error');
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
				$this->setRedirect($redirectFile);
				return false;
			}
			
			if ($file['error']==1) {
				JError::raiseWarning(100, JText::_('COM_USEREXTRANET_ERROR_WARNFILETOOLARGE'));
				$this->setRedirect($redirectFile);
				return false;
			}
			
			//check file type
			$filetype = str_replace(' ', '', $filetype);
			$filetype = explode(',', $filetype);
			$ext = JFile::getExt($file['name']);
			if ( !in_array($ext, $filetype) ) {
				JError::raiseWarning(100, JText::_('COM_USEREXTRANET_ERROR_WARNFILETYPE'));
				$this->setRedirect($redirectFile);
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
		if(!$fileId = $model->store($file, $fid, $jform)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_FILE_COULD_NOT_BE_SAVED' ));
		} else {
			//send alert
			if (!$id):
			UserExtranetHelper::sendAlert($fid, 0, 0, $fileId, '', 0);
			endif;
			$msg = JText::_( 'COM_USEREXTRANET_FILE_SAVE_SUCCESS' );
		}
		
		//if save success release session data ( for new files )
		if (!$id):
		$app->setUserState('com_userextranet.edit.file.data', array());
		endif;
		
		//set redirect
		$task = $this->getTask();
		if ( $task == 'save2new' ) {
			$this->setRedirect($redirectNew, $msg);
		}
		if ( $task == 'save' ) {
			$this->setRedirect($redirectList, $msg);
		}
	}
	
	public function cancel () {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		$this->setRedirect('index.php?option=com_userextranet&view=folders&fid='.$fid);
	}
}