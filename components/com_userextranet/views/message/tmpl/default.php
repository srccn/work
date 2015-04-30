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

//user id
$user = JFactory::getUser();
$userId = $user->get('id');

//icons
$imgRevert = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-revert.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgCancel = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-delete.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'message.cancel' || document.formvalidator.isValid(document.id('adminForm'))) {
			Joomla.submitform(task, document.getElementById('adminForm'));
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
	
	<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="adminForm">
		<div class="ue-toolbar">
			<table>
				<tr>
					<?php if ( $this->item->from_id != $userId ): ?>
					<td>
						<?php echo $imgRevert; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('message.reply')"><?php echo JText::_('COM_USEREXTRANET_REPLY'); ?></a>
						&nbsp;|
					</td>
					<?php endif; ?>
					<td>
						<?php echo $imgCancel; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('message.cancel')"><?php echo JText::_('COM_USEREXTRANET_CANCEL'); ?></a>
					</td>
				</tr>
			</table>
		</div>
		
		<fieldset class="ue-message-default-fieldset">
			<table>
				<!-- date -->
				<tr>
					<td class="ue-label">
						<?php echo JText::_('COM_USEREXTRANET_DATE'); ?>
					</td>
					<td>
						<?php
						$date = (int)$this->item->created_date ? JHtml::_('date',$this->item->created_date, JText::_('DATE_FORMAT_LC2')) : '---';
						echo $date;
						?>
					</td>
				</tr>
				<!-- subject -->
				<tr>
					<td class="ue-label">
						<?php echo JText::_('COM_USEREXTRANET_SUBJECT'); ?>
					</td>
					<td>
						<?php echo $this->item->subject; ?>
					</td>
				</tr>
				<!-- message -->
				<tr>
					<td colspan="2" class="ue-label">
						<?php echo JText::_('COM_USEREXTRANET_MESSAGE'); ?>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div style="padding: 10px; background-color: #F6F4F0; border: 1px solid #D4D4D4; -moz-border-radius: 5px; border-radius: 5px;">
							<?php echo $this->item->body; ?>
						</div>
					</td>
				</tr>
			</table>
		</fieldset>
		
		<div>
			<input type="hidden" name="task" value="" />
			<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
			<input type="hidden" name="jform[id]" value="<?php echo (int)$this->item->id; ?>" />
			<?php echo JHtml::_('form.token'); ?>
		</div>
	</form>
</div>