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

jimport('joomla.application.component.modelitem');

class UserExtranetModelMessage extends JModelItem
{
	public function __construct () {
		//keyword
		$session = JFactory::getSession();
		$keyword = $session->get('ue-keyword', '');
		$keyword = base64_decode($keyword);
		$keyword = str_replace('+', ' ', $keyword);
		$this->keyword = $keyword;
		
		parent::__construct();
	}
	
	public function getTable($type = 'Message', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}
	
	public function getItem () {
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		$id = JRequest::getInt('id');
		
		$query = 'SELECT m.*'
			. ' FROM #__ue_messages AS m'
			. ' INNER JOIN #__ue_messages_to AS mt ON mt.message_id = m.id'
			. ' WHERE m.id = '
			. $id
			. ' AND ( mt.to_id = '. $userId.' OR m.from_id = '.$userId.' )'
		;
		$this->_db->setQuery($query);
		$item = $this->_db->loadObject();
		
		return $item;
	}
	
	public function publish ($cid = array(), $publish = 1) {
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		if (count( $cid )) {
			JArrayHelper::toInteger($cid);
			$cids = implode( ',', $cid );
			
			foreach ( $cid as $id ) {
				//if marked as unread
				//delete user from #__ue_messages_read
				if ( !$publish ) {
					$query = 'DELETE'
						. ' FROM #__ue_messages_read'
						. ' WHERE message_id = '
						. (int) $id
						. ' AND user_id = '
						. $userId
					;
					$this->_db->setQuery( $query );
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
				//if marked as read
				else {
					//check first if message is in #__ue_messages_read
					$query = 'SELECT mr.id'
						. ' FROM #__ue_messages_read AS mr'
						. ' WHERE mr.message_id = '
						. (int) $id
						. ' AND mr.user_id = '
						. $userId
					;
					$this->_db->setQuery( $query );
					$isRead = $this->_db->loadResult();
					//if not in #__ue_messages_read then insert
					if ( !$isRead ) {
						$query = 'INSERT'
							. ' INTO #__ue_messages_read'
							. ' (message_id, user_id)'
							. ' VALUES'
							. ' ('.(int)$id.', '.$userId.')'
						;
						$this->_db->setQuery( $query );
						if (!$this->_db->query()) {
							$this->setError($this->_db->getErrorMsg());
							return false;
						}
					}
				}
			}
		}

		return true;
	}
	
	public function delete ($cid = array()) {
		$user = JFactory::getUser();
		$userId = (int)$user->get('id');
		
		if (count( $cid )) {
			JArrayHelper::toInteger($cid);
			
			foreach ( $cid as $id ) {
				//delete from #__ue_alerts_sent
				$query = 'UPDATE #__ue_messages_to'
					. ' SET msg_delete = 1'
					. ' WHERE message_id = '
					. (int) $id
					. ' AND to_id = '
					. $userId
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
			}
		}

		return true;
	}
	
	public function getKeyword () {
		return $this->keyword;
	}
	
	public function getReplyData ( $id ) {
		$query = 'SELECT m.from_id, m.subject, m.visibility'
			. ' FROM #__ue_messages AS m'
			. ' WHERE m.id = '
			. $id
		;
		$this->_db->setQuery($query);
		$message = $this->_db->loadObject();
		
		return $message;
	}
	
	public function send ($data = array()) {
		//get user
		$user = JFactory::getUser();
		
		//get table
		$row = $this->getTable();
		
		//get staff
		$staff = $this->getStaff((int)$data['reply_to']);
		
		//prepare data
		//visibility
		$data['visibility'] = (int)$data['visibility'];
		//subject
		$data['subject'] = htmlspecialchars_decode($data['subject'], ENT_QUOTES);
		
		//insert into #__ue_messages {
		// Bind the form fields
		if (!$row->bind($data)) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		// Make sure the record is valid
		if (!$row->check()) {
			$this->setError($this->_db->getErrorMsg());
			return false;
		}
		// Store to the database
		if (!$row->store()) {
			$this->setError( $this->_db->getErrorMsg() );
			return false;
		}
		//}
		
		//insert into #__ue_messages_to {
		if (!empty($staff)) {
			foreach ( $staff as $val ) {
				$query = 'INSERT INTO #__ue_messages_to'
					. ' (message_id, to_id)'
					. ' VALUES'
					. ' ('.$row->id.', '.(int)$val->id.')'
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
			}
		}
		//}
		
		//notify recipients {
		//format
		$format = true;
		//from
		$app = JFactory::getApplication();
		$namefrom = $app->getCfg( 'sitename' );
		//subject
		$subject = sprintf(JText::_('COM_USEREXTRANET_NEW_MESSAGE_SUBJECT'), $namefrom, $data['subject']);
		//no-reply email
		$ueParams = JComponentHelper::getParams('com_userextranet');
		$mailfrom = $ueParams->get('noreply_email');
		if ( !$mailfrom ) $mailfrom = $namefrom;
		//user check message links
		$linkBack = JURI::root().'administrator/index.php?option=com_userextranet&view=messages';
		$returnFrontUrl = base64_encode('index.php?option=com_userextranet&view=messages');
		$linkFront = JURI::root().'index.php?option=com_userextranet&return='.$returnFrontUrl;
		//attachment
		$message = UserExtranetHelper::filterText($data['body']);
		$attachment = '';
		$attachment .= strtoupper(JText::_('COM_USEREXTRANET_FROM')).': '.$user->get('name');
		$attachment .= "\n";
		$attachment .= strtoupper(JText::_('COM_USEREXTRANET_SUBJECT')).': '.$data['subject'];
		$attachment .= "\n";
		$attachment .= strtoupper(JText::_('COM_USEREXTRANET_MESSAGE')).':';
		$attachment .= "\n";
		$attachment .= $message;
		//regular expression to check if the recipient email is valid
		$regex = '/^[a-zA-Z0-9._-]+(\+[a-zA-Z0-9._-]+)*@([a-zA-Z0-9.-]+\.)+[a-zA-Z0-9.-]{2,4}$/';
		//for each user
		if (!empty($staff)) {
			foreach ( $staff as $val ) {
				//check if they were selected as recipients
				//if yes and if they have an email address
				if ( $val->email ) {
					//we send the email {
					//message
					$isAdmin = JFactory::getUser($val->id)->authorise('core.admin');
					$messageLink = $isAdmin ? $linkBack : $linkFront;
					if ( $format === true ) {
						$messageLink = '<a href="'.$messageLink.'">'.$messageLink.'</a>';
					}
					if ((int)$data['attach']) {
						$message = sprintf(JText::_('COM_USEREXTRANET_NEW_MESSAGE_BODY_ATTACH'), $namefrom, $messageLink, $attachment, $namefrom, $namefrom);
					}
					else {
						$message = sprintf(JText::_('COM_USEREXTRANET_NEW_MESSAGE_BODY'), $namefrom, $messageLink, $namefrom, $namefrom);
					}
					if ( $format === true ) {
						$message = str_replace("\n", '<br/>', $message);
					}
					//send email
					$email = $val->email;
					if ( preg_match($regex, $email) ):
					$mailer = JFactory::getMailer();
					$mailer->setSender(array($mailfrom, $mailfrom));
					$mailer->setSubject(stripslashes($subject));
					$mailer->setBody($message);
					$mailer->IsHTML($format);
					$mailer->addRecipient($email);
					$rs	= $mailer->Send();
					endif;
					//}
				}
			}
		}
		//}
		
		return $row->id;
	}
	
	protected function getStaff ($id) {
		$userId = JFactory::getUser()->get('id');
		
		$query = 'SELECT u.*'
			. ' FROM #__ue_staff AS s'
			. ' INNER JOIN #__users AS u ON u.id = s.user_id'
			. ' WHERE u.id != '
			. (int)$userId
		;
		if ( $id ):
		$query .= ' AND u.id = '.$id;	
		endif;
		
		$this->_db->setQuery($query);
		$staff = $this->_db->loadObjectList();
		
		return $staff;
	}
}

?>