<?php require(__DIR__.'/layouts/header.php'); ?>


<div class="page-content">
    <div class="container-fluid">

        <!-- start page title -->
        <div class="row">
            <div class="col-12">
                <div class="page-title-box d-flex align-items-center justify-content-between">
                    <h4 class="mb-0 font-size-18">Trang Chủ</h4>

                    <div class="page-title-right">
                        <ol class="breadcrumb m-0">
                            <li class="breadcrumb-item"><a href="<?php echo base_url('admin/'); ?>">Hệ Thống</a></li>
                            <li class="breadcrumb-item active">Trang Chủ</li>
                        </ol>
                    </div>

                </div>
            </div>
        </div>
        <!-- end page title -->

        <div class="row">
            <div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <i class="bx bx-layer float-right m-0 h2 text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">ĐƠN HÀNG - HÔM NAY</h6>
                        <h3 class="mb-3" data-plugin="counterup"><?php echo $numberOrders; ?> đơn hàng</h3>
                        <span class="badge badge-success mr-1"> 
                        	<?php 
                        		echo "Tổng ".abs($numberOrders); 
                        	?> đơn hàng
                        </span> <span class="text-muted">trong tuần này</span>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <i class="bx bx-dollar-circle float-right m-0 h2 text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">DOANH THU - HÔM NAY</h6>
                        <h3 class="mb-3"><span data-plugin="counterup"><?php echo number_format($revenueCurrent); ?>đ</span></h3>
                        <span class="badge badge-danger mr-1">
                        	<?php 
                        		echo "Tổng ".number_format(abs($sumCurrent)); 
                        	?>đ
                        </span> <span class="text-muted">trong tuần này</span>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <i class="bx bx-bx bx-analyse float-right m-0 h2 text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">TỔNG KHO - HIỆN TẠI</h6>
                        <h3 class="mb-3"><span data-plugin="counterup">
                        	<?php 
                        		echo $numberProduct;
                        	?> sản phẩm
                        </span></h3>
                        <span class="badge badge-warning mr-1"></span> <span class="text-muted">Số lượng sản phẩm còn trong kho</span>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6">
                <div class="card">
                    <div class="card-body">
                        <i class="bx bxs-user float-right m-0 h2 text-muted"></i>
                        <h6 class="text-muted text-uppercase mt-0">KHÁCH HÀNG - HÔM NAY</h6>
                        <h3 class="mb-3" data-plugin="counterup">
                        	<?php 
                        		echo $customerCurrent;
                        	?> khách hàng
                        </h3>
                        <span class="badge badge-success mr-1">
                        	<?php 
                        		echo "Tổng ".abs($sumCustomer); 
                        	?> khách hàng
                        </span> <span class="text-muted">trong tuần này</span>
                    </div>
                </div>
            </div>
        </div>
        <!-- end row -->

        <div class="row">

            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="dropdown float-right position-relative">
                            <a href="#" class="dropdown-toggle h4 text-muted" data-toggle="dropdown"
                                aria-expanded="false">
                                <i class="mdi mdi-dots-vertical"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="#" class="dropdown-item">Action</a></li>
                                <li><a href="#" class="dropdown-item">Another action</a></li>
                                <li><a href="#" class="dropdown-item">Something else here</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a href="#" class="dropdown-item">Separated link</a></li>
                            </ul>
                        </div>
                        <h4 class="card-title d-inline-block">Daily Sales</h4>

                        <div id="morris-donut-example" class="morris-chart" style="height: 260px;"></div>

                        <div class="row text-center mt-4">
                            <div class="col-6">
                                <h4>5,459</h4>
                                <p class="text-muted mb-0">Total Sales</p>
                            </div>
                            <div class="col-6">
                                <h4>18</h4>
                                <p class="text-muted mb-0">Open Compaign</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->

            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="dropdown float-right position-relative">
                            <a href="#" class="dropdown-toggle h4 text-muted" data-toggle="dropdown"
                                aria-expanded="false">
                                <i class="mdi mdi-dots-vertical"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="#" class="dropdown-item">Action</a></li>
                                <li><a href="#" class="dropdown-item">Another action</a></li>
                                <li><a href="#" class="dropdown-item">Something else here</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a href="#" class="dropdown-item">Separated link</a></li>
                            </ul>
                        </div>
                        <h4 class="card-title d-inline-block">Statistics</h4>

                        <div id="morris-bar-example" class="morris-chart" style="height: 260px;"></div>

                        <div class="row text-center mt-4">
                            <div class="col-6">
                                <h4>$1875.54</h4>
                                <p class="text-muted mb-0">Revenue</p>
                            </div>
                            <div class="col-6">
                                <h4>541</h4>
                                <p class="text-muted mb-0">Total Offers</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->

            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="dropdown float-right position-relative">
                            <a href="#" class="dropdown-toggle h4 text-muted" data-toggle="dropdown"
                                aria-expanded="false">
                                <i class="mdi mdi-dots-vertical"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="#" class="dropdown-item">Action</a></li>
                                <li><a href="#" class="dropdown-item">Another action</a></li>
                                <li><a href="#" class="dropdown-item">Something else here</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a href="#" class="dropdown-item">Separated link</a></li>
                            </ul>
                        </div>
                        <h4 class="card-title d-inline-block">Total Revenue</h4>

                        <div id="morris-line-example" class="morris-chart" style="height: 260px;"></div>

                        <div class="row text-center mt-4">
                            <div class="col-6">
                                <h4>$7841.12</h4>
                                <p class="text-muted mb-0">Total Revenue</p>
                            </div>
                            <div class="col-6">
                                <h4>17</h4>
                                <p class="text-muted mb-0">Open Compaign</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div> <!-- end col -->
        </div>
        <!-- end row-->


        <div class="row">
            <div class="col-xl-6">
                <div class="card">
                    <div class="card-body">
                        

                        <h4 class="card-title overflow-hidden">Sản Phẩm Bán Chạy</h4>
                        <p class="card-subtitle mb-4 font-size-13 overflow-hidden">Top 6 sản phẩm bán chạy nhất trong cửa hàng
                        </p>

                        <div class="table-responsive">
                            <table class="table table-centered table-hover table-xl mb-0" id="recent-orders">
                                <thead>
                                    <tr>
                                        <th class="border-top-0">STT</th>
                                        <th class="border-top-0">Tên Sản Phẩm</th>
                                        <th class="border-top-0">Chuyên Mục</th>
                                        <th class="border-top-0">Số Lượng Bán</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if(count($productSelling) != 0){ ?>
                                        <?php foreach ($productSelling as $key => $value): ?>
                                            <tr>
                                                <td class="text-truncate"><?php echo $key + 1; ?></td>
                                                <td class="text-truncate">
                                                    <?php echo $value['TenSanPham']; ?>
                                                </td>
                                                <td>
                                                    <span class="badge badge-soft-success p-2"><?php echo $value['TenChuyenMuc']; ?></span>
                                                </td>
                                                <td class="text-truncate"><?php echo $value['TongSoLuong']; ?> sản phẩm</td>
                                            </tr>
                                        <?php endforeach ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>

                    </div> <!-- end card-body-->
                </div> <!-- end card-->
            </div> <!-- end col -->

            <div class="col-xl-6">
                <div class="card">
                    <div class="card-body">
                        
                        <div class="dropdown float-right position-relative">
                            <a href="#" class="dropdown-toggle h4 text-muted" data-toggle="dropdown"
                                aria-expanded="false">
                                <i class="mdi mdi-dots-vertical"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li><a href="#" class="dropdown-item">Action</a></li>
                                <li><a href="#" class="dropdown-item">Another action</a></li>
                                <li><a href="#" class="dropdown-item">Something else here</a></li>
                                <li class="dropdown-divider"></li>
                                <li><a href="#" class="dropdown-item">Separated link</a></li>
                            </ul>
                        </div>

                        <h4 class="card-title overflow-hidden">Khách Hàng Mua Nhiều</h4>
                        <p class="card-subtitle mb-4 font-size-13 overflow-hidden">Top 5 khách hàng mua nhiều sản phẩm nhất
                        </p>

                        <div class="table-responsive">
                            <table
                                class="table table-borderless table-hover table-centered table-nowrap mb-0">
                                <tbody>
                                    <?php if(count($topCustomer) != 0){ ?>
                                        <?php foreach ($topCustomer as $key => $value): ?> 
                                            <tr>
                                                <td>
                                                    <h5 class="font-size-15 mb-1 font-weight-normal"><?php echo $key + 1; ?></h5>
                                                    <span class="text-muted font-size-12">STT</span>
                                                </td>
                                                <td>
                                                    <h5 class="font-size-15 mb-1 font-weight-normal">
                                                        <?php echo $value['TenKhachHang']; ?>
                                                    </h5>
                                                    <span class="text-muted font-size-12">Tên Khách Hàng</span>
                                                </td>
                                                <td>
                                                    <h5 class="font-size-15 mb-1 font-weight-normal">
                                                        <?php echo $value['TaiKhoan'] ?>
                                                    </h5>
                                                    <span class="text-muted font-size-12">Tài Khoản</span>
                                                </td>
                                                <td>
                                                    <h5 class="font-size-15 mb-1 font-weight-normal">
                                                        <?php echo $value['SoDienThoai']; ?>
                                                    </h5>
                                                    <span class="text-muted font-size-12">Số Điện Thoại</span>
                                                </td>
                                                <td>
                                                    <h5 class="font-size-17 mb-1 font-weight-normal">
                                                        <?php echo $value['TongSoLuong']; ?>
                                                    </h5>
                                                    <span class="text-muted font-size-12">Sản Phẩm</span>
                                                </td>
                                            </tr>
                                        <?php endforeach ?>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>

                    </div> <!-- end card-body-->
                </div> <!-- end card-->
            </div> <!-- end col -->
        </div>

    </div> <!-- container-fluid -->
</div>

<?php require(__DIR__.'/layouts/footer.php'); ?>