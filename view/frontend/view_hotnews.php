<div class="box-container">
	<div class="box-left">
    	<div class="header">
        	<a href="#">Tin tức</a>
        </div>
        <div class="content">
        <marquee direction="up" scrollamount="2" scrolldelay="2" onmouseover="this.stop()" onmouseout="this.start()">
			<ul>
            <?php 
                foreach($arr as $rows)
                {
             ?>
            	<li><a href="index.php?controller=news_detail&id=<?php echo $rows->id; ?>"><?php echo $rows->c_name; ?></a></li>
            <?php } ?>
            </ul>
            </marquee>
        </div>
    </div>
</div>