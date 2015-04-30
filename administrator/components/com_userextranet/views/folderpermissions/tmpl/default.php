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
$imgFolderSize = 20;
$imgFolder = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-'.$imgFolderSize.'-folder.png', '', array('width'=>$imgFolderSize, 'height'=>$imgFolderSize, 'border'=>'0', 'style'=>'float: left; margin: 0 5px 0 0;'));
$imgFileSize = 16;
$imgFile = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-'.$imgFileSize.'-file.png', '', array('width'=>$imgFileSize, 'height'=>$imgFileSize, 'border'=>'0', 'style'=>'float: left; margin:0 5px 0 0;'));
$imgView = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-view.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgDownload = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-download.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgEdit = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-edit.png', '', array('width'=>'14', 'height'=>'14', 'border'=>'0'));
$imgAdd = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-add.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgDelete = JHTML::_( 'image', 'administrator/components/com_userextranet/assets/images/content/icon-16-delete.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
?>

<form action="<?php echo JRoute::_($this->uri); ?>" method="post" name="adminForm" id="adminForm">
<?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>	
	
	<?php if ( UserExtranetHelper::showHelpNote(14) ): ?>
	<div class="ue-helpnote">
		<span class="ue-helpnote-note">!<?php echo JText::_('COM_USEREXTRANET_NOTE'); ?></span>
		<br />
		<?php echo JText::_(UserExtranetHelper::getHelpNote(14)); ?>
		<br />
	</div>
	<?php endif; ?>

	<div style="margin: 10px 0; font-size: 12px;">
		<?php
		$path = UserExtranetHelper::getPath($this->fid);
		$pathHtml = array();
		foreach ($path as $dir) {
			$bold = $dir->id == $this->fid ? 'style="font-weight: bold;"' : '';
			$pathHtml[] = '<a '.$bold.' href="'.JRoute::_('index.php?option=com_userextranet&view=folderpermissions&fid='.(int) $dir->id.'&uid='.(int)$this->uid.'&gid='.(int)$this->gid).'">'.$dir->name.'</a>';
		}
		$pathLink = implode(' / ', $pathHtml);
		echo $pathLink;
		?>
	</div>
	
	<table class="table table-striped" id="ueFolderpermissions">
		<thead>
			<tr>
				<th width="1%">
					<input type="checkbox" name="checkall-toggle" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this)" />
				</th>
				<th width="41%" class="title" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_NAME'); ?>
				</th>
				<th width="41%" colspan="10" class="title" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_FILE_PERMISSIONS'); ?>
				</th>
				<th width="15%" class="title" align="center" style="text-align: center;">
					<?php echo JText::_('COM_USEREXTRANET_RECURSE_INTO_SUBFOLDERS'); ?>
				</th>
			</tr>
			<tr style="height: 10px;">
				<th colspan="2">
					&nbsp;
				</th>
				<th width="1%">
					<input type="checkbox" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this, 'fview')" />
				</th>
				<th width="7%" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_VIEW'); ?>
				</th>
				<th width="1%">
					<input type="checkbox" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this, 'fdown')" />
				</th>
				<th width="7%" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_DOWNLOAD'); ?>
				</th>
				<th width="1%">
					<input type="checkbox" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this, 'fedit')" />
				</th>
				<th width="7%" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_EDIT'); ?>
				</th>
				<th width="1%">
					<input type="checkbox" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this, 'fadd')" />
				</th>
				<th width="7%" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_ADD'); ?>
				</th>
				<th width="1%">
					<input type="checkbox" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this, 'fdel')" />
				</th>
				<th width="7%" align="left" style="text-align: left;">
					<?php echo JText::_('COM_USEREXTRANET_DELETE'); ?>
				</th>
				<th align="center" style="text-align: center;">
					<input type="checkbox" value="" title="<?php echo JText::_('JGLOBAL_CHECK_ALL'); ?>" onclick="Joomla.checkAll(this, 'recurse')" />
				</th>
			</tr>
		</thead>
		<tfoot>
			<tr>
				<td colspan="14">
					<?php //echo $this->pagination->getListFooter(); ?>
				</td>
			</tr>
		</tfoot>
		<tbody>
		<?php foreach ($this->items as $i => $item) :
			?>
			<tr class="row<?php echo $i % 2; ?>">
				<td class="center">
					<?php if ($item->ffolder):
						if ( $this->uid ):
							$checked = $this->ueFACL->can($item->id.'.access', $this->uid) ? 'checked="checked"' : '';
						else:
							$checked = $this->ueFACL->canGroup($item->id.'.access', $this->gid) ? 'checked="checked"' : '';
						endif;
						?>
						<input id="cb<?php echo $i; ?>" name="cid[<?php echo $item->id; ?>]" value="<?php echo $item->id; ?>" onclick="Joomla.isChecked(this.checked);" title="<?php echo sprintf(JText::_('COM_USEREXTRANET_CHECK_FOR_ROW_S'), $i+1); ?>" type="checkbox" <?php echo $checked; ?>>
						<input type="hidden" name="allfid[]" value="<?php echo $item->id; ?>" />
					<?php else: ?>
						#
					<?php endif; ?>
					
				</td>
				<td>
					<?php if ($item->ffolder): ?>
						<?php echo $imgFolder; ?>
						<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view=folderpermissions&fid='.(int) $item->id.'&uid='.(int)$this->uid.'&gid='.(int)$this->gid); ?>"><?php echo $this->escape($item->fname); ?></a>
					<?php else: ?>
						<div style="font-size: 12px;">
						<?php echo $imgFile; ?>
						<?php echo $this->escape($item->fname).'<span style="color: #000000;">.'.$item->ftype.'</span>'; ?>
						</div>
					<?php endif; ?>
					
				</td>
				<?php if ($item->ffolder): ?>
				<td>
					<?php
					if ( $this->uid ):
						$checked = $this->ueFACL->can($item->id.'.view', $this->uid) ? 'checked="checked"' : '';
					else:
						$checked = $this->ueFACL->canGroup($item->id.'.view', $this->gid) ? 'checked="checked"' : '';
					endif;
					?>
					<input id="fview<?php echo $i; ?>" name="fviewid[<?php echo $item->id; ?>]" value="<?php echo $item->id; ?>" onclick="Joomla.isChecked(this.checked);" type="checkbox" <?php echo $checked; ?> />
				</td>
				<td>
					<?php echo JText::_('COM_USEREXTRANET_VIEW'); ?>
				</td>
				<td>
					<?php
					if ( $this->uid ):
						$checked = $this->ueFACL->can($item->id.'.download', $this->uid) ? 'checked="checked"' : '';
					else:
						$checked = $this->ueFACL->canGroup($item->id.'.download', $this->gid) ? 'checked="checked"' : '';
					endif;
					?>
					<input id="fdown<?php echo $i; ?>" name="fdownid[<?php echo $item->id; ?>]" value="<?php echo $item->id; ?>" onclick="Joomla.isChecked(this.checked);" type="checkbox" <?php echo $checked; ?> />
				</td>
				<td>
					<?php echo JText::_('COM_USEREXTRANET_DOWNLOAD'); ?>
				</td>
				<td>
					<?php
					if ( $this->uid ):
						$checked = $this->ueFACL->can($item->id.'.edit', $this->uid) ? 'checked="checked"' : '';
					else:
						$checked = $this->ueFACL->canGroup($item->id.'.edit', $this->gid) ? 'checked="checked"' : '';
					endif;
					?>
					<input id="fedit<?php echo $i; ?>" name="feditid[<?php echo $item->id; ?>]" value="<?php echo $item->id; ?>" onclick="Joomla.isChecked(this.checked);" type="checkbox" <?php echo $checked; ?> />
				</td>
				<td>
					<?php echo JText::_('COM_USEREXTRANET_EDIT'); ?>
				</td>
				<td>
					<?php
					if ( $this->uid ):
						$checked = $this->ueFACL->can($item->id.'.add', $this->uid) ? 'checked="checked"' : '';
					else:
						$checked = $this->ueFACL->canGroup($item->id.'.add', $this->gid) ? 'checked="checked"' : '';
					endif;
					?>
					<input id="fadd<?php echo $i; ?>" name="faddid[<?php echo $item->id; ?>]" value="<?php echo $item->id; ?>" onclick="Joomla.isChecked(this.checked);" type="checkbox" <?php echo $checked; ?> />
				</td>
				<td>
					<?php echo JText::_('COM_USEREXTRANET_ADD'); ?>
				</td>
				<td>
					<?php
					if ( $this->uid ):
						$checked = $this->ueFACL->can($item->id.'.delete', $this->uid) ? 'checked="checked"' : '';
					else:
						$checked = $this->ueFACL->canGroup($item->id.'.delete', $this->gid) ? 'checked="checked"' : '';
					endif;
					?>
					<input id="fdel<?php echo $i; ?>" name="fdelid[<?php echo $item->id; ?>]" value="<?php echo $item->id; ?>" onclick="Joomla.isChecked(this.checked);" type="checkbox" <?php echo $checked; ?> />
				</td>
				<td>
					<?php echo JText::_('COM_USEREXTRANET_DELETE'); ?>
				</td>
				<td align="center" style="text-align: center;">
					<input id="recurse<?php echo $i; ?>" name="recurseid[<?php echo $item->id; ?>]" value="<?php echo $item->id; ?>" onclick="Joomla.isChecked(this.checked);" type="checkbox" />
				</td>
				<?php else: ?>
				<td>&nbsp;</td><td>---</td>
				<td>&nbsp;</td><td>---</td>
				<td>&nbsp;</td><td>---</td>
				<td>&nbsp;</td><td>---</td>
				<td>&nbsp;</td><td>---</td>
				<td align="center" style="text-align: center;">---</td>
				<?php endif; ?>
			</tr>
			<?php endforeach; ?>
		</tbody>
	</table>
	
		<input type="hidden" name="task" value="" />
		<input type="hidden" name="noteid" value="14" />
		<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
		<input type="hidden" name="uid" value="<?php echo $this->uid; ?>" />
		<input type="hidden" name="gid" value="<?php echo $this->gid; ?>" />
		<input type="hidden" name="fid" value="<?php echo $this->fid; ?>" />
		<input type="hidden" name="boxchecked" value="0" />
		<input type="hidden" name="filter_order" value="<?php echo $listOrder; ?>" />
		<input type="hidden" name="filter_order_Dir" value="<?php echo $listDirn; ?>" />
		<?php echo JHtml::_('form.token'); ?>
	</div>
</form>