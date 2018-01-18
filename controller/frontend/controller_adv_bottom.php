<?php 
	class controller_adv_bottom extends controller{
		public function __construct(){
			parent::__construct();
			$arr = $this->model->fetch("select * from tbl_adv where c_position = 3 order by pk_adv_id desc");
			include "view/frontend/view_adv_bottom.php";
		}
	}
	new controller_adv_bottom();
 ?>