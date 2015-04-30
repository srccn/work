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

// No direct access
defined('_JEXEC') or die;

jimport( 'joomla.application.component.view' );

class UserExtranetViewDownload extends JViewLegacy
{
	function display($tpl = null) {
		$dlid = JRequest::getVar('id', 0, 'get', 'int');
		$model = $this->getModel();
		$basename		= $model->getBaseName($attid);
		$filetype		= $model->getFileType($attid);
		$mimetype		= $model->getMimeType($attid);
		$content		= $model->getContent($attid);

		// Check for errors.
		if (count($errors = $this->get('Errors'))) {
			JError::raiseError(500, implode("\n", $errors));
			return false;
		}

		$document = JFactory::getDocument();
		$document->setMimeEncoding($mimetype);
		JResponse::setHeader('Content-disposition', 'attachment; filename="'.$basename.'.'.$filetype.'"; creation-date="'.JFactory::getDate()->toRFC822().'"', true);
		echo $content;
	}
}