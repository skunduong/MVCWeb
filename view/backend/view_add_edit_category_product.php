<div class="col-md-10 col-md-offset-1">
	<div class="panel panel-primary">
		<div class="panel-heading">Add edit category product</div>
		<div class="panel-body">
			<form method="post" action="<?php echo $form_action ?>">
				<!-- row -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-2">Category name</div>
						<div class="col-md-10">
							<input type="text" required class="form-control" value="<?php echo isset($arr->c_name)?$arr->c_name:""; ?>" name="c_name">
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