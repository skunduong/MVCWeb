<?php 
	class controller_category_product extends controller{
		public function __construct(){
			parent::__construct();
			//lay cac ban ghi tu table tbl_category_product
			$arr = $this->model->fetch("select * from tbl_category_product");
			//load view
			include "view/frontend/view_category_product.php";
		}
	}
	new controller_category_product();
 ?>