<?php 
	class controller_home extends controller{
		public function __construct(){
			parent::__construct();
			//-----------
			//san pham noi bat co c_hotproduct=1, lay 8 san pham
			$sanphamnoibat = $this->model->fetch("select * from tbl_product where c_hotproduct=1 order by pk_product_id desc limit 0,8");
			//-----------
			//lay 8 san pham moi nhat
			$sanphammoi = $this->model->fetch("select * from tbl_product order by pk_product_id desc limit 0,8");
			//-----------
			//load view
			include "view/frontend/view_home.php";
		}
	}
	new controller_home();
 ?>