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

class UserExtranetModelFolder extends JModelAdmin
{
	
	protected function canDelete($record)
	{
		$user = JFactory::getUser();

		if ($record->id) {
			return $user->authorise('core.delete', 'com_userextranet.folder.'.(int) $record->id);
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


	public function getTable($type = 'Folder', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_userextranet.folder', 'folder', array('control' => 'jform', 'load_data' => $loadData));
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
		$data = JFactory::getApplication()->getUserState('com_userextranet.edit.folder.data', array());

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
	
	//called by default save function
	protected function prepareTable(&$table)
	{
		jimport('joomla.filter.output');
		
		if (empty($table->id)) {
			//fname
			$table->fname = JFolder::makeSafe($table->fname);
			
			//ordering
			if (empty($table->ordering)) {
				$db = JFactory::getDbo();
				$db->setQuery('SELECT MAX(ordering) FROM #__ue_folders WHERE pid='.(int)$table->pid);
				$max = $db->loadResult();
				$table->ordering = $max+1;
			}
			
			//frname
			$table->frname = $table->fname.'__'.UserExtranetHelper::setCode();
			
			//create folder
			$path = JPATH_COMPONENT.DS.'root'.DS.$table->frname;
			JFolder::create($path);
			//add index.html to folder
			$buffer = '<html><body bgcolor="#FFFFFF"></body></html>';
			$fpath = $path.DS.'index.html';
			JFile::write($fpath, $buffer);
		}
	}
	
	public function paste ($ids, $fid, $action) {
		//move
		if ( $action == 1 ) {
			if ( !$this->move($ids, $fid) ) {
				return false;
			}
		}
		//copy
		if ( $action == 2 ) {
			if ( !$this->copy($ids, $fid) ) {
				return false;
			}
		}
		
		return true;
	}
	
	protected function move ($ids, $fid) {
		
		foreach ( $ids as $id ) {
			//get file/folder data {
			$query = 'SELECT f.*, '
				. ' pf.frname AS pfrname'
				. ' FROM #__ue_folders AS f'
				. ' LEFT JOIN #__ue_folders AS pf ON pf.id = f.pid'
				. ' WHERE f.id = '
				. (int)$id
			;
			$this->_db->setQuery($query);
			$obj = $this->_db->loadObject();
			//}
			
			//if destination folder is current folder do nothing {
			if ( $obj->pid == $fid ) {
				continue;
			}
			//}
			
			//set a new ordering {
			$query = 'SELECT MAX(f.ordering) AS ordering'
				. ' FROM #__ue_folders AS f'
				. ' WHERE f.pid = '
				. (int)$fid
			;
			$this->_db->setQuery($query);
			$ordering = $this->_db->loadResult();
			$ordering++;
			//}
			
			//change parent folder {
			$query = 'UPDATE'
				. ' #__ue_folders'
				. ' SET pid = '
				. (int)$fid
				. ', '
				. ' ordering = '
				. $ordering
				. ' WHERE id = '
				. $id
			;
			$this->_db->setQuery($query);
			if (!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
			//}
			
			//case file we move also file on ftp {
			//if file
			if ( !$obj->ffolder ) {
				//get source path
				if ( $obj->pid ) {
					$filepath = JPATH_COMPONENT.DS.'root'.DS.$obj->pfrname.DS.$obj->frname.'.'.$obj->ftype;
				}
				else {
					$filepath = JPATH_COMPONENT.DS.'root'.DS.$obj->frname.'.'.$obj->ftype;
				}
				//get destination path
				if ( $fid ) {
					$query = 'SELECT f.frname'
						. ' FROM #__ue_folders AS f'
						. ' WHERE f.id = '
						. (int)$fid
					;
					$this->_db->setQuery($query);
					$pfrname = $this->_db->loadResult();
					$destpath = JPATH_COMPONENT.DS.'root'.DS.$pfrname.DS.$obj->frname.'.'.$obj->ftype;
				}
				else {
					$destpath = JPATH_COMPONENT.DS.'root'.DS.$obj->frname.'.'.$obj->ftype;
				}
				
				JFile::move($filepath, $destpath);
			}
			//}
			
			//PERMISSIONS {
			//get params {
			//1 - reset, 2 - keep, 3 - from parent
			$ueParams = JComponentHelper::getParams('com_userextranet');
			$when_move = $ueParams->get('when_move');
			if ( !$when_move ) $when_move = 2;
			//}
			
			//get subfolders data
			$sub = UserExtranetHelper::getTreeData($id);
			
			//add main folder to subfolders array
			array_unshift($sub, $obj);
			
			foreach ( $sub as $subobj ) {
				//get permissions data we'll set later
				if ( $when_move == 3 || $when_move == 2 ) {
					$isFolder = $subobj->ffolder;
					if ( $isFolder ) {
						//keep(2) - we'll set the same permissions as for source folder
						if ($when_move == 2) $copyPermissionsFrom = $subobj->id;
						//from parent(2) - we'll set the same permissions as for destination folder
						if ($when_move == 3) $copyPermissionsFrom = $fid;
						//get destination folder permissions
						//per user
						$query = 'SELECT fa.*'
							. ' FROM #__ue_folder_acl AS fa'
							. ' WHERE fa.cfg_folder = '
							. $copyPermissionsFrom
						;
						$this->_db->setQuery($query);
						$objListAcl = $this->_db->loadObjectList();
						//per user group
						$query = 'SELECT fag.*'
							. ' FROM #__ue_folder_acl_g AS fag'
							. ' WHERE fag.cfg_folder = '
							. $fid
						;
						$this->_db->setQuery($query);
						$objListAclG = $this->_db->loadObjectList();
					}
				}
				
				//delete current permissions
				$query = 'DELETE'
					. ' FROM #__ue_folder_acl'
					. ' WHERE cfg_folder = '
					. $subobj->id
				;
				$this->_db->setQuery($query);
				$this->_db->query();
				$query = 'DELETE'
					. ' FROM #__ue_folder_acl_g'
					. ' WHERE cfg_folder = '
					. $subobj->id
				;
				$this->_db->setQuery($query);
				$this->_db->query();
				
				//case from parent(3) or keep(2) we'll set the new permissions
				if ( $when_move == 3 || $when_move == 2 ) {
					$isFolder = $subobj->ffolder;
					if ( $isFolder ) {
						//per user
						if (!empty($objListAcl)):
						foreach ( $objListAcl as $objAcl ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl'
								. ' (user_id, cfg_folder, cfg_task, cfg_value )'
								. ' VALUES'
								. ' ('.$objAcl->user_id.', '.$subobj->id.', '.$this->_db->Quote($objAcl->cfg_task).', '.$objAcl->cfg_value.' )'
							;
							$this->_db->setQuery($query);
							$this->_db->query();
						}
						endif;
						//per user group
						if (!empty($objListAclG)):
						foreach ( $objListAclG as $objAclG ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl_g'
								. ' (group_id, cfg_folder, cfg_task, cfg_value )'
								. ' VALUES'
								. ' ('.$objAclG->group_id.', '.$subobj->id.', '.$this->_db->Quote($objAclG->cfg_task).', '.$objAclG->cfg_value.' )'
							;
							$this->_db->setQuery($query);
							$this->_db->query();
						}
						endif;
					}
				}
			}
			
			//}
		}
		
		return true;
	}
	
	protected function copy ($ids, $fid) {
		
		//1 - reset, 2 - keep, 3 - from parent
		$ueParams = JComponentHelper::getParams('com_userextranet');
		$when_copy = $ueParams->get('when_copy');
		if ( !$when_copy ) $when_copy = 2;
		
		foreach ( $ids as $id ) {
			//MAIN FOLDER {
			//get data {
			$query = 'SELECT f.*,'
				. ' pf.frname AS pfrname'
				. ' FROM #__ue_folders AS f'
				. ' LEFT JOIN #__ue_folders AS pf ON pf.id = f.pid'
				. ' WHERE f.id = '
				. (int)$id
			;
			$this->_db->setQuery($query);
			$obj = $this->_db->loadObject();
			//}
			
			//set new data {
			//ordering
			$query = 'SELECT MAX(f.ordering) AS ordering'
				. ' FROM #__ue_folders AS f'
				. ' WHERE f.pid = '
				. (int)$fid
			;
			$this->_db->setQuery($query);
			$fordering = $this->_db->loadResult();
			$fordering++;
			//created_date
			$fdate = JFactory::getDate()->toSQL();
			//frname
			$frname = $obj->fname.'__'.UserExtranetHelper::setCode();
			//created_by
			$fuser = JFactory::getUser();
			$fuserid = $fuser->get('id');
			//}
			
			//insert into database {
			$query = 'INSERT'
				. ' INTO #__ue_folders'
				. ' (pid, ffolder, fname, frname, ftype, fsize, ordering, created_date, created_by)'
				. ' VALUES'
				. ' ('.$fid.', '.$obj->ffolder.', '.$this->_db->Quote($obj->fname).', '.$this->_db->Quote($frname).', '.$this->_db->Quote($obj->ftype).', '.$obj->fsize.', '.$fordering.', '.$this->_db->Quote($fdate).', '.$fuserid.')'
			;
			$this->_db->setQuery($query);
			if (!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
			//}
			
			//create folder or file on ftp {
			
			//source path {
			//root folder
			$sourcePath = JPATH_COMPONENT.DS.'root';
			//parent folder ( only for files )
			if ($obj->pid && !$obj->ffolder):
				$sourcePath .= DS.$obj->pfrname;
			endif;
			//folder or file real name
			$sourcePath .= DS.$obj->frname;
			//if file add the extension
			if ( !$obj->ffolder ):
				$sourcePath .= '.'.$obj->ftype;
			endif;
			//}
			
			//destination path {
			//root folder
			$destPath = JPATH_COMPONENT.DS.'root';
			//parent folder ( only for files )
			if ($fid && !$obj->ffolder):
				$objDestFolder = UserExtranetHelper::getRow('#__ue_folders', array('frname'), $fid);
				$destPath .= DS.$objDestFolder->frname;
			endif;
			//folder or file real name
			$destPath .= DS.$frname;
			//if file add the extension
			if ( !$obj->ffolder ):
				$destPath .= '.'.$obj->ftype;
			endif;
			//}
			
			//create
			if ( $obj->ffolder ) {
				JFolder::create($destPath);
				JFile::copy(JPATH_COMPONENT.DS.'root'.DS.'index.html', $destPath.DS.'index.html');
			}
			else {
				JFile::copy($sourcePath, $destPath);
			}
			
			//}
			//}
			
			//SUBFOLDERS {
			
			//get subfolders data
			$sub = UserExtranetHelper::getTreeData($id);
			
			if ( !empty($sub) ):
			$newIds = array($obj->id => $this->getLastId());
			foreach ( $sub as $objsub ):
			//set new data {
			//frname
			$frname = $objsub->fname.'__'.UserExtranetHelper::setCode();
			//pid
			$pid = $newIds[$objsub->pid];
			//}
			
			//insert into database {
			$query = 'INSERT'
				. ' INTO #__ue_folders'
				. ' (pid, ffolder, fname, frname, ftype, fsize, ordering, created_date, created_by)'
				. ' VALUES'
				. ' ('.$pid.', '.$objsub->ffolder.', '.$this->_db->Quote($objsub->fname).', '.$this->_db->Quote($frname).', '.$this->_db->Quote($objsub->ftype).', '.$objsub->fsize.', '.$objsub->ordering.', '.$this->_db->Quote($fdate).', '.$fuserid.')'
			;
			$this->_db->setQuery($query);
			if (!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
			$newId = $this->getLastId();
			$newIds[$objsub->id] = $newId;
			//}
			
			//create folder or file on ftp {
			//source path {
			//root folder
			$sourcePath = JPATH_COMPONENT.DS.'root';
			//parent folder ( only for files )
			if (!$objsub->ffolder):
				$sourcePath .= DS.$objsub->pfrname;
			endif;
			//folder or file real name
			$sourcePath .= DS.$objsub->frname;
			//if file add the extension
			if ( !$objsub->ffolder ):
				$sourcePath .= '.'.$objsub->ftype;
			endif;
			//}
			
			//destination path {
			//root folder
			$destPath = JPATH_COMPONENT.DS.'root';
			//parent folder ( only for files )
			if ($pid && !$objsub->ffolder):
				$objsubDestFolder = UserExtranetHelper::getRow('#__ue_folders', array('frname'), $pid);
				$destPath .= DS.$objsubDestFolder->frname;
			endif;
			//folder or file real name
			$destPath .= DS.$frname;
			//if file add the extension
			if ( !$objsub->ffolder ):
				$destPath .= '.'.$objsub->ftype;
			endif;
			//}
			
			//create
			if ( $objsub->ffolder ) {
				JFolder::create($destPath);
				JFile::copy(JPATH_COMPONENT.DS.'root'.DS.'index.html', $destPath.DS.'index.html');
			}
			else {
				JFile::copy($sourcePath, $destPath);
			}
			//}
			endforeach;
			endif;
			//}
			
			//PERMISSIONS {
			foreach ( $newIds as $oldId => $newId ) {
				//case from parent(3) or keep(2) we'll add the new permissions
				if ( $when_copy == 3 || $when_copy == 2 ) {
					$isFolder = UserExtranetHelper::getRow('#__ue_folders', array('ffolder'), $newId)->ffolder;
					if ( $isFolder ) {
						//keep(2) - we'll set the same permissions as for source folder
						if ($when_copy == 2) $copyPermissionsFrom = $oldId;
						//from parent(2) - we'll set the same permissions as for destination folder
						if ($when_copy == 3) $copyPermissionsFrom = $fid;
						//get destination folder permissions
						//per user
						$query = 'SELECT fa.*'
							. ' FROM #__ue_folder_acl AS fa'
							. ' WHERE fa.cfg_folder = '
							. $copyPermissionsFrom
						;
						$this->_db->setQuery($query);
						$objListAcl = $this->_db->loadObjectList();
						if (!empty($objListAcl)):
						foreach ( $objListAcl as $objAcl ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl'
								. ' (user_id, cfg_folder, cfg_task, cfg_value )'
								. ' VALUES'
								. ' ('.$objAcl->user_id.', '.$newId.', '.$this->_db->Quote($objAcl->cfg_task).', '.$objAcl->cfg_value.' )'
							;
							$this->_db->setQuery($query);
							$this->_db->query();
						}
						endif;
						//per user group
						$query = 'SELECT fag.*'
							. ' FROM #__ue_folder_acl_g AS fag'
							. ' WHERE fag.cfg_folder = '
							. $fid
						;
						$this->_db->setQuery($query);
						$objListAclG = $this->_db->loadObjectList();
						if (!empty($objListAclG)):
						foreach ( $objListAclG as $objAclG ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl_g'
								. ' (group_id, cfg_folder, cfg_task, cfg_value )'
								. ' VALUES'
								. ' ('.$objAclG->group_id.', '.$newId.', '.$this->_db->Quote($objAclG->cfg_task).', '.$objAclG->cfg_value.' )'
							;
							$this->_db->setQuery($query);
							$this->_db->query();
						}
						endif;
					}
				}
			}
			//}
		}
		
		return true;
	}
	
	protected function getLastId () {
		$query = 'SELECT MAX(f.id)'
			. ' FROM #__ue_folders AS f'
		;
		$this->_db->setQuery($query);
		$res = $this->_db->loadResult();
		
		return $res;
	}
	
	public function delete ( $cid = array() ) {
		if ( count($cid) ) {
			foreach ( $cid as $id ) {
				//get folder and subfolder data
				$query = 'SELECT f.*,'
					. ' pf.frname AS pfrname'
					. ' FROM #__ue_folders AS f'
					. ' LEFT JOIN #__ue_folders AS pf ON pf.id = f.pid'
					. ' WHERE f.id = '
					. $id
				;
				$this->_db->setQuery($query);
				$obj = $this->_db->loadObject();
				$folders = UserExtranetHelper::getTreeData($id);
				array_unshift($folders, $obj);
				$folders = array_reverse($folders);
				
				foreach ( $folders as $fobj ) {
					//delete downloads
					$query = 'DELETE'
						. ' FROM #__ue_downloads'
						. ' WHERE fid = '
						. $fobj->id
					;
					$this->_db->setQuery( $query );
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					
					//delete folders acl
					$query = 'DELETE'
						. ' FROM #__ue_folder_acl'
						. ' WHERE cfg_folder = '
						. $fobj->id
					;
					$this->_db->setQuery( $query );
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					$query = 'DELETE'
						. ' FROM #__ue_folder_acl_g'
						. ' WHERE cfg_folder = '
						. $fobj->id
					;
					$this->_db->setQuery( $query );
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					
					//delete folders
					$query = 'DELETE'
						. ' FROM #__ue_folders'
						. ' WHERE id = '
						. $fobj->id
					;
					$this->_db->setQuery( $query );
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					//delete folder or file
					//source path {
					//root folder
					$path = JPATH_COMPONENT.DS.'root';
					//parent folder ( only for files )
					if ($fobj->pid && !$fobj->ffolder):
						$path .= DS.$fobj->pfrname;
					endif;
					//folder or file real name
					$path .= DS.$fobj->frname;
					//if file add the extension
					if ( !$fobj->ffolder ):
						$path .= '.'.$fobj->ftype;
					endif;
					//}
					if ( $fobj->ffolder ) {
						JFolder::delete($path);
					}
					else {
						JFile::delete($path);
					}
				}
			}
		}
		
		return true;
	}
	
	public function sync ( $cid = array() ) {
		$user = JFactory::getUser()->get('id');
		$date = JFactory::getDate()->toSQL();
		if ( count($cid) ) {
			foreach ( $cid as $id ) {
				$fobj = UserExtranetHelper::getRow('#__ue_folders', array('ffolder','frname'), $id);
				if ( $fobj->ffolder ) {
					$path = JPATH_COMPONENT.DS.'root'.DS.$fobj->frname;
					$files = JFolder::files($path);
					$query = 'SELECT CONCAT(f.frname, ".", f.ftype) AS filename'
						. ' FROM #__ue_folders AS f'
						. ' WHERE f.pid = '
						. $id
						. ' AND f.ffolder = 0'
					;
					$this->_db->setQuery($query);
					$currentFiles = $this->_db->loadColumn();
					$fileNames = array();
					foreach ( $files as $file ) {
						//if new file store it into database
						if ( $file != 'index.html' && !in_array($file, $currentFiles) ) {
							//$file = JPath::clean($file);
							$filepath = $path.DS.$file;
							//fsize
							$fsize = @filesize($filepath);
							//ordering
							$query = 'SELECT MAX(f.ordering) AS ordering'
								. ' FROM #__ue_folders AS f'
								. ' WHERE f.pid = '
								. $id
							;
							$this->_db->setQuery($query);
							$ordering = $this->_db->loadResult();
							$ordering++;
							//ftype
							$ftype = JFile::getExt($file);
							//fname
							$strip = JFile::stripExt($file);
							$fname = JFile::makeSafe($strip);
							//frname
							$frname = $fname.'__';
							$frname .= UserExtranetHelper::setCode();
							$query = 'INSERT'
								. ' INTO #__ue_folders'
								. ' (pid, ffolder, fname, frname, ftype, fsize, ordering, created_date, created_by)'
								. ' VALUES'
								. ' ('.$id.', 0, '.$this->_db->Quote($fname).', '.$this->_db->Quote($frname).', '.$this->_db->Quote($ftype).', '.$fsize.', '.$ordering.', '.$this->_db->Quote($date).', '.$user.')'
							;
							$this->_db->setQuery( $query );
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
							//rename file
							$newfilepath = $path.DS.$frname.'.'.$ftype;
							if(!JFile::copy($filepath, $newfilepath)) {
								return false;
							}
							if (!JFile::delete($filepath)) {
								return false;
							}
							//used by alert
							$fileNames[] = $fname.'.'.$ftype;
						}
					}
					//send alert
					if (!empty($fileNames)):
					$fileNames = implode(', ', $fileNames);
					UserExtranetHelper::sendAlert($id, 0, 0, 0, $fileNames, 0);
					endif;
				}
			}
		}
		
		return true;
	}
	
	public function store($data, $fid) {
		//get table
		$row = $this->getTable();
		
		//file id ( if any )
		$id = (int)$data['id'];
		
		//prepare data
		//fname
		//$data['fname'] = JFolder::makeSafe($data['fname']);
		//case new folder
		if (!$id) {
			//ordering
			$data['ordering'] = $this->getFolderOrdering($data['pid']);
			
			//frname
			$data['frname'] = JFolder::makeSafe($data['fname']).'__'.UserExtranetHelper::setCode();
			
			//create folder
			$path = JPATH_COMPONENT.DS.'root'.DS.$data['frname'];
			JFolder::create($path);
			//add index.html to folder
			$buffer = '<html><body bgcolor="#FFFFFF"></body></html>';
			$fpath = $path.DS.'index.html';
			JFile::write($fpath, $buffer);
		}
		
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
		
		return $row->id;
	}
	
	protected function getFolderOrdering ( $pid ) {
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