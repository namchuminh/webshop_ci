<?php require(__DIR__.'/layouts/header.php'); ?>

<div class="page-banner-section section">
    <div class="container">
        <div class="row">
            <div class="page-banner-content col">

                <h1>Thanh Toán</h1>
                <ul class="page-breadcrumb">
                    <li><a href="<?php echo base_url(); ?>" style="font-family: system-ui;">Trang Chủ</a></li>
                    <li><a href="<?php echo base_url('gio-hang/'); ?>" style="font-family: system-ui;">Giỏ Hàng</a></li>
                    <li><a style="font-family: system-ui;">Thanh Toán</a></li>
                </ul>

            </div>
        </div>
    </div>
</div>

<div class="page-section section section-padding">
        <div class="container">

			<!-- Checkout Form s-->
			<form action="#" class="checkout-form">
			   <div class="row row-50 mbn-40">

				   <div class="col-lg-7">

					   <!-- Billing Address -->
					   <div id="billing-form" class="mb-20">
						   <h4 class="checkout-title">Thông Tin Thanh Toán</h4>

						   <div class="row">

							   <div class="col-md-6 col-12 mb-5">
								   <label>Tài Khoản</label>
								   <input type="text" placeholder="Tài khoản" value="<?php echo $_SESSION['khachhang']; ?>" disabled>
							   </div>

							   <div class="col-md-6 col-12 mb-5">
								   <label>Họ Tên</label>
								   <input type="text" placeholder="Họ tên khách hàng" disabled value="<?php echo $_SESSION['TenKhachHang']; ?>">
							   </div>

							   <div class="col-md-6 col-12 mb-5">
								   <label>Địa Chỉ Email</label>
								   <input type="email" placeholder="Email khách hàng">
							   </div>

							   <div class="col-md-6 col-12 mb-5">
								   <label>Số Điện Thoại</label>
								   <input type="text" placeholder="Số điện thoại" value="<?php echo $_SESSION['SoDienThoai']; ?>" required>
							   </div>

							   <div class="col-12 mb-5">
								   <label>Tên Công Ty (tùy chọn)</label>
								   <input type="text" placeholder="Tên công ty" required>
							   </div>

							   <div class="col-md-6 col-12 mb-5">
								   <label>Quận/Huyện</label>
								   <input type="text" placeholder="Quận huyện" required>
							   </div>

							   <div class="col-md-6 col-12 mb-5">
								   <label>Tỉnh/Thành Phố</label>
								   <input type="text" placeholder="Thành phố" required>
							   </div>

							   <div class="col-md-12 col-12 mb-5">
								   <label>Địa Chỉ (Cụ thể)</label>
								   <input type="text" placeholder="Số nhà hoặc xóm, thôn hoặc phố, xã hoặc phường ">
							   </div>

							   <div class="col-12 mb-40">

							   <h4 class="checkout-title">Phương Thức Thanh Toán</h4>

							   <div class="checkout-payment-method">

								   <div class="single-method">
									   <input type="radio" id="payment_check" name="payment-method" value="check">
									   <label for="payment_check">Thanh Toán Khi Nhận Hàng</label>
								   </div>

								   <div class="single-method">
									   <input type="radio" id="payment_bank" name="payment-method" value="bank">
									   <label for="payment_bank">Chuyển Khoản Ngân Hàng</label>
									   <p data-method="bank" style="font-family: system-ui; display: none;">NGAN HANG: MB BANK <br>SO TAI KHOAN: 1110110246810 <br> CHU TAI KHOAN: BUI TRAN BA TAI <br>NOI DUNG: KHACH HANG <?php echo $_SESSION['khachhang']; ?> THANH TOAN DON HANG <?php echo number_format($_SESSION['sumCart']); ?> VND </p>
								   </div>

							   </div>

							   <button class="place-order" style="font-family: system-ui;">Đặt Hàng</button>

						   </div>

						   </div>

					   </div>

				   </div>

				   <div class="col-lg-5">
					   <div class="row">

						   <!-- Cart Total -->
						   <div class="col-12 mb-40">

							   <h4 class="checkout-title">Thông Tin Đơn Hàng</h4>

							   <div class="checkout-cart-total">

								   <h4>Sản Phẩm <span>Thành Tiền</span></h4>

								   <ul>
								   		<?php foreach ($_SESSION['cart'] as $key => $value): ?>
											<li>
												<?php echo $value['name']; ?> x <?php echo $value['number']; ?> 
												<span><?php echo number_format($value['price']); ?>đ</span>
											</li>
								   		<?php endforeach ?>
								   </ul>

								   <p style="font-family: system-ui;">Tổng Tiền <span>
								   		<?php
                                            if(isset($_SESSION['saleCode'])){
                                                echo number_format($_SESSION['sumCart'] + $_SESSION['saleCode']);
                                            }else{
                                                echo number_format($_SESSION['sumCart']);
                                            } 
                                        ?>
								   	</span></p>
								   	<p style="font-family: system-ui;">
								   		Giảm Giá 
								   		<span>
								   			<?php if(isset($_SESSION['saleCode'])){ ?>
                                                - <?php echo number_format($_SESSION['saleCode']); ?>đ
                                            <?php }else{ ?>
                                                <?php echo '0đ'; ?>
                                            <?php } ?>
								   		</span>
								   	</p>
									<p style="font-family: system-ui;">
										Phí Giao Hàng 
										<span>0đ</span>
									</p>

								   <h4>Tổng Tiền <span><?php echo number_format($_SESSION['sumCart']); ?>đ</span></h4>

							   </div>

						   </div>

					   </div>
				   </div>

			   </div>
			</form>
       
        </div>
    </div>
<?php require(__DIR__.'/layouts/footer.php'); ?>
