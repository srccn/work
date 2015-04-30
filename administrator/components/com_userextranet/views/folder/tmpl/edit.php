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
?>
<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'folder.cancel' || task == 'helpnotes.enable_note' || task == 'helpnotes.disable_note' || document.formvalidator.isValid(document.id('folder-form'))) {
			Joomla.submitform(task, document.getElementById('folder-form'));
		}
	}
</script>

<?php if ( UserExtranetHelper::showHelpNote(16) ): ?>
<div class="ue-helpnote">
	<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
	<br />
	<?php echo JText::_(UserExtranetHelper::getHelpNote(16)); ?>
	<br />
</div>
<?php endif; ?>

<?php if ($this->item->id): ?>
	<div class="ue-ftp-location">
		<?php echo '<strong>'.JText::_('COM_USEREXTRANET_FTP_LOCATION').':</strong>'; ?>
		<br/>
		<input type="text" value="<?php echo $this->folderpath; ?>" onfocus="this.select();" readonly />
	</div>
<?php endif; ?>

<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="folder-form" class="form-validate form-horizontal">
	
	<div class="span10 form-horizontal">
	<fieldset>
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>

			<?php $details = empty($this->item->id) ? JText::_('COM_USEREXTRANET_NEW_FOLDER') : JText::sprintf('COM_USEREXTRANET_EDIT_FOLDER_ID', $this->item->id); ?>
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
	<input type="hidden" name="noteid" value="16" />
	<?php echo $this->form->getInput('ffolder'); ?>
	<?php echo $this->form->getInput('fsize'); ?>
	<?php echo $this->form->getInput('ftype'); ?>
	<input type="hidden" name="jform[pid]" id="jform_pid" value="<?php echo $this->pid; ?>" />
	<input type="hidden" name="fid" value="<?php echo $this->pid; ?>" />
	<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
	<?php echo $this->form->getInput('id'); ?>
	<?php echo JHtml::_('form.token'); ?>
</form>