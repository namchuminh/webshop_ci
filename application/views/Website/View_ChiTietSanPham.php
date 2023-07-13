<?php require(__DIR__.'/layouts/header.php'); ?>

<div class="page-banner-section section">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1><?php echo $detail[0]['TenSanPham']; ?></h1>
                <ul class="page-breadcrumb">
                    <li><a href="<?php echo base_url(); ?>" style="font-family: system-ui;">Trang Chủ</a></li>
                    <li><a href="<?php echo base_url('san-pham'); ?>" style="font-family: system-ui;">Sản Phẩm</a></li>
                    <li><a style="font-family: system-ui;"><?php echo $detail[0]['TenSanPham']; ?></a></li>
                </ul>

            </div>
        </div>
    </div>
</div>

<div class="page-section section section-padding">
        <div class="container">
            <div class="row row-30 mbn-40">

                <div class="col-xl-9 col-lg-8 col-12 order-1 order-lg-2 mb-40">
                    <div class="row row-20">

                        <div class="col-lg-6 col-12 mb-40">

                            <div class="pro-large-img mb-10 fix easyzoom easyzoom--overlay easyzoom--with-thumbnails">
                                <a style="height: 420px" href="<?php echo $detail[0]['duongdananh']; ?>">
                                    <img style="height: 100%;" src="<?php echo $detail[0]['duongdananh']; ?>" alt=""/>
                                </a>
                            </div>
                            <!-- Single Product Thumbnail Slider -->
                            <ul id="pro-thumb-img" class="pro-thumb-img">
                                <li><a style="height: 100px;" href="<?php echo $detail[0]['duongdananh']; ?>" data-standard="<?php echo $detail[0]['duongdananh']; ?>"><img style="height: 100%;" src="<?php echo $detail[0]['duongdananh']; ?>" alt="" /></a></li>
                                <li><a style="height: 100px;" href="<?php echo $detail[1]['duongdananh']; ?>" data-standard="<?php echo $detail[1]['duongdananh']; ?>"><img style="height: 100%;" src="<?php echo $detail[1]['duongdananh']; ?>" alt="" /></a></li>
                                <li><a style="height: 100px;" href="<?php echo $detail[2]['duongdananh']; ?>" data-standard="<?php echo $detail[2]['duongdananh']; ?>"><img style="height: 100%;" src="<?php echo $detail[2]['duongdananh']; ?>" alt="" /></a></li>
                                <li><a style="height: 100px;" href="<?php echo $detail[3]['duongdananh']; ?>" data-standard="<?php echo $detail[3]['duongdananh']; ?>"><img style="height: 100%;" src="<?php echo $detail[3]['duongdananh']; ?>" alt="" /></a></li>
                                <li><a style="height: 100px;" href="<?php echo $detail[0]['duongdananh']; ?>" data-standard="<?php echo $detail[0]['duongdananh']; ?>"><img style="height: 100%;" src="<?php echo $detail[0]['duongdananh']; ?>" alt="" /></a></li>
                            </ul>
                        </div>

                        <div class="col-lg-6 col-12 mb-40">
                            <div class="single-product-content">

                                <div class="head">
                                    <div class="head-left">

                                        <h3 class="title"><?php echo $detail[0]['TenSanPham']; ?></h3>

                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>

                                    </div>

                                    <div class="head-right">
                                        <span class="price"><?php echo number_format($detail[0]['GiaBan']); ?>đ</span>
                                    </div>
                                </div>

                                <div class="description">
                                    <p><?php echo $detail[0]['MoTaNgan']; ?></p>
                                </div>

                                <span class="availability">Trạng Thái: <span>Còn <?php echo $detail[0]['SoLuong']; ?> Sản Phẩm</span></span>

                                <div class="quantity-colors">

                                    <div class="quantity">
                                        <h5>Số Lượng:</h5>
                                        <div class="pro-qty"><input type="text" value="1"></div>
                                    </div>                            

                                    <div class="colors">
                                        <h5>Màu Sắc:</h5>
                                        <div class="color-options">
                                            <button style="background-color: #ff502e"></button>
                                            <button style="background-color: #fff600"></button>
                                            <button style="background-color: #1b2436"></button>
                                        </div>
                                    </div>                            

                                </div>

                                <div class="actions">

                                    <button><i class="ti-shopping-cart"></i><span>THÊM GIỎ HÀNG</span></button>
                                    <button class="box" data-tooltip="Wishlist"><i class="ti-heart"></i></button>

                                </div>

                                <div class="tags">
                                    <h5>Thẻ:</h5>
                                    <?php $tag = explode(',',$detail[0]['The']); ?>
                                    <?php foreach ($tag as $key => $value): ?>
                                        <a><?php echo $value; ?></a>
                                    <?php endforeach ?>
                                </div>

                                <div class="share">

                                    <h5>Share: </h5>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>

                                </div>

                            </div>
                        </div>

                    </div>

                    <div class="row mb-50">
                        <!-- Nav tabs -->
                        <div class="col-12">
                            <ul class="pro-info-tab-list section nav">
                                <li><a class="active" href="#more-info" data-bs-toggle="tab">THÔNG TIN MÔ TẢ</a></li>
                            </ul>
                        </div>
                        <!-- Tab panes -->
                        <div class="tab-content col-12">
                            <div class="pro-info-tab tab-pane active" id="more-info">
                                <?php echo $detail[0]['MoTaDai']; ?>
                            </div>
                        </div>
                    </div>

                    <div class="section-title text-start mb-30">
                        <h1>Sản Phẩm Liên Quan</h1>
                    </div>

                    <div class="related-product-slider related-product-slider-2 slick-space p-0">
                        <?php foreach ($related as $key => $value): ?>
                            <div class="slick-slide">
                                <div class="product-item">
                                    <div class="product-inner">
                                        <div class="image" style="height: 320px;">
                                            <img style="height: 100%;" src="<?php echo $value['duongdananh']; ?>" alt="">
                                            <div class="image-overlay">
                                                <div class="action-buttons">
                                                    <button>THÊM GIỎ HÀNG</button>
                                                    <button>YÊU THÍCH</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="content">
                                            <div class="content-left">
                                                <h4 class="title"><a href="<?php echo base_url('san-pham/'.$value['DuongDan'].'/') ?>"><?php echo $value['TenSanPham']; ?></a></h4>
                                                <div class="ratting">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                                <h5 class="size">Giá Gốc: <span style="text-decoration: line-through;" class="price"><?php echo number_format($value['GiaGoc']); ?>đ</span></h5>
                                                <h5 class="size">Giá Bán: <span class="price"><?php echo number_format($value['GiaBan']); ?>đ</span>
                                                </h5>
                                            </div>
                                            <div class="content-right">
                                                <span class="price" style="font-size: 16px;">-<?php echo number_format((($value['GiaGoc'] - $value['GiaBan']) / $value['GiaGoc']) * 100,1); ?>%</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach ?>

                    </div>

                </div>

                <div class="col-xl-3 col-lg-4 col-12 order-2 order-lg-1 mb-40">
                    <div class="sidebar">
                        <h3 class="sidebar-title">Tìm Kiếm</h3>
                        <div class="sidebar-product-wrap">
                            <form action="<?php echo base_url('tim-kiem/') ?>">
                                <input name="s" required="" type="text" placeholder="Nhập tên sản phẩm..." style="border: none; width: 100%;">
                            </form>
                        </div>
                    </div>

                    <div class="sidebar">
                        <h4 class="sidebar-title">Chuyên Mục</h4>
                        <ul class="sidebar-list">
                            <?php foreach ($category as $key => $value): ?>
                                <li><a href="<?php echo base_url('chuyen-muc/'.$value['DuongDan'].'/'); ?>" style="font-family: system-ui;"><?php echo $value['tenChuyenMuc']; ?> <span class="num"><?php echo $value['soLuongSanPham']; ?></span></a></li>
                            <?php endforeach ?>
                        </ul>
                    </div>

                    <?php if(count($popular) != 0){ ?>
                        <div class="sidebar">
                            <h4 class="sidebar-title">Sản Phẩm Nổi Bật</h4>
                            <div class="sidebar-product-wrap">

                                <?php for($i = 0; $i < 5; $i++){ ?>
                                    <div class="sidebar-product">
                                        <a href="<?php echo base_url('san-pham/'.$popular[$i]['DuongDan'].'/') ?>" class="image" style="font-family: system-ui; height: 90px;"><img style="height: 100%;" src="<?php echo $popular[$i]['duongdananh']; ?>" alt=""></a>
                                        <div class="content">
                                            <a href="<?php echo base_url('san-pham/'.$popular[$i]['DuongDan'].'/') ?>" class="title" style="font-family: system-ui;"><?php echo $popular[$i]['TenSanPham']; ?></a>
                                            <span class="price"><?php echo number_format($popular[$i]['GiaBan']); ?>đ <span class="old"><?php echo number_format($popular[$i]['GiaGoc']); ?>đ</span></span>
                                            <div class="ratting">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                <?php } ?>
                                
                            </div>
                        </div>
                    <?php } ?>

                </div>

            </div>
        </div>
    </div>

<?php require(__DIR__.'/layouts/footer.php'); ?>
