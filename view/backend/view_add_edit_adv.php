<div class="col-md-10 col-md-offset-1">
	<div class="panel panel-primary">
		<div class="panel-heading">Add edit Adv</div>
		<div class="panel-body">
			<form method="post" enctype="multipart/form-data" action="<?php echo $form_action ?>">
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2">Tên</div>
						<div class="col-md-10">
							<input type="text" value="<?php echo isset($arr->c_name)?$arr->c_name:""; ?>" class="form-control" name="c_name" required>
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2">Vị trí</div>
						<div class="col-md-10">
							<select name="c_position">
							<option <?php echo isset($arr->c_position)&&$arr->c_position==1?"selected":""; ?> value="1">Vị trí bên trái</option>
							<option <?php echo isset($arr->c_position)&&$arr->c_position==2?"selected":""; ?> value="2">Vị trí giữa trên</option>
							<option <?php echo isset($arr->c_position)&&$arr->c_position==3?"selected":""; ?> value="3">Vị trí giữa dưới</option>
							</select>
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-10">
							<input type="file" name="c_img">
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-10">
				<?php if(isset($arr->c_img)&&file_exists("public/upload/adv/".$arr->c_img)){ ?>
				<img src="public/upload/adv/<?php echo $arr->c_img; ?>" style="width:100px;">
				<?php } ?>
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2"></div>
						<div class="col-md-10">
							<input type="submit" value="Process" class="btn btn-primary"> 
							<input type="reset" value="Reset" class="btn btn-danger">
						</div>
					</div>
				</div>
				<!-- end row -->
			</form>
		</div>
	</div>
</div>