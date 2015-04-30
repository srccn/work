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
$canEdit	= $user->authorise('core.edit', 'com_userextranet');

$sortFields = $this->getSortFields();

//icons
$imgRead = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-published.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgUnread = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-unpublished.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgNotice = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-notice.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'alt'=>JText::_('COM_USEREXTRANET_PRIVATE_MESSAGE'), 'title'=>JText::_('COM_USEREXTRANET_PRIVATE_MESSAGE'), 'style'=>'float: left; margin: 0 3px;'));
?>

<style type="text/css">
	table.adminlist tbody tr.rowunread td { background: #F89A9E; }
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

<form action="<?php echo JRoute::_('index.php?option=com_userextranet&view=messages'); ?>" method="post" name="adminForm" id="adminForm">
<?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>
	<?php if ( UserExtranetHelper::showHelpNote(1) ): ?>
<div class="ue-helpnote">
	<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
	<br />
	<?php echo JText::_(UserExtranetHelper::getHelpNote(1)); ?>
	<br />
</div>
<?php endif; ?>
	<div id="filter-bar" class="btn-toolbar">
		<div class="filter-search btn-group pull-left">
			<label for="filter_search" class="element-invisible">
				<?php echo JText::_('JSEARCH_FILTER_LABEL'); ?>
			</label>
			<input type="text" name="filter_search" id="filter_search" placeholder="<?php echo JText::_('JSEARCH_FILTER'); ?>" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" class="hasTooltip" title="<?php echo JHtml::tooltipText('COM_USEREXTRANET_SEARCH_IN_SUBJECT_OF_MESSAGE'); ?>" />
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

	<table class="table table-striped" id="ueMessages" style="border-collapse: collapse;">
		<thead>
			<tr>
				<th width="1%" class="hidden-phone">
					<?php echo JHtml::_('grid.checkall'); ?>
				</th>
				<th width="20%" class="title" align="left" style="text-align: left;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_SUBJECT', 'subject', $listDirn, $listOrder); ?>
				</th>
				<th width="20%" align="left" style="text-align: left;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_SENDER', 'msendername', $listDirn, $listOrder); ?>
				</th>
				<th width="19%" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_RECIPIENTS'); ?>
				</th>
				<th width="8%" align="center" style="text-align: center;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_READ', 'mread', $listDirn, $listOrder); ?>
				</th>
				<th width="9%" align="center" style="text-align: center;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_SENT_FROM', 'm.location', $listDirn, $listOrder); ?>
				</th>
				<th width="14%" align="center" style="text-align: center;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_DATE', 'm.created_date', $listDirn, $listOrder); ?>
				</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="7">
					<?php echo $this->pagination->getListFooter(); ?>
				</td>
			</tr>
		</tfoot>
		<tbody>
		<?php foreach ($this->items as $i => $item) :
			$canCheckin	= $user->authorise('core.manage', 'com_checkin') || $item->checked_out == $userId || $item->checked_out == 0;
			
			//date
			$date = (int)$item->created_date ? JHtml::_('date',$item->created_date, "Y-m-d H:i"/*JText::_('DATE_FORMAT_LC4')*/) : '---';
			
			//sent from location
			$sentFrom = $item->location ? JText::_('COM_USEREXTRANET_ADMINISTRATOR') : JText::_('COM_USEREXTRANET_SITE');
			
			//read
			$arrMRead = explode(',', $item->mread);
			$inMReadCurrentUser = (int)in_array($userId, $arrMRead);
			$sentByCurrentUser = $item->from_id == $userId;
			if ( $sentByCurrentUser ):
				$mread = 1;
			else:
				$mread = $inMReadCurrentUser ? 1 : 0;
			endif;
			
			//status can edit
			$read_edit = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_MARK_AS_UNREAD').'\' onclick=\'return listItemTask("cb'.$i.'","messages.mark_as_unread")\'>'.$imgRead.'</a>';
			$unread_edit = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_MARK_AS_READ').'\'onclick=\'return listItemTask("cb'.$i.'","messages.mark_as_read")\'>'.$imgUnread.'</a>';
			$status_edit = $mread ? $read_edit : $unread_edit;
			//status cannot edit
			$read = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_READ').'\'>'.$imgRead.'</a>';
			$unread = '<a href=\'javascript:void(0)\' title=\''.JText::_('COM_USEREXTRANET_UNREAD').'\'>'.$imgUnread.'</a>';
			$status = $mread ? $read : $unread;
			
			$trParity = $i % 2;
			$trClass = $mread ? 'row'.$trParity : 'rowunread';
			?>
			
			<tr class="<?php echo $trClass; ?>">
				<td class="center">
					<?php echo JHtml::_('grid.id', $i, $item->id); ?>
				</td>
				<td>
					<?php if ($item->checked_out) : ?>
						<?php echo JHtml::_('jgrid.checkedout', $i, $item->editor, $item->checked_out_time, 'messages.', $canCheckin); ?>
					<?php endif; ?>
					<?php if ( !$item->visibility ) echo $imgNotice ?>
					<?php if ($canEdit && $this->ueACL->can('messages.view')) : ?>
						<a href="<?php echo JRoute::_('index.php?option=com_userextranet&task=message.edit&id='.(int) $item->id); ?>" title="<?php echo JText::_('COM_USEREXTRANET_VIEW_MESSAGE'); ?>">
							<?php echo $this->escape($item->subject); ?></a>
					<?php else : ?>
							<?php echo $this->escape($item->subject); ?>
					<?php endif; ?>
					
				</td>
				<td>
					<a href="<?php echo JRoute::_('index.php?option=com_users&task=user.edit&id='.(int) $item->from_id); ?>" title="<?php echo JText::_('COM_USEREXTRANET_VIEW_PROFILE'); ?>" target="_blank"><?php echo $item->msendername; ?></a>
				</td>
				<td>
					<?php echo UserExtranetHelperMessages::getRecipients($item->mrecipients, $item->mread); ?>
				</td>
				<td align="center" style="text-align: center;">
					<?php
						if ($item->from_id == $userId):
							echo '---';
						else:
							if ($canEditState && $this->ueACL->can('messages.edit')) :
								echo $status_edit;
							else :
								echo $status;
							endif;	
						endif;
					?>
				</td>
				<td align="center" style="text-align: center;">
					<?php echo $sentFrom; ?>
				</td>
				<td align="center" style="text-align: center;">
					<?php echo $date; ?>
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
	
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="noteid" value="1" />
		<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>