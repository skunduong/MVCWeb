<?php 
	class controller_add_edit_adv extends controller{
		public function __construct(){
			parent::__construct();
			//------------
			$act = isset($_GET["act"])?$_GET["act"]:"";
			switch($act){
				case "edit":
					$id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
					$form_action = "admin.php?controller=add_edit_adv&act=do_edit&id=$id";
					$arr = $this->model->fetch_one("select * from tbl_adv where pk_adv_id=$id");
				break;
				case "do_edit":
					$id = isset($_GET["id"])&&is_numeric($_GET["id"])?$_GET["id"]:0;
					$c_name = $this->encode($_POST["c_name"]);
					$c_position = $this->encode($_POST["c_position"]);
					$c_img = $_FILES["c_img"]["name"];
					$this->model->execute("update tbl_adv set c_name='$c_name',c_position=$c_position where pk_adv_id=$id");
					if($c_img != ""){
						$old_img = $this->model->fetch_one("select c_img from tbl_adv where pk_adv_id=$id");
						if(isset($old_img->c_img) && file_exists("public/upload/adv/".$old_img->c_img))
							unlink("public/upload/adv/".$old_img->c_img);
						$c_img = time().$c_img;
						move_uploaded_file($_FILES["c_img"]["tmp_name"], "public/upload/adv/$c_img");
						$this->model->execute("update tbl_adv set c_img='$c_img' where pk_adv_id=$id");
					}
					header("location:admin.php?controller=adv");
				break;
				case "add":
					$form_action = "admin.php?controller=add_edit_adv&act=do_add";
				break;
				case "do_add":
					$c_name = $this->encode($_POST["c_name"]);
					$c_position = $this->encode($_POST["c_position"]);
					$c_img = $_FILES["c_img"]["name"];
					if($c_img != ""){
						move_uploaded_file($_FILES["c_img"]["tmp_name"], "public/upload/adv/$c_img");
					}
					$this->model->execute("insert into tbl_adv(c_name,c_position,c_img) values('$c_name',$c_position,'$c_img')");
					header("location:admin.php?controller=adv");
				break;
				case "default":
					$form_action = "admin.php?controller=add_edit_adv&act=do_add";
				break;
			}
			include "view/backend/view_add_edit_adv.php";
		}
	}
	new controller_add_edit_adv();
 ?>