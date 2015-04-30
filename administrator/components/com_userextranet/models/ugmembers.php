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

class UserExtranetModelUgmembers extends JModelList
{
	
	public function __construct($config = array()) {
		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				'id', 'u.id',
				'name', 'u.name',
				'title', 'ug.title'
			);
		}
		
		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null) {
		// Initialise variables.
		$app = JFactory::getApplication('administrator');

		// Load the filter state.
		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);
		
		$group = $this->getUserStateFromRequest($this->context.'.filter.group', 'filter_group');
		$this->setState('filter.group', $group);
		
		//$language = $app->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		//$this->setState('filter.language', $language);

		// List state information.
		parent::populateState('u.id', 'desc');
	}

	protected function getStoreId($id = '') {
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		$id	.= ':'.$this->getState('filter.group');
		//$id	.= ':'.$this->getState('filter.language');

		return parent::getStoreId($id);
	}

	protected function getListQuery() {
		// Create a new query object.
		$db		= $this->getDbo();
		$query	= $db->getQuery(true);

		// Select the required fields from the table.
		$query->select(
			$this->getState(
				'list.select',
				'u.* '
			)
		);
		$query->from('#__users AS u');
		
		// Join over the user group.
		$query->join('LEFT', '#__ue_usergroups_rel AS ugr ON ugr.user_id=u.id');
		
		// Join over the groups.
		$query->select('ug.id AS gid, ug.title AS gtitle');
		$query->join('LEFT', '#__ue_usergroups AS ug ON ug.id=ugr.group_id');
		
		//FILTERS{
		
		// Filter by search in user name.
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			$search = $db->Quote('%'.$db->escape($search, true).'%', false);
			$query->where('u.name LIKE '.$search);
		}
		
		// Filter by group
		$group = $this->getState('filter.group');
		if (is_numeric($group)) {
			if ( $group ) {
				$query->where('ug.id = '.(int) $group);
			}
			else {
				$query->where('ug.id IS NULL');
			}
		}
		
		//}
		
		// Add the list ordering clause.
		$orderCol = $this->state->get('list.ordering', 'u.id');
		$orderDirn = $this->state->get('list.direction', 'DESC');
		$query->order($db->escape($orderCol . ' ' . $orderDirn));
		
		return $query;
	}
}