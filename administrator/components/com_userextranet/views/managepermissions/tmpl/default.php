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

JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('dropdown.init');
JHtml::_('formbehavior.chosen', 'select');

$user		= JFactory::getUser();
$userId		= $user->get('id');
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));

$canEditState	= $user->authorise('core.edit.state', 'com_userextranet');
$canEdit		= $user->authorise('core.edit', 'com_userextranet');

//icons
$imgEnabled = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-published.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgDisabled = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-unpublished.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));

$sortFields = $this->getSortFields();
?>

<script type="text/javascript">
	Joomla.orderTable = function()
	{
		table = document.getElementById("sortTable");
		direction = document.getElementById("directionTable");
		order = table.options[table.selectedIndex].value;
		if (order != '<?php echo $listOrder; ?>')
		{
			dirn = 'asc';
		}
		else
		{
			dirn = direction.options[direction.selectedIndex].value;
		}
		Joomla.tableOrdering(order, dirn, '');
	}
</script>

<style type="text/css">
	table.table-striped tbody tr.rowread td { background: #F89A9E; }
</style>

<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="adminForm">
	
<?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>
	
	<?php if ( UserExtranetHelper::showHelpNote(13) ): ?>
	<div class="ue-helpnote">
		<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
		<br />
		<?php echo JText::_(UserExtranetHelper::getHelpNote(13)); ?>
		<br />
	</div>
	<?php endif; ?>
	
	<div id="filter-bar" class="btn-toolbar">
		<div class="filter-search btn-group pull-left">
			<label for="filter_search" class="element-invisible">
				<?php echo JText::_('JSEARCH_FILTER_LABEL'); ?>
			</label>
			<input type="text" name="filter_search" id="filter_search" placeholder="<?php echo JText::_('JSEARCH_FILTER'); ?>" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" class="hasTooltip" title="<?php echo JHtml::tooltipText('COM_USEREXTRANET_SEARCH_IN_USER_NAME'); ?>" />
		</div>
		<div class="btn-group pull-left">
				<button type="submit" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_SUBMIT'); ?>"><i class="icon-search"></i></button>
				<button type="button" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_CLEAR'); ?>" onclick="document.id('filter_search').value='';this.form.submit();"><i class="icon-remove"></i></button>
		</div>
		<div class="btn-group pull-right hidden-phone">
			<label for="limit" class="element-invisible"><?php echo JText::_('JFIELD_PLG_SEARCH_SEARCHLIMIT_DESC');?></label>
			<?php echo $this->pagination->getLimitBox(); ?>
		</div>
		<div class="btn-group pull-right hidden-phone">
			<label for="directionTable" class="element-invisible"><?php echo JText::_('JFIELD_ORDERING_DESC');?></label>
			<select name="directionTable" id="directionTable" class="input-medium" onchange="Joomla.orderTable()">
				<option value=""><?php echo JText::_('JFIELD_ORDERING_DESC');?></option>
				<option value="asc" <?php if ($listDirn == 'asc') echo 'selected="selected"'; ?>><?php echo JText::_('JGLOBAL_ORDER_ASCENDING');?></option>
				<option value="desc" <?php if ($listDirn == 'desc') echo 'selected="selected"'; ?>><?php echo JText::_('JGLOBAL_ORDER_DESCENDING');?></option>
			</select>
		</div>
		<div class="btn-group pull-right">
			<label for="sortTable" class="element-invisible"><?php echo JText::_('JGLOBAL_SORT_BY');?></label>
			<select name="sortTable" id="sortTable" class="input-medium" onchange="Joomla.orderTable()">
				<option value=""><?php echo JText::_('JGLOBAL_SORT_BY');?></option>
				<?php echo JHtml::_('select.options', $sortFields, 'value', 'text', $listOrder);?>
			</select>
		</div>
	</div>
	<div class="clearfix"> </div>

	<table class="table table-striped" id="ueManagepermissions">
		<thead>
			<tr>
				<th width="1%">
					<input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
				</th>
				<th width="40%" class="title" align="left" style="text-align: left;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_USER_NAME', 'u.name', $listDirn, $listOrder); ?>
				</th>
				<th width="40%" class="title" align="left" style="text-align: left;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_GROUP_TITLE', 'ug.title', $listDirn, $listOrder); ?>
				</th>
				<th width="10%" class="nowrap center">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_EXTRANET_ACCESS', 'eid', $listDirn, $listOrder); ?>
				</th>
				<th width="1%" class="nowrap center">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_ID', 'u.id', $listDirn, $listOrder); ?>
				</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="5">
					<?php echo $this->pagination->getListFooter(); ?>
				</td>
			</tr>
		</tfoot>
		<tbody>
		<?php foreach ($this->items as $i => $item) :
			$parity = $i % 2;
			$rowClass = $item->eid ? 'row'.$parity : 'rowread';
			$gname = $item->gid ? $item->gtitle : '---';
			
			//status can edit
			$enabled_edit = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_DISABLE_ACCESS').'\' onclick=\'return listItemTask("cb'.$i.'","managepermissions.access_disable")\'>'.$imgEnabled.'</a>';
			$disabled_edit = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_ENABLE_ACCESS').'\'onclick=\'return listItemTask("cb'.$i.'","managepermissions.access_enable")\'>'.$imgDisabled.'</a>';
			$status_edit = $item->eid ? $enabled_edit : $disabled_edit;
			//status cannot edit
			$enabled = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_ACCESS_ENABLED').'\'>'.$imgEnabled.'</a>';
			$disabled = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_ACCESS_DISABLED').'\'>'.$imgDisabled.'</a>';
			$status = $item->eid ? $enabled : $disabled;
			?>
			<tr class="<?php echo $rowClass; ?>">
				<td class="center">
					<?php echo JHtml::_('grid.id', $i, $item->id); ?>
				</td>
				<td>
					<?php if ($canEdit && $this->ueACL->can('permissions.edit')) : ?>
						<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view=folderpermissions&uid='.(int) $item->id); ?>">
							<?php echo $this->escape($item->name); ?></a>
					<?php else : ?>
							<?php echo $this->escape($item->name); ?>
					<?php endif; ?>
					
				</td>
				<td>
					<?php if ($canEdit && $this->ueACL->can('permissions.edit') && $item->gid) : ?>
						<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view=folderpermissions&gid='.(int) $item->gid); ?>">
							<?php echo $this->escape($gname); ?></a>
					<?php else : ?>
							<?php echo $this->escape($gname); ?>
					<?php endif; ?>
					
				</td>
				<td align="center" style="text-align: center;">
					<?php
						$ueACLtask = $item->eid ? 'delete' : 'add';
						if ($canEditState && $this->ueACL->can('permissions.'.$ueACLtask)) :
							echo $status_edit;
						else :
							echo $status;
						endif;
					?>
				</td>
				<td align="center" style="text-align: center;">
					<?php echo (int) $item->id; ?>
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
	
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="noteid" value="13" />
		<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>