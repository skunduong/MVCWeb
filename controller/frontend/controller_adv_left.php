<?php 
	class controller_adv_left extends controller{
		public function __construct(){
			parent::__construct();
			//lay cac ban ghi tu table tbl_adv co c_position=1 (vi tri trai)
			$arr = $this->model->fetch("select * from tbl_adv where c_position=1 order by pk_adv_id desc");
			//load view
			include "view/frontend/view_adv_left.php";
		}
	}
	new controller_adv_left();
 ?>