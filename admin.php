<?php 
	session_start();
	include "config.php";
	include "application/model.php";
	include "application/controller.php";
	if(isset($_SESSION["c_email"]) == false){
		include "controller/backend/controller_login.php";
	}else{		
		$controller = isset($_GET["controller"])&&$_GET["controller"]!="" ? "controller_".$_GET["controller"].".php":"controller_home.php";
		include "view/backend/view_layout.php";
	}
 ?>