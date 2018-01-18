<?php
	class controller_adv_top extends controller{
		public function __construct(){
			parent::__construct();
			//lay cac ban ghi tu table tbl_adv co c_position=2 (giua tren)
			$arr = $this->model->fetch("select * from tbl_adv where c_position = 2 order by pk_adv_id desc");
			//load view
			include "view/frontend/view_adv_top.php";
		}
	}
	new controller_adv_top();
 ?>