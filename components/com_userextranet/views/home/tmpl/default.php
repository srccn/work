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

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');

$user = JFactory::getUser();
$config = JFactory::getConfig();

//icons
$imgMailNew = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-64-ue-mail-new.png', '', array('width'=>'64', 'height'=>'64', 'border'=>'0', 'style'=>'float:left;'));
$imgMailVerified = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-64-ue-mail-verified.png', '', array('width'=>'64', 'height'=>'64', 'border'=>'0', 'style'=>'float:left;'));
$imgDocuments = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-64-ue-documents.png', '', array('width'=>'64', 'height'=>'64', 'border'=>'0', 'style'=>'float:left;'));
$imgFile = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-ue-file.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float:left;margin: 0 3px 0 0;'));
$imgFolder = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-20-ue-folder.png', '', array('width'=>'20', 'height'=>'20', 'border'=>'0', 'style'=>'float:left;margin: 0 3px 0 0;'));

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
		<?php echo $this->front_title; ?>
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
	
	<form action="<?php echo JRoute::_('index.php?option=com_userextranet&view=home'); ?>" method="post" name="adminForm" id="adminForm">
	
	<!-- alerts -->
	<?php if ( $this->front_alerts == 1 ) : ?>
	<div class="ue-alerts">
		<table class="ue-alerts-list">
			<thead>
				<tr>
					<th colspan="2">
						<?php echo strtoupper(JText::_('COM_USEREXTRANET_ALERTS')); ?>
					</th>
				</tr>
			</thead>
			<tbody>
				<?php
				if ( !empty($this->alerts) ) {
					foreach ( $this->alerts as $alert ) {
						?>
						<tr class="row0">
							<td class="atitle">
								<?php echo $alert->atitle; ?>
							</td>
							<td class="aread">
								<a class="<?php echo $this->modalAlert->modalname; ?>" title="<?php echo $this->modalAlert->text; ?>" href="<?php echo $this->modalAlert->link.$alert->id.'&tmpl=component'; ?>" rel="<?php echo $this->modalAlert->options; ?>" ><?php echo $this->modalAlert->text; ?></a>
							</td>
						</tr>
						<?php
					}
				}
				else {
					?>
					<tr>
						<td>
							<?php echo JText::_('COM_USEREXTRANET_NO_UNREAD_ALERT'); ?>
						</td>
					</tr>
					<?php
				}
				?>
				<tr>
					<td colspan="2">
						<a href="<?php echo JRoute::_('index.php?option=com_userextranet&view=sentalerts'); ?>"><?php echo JText::_('COM_USEREXTRANET_VIEW_ALL_ALERTS'); ?></a>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<?php endif; ?>
	
	<!-- welcome message -->
	<?php if ( !empty($this->front_welcome) ) : ?>
	<div class="ue-welcome">
		<?php echo $this->front_welcome; ?>
	</div>
	<br/><br/>
	<?php endif; ?>
	
	<!-- documents -->
	<div class="ue-home-div-left">
		<?php echo $imgDocuments; ?>
		<a class="ue-home-bold-link" href="<?php echo JRoute::_('index.php?option=com_userextranet&view=folders'); ?>"><?php echo JText::_('COM_USEREXTRANET_DOCUMENTS'); ?></a>
		<p>&nbsp;</p>
		<?php echo JText::_('COM_USEREXTRANET_VIEW_DOCUMENTS'); ?>
	</div>
	
	<!-- messages -->
	<?php if ( $this->front_messages == 1 ): ?>
	<?php $imgMail = $this->unreadmsg ? $imgMailNew : $imgMailVerified; ?>
	<?php $descMail = $this->unreadmsg ? '<span style="color: #FF0000;">'.sprintf(JText::_('COM_USEREXTRANET_YOU_HAVE_UNREAD'), $this->unreadmsg).'</span>' : JText::_('COM_USEREXTRANET_YOU_HAVE_NO_UNREAD'); ?>
	<div class="ue-home-div-right">
		<?php echo $imgMail; ?>
		<a class="ue-home-bold-link" href="<?php echo JRoute::_('index.php?option=com_userextranet&view=messages'); ?>"><?php echo JText::_('COM_USEREXTRANET_MESSAGES'); ?></a>
		<p>&nbsp;</p>
		<?php echo $descMail; ?>
	</div>
	<?php endif; ?>
	
	<div style="clear:both;"></div>
	
	<!-- recently added -->
	<?php if ( $this->ldocs_status == 1 ) : ?>
	<div class="ue-home-recently">
		<div class="ue-home-rec-top-title">
			<span class="ue-home-rec-top-left"><?php echo JText::_('COM_USEREXTRANET_RECENTLY_ADDED'); ?></span>
			<span class="ue-home-rec-top-right"><?php echo JText::_('COM_USEREXTRANET_DATE_ADDED'); ?></span>
			<div style="clear:both;"></div>
		</div>
		
		
		<?php if ( empty($this->latest) ) : ?>
		<div class="ue-home-rec-no-added">
			<?php echo JText::_('COM_USEREXTRANET_THERE_ARE_NO'); ?>
		</div>
		<?php else:
			foreach ($this->latest as $i => $item) :
			if ( $item->ffolder ) {
				$link = JRoute::_('index.php?option=com_userextranet&view=folders&fid='.(int)$item->id);
			}
			else {
				$link = JRoute::_('index.php?option=com_userextranet&view=file&layout=default&id='.(int)$item->id.'&pid='.(int)$item->pid);
			}
			//date
			$createdon = (int)$item->created_date ? JHtml::_('date',$item->created_date, "Y-m-d H:i:s") : '---';
			//img
			$img = $item->ffolder ? $imgFolder : $imgFile;
			//fname
			$fname = $item->ffolder ? $item->fname : $item->fname.'.'.$item->ftype;
			?>
			<div class="ue-home-rec-docs">
				<span class="ue-home-docs-left">
				<?php echo $img; ?>
				<a class="ue-home-normal-link" href="<?php echo $link; ?>"><?php echo $fname; ?></a>
				</span>
				<span class="ue-home-docs-right"><?php echo $createdon; ?></span>
				<div style="clear:both;"></div>
			</div>
			<?php endforeach;
		endif; ?>
		
		<!-- view all documents -->
		<div class="ue-home-rec-top-title">
			&nbsp;»&nbsp;<a class="ue-home-normal-link" href="<?php echo JRoute::_('index.php?option=com_userextranet&view=folders'); ?>"><?php echo JText::_('COM_USEREXTRANET_VIEW_ALL'); ?></a>
		</div>
	</div>
	<?php endif; ?>
	
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
	<?php echo JHtml::_('form.token'); ?>
	</form>
</div>