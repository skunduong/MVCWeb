<?php 
	class controller_add_edit_category_product extends controller{
		public function __construct(){
			parent::__construct();
			$act = isset($_GET["act"]) ? $_GET["act"] : "";
			$form_action = "admin.php?controller=add_edit_category_product&act=add";
			switch($act){
				case "add":
					$form_action = "admin.php?controller=add_edit_category_product&act=do_add";
				break;
				case "do_add":
					$c_name = $this->encode($_POST["c_name"]);
					$this->model->execute("insert into tbl_category_product(c_name) values('$c_name')");
					header("location:admin.php?controller=category_product");
				break;
				case "edit":
					$id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"] : 0;
					$form_action = "admin.php?controller=add_edit_category_product&act=do_edit&id=$id";
					$arr = $this->model->fetch_one("select * from tbl_category_product where pk_category_product_id=$id");
				break;
				case "do_edit":
					$c_name = $this->encode($_POST["c_name"]);
					$id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"] : 0;
					$this->model->execute("update tbl_category_product set c_name='$c_name' where pk_category_product_id=$id");
					header("location:admin.php?controller=category_product");
				break;
			}
			include "view/backend/view_add_edit_category_product.php";
		}
	}
	new controller_add_edit_category_product();
 ?>