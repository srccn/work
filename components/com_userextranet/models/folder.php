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

jimport('joomla.application.component.model');
jimport( 'joomla.filesystem.file' );
jimport( 'joomla.filesystem.folder' );
jimport('joomla.filesystem.path');

class UserExtranetModelFolder extends JModelLegacy
{
	public function delete ( $cid = array() ) {
		if ( count($cid) ) {
			foreach ( $cid as $id ) {
				//get file data
				$query = 'SELECT f.*,'
					. ' pf.frname AS pfrname'
					. ' FROM #__ue_folders AS f'
					. ' LEFT JOIN #__ue_folders AS pf ON pf.id = f.pid'
					. ' WHERE f.id = '
					. $id
				;
				$this->_db->setQuery($query);
				$obj = $this->_db->loadObject();
				
				//delete downloads
				$query = 'DELETE'
					. ' FROM #__ue_downloads'
					. ' WHERE fid = '
					. $obj->id
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				
				//delete file
				$query = 'DELETE'
					. ' FROM #__ue_folders'
					. ' WHERE id = '
					. $obj->id
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				//delete file
				//source path {
				//root folder
				$path = JPATH_ADMINISTRATOR.DS.'components'.DS.'com_userextranet'.DS.'root';
				//parent folder
				if ($obj->pid && !$obj->ffolder):
					$path .= DS.$obj->pfrname;
				endif;
				//file real name
				$path .= DS.$obj->frname;
				//add the extension
				$path .= '.'.$obj->ftype;
				//}
				//we won't use it, case error deleting file, user can see file real path
				//JFile::delete($path);
				@unlink($path);
			}
		}
		
		return true;
	}
}

?>