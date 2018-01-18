<?php 
	class controller_adv extends controller{
		public function __construct(){
			parent::__construct();
			//-------------
			//delete adv
			$act = isset($_GET["act"]) ? $_GET["act"] : "";
			switch($act){
				case "delete":
					$id = isset($_GET["id"])&&is_numeric($_GET["id"]) ? $_GET["id"] : 0;
					//------------------
					//lay anh cu de xoa
					$old_img = $this->model->fetch_one("select c_img from tbl_adv where pk_adv_id=$id");
					if(isset($old_img->c_img) && file_exists("public/upload/adv/".$old_img->c_img))
						unlink("public/upload/adv/".$old_img->c_img);
					//------------------
					//xoa ban ghi co id truyen vao
					$this->model->execute("delete from tbl_adv where pk_adv_id=$id");
					header("location:admin.php?controller=adv");
				break;
			}
			//-------------
			//quy dinh so ban ghi tren 1 trang
			$record_perpage = 4;
			//tinh tong so ban ghi
			$total = $this->model->num_rows("select * from tbl_adv");
			//Tinh so trang
			$num_page = ceil($total/$record_perpage);
			//lay bien p tu url (day la bien xac dinh vi tri trang)
			$page = isset($_GET["p"])&&$_GET["p"] > 1 ? ($_GET["p"]-1):0;
			//xac dinh so ban ghi can lay cho tung trang
			$from = $page * $record_perpage;
			//thuc hien lay ban ghi trong csdl co phan trang
			$arr = $this->model->fetch("select * from tbl_adv order by pk_adv_id desc limit $from,$record_perpage");
			//-------------
			//load view
			include "view/backend/view_adv.php";
		}
	}
	new controller_adv();
 ?>