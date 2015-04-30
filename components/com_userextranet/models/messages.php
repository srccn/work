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
				'mread', 'mr.mread',
				'subject', 'm.subject',
				'created_date', 'm.created_date'
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
		
		$read = $this->getUserStateFromRequest($this->context.'.filter.read', 'filter_read', '', 'string');
		$this->setState('filter.read', $read);
		
		$folder = $this->getUserStateFromRequest($this->context.'.filter.folder', 'filter_folder', 0, 'string');
		$this->setState('filter.folder', $folder);
		
		// List state information.
		parent::populateState('created_date', 'desc');
	}

	protected function getStoreId($id = '') {
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		$id	.= ':'.$this->getState('filter.read');
		$id	.= ':'.$this->getState('filter.folder');
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
				'm.* '
			)
		);
		$query->from('#__ue_messages AS m');
		
		// Join over the recipient.
		$query->select('mt.id AS mtid');
		$query->join('INNER', '#__ue_messages_to AS mt ON mt.message_id = m.id');
		
		// Join over the message read
		$tableRead = 'SELECT message_id, GROUP_CONCAT(user_id SEPARATOR ",") AS mread FROM #__ue_messages_read WHERE user_id = '.$this->uid.' GROUP BY message_id';
		$query->select('mr.mread AS mread');
		$query->join('LEFT', '( '.$tableRead.' ) AS mr ON mr.message_id = m.id');
		
		//FILTERS{
		
		//only messages sent to logged user
		$query->where('(mt.to_id = '.$this->uid.' OR m.from_id = '.$this->uid.')');
		
		//exclude deleted messages
		$query->where('mt.msg_delete = 0');
		
		// Filter by search in subject or message.
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			$search = $db->Quote('%'.$db->escape($search, true).'%', false);
			$query->where('(m.subject LIKE '.$search.' OR m.body LIKE '.$search.')');
		}
		
		// filter by state, read | unread
		$read = $this->getState('filter.read');
		if ( is_numeric($read) ) {
			if ( $read ) {
				$query->where('(( '.$this->uid.' IN (mr.mread) ) OR ( m.from_id = '.$this->uid.' ))');
			}
			else {
				$query->where('((( '.$this->uid.' NOT IN (mr.mread) ) OR ( mr.mread IS NULL )) AND ( m.from_id != '.$this->uid.' ))');
			}
		}
		
		// filter by folder, 0 = Inbox | 1 = Sent
		$folder = $this->getState('filter.folder');
		if ( is_numeric($folder) ) {
			if ( $folder ) {
				$query->where('m.from_id = '.$this->uid);
			}
			else {
				$query->where('m.from_id != '.$this->uid);
			}
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