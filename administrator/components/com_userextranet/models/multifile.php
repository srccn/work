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

class UserExtranetModelMultifile extends JModelAdmin
{
	public function getForm($data = array(), $loadData = true) {}
	
	public function store($files, $fid) {
		$date = JFactory::getDate()->toSQL();
		$user = JFactory::getUser()->get('id');
		
		foreach ( $files as $file ) {
			//ordering
			$ordering = $this->getFileOrdering($fid);
			
			//insert into db
			$query = 'INSERT'
				. ' INTO #__ue_folders'
				. ' (pid, ffolder, fname, frname, ftype, fsize, ordering, created_date, created_by)'
				. ' VALUES'
				. ' ('.$fid.', 0, '.$this->_db->Quote($file['fname']).', '.$this->_db->Quote($file['frname']).', '.$this->_db->Quote($file['type']).', '.$file['size'].', '.$ordering.', '.$this->_db->Quote($date).', '.$user.')'
			;
			$this->_db->setQuery($query);
			if (!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
			
			//upload file
			if (!JFile::upload($file['tmp_name'], $file['filepath'])) {
				return false;
			}
		}
		
		return true;
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