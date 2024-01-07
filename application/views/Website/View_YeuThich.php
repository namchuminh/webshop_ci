<?php require(__DIR__.'/layouts/header.php'); ?>

<div class="page-banner-section section">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1>Yêu Thích</h1>
                <ul class="page-breadcrumb">
                    <li><a href="<?php echo base_url(); ?>" style="font-family: system-ui;">Trang Chủ</a></li>
                    <li><a style="font-family: system-ui;">Yêu Thích</a></li>
                </ul>

            </div>
        </div>
    </div>
</div>

<div class="page-section section section-padding">
        <div class="container">

            <form action="#">				
                <div class="row mbn-40">
                    <div class="col-12 mb-40">
                        <div class="cart-table table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th style="font-family: system-ui;" class="pro-thumbnail">Mã Sản Phẩm</th>
                                        <th style="font-family: system-ui;" class="pro-thumbnail">Hình Ảnh</th>
                                        <th style="font-family: system-ui;" class="pro-title">Tên Sản Phẩm</th>
                                        <th style="font-family: system-ui;" class="pro-price">Giá Bán</th>
                                        <th style="font-family: system-ui;" class="pro-remove">Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if(isset($_SESSION['cart'])){ ?>
                                        <?php foreach ($list as $key => $value): ?>
                                            <tr>
                                                <td class="pro-quantity" style="max-width: 10px;">
                                                    <?php echo $key + 1; ?>
                                                </td>
                                                <td class="pro-thumbnail">
                                                    <a style="font-family: system-ui;">
                                                        <img style="width: 150px; height: 150px;" src="<?php echo $value['image']; ?>" alt="">
                                                    </a>
                                                </td>
                                                <td class="pro-title">
                                                    <a href="<?php echo base_url('san-pham/'.$value['slug'].'/') ?>" style="font-family: system-ui;"><?php echo $value['name']; ?></a>
                                                </td>
                                                <td class="pro-price">
                                                    <span class="amount"><?php echo number_format($value['price']); ?>đ</span>
                                                </td>
                                                <td class="pro-remove">
                                                    <a class="remove_pro" href="<?php echo base_url("yeu-thich/xoa/".$value['id'].'/') ?>" style="font-family: system-ui;">×</a>
                                                </td>
                                            </tr>
                                        <?php endforeach ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                            <?php if(!isset($_SESSION['wishlist']) || count($_SESSION['wishlist']) <= 0){ ?>
                                <p class="text-center mt-30">Không Có Sản Phẩm Yêu Thích Nào!</p>
                            <?php } ?>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7 col-12 mb-40">
                        <div class="cart-buttons mb-30">
                            <a href="<?php echo base_url('san-pham/'); ?>" style="font-family: system-ui;">Tiếp Tục Mua Sắm</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
<?php require(__DIR__.'/layouts/footer.php'); ?>
<script type="text/javascript">
    $(document).ready(function(){

    })
</script>