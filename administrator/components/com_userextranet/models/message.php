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

jimport('joomla.application.component.modeladmin');

class UserExtranetModelMessage extends JModelAdmin
{
	
	protected function canDelete($record)
	{
		$user = JFactory::getUser();

		if ($record->id) {
			return $user->authorise('core.delete', 'com_userextranet.message.'.(int) $record->id);
		} else {
			return parent::canDelete($record);
		}
	}

	protected function canEditState($record)
	{
		$user = JFactory::getUser();
		
		//if ($record->id) {
		//	return $user->authorise('core.edit.state', 'com_beestohelpdesk.canned.'.(int) $record->id);
		//} else {
			return parent::canEditState($record);
		//}
	}


	public function getTable($type = 'Message', $prefix = 'UserExtranetTable', $config = array())
	{
		return JTable::getInstance($type, $prefix, $config);
	}

	public function getForm($data = array(), $loadData = true)
	{
		// Get the form.
		$form = $this->loadForm('com_userextranet.message', 'message', array('control' => 'jform', 'load_data' => $loadData));
		if (empty($form)) {
			return false;
		}

		// Modify the form based on access controls.
		if ($this->canEditState((object) $data) != true) {
			// Disable fields for display.
			$form->setFieldAttribute('ordering', 'disabled', 'true');

			// Disable fields while saving.
			// The controller has already verified this is a record you can edit.
			$form->setFieldAttribute('ordering', 'filter', 'unset');
		}

		return $form;
	}

	protected function loadFormData()
	{
		// Check the session for previously entered form data.
		$data = JFactory::getApplication()->getUserState('com_userextranet.edit.message.data', array());

		if (empty($data)) {
			$data = $this->getItem();
		}

		return $data;
	}

	protected function getReorderConditions($table = null)
	{
		
		$condition = array();
		//$condition[] = 'id = '.(int) $table->id;
		return $condition;
	}
	
	public function publish ($cid = array(), $publish = 1) {
		$user =& JFactory::getUser();
		$userId = $user->get('id');

		if (count( $cid )) {
			//mark as read
			if ( $publish ) {
				foreach ( $cid as $mid ) {
					//check if message already marked as read
					$check = 'SELECT mr.id'
						. ' FROM #__ue_messages_read AS mr'
						. ' WHERE mr.message_id = '
						. $mid
						. ' AND mr.user_id = '
						. $userId
					;
					$this->_db->setQuery($check);
					$res = $this->_db->loadResult();
					
					//if not marked as read we can proceed
					if ( !$res ): 
					$query = 'INSERT INTO #__ue_messages_read'
						. ' (message_id, user_id)'
						. ' VALUES'
						. ' ('.$mid.', '.$userId.')'
					;
					$this->_db->setQuery( $query );
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
					endif;
				}
			}
			//mark as unread
			else {
				foreach ( $cid as $mid ) {
					$query = 'DELETE FROM #__ue_messages_read'
						. ' WHERE message_id = '
						. $mid
						. ' AND user_id = '
						. $userId
					;
					$this->_db->setQuery( $query );
					if (!$this->_db->query()) {
						$this->setError($this->_db->getErrorMsg());
						return false;
					}
				}
			}
			
		}

		return true;
	}
	
	public function delete ($cid = array()) {

		if (count( $cid )) {
			JArrayHelper::toInteger($cid);
			
			foreach ( $cid as $key=>$value ) {
				//delete from #__ue_messages
				$query = 'DELETE FROM #__ue_messages'
					. ' WHERE id = '
					. (int) $value
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				//delete from #__ue_messages_read
				$query = 'DELETE FROM #__ue_messages_read'
					. ' WHERE message_id = '
					. (int) $value
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
				//delete from #__ue_messages_to
				$query = 'DELETE FROM #__ue_messages_to'
					. ' WHERE message_id = '
					. (int) $value
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
	
	public function send ($data = array()) {
		//get user
		$user = JFactory::getUser();
		
		//get table
		$row = $this->getTable();
		
		$allusers = $this->getAllUsers();
		
		//prepare data
		//visibility
		$data['visibility'] = isset($data['new_opt_private']) ? 0 : 1;
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
		$mtype = (int)$data['mtype'];
		if ( $mtype == 1 ) {
			$query = 'INSERT INTO #__ue_messages_to'
				. ' (message_id, to_id)'
				. ' VALUES'
				. ' ('.$row->id.', '.$data['new_recipient'].')'
			;
			$this->_db->setQuery( $query );
			if (!$this->_db->query()) {
				$this->setError($this->_db->getErrorMsg());
				return false;
			}
		}
		else if ( $mtype == 2 ) {
			if (!empty($allusers)):
			foreach ( $allusers as $val ) {
				if ( isset($data['uid_'.$val->id]) ) {
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
			endif;
		}
		//}
		
		//insert into #__ue_messages_opt {
		$options = array();
		$options['private'] = isset($data['new_opt_private']) ? 1 : 0;
		$options['notify'] = isset($data['new_opt_notify']) ? 1 : 0;
		$options['attach'] = isset($data['new_opt_attach']) ? 1 : 0;
		$options['html'] = isset($data['new_opt_html']) ? 1 : 0;
		//check if user options are stored in #__ue_messages_opt
		$query = 'SELECT mo.id'
			. ' FROM #__ue_messages_opt AS mo'
			. ' WHERE mo.user_id = '
			. (int)$data['from_id']
		;
		$this->_db->setQuery( $query );
		$res = $this->_db->loadResult();
		foreach ( $options as $key => $value ) {
			//if result: update
			if ( $res ) {
				$query = 'UPDATE #__ue_messages_opt'
					. ' SET opt_value = '
					. $value
					. ' WHERE opt_name = '
					. $this->_db->Quote($key)
					. ' AND user_id = '
					. (int)$data['from_id']
				;
				$this->_db->setQuery( $query );
				if (!$this->_db->query()) {
					$this->setError($this->_db->getErrorMsg());
					return false;
				}
			}
			//if no result: insert
			else {
				$query = 'INSERT INTO #__ue_messages_opt'
					. ' (opt_name, opt_value, user_id)'
					. ' VALUES'
					. ' ('.$this->_db->Quote($key).', '.$value.', '.$data['from_id'].')'
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
		if ( isset($data['new_opt_notify']) ) {
			//format
			$format = isset($data['new_opt_html']) ? true : false;
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
			if (!empty($allusers)):
			foreach ( $allusers as $val ) {
				//check if they were selected as recipients
				if ( ($mtype == 2 && isset($data['uid_'.$val->id])) || ($mtype == 1 && $data['new_recipient'] == $val->id)  ) {
					//if yes and if they have an email address
					if ( $val->email ) {
						//we send the email {
						//message
						$isAdmin = JFactory::getUser($val->id)->authorise('core.admin');
						$messageLink = $isAdmin ? $linkBack : $linkFront;
						if ( $format === true ) {
							$messageLink = '<a href="'.$messageLink.'">'.$messageLink.'</a>';
						}
						if (isset($data['new_opt_attach'])) {
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
			endif;
		}
		//}
		
		return $row->id;
	}
	
	protected function getAllUsers () {
		$userId = JFactory::getUser()->get('id');
		
		$query = 'SELECT u.*'
			. ' FROM #__users AS u'
			. ' WHERE u.id != '
			. (int)$userId
		;
		$this->_db->setQuery($query);
		$allusers = $this->_db->loadObjectList();
		
		return $allusers;
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
	
	public function setReplyVisibility ( $id, $private ) {
		$userId = JFactory::getUser()->get('id');
		
		$query = 'SELECT mo.id'
			. ' FROM #__ue_messages_opt AS mo'
			. ' WHERE mo.user_id = '
			. $userId
		;
		$this->_db->setQuery($query);
		$res = $this->_db->loadResult();
		
		if ( $res ) {
			$query = 'UPDATE #__ue_messages_opt'
				. ' SET opt_value = '
				. $private
				. ' WHERE opt_name = '
				. $this->_db->Quote('private')
				. ' AND user_id = '
				. $userId
			;
			$this->_db->setQuery($query);
			$this->_db->query();
		}
		else {
			$options = array();
			$options['private'] = $private;
			$options['notify'] = 0;
			$options['attach'] = 0;
			$options['html'] = 0;
			foreach ( $options as $key => $value ) {
				$query = 'INSERT INTO #__ue_messages_opt'
					. ' (opt_name, opt_value, user_id)'
					. ' VALUES'
					. ' ('.$this->_db->Quote($key).', '.$value.', '.$userId.')'
				;
				$this->_db->setQuery($query);
				$this->_db->query();
			}
		}
	}
	
	public function setMessageAsRead ($id) {
		//get the user
		$userId = JFactory::getUser()->get('id');
		//check if user read the message
		$query = 'SELECT mr.id'
			. ' FROM #__ue_messages_read AS mr'
			. ' WHERE mr.message_id = '
			. $id
			. ' AND mr.user_id = '
			. $userId
		;
		$this->_db->setQuery($query);
		$read = $this->_db->loadResult();
		//if not read set as read
		if ( !$read ) {
			$query = 'INSERT INTO #__ue_messages_read'
				. ' (message_id, user_id)'
				. ' VALUES'
				. ' ('.$id.', '.$userId.')'
			;
			$this->_db->setQuery($query);
			$this->_db->query();
		}
	}
}

?>