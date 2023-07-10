<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route['default_controller'] = 'TrangChu';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


$route['admin'] = 'Admin/TrangChu';
$route['admin/dang-nhap'] = 'Admin/DangNhap';
//Route admin product
$route['admin/san-pham'] = 'Admin/SanPham';
$route['admin/san-pham/trang/(:any)'] = 'Admin/SanPham/Page/$1';
$route['admin/san-pham/sua/(:any)'] = 'Admin/SanPham/Update/$1';
$route['admin/san-pham/them'] = 'Admin/SanPham/Add';
$route['admin/san-pham/them-thung-rac/(:any)'] = 'Admin/SanPham/remove/$1';
$route['admin/san-pham/thung-rac'] = 'Admin/SanPham/trash';
$route['admin/san-pham/thung-rac/xoa/(:any)'] = 'Admin/SanPham/delete/$1';
$route['admin/san-pham/thung-rac/xoa'] = 'Admin/SanPham/deleteAll';
$route['admin/san-pham/thung-rac/khoi-phuc'] = 'Admin/SanPham/resetAll';
$route['admin/san-pham/thung-rac/khoi-phuc/(:any)'] = 'Admin/SanPham/reset/$1';
$route['admin/san-pham/thung-rac/trang/(:any)'] = 'Admin/SanPham/PageTrash/$1';
$route['admin/san-pham/nhap/(:any)'] = 'Admin/SanPham/Import/$1';

//Route admin news
$route['admin/tin-tuc/them'] = 'Admin/TinTuc/Add';
$route['admin/tin-tuc'] = 'Admin/TinTuc/index';
$route['admin/tin-tuc/trang/(:any)'] = 'Admin/TinTuc/Page/$1';
$route['admin/tin-tuc/sua/(:any)'] = 'Admin/TinTuc/Update/$1';
$route['admin/tin-tuc/them-thung-rac/(:any)'] = 'Admin/TinTuc/remove/$1';
$route['admin/tin-tuc/thung-rac'] = 'Admin/TinTuc/trash';
$route['admin/tin-tuc/thung-rac/trang/(:any)'] = 'Admin/TinTuc/PageTrash/$1';
$route['admin/tin-tuc/thung-rac/khoi-phuc/(:any)'] = 'Admin/TinTuc/reset/$1';
$route['admin/tin-tuc/thung-rac/khoi-phuc'] = 'Admin/TinTuc/resetAll';
$route['admin/tin-tuc/thung-rac/xoa/(:any)'] = 'Admin/TinTuc/delete/$1';
$route['admin/tin-tuc/thung-rac/xoa'] = 'Admin/TinTuc/deleteAll/$1';

//Route admin category
$route['admin/chuyen-muc/them'] = 'Admin/ChuyenMuc/Add';
$route['admin/chuyen-muc'] = 'Admin/ChuyenMuc/index';
$route['admin/chuyen-muc/trang/(:any)'] = 'Admin/ChuyenMuc/Page/$1';
$route['admin/chuyen-muc/sua/(:any)'] = 'Admin/ChuyenMuc/Update/$1';
$route['admin/chuyen-muc/them-thung-rac/(:any)'] = 'Admin/ChuyenMuc/remove/$1';
$route['admin/chuyen-muc/thung-rac'] = 'Admin/ChuyenMuc/trash';
$route['admin/chuyen-muc/thung-rac/trang/(:any)'] = 'Admin/ChuyenMuc/PageTrash/$1';
$route['admin/chuyen-muc/thung-rac/khoi-phuc/(:any)'] = 'Admin/ChuyenMuc/reset/$1';
$route['admin/chuyen-muc/thung-rac/khoi-phuc'] = 'Admin/ChuyenMuc/resetAll';
$route['admin/chuyen-muc/thung-rac/xoa/(:any)'] = 'Admin/ChuyenMuc/delete/$1';
$route['admin/chuyen-muc/thung-rac/xoa'] = 'Admin/ChuyenMuc/deleteAll/$1';

//Route admin category
$route['admin/nha-cung-cap/them'] = 'Admin/NhaCungCap/Add';
$route['admin/nha-cung-cap'] = 'Admin/NhaCungCap/index';
$route['admin/nha-cung-cap/trang/(:any)'] = 'Admin/NhaCungCap/Page/$1';
$route['admin/nha-cung-cap/sua/(:any)'] = 'Admin/NhaCungCap/Update/$1';
$route['admin/nha-cung-cap/them-thung-rac/(:any)'] = 'Admin/NhaCungCap/remove/$1';
$route['admin/nha-cung-cap/thung-rac'] = 'Admin/NhaCungCap/trash';
$route['admin/nha-cung-cap/thung-rac/trang/(:any)'] = 'Admin/NhaCungCap/PageTrash/$1';
$route['admin/nha-cung-cap/thung-rac/khoi-phuc/(:any)'] = 'Admin/NhaCungCap/reset/$1';
$route['admin/nha-cung-cap/thung-rac/khoi-phuc'] = 'Admin/NhaCungCap/resetAll';
$route['admin/nha-cung-cap/thung-rac/xoa/(:any)'] = 'Admin/NhaCungCap/delete/$1';
$route['admin/nha-cung-cap/thung-rac/xoa'] = 'Admin/NhaCungCap/deleteAll/$1';
$route['admin/nha-cung-cap/lich-su/(:any)'] = 'Admin/NhaCungCap/history/$1';


