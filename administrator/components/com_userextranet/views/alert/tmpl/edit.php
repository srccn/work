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

JHtml::_('behavior.formvalidation');
JHtml::_('formbehavior.chosen', 'select');

$user = JFactory::getUser();
$userId = $user->get('id');
?>

<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'alert.cancel' || task == 'helpnotes.enable_note' || task == 'helpnotes.disable_note' || document.formvalidator.isValid(document.id('alert-form'))) {
			Joomla.submitform(task, document.getElementById('alert-form'));
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
	/* 
	//insert tag into editor
	function Insert(tag) {
		jInsertEditorText('{'+tag+'}', 'jform_atext');
	}
	 */
	 
	//insert tag into textarea
	function Insert(tag) {
		var text = document.getElementById('jform_atext').value;
		document.getElementById('jform_atext').value = text+'{'+tag+'}';
	}
</script>

<?php if ( UserExtranetHelper::showHelpNote(18) ): ?>
<div class="ue-helpnote">
	<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
	<br />
	<?php echo JText::_(UserExtranetHelper::getHelpNote(18)); ?>
	<br />
</div>
<?php endif; ?>

<div style="margin: 10px 0; font-size: 12px;">
	<?php
	$path = UserExtranetHelper::getPath($this->fid);
	$pathHtml = array();
	foreach ($path as $dir) {
		$bold = $dir->id == $this->fid ? 'style="font-weight: bold;"' : '';
		$pathHtml[] = $dir->name;
	}
	$pathLink = implode(' / ', $pathHtml);
	echo '<strong>'.JText::_('COM_USEREXTRANET_FOLDER').':</strong> '.$pathLink;
	?>
</div>

<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="alert-form" class="form-validate form-horizontal">

	<?php echo JLayoutHelper::render('joomla.edit.item_title', $this); ?>
	
	<div class="span10 form-horizontal">
	<fieldset>
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>

			<?php $details = JText::_('COM_USEREXTRANET_SETTINGS'); ?>
			<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'details', $details); ?>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('atitle'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('atitle'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('published'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('published'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('apriority'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('apriority'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('atask'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('atask'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('ataskloc'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('ataskloc'); ?>
					</div>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('asendby'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('asendby'); ?>
					</div>
				</div>
				<div class="control-group">
					<?php echo $this->form->getInput('recipients'); ?>
				</div>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('atext'); ?>
					</div>
					<div class="clearfix"></div>
					<div>
						<?php echo $this->form->getInput('atext'); ?>
					</div>
				</div>
				<div class="control-group">
					<?php echo $this->form->getInput('specialtag'); ?>
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
	<input type="hidden" name="noteid" value="18" />
	<input type="hidden" name="fid" value="<?php echo $this->fid; ?>" />
	<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
	<?php echo $this->form->getInput('id'); ?>
	<?php echo JHtml::_('form.token'); ?>
</form>