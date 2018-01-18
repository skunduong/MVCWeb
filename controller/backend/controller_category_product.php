<?php 
	class controller_category_product extends controller{
		public function __construct(){
			parent::__construct();
			//-------------
			//delete category_product
			$act = isset($_GET["act"]) ? $_GET["act"] : "";
			switch($act){
				case "delete":
					$id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"] : 0;
					//xoa ban ghi co id truyen vao
					$this->model->execute("delete from tbl_category_product where pk_category_product_id=$id");
					header("location:admin.php?controller=category_product");
				break;
			}
			//-------------
			//quy dinh so ban ghi tren 1 trang
			$record_perpage = 15;
			//tinh tong so ban ghi
			$total = $this->model->num_rows("select * from tbl_category_product");
			//Tinh so trang
			$num_page = ceil($total/$record_perpage);
			//lay bien p tu url (day la bien xac dinh vi tri trang)
			$page = isset($_GET["p"])&&$_GET["p"] > 1 ? ($_GET["p"]-1):0;
			//xac dinh so ban ghi can lay cho tung trang
			$from = $page * $record_perpage;
			//thuc hien lay ban ghi trong csdl co phan trang
			$arr = $this->model->fetch("select * from tbl_category_product order by pk_category_product_id desc limit $from,$record_perpage");
			//-------------
			//load view
			include "view/backend/view_category_product.php";
		}
	}
	new controller_category_product();
 ?>