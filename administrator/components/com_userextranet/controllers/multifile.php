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
jimport('joomla.filesystem.file');
jimport('joomla.filesystem.folder');

class UserExtranetControllerMultifile extends JControllerForm
{
	
	protected $text_prefix = 'COM_USEREXTRANET_MULTIFILES';
	
	protected function allowSave($data, $key = 'id') {
		return parent::allowSave($data, $key);
	}
	
	public function save () {
		//Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get parent folder id from post
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		$this->fid = $fid;
		
		//set redirects
		$redirectList = 'index.php?option=com_userextranet&view=folders&fid='.$fid;
		$redirectFile = 'index.php?option=com_userextranet&view=multifile&layout=edit&pid='.$fid;
		
		//get upload data from post
		$files = JRequest::getVar('Filedata', '', 'files', 'array');
		
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
		$filetype = str_replace(' ', '', $filetype);
		$filetype = explode(',', $filetype);
		
		//check post size
		if (
			$_SERVER['CONTENT_LENGTH']>($max_upload_size * 1024 * 1024) ||
			$_SERVER['CONTENT_LENGTH']>(int)(ini_get('upload_max_filesize'))* 1024 * 1024 ||
			$_SERVER['CONTENT_LENGTH']>(int)(ini_get('post_max_size'))* 1024 * 1024 ||
			(($_SERVER['CONTENT_LENGTH'] > (int) (ini_get('memory_limit')) * 1024 * 1024) && ((int) (ini_get('memory_limit')) != -1))
		)
		{
			$this->setRedirect($redirectFile, JText::_('COM_USEREXTRANET_ERROR_UPLOADTOOLARGE'), 'error');
			return false;
		}
		
		// Cast each item as array in case the Filedata parameter was not sent as such
		$files = array_map( array($this, 'reformatFilesArray'),
			(array) $files['name'], (array) $files['type'], (array) $files['tmp_name'], (array) $files['error'], (array) $files['size']
		);
		
		// Perform basic checks on file info before attempting anything
		$fileNames = array();
		foreach ($files as &$file) {
			$fileNames[] = $file['name'];
			if ($file['error']==1)
			{
				$this->setRedirect($redirectFile, sprintf(JText::_('COM_USEREXTRANET_ERROR_FILE_S_TOOLARGE'), $file['name']), 'error');
				return false;
			}
			if ($file['size']>($max_upload_size * 1024 * 1024))
			{
				$this->setRedirect($redirectFile, sprintf(JText::_('COM_USEREXTRANET_ERROR_FILE_S_TOOLARGE'), $file['name']), 'error');
				return false;
			}
			if (JFile::exists($file['filepath']))
			{
				// A file with this name already exists
				$this->setRedirect($redirectFile, JText::_('COM_USEREXTRANET_ERROR_FILE_EXISTS'), 'error');
				return false;
			}
			if (!isset($file['name']))
			{
				// No filename (after the name was cleaned by JFile::makeSafe)
				$this->setRedirect($redirectFile, JText::_('COM_USEREXTRANET_INVALID_REQUEST'), 'error');
				return false;
			}
			if ( !in_array($file['type'], $filetype) )
			{
				$this->setRedirect($redirectFile, sprintf(JText::_('COM_USEREXTRANET_ERROR_S_FILETYPE'), $file['type']), 'error');
				return false;
			}
		}
		
		//get the model
		$model = $this->getModel();
		if(!$model->store($files, $fid)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_FILES_COULD_NOT_BE_SAVED' ));
		} else {
			//send alert
			$fileNames = implode(', ', $fileNames);
			UserExtranetHelper::sendAlert($fid, 0, 0, 0, $fileNames, 0);
			$msg = JText::_( 'COM_USEREXTRANET_FILES_SAVE_SUCCESS' );
		}
		
		$this->setRedirect($redirectList, $msg);
	}
	
	protected function reformatFilesArray($name, $type, $tmp_name, $error, $size) {
		$name = JFile::makeSafe($name);
		$fname = JFile::stripExt($name);
		$frname = $fname.'__'.UserExtranetHelper::setCode();
		$type = JFile::getExt($name);
		$pfrname = UserExtranetHelper::getRow('#__ue_folders', array('frname'), $this->fid)->frname;
		$destPath = JPATH_COMPONENT.DS.'root';
		if ( $this->fid ):
			$destPath .= DS.$pfrname;
		endif;
		$destPath .= DS.$frname.'.'.$type;
		$destPath = JPath::clean($destPath);
		return array(
			'name'		=> $name,
			'fname'		=> $fname,
			'frname'	=> $frname,
			'type'		=> $type,
			'tmp_name'	=> $tmp_name,
			'error'		=> $error,
			'size'		=> $size,
			'filepath'	=> $destPath
		);
	}
	
	public function cancel () {
		// Check for request forgeries
		JRequest::checkToken() or jexit( 'Invalid Token' );
		
		//get post data
		$fid = JRequest::getVar( 'fid', 0, 'post', 'int' );
		
		$this->setRedirect('index.php?option=com_userextranet&view=folders&fid='.$fid);
	}
}