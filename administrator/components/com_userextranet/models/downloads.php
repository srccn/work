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

class UserExtranetModelDownloads extends JModelList
{
	
	public function __construct($config = array()) {
		if (empty($config['filter_fields'])) {
			$config['filter_fields'] = array(
				'fid', 'd.fid',
				'fname', 'f.fname',
				'uname', 'u.name',
				'location', 'd.location',
				'created_by', 'd.created_by',
				'created_date', 'd.created_date'
			);
		}
		
		$this->fid = JRequest::getVar('fid', 0, 'get', 'int');
		$this->pid = JRequest::getVar('pid', 0, 'get', 'int');

		parent::__construct($config);
	}

	protected function populateState($ordering = null, $direction = null) {
		// Initialise variables.
		$app = JFactory::getApplication('administrator');

		// Load the filter state.
		$search = $this->getUserStateFromRequest($this->context.'.filter.search', 'filter_search');
		$this->setState('filter.search', $search);
		
		$user = $this->getUserStateFromRequest($this->context.'.filter.user', 'jform_user', '', 'string');
		$this->setState('filter.user', $user);
		
		$report_begin = $this->getUserStateFromRequest($this->context.'.filter.report_begin', 'filter_report_begin', '', 'string');
		$this->setState('filter.report_begin', $report_begin);
		
		$report_end = $this->getUserStateFromRequest($this->context.'.filter.report_end', 'filter_report_end', '', 'string');
		$this->setState('filter.report_end', $report_end);
		
		$location = $this->getUserStateFromRequest($this->context.'.filter.location', 'filter_location', '', 'string');
		$this->setState('filter.location', $location);
		
		//$language = $app->getUserStateFromRequest($this->context.'.filter.language', 'filter_language', '');
		//$this->setState('filter.language', $language);

		// List state information.
		parent::populateState('d.created_date', 'desc');
	}

	protected function getStoreId($id = '') {
		// Compile the store id.
		$id	.= ':'.$this->getState('filter.search');
		$id	.= ':'.$this->getState('filter.report_begin');
		$id	.= ':'.$this->getState('filter.report_end');
		$id	.= ':'.$this->getState('filter.user');
		$id	.= ':'.$this->getState('filter.location');
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
				'd.* '
			)
		);
		$query->from('#__ue_downloads AS d');
		
		// Join over the file name
		$query->select('f.fname, f.ftype, f.pid');
		$query->join('LEFT', '#__ue_folders AS f ON f.id = d.fid');
		
		// Join over the user name
		$query->select('u.name AS uname');
		$query->join('LEFT', '#__users AS u ON u.id = d.created_by');
		
		//FILTERS{
		
		//filter by file
		if ($this->fid) {
			$query->where('d.fid = '.$this->fid);
		}
		
		//filter by folder
		if ($this->pid) {
			$query->where('f.pid = '.$this->pid);
		}
		
		// Filter by search in file name
		$search = $this->getState('filter.search');
		if (!empty($search)) {
			$search = $db->Quote('%'.$db->escape($search, true).'%', false);
			$query->where('(f.fname LIKE '.$search.' OR f.ftype LIKE '.$search.')');
		}
		
		//period filters
		$report_begin = $this->getState('filter.report_begin');
		$report_end = $this->getState('filter.report_end');
		if ( !empty($report_begin) || !empty($report_end) ) {
			$report_begin = $report_begin ? $report_begin : date('Y-m-d');
			$this->setState('filter.report_begin', $report_begin);
			$report_end = $report_end ? $report_end : date('Y-m-d');
			$this->setState('filter.report_end', $report_end);
			if ( strtotime($report_begin) > strtotime($report_end) ) { 
				$this->setState('filter.report_begin', $report_end);
				$this->setState('filter.report_end', $report_begin);
				$report_begin = $this->getState('filter.report_begin');
				$report_end = $this->getState('filter.report_end');
			}
			$query->where('(d.created_date >= '.$db->Quote($report_begin).' AND d.created_date <= '.$db->Quote($report_end).')');
		}
		
		// filter by user
		$user = $this->getState('filter.user');
		$user = (int)$user;
		if ( $user > 0 ) {
			$query->where('d.created_by = '.$user);
		}
		
		// filter by location, 0 = Site | 1 = Administrator
		$location = $this->getState('filter.location');
		if ( is_numeric($location) ) {
			$query->where('d.location = '.(int)$location);
		}
		
		//}
		
		// Add the list ordering clause.
		$orderCol = $this->state->get('list.ordering', 'd.created_date');
		$orderDirn = $this->state->get('list.direction', 'DESC');
		$query->order($db->escape($orderCol . ' ' . $orderDirn));
		
		return $query;
	}
}