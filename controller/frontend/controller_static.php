<?php 
	class controller_static extends controller{
		public function __construct(){
			parent::__construct();
			if(isset($_SESSION["visited"]) == false){
				$this->model->execute("update tbl_static set visited = visited + 1");
				$_SESSION["visited"] = true;
			}
			$sotruycap = $this->model->fetch_one("select * from tbl_static");
			$timeout = time() + 5;
			$id = session_id();
			$check = $this->model->fetch_one("select * from tbl_useronline where session_id='$id'");
			if(isset($check->session_id)){
				$thoidiemmoinhat = time();
				$this->model->execute("update tbl_useronline set thoidiemtruycap=$thoidiemmoinhat");
			}else{
				$thoidiemmoinhat = time();
				$this->model->execute("insert into tbl_useronline(session_id,thoidiemtruycap) values('$id',$thoidiemmoinhat)");
			}
			$thoidiemhientai = time();
			$this->model->execute("delete from tbl_useronline where $thoidiemhientai-thoidiemtruycap > $timeout");
			$useronline = $this->model->num_rows("select * from tbl_useronline");
			include "view/frontend/view_static.php";
		}
	}
	new controller_static();
 ?>