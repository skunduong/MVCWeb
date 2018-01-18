<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="public/frontend/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="public/frontend/css/styles.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="public/frontend/js/jquery-1.7.1.min.js"></script>
    <title>Cửa hàng bé yêu</title>
    <link rel="stylesheet" href="public/frontend/css/paginate.css">
</head>

<body>
	<div id="wrapper">
    	<div id="header">
        	<div id="logo">
            	<a href="/"><img src="public/frontend/images/logo.jpg" title="Cửa hàng bé yêu" /></a>
            </div>
            <div id="top-nav">				
                <div id="info">
                	<p><span>Địa chỉ: Số 623, Hoàng Hoa Thám, Q. Ba Đình</span></p>
                	<p><span>Điện thoại:  04-3761 8738 - Hotline: 012345678</span></p>
                </div>
                <div id="menu">
                	<ul>
                    	<li><a href="index.php" class="actived"><span>Trang chủ</span></a></li>
                        <li><a href="#"><span>Giới thiệu</span></a></li>
                        <li><a href="index.php?controller=news"><span>Tin tức</span></a></li>
                        <li class="last"><a href="index.php?controller=contact"><span>Liên hệ</span></a></li>
                    </ul>
                </div>
            </div>
            <div class="search-bar">
            	<form method="get">
                	<div class="search-box">
    	            	<input type="text" placeholder="Nhập từ khóa tìm kiếm" />
						<a href="#"><img src="public/frontend/images/buttun-search.jpg" title="Tìm kiếm" /></a>
                    </div>
                    <div class="cart-message">
                    	
                    </div>
                </form>
            </div>
        </div>
        
        <div id="content">
        	<div class="hot-product">
            </div>
            
            <div class="left-col">
            
            	<?php 
                    include "controller/frontend/controller_category_product.php";
                 ?>
                <!-- support -->
                <?php 
                    include "controller/frontend/controller_support.php";
                 ?>
                <!-- end support -->
                <!-- box left -->
                <?php 
                    include "controller/frontend/controller_hotnews.php";
                 ?>
                <!-- box left -->
                
                
                <!-- box left -->
                <?php 
                    include "controller/frontend/controller_static.php";
                 ?>
                <!-- box left -->
                
                <!-- box left -->
                <?php 
                    include "controller/frontend/controller_adv_left.php";
                 ?>
                <!-- box left -->
                
            </div>
            
            
            <div class="right-col">
            	<?php 
                    include "controller/frontend/controller_adv_top.php";
                 ?>
            	<?php
                    if(file_exists("controller/frontend/".$controller))
                        include "controller/frontend/$controller";
                ?>
                
                <!-- quảng cáo -->
                <?php 
                    include "controller/frontend/controller_adv_bottom.php";
                 ?>
                <!-- hết quảng cáo -->                
               
                
            </div>
        </div>
        
        <div id="footer">
        	<div class="footer-c">
                <div class="quick-link">
                    <ul>
                        <li class="header">Quản lý tài khoản</li>
                        <li><a href="#">Tạo tài khoản</a></li>
                        <li><a href="#">Đăng nhập</a></li>
                        <li><a href="#">Thay đổi thông tin tài khoản</a></li>
                        <li><a href="#">Quên mật khẩu</a></li>
                        <li><a href="#">Lịch sử mua hàng</a></li>
                    </ul>
                    
                    <ul>
                        <li class="header">Trợ giúp</li>
                        <li><a href="#">Quy định sử dụng</a></li>
                        <li><a href="#">Hướng dẫn mua hàng</a></li>
                        <li><a href="#">Phương thức thanh toán</a></li>
                        <li><a href="#">Phương thức vận chuyển</a></li>
                        <li><a href="#">Câu hỏi thường gặp</a></li>
                    </ul>
                    
                    <ul>
                        <li class="header">Hỗ trợ khách hàng</li>
                        <li><a href="#">Mọi thắc mắc xin vui lòng liên hệ:</a></li>
                        <li><strong>Tel:</strong> 04.3761 8738</li>
                        <li><strong>Hotline:</strong>  0912 795 723</li>
                        <li><strong>Email:</strong>  lienhe@shoptretho.com.vn</li>
                        <li><strong>Website:</strong>  www.ShopTreTho.com.vn</li>
                    </ul>
                    
                    <ul>
                        <li class="header">Thông tin cửa hàng</li>
                        <li><a href="#">Về ShopTreTho.com.vn</a></li>
                        <li><a href="#">Tin tuyển dụng</a></li>
                        <li><a href="#">Báo chí viết</a></li>
                        <li><a href="#">Thông tin khuyến mại</a></li>
                        <li><a href="#"> Sơ đồ web</a></li>
                    </ul>
                </div>
                
                <div class="copyright">
                    <p>Bản quyền © 2009-2012 ShopTreTho.com.vn - Thiên đường cho Bé!</p>
                    <p><strong>Số 623, Hoàng Hoa Thám, Q. Ba Đình. Tel: 04-3761 8738</strong></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>