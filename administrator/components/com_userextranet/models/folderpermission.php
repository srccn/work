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

class UserExtranetModelFolderpermission extends JModelAdmin
{
	public function getForm($data = array(), $loadData = true) {}
	
	public function apply_permissions ($allfid, $cid, $fviewid, $fdownid, $feditid, $faddid, $fdelid, $recurseid, $uid, $gid) {
		
		//folder permissions for user
		if ( $uid ) {
			//for each folder
			foreach ( $allfid as $fid ) {
				//first we delete folder permissions for user
				$query = 'DELETE'
					. ' FROM #__ue_folder_acl'
					. ' WHERE cfg_folder = '
					. $fid
					. ' AND user_id = '
					. $uid
				;
				$this->_db->setQuery($query);
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				//if action checked we store it to database
				//check folder access
				if ( isset($cid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl'
						. ' (user_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$uid.', '.$fid.', '.$this->_db->Quote('access').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				//check view
				if ( isset($fviewid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl'
						. ' (user_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$uid.', '.$fid.', '.$this->_db->Quote('view').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				//check download
				if ( isset($fdownid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl'
						. ' (user_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$uid.', '.$fid.', '.$this->_db->Quote('download').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				//check edit
				if ( isset($feditid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl'
						. ' (user_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$uid.', '.$fid.', '.$this->_db->Quote('edit').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				//check add
				if ( isset($faddid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl'
						. ' (user_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$uid.', '.$fid.', '.$this->_db->Quote('add').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				//check delete
				if ( isset($fdelid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl'
						. ' (user_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$uid.', '.$fid.', '.$this->_db->Quote('delete').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				//if recurse into subfolders
				if ( isset($recurseid[$fid]) ) {
					$subfolders = $this->getSubfolders($fid);
					//we take each subfolder and apply permissions
					foreach ( $subfolders as $sfid ) {
						//first we delete folder permissions for user
						$query = 'DELETE'
							. ' FROM #__ue_folder_acl'
							. ' WHERE cfg_folder = '
							. $sfid
							. ' AND user_id = '
							. $uid
						;
						$this->_db->setQuery($query);
						if (!$this->_db->query()) {
							$this->setError($this->_db->getErrorMsg());
							return false;
						}
						//if action checked we store it to database
						//check folder access
						if ( isset($cid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl'
								. ' (user_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$uid.', '.$sfid.', '.$this->_db->Quote('access').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
						}
						//check view
						if ( isset($fviewid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl'
								. ' (user_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$uid.', '.$sfid.', '.$this->_db->Quote('view').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
						}
						//check download
						if ( isset($fdownid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl'
								. ' (user_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$uid.', '.$sfid.', '.$this->_db->Quote('download').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
						}
						//check edit
						if ( isset($feditid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl'
								. ' (user_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$uid.', '.$sfid.', '.$this->_db->Quote('edit').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
						}
						//check add
						if ( isset($faddid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl'
								. ' (user_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$uid.', '.$sfid.', '.$this->_db->Quote('add').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
						}
						//check delete
						if ( isset($fdelid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl'
								. ' (user_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$uid.', '.$sfid.', '.$this->_db->Quote('delete').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
						}
					}
				}
			}
		}
		//folder permissions for group
		else {
			//get group users
			$gusers = $this->getGroupUsers($gid);
			//for each folder
			foreach ( $allfid as $fid ) {
				//first we delete folder permissions for group and all users in the group
				$query = 'DELETE'
					. ' FROM #__ue_folder_acl_g'
					. ' WHERE cfg_folder = '
					. $fid
					. ' AND group_id = '
					. $gid
				;
				$this->_db->setQuery($query);
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				if (!empty($gusers)):
				foreach ( $gusers as $guser ) {
					$query = 'DELETE'
						. ' FROM #__ue_folder_acl'
						. ' WHERE cfg_folder = '
						. $fid
						. ' AND user_id = '
						. $guser
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				endif;
				//if action checked we store it to database
				//check folder access
				if ( isset($cid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl_g'
						. ' (group_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$gid.', '.$fid.', '.$this->_db->Quote('access').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					if (!empty($gusers)):
					foreach ( $gusers as $guser ) {
						$query = 'INSERT'
							. ' INTO #__ue_folder_acl'
							. ' (user_id, cfg_folder, cfg_task, cfg_value)'
							. ' VALUES'
							. ' ('.$guser.', '.$fid.', '.$this->_db->Quote('access').', 1)'
						;
						$this->_db->setQuery($query);
						if (!$this->_db->query()) {
							$this->setError($this->_db->getErrorMsg());
							return false;
						}
					}
					endif;
				}
				//check view
				if ( isset($fviewid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl_g'
						. ' (group_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$gid.', '.$fid.', '.$this->_db->Quote('view').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					if (!empty($gusers)):
					foreach ( $gusers as $guser ) {
						$query = 'INSERT'
							. ' INTO #__ue_folder_acl'
							. ' (user_id, cfg_folder, cfg_task, cfg_value)'
							. ' VALUES'
							. ' ('.$guser.', '.$fid.', '.$this->_db->Quote('view').', 1)'
						;
						$this->_db->setQuery($query);
						if (!$this->_db->query()) {
							$this->setError($this->_db->getErrorMsg());
							return false;
						}
					}
					endif;
				}
				//check download
				if ( isset($fdownid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl_g'
						. ' (group_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$gid.', '.$fid.', '.$this->_db->Quote('download').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					if (!empty($gusers)):
					foreach ( $gusers as $guser ) {
						$query = 'INSERT'
							. ' INTO #__ue_folder_acl'
							. ' (user_id, cfg_folder, cfg_task, cfg_value)'
							. ' VALUES'
							. ' ('.$guser.', '.$fid.', '.$this->_db->Quote('download').', 1)'
						;
						$this->_db->setQuery($query);
						if (!$this->_db->query()) {
							$this->setError($this->_db->getErrorMsg());
							return false;
						}
					}
					endif;
				}
				//check edit
				if ( isset($feditid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl_g'
						. ' (group_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$gid.', '.$fid.', '.$this->_db->Quote('edit').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					if (!empty($gusers)):
					foreach ( $gusers as $guser ) {
						$query = 'INSERT'
							. ' INTO #__ue_folder_acl'
							. ' (user_id, cfg_folder, cfg_task, cfg_value)'
							. ' VALUES'
							. ' ('.$guser.', '.$fid.', '.$this->_db->Quote('edit').', 1)'
						;
						$this->_db->setQuery($query);
						if (!$this->_db->query()) {
							$this->setError($this->_db->getErrorMsg());
							return false;
						}
					}
					endif;
				}
				//check add
				if ( isset($faddid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl_g'
						. ' (group_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$gid.', '.$fid.', '.$this->_db->Quote('add').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					if (!empty($gusers)):
					foreach ( $gusers as $guser ) {
						$query = 'INSERT'
							. ' INTO #__ue_folder_acl'
							. ' (user_id, cfg_folder, cfg_task, cfg_value)'
							. ' VALUES'
							. ' ('.$guser.', '.$fid.', '.$this->_db->Quote('add').', 1)'
						;
						$this->_db->setQuery($query);
						if (!$this->_db->query()) {
							$this->setError($this->_db->getErrorMsg());
							return false;
						}
					}
					endif;
				}
				//check delete
				if ( isset($fdelid[$fid]) ) {
					$query = 'INSERT'
						. ' INTO #__ue_folder_acl_g'
						. ' (group_id, cfg_folder, cfg_task, cfg_value)'
						. ' VALUES'
						. ' ('.$gid.', '.$fid.', '.$this->_db->Quote('delete').', 1)'
					;
					$this->_db->setQuery($query);
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					if (!empty($gusers)):
					foreach ( $gusers as $guser ) {
						$query = 'INSERT'
							. ' INTO #__ue_folder_acl'
							. ' (user_id, cfg_folder, cfg_task, cfg_value)'
							. ' VALUES'
							. ' ('.$guser.', '.$fid.', '.$this->_db->Quote('delete').', 1)'
						;
						$this->_db->setQuery($query);
						if (!$this->_db->query()) {
							$this->setError($this->_db->getErrorMsg());
							return false;
						}
					}
					endif;
				}
				//if recurse into subfolders
				if ( isset($recurseid[$fid]) ) {
					$subfolders = $this->getSubfolders($fid);
					//we take each subfolder and apply permissions
					foreach ( $subfolders as $sfid ) {
						//first we delete folder permissions for group and users
						$query = 'DELETE'
							. ' FROM #__ue_folder_acl_g'
							. ' WHERE cfg_folder = '
							. $sfid
							. ' AND group_id = '
							. $gid
						;
						$this->_db->setQuery($query);
						if (!$this->_db->query()) {
							$this->setError($this->_db->getErrorMsg());
							return false;
						}
						if (!empty($gusers)):
						foreach ( $gusers as $guser ) {
							$query = 'DELETE'
								. ' FROM #__ue_folder_acl'
								. ' WHERE cfg_folder = '
								. $sfid
								. ' AND user_id = '
								. $guser
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
						}
						endif;
						//if action checked we store it to database
						//check folder access
						if ( isset($cid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl_g'
								. ' (group_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$gid.', '.$sfid.', '.$this->_db->Quote('access').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
							if (!empty($gusers)):
							foreach ( $gusers as $guser ) {
								$query = 'INSERT'
									. ' INTO #__ue_folder_acl'
									. ' (user_id, cfg_folder, cfg_task, cfg_value)'
									. ' VALUES'
									. ' ('.$guser.', '.$sfid.', '.$this->_db->Quote('access').', 1)'
								;
								$this->_db->setQuery($query);
								if (!$this->_db->query()) {
									$this->setError($this->_db->getErrorMsg());
									return false;
								}
							}
							endif;
						}
						//check view
						if ( isset($fviewid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl_g'
								. ' (group_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$gid.', '.$sfid.', '.$this->_db->Quote('view').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
							if (!empty($gusers)):
							foreach ( $gusers as $guser ) {
								$query = 'INSERT'
									. ' INTO #__ue_folder_acl'
									. ' (user_id, cfg_folder, cfg_task, cfg_value)'
									. ' VALUES'
									. ' ('.$guser.', '.$sfid.', '.$this->_db->Quote('view').', 1)'
								;
								$this->_db->setQuery($query);
								if (!$this->_db->query()) {
									$this->setError($this->_db->getErrorMsg());
									return false;
								}
							}
							endif;
						}
						//check download
						if ( isset($fdownid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl_g'
								. ' (group_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$gid.', '.$sfid.', '.$this->_db->Quote('download').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
							if (!empty($gusers)):
							foreach ( $gusers as $guser ) {
								$query = 'INSERT'
									. ' INTO #__ue_folder_acl'
									. ' (user_id, cfg_folder, cfg_task, cfg_value)'
									. ' VALUES'
									. ' ('.$guser.', '.$sfid.', '.$this->_db->Quote('download').', 1)'
								;
								$this->_db->setQuery($query);
								if (!$this->_db->query()) {
									$this->setError($this->_db->getErrorMsg());
									return false;
								}
							}
							endif;
						}
						//check edit
						if ( isset($feditid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl_g'
								. ' (group_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$gid.', '.$sfid.', '.$this->_db->Quote('edit').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
							if (!empty($gusers)):
							foreach ( $gusers as $guser ) {
								$query = 'INSERT'
									. ' INTO #__ue_folder_acl'
									. ' (user_id, cfg_folder, cfg_task, cfg_value)'
									. ' VALUES'
									. ' ('.$guser.', '.$sfid.', '.$this->_db->Quote('edit').', 1)'
								;
								$this->_db->setQuery($query);
								if (!$this->_db->query()) {
									$this->setError($this->_db->getErrorMsg());
									return false;
								}
							}
							endif;
						}
						//check add
						if ( isset($faddid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl_g'
								. ' (group_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$gid.', '.$sfid.', '.$this->_db->Quote('add').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
							if (!empty($gusers)):
							foreach ( $gusers as $guser ) {
								$query = 'INSERT'
									. ' INTO #__ue_folder_acl'
									. ' (user_id, cfg_folder, cfg_task, cfg_value)'
									. ' VALUES'
									. ' ('.$guser.', '.$sfid.', '.$this->_db->Quote('add').', 1)'
								;
								$this->_db->setQuery($query);
								if (!$this->_db->query()) {
									$this->setError($this->_db->getErrorMsg());
									return false;
								}
							}
							endif;
						}
						//check delete
						if ( isset($fdelid[$fid]) ) {
							$query = 'INSERT'
								. ' INTO #__ue_folder_acl_g'
								. ' (group_id, cfg_folder, cfg_task, cfg_value)'
								. ' VALUES'
								. ' ('.$gid.', '.$sfid.', '.$this->_db->Quote('delete').', 1)'
							;
							$this->_db->setQuery($query);
							if (!$this->_db->query()) {
								$this->setError($this->_db->getErrorMsg());
								return false;
							}
							if (!empty($gusers)):
							foreach ( $gusers as $guser ) {
								$query = 'INSERT'
									. ' INTO #__ue_folder_acl'
									. ' (user_id, cfg_folder, cfg_task, cfg_value)'
									. ' VALUES'
									. ' ('.$guser.', '.$sfid.', '.$this->_db->Quote('delete').', 1)'
								;
								$this->_db->setQuery($query);
								if (!$this->_db->query()) {
									$this->setError($this->_db->getErrorMsg());
									return false;
								}
							}
							endif;
						}
					}
				}
			}
		}
		
		return true;
	}
	
	protected function getSubfolders ( $fid ) {
		
		$subfolders = array();
		$folders = array($fid);
		
		while ( !empty($folders) ) {
			$f = array();
			foreach ( $folders as $folder ) {
				$query = 'SELECT f.id'
					. ' FROM #__ue_folders AS f'
					. ' WHERE f.pid = '
					. $folder
					. ' AND f.ffolder = 1'
				;
				$this->_db->setQuery($query);
				$res = $this->_db->loadObjectList();
				if ( !empty($res) ) {
					foreach ( $res as $resval ) {
						$f[] = $resval->id;
						$subfolders[] = $resval->id;
					}
				}
			}
			$folders = $f;
		}
		
		return $subfolders;
	}
	
	protected function getGroupUsers ( $gid ) {
		
		$users = array();
		
		$query = 'SELECT g.user_id'
			. ' FROM #__ue_usergroups_rel AS g'
			. ' WHERE g.group_id = '
			. $gid
		;
		$this->_db->setQuery($query);
		$res = $this->_db->loadObjectList();
		if ( !empty($res) ) {
			foreach ( $res as $resval ) {
				$users[] = $resval->user_id;
			}
		}
		
		return $users;
	}
	
}

?>