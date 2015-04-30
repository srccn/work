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

// Include the HTML helpers.
JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');
JHtml::_('behavior.keepalive');
jimport('joomla.html.editor');

$user = JFactory::getUser();
$session = JFactory::getSession();

$upload_max_filesize = ini_get('upload_max_filesize');
$post_max_size = ini_get('post_max_size');
$memory_limit = ini_get('memory_limit');
?>
<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'file.cancel' || task == 'helpnotes.enable_note' || task == 'helpnotes.disable_note' || document.formvalidator.isValid(document.id('file-form'))) {
			Joomla.submitform(task, document.getElementById('file-form'));
		}
	}
</script>

<?php if ( UserExtranetHelper::showHelpNote(17) ): ?>
<div class="ue-helpnote">
	<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
	<br />
	<?php echo sprintf(JText::_(UserExtranetHelper::getHelpNote(17)), $upload_max_filesize, $post_max_size, $memory_limit); ?>
	<br />
</div>
<?php endif; ?>

<?php if ($this->item->id): ?>
	<div class="ue-ftp-location">
		<?php echo '<strong>'.JText::_('COM_USEREXTRANET_FTP_LOCATION').':</strong>'; ?>
		<br/>
		<input type="text" value="<?php echo $this->filepath; ?>" onfocus="this.select();" readonly />
	</div>
<?php endif; ?>

<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="file-form" class="form-validate form-horizontal" enctype="multipart/form-data">
	
	<div class="span10 form-horizontal">
	<fieldset>
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>

			<?php $details = empty($this->item->id) ? JText::_('COM_USEREXTRANET_NEW_FILE') : JText::sprintf('COM_USEREXTRANET_EDIT_FILE_ID', $this->item->id); ?>
			<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'details', $details); ?>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('fname'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('fname'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('frname'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('frname'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('fdesc'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('fdesc'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<label for="upload-file" class="hasTooltip" data-original-title="<?php echo sprintf(JText::_('COM_USEREXTRANET_MAXSIZE_S'), $this->maxsize, $this->extensions); ?>" title=""><?php echo JText::_('COM_USEREXTRANET_UPLOAD_FILE'); ?></label>
					</div>
					<div class="controls">
						<input type="file" id="upload-file" name="Filedata" />
					</div>
				</div>
			<?php echo JHtml::_('bootstrap.endTab'); ?>

			<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'publishing', JText::_('COM_USEREXTRANET_DETAILS', true)); ?>
				<?php foreach ($this->form->getFieldset('publish') as $field) : ?>
					<div class="control-group">
						<div class="control-label">
							<?php echo $field->label; ?>
						</div>
						<div class="controls">
							<?php echo $field->input; ?>
						</div>
					</div>
				<?php endforeach; ?>
			<?php echo JHtml::_('bootstrap.endTab'); ?>
			
		<?php echo JHtml::_('bootstrap.endTabSet'); ?>
	</fieldset>
	</div>
	
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="noteid" value="17" />
	<?php echo $this->form->getInput('ffolder'); ?>
	<input type="hidden" name="jform[pid]" id="jform_pid" value="<?php echo $this->pid; ?>" />
	<input type="hidden" name="fid" value="<?php echo $this->pid; ?>" />
	<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
	<?php echo $this->form->getInput('id'); ?>
	<?php echo JHtml::_('form.token'); ?>
</form>