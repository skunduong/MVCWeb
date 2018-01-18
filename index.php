<?php 
	//start session
	session_start();
	//load file config
	include "config.php";
	//load file model
	include "application/model.php";
	//load file controller
	include "application/controller.php";
	$controller = isset($_GET["controller"])&&$_GET["controller"]!="" ? "controller_".$_GET["controller"].".php":"controller_home.php";
	//load view
	include "view/frontend/view_layout.php";
 ?>