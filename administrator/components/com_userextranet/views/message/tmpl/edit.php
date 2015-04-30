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

$user = JFactory::getUser();
$userId = $user->get('id');
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'message.cancel' || task == 'helpnotes.enable_note' || task == 'helpnotes.disable_note' || document.formvalidator.isValid(document.id('message-form'))) {
			Joomla.submitform(task, document.getElementById('message-form'));
		}
	}
	
	function makeSelection (group, ids) {
		//action will be performed
		var group_selected = document.getElementById('jform_group_selected_'+group+'_id');
		if ( group_selected.value == 1 ) {
			var sel = false;
			var background = '#F6F4F0';
			var weight = 'normal';
		}
		else {
			var sel = true;
			var background = '#D4D4D4';
			var weight = 'bold';
		}
		group_selected.value = 1 - group_selected.value;
		var div_id = 'jform_div_group_'+group+'_id';
		if (group != 'm') {
			document.getElementById(div_id).style.fontWeight = weight;
		}
		//take action
		for (var i = 0; i < ids.length; i++) {
			var checkbox_id = 'jform_uid_'+ids[i]+'_id';
			var row_id = 'jform_row_uid_'+ids[i]+'_id';
			document.getElementById(checkbox_id).checked = sel;
			document.getElementById(row_id).style.background = background;
		}
	}
	
	function setTrBackground (id) {
		var checkbox_id = 'jform_uid_'+id+'_id';
		var row_id = 'jform_row_uid_'+id+'_id';
		if ( document.getElementById(checkbox_id).checked == true ) {
			var background = '#D4D4D4';
		}
		else {
			var background = '#F6F4F0';
		}
		document.getElementById(row_id).style.background = background;
	}
</script>

<?php if ( UserExtranetHelper::showHelpNote($this->hnId) ): ?>
<div class="ue-helpnote">
	<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
	<br />
	<?php echo JText::_(UserExtranetHelper::getHelpNote($this->hnId)); ?>
	<br />
</div>
<?php endif; ?>

<!-- NEW -->
<?php if ( !$this->item->id ): ?>
<!-- mass message -->
<?php if ( $this->mtype == 2 ): ?>
<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="message-form" class="form-validate form-horizontal">
	
	<div class="span10 form-horizontal">
	<fieldset>
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>

			<?php $details = ucwords(JText::_('COM_USEREXTRANET_MASS_MESSAGE')); ?>
			<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'details', $details); ?>
				<div class="control-group">
					<?php echo $this->form->getInput('new_recipients'); ?>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('subject'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('subject'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('body'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('body'); ?>
					</div>
				</div>
			<?php echo JHtml::_('bootstrap.endTab'); ?>

			<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'options', JText::_('COM_USEREXTRANET_OPTIONS', true)); ?>
				<?php foreach ($this->form->getFieldset('options') as $field) : ?>
					<div class="control-group">
						<?php echo $field->input; ?>
					</div>
				<?php endforeach; ?>
			<?php echo JHtml::_('bootstrap.endTab'); ?>
			
		<?php echo JHtml::_('bootstrap.endTabSet'); ?>
	</fieldset>
	</div>
	
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="noteid" value="3" />
	<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
	<input type="hidden" name="jform[from_id]" value="<?php echo $userId; ?>" />
	<input type="hidden" name="jform[mtype]" value="2" />
	<?php echo $this->form->getInput('id'); ?>
	<?php echo $this->form->getInput('location'); ?>
	<?php echo JHtml::_('form.token'); ?>
</form>
<!-- new message -->
<?php elseif ( $this->mtype == 1 ): ?>
<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="message-form" class="form-validate form-horizontal">
	
	<div class="span10 form-horizontal">
	<fieldset>
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>

			<?php $details = JText::_('COM_USEREXTRANET_NEW_MESSAGE'); ?>
			<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'details', $details); ?>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('new_recipient'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('new_recipient'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('subject'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('subject'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('body'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('body'); ?>
					</div>
				</div>
			<?php echo JHtml::_('bootstrap.endTab'); ?>

			<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'options', JText::_('COM_USEREXTRANET_OPTIONS', true)); ?>
				<?php foreach ($this->form->getFieldset('options') as $field) : ?>
					<div class="control-group">
						<?php echo $field->input; ?>
					</div>
				<?php endforeach; ?>
			<?php echo JHtml::_('bootstrap.endTab'); ?>
			
		<?php echo JHtml::_('bootstrap.endTabSet'); ?>
	</fieldset>
	</div>
	
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="noteid" value="2" />
	<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
	<input type="hidden" name="jform[from_id]" value="<?php echo $userId; ?>" />
	<input type="hidden" name="jform[mtype]" value="1" />
	<?php echo $this->form->getInput('id'); ?>
	<?php echo $this->form->getInput('location'); ?>
	<?php echo JHtml::_('form.token'); ?>
</form>
<?php endif; ?>
<!-- VIEW -->
<?php else: ?>
<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="message-form" class="form-validate form-horizontal">

	<div class="span10 form-horizontal">
	<fieldset>
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>
		<div class="control-group">
			<?php echo $this->form->getInput('view_message'); ?>
		</div>
		<?php echo JHtml::_('bootstrap.endTabSet'); ?>
	</fieldset>
	</div>
	
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="noteid" value="4" />
	<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
	<?php echo $this->form->getInput('id'); ?>
	<?php echo JHtml::_('form.token'); ?>
</form>
<?php endif; ?>