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

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');
require_once JPATH_COMPONENT.'/helpers/messages.php';

JHtml::_('behavior.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('formbehavior.chosen', 'select');

$user		= JFactory::getUser();
$userId		= $user->get('id');
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));

$folder = $this->state->get('filter.folder');

//icons
$imgEnabled = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-published.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgDisabled = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-unpublished.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgDelete = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-delete.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgEdit = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-edit.png', '', array('width'=>'14', 'height'=>'14', 'border'=>'0'));
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
					<?php if (!$folder): ?>
					<td>
						<?php echo JText::_('COM_USEREXTRANET_WITH_SELECTED'); ?>:
					</td>
					<td>
						<?php echo $imgEnabled; ?><a href="javascript:void(0);" onclick="if (document.adminForm.boxchecked.value==0){alert('<?php echo JText::_('COM_USEREXTRANET_MAKE_SELECTION'); ?>');}else{ Joomla.submitbutton('messages.mark_as_read')}"><?php echo JText::_('COM_USEREXTRANET_MARK_AS_READ'); ?></a>
						&nbsp;|
					</td>
					<td>
						<?php echo $imgDisabled; ?><a href="javascript:void(0);" onclick="if (document.adminForm.boxchecked.value==0){alert('<?php echo JText::_('COM_USEREXTRANET_MAKE_SELECTION'); ?>');}else{ Joomla.submitbutton('messages.mark_as_unread')}"><?php echo JText::_('COM_USEREXTRANET_MARK_AS_UNREAD'); ?></a>
						&nbsp;|
					</td>
					<td>
						<?php echo $imgDelete; ?><a href="javascript:void(0);" onclick="if (document.adminForm.boxchecked.value==0){alert('<?php echo JText::_('COM_USEREXTRANET_MAKE_SELECTION'); ?>');}else{ Joomla.submitbutton('messages.delete')}"><?php echo JText::_('COM_USEREXTRANET_DELETE'); ?></a>
						&nbsp;|
					</td>
					<?php endif; ?>
					<td>
						<?php echo $imgEdit; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('messages.write')"><?php echo JText::_('COM_USEREXTRANET_WRITE'); ?></a>
					</td>
				</tr>
			</table>
		</div>
		
		<div id="filter-bar" class="btn-toolbar">
			<div class="filter-search btn-group pull-left">
				<label for="filter_search" class="element-invisible">
					<?php echo JText::_('JSEARCH_FILTER_LABEL'); ?>
				</label>
				<input style="width: 150px;" type="text" name="filter_search" id="filter_search" placeholder="<?php echo JText::_('COM_USEREXTRANET_SEARCH_IN_MESSAGES'); ?>" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" class="hasTooltip" title="<?php echo JHtml::tooltipText('COM_USEREXTRANET_SEARCH_IN_MESSAGES'); ?>" />
			</div>
			<div class="btn-group pull-left">
					<button style="margin: 0 0 10px 0;" type="submit" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_SUBMIT'); ?>"><i class="icon-search"></i></button>
					<button style="margin: 0 0 10px 0;" type="button" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_CLEAR'); ?>" onclick="document.id('filter_search').value='';this.form.submit();"><i class="icon-remove"></i></button>
			</div>
			<div class="btn-group pull-right hidden-phone" style="float: right;">
				<select style="width: 150px;" name="filter_read" onchange="this.form.submit()">
					<option value=""><?php echo '- '.JText::_('COM_USEREXTRANET_SELECT_STATE').' -';?></option>
					<?php echo JHtml::_('select.options', UserExtranetHelperMessages::getStateOptions(), 'value', 'text', $this->state->get('filter.read'));?>
				</select>
			
				<select style="width: 150px;" name="filter_folder" onchange="this.form.submit()">
					<?php echo JHtml::_('select.options', UserExtranetHelperMessages::getFolderOptions(), 'value', 'text', $this->state->get('filter.folder'));?>
				</select>
				<!--
				<label for="limit" class="element-invisible"><?php echo JText::_('JFIELD_PLG_SEARCH_SEARCHLIMIT_DESC');?></label>
				-->
				<?php //echo $this->pagination->getLimitBox(); ?>
			</div>
		</div>
		
		<div class="clearfix"> </div>

		<div class="ue-messages">
			<table class="ue-message-list">
				<thead>
					<tr>
						<?php if (!$folder): ?>
						<th width="1%">
							<input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('COM_USEREXTRANET_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
						</th>
						<?php endif; ?>
						<th width="50%" class="title" align="left" style="text-align: left;">
							<a href="javascript: void(0);" ><?php echo JText::_('COM_USEREXTRANET_SUBJECT'); ?></a>
						</th>
						<th width="10%" align="center" style="text-align: center;">
							&nbsp;
						</th>
						<?php if (!$folder): ?>
						<th width="10%" align="center" style="text-align: center;">
							<?php echo JText::_('COM_USEREXTRANET_STATE'); ?>
						</th>
						<?php endif; ?>
						<th width="20%" align="center" style="text-align: center;">
							<a href="javascript: void(0);" ><?php echo JText::_('COM_USEREXTRANET_CREATED_DATE'); ?></a>
						</th>
					</tr>
				</thead>
				<!--
				<tfoot>
					<tr>
						<?php //$colspan = $folder ? 3 : 5; ?>
						<td colspan="<?php //echo $colspan; ?>">
							<?php //echo $this->pagination->getListFooter(); ?>
						</td>
					</tr>
				</tfoot>
				-->
				<tbody>
				<?php foreach ($this->items as $i => $item) :
					//status can edit
					$enabled_edit = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_MARK_AS_UNREAD').'\' onclick=\'return listItemTask("cb'.$i.'","messages.mark_as_unread")\'>'.$imgEnabled.'</a>';
					$disabled_edit = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_MARK_AS_READ').'\' onclick=\'return listItemTask("cb'.$i.'","messages.mark_as_read")\'>'.$imgDisabled.'</a>';
					$status_edit = $item->mread ? $enabled_edit : $disabled_edit;
					//date
					$date = (int)$item->created_date ? JHtml::_('date',$item->created_date, 'Y-m-d H:i:s') : '---';
					?>
					<tr class="row<?php echo $i % 2; ?>">
						<?php if (!$folder): ?>
						<td class="center">
							<input id="cb<?php echo $i; ?>" name="cid[]" value="<?php echo $item->id; ?>" onclick="Joomla.isChecked(this.checked);" title="<?php echo sprintf(JText::_('COM_USEREXTRANET_CHECKBOX_FOR_ROW_S'), $i+1); ?>" type="checkbox">
						</td>
						<?php endif; ?>
						<td class="atitle">
							<?php echo $this->escape($item->subject); ?>
						</td>
						<td class="aread">
							<a title="<?php echo JText::_('COM_USEREXTRANET_READ'); ?>" href="<?php echo JRoute::_('index.php?option=com_userextranet&view=message&layout=default&id='.$item->id); ?>"><?php echo JText::_('COM_USEREXTRANET_READ'); ?></a>
						</td>
						<?php if (!$folder): ?>
						<td style="text-align: center;">
							<?php echo $status_edit; ?>
						</td>
						<?php endif; ?>
						<td style="text-align: center;">
							<?php echo $date; ?>
						</td>
					</tr>
					<?php endforeach; ?>
				</tbody>
			</table>
		</div>
		<div>
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
		</div>
	</form>
</div>