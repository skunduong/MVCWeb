<?php 
	//class controller_login ke thua class controller de co the tac dong vao cac ham cua class model
	class controller_login extends controller{
		public function __construct(){
			//goi ham __construct cua class controller de khoi tao bien $model la object cua class model, de tu bien $model nay co the goi cac ham trong class model
			parent::__construct();
			//-------------
			if($_SERVER["REQUEST_METHOD"] == "POST"){
				$c_email = $_POST["c_email"];
				$c_password = $_POST["c_password"];
				//lay 1 ban ghi co email truyen vao
				$arr = $this->model->fetch_one("select c_email,c_password from tbl_user where c_email='$c_email'");
				//kiem tra xem password cua ban ghi vua lay ra co trung voi password nhap vao khong
				if(isset($arr->c_email)){
					$c_password = md5($c_password);
					if($arr->c_password == $c_password){
						//dang nhap thanh cong
						$_SESSION["c_email"] = $c_email;
						header("location:admin.php");
					}else{
						//dang nhap khong thanh cong
						header("location:admin.php?action=invalid");
					}
				}else{
					//dang nhap khong thanh cong
					header("location:admin.php?action=invalid");
				}
			}
			//-------------
			//load view
			include "view/backend/view_login.php";
		}
	}
	new controller_login();
 ?>