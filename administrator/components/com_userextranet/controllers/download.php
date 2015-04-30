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

defined( '_JEXEC' ) or die;
ini_set('memory_limit', '1024M');
jimport('joomla.application.component.controllerform');

class UserExtranetControllerDownload extends JControllerForm
{
	public function download_file () {
		// Check for request forgeries.
		JRequest::checkToken() or jexit(JText::_('JINVALID_TOKEN'));
		
		// Get the post data.
		$dl = JRequest::getVar('dl', 0, 'post', 'int');
		$return = base64_decode(JRequest::getVar('returnurl', '', 'post', 'BASE64'));
		
		//get file data
		$model = $this->getModel();
		if(!$file = $model->getFile($dl)) {
			JError::raiseWarning( 100, JText::_( 'COM_USEREXTRANET_ERROR_DOWNLOADING_FILE' ));
		}
		else {
			//store download
			$model->storeDownload($dl);
			
			//file output
			clearstatcache();
			header('Pragma: public');
			header('Expires: 0');
			header('Cache-Control: must-revalidate, post-check=0, pre-check=0');
			header('Cache-Control: public');
			header('Content-Description: File Transfer');
			header('Content-Type: '.$file->mimetype);
			header('Content-Disposition: attachment; filename="'.$file->basename.'.'.$file->type.'"; creation-date="'.JFactory::getDate()->toRFC822().'"');
			header('Content-Transfer-Encoding: binary');
			if (!isset($_SERVER['HTTP_ACCEPT_ENCODING']) OR empty($_SERVER['HTTP_ACCEPT_ENCODING'])) {
				// the content length may vary if the server is using compression
				header('Content-Length: '.strlen($file->size));
			}
			ob_clean();
			flush();
			echo $file->content;
			ob_flush();
			flush();  
			exit();
		}
		
		$this->setRedirect( JRoute::_($return) );
	}
}