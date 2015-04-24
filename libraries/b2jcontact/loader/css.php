<?php defined('_JEXEC') or die('Restricted access');

/* ------------------------------------------------------------------------
 * Bang2Joom Contact for Joomla 3.0+
 * ------------------------------------------------------------------------
 * Copyright (C) 2011-2013 Bang2Joom. All Rights Reserved.
 * Fork of Fox Contact by Fox Joomla Extensions
 * @license - GNU/GPL, http://www.gnu.org/licenses/gpl.html
 * Author: Bang2Joom
 * Websites: http://www.bang2joom.com
  ------------------------------------------------------------------------
 */

require_once "loader.php";

class cssLoader extends Loader
{
	protected function type()
	{
		return "css";
	}

	protected function http_headers()
	{
		header('Content-Type: text/css; charset=utf-8');
	}

	protected function content_header()
	{

	}

	protected function content_footer()
	{

	}
}


