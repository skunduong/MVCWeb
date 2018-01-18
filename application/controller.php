<?php 
	class controller{
		//tao bien $model
		public $model;
		public function __construct(){
			//khoi tao bien $model la mot object cua class model(). Khi do bien $model cua class controller se co the tac dong duoc vao tat ca cac ham trong class model
			$this->model = new model();
		}
		//xay dung ham de replace cac ky tu dac biet
		public function encode($str){
			//replace cac ky tu dac biet
			$str = str_replace("'", "\'", $str);
			$str = str_replace("<", "&lt;", $str);
			$str = str_replace(">", "&gt;", $str);
			return $str;
		}
	}
 ?>