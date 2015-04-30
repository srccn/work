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

class UserExtranetModelUsergroups extends JModelList
{
	
	public function __construct($config = array()) {
		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				'id', 'g.id',
				'title', 'g.title',
				'members', 'm.members',
				'ordering', 'g.ordering',
				'checked_out', 'g.checked_out',
				'checked_out_time', 'g.checked_out_time',
				'created_date', 'g.created_date'
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
		
		//$language = $app->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		//$this->setState('filter.language', $language);

		// List state information.
		parent::populateState('g.created_date', 'desc');
	}

	protected function getStoreId($id = '') {
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		//$id	.= ':'.$this->getState('filter.language');

		return parent::getStoreId($id);
	}

	protected function getListQuery() {
		// Create a new query object.
		$db		= $this->getDbo();
		$query	= $db->getQuery(true);
		$user	= JFactory::getUser();
		$currentUserId = (int)$user->get('id');

		// Select the required fields from the table.
		$query->select(
			$this->getState(
				'list.select',
				'g.* '
			)
		);
		$query->from('#__ue_usergroups AS g');
		
		// Join over the members number
		$tableMembers = 'SELECT group_id, COUNT(*) AS members FROM #__ue_usergroups_rel GROUP BY group_id';
		$query->select('m.members AS members');
		$query->join('LEFT', '( '.$tableMembers.' ) AS m ON g.id = m.group_id');
		
		// Join over the users for the checked out user.
		$query->select('uc.name AS editor');
		$query->join('LEFT', '#__users AS uc ON uc.id=g.checked_out');
		
		//FILTERS{
		
		// Filter by search in group title.
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			$search = $db->Quote('%'.$db->escape($search, true).'%', false);
			$query->where('g.title LIKE '.$search);
		}
		
		//}
		
		// Add the list ordering clause.
		$orderCol = $this->state->get('list.ordering', 'created_date');
		$orderDirn = $this->state->get('list.direction', 'DESC');
		$query->order($db->escape($orderCol . ' ' . $orderDirn));
		
		return $query;
	}
}