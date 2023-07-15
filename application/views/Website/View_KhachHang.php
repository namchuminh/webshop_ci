<?php require(__DIR__.'/layouts/header.php'); ?>

<div class="page-banner-section section">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1>Khách Hàng</h1>
                <ul class="page-breadcrumb">
                    <li><a href="<?php echo base_url(); ?>" style="font-family: system-ui;">Trang Chủ</a></li>
                    <li><a style="font-family: system-ui;">Khách Hàng</a></li>
                </ul>

            </div>
        </div>
    </div>
</div>
<div class="page-section section section-padding">
    <div class="container">
        <div class="row mbn-30">

            <!-- My Account Tab Menu Start -->
            <div class="col-lg-3 col-12 mb-30">
                <div class="myaccount-tab-menu nav" role="tablist">
                    <a href="#orders" data-bs-toggle="tab" aria-selected="false" role="tab" style="font-family: system-ui;" class="active" tabindex="-1"><i class="fa fa-cart-arrow-down"></i> Đơn Hàng</a>

                    <a href="#address-edit" data-bs-toggle="tab" aria-selected="false" role="tab" style="font-family: system-ui;" class="" tabindex="-1"><i class="fa fa-user"></i> Thông Tin</a>

                    <a href="#account-info" data-bs-toggle="tab" aria-selected="false" role="tab" style="font-family: system-ui;" class="" tabindex="-1"><i class="fa fa-gear"></i> Cài Đặt</a>

                    <a href="<?php echo base_url('dang-xuat/'); ?>" style="font-family: system-ui;"><i class="fa fa-sign-out"></i> Đăng Xuất</a>
                </div>
            </div>
            <!-- My Account Tab Menu End -->

            <!-- My Account Tab Content Start -->
            <div class="col-lg-9 col-12 mb-30">
                <div class="tab-content" id="myaccountContent">
                    <div class="tab-pane fade active show" id="orders" role="tabpanel">
                        <div class="myaccount-content">
                            <h3>Đơn Hàng</h3>

                            <div class="myaccount-table table-responsive text-center">
                                <table class="table table-bordered">
                                    <thead class="thead-light">
                                    <tr style="font-family: system-ui;">
                                        <th>Mã Đơn</th>
                                        <th>Địa Chỉ Nhận Hàng</th>
                                        <th>Số Lượng</th>
                                        <th>Thành Tiền</th>
                                        <th>Thời Gian</th>
                                        <th>Trạng Thái</th>
                                        <th>Xem Chi Tiết</th>
                                        <th>Hủy Đơn</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <?php if(count($list) != 0){ ?>
                                            <?php foreach ($list as $key => $value): ?>
                                                <tr>
                                                    <td>ĐH00<?php echo $value['MaDonHang']; ?></td>
                                                    <td><?php echo $value['DiaChi']; ?></td>
                                                    <td><?php echo $value['SoLuong']; ?> sản phẩm</td>
                                                    <td><?php echo number_format($value['ThanhTien']); ?>đ</td>
                                                    <td><?php echo $value['ThoiGian']; ?></td>
                                                    <td>
                                                        <?php 
                                                            if($value['TrangThai'] == 1){
                                                                echo "Chưa được duyệt"; 
                                                            }else if ($value['TrangThai'] == 2) {
                                                                echo "Đang chuẩn bị hàng";
                                                            }else if ($value['TrangThai'] == 3) {
                                                                echo "Đang giao hàng";
                                                            }else if ($value['TrangThai'] == 4) {
                                                                echo "Đã giao hàng";
                                                            }else if ($value['TrangThai'] == 0) {
                                                                echo "Đã hủy đơn";
                                                            }else if ($value['TrangThai'] == -1) {
                                                                echo "Khách hàng hủy";
                                                            }
                                                        ?>
                                                    </td>
                                                    <td><a href="<?php echo base_url('khach-hang/don-hang/'.$value['MaDonHang'].'/'); ?>" class="btn btn-light btn-round" style="font-family: system-ui;">XEM</a></td>
                                                    <td>
                                                        <?php if($value['TrangThai'] != 0 && $value['TrangThai'] != -1 && $value['TrangThai'] != 4){ ?>
                                                            <a href="<?php echo base_url('khach-hang/don-hang/huy-don/'.$value['MaDonHang'].'/'); ?>" class="btn btn-dark btn-round" style="font-family: system-ui;">HỦY</a>
                                                        <?php }else{ ?>
                                                            <?php echo "Không được phép" ?>
                                                        <?php } ?>
                                                    </td>
                                                </tr>
                                            <?php endforeach ?>
                                        <?php } ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!-- Single Tab Content End -->

                    <!-- Single Tab Content Start -->
                    <div class="tab-pane fade" id="address-edit" role="tabpanel">
                        <div class="myaccount-content">
                            <h3>Thông Tin Thanh Toán</h3>
                            <address>
                                <p style="font-family: system-ui;"><strong><?php echo $_SESSION['TenKhachHang']; ?></strong></p>
                                <p style="font-family: system-ui;">Tài khoản: <?php echo $_SESSION['khachhang']; ?></p>

                                <p style="font-family: system-ui;">Địa chỉ: <?php echo $_SESSION['DiaChi']; ?> <br>
                                    Email: <?php echo $_SESSION['Email']; ?></p>
                                <p style="font-family: system-ui;">Điện thoại: <?php echo $_SESSION['SoDienThoai']; ?></p>
                                <p style="font-family: system-ui;">Ngày tham gia: <?php echo $_SESSION['NgayThamGia']; ?></p>
                            </address>
                        </div>
                    </div>
                    <!-- Single Tab Content End -->

                    <!-- Single Tab Content Start -->
                    <div class="tab-pane fade" id="account-info" role="tabpanel">
                        <div class="myaccount-content">
                            <h3>Account Details</h3>

                            <div class="account-details-form">
                                <form action="#">
                                    <div class="row">
                                        <div class="col-lg-6 col-12 mb-30">
                                            <input id="first-name" placeholder="First Name" type="text">
                                        </div>

                                        <div class="col-lg-6 col-12 mb-30">
                                            <input id="last-name" placeholder="Last Name" type="text">
                                        </div>

                                        <div class="col-12 mb-30">
                                            <input id="display-name" placeholder="Display Name" type="text">
                                        </div>

                                        <div class="col-12 mb-30">
                                            <input id="email" placeholder="Email Address" type="email">
                                        </div>

                                        <div class="col-12 mb-30"><h4>Password change</h4></div>

                                        <div class="col-12 mb-30">
                                            <input id="current-pwd" placeholder="Current Password" type="password">
                                        </div>

                                        <div class="col-lg-6 col-12 mb-30">
                                            <input id="new-pwd" placeholder="New Password" type="password">
                                        </div>

                                        <div class="col-lg-6 col-12 mb-30">
                                            <input id="confirm-pwd" placeholder="Confirm Password" type="password">
                                        </div>

                                        <div class="col-12">
                                            <button class="btn btn-dark btn-round btn-lg" style="font-family: system-ui;">Save Changes</button>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Single Tab Content End -->
                </div>
            </div>
            <!-- My Account Tab Content End -->
            
        </div>
    </div>
</div>
<?php require(__DIR__.'/layouts/footer.php'); ?>
