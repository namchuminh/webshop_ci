<?php
defined('BASEPATH') OR exit('No direct script access allowed');


$route['default_controller'] = 'TrangChu';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;


$route['admin'] = 'Admin/TrangChu';
$route['admin/dang-nhap'] = 'Admin/DangNhap';
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



