<?php 
	//file config.php
	$hostname = "localhost";
	$username = "root";
	$password = "kitagoa1";
	$database = "mvcweb";
	$db = mysqli_connect($hostname,$username,$password,$database);
	mysqli_set_charset($db,"UTF8");
 ?>