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

JHtml::_('behavior.tooltip');

JHtml::addIncludePath(JPATH_COMPONENT.'/helpers/html');

$user		= JFactory::getUser();
$userId		= (int)$user->get('id');

//icons
$imgFile = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-ue-file.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
$imgFolder = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-20-ue-folder.png', '', array('width'=>'20', 'height'=>'20', 'border'=>'0'));
$imgAdd = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-add.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0'));
?>

<script type="text/javascript">
	function fsearch (task) {
		frm = document.ueSearchForm;
		frm.task.value = task;
		frm.submit();
	}
	
	function setDlId (id) {
		frm = document.adminForm;
		frm.dl.value = id;
	}
	
	function setDelId (id) {
		frm = document.adminForm;
		frm.delid.value = id;
	}
	
	function setEditId (id) {
		frm = document.adminForm;
		frm.editid.value = id;
	}
	
	function setDetailsId (id) {
		frm = document.adminForm;
		frm.detailsid.value = id;
	}
</script>

<div id="userextranet">
	<!-- top menu -->
	<div class="ue-top-menu">
		<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view=home'); ?>"><?php echo $this->front_title; ?></a>
		<span class="ue-top-menu-arrow">/</span>
		<?php echo JText::_('COM_USEREXTRANET_DOCUMENTS'); ?>
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
		
		<?php
		$folderObj = UserExtranetHelper::getRow('#__ue_folders', array('fdesc'), $this->fid);
		if ( !empty($folderObj) ){
			if ( !empty($folderObj->fdesc) ) {
				?>
				<div class="ue-folder-desc">
					<?php echo $folderObj->fdesc; ?>
				</div>
				<?php
			}
		}
		?>
		
		<?php if ( $this->ueFACL->can($this->fid.'.add', $userId) ): ?>
		<div class="ue-toolbar">
			<table>
				<tr>
					<td>
						<?php echo $imgAdd; ?><a href="javascript:void(0);" onclick="Joomla.submitbutton('folders.add_file')"><?php echo JText::_('COM_USEREXTRANET_ADD_FILE'); ?></a>
					</td>
				</tr>
			</table>
		</div>
		<?php endif; ?>
		
		<div class="clr"> </div>

		<div class="ue-folders">
			<table class="ue-folder-list">
				<thead>
					<tr>
						<th width="90%" class="title" align="left" style="text-align: left;" colspan="2">
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
						</th>
					</tr>
				</thead>
				
				<tbody>
				<?php foreach ($this->items as $i => $item) :
					?>
					<!-- do not show files in the root folder -->
					<?php if (!(!$this->fid && !$item->ffolder)): ?>
					<tr class="row<?php echo $i % 2; ?>">
						<td class="atitle" style="width: 50%;">
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
						<td align="right" style="text-align: right;">
							<?php if ( !$item->ffolder ): ?>
							
							<!-- download -->
							<?php if ($this->ueFACL->can($this->fid.'.download', $userId)): ?>
							<a style="font-size: 13px;" href="javascript:void(0);" onclick="setDlId(<?php echo $item->id; ?>); Joomla.submitbutton('download.download_file');"><?php echo JText::_('COM_USEREXTRANET_DOWNLOAD'); ?></a>
							&nbsp;
							<?php endif; ?>
							
							<!-- details -->
							<?php if ($this->ueFACL->can($this->fid.'.view', $userId)): ?>
							<a style="font-size: 13px;" href="javascript:void(0);" onclick="setDetailsId(<?php echo $item->id; ?>); Joomla.submitbutton('folders.file_details');"><?php echo JText::_('COM_USEREXTRANET_DETAILS'); ?></a>
							&nbsp;
							<?php endif; ?>
							
							<!-- edit -->
							<?php if ($this->ueFACL->can($this->fid.'.edit', $userId)): ?>
							<a style="font-size: 13px;" href="javascript:void(0);" onclick="setEditId(<?php echo $item->id; ?>); Joomla.submitbutton('folders.edit_file');"><?php echo JText::_('COM_USEREXTRANET_EDIT'); ?></a>
							&nbsp;
							<?php endif; ?>
							
							<!-- delete -->
							<?php if ($this->ueFACL->can($this->fid.'.delete', $userId)): ?>
							<a style="font-size: 13px;" href="javascript:void(0);" onclick="setDelId(<?php echo $item->id; ?>); Joomla.submitbutton('folders.delete_folder');"><?php echo JText::_('COM_USEREXTRANET_DELETE'); ?></a>
							<?php endif; ?>
							
							<?php else: ?>
							&nbsp;
							<?php endif; ?>
						</td>
					</tr>
					<?php endif; ?>
					<?php endforeach; ?>
				</tbody>
			</table>
		</div>	
		<div>
			<input type="hidden" name="task" value="" />
			<input type="hidden" name="dl" value="" />
			<input type="hidden" name="delid" value="" />
			<input type="hidden" name="editid" value="" />
			<input type="hidden" name="detailsid" value="" />
			<input type="hidden" name="fid" value="<?php echo $this->fid; ?>" />
			<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
			<?php echo JHtml::_('form.token'); ?>
		</div>
	</form>
</div>