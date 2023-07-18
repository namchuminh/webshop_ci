-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 03:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop_ci`
--

-- --------------------------------------------------------

--
-- Table structure for table `cauhinh`
--

CREATE TABLE `cauhinh` (
  `MaCauHinh` int(11) NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `TenWebsite` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Logo` text COLLATE utf8_unicode_ci NOT NULL,
  `Facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Instagram` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Tiktok` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ThuongHieu` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cauhinh`
--

INSERT INTO `cauhinh` (`MaCauHinh`, `Email`, `SoDienThoai`, `DiaChi`, `TenWebsite`, `Logo`, `Facebook`, `Instagram`, `Tiktok`, `ThuongHieu`) VALUES
(1, 'chuminhnam1@gmail.com', '09999998881', 'Hà Nội1', 'Web bán hàng trực tuyến', 'http://localhost/webquanao/uploads/sanpham51.jpg', '1', '1', '', 'http://localhost/webquanao/uploads/logo.png');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaChiTietDonHang` int(11) NOT NULL,
  `MaDonHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MauSac` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chuyenmuc`
--

CREATE TABLE `chuyenmuc` (
  `MaChuyenMuc` int(11) NOT NULL,
  `TenChuyenMuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DuongDan` text COLLATE utf8_unicode_ci NOT NULL,
  `AnhChinh` text COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDonHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `DiaChi` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `GiamGia` int(11) NOT NULL DEFAULT 0,
  `TenCongTy` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucThanhToan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giaodien`
--

CREATE TABLE `giaodien` (
  `MaGiaoDien` int(11) NOT NULL,
  `MaChuyenMuc` int(11) DEFAULT NULL,
  `TheLoai` int(11) NOT NULL,
  `HinhAnh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `MaHinhAnh` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `DuongDan` text COLLATE utf8_unicode_ci NOT NULL,
  `LoaiAnh` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`MaHinhAnh`, `MaSanPham`, `DuongDan`, `LoaiAnh`) VALUES
(77, 44, 'http://localhost/webquanao/uploads/tintuc211.png', 3),
(78, 44, 'http://localhost/webquanao/uploads/tintuc319.jpg', 4),
(79, 45, 'http://localhost/webquanao/uploads/tintuc44.jpg', 1),
(80, 45, 'http://localhost/webquanao/uploads/tintuc212.png', 2),
(81, 45, 'http://localhost/webquanao/uploads/sanpham5.jpg', 3),
(82, 45, 'http://localhost/webquanao/uploads/chitiet35.png', 4),
(83, 46, 'http://localhost/webquanao/uploads/tintuc45.jpg', 1),
(84, 46, 'http://localhost/webquanao/uploads/tintuc213.png', 2),
(85, 46, 'http://localhost/webquanao/uploads/sanpham51.jpg', 3),
(86, 46, 'http://localhost/webquanao/uploads/chitiet36.png', 4),
(87, 47, 'http://localhost/webquanao/uploads/tintuc46.jpg', 1),
(88, 47, 'http://localhost/webquanao/uploads/tintuc214.png', 2),
(89, 47, 'http://localhost/webquanao/uploads/sanpham52.jpg', 3),
(90, 47, 'http://localhost/webquanao/uploads/chitiet37.png', 4),
(91, 48, 'http://localhost/webquanao/uploads/tintuc47.jpg', 1),
(92, 48, 'http://localhost/webquanao/uploads/tintuc215.png', 2),
(93, 48, 'http://localhost/webquanao/uploads/sanpham53.jpg', 3),
(94, 48, 'http://localhost/webquanao/uploads/chitiet38.png', 4),
(95, 49, 'http://localhost/webquanao/uploads/tintuc48.jpg', 1),
(96, 49, 'http://localhost/webquanao/uploads/tintuc216.png', 2),
(97, 49, 'http://localhost/webquanao/uploads/sanpham54.jpg', 3),
(98, 49, 'http://localhost/webquanao/uploads/chitiet39.png', 4),
(99, 50, 'http://localhost/webquanao/uploads/avatar3.png', 1),
(100, 50, 'http://localhost/webquanao/uploads/tintuc41.jpg', 2),
(101, 50, 'http://localhost/webquanao/uploads/tintuc2.png', 3),
(102, 50, 'http://localhost/webquanao/uploads/sanpham13.png', 4),
(103, 51, 'http://localhost/webquanao/uploads/tintuc4.jpg', 1),
(104, 51, 'http://localhost/webquanao/uploads/tintuc41.jpg', 2),
(105, 51, 'http://localhost/webquanao/uploads/tintuc42.jpg', 3),
(106, 51, 'http://localhost/webquanao/uploads/tintuc43.jpg', 4),
(107, 52, 'http://localhost/webquanao/uploads/product-1.jpg', 1),
(108, 52, 'http://localhost/webquanao/uploads/product-11.jpg', 2),
(109, 52, 'http://localhost/webquanao/uploads/product-12.jpg', 3),
(110, 52, 'http://localhost/webquanao/uploads/product-13.jpg', 4),
(111, 53, 'http://localhost/webquanao/uploads/product-14.jpg', 1),
(112, 53, 'http://localhost/webquanao/uploads/product-15.jpg', 2),
(113, 53, 'http://localhost/webquanao/uploads/product-16.jpg', 3),
(114, 53, 'http://localhost/webquanao/uploads/product-17.jpg', 4),
(115, 54, 'http://localhost/webquanao/uploads/product-18.jpg', 1),
(116, 54, 'http://localhost/webquanao/uploads/product-19.jpg', 2),
(117, 54, 'http://localhost/webquanao/uploads/product-110.jpg', 3),
(118, 54, 'http://localhost/webquanao/uploads/product-111.jpg', 4),
(119, 55, 'http://localhost/webquanao/uploads/product-112.jpg', 1),
(120, 55, 'http://localhost/webquanao/uploads/product-113.jpg', 2),
(121, 55, 'http://localhost/webquanao/uploads/product-114.jpg', 3),
(122, 55, 'http://localhost/webquanao/uploads/product-115.jpg', 4),
(123, 56, 'http://localhost/webquanao/uploads/product-116.jpg', 1),
(124, 56, 'http://localhost/webquanao/uploads/product-117.jpg', 2),
(125, 56, 'http://localhost/webquanao/uploads/product-118.jpg', 3),
(126, 56, 'http://localhost/webquanao/uploads/product-119.jpg', 4),
(127, 57, 'http://localhost/webquanao/uploads/product-120.jpg', 1),
(128, 57, 'http://localhost/webquanao/uploads/product-121.jpg', 2),
(129, 57, 'http://localhost/webquanao/uploads/product-122.jpg', 3),
(130, 57, 'http://localhost/webquanao/uploads/product-123.jpg', 4),
(131, 58, 'http://localhost/webquanao/uploads/product-124.jpg', 1),
(132, 58, 'http://localhost/webquanao/uploads/product-125.jpg', 2),
(133, 58, 'http://localhost/webquanao/uploads/product-126.jpg', 3),
(134, 58, 'http://localhost/webquanao/uploads/product-127.jpg', 4),
(135, 59, 'http://localhost/webquanao/uploads/product-128.jpg', 1),
(136, 59, 'http://localhost/webquanao/uploads/product-129.jpg', 2),
(137, 59, 'http://localhost/webquanao/uploads/product-130.jpg', 3),
(138, 59, 'http://localhost/webquanao/uploads/product-131.jpg', 4),
(139, 60, 'http://localhost/webquanao/uploads/product-132.jpg', 1),
(140, 60, 'http://localhost/webquanao/uploads/product-133.jpg', 2),
(141, 60, 'http://localhost/webquanao/uploads/product-134.jpg', 3),
(142, 60, 'http://localhost/webquanao/uploads/product-135.jpg', 4),
(143, 61, 'http://localhost/webquanao/uploads/product-136.jpg', 1),
(144, 61, 'http://localhost/webquanao/uploads/product-137.jpg', 2),
(145, 61, 'http://localhost/webquanao/uploads/product-138.jpg', 3),
(146, 61, 'http://localhost/webquanao/uploads/product-139.jpg', 4),
(147, 62, 'http://localhost/webquanao/uploads/tintuc45.jpg', 1),
(148, 62, 'http://localhost/webquanao/uploads/product-141.jpg', 2),
(149, 62, 'http://localhost/webquanao/uploads/product-142.jpg', 3),
(150, 62, 'http://localhost/webquanao/uploads/product-143.jpg', 4),
(151, 63, 'http://localhost/webquanao/uploads/on-sale-1.jpg', 1),
(152, 63, 'http://localhost/webquanao/uploads/on-sale-11.jpg', 2),
(153, 63, 'http://localhost/webquanao/uploads/on-sale-12.jpg', 3),
(154, 63, 'http://localhost/webquanao/uploads/on-sale-13.jpg', 4),
(155, 64, 'http://localhost/webquanao/uploads/on-sale-14.jpg', 1),
(156, 64, 'http://localhost/webquanao/uploads/on-sale-15.jpg', 2),
(157, 64, 'http://localhost/webquanao/uploads/on-sale-16.jpg', 3),
(158, 64, 'http://localhost/webquanao/uploads/on-sale-17.jpg', 4),
(159, 65, 'http://localhost/webquanao/uploads/on-sale-18.jpg', 1),
(160, 65, 'http://localhost/webquanao/uploads/on-sale-19.jpg', 2),
(161, 65, 'http://localhost/webquanao/uploads/on-sale-110.jpg', 3),
(162, 65, 'http://localhost/webquanao/uploads/on-sale-111.jpg', 4),
(163, 66, 'http://localhost/webquanao/uploads/on-sale-112.jpg', 1),
(164, 66, 'http://localhost/webquanao/uploads/on-sale-113.jpg', 2),
(165, 66, 'http://localhost/webquanao/uploads/on-sale-114.jpg', 3),
(166, 66, 'http://localhost/webquanao/uploads/on-sale-115.jpg', 4),
(167, 67, 'http://localhost/webquanao/uploads/on-sale-116.jpg', 1),
(168, 67, 'http://localhost/webquanao/uploads/on-sale-117.jpg', 2),
(169, 67, 'http://localhost/webquanao/uploads/on-sale-118.jpg', 3),
(170, 67, 'http://localhost/webquanao/uploads/on-sale-119.jpg', 4),
(171, 68, 'http://localhost/webquanao/uploads/on-sale-120.jpg', 1),
(172, 68, 'http://localhost/webquanao/uploads/on-sale-121.jpg', 2),
(173, 68, 'http://localhost/webquanao/uploads/on-sale-122.jpg', 3),
(174, 68, 'http://localhost/webquanao/uploads/on-sale-123.jpg', 4),
(175, 69, 'http://localhost/webquanao/uploads/on-sale-124.jpg', 1),
(176, 69, 'http://localhost/webquanao/uploads/on-sale-125.jpg', 2),
(177, 69, 'http://localhost/webquanao/uploads/on-sale-126.jpg', 3),
(178, 69, 'http://localhost/webquanao/uploads/on-sale-127.jpg', 4),
(179, 70, 'http://localhost/webquanao/uploads/on-sale-128.jpg', 1),
(180, 70, 'http://localhost/webquanao/uploads/on-sale-129.jpg', 2),
(181, 70, 'http://localhost/webquanao/uploads/on-sale-130.jpg', 3),
(182, 70, 'http://localhost/webquanao/uploads/on-sale-131.jpg', 4),
(183, 71, 'http://localhost/webquanao/uploads/on-sale-132.jpg', 1),
(184, 71, 'http://localhost/webquanao/uploads/on-sale-133.jpg', 2),
(185, 71, 'http://localhost/webquanao/uploads/on-sale-134.jpg', 3),
(186, 71, 'http://localhost/webquanao/uploads/on-sale-135.jpg', 4),
(187, 72, 'http://localhost/webquanao/uploads/on-sale-140.jpg', 1),
(188, 72, 'http://localhost/webquanao/uploads/on-sale-137.jpg', 2),
(189, 72, 'http://localhost/webquanao/uploads/on-sale-138.jpg', 3),
(190, 72, 'http://localhost/webquanao/uploads/on-sale-139.jpg', 4),
(191, 73, 'http://localhost/webquanao/uploads/best-deal-2.jpg', 1),
(192, 73, 'http://localhost/webquanao/uploads/best-deal-21.jpg', 2),
(193, 73, 'http://localhost/webquanao/uploads/best-deal-22.jpg', 3),
(194, 73, 'http://localhost/webquanao/uploads/best-deal-23.jpg', 4),
(195, 74, 'http://localhost/webquanao/uploads/best-deal-24.jpg', 1),
(196, 74, 'http://localhost/webquanao/uploads/best-deal-25.jpg', 2),
(197, 74, 'http://localhost/webquanao/uploads/best-deal-26.jpg', 3),
(198, 74, 'http://localhost/webquanao/uploads/best-deal-27.jpg', 4),
(199, 75, 'http://localhost/webquanao/uploads/best-deal-28.jpg', 1),
(200, 75, 'http://localhost/webquanao/uploads/best-deal-29.jpg', 2),
(201, 75, 'http://localhost/webquanao/uploads/best-deal-210.jpg', 3),
(202, 75, 'http://localhost/webquanao/uploads/best-deal-211.jpg', 4),
(203, 76, 'http://localhost/webquanao/uploads/best-deal-212.jpg', 1),
(204, 76, 'http://localhost/webquanao/uploads/best-deal-213.jpg', 2),
(205, 76, 'http://localhost/webquanao/uploads/best-deal-214.jpg', 3),
(206, 76, 'http://localhost/webquanao/uploads/best-deal-215.jpg', 4),
(207, 77, 'http://localhost/webquanao/uploads/best-deal-216.jpg', 1),
(208, 77, 'http://localhost/webquanao/uploads/best-deal-217.jpg', 2),
(209, 77, 'http://localhost/webquanao/uploads/best-deal-218.jpg', 3),
(210, 77, 'http://localhost/webquanao/uploads/best-deal-219.jpg', 4),
(211, 78, 'http://localhost/webquanao/uploads/best-deal-220.jpg', 1),
(212, 78, 'http://localhost/webquanao/uploads/best-deal-221.jpg', 2),
(213, 78, 'http://localhost/webquanao/uploads/best-deal-222.jpg', 3),
(214, 78, 'http://localhost/webquanao/uploads/best-deal-223.jpg', 4),
(215, 79, 'http://localhost/webquanao/uploads/best-deal-224.jpg', 1),
(216, 79, 'http://localhost/webquanao/uploads/best-deal-225.jpg', 2),
(217, 79, 'http://localhost/webquanao/uploads/best-deal-226.jpg', 3),
(218, 79, 'http://localhost/webquanao/uploads/best-deal-227.jpg', 4),
(219, 80, 'http://localhost/webquanao/uploads/best-deal-228.jpg', 1),
(220, 80, 'http://localhost/webquanao/uploads/best-deal-229.jpg', 2),
(221, 80, 'http://localhost/webquanao/uploads/best-deal-230.jpg', 3),
(222, 80, 'http://localhost/webquanao/uploads/best-deal-231.jpg', 4),
(223, 81, 'http://localhost/webquanao/uploads/best-deal-236.jpg', 1),
(224, 81, 'http://localhost/webquanao/uploads/best-deal-233.jpg', 2),
(225, 81, 'http://localhost/webquanao/uploads/best-deal-234.jpg', 3),
(226, 81, 'http://localhost/webquanao/uploads/best-deal-235.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `TenKhachHang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `NgayThamGia` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `TenKhachHang`, `SoDienThoai`, `DiaChi`, `Email`, `TaiKhoan`, `MatKhau`, `TrangThai`, `NgayThamGia`) VALUES
(13, 'Chu Minh Nam', '0379962045', 'Bắc Từ Liêm, Hà Nội', 'namchuminh@gmail.com', 'nam', '21232f297a57a5a743894a0e4a801fc3', 1, '2023-07-11 18:45:18'),
(24, 'Nguyễn Văn Anh', '0555666777', 'Hà Nội', 'nguyenvananh@gmail.com', 'nguyenvana', '20ca70c7c8f494c7bd1d54ad23d40cde', 1, '2023-07-14 00:41:12'),
(25, 'Nguyễn Văn Bình', '0888999777', 'Hà Nam', 'nguyenvanbinh@gmail.com', 'nguyenvanb', '23280a0ad9238d00c62b0272af265c57', 1, '2023-07-14 00:42:46'),
(26, 'Nguyễn Văn Chung', '0333444555', 'Hà Nội', 'nguyenvanchung@gmail.com', 'nguyenvanchung', '36a00d76edeef3128c3918786dc4e10d', 1, '2023-07-14 00:46:05'),
(27, 'Nguyễn Văn Dũng', '0444555666', 'Hà Nội', 'dung@gmail.com', 'dung', '625d45c587033e8970af8b4e3fdb575c', 1, '2023-07-14 00:48:59'),
(28, 'Nguyễn Văn Em', '0222333444', 'Hà Nội', 'nguyenvanem@gmail.com', 'nguyenvanem', '2e3b271ef4f09bfd649193c6d11ccdc0', 1, '2023-07-14 00:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `lichsunhap`
--

CREATE TABLE `lichsunhap` (
  `MaLichSuNhap` int(11) NOT NULL,
  `MaNhaCungCap` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `SoLuong` int(11) NOT NULL,
  `SoLuongCu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `MaLienHe` int(11) NOT NULL,
  `TenKhachHang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `magiamgia`
--

CREATE TABLE `magiamgia` (
  `MaGiamGia` int(11) NOT NULL,
  `MaSuDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayTao` date NOT NULL DEFAULT current_timestamp(),
  `NgayHetHan` date NOT NULL,
  `TriGia` int(11) NOT NULL,
  `SoLanDung` int(11) NOT NULL DEFAULT 0,
  `SoLuong` int(11) NOT NULL DEFAULT 1,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mausac`
--

CREATE TABLE `mausac` (
  `MaMauSac` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `TenMauSac` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaHienThi` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNhaCungCap` int(11) NOT NULL,
  `TenNhaCungCap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `MaChuyenMuc` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `TenNhanVien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` text COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `AnhChinh` text COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `TenNhanVien`, `SoDienThoai`, `DiaChi`, `Email`, `AnhChinh`, `TaiKhoan`, `MatKhau`, `TrangThai`) VALUES
(1, 'Chu Minh Nam', '0999999999', 'Hà Nội', 'chuminhnamma@gmail.com', 'http://localhost/webquanao/uploads/avatar1.png', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTaNgan` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `MoTaDai` text COLLATE utf8_unicode_ci NOT NULL,
  `GiaGoc` int(11) NOT NULL,
  `GiaBan` int(11) NOT NULL,
  `MaChuyenMuc` int(11) NOT NULL,
  `The` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DuongDan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `SoLuong` int(11) NOT NULL DEFAULT 0,
  `LoaiSanPham` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(11) NOT NULL,
  `MaNhanVien` int(11) NOT NULL,
  `TieuDe` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` date NOT NULL DEFAULT current_timestamp(),
  `TrangThai` int(11) NOT NULL DEFAULT 1,
  `AnhChinh` text COLLATE utf8_unicode_ci NOT NULL,
  `DuongDan` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `The` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cauhinh`
--
ALTER TABLE `cauhinh`
  ADD PRIMARY KEY (`MaCauHinh`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaChiTietDonHang`);

--
-- Indexes for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  ADD PRIMARY KEY (`MaChuyenMuc`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonHang`);

--
-- Indexes for table `giaodien`
--
ALTER TABLE `giaodien`
  ADD PRIMARY KEY (`MaGiaoDien`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`MaHinhAnh`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Indexes for table `lichsunhap`
--
ALTER TABLE `lichsunhap`
  ADD PRIMARY KEY (`MaLichSuNhap`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`MaLienHe`);

--
-- Indexes for table `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`MaGiamGia`);

--
-- Indexes for table `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`MaMauSac`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNhaCungCap`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cauhinh`
--
ALTER TABLE `cauhinh`
  MODIFY `MaCauHinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `MaChiTietDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  MODIFY `MaChuyenMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `giaodien`
--
ALTER TABLE `giaodien`
  MODIFY `MaGiaoDien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `lichsunhap`
--
ALTER TABLE `lichsunhap`
  MODIFY `MaLichSuNhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `MaLienHe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `MaGiamGia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mausac`
--
ALTER TABLE `mausac`
  MODIFY `MaMauSac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNhaCungCap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
