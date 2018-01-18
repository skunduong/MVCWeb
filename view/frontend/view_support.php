<div class="support">
<?php 
	foreach($arr as $rows)
	{
 ?>
    <div class="support_title"><?php echo $rows->c_name; ?></div>
    <div>
        <?php echo $rows->c_phone; ?>
    </div>
<?php } ?>
    

</div>