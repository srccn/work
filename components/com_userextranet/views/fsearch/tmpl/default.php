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

//jimport('joomla.application.component.helper');

JHtml::_('behavior.keepalive');
JHtml::_('behavior.tooltip');
JHtml::_('behavior.formvalidation');

//icons
$imgFile = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-16-ue-file.png', '', array('width'=>'16', 'height'=>'16', 'border'=>'0', 'style'=>'float:left;margin: 0 3px 0 0;'));
$imgFolder = JHTML::_( 'image', 'components/com_userextranet/assets/images/icon-20-ue-folder.png', '', array('width'=>'20', 'height'=>'20', 'border'=>'0', 'style'=>'float:left;margin: 0 3px 0 0;'));

$user = JFactory::getUser();
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
		<?php echo JText::_('COM_USEREXTRANET_SEARCH'); ?>
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
	
	<form action="<?php echo JRoute::_('index.php?option=com_userextranet&view=fsearch'); ?>" method="post" name="adminForm" id="adminForm">
	
	<!-- total results found -->
	<div class="ue-fsearch-results-total">
		<?php echo JText::_('COM_USEREXTRANET_TOTAL').': '.$this->total.' '.JText::_('COM_USEREXTRANET_RESULTS_FOUND'); ?>
	</div>
	
	<div style="clear:both;"></div>
	
	<!-- case results -->
	<?php if ( $this->total ) : ?>
	<div class="ue-fsearch-results-list">
		<div class="ue-fsearch-rec-top-title">
			<span class="ue-fsearch-rec-top-right"><i><?php echo JText::_('COM_USEREXTRANET_DATE_ADDED'); ?></i></span>
			<div style="clear:both;"></div>
		</div>
		<?php foreach ($this->items as $i => $item) :
		//doc url
		if ( $item->ffolder ) {
			$link = JRoute::_('index.php?option=com_userextranet&view=folders&fid='.(int)$item->id);
		}
		else {
			$link = JRoute::_('index.php?option=com_userextranet&view=file&layout=default&id='.(int)$item->id.'&pid='.(int)$item->pid);
		}
		//preview length
		$filter = JFilterInput::getInstance();
		$content = $filter->clean($item->fdesc, 'html');
		$preview = ( strlen($content) <= $this->preview_length ) ? $content : substr($content, 0, $this->preview_length).' ...';
		$preview = str_replace($this->keyword, '<span class="ue-highlight">'.$this->keyword.'</span>', $preview);
		//fname
		$fname = $item->ffolder ? $item->fname : $item->fname.'.'.$item->ftype;
		$fname = str_replace($this->keyword, '<span class="ue-highlight">'.$this->keyword.'</span>', $fname);
		//image
		$img = $item->ffolder ? $imgFolder : $imgFile;
		//date
		$date = (int)$item->created_date ? JHtml::_('date',$item->created_date, "Y-m-d H:i:s") : '---';
		?>
		<div class="ue-fsearch-rec-docs">
			<span class="ue-fsearch-docs-left">
				<?php echo $img; ?>
				<a class="ue-fsearch-normal-link" href="<?php echo $link; ?>"><?php echo $fname; ?></a>
			</span>
			<span class="ue-fsearch-docs-right">
				<?php echo $date; ?>
			</span>
			<div style="clear:both;"></div>
		</div>
		<div class="ue-fsearch-doc-content">
			<?php echo $preview; ?>
		</div>
		<?php endforeach; ?>
	</div>
	<!-- case no results -->
	<?php else : ?>
	<div class="ue-fsearch-no-result">
		<?php echo JText::_('COM_USEREXTRANET_TRY_BROWSING') ?>
		<a class="ue-fsearch-normal-link" href="<?php echo JRoute::_('index.php?option=com_userextranet&view=folders'); ?>"><?php echo JText::_('COM_USEREXTRANET_DOCUMENTS'); ?></a>
	</div>
	<?php endif; ?>
	<input type="hidden" name="task" value="" />
	<input type="hidden" name="returnurl" value="<?php echo $this->returnurl; ?>" />
	<?php echo JHtml::_('form.token'); ?>
	</form>
</div>	