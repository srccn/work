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

// No direct access
defined('_JEXEC') or die;

jimport('joomla.database.table');

class UserExtranetTableFile extends JTable
{
	
	function __construct(&$db) {
		parent::__construct('#__ue_folders', 'id', $db);
	}
	
	public function store($updateNulls = false)
	{
		// Initialise variables.
		$date = JFactory::getDate()->toSQL();
		$user = JFactory::getUser();
		
		if ($this->id) {
			// Existing item
			$this->modified_date = $date;
			$this->modified_by	 = $user->get('id');
		} else {
			// New record.
			if (!intval($this->created_date)) {
				$this->created_date = $date;
			}
			if (empty($this->created_by)) {
				$this->created_by = $user->get('id');
			}
		}
		
		return parent::store($updateNulls);
	}
	
}
