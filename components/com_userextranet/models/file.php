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

jimport('joomla.application.component.modelitem');

class UserExtranetModelFile extends JModelItem
{
	public function __construct () {
		//user
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		//parent folder
		$this->fid = JRequest::getVar('pid', 0);
		
		//keyword
		$session = JFactory::getSession();
		$keyword = $session->get('ue-keyword', '');
		$keyword = base64_decode($keyword);
		$keyword = str_replace('+', ' ', $keyword);
		$this->keyword = $keyword;
		
		//check if user can access file
		$ueFACL = UserExtranetHelper::ueFACL();
		$canAccessParent = $ueFACL->can($this->fid.'.access', $userId);
		$canViewInParent = $ueFACL->can($this->fid.'.view', $userId);
		
		//if not redirect the user
		$app = JFactory::getApplication();
		if ( $this->fid && (!$canAccessParent || !$canViewInParent ) ) {
			$msg = JText::_('COM_USEREXTRANET_PAGE_NOT_FOUND');
			$app->redirect('index.php?option=com_userextranet', $msg, 'error');
			return false;
		}
		
		parent::__construct();
	}
	
	public function getTable($type = 'Folder', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}
	
	public function getItem () {
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		$id = JRequest::getInt('id');
		
		$query = 'SELECT f.id, f.pid, f.fname, f.ftype, f.ffolder, f.created_date, f.fsize, f.fdesc'
			. ' FROM #__ue_folders AS f'
			. ' WHERE f.id = '
			. $id
		;
		$this->_db->setQuery($query);
		$item = $this->_db->loadObject();
		
		return $item;
	}
	
	public function getKeyword () {
		return $this->keyword;
	}
	
	public function store($data) {
		//prepare data
		$data['fdesc'] = UserExtranetHelper::filterText($data['fdesc']);
		
		//update #__ue_folders {
		$query = 'UPDATE'
			. ' #__ue_folders'
			. ' SET'
			. ' fdesc = '
			. $this->_db->Quote($data['fdesc'])
			. ' WHERE id = '
			. (int)$data['id']
		;
		$this->_db->setQuery( $query );
		if (!$this->_db->query()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		//}
		
		return true;
	}
	
	public function store_new($file, $fid, $data) {
		//get table
		$row = $this->getTable();
		
		$file['name'] = JFile::makeSafe($file['name']);
		
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
		$data['ordering'] = $this->getFileOrdering($data['pid']);
		
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
			$destPath = JPATH_ADMINISTRATOR.DS.'components'.DS.'com_userextranet'.DS.'root';
			if ( $fid ):
				$destPath .= DS.$pfrname;
			endif;
			$destPath .= DS.$data['frname'].'.'.$data['ftype'];
			$destPath = JPath::clean($destPath);
			JFile::upload($file['tmp_name'], $destPath);
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
	
	public function getFid () {
		return $this->fid;
	}
}

?>