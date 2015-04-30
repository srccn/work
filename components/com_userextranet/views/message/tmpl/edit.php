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

// no direct access
defined('_JEXEC') or die;

JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');

//current user
$user = JFactory::getUser();
$userId = $user->get('id');

//icons
$imgSend = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-send.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgCancel = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-delete.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'message.cancel' || document.formvalidator.isValid(document.id('messageForm'))) {
			Joomla.submitform(task, document.getElementById('messageForm'));
		}
	}
	
	function fsearch (task) {
		frm = document.ueSearchForm;
		frm.task.value = task;
		frm.submit();
	}
</script>

<div id="userextranet">
	<!-- top menu -->
	<div class="ue-top-menu">
		<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view=home'); ?>"><?php echo $this->front_title; ?></a>
		<span class="ue-top-menu-arrow">/</span>
		<?php echo JText::_('COM_USEREXTRANET_MESSAGES'); ?>
		<span style="float:right;">
			<!-- search -->
			<?php if ( $this->front_search == 1 ) : ?>
			<form action="<?php echo JRoute::_('index.php?option=com_userextranet&view=fsearch'); ?>" name="ueSearchForm" id="ueSearchForm" method="post">
				<div class="ue-search-center">
					<?php $keyword = !empty($this->keyword) ? $this->keyword : JText::_('COM_USEREXTRANET_SEARCH_DOCS'); ?>
					<input class="ue-search-box" name="ue-search" type="text" maxlength="100" title="<?php echo JText::_('COM_USEREXTRANET_SEARCH_IN'); ?>" value="<?php echo $keyword; ?>" onfocus="if (this.value=='<?php echo JText::_('COM_USEREXTRANET_SEARCH_DOCS'); ?>') { this.value=''; }" />
					<button class="ue-button-green" style="float: none;" type="button" onclick="fsearch('fsearch.search');"><?php echo JText::_('COM_USEREXTRANET_SEARCH'); ?></button>
				</div>
				<input type="hidden" name="task" value="" />
				<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
				<?php echo JHtml::_('form.token'); ?>
			</form>
			<?php endif; ?>
		</span>
	</div>
	
	<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="messageForm" id="messageForm">
		<div class="ue-toolbar">
			<table>
				<tr>
					<td>
						<?php echo $imgSend; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('message.send')"><?php echo JText::_('COM_USEREXTRANET_SEND'); ?></a>
						&nbsp;|
					</td>
					<td>
						<?php echo $imgCancel; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('message.cancel')"><?php echo JText::_('COM_USEREXTRANET_CANCEL'); ?></a>
					</td>
				</tr>
			</table>
		</div>
		
		<fieldset class="ue-message-default-fieldset">
			<table>
				<!-- subject -->
				<tr>
					<td>
						<label id="jform_subject-lbl" for="jform_subject" class="hasTooltip required" data-original-title="<?php echo JText::_('COM_USEREXTRANET_FIELD_MESSAGE_SUBJECT_DESC'); ?>" title=""><?php echo JText::_('COM_USEREXTRANET_SUBJECT'); ?><span class="star">&nbsp;*</span></label>
					</td>
					<td>
						<input required="required" aria-required="true" class="required" type="text" name="jform[subject]" id="jform_subject" value="<?php if (isset($this->data['subject'])) echo $this->data['subject']; ?>" />
					</td>
				</tr>
				<!-- body -->
				<tr>
					<td colspan="2">
						<label id="jform_message-lbl" for="jform_message" class="hasTooltip required" data-original-title="<?php echo JText::_('COM_USEREXTRANET_FIELD_MESSAGE_MESSAGE_DESC'); ?>" title=""><?php echo JText::_('COM_USEREXTRANET_MESSAGE'); ?><span class="star">&nbsp;*</span></label>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea required="required" aria-required="true" class="required" name="jform[body]" id="jform_body"><?php if (isset($this->data['body'])) echo $this->data['body']; ?></textarea>
					</td>
				</tr>
			</table>
			<input type="hidden" name="jform[new_recipient]" id="jform_new_recipient" value="<?php if (isset($this->data['new_recipient'])) echo $this->data['reply_to']; ?>" />
			<input type="hidden" name="jform[visibility]" id="jform_visibility" value="<?php if (isset($this->data['visibility'])) { echo $this->data['visibility']; } else { ?>1<?php } ?>" />
			<input type="hidden" name="jform[attach]" id="jform_attach" value="1" />
			<input type="hidden" name="jform[from_id]" id="jform_from_id" value="<?php echo $userId; ?>" />
			<input type="hidden" name="jform[location]" id="jform_location" value="0" />
		</fieldset>
		
		<div>
			<input type="hidden" name="task" value="" />
			<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
			<?php echo JHtml::_('form.token'); ?>
		</div>
	</form>
</div>