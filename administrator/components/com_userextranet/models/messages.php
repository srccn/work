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

class UserExtranetModelMessages extends JModelList
{
	
	public function __construct($config = array()) {
		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				'id', 'm.id',
				'subject', 'm.title',
				'msendername', 'msendername',
				'mread', 'mread',
				'location', 'm.location',
				'created_date', 'm.created_date',
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
		
		$read = $this->getUserStateFromRequest($this->context.'.filter.read', 'filter_read', '', 'string');
		$this->setState('filter.read', $read);
		
		$location = $this->getUserStateFromRequest($this->context.'.filter.location', 'filter_location', '', 'string');
		$this->setState('filter.location', $location);
		
		$folder = $this->getUserStateFromRequest($this->context.'.filter.folder', 'filter_folder', 0, 'string');
		$this->setState('filter.folder', $folder);
		
		//$language = $app->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		//$this->setState('filter.language', $language);

		// List state information.
		parent::populateState('m.created_date', 'desc');
	}

	protected function getStoreId($id = '') {
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		$id	.= ':'.$this->getState('filter.read');
		$id	.= ':'.$this->getState('filter.location');
		$id	.= ':'.$this->getState('filter.folder');
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
				'm.* '
			)
		);
		$query->from('#__ue_messages AS m');
		
		// Join over the message read
		$tableRead = 'SELECT message_id, GROUP_CONCAT(user_id SEPARATOR ",") AS mread FROM #__ue_messages_read GROUP BY message_id';
		$query->select('mr.mread AS mread');
		$query->join('LEFT', '( '.$tableRead.' ) AS mr ON m.id = mr.message_id');
		
		// Join over the sender name
		$query->select('msn.name AS msendername');
		$query->join('LEFT', '`#__users` AS msn ON m.from_id = msn.id');
		
		// Join over the recipients
		$tableRecipients = 'SELECT message_id, GROUP_CONCAT(to_id SEPARATOR ",") AS recipients FROM #__ue_messages_to GROUP BY message_id';
		$query->select('mrp.recipients AS mrecipients');
		$query->join('LEFT', '( '.$tableRecipients.' ) AS mrp ON m.id = mrp.message_id');
		
		// Join over the users for the checked out user.
		$query->select('uc.name AS editor');
		$query->join('LEFT', '#__users AS uc ON uc.id = m.checked_out');
		
		//FILTERS{
		
		// filter by visibility, 0 = private | 1 = public, implicit condition
		// public OR private sent by me OR private sent to me
		$query->where('( m.visibility = 1 OR ( m.visibility = 0 AND m.from_id = '.$currentUserId.' ) OR ( ( m.visibility = 0 ) AND ( '.$currentUserId.' IN (mrp.recipients) )) )');
		
		// Filter by search in subject or message.
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			$search = $db->Quote('%'.$db->escape($search, true).'%', false);
			$query->where('m.subject LIKE '.$search);
		}
		
		// filter by state, read | unread
		$read = $this->getState('filter.read');
		if ( is_numeric($read) ) {
			if ( $read ) {
				$query->where('(( '.$currentUserId.' IN (mr.mread) ) OR ( m.from_id = '.$currentUserId.' ))');
			}
			else {
				$query->where('((( '.$currentUserId.' NOT IN (mr.mread) ) OR ( mr.mread IS NULL )) AND ( m.from_id != '.$currentUserId.' ))');
			}
		}
		
		// filter by location, 0 = Site | 1 = Administrator
		$location = $this->getState('filter.location');
		if ( is_numeric($location) ) {
			$query->where('m.location = '.(int)$location);
		}
		
		// filter by folder, 0 = Inbox | 1 = Sent
		$folder = $this->getState('filter.folder');
		if ( is_numeric($folder) ) {
			if ( $folder ) {
				$query->where('m.from_id = '.$currentUserId);
			}
			else {
				$query->where('m.from_id != '.$currentUserId);
			}
		}
		
		//}
		
		//group
		//$query->group('m.id');
		
		// Add the list ordering clause.
		$orderCol = $this->state->get('list.ordering', 'm.created_date');
		$orderDirn = $this->state->get('list.direction', 'DESC');
		$query->order($db->escape($orderCol . ' ' . $orderDirn));
		
		return $query;
	}
}