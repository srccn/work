<?php
/*
 * @package Joomla 2.5
 * @copyright Copyright (C) 2005 Open Source Matters. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL, see LICENSE.php
 *
 * @component UserExtranet 1.3
 * @copyright Copyright (C) 2013 Popa S. Alexandru www.beesto.com
 * @license : GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die('Restricted access');

?>

<form action="index.php" method="post" name="adminForm">

<?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>

	<div class="adminform">
		<div class="cpanel-icons">
			<div class="cpanel">
				<?php
				if ($this->ueACL->can('folders.view')):
				$link = 'index.php?option=com_userextranet&view=folders';
				$image = 'icon-48-ue-folders.png';
				$text = JText::_('COM_USEREXTRANET_FILES_AND_FOLDERS');
				echo '<div class="quickicon-wrapper"><div class="icon"><a href="'.$link.'">'.JHTML::_('image','administrator/components/com_userextranet/assets/images/menu/'.$image, $text).'<span>'.$text.'</span></a></div></div>';
				endif;
				
				if ($this->ueACL->can('permissions.view')):
				$link = 'index.php?option=com_userextranet&view=managepermissions';
				$image = 'icon-48-ue-managepermissions.png';
				$text = JText::_('COM_USEREXTRANET_PERMISSIONS');
				echo '<div class="quickicon-wrapper"><div class="icon"><a href="'.$link.'">'.JHTML::_('image','administrator/components/com_userextranet/assets/images/menu/'.$image, $text).'<span>'.$text.'</span></a></div></div>';
				endif;
				
				if ($this->ueACL->can('usergroups.view')):
				$link = 'index.php?option=com_userextranet&view=usergroups';
				$image = 'icon-48-ue-usergroups.png';
				$text = JText::_( 'COM_USEREXTRANET_USER_GROUPS' );
				echo '<div class="quickicon-wrapper"><div class="icon"><a href="'.$link.'">'.JHTML::_('image','administrator/components/com_userextranet/assets/images/menu/'.$image, $text).'<span>'.$text.'</span></a></div></div>';
				endif;
				
				if ($this->ueACL->can('staff.view')):
				$link = 'index.php?option=com_userextranet&view=staffs';
				$image = 'icon-48-ue-staff.png';
				$text = JText::_( 'COM_USEREXTRANET_STAFF' );
				echo '<div class="quickicon-wrapper"><div class="icon"><a href="'.$link.'">'.JHTML::_('image','administrator/components/com_userextranet/assets/images/menu/'.$image, $text).'<span>'.$text.'</span></a></div></div>';
				endif;
				
				if ($this->ueACL->can('downloads.view')):
				$link = 'index.php?option=com_userextranet&view=downloads';
				$image = 'icon-48-ue-downloads.png';
				$text = JText::_( 'COM_USEREXTRANET_DOWNLOADS' );
				echo '<div class="quickicon-wrapper"><div class="icon"><a href="'.$link.'">'.JHTML::_('image','administrator/components/com_userextranet/assets/images/menu/'.$image, $text).'<span>'.$text.'</span></a></div></div>';
				endif;
				
				if ($this->ueACL->can('messages.view')):
				$link = 'index.php?option=com_userextranet&view=messages';
				$image = 'icon-48-ue-messages.png';
				$text = JText::_( 'COM_USEREXTRANET_MESSAGES' );
				echo '<div class="quickicon-wrapper"><div class="icon"><a href="'.$link.'">'.JHTML::_('image','administrator/components/com_userextranet/assets/images/menu/'.$image, $text).'<span>'.$text.'</span></a></div></div>';
				endif;
				
				$link = 'index.php?option=com_userextranet&view=about';
				$image = 'icon-48-ue-about.png';
				$text = JText::_( 'COM_USEREXTRANET_ABOUT' );
				echo '<div class="quickicon-wrapper"><div class="icon"><a href="'.$link.'">'.JHTML::_('image','administrator/components/com_userextranet/assets/images/menu/'.$image, $text).'<span>'.$text.'</span></a></div></div>';
				?>
			</div>
			
			<div class="clearfix"></div>
			
			<!-- alerts -->
			<div class="ue-alerts">
				<table>
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
		</div>
		
		<div class="ueinfo">
			<div style="float:right;margin:10px;">
				<?php echo JHTML::_('image', 'administrator/components/com_userextranet/assets/images/content/logo-beesto.png', '', array() );?>
			</div>
			
			<h3><?php echo JText::_('COM_USEREXTRANET_VERSION');?></h3>
			<p>1.3</p>
			
			<h3><?php echo JText::_('COM_USEREXTRANET_COMPATIBILITY');?></h3>
			<p>Joomla 3.x</p>

			<h3><?php echo JText::_('COM_USEREXTRANET_COPYRIGHT');?></h3>
			<p>© 2009 - <?php echo date("Y"); ?> Popa Alexandru</p>

			<h3><?php echo JText::_('COM_USEREXTRANET_LICENSE');?></h3>
			<p><a href="http://www.gnu.org/licenses/gpl-2.0.html" target="_blank">GPLv2</a></p>
			
			<h3><?php echo JText::_('COM_USEREXTRANET_WEBSITE');?></h3>
			<p><a href="http://www.beesto.com/" target="_blank">www.beesto.com</a></p>
			
			<p>
			Share your UserExtranet experience with Joomla community members and write a review or vote us on <a style="color: #FF0000;" href="http://extensions.joomla.org/extensions/access-a-security/site-access/content-restriction/26550" target="_blank">JED - Joomla! Extensions Directory</a>
			</p>
			
			<p>&nbsp;</p>
		</div>
	</div>

	<input type="hidden" name="option" value="com_userextranet" />
	<input type="hidden" name="view" value="userextranet" />
	<?php echo JHtml::_('form.token'); ?>
</div>
</form>