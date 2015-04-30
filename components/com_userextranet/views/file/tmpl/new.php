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
$imgSave = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-save.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgCancel = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-delete.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'file.cancel_new' || document.formvalidator.isValid(document.id('fileForm'))) {
			Joomla.submitform(task, document.getElementById('fileForm'));
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
	
	<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="fileForm" id="fileForm" enctype="multipart/form-data">
		<div class="ue-toolbar">
			<table>
				<tr>
					<td>
						<?php echo $imgSave; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('file.save_new')"><?php echo JText::_('COM_USEREXTRANET_SAVE'); ?></a>
						&nbsp;|
					</td>
					<td>
						<?php echo $imgCancel; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('file.cancel_new')"><?php echo JText::_('COM_USEREXTRANET_CANCEL'); ?></a>
					</td>
				</tr>
			</table>
		</div>
		
		<fieldset class="ue-file-default-fieldset">
			<table>
				<!-- name -->
				<?php
				if (isset($this->data['fname'])) {
					$fname = $this->data['fname'];
				}
				else {
					$fname = '';
				}
				?>
				<tr>
					<td>
						<label id="jform_fname-lbl" for="jform_fname" class="hasTooltip required" data-original-title="<?php echo JText::_('COM_USEREXTRANET_FIELD_FILE_FNAME_DESC'); ?>" title=""><?php echo JText::_('COM_USEREXTRANET_NAME'); ?><span class="star">&nbsp;*</span></label>
					</td>
					<td>
						<input required="required" aria-required="true" class="required" type="text" name="jform[fname]" id="jform_fname" value="<?php echo $fname; ?>" />
					</td>
				</tr>
				
				<!-- description -->
				<?php if ( $this->ueFACL->can($this->fid.'.edit', $userId) ): ?>
				<tr>
					<td colspan="2">
						<label id="jform_fdesc-lbl" for="jform_fdesc" class="hasTooltip" data-original-title="<?php echo JText::_('COM_USEREXTRANET_FIELD_FILE_FDESC_DESC'); ?>" title=""><?php echo JText::_('COM_USEREXTRANET_DESCRIPTION'); ?>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<?php
						if (isset($this->data['fdesc'])) {
							$fdesc = $this->data['fdesc'];
						}
						else {
							$fdesc = '';
						}
						?>
						<textarea name="jform[fdesc]" id="jform_fdesc"><?php echo $fdesc; ?></textarea>
					</td>
				</tr>
				<?php endif; ?>
				
				<!-- upload -->
				<tr>
					<td colspan="2">
						<label for="upload-file" class="hasTooltip" data-original-title="<?php echo sprintf(JText::_('COM_USEREXTRANET_MAXSIZE_S'), $this->maxsize, $this->extensions); ?>" title=""><?php echo JText::_('COM_USEREXTRANET_UPLOAD_FILE'); ?></label>
						<input type="file" id="upload-file" name="Filedata" />
					</td>
				</tr>
			</table>
		</fieldset>
		
		<div>
			<input type="hidden" name="task" value="" />
			<input type="hidden" name="fid" value="<?php echo $this->fid; ?>" />
			<input type="hidden" name="jform[id]" value="0" />
			<input type="hidden" name="jform[pid]" value="<?php echo $this->fid; ?>" />
			<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
			<?php echo JHtml::_('form.token'); ?>
		</div>
	</form>
</div>