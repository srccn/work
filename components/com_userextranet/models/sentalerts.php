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

class UserExtranetModelSentalerts extends JModelList
{
	public function __construct($config = array()) {
		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				'id', 'a.id',
				'apriority', 'a.apriority',
				'aread', 'a.aread',
				'atitle', 'a.atitle',
				'created_date', 'a.created_date'
			);
		}
		
		$user = JFactory::getUser();
		$this->uid = (int)$user->get('id');
		
		//keyword
		$session = JFactory::getSession();
		$keyword = $session->get('ue-keyword', '');
		$keyword = base64_decode($keyword);
		$keyword = str_replace('+', ' ', $keyword);
		$this->keyword = $keyword;
		
		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null) {
		// Initialise variables.
		$app = JFactory::getApplication('site');

		// Load the filter state.
		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);
		
		$state = $this->getUserStateFromRequest($this->context.'.filter.state', 'filter_state');
		$this->setState('filter.state', $state);
		
		$priority = $this->getUserStateFromRequest($this->context.'.filter.priority', 'filter_priority');
		$this->setState('filter.priority', $priority);
		
		//$language = $app->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		//$this->setState('filter.language', $language);

		// List state information.
		parent::populateState('created_date', 'desc');
	}

	protected function getStoreId($id = '') {
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		$id	.= ':'.$this->getState('filter.state');
		$id	.= ':'.$this->getState('filter.priority');
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
				'a.* '
			)
		);
		$query->from('#__ue_alerts_sent AS a');
		
		//FILTERS{
		
		//filter by user
		$query->where('a.user_id = '.$this->uid);
		
		// Filter by search in user name.
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			$search = $db->Quote('%'.$db->escape($search, true).'%', false);
			$query->where('a.atitle LIKE '.$search);
		}
		
		// Filter by state
		$state = $this->getState('filter.state');
		if (is_numeric($state)) {
			$query->where('a.aread = '.(int) $state);
		}
		else if ($state === '') {
			$query->where('(a.aread IN (0, 1))');
		}
		
		// Filter by priority
		$priority = $this->getState('filter.priority');
		if (is_numeric($priority)) {
			$query->where('a.apriority = '.(int) $priority);
		}
		else if ($priority === '') {
			$query->where('(a.apriority IN (0, 1, 2))');
		}
		
		//}
		
		// Add the list ordering clause.
		$orderCol = $this->state->get('list.ordering', 'created_date');
		$orderDirn = $this->state->get('list.direction', 'DESC');
		$query->order($db->escape($orderCol . ' ' . $orderDirn));
		
		return $query;
	}
	
	public function getUid () {
		return $this->uid;
	}
	
	public function getKeyword () {
		return $this->keyword;
	}
}