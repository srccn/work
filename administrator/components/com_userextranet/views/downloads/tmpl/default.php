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
require_once JPATH_COMPONENT.'/helpers/downloads.php';

JHtml::_('bootstrap.tooltip');
JHtml::_('behavior.multiselect');
JHtml::_('dropdown.init');
JHtml::_('formbehavior.chosen', 'select');

$user		= JFactory::getUser();
$userId		= $user->get('id');
$listOrder	= $this->escape($this->state->get('list.ordering'));
$listDirn	= $this->escape($this->state->get('list.direction'));

$filterUser = JFactory::getUser((int)$this->state->get('filter.user'));
$filterUserName = $filterUser->get('name');

$canEditState	= $user->authorise('core.edit.state', 'com_userextranet');
$canCreate	= $user->authorise('core.create', 'com_userextranet');
$canEdit	= $user->authorise('core.edit', 'com_userextranet');

$filter_report_begin	= $this->state->get('filter.report_begin');
$filter_report_end	= $this->state->get('filter.report_end');

//icons
$imgDown = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/menu/icon-16-ue-menu-downloads.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));

$sortFields = $this->getSortFields();
?>

<script src="<?php echo JURI::root(true); ?>/media/system/js/mootools-more.js" type="text/javascript"></script>
<script src="<?php echo JURI::root(true); ?>/media/system/js/modal.js" type="text/javascript"></script>

<script type="text/javascript">
	window.addEvent('domready', function() {
		SqueezeBox.initialize({});
		SqueezeBox.assign($$('a.modal_jform_user'), {
			parse: 'rel'
		});
	});
	function jSelectUser_jform_user(id, title) {
		var old_id = document.getElementById("jform_user_id").value;
		if (old_id != id) {
			document.getElementById("jform_user_id").value = id;
			document.getElementById("jform_user_name").value = title;
			document.getElementById("jform_user_name").className = document.getElementById("jform_user_name").className.replace(" invalid" , "");
			
		}
		SqueezeBox.close();
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

<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="adminForm">
<?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>
<?php if ( UserExtranetHelper::showHelpNote(9) ): ?>
<div class="ue-helpnote">
	<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
	<br />
	<?php echo JText::_(UserExtranetHelper::getHelpNote(9)); ?>
	<br />
</div>
<?php endif; ?>
	<div id="filter-bar" class="btn-toolbar">
		<div class="filter-search btn-group pull-left">
			<label for="filter_search" class="element-invisible">
				<?php echo JText::_('JSEARCH_FILTER_LABEL'); ?>
			</label>
			<input type="text" name="filter_search" id="filter_search" placeholder="<?php echo JText::_('JSEARCH_FILTER'); ?>" value="<?php echo $this->escape($this->state->get('filter.search')); ?>" class="hasTooltip" title="<?php echo JHtml::tooltipText('COM_USEREXTRANET_SEARCH_IN_FILENAME'); ?>" />
		</div>
		<div class="btn-group pull-left">
				<button type="submit" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_SUBMIT'); ?>"><i class="icon-search"></i></button>
				<button type="button" class="btn hasTooltip" title="<?php echo JHtml::tooltipText('JSEARCH_FILTER_CLEAR'); ?>" onclick="document.id('filter_search').value='';this.form.submit();"><i class="icon-remove"></i></button>
		</div>
		<div class="btn-group pull-right hidden-phone" style="">
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
		<div class="clearfix"> </div>
		<div class="btn-group pull-left">
			<?php echo JHTML::_('calendar', $filter_report_begin, 'filter_report_begin','filter_report_begin','%Y-%m-%d' , array('size'=>'15', 'style'=>'width: 100px; margin: 0 0 15px 0;')); ?>
			
			<?php echo JHTML::_('calendar', $filter_report_end, 'filter_report_end','filter_report_end','%Y-%m-%d' , array('size'=>'15', 'style'=>'width: 100px; margin: 0 0 15px 10px;')); ?>
			
			<button class="btn hasTooltip" style="margin: 0 -1px 23px 5px;" type="button" onclick="this.form.submit();"><?php echo JText::_( 'COM_USEREXTRANET_SUBMIT' ); ?></button>
			<button class="btn hasTooltip" style="margin: 0 0 23px 0;" type="button" onclick="document.id('filter_report_begin').value='';document.id('filter_report_end').value='';this.form.submit();"><?php echo JText::_('COM_USEREXTRANET_RESET'); ?></button>
		</div>
		<div class="btn-group pull-right">
			<!-- <div class="controls"> -->
				<div class="input-append">
					<input id="jform_user_name" value="<?php echo $filterUserName; ?>" readonly="" type="text">
					<a class="btn btn-primary modal_jform_user" title="<?php echo JText::_('COM_USEREXTRANET_SELECT_USER'); ?>" href="index.php?option=com_users&amp;view=users&amp;layout=modal&amp;tmpl=component&amp;field=jform_user" rel="{handler: 'iframe', size: {x: 800, y: 500}}">
					<i class="icon-user"></i>
					</a>
				</div>
				<input id="jform_user_id" name="jform_user" value="<?php echo $this->state->get('filter.user'); ?>" type="hidden">
				<button class="btn hasTooltip" style="margin: 0 -1px 10px 5px;" type="button" onclick="this.form.submit();"><?php echo JText::_( 'COM_USEREXTRANET_SUBMIT' ); ?></button>
				<button class="btn hasTooltip" style="margin: 0 0 10px 0;" type="button" onclick="document.id('jform_user_id').value='';document.id('jform_user_name').value='';this.form.submit();"><?php echo JText::_('COM_USEREXTRANET_RESET'); ?></button>
			<!-- </div> -->
		</div>
	</div>
	
	<div class="clearfix"> </div>
	
	<table class="table table-striped" id="ueDownloads">
		<thead>
			<tr>
				<th width="1%">
					<input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
				</th>
				<th width="20%" class="title" align="left" style="text-align: left;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_FILE', 'f.fname', $listDirn, $listOrder); ?>
				</th>
				<th width="30%" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_FOLDER'); ?>
				</th>
				<th width="10%" align="left" style="text-align: left;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_DOWN_LOCATION', 'd.location', $listDirn, $listOrder); ?>
				</th>
				<th width="15%" align="left" style="text-align: left;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_USER', 'u.name', $listDirn, $listOrder); ?>
				</th>
				<th width="15%" align="center" style="text-align: center;">
					<?php echo JHtml::_('grid.sort',  'COM_USEREXTRANET_DATE', 'd.created_date', $listDirn, $listOrder); ?>
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
			//date
			$date = (int)$item->created_date ? JHtml::_('date',$item->created_date, "Y-m-d H:i"/*JText::_('DATE_FORMAT_LC4')*/) : '---';
			
			//folder
			$dir = UserExtranetHelper::getDirectory($item->fid);
			$folderPath = $dir ? $dir->path : '';
			$folderPath = JText::_('COM_USEREXTRANET_ROOT').'/'.$folderPath;
			$folderId = $dir ? $dir->id : 0;
			
			//location
			$location = $item->location ? JText::_('COM_USEREXTRANET_ADMINISTRATOR') : JText::_('COM_USEREXTRANET_SITE');
			?>
			
			<tr class="row<?php echo $i % 2; ?>">
				<td class="center">
					<?php echo JHtml::_('grid.id', $i, $item->id); ?>
				</td>
				<td>
					<?php echo $item->fname.'.'.$item->ftype; ?>
				</td>
				<td>
					<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view=folders&fid='.(int) $folderId); ?>" title="<?php echo JText::_('COM_USEREXTRANET_GO_TO_FOLDER'); ?>" target="_blank"><?php echo $folderPath; ?></a>
				</td>
				<td>
					<?php echo $location; ?>
				</td>
				<td>
					<a href="<?php echo JRoute::_('index.php?option=com_users&task=user.edit&id='.(int) $item->created_by); ?>" title="<?php echo JText::_('COM_USEREXTRANET_VIEW_PROFILE'); ?>" target="_blank"><?php echo $item->uname; ?></a>
				</td>
				<td align="center" style="text-align: center;">
					<?php echo $date; ?>
				</td>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
	
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="noteid" value="9" />
		<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>