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

class UserExtranetHelperMessages
{
	static function getStateOptions() {
		// Build the filter options.
		$options	= array();
		$options[]	= JHtml::_('select.option',	1,	JText::_('COM_USEREXTRANET_READ'));
		$options[]	= JHtml::_('select.option',	0,	JText::_('COM_USEREXTRANET_UNREAD'));
		return $options;
	}
	
	static function getLocationOptions() {
		// Build the filter options.
		$options	= array();
		$options[]	= JHtml::_('select.option',	0,	JText::_('COM_USEREXTRANET_SITE'));
		$options[]	= JHtml::_('select.option',	1,	JText::_('COM_USEREXTRANET_ADMINISTRATOR'));
		return $options;
	}
	
	static function getFolderOptions() {
		// Build the filter options.
		$options	= array();
		$options[]	= JHtml::_('select.option',	0,	JText::_('COM_USEREXTRANET_INBOX'));
		$options[]	= JHtml::_('select.option',	1,	JText::_('COM_USEREXTRANET_SENT'));
		return $options;
	}
	
	public static function getRecipients($mrecipients, $mread) {
		
		//icons
		$imgOn = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-on.png', '', array('width'=>'14', 'height'=>'14', 'border'=>'0', 'alt'=>JText::_('COM_USEREXTRANET_USER_HAS_READ'), 'title'=>JText::_('COM_USEREXTRANET_USER_HAS_READ'), 'style'=>'float: left; margin: 0 2px;'));
		$imgOff = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-off.png', '', array('width'=>'14', 'height'=>'14', 'border'=>'0', 'alt'=>JText::_('COM_USEREXTRANET_USER_DIDNT_READ'), 'title'=>JText::_('COM_USEREXTRANET_USER_DIDNT_READ'), 'style'=>'float: left; margin: 0 2px;'));
		
		$html = '';
		
		$recipients = explode(',', $mrecipients);
		$read = explode(',', $mread);
		
		foreach ( $recipients as $rUserId ) {
			$rUserId = (int)$rUserId;
			$rName = JFactory::getUser($rUserId)->get('name');
			$seen = in_array($rUserId, $read) ? 1 : 0;
			$img = $seen ? $imgOn : $imgOff;
			$userLink = JRoute::_('index.php?option=com_users&task=user.edit&id='.$rUserId);
			$title = JText::_('COM_USEREXTRANET_VIEW_PROFILE');
			
			$html .= '<div class="ue-message-recipients-div">';
			$html .= '<a href="'.$userLink.'" title="'.$title.'" target="_blank">'.$rName.'</a>';
			$html .= '<span class="ue-messages-recipients">'.$img.JText::_('COM_USEREXTRANET_SEEN').'</span>';
			$html .= '<div style="clear: both;"></div>';
			$html .= '</div>';
		}
		
		return $html;
	}
}