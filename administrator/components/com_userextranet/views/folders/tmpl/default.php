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

$canDo = UserExtranetHelper::getActions();

$user		= JFactory::getUser();
$userId		= $user->get('id');
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));

$canOrder	  = $user->authorise('core.edit.state', 'com_userextranet');
$canEditState = $user->authorise('core.edit.state', 'com_userextranet');
$canEdit	  = $user->authorise('core.edit', 'com_userextranet');

$saveOrder	= $listOrder == 'f.ordering';
if ($saveOrder)
{
	$saveOrderingUrl = 'index.php?option=com_userextranet&task=folders.saveOrderAjax&tmpl=component';
	JHtml::_('sortablelist.sortable', 'ueFolders', 'adminForm', strtolower($listDirn), $saveOrderingUrl);
}

//icons
$imgFolder = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-20-folder.png', '', array('width'=>'20', 'height'=>'20', 'border'=>'0', 'style'=>'float: left; margin: 0 5px 0 0;'));
$imgFile = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-file.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float: left; margin:0 5px 0 0;'));
$imgMove = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-move.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float: left; margin:0 2px 0 0;'));
$imgCopy = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-copy.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float: left; margin:0 2px 0 0;'));
$imgEdit = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-edit.png', '', array('width'=>'14', 'height'=>'14', 'border'=>'0', 'style'=>'float: left; margin:0 2px 0 0;'));
$imgDelete = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-delete.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float: left; margin:0 2px 0 0;'));
$imgPermissions = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/menu/icon-16-ue-menu-managepermissions.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float: left; margin:0 2px 0 0;'));
$imgStats = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-stats.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float: left; margin:0 2px 0 0;'));
$imgAlerts = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-alert.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float: left; margin:0 2px 0 0;'));
$imgDown = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-download.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float: left; margin:0 2px 0 0;'));
$imgSync = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-sync.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float: left; margin:0 2px 0 0;'));

$sortFields = $this->getSortFields();
?>

<script type="text/javascript">
	function showActions(id) {
		document.getElementById('div-act-move-'+id).style.display = 'block';
		document.getElementById('div-act-copy-'+id).style.display = 'block';
		document.getElementById('div-act-edit-'+id).style.display = 'block';
		document.getElementById('div-act-delete-'+id).style.display = 'block';
		document.getElementById('div-act-sync-'+id).style.display = 'block';
		document.getElementById('div-act-permissions-'+id).style.display = 'block';
		document.getElementById('div-act-stats-'+id).style.display = 'block';
		document.getElementById('div-act-alerts-'+id).style.display = 'block';
		document.getElementById('div-act-down-'+id).style.display = 'block';
	}
	
	function hideActions(id) {
		document.getElementById('div-act-move-'+id).style.display = 'none';
		document.getElementById('div-act-copy-'+id).style.display = 'none';
		document.getElementById('div-act-edit-'+id).style.display = 'none';
		document.getElementById('div-act-delete-'+id).style.display = 'none';
		document.getElementById('div-act-sync-'+id).style.display = 'none';
		document.getElementById('div-act-permissions-'+id).style.display = 'none';
		document.getElementById('div-act-stats-'+id).style.display = 'none';
		document.getElementById('div-act-alerts-'+id).style.display = 'none';
		document.getElementById('div-act-down-'+id).style.display = 'none';
	}
	
	function setDlId (id) {
		frm = document.adminForm;
		frm.dl.value = id;
	}
	
	function setOp (id, op) {
		frm = document.adminForm;
		frm.opid.value = id;
		frm.op.value = op;
	}
	
	function setDelId (id) {
		frm = document.adminForm;
		frm.delid.value = id;
	}
	
	function setSyncId (id) {
		frm = document.adminForm;
		frm.syncid.value = id;
	}
	
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

<!--
table.table-striped tbody tr td,
table.table-striped thead tr th {
	border: 0 none; padding-left: 0; padding-right: 0;
}
-->

<style type="text/css">
	table.table-striped tbody tr td div {
		display: inline;
		float: left;
	}
	
	table.table-striped tbody tr.rowread td {
		background: #F89A9E;
		border-top: 1px solid #FFFFFF;
	}
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

	<!-- paste note -->
	<?php if ( $pasteMessage = UserExtranetHelperFolders::getActionMessage() ): ?>
	<div class="ue-helpnote">
		<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_PENDING_OPERATION'); ?></span>
		<br />
		<?php echo $pasteMessage; ?>
		<br />
		<button class="ue-button-red" type="button" onclick="Joomla.submitbutton('folders.paste')"><?php echo JText::_('COM_USEREXTRANET_PASTE'); ?></button>
		&nbsp;
		<button class="ue-button-red" type="button" onclick="Joomla.submitbutton('folders.op_cancel')"><?php echo JText::_('COM_USEREXTRANET_CANCEL'); ?></button>
		<br/>
	</div>
	<?php endif; ?>

	<!-- help note -->
	<?php if ( UserExtranetHelper::showHelpNote(15) ): ?>
	<div class="ue-helpnote">
		<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
		<br />
		<?php echo JText::_(UserExtranetHelper::getHelpNote(15)); ?>
		<br />
	</div>
	<?php endif; ?>

	<div style="margin: 10px 0; font-size: 12px;">
		<?php
		$path = UserExtranetHelper::getPath($this->fid);
		$pathHtml = array();
		foreach ($path as $dir) {
			$bold = $dir->id == $this->fid ? 'style="font-weight: bold;"' : '';
			$pathHtml[] = '<a '.$bold.' href="'.JRoute::_('index.php?option=com_userextranet&view=folders&fid='.(int) $dir->id).'">'.$dir->name.'</a>';
		}
		$pathLink = implode(' / ', $pathHtml);
		echo $pathLink;
		?>
	</div>
	
	<table class="table table-striped" id="ueFolders">
		<thead>
			<tr>
				<th width="1%" class="nowrap center hidden-phone">
					<?php echo JHtml::_('grid.sort', '<i class="icon-menu-2"></i>', 'f.ordering', $listDirn, $listOrder, null, 'asc', 'JGRID_HEADING_ORDERING'); ?>
				</th>
				<th width="1%">
					<input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
				</th>
				<th width="23%" class="title" align="left" style="text-align: left;">
					<a href="#" onclick="Joomla.submitbutton('folders.reset_order_state');" title="<?php echo JText::_('COM_USEREXTRANET_CLICK_TO_SORT'); ?>"><?php echo JText::_('COM_USEREXTRANET_NAME'); ?></a>
				</th>
				<th width="8%" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_SIZE'); ?>
				</th>
				<th width="58%" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_PLACE_MOUSE'); ?>
				</th>
				<th width="8%">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_CREATED_DATE', 'f.created_date', $listDirn, $listOrder); ?>
				</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="6">
					<?php //echo $this->pagination->getListFooter(); ?>
				</td>
			</tr>
		</tfoot>
		<tbody>
		<?php foreach ($this->items as $i => $item) :
			$parity = $i % 2;
			$canAccessFolder = 1;
			if ( $item->ffolder ):
			$canAccessFolder = UserExtranetHelper::getFolderAccess($item->id);
			endif;
			$rowClass = $canAccessFolder ? 'row'.$parity : 'rowread';
			$canCheckin	= $user->authorise('core.manage', 'com_checkin') || $item->checked_out == $userId || $item->checked_out == 0;
			$canChange	= $user->authorise('core.edit.state', 'com_userextranet') && $canCheckin;
			$date = (int)$item->created_date ? JHtml::_('date',$item->created_date, JText::_('DATE_FORMAT_LC4')) : '---';
			?>
			<tr class="<?php echo $rowClass; ?>" onmouseover="showActions(<?php echo $item->id; ?>);" onmouseout="hideActions(<?php echo $item->id; ?>);">
				<td class="order nowrap center hidden-phone">
					<?php
					$iconClass = '';
					if (!$canChange)
					{
						$iconClass = ' inactive';
					}
					elseif (!$saveOrder)
					{
						$iconClass = ' inactive tip-top hasTooltip" title="' . JHtml::tooltipText('JORDERINGDISABLED');
					}
					?>
					<span class="sortable-handler<?php echo $iconClass ?>">
						<i class="icon-menu"></i>
					</span>
					<?php if ($canChange && $saveOrder && $this->ueACL->can('folders.edit')) : ?>
						<input type="text" style="display:none" name="order[]" size="5" value="<?php echo $item->ordering;?>" class="width-20 text-area-order " />
					<?php endif; ?>
				</td>
				<td class="center">
					<?php echo JHtml::_('grid.id', $i, $item->id); ?>
				</td>
				<td>
					<?php if ($item->checked_out) : ?>
						<?php echo JHtml::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, 'folders.', $canCheckin); ?>
					<?php endif; ?>
					<?php if ($item->ffolder): ?>
						<?php echo $imgFolder; ?>
						<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view=folders&fid='.(int) $item->id); ?>"><?php echo $this->escape($item->fname); ?></a>
					<?php else: ?>
						<div style="font-size: 12px;">
						<?php echo $imgFile; ?>
						<?php echo $this->escape($item->fname).'<span style="color: #000000;">.'.$item->ftype.'</span>'; ?>
						</div>
					<?php endif; ?>
				</td>
				<td>
					<?php
					$size = $item->ffolder ? UserExtranetHelper::getFolderSize($item->id) : $item->fsize;
					$size = UserExtranetHelper::convertSize($size);
					echo $size;
					?>
				</td>
				<td>
					<div id="div-act-move-<?php echo $item->id; ?>" style="display: none; width: 52px;">
						<?php if ($canDo->get('core.create') && $this->ueACL->can('folders.add')): ?>
							<?php echo $imgMove; ?>
							<a href="javascript:void(0);" onclick="setOp(<?php echo $item->id; ?>, 1); Joomla.submitbutton('folders.op_folder');"><?php echo JText::_('COM_USEREXTRANET_MOVE'); ?></a>
						<?php endif; ?>
					</div>
					<div id="div-act-copy-<?php echo $item->id; ?>" style="display: none; width: 52px;">
						<?php if ($canDo->get('core.create') && $this->ueACL->can('folders.add')): ?>
							<?php echo $imgCopy; ?>
							<a href="javascript:void(0);" onclick="setOp(<?php echo $item->id; ?>, 2); Joomla.submitbutton('folders.op_folder');"><?php echo JText::_('COM_USEREXTRANET_COPY'); ?></a>
						<?php endif; ?>
					</div>
					<div id="div-act-edit-<?php echo $item->id; ?>" style="display: none; width: 43px;">
						<?php if ($canDo->get('core.edit') && $this->ueACL->can('folders.edit')): ?>
							<?php echo $imgEdit; ?>
							<?php $type = $item->ffolder ? 'folder' : 'file'; ?>
							<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view='.$type.'&layout=edit&id='.(int) $item->id.'&pid='.(int)$item->pid); ?>"><?php echo JText::_('COM_USEREXTRANET_EDIT'); ?></a>
						<?php endif; ?>
					</div>
					<div id="div-act-delete-<?php echo $item->id; ?>" style="display: none; width: 60px;">
						<?php if ($canDo->get('core.delete') && $this->ueACL->can('folders.delete')): ?>
							<?php echo $imgDelete; ?>
							<a href="javascript:void(0);" onclick="setDelId(<?php echo $item->id; ?>); Joomla.submitbutton('folders.delete_folder');"><?php echo JText::_('COM_USEREXTRANET_DELETE'); ?></a>
						<?php endif; ?>
					</div>
					<div id="div-act-sync-<?php echo $item->id; ?>" style="display: none; width: 50px;">
						<?php if ( $item->ffolder && $canDo->get('core.create') && $this->ueACL->can('folders.add') ): ?>
							<?php echo $imgSync; ?>
							<a href="javascript:void(0);" onclick="setSyncId(<?php echo $item->id; ?>); Joomla.submitbutton('folders.sync_folder');"><?php echo JText::_('COM_USEREXTRANET_SYNC'); ?></a>
						<?php endif; ?>
					</div>
					<div id="div-act-permissions-<?php echo $item->id; ?>" style="display: none; width: 95px;">
						<?php if ( $item->ffolder && $this->ueACL->can('permissions.view') ): ?>
							<?php echo $imgPermissions; ?>
							<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view=managepermissions'); ?>" target="_blank"><?php echo JText::_('COM_USEREXTRANET_PERMISSIONS'); ?></a>
						<?php endif; ?>
					</div>
					<div id="div-act-stats-<?php echo $item->id; ?>" style="display: none; width: 52px;">
						<?php if ( $this->ueACL->can('downloads.view') ): ?>
							<?php echo $imgStats; ?>
							<?php $getVar = $item->ffolder ? '&pid='.$item->id : '&fid='.$item->id; ?>
							<a class="<?php echo $this->modalStats->modalname; ?>" title="<?php echo $this->modalStats->text; ?>" href="<?php echo $this->modalStats->link.$getVar; ?>" rel="<?php echo $this->modalStats->options; ?>" ><?php echo JText::_('COM_USEREXTRANET_STATS'); ?></a>
						<?php endif; ?>
					</div>
					<div id="div-act-alerts-<?php echo $item->id; ?>" style="display: none; width: 55px;">
						<?php if ( $item->ffolder && $this->ueACL->can('alerts.view') ): ?>
							<?php echo $imgAlerts; ?>
							<a class="<?php echo $this->modalAlerts->modalname; ?>" title="<?php echo $this->modalAlerts->text; ?>" href="<?php echo $this->modalAlerts->link.'&fid='.$item->id; ?>" rel="<?php echo $this->modalAlerts->options; ?>" ><?php echo JText::_('COM_USEREXTRANET_ALERTS'); ?></a>
						<?php endif; ?>
					</div>
					<div id="div-act-down-<?php echo $item->id; ?>" style="display: none; width: 80px;">
						<?php if ( !$item->ffolder ): ?>
							<?php echo $imgDown; ?>
							<a href="javascript:void(0);" onclick="setDlId(<?php echo $item->id; ?>); Joomla.submitbutton('download.download_file');"><?php echo JText::_('COM_USEREXTRANET_DOWNLOAD'); ?></a>
						<?php endif; ?>
					</div>
				</td>
				<td class="center">
					<?php echo $date; ?>
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
	
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="noteid" value="15" />
		<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
		<input type="hidden" name="fid" value="<?php echo $this->fid; ?>" />
		<input type="hidden" name="dl" value="" />
		<input type="hidden" name="opid" value="" />
		<input type="hidden" name="op" value="" />
		<input type="hidden" name="delid" value="" />
		<input type="hidden" name="syncid" value="" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>