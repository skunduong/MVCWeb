<div class="col-md-10 col-md-offset-1">
	<div style="margin-bottom: 5px;">
		<a href="admin.php?controller=add_edit_adv&act=add" class="btn btn-primary">Add</a>
	</div>
	<div class="panel panel-primary">
		<div class="panel-heading">adv</div>
		<div class="panel-body">
			<table class="table table-hover table-bordered">
				<tr>
					<th style="width: 100px;">Ảnh</th>
					<th>Email</th>
					<th style="width: 150px;"></th>
					<th style="width: 100px;"></th>
				</tr>
			<?php 
				foreach($arr as $rows)
				{
			 ?>
				<tr>
					<td style="text-align: center;">
					<?php if(file_exists("public/upload/adv/".$rows->c_img)){ ?>
					<img src="public/upload/adv/<?php echo $rows->c_img; ?>" style="width:100px;">
					<?php } ?>
					</td>
					<td><?php echo $rows->c_name; ?></td>
					<td style="text-align: center;">
						<?php 
							if($rows->c_position == 1)
								echo "Trái";
							else if($rows->c_position == 2)
								echo "Giữa trên";
							else
								echo "Giữa dưới";
						 ?>
					</td>
					<td style="text-align: center;">
						<a href="admin.php?controller=add_edit_adv&act=edit&id=<?php echo $rows->pk_adv_id; ?>">Edit</a>&nbsp;&nbsp;
						<a onclick="return window.confirm('Are you sure?');" href="admin.php?controller=adv&act=delete&id=<?php echo $rows->pk_adv_id; ?>">Delete</a>
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
				<li><a href="admin.php?controller=adv&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
				<?php } ?>
			</ul>
		</div>
	</div>
</div>