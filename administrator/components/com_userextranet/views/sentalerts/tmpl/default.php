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

<style type="text/css">
	table.adminlist {
		font-size: 12px;
	}
</style>

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

<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="adminForm">

<?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>

	<div id="filter-bar" class="btn-toolbar">
		<div class="filter-search btn-group pull-left">
			<label for="filter_search" class="element-invisible">
				<?php echo JText::_('JSEARCH_FILTER_LABEL'); ?>
			</label>
			<input type="text" name="filter_search" id="filter_search" placeholder="<?php echo JText::_('JSEARCH_FILTER'); ?>" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" class="hasTooltip" title="<?php echo JHtml::tooltipText('COM_USEREXTRANET_SEARCH_IN_ALERT_TITLE'); ?>" />
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

	<table class="table table-striped" id="ueSentalerts">
		<thead>
			<tr>
				<th width="1%">
					<input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
				</th>
				<th width="45%" class="title" align="left" style="text-align: left;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_ALERT_TITLE', 'atitle', $listDirn, $listOrder); ?>
				</th>
				<th width="10%" align="center" style="text-align: center;">
					&nbsp;
				</th>
				<th width="10%" align="center" style="text-align: center;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_PRIORITY', 'apriority', $listDirn, $listOrder); ?>
				</th>
				<th width="10%" align="center" style="text-align: center;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_STATE', 'aread', $listDirn, $listOrder); ?>
				</th>
				<th width="15%">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_CREATED_DATE', 'created_date', $listDirn, $listOrder); ?>
				</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="6">
					<?php echo $this->pagination->getListFooter(); ?>
				</td>
			</tr>
		</tfoot>
		<tbody>
		<?php foreach ($this->items as $i => $item) :
			//status can edit
			$enabled_edit = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_MARK_AS_UNREAD').'\' onclick=\'return listItemTask("cb'.$i.'","sentalerts.mark_as_unread")\'>'.$imgEnabled.'</a>';
			$disabled_edit = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_MARK_AS_READ').'\'onclick=\'return listItemTask("cb'.$i.'","sentalerts.mark_as_read")\'>'.$imgDisabled.'</a>';
			$status_edit = $item->aread ? $enabled_edit : $disabled_edit;
			//priority
			if ( $item->apriority == 0 ) {
				$priority = '<span style=\'color:#57AC00;\'>'.JText::_('COM_USEREXTRANET_LOW').'</span>';
			}
			else if ( $item->apriority == 1 ) {
				$priority = '<span style=\'color:#FF9933;\'>'.JText::_('COM_USEREXTRANET_MEDIUM').'</span>';
			}
			else if ( $item->apriority == 2 ) {
				$priority = '<span style=\'color:#FF0000;\'>'.JText::_('COM_USEREXTRANET_HIGH').'</span>';
			}
			//date
			$date = (int)$item->created_date ? JHtml::_('date',$item->created_date, 'Y-m-d H:i:s') : '---';
			?>
			<tr class="row<?php echo $i % 2; ?>">
				<td class="center">
					<?php echo JHtml::_('grid.id', $i, $item->id); ?>
				</td>
				<td>
					<?php echo $this->escape($item->atitle); ?>
				</td>
				<td class="center">
					<a class="<?php echo $this->modalAlert->modalname; ?>" title="<?php echo $this->modalAlert->text; ?>" href="<?php echo $this->modalAlert->link.$item->id.'&tmpl=component'; ?>" rel="<?php echo $this->modalAlert->options; ?>" ><?php echo $this->modalAlert->text; ?></a>
				</td>
				<td class="center">
					<?php echo $priority; ?>
				</td>
				<td class="center">
					<?php echo $status_edit; ?>
				</td>
				<td class="center">
					<?php echo $date; ?>
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
	
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>