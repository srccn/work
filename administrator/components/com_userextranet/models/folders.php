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

jimport('joomla.application.component.modellist');

class UserExtranetModelFolders extends JModelList
{
	
	public function __construct($config = array()) {
		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				'id', 'f.id',
				'created_date', 'f.created_date',
				'ordering', 'f.ordering'
			);
		}
		
		$this->fid = JRequest::getVar('fid', 0, 'get', 'int');
		
		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null) {
		// Initialise variables.
		$app = JFactory::getApplication('administrator');

		// Load the filter state.
		/* $search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search); */
		
		//$language = $app->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		//$this->setState('filter.language', $language);

		// List state information.
		parent::populateState();
	}

	protected function getStoreId($id = '') {
		// Compile the store id.
		/* $id	.= ':'.$this->getState('filter.search'); */
		//$id	.= ':'.$this->getState('filter.language');

		return parent::getStoreId($id);
	}

	protected function getListQuery() {
		// Create a new query object.
		$db		= $this->getDbo();
		$query	= $db->getQuery(true);
		
		$this->setState('list.limit', 0);

		// Select the required fields from the table.
		$query->select(
			$this->getState(
				'list.select',
				'f.* '
			)
		);
		$query->from('#__ue_folders AS f');
		
		// Join over the users for the checked out user.
		$query->select('uc.name AS editor');
		$query->join('LEFT', '#__users AS uc ON uc.id=f.checked_out');
		
		//FILTERS{
		
		$query->where('f.pid = '.(int)$this->fid);
		
		//}
		
		// Add the list ordering clause.
		$query->order($db->escape($this->getState('list.ordering', 'f.ffolder')).' '.$db->escape($this->getState('list.direction', 'DESC')));
		$query->order($db->escape($this->getState('list.ordering', 'f.fname')).' '.$db->escape($this->getState('list.direction', 'ASC')));
		
		return $query;
	}
	
	public function getFid() {
		return $this->fid;
	}
	
	public function getTitleName() {
		if ( $this->uid ) {
			$query = 'SELECT u.name'
				. ' FROM #__users AS u'
				. ' WHERE u.id = '
				. $this->uid
			;
		}
		else {
			$query = 'SELECT g.title'
				. ' FROM #__ue_usergroups AS g'
				. ' WHERE g.id = '
				. $this->gid
			;
		}
		$this->_db->setQuery($query);
		$res = $this->_db->loadResult();
		
		return $res;
	}
}