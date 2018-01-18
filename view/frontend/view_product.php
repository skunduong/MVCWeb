<!-- hàng khuyến mãi -->
            	<div class="box-container">
                	<div class="box-home box-product">
						<div class="header">
                            <div class="promote">
                                <a href="#"><span>
<?php 
    //lay ten danh muc san pham
    $category = $this->model->fetch_one("select c_name from tbl_category_product where pk_category_product_id = $id");
    echo isset($category->c_name)?$category->c_name:"";
 ?>
                                </span></a>
                            </div>
                        </div>
                        <div class="content">
                        	<ul>
                            <?php 
                                foreach($arr as $rows)
                                {
                             ?>
                            	<li>
            	<div class="image">
                	<a href="index.php?controller=product_detai&id=<?php echo $rows->pk_product_id; ?>" class="jt" title="Ghế rung Fisher Price P0107" style="background:url(public/upload/product/<?php echo $rows->c_img ?>) no-repeat 50% 50%">
                    	<span class="label"></span>
                    </a>
                </div>
                <div class="info">
                	<p><a href="index.php?controller=product_detai&id=<?php echo $rows->pk_product_id; ?>" class="jt" ><?php echo $rows->c_name; ?></a></p>
					<p><strong>Giá:</strong> <strong class="price"><?php echo number_format($rows->pk_product_id); ?> VNĐ</strong></p>
                </div>
                                </li>
                             <?php } ?>   
                                
                                
                            </ul>

                        </div>
                    </div>
                </div>
                <!-- paging -->
                <div class="pagination" style="padding-top:20px; padding-bottom:20px;">
                <ul>
                <li><a href="#" class="prevnext disablelink">Trang</a></li>
                <?php 
                    for($i = 1; $i <= $num_page; $i++)
                    {
                 ?>
                <li><a href="index.php?controller=product&id=<?php echo $id; ?>&p=<?php echo $i; ?>"><?php echo $i; ?></a></li>
                <?php } ?>
                </ul>
                </div>
                <!-- end paging -->
                <div style="margin-bottom: 10px;"></div>
                <!-- hết hàng khuyến mãi-->