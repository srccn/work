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

jimport('joomla.application.component.modeladmin');

class UserExtranetModelDownload extends JModelAdmin
{
	
	protected function canDelete($record)
	{
		$user = JFactory::getUser();

		if ($record->id) {
			return $user->authorise('core.delete', 'com_userextranet.download.'.(int) $record->id);
		} else {
			return parent::canDelete($record);
		}
	}

	protected function canEditState($record)
	{
		$user = JFactory::getUser();
		
		//if ($record->id) {
		//	return $user->authorise('core.edit.state', 'com_beestohelpdesk.canned.'.(int) $record->id);
		//} else {
			return parent::canEditState($record);
		//}
	}


	public function getTable($type = 'Download', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_userextranet.download', 'download', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form)) {
			return false;
		}

		// Modify the form based on access controls.
		if ($this->canEditState((object) $data) != true) {
			// Disable fields for display.
			$form->setFieldAttribute('ordering', 'disabled', 'true');

			// Disable fields while saving.
			// The controller has already verified this is a record you can edit.
			$form->setFieldAttribute('ordering', 'filter', 'unset');
		}

		return $form;
	}

	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_userextranet.edit.download.data', array());

		if (empty($data)) {
			$data = $this->getItem();
		}

		return $data;
	}

	protected function getReorderConditions($table = null)
	{
		
		$condition = array();
		//$condition[] = 'id = '.(int) $table->id;
		return $condition;
	}
	
	public function getFile ( $fid ) {
		jimport( 'joomla.filesystem.file' );
		
		$query = 'SELECT f.*, '
			. ' pf.frname AS pfrname'
			. ' FROM #__ue_folders AS f'
			. ' LEFT JOIN #__ue_folders AS pf ON pf.id = f.pid'
			. ' WHERE f.id = '
			. (int)$fid
		;
		$this->_db->setQuery($query);
		$obj = $this->_db->loadObject();
		
		//if file not stored in database
		if (!$obj) {
			return false;
		}
		
		//check file
		if ( $obj->pid ) {
			$filepath = JPATH_COMPONENT.DS.'root'.DS.$obj->pfrname.DS.$obj->frname.'.'.$obj->ftype;
		}
		else {
			$filepath = JPATH_COMPONENT.DS.'root'.DS.$obj->frname.'.'.$obj->ftype;
		}
		
		//if file is not available
		if (!is_readable($filepath)) {
			return false;
		}
		
		$file = new stdClass();
		$file->mimetype = $this->getMimetype($filepath, $obj->ftype);
		$file->basename = $obj->fname;
		$file->type = $obj->ftype;
		$file->size = @filesize($filepath);
		$file->content = JFile::read($filepath);
		
		return $file;
	}
	
	public function getMimetype ($filepath, $ext) {
		if(!function_exists('mime_content_type')) {
				
			$mime_types = array(

				'txt' => 'text/plain',
				'htm' => 'text/html',
				'html' => 'text/html',
				'php' => 'text/html',
				'css' => 'text/css',
				'js' => 'application/javascript',
				'json' => 'application/json',
				'xml' => 'application/xml',
				'swf' => 'application/x-shockwave-flash',
				'flv' => 'video/x-flv',

				// images
				'png' => 'image/png',
				'jpe' => 'image/jpeg',
				'jpeg' => 'image/jpeg',
				'jpg' => 'image/jpeg',
				'gif' => 'image/gif',
				'bmp' => 'image/bmp',
				'ico' => 'image/vnd.microsoft.icon',
				'tiff' => 'image/tiff',
				'tif' => 'image/tiff',
				'svg' => 'image/svg+xml',
				'svgz' => 'image/svg+xml',

				// archives
				'zip' => 'application/zip',
				'rar' => 'application/x-rar-compressed',
				'exe' => 'application/x-msdownload',
				'msi' => 'application/x-msdownload',
				'cab' => 'application/vnd.ms-cab-compressed',

				// audio/video
				'mp3' => 'audio/mpeg',
				'qt' => 'video/quicktime',
				'mov' => 'video/quicktime',

				// adobe
				'pdf' => 'application/pdf',
				'psd' => 'image/vnd.adobe.photoshop',
				'ai' => 'application/postscript',
				'eps' => 'application/postscript',
				'ps' => 'application/postscript',

				// ms office
				'doc' => 'application/msword',
				'rtf' => 'application/rtf',
				'xls' => 'application/vnd.ms-excel',
				'ppt' => 'application/vnd.ms-powerpoint',

				// open office
				'odt' => 'application/vnd.oasis.opendocument.text',
				'ods' => 'application/vnd.oasis.opendocument.spreadsheet'
			);

			if (array_key_exists($ext, $mime_types)) {
				$mimetype = $mime_types[$ext];
			}
			elseif (function_exists('finfo_open')) {
				$finfo = finfo_open(FILEINFO_MIME);
				$mimetype = finfo_file($finfo, $filepath);
				finfo_close($finfo);
			}
			else {
				return 'application/octet-stream';
			}
		}
		else {
			$mimetype = mime_content_type($filepath);
		}
		
		return $mimetype;
	}
	
	public function storeDownload ($fid) {
		$date = JFactory::getDate()->toSQL();
		$user = JFactory::getUser()->get('id');
		$query = 'INSERT'
			. ' INTO #__ue_downloads'
			. ' (fid, location, created_by, created_date)'
			. ' VALUES'
			. ' ('.(int)$fid.', 1, '.(int)$user.', '.$this->_db->Quote($date).')'
		;
		$this->_db->setQuery($query);
		$this->_db->query();
	}
}

?>