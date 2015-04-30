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

JHtml::_('formbehavior.chosen', 'select');
?>
<script type="text/javascript">
	Joomla.submitbutton = function(task)
	{
		if (task == 'ugmember.cancel' || task == 'helpnotes.enable_note' || task == 'helpnotes.disable_note' || document.formvalidator.isValid(document.id('ugmember-form'))) {
			Joomla.submitform(task, document.getElementById('ugmember-form'));
		}
	}
</script>

<?php if ( UserExtranetHelper::showHelpNote(8) ): ?>
<div class="ue-helpnote">
	<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
	<br />
	<?php echo JText::_(UserExtranetHelper::getHelpNote(8)); ?>
	<br />
</div>
<?php endif; ?>

<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="ugmember-form" class="form-validate form-horizontal">
	
	<?php echo JLayoutHelper::render('joomla.edit.item_title', $this); ?>
	
	<div class="span10 form-horizontal">

	<fieldset>
		<?php echo JHtml::_('bootstrap.startTabSet', 'myTab', array('active' => 'details')); ?>

			<?php $details = JText::_('COM_USEREXTRANET_ADD_USER_TO_GROUP'); ?>
			<?php echo JHtml::_('bootstrap.addTab', 'myTab', 'details', $details); ?>
				<div class="control-group">
					<div class="control-label">
						<?php echo $this->form->getLabel('user_id'); ?>
					</div>
					<div class="controls">
						<?php echo $this->form->getInput('user_id'); ?>
					</div>
				</div>
				<div class="control-group">
					<?php echo $this->form->getInput('group_id'); ?>
				</div>
			<?php echo JHtml::_('bootstrap.endTab'); ?>
			
		<?php echo JHtml::_('bootstrap.endTabSet'); ?>
	</fieldset>
	</div>
	
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="noteid" value="8" />
	<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
	<?php echo JHtml::_('form.token'); ?>
</form>