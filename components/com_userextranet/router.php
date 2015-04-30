<?php
/*
 * @package Joomla 2.5
 * @copyright Copyright (C) 2005 Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 *
 * @component UserExtranet 1.25
 * @copyright Copyright (C) 2014 Popa S. Alexandru www.beesto.com
 * @license : GNU General Public License version 2 or later; see LICENSE.txt
 */

// no direct access
defined('_JEXEC') or die;

	function UserExtranetBuildRoute( &$query ) {
		
		$segments = array();
		
		if(isset($query['view'])) {
			$segments[] = $query['view'];
			unset( $query['view'] );
		}
		
		if(isset($query['fid'])) {
			$segments[] = 'fid';
			$segments[] = $query['fid'];
			unset( $query['fid'] );
		};
		
		if(isset($query['id'])) {
			$segments[] = 'id';
			$segments[] = $query['id'];
			unset( $query['id'] );
		};
		
		if(isset($query['pid'])) {
			$segments[] = 'pid';
			$segments[] = $query['pid'];
			unset( $query['pid'] );
		};
		
		return $segments;
	}
	
	function UserExtranetParseRoute( $segments ) {
		
		$vars = array();
		
		// view is always the first element of the array
		$count = count($segments);
		
		if ($count) {
			
			// home
			if ($segments[0] == 'home') {
				$vars['view'] = 'home';
			}
			
			// folders
			if ($segments[0] == 'folders') {
				$vars['view'] = 'folders';
				if (isset($segments[1])) {
					if ($segments[1] == 'fid') {
						$vars['fid'] = $segments[2];
					}
				}
			}
			
			//file
			if ($segments[0] == 'file') {
				$vars['view'] = 'file';
				if (isset($segments[1])) {
					if ($segments[1] == 'id') {
						$vars['id'] = $segments[2];
					}
					if ($segments[1] == 'pid') {
						$vars['pid'] = $segments[2];
					}
				}
				if (isset($segments[3])) {
					if ($segments[3] == 'pid') {
						$vars['pid'] = $segments[4];
					}
				}
			}
			
			// fsearch
			if ($segments[0] == 'fsearch') {
				$vars['view'] = 'fsearch';
			}
			
			// messages
			if ($segments[0] == 'messages') {
				$vars['view'] = 'messages';
			}
			
			// message
			if ($segments[0] == 'message') {
				$vars['view'] = 'message';
				if (isset($segments[1])) {
					if ($segments[1] == 'id') {
						$vars['id'] = $segments[2];
					}
				}
			}
			
			// sentalerts
			if ($segments[0] == 'sentalerts') {
				$vars['view'] = 'sentalerts';
			}
			
			// sentalert
			if ($segments[0] == 'sentalert') {
				$vars['view'] = 'sentalert';
				if (isset($segments[1])) {
					if ($segments[1] == 'id') {
						$vars['id'] = $segments[2];
					}
				}
			}
			
		}
		
		return $vars;
	}

?>