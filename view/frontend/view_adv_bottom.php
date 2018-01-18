<div class="box-ads">
	<ul>
	<?php 
		foreach($arr as $rows)
		{
	 ?>
    	<li><a href="#"><img src="public/upload/adv/<?php echo $rows->c_img; ?>" style="width:735px; padding:2px; background:#fff; border:1px solid #ccc;"  title="<?php echo $rows->c_name; ?>"/></a></li>
    <?php } ?>
    </ul>
</div>