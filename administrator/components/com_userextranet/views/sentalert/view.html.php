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

// No direct access.
defined('_JEXEC') or die;

jimport('joomla.application.component.view');

class UserExtranetViewSentalert extends JViewLegacy
{
	protected $item;
	
	public function display($tpl = null)
	{
		$app = JFactory::getApplication();
		
		$this->item		= $this->get('Item');
		
		$this->uri = JFactory::getUri();
		$this->returnurl = base64_encode($this->uri);
		
		//automatically mark as read
		$model = $this->getModel();
		$model->publish(array($this->item->id), 1);
		
		$this->item->atext = htmlentities($this->item->atext);
		
		//css
		JHtml::stylesheet( 'administrator/components/com_userextranet/assets/css/userextranet.css' );
		
		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}
		
		parent::display($tpl);
	}
}
