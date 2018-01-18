<div class="col-md-10 col-md-offset-1">
	<div style="margin-bottom: 5px;">
		<a href="admin.php?controller=add_edit_user&act=add" class="btn btn-primary">Add</a>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">User</div>
		<div class="panel-body">
			<table class="table table-hover table-bordered">
				<tr>
					<th>Họ và tên</th>
					<th>Email</th>
					<th style="width: 100px;"></th>
				</tr>
			<?php 
				foreach($arr as $rows)
				{
			 ?>
				<tr>
					<td><?php echo $rows->c_fullname; ?></td>
					<td><?php echo $rows->c_email; ?></td>
					<td style="text-align: center;">
						<a href="admin.php?controller=add_edit_user&act=edit&id=<?php echo $rows->pk_user_id; ?>">Edit</a>&nbsp;&nbsp;
						<a onclick="return window.confirm('Are you sure?');" href="admin.php?controller=user&act=delete&id=<?php echo $rows->pk_user_id; ?>">Delete</a>
					</td>
				</tr>
			<?php } ?>
			</table>
			<ul class="pagination">
				<li class="active"><a href="#">Trang</a></li>
				<?php 
					for($i = 1; $i <= $num_page; $i++)
					{
				 ?>
				<li><a href="admin.php?controller=user&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>