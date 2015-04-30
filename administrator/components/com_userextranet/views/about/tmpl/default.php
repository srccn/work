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

defined('_JEXEC') or die('Restricted access');?>

<form action="index.php" method="post" name="adminForm">
<?php if (!empty( $this->sidebar)) : ?>
	<div id="j-sidebar-container" class="span2">
		<?php echo $this->sidebar; ?>
	</div>
	<div id="j-main-container" class="span10">
<?php else : ?>
	<div id="j-main-container">
<?php endif;?>
<table>
<tbody>
	<tr>
		<td>
			<blockquote>
				<span style="color: #177DBB; font-size: 26px; font-family: Georgia,Verdana; font-weight: bold;">UserExtranet</span>
				<br />
				<br />
				<p>Version: 1.3</p>
				<p>Authors: Popa S. Alexandru</p>
				<p>Website: <a href="http://www.beesto.com" target="_blank">http://www.beesto.com</a></p>
				<p>Forum: <a href="http://beesto.com/forum/list.php?30" target="_blank">http://beesto.com/forum/list.php?30</a></p>
				<p>Tickets: <a href="http://beesto.com/index.php/help-desk?view=ticket" target="_blank">http://beesto.com/index.php/help-desk?view=ticket</a></p>
			</blockquote>
		</td>
		<td valign="top" align="right">
			<?php echo JHTML::_('image', 'administrator/components/com_userextranet/assets/images/content/logo-beesto.png', '', array() );?>
		</td>
	</tr>
</tbody>
</table>

<input type="hidden" name="option" value="com_userextranet" />
<input type="hidden" name="task" value="" />
<input type="hidden" name="controller" value="about" />
</div>
</form>