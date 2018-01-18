<div class="col-md-10 col-md-offset-1">
	<div class="panel panel-primary">
		<div class="panel-heading">Add edit user</div>
		<div class="panel-body">
			<form method="post" action="<?php echo $form_action ?>">
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-1">Email</div>
						<div class="col-md-11"><input type="text" name="c_email" class="form-control" <?php echo isset($arr->c_email)?"disabled":"required"; ?> value="<?php echo isset($arr->c_email)?$arr->c_email:""; ?>"></div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-1">Password</div>
						<div class="col-md-11">
<input type="password" <?php echo isset($arr->c_email)?"placeholder='Nhập password mới nếu muốn đổi password'":"required"; ?> name="c_password" class="form-control">
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-1">Fullname</div>
						<div class="col-md-11">
							<input type="text" name="c_fullname" value="<?php echo isset($arr->c_fullname)?$arr->c_fullname:""; ?>" class="form-control">
						</div>
					</div>
				</div>
				<!-- end row -->
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-1"></div>
						<div class="col-md-11">
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