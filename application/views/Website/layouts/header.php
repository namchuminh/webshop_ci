<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title><?php echo $config[0]['TenWebsite']; ?> - <?php echo $title; ?></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<?php echo $config[0]['Logo']; ?>">
    
    <!-- CSS
	============================================ -->
   
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url('public/website/'); ?>css/bootstrap.min.css">
    
    <!-- Icon Font CSS -->
    <link rel="stylesheet" href="<?php echo base_url('public/website/'); ?>css/icon-font.min.css">
    
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="<?php echo base_url('public/website/'); ?>css/plugins.css">
    
    <!-- Helper CSS -->
    <link rel="stylesheet" href="<?php echo base_url('public/website/'); ?>css/helper.css">
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="<?php echo base_url('public/website/'); ?>css/style.css">
    
    <!-- Modernizer JS -->
    <script src="<?php echo base_url('public/website/'); ?>js/vendor/modernizr-3.11.2.min.js"></script>
</head>

<body>

<div class="main-wrapper">

    <!-- Header Section Start -->
    <div class="header-section section">

        <!-- Header Top Start -->
        <div class="header-top header-top-one bg-theme-two">
            <div class="container-fluid">
                <div class="row align-items-center justify-content-center">

                    <div class="col mt-10 mb-10 d-none d-md-flex">
                        <!-- Header Top Left Start -->
                        <div class="header-top-left">
                            <p>Xin chào khách hàng!</p>
                            <p>Điện thoại: <a href="tel:<?php echo $config[0]['SoDienThoai']; ?>"><?php echo $config[0]['SoDienThoai']; ?></a></p>
                        </div><!-- Header Top Left End -->
                    </div>

                    <div class="col mt-10 mb-10">
                        <!-- Header Shop Links Start -->
                        <div class="header-top-right">
                            <p><a href="login-register.html">ĐĂNG NHẬP</a><a href="login-register.html">ĐĂNG KÝ</a></p>
                        </div><!-- Header Shop Links End -->
                    </div>

                </div>
            </div>
        </div><!-- Header Top End -->

        <!-- Header Bottom Start -->
        <div class="header-bottom header-bottom-one header-sticky">
            <div class="container-fluid">
                <div class="row menu-center align-items-center justify-content-between">

                    <div class="col mt-15 mb-15">
                        <!-- Logo Start -->
                        <div class="header-logo">
                            <a href="<?php echo base_url(); ?>">
                                <img src="<?php echo $config[0]['ThuongHieu']; ?>" alt="Jadusona">
                            </a>
                        </div><!-- Logo End -->
                    </div>

                    <div class="col order-2 order-lg-3">
                        <!-- Header Advance Search Start -->
                        <div class="header-shop-links">

                            <div class="header-search">
                                <button class="search-toggle"><img src="<?php echo base_url('public/website/'); ?>images/icons/search.png" alt="Search Toggle"><img class="toggle-close" src="<?php echo base_url('public/website/'); ?>images/icons/close.png" alt="Search Toggle"></button>
                                <div class="header-search-wrap">
                                    <form action="<?php echo base_url('tim-kiem/') ?>">
                                        <input name="s" required type="text" placeholder="Nhập tên sản phẩm...">
                                        <button><img src="<?php echo base_url('public/website/'); ?>images/icons/search.png" alt="Tìm kiếm"></button>
                                    </form>
                                </div>
                            </div>

                            <div class="header-wishlist">
                                <a href="wishlist.html"><img src="<?php echo base_url('public/website/'); ?>images/icons/wishlist.png" alt="Wishlist"> <span>02</span></a>
                            </div>

                            <div class="header-mini-cart">
                                <a href="cart.html"><img src="<?php echo base_url('public/website/'); ?>images/icons/cart.png" alt="Cart"> <span>02($250)</span></a>
                            </div>

                        </div><!-- Header Advance Search End -->
                    </div>

                    <div class="col order-3 order-lg-2">
                        <div class="main-menu">
                            <nav>
                                <ul>
                                    <li class="active"><a href="<?php echo base_url(); ?>">TRANG CHỦ</a>
                                    </li>
                                    <li>
                                    	<a href="<?php echo base_url('san-pham/'); ?>">SẢN PHẨM</a>
                                    </li>
                                    <li><a href="<?php echo base_url('chuyen-muc/'); ?>">CHUYÊN MỤC</a>
                                    </li>
                                    <li>
                                    	<a href="<?php echo base_url('tin-tuc/'); ?>">TIN TỨC</a>
                                    </li>
                                    <li><a href="<?php echo base_url('lien-he/'); ?>">LIÊN HỆ</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>

                    <!-- Mobile Menu -->
                    <div class="mobile-menu order-4 d-block d-lg-none col"></div>

                </div>
            </div>
        </div><!-- Header BOttom End -->