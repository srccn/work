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

//user id
$user		= JFactory::getUser();
$userId		= (int)$user->get('id');

//icons
$imgDownload = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-download.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgEdit = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-edit.png', '', array('width'=>'14', 'height'=>'14', 'border'=>'0'));
$imgDelete = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-delete.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgRevert = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-revert.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
?>

<script type="text/javascript">
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
		<?php echo JText::_('COM_USEREXTRANET_DOCUMENTS'); ?>
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
					<td>
						<?php if ($this->ueFACL->can($this->fid.'.download', $userId)): ?>
						<?php echo $imgDownload; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('download.download_file')"><?php echo JText::_('COM_USEREXTRANET_DOWNLOAD'); ?></a>
						&nbsp;|
						<?php endif; ?>
					</td>
					<td>
						<?php if ($this->ueFACL->can($this->fid.'.edit', $userId)): ?>
						<?php echo $imgEdit; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('folders.edit_file')"><?php echo JText::_('COM_USEREXTRANET_EDIT'); ?></a>
						&nbsp;|
						<?php endif; ?>
					</td>
					<td>
						<?php if ($this->ueFACL->can($this->fid.'.delete', $userId)): ?>
						<?php echo $imgDelete; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('folders.delete_folder')"><?php echo JText::_('COM_USEREXTRANET_DELETE'); ?></a>
						&nbsp;|
						<?php endif; ?>
					</td>
					<td>
						<?php echo $imgRevert; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('folders.back_to_folder')"><?php echo JText::_('COM_USEREXTRANET_BACK_TO_FOLDER'); ?></a>
					</td>
				</tr>
			</table>
		</div>
		
		<fieldset class="ue-file-default-fieldset">
			<table>
				<!-- name -->
				<tr>
					<td class="ue-label">
						<?php echo JText::_('COM_USEREXTRANET_NAME'); ?>
					</td>
					<td>
						<?php
						echo $this->item->fname.'<span style="font-weight: bold;">.'.$this->item->ftype.'</span>';
						?>
					</td>
				</tr>
				<!-- date -->
				<tr>
					<td class="ue-label">
						<?php echo JText::_('COM_USEREXTRANET_ADDED'); ?>
					</td>
					<td>
						<?php
						$date = (int)$this->item->created_date ? JHtml::_('date',$this->item->created_date, JText::_('DATE_FORMAT_LC2')) : '---';
						echo $date;
						?>
					</td>
				</tr>
				<!-- size -->
				<tr>
					<td class="ue-label">
						<?php echo JText::_('COM_USEREXTRANET_SIZE'); ?>
					</td>
					<td>
						<?php
						$size = UserExtranetHelper::convertSize($this->item->fsize);
						echo $size;
						?>
					</td>
				</tr>
				<!-- details -->
				<tr>
					<td colspan="2" class="ue-label">
						<?php echo JText::_('COM_USEREXTRANET_DESCRIPTION'); ?>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div style="padding: 10px; background-color: #F6F4F0; border: 1px solid #D4D4D4; -moz-border-radius: 5px; border-radius: 5px;">
							<?php
							if ( !empty($this->item->fdesc) ) {
								echo $this->item->fdesc;
							}
							else {
								echo '<i>'.JText::_('COM_USEREXTRANET_NO_INFO').'</i>';
							}
							?>
						</div>
					</td>
				</tr>
			</table>
		</fieldset>
		
		<div>
			<input type="hidden" name="task" value="" />
			<input type="hidden" name="dl" value="<?php echo (int)$this->item->id; ?>" />
			<input type="hidden" name="delid" value="<?php echo (int)$this->item->id; ?>" />
			<input type="hidden" name="editid" value="<?php echo (int)$this->item->id; ?>" />
			<input type="hidden" name="fid" value="<?php echo $this->fid; ?>" />
			<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
			<input type="hidden" name="jform[id]" value="<?php echo (int)$this->item->id; ?>" />
			<?php echo JHtml::_('form.token'); ?>
		</div>
	</form>
</div>