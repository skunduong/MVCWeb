<?php 
	class controller_add_edit_user extends controller{
		public function __construct(){
			parent::__construct();
			//------------
			$act = isset($_GET["act"]) ? $_GET["act"] : "";
			switch($act){
				case "edit":
					$id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"] : 0;
					//tao bien $form_action de dieu phoi action cua the html co ten la form
					$form_action = "admin.php?controller=add_edit_user&act=do_edit&id=$id";
					//lay ban ghi co id truyen vao
					$arr = $this->model->fetch_one("select * from tbl_user where pk_user_id=$id");
				break;
				case "do_edit":
					$id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"] : 0;
					$c_fullname = $_POST["c_fullname"];
					//goi ham de replace cac ky tu dac biet
					$c_fullname = $this->encode($c_fullname);
					//update ban ghi co id truyen vao
					$this->model->execute("update tbl_user set c_fullname='$c_fullname' where pk_user_id=$id");
					$c_password = $_POST["c_password"];
					if($c_password != ""){
						$c_password = md5($c_password);
						//update ban ghi co id truyen vao
						$this->model->execute("update tbl_user set c_password='$c_password' where pk_user_id=$id");						
					}
					header("location:admin.php?controller=user");
				break;
				case "add":
					$form_action = "admin.php?controller=add_edit_user&act=do_add";
				break;
				case "do_add":
					$c_email = $_POST["c_email"];
					$c_fullname = $_POST["c_fullname"];
					$c_password = $_POST["c_password"];
					$c_password = md5($c_password);
					//----------
					//encode
					$c_email = $this->encode($c_email);
					$c_fullname = $this->encode($c_fullname);
					//----------
					//insert ban ghi
					$this->model->execute("insert into tbl_user(c_email,c_fullname,c_password) values('$c_email','$c_fullname','$c_password')");
					header("location:admin.php?controller=user");
				break;
			}
			//------------
			//load view
			include "view/backend/view_add_edit_user.php";
		}
	}
	new controller_add_edit_user();
 ?>