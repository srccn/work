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
jimport( 'joomla.filesystem.file' );
jimport( 'joomla.filesystem.folder' );
jimport('joomla.filesystem.path');

class UserExtranetModelFile extends JModelAdmin
{
	
	protected function canDelete($record)
	{
		$user = JFactory::getUser();

		if ($record->id) {
			return $user->authorise('core.delete', 'com_userextranet.file.'.(int) $record->id);
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


	public function getTable($type = 'File', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_userextranet.file', 'file', array('control' => 'jform', 'load_data' => $loadData));
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
		$data = JFactory::getApplication()->getUserState('com_userextranet.edit.file.data', array());

		if (empty($data)) {
			$data = $this->getItem();
		}

		return $data;
	}

	protected function getReorderConditions($table = null)
	{
		
		$condition = array();
		$condition[] = 'pid = '.(int) $table->pid;
		return $condition;
	}
	
	protected function prepareTable(&$table)
	{
		jimport('joomla.filter.output');
		
		if (empty($table->id)) {
			//fname
			echo $table->fname = JFolder::makeSafe($table->fname);
			
			//ordering
			if (empty($table->ordering)) {
				$db = JFactory::getDbo();
				$db->setQuery('SELECT MAX(ordering) FROM #__ue_folders WHERE pid='.(int)$table->pid);
				$max = $db->loadResult();
				$table->ordering = $max+1;
			}
		}
	}
	
	public function store($file, $fid, $data) {
		//get table
		$row = $this->getTable();
		
		//file id ( if any )
		$id = (int)$data['id'];
		
		$file['name'] = JFile::makeSafe($file['name']);
		
		//if edit get old data
		if ($id):
		$olddata = UserExtranetHelper::getRow('#__ue_folders', array('frname', 'ftype'), $id);
		endif;
		
		//prepare data {
		//fname
		$data['fname'] = JFile::makeSafe($data['fname']);
		
		//if we have file to upload
		if (!empty($file['name'])):
		//frname
		$data['frname'] = $data['fname'].'__'.UserExtranetHelper::setCode();
		//ftype
		$data['ftype'] = JFile::getExt($file['name']);
		//fsize
		$data['fsize'] = $file['size'];
		endif;
		
		//ordering ( set for new files only )
		if ( !$id ):
		$data['ordering'] = $this->getFileOrdering($data['pid']);
		endif;
		//}
		
		//insert into #__ue_folders {
		// Bind the form fields
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		// Make sure the record is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		// Store to the database
		if (!$row->store()) {
			$this->setError( $this->_db->getErrorMsg() );
			return false;
		}
		//}
		
		if ( !empty($file['name']) ) {
			// Set FTP credentials, if given
			JClientHelper::setCredentialsFromRequest('ftp');
			
			//upload file
			$pfrname = UserExtranetHelper::getRow('#__ue_folders', array('frname'), $fid)->frname;
			$destPath = JPATH_COMPONENT.DS.'root';
			if ( $fid ):
				$destPath .= DS.$pfrname;
			endif;
			$destPath .= DS.$data['frname'].'.'.$data['ftype'];
			$destPath = JPath::clean($destPath);
			if (JFile::upload($file['tmp_name'], $destPath)) {
				if ( $id ) {
					$oldPath = JPATH_COMPONENT.DS.'root';
					if ( $fid ):
						$oldPath .= DS.$pfrname;
					endif;
					$oldPath .= DS.$olddata->frname.'.'.$olddata->ftype;
					$oldPath = JPath::clean($oldPath);
					JFile::delete($oldPath);
				}
			}
		}
		
		return $row->id;
	}
	
	protected function getFileOrdering ( $pid ) {
		$query = 'SELECT MAX(f.ordering)'
			. ' FROM #__ue_folders AS f'
			. ' WHERE f.pid = '
			.(int)$pid
		;
		$this->_db->setQuery($query);
		$ordering = $this->_db->loadResult();
		if ( $ordering ) {
			$ordering++;
		}
		else {
			$ordering = 1;
		}
		
		return $ordering;
	}
}

?>