-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 03:39 AM
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
-- Database: `webquanao`
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
(1, 'chuminhnam1@gmail.com', '09999998881', 'Hà Nội1', 'Website quần áo1', 'http://localhost/webquanao/uploads/sanpham51.jpg', '1', '1', '', 'http://localhost/webquanao/uploads/logo.png');

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

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaChiTietDonHang`, `MaDonHang`, `MaSanPham`, `SoLuong`, `MauSac`) VALUES
(16, 26, 62, 6, 'Xanh'),
(17, 26, 61, 2, 'Đỏ'),
(18, 26, 61, 1, 'Vàng'),
(19, 26, 59, 1, 'Xanh'),
(20, 27, 63, 1, 'Trắng'),
(21, 28, 87, 1, 'Vàng');

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

--
-- Dumping data for table `chuyenmuc`
--

INSERT INTO `chuyenmuc` (`MaChuyenMuc`, `TenChuyenMuc`, `DuongDan`, `AnhChinh`, `TrangThai`) VALUES
(18, 'Quần Nam', 'quan-nam', 'http://localhost/webquanao/uploads/tintuc224.png', 1),
(19, 'Nam2', 'nam2', 'http://localhost/webquanao/uploads/tintuc44.jpg', 1),
(20, 'Chuyên Mục Mới', 'chuyen-muc-moi', 'http://localhost/webquanao/uploads/sanpham7.png', 1),
(21, 'Chuyên Mục Mới', 'chuyen-muc-moi', 'http://localhost/webquanao/uploads/sanpham71.png', 1),
(22, 'Chuyên Mục Mới', 'chuyen-muc-moi', 'http://localhost/webquanao/uploads/sanpham72.png', 1),
(23, 'Chuyên Mục Mới', 'chuyen-muc-moi', 'http://localhost/webquanao/uploads/sanpham73.png', 1),
(24, 'Chuyên Mục Mới', 'chuyen-muc-moi', 'http://localhost/webquanao/uploads/sanpham74.png', 1),
(25, 'Chuyên Mục Mới', 'chuyen-muc-moi', 'http://localhost/webquanao/uploads/sanpham75.png', 1),
(26, 'Chuyên Mục Mới', 'chuyen-muc-moi', 'http://localhost/webquanao/uploads/sanpham76.png', 1),
(27, 'Chuyên Mục Mới', 'chuyen-muc-moi', 'http://localhost/webquanao/uploads/sanpham77.png', 1);

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

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MaDonHang`, `MaKhachHang`, `SoLuong`, `ThanhTien`, `ThoiGian`, `TrangThai`, `DiaChi`, `GiamGia`, `TenCongTy`, `PhuongThucThanhToan`) VALUES
(26, 13, 10, 1300000, '2023-07-18 09:19:51', 1, 'Cổ Nhuế, Bắc Từ Liêm - Bắc từ liêm Hà Nội', 100000, 'Lập trình từ đầu', 2),
(27, 13, 1, 140000, '2023-07-18 06:38:55', 1, 'Hà Nội - Hà Nội Hà Nội', 0, 'Lập trình từ đầu', 1),
(28, 13, 1, 140000, '2023-07-18 06:56:13', 1, 'Nam - Nam Nam', 0, 'Lập Trình Từ Đầu', 1);

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

--
-- Dumping data for table `giaodien`
--

INSERT INTO `giaodien` (`MaGiaoDien`, `MaChuyenMuc`, `TheLoai`, `HinhAnh`) VALUES
(14, 19, 1, 'http://localhost/webquanao/uploads/hero-1.jpg'),
(15, 18, 1, 'http://localhost/webquanao/uploads/hero-11.jpg'),
(16, NULL, 1, 'http://localhost/webquanao/uploads/hero-12.jpg'),
(17, 19, 2, 'http://localhost/webquanao/uploads/banner-14.jpg'),
(18, NULL, 2, 'http://localhost/webquanao/uploads/banner-13.jpg'),
(19, 19, 2, 'http://localhost/webquanao/uploads/banner-15.jpg'),
(20, 18, 3, 'http://localhost/webquanao/uploads/banner-4.jpg'),
(21, 19, 3, 'http://localhost/webquanao/uploads/banner-41.jpg'),
(22, NULL, 3, 'http://localhost/webquanao/uploads/banner-16.jpg');

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
(27, 32, 'http://localhost/webquanao/uploads/chitiet3.png', 1),
(28, 32, 'http://localhost/webquanao/uploads/chitiet31.png', 2),
(29, 32, 'http://localhost/webquanao/uploads/chitiet32.png', 3),
(30, 32, 'http://localhost/webquanao/uploads/chitiet33.png', 4),
(31, 33, 'http://localhost/webquanao/uploads/tintuc31.jpg', 1),
(32, 33, 'http://localhost/webquanao/uploads/sanpham6.png', 2),
(33, 33, 'http://localhost/webquanao/uploads/sanpham13.png', 3),
(34, 33, 'http://localhost/webquanao/uploads/tintuc11.png', 4),
(35, 34, 'http://localhost/webquanao/uploads/tintuc32.jpg', 1),
(36, 34, 'http://localhost/webquanao/uploads/sanpham61.png', 2),
(37, 34, 'http://localhost/webquanao/uploads/sanpham131.png', 3),
(38, 34, 'http://localhost/webquanao/uploads/tintuc12.png', 4),
(39, 35, 'http://localhost/webquanao/uploads/tintuc41.jpg', 1),
(40, 35, 'http://localhost/webquanao/uploads/chitiet34.png', 2),
(41, 35, 'http://localhost/webquanao/uploads/sanpham11.jpg', 3),
(42, 35, 'http://localhost/webquanao/uploads/tintuc42.jpg', 4),
(43, 36, 'http://localhost/webquanao/uploads/tintuc43.jpg', 1),
(44, 36, 'http://localhost/webquanao/uploads/sanpham111.jpg', 2),
(45, 36, 'http://localhost/webquanao/uploads/tintuc33.jpg', 3),
(46, 36, 'http://localhost/webquanao/uploads/tintuc13.png', 4),
(47, 37, 'http://localhost/webquanao/uploads/tintuc34.jpg', 1),
(48, 37, 'http://localhost/webquanao/uploads/sanpham10.png', 2),
(49, 37, 'http://localhost/webquanao/uploads/tintuc24.png', 3),
(50, 37, 'http://localhost/webquanao/uploads/tintuc35.jpg', 4),
(51, 38, 'http://localhost/webquanao/uploads/tintuc36.jpg', 1),
(52, 38, 'http://localhost/webquanao/uploads/sanpham101.png', 2),
(53, 38, 'http://localhost/webquanao/uploads/tintuc25.png', 3),
(54, 38, 'http://localhost/webquanao/uploads/tintuc37.jpg', 4),
(55, 39, 'http://localhost/webquanao/uploads/tintuc38.jpg', 1),
(56, 39, 'http://localhost/webquanao/uploads/sanpham102.png', 2),
(57, 39, 'http://localhost/webquanao/uploads/tintuc26.png', 3),
(58, 39, 'http://localhost/webquanao/uploads/tintuc39.jpg', 4),
(59, 40, 'http://localhost/webquanao/uploads/tintuc310.jpg', 1),
(60, 40, 'http://localhost/webquanao/uploads/sanpham103.png', 2),
(61, 40, 'http://localhost/webquanao/uploads/tintuc27.png', 3),
(62, 40, 'http://localhost/webquanao/uploads/tintuc311.jpg', 4),
(63, 41, 'http://localhost/webquanao/uploads/tintuc312.jpg', 1),
(64, 41, 'http://localhost/webquanao/uploads/sanpham104.png', 2),
(65, 41, 'http://localhost/webquanao/uploads/tintuc28.png', 3),
(66, 41, 'http://localhost/webquanao/uploads/tintuc313.jpg', 4),
(67, 42, 'http://localhost/webquanao/uploads/tintuc314.jpg', 1),
(68, 42, 'http://localhost/webquanao/uploads/sanpham105.png', 2),
(69, 42, 'http://localhost/webquanao/uploads/tintuc29.png', 3),
(70, 42, 'http://localhost/webquanao/uploads/tintuc315.jpg', 4),
(71, 43, 'http://localhost/webquanao/uploads/tintuc316.jpg', 1),
(72, 43, 'http://localhost/webquanao/uploads/sanpham106.png', 2),
(73, 43, 'http://localhost/webquanao/uploads/tintuc210.png', 3),
(74, 43, 'http://localhost/webquanao/uploads/tintuc317.jpg', 4),
(75, 44, 'http://localhost/webquanao/uploads/tintuc318.jpg', 1),
(76, 44, 'http://localhost/webquanao/uploads/sanpham107.png', 2),
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
(226, 81, 'http://localhost/webquanao/uploads/best-deal-235.jpg', 4),
(227, 82, 'http://localhost/webquanao/uploads/tintuc2.png', 1),
(228, 82, 'http://localhost/webquanao/uploads/tintuc21.png', 2),
(229, 82, 'http://localhost/webquanao/uploads/tintuc22.png', 3),
(230, 82, 'http://localhost/webquanao/uploads/tintuc23.png', 4),
(231, 83, 'http://localhost/webquanao/uploads/tintuc24.png', 1),
(232, 83, 'http://localhost/webquanao/uploads/tintuc25.png', 2),
(233, 83, 'http://localhost/webquanao/uploads/tintuc26.png', 3),
(234, 83, 'http://localhost/webquanao/uploads/tintuc27.png', 4),
(235, 84, 'http://localhost/webquanao/uploads/tintuc28.png', 1),
(236, 84, 'http://localhost/webquanao/uploads/tintuc29.png', 2),
(237, 84, 'http://localhost/webquanao/uploads/tintuc210.png', 3),
(238, 84, 'http://localhost/webquanao/uploads/tintuc211.png', 4),
(239, 85, 'http://localhost/webquanao/uploads/tintuc212.png', 1),
(240, 85, 'http://localhost/webquanao/uploads/tintuc213.png', 2),
(241, 85, 'http://localhost/webquanao/uploads/tintuc214.png', 3),
(242, 85, 'http://localhost/webquanao/uploads/tintuc215.png', 4),
(243, 86, 'http://localhost/webquanao/uploads/tintuc216.png', 1),
(244, 86, 'http://localhost/webquanao/uploads/tintuc217.png', 2),
(245, 86, 'http://localhost/webquanao/uploads/tintuc218.png', 3),
(246, 86, 'http://localhost/webquanao/uploads/tintuc219.png', 4),
(247, 87, 'http://localhost/webquanao/uploads/tintuc220.png', 1),
(248, 87, 'http://localhost/webquanao/uploads/tintuc221.png', 2),
(249, 87, 'http://localhost/webquanao/uploads/tintuc222.png', 3),
(250, 87, 'http://localhost/webquanao/uploads/tintuc223.png', 4);

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

--
-- Dumping data for table `lichsunhap`
--

INSERT INTO `lichsunhap` (`MaLichSuNhap`, `MaNhaCungCap`, `MaSanPham`, `ThoiGian`, `SoLuong`, `SoLuongCu`) VALUES
(9, 3, 51, '2023-07-11 00:17:56', 5, 100);

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

--
-- Dumping data for table `lienhe`
--

INSERT INTO `lienhe` (`MaLienHe`, `TenKhachHang`, `SoDienThoai`, `TieuDe`, `NoiDung`, `ThoiGian`, `TrangThai`) VALUES
(13, 'A', '0999999999', 'a', 'a', '2023-07-11 19:10:44', 1),
(14, 'Nam Đẹp  Tai', '0888999222', 'Nam tets', 'nam dệp trai', '2023-07-13 22:06:26', 1);

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

--
-- Dumping data for table `magiamgia`
--

INSERT INTO `magiamgia` (`MaGiamGia`, `MaSuDung`, `NgayTao`, `NgayHetHan`, `TriGia`, `SoLanDung`, `SoLuong`, `TrangThai`) VALUES
(5, 'NAMDEPTRAI', '2023-07-15', '2023-07-21', 100000, 2, 2, 1),
(6, 'NAM', '2023-07-15', '2023-07-22', 100000, 2, 2, 1);

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

--
-- Dumping data for table `mausac`
--

INSERT INTO `mausac` (`MaMauSac`, `MaSanPham`, `TenMauSac`, `MaHienThi`) VALUES
(38, 32, 'blue', 'blue'),
(39, 32, 'red', 'red'),
(40, 32, 'yellow', 'yellow'),
(41, 33, 'yellow', 'yellow'),
(42, 33, 'black', 'black'),
(43, 33, 'pink', 'pink'),
(44, 34, 'yellow', 'yellow'),
(45, 34, 'black', 'black'),
(46, 34, 'pink', 'pink'),
(47, 35, 'yellow', 'yellow'),
(48, 35, 'white', 'white'),
(49, 35, 'black', 'black'),
(50, 36, 'white', 'white'),
(51, 36, 'black', 'black'),
(52, 36, 'pink', 'pink'),
(53, 37, 'blue', 'blue'),
(54, 37, 'red', 'red'),
(55, 37, 'yellow', 'yellow'),
(56, 38, 'blue', 'blue'),
(57, 38, 'red', 'red'),
(58, 38, 'yellow', 'yellow'),
(59, 39, 'blue', 'blue'),
(60, 39, 'red', 'red'),
(61, 39, 'yellow', 'yellow'),
(62, 40, 'blue', 'blue'),
(63, 40, 'red', 'red'),
(64, 40, 'yellow', 'yellow'),
(65, 41, 'blue', 'blue'),
(66, 41, 'red', 'red'),
(67, 41, 'yellow', 'yellow'),
(68, 42, 'blue', 'blue'),
(69, 42, 'red', 'red'),
(70, 42, 'yellow', 'yellow'),
(71, 43, 'blue', 'blue'),
(72, 43, 'red', 'red'),
(73, 43, 'yellow', 'yellow'),
(74, 44, 'blue', 'blue'),
(75, 44, 'red', 'red'),
(76, 44, 'yellow', 'yellow'),
(77, 45, 'yellow', 'yellow'),
(78, 45, 'white', 'white'),
(79, 45, 'black', 'black'),
(80, 46, 'yellow', 'yellow'),
(81, 46, 'white', 'white'),
(82, 46, 'black', 'black'),
(83, 47, 'yellow', 'yellow'),
(84, 47, 'white', 'white'),
(85, 47, 'black', 'black'),
(86, 48, 'yellow', 'yellow'),
(87, 48, 'white', 'white'),
(88, 48, 'black', 'black'),
(89, 49, 'yellow', 'yellow'),
(90, 49, 'white', 'white'),
(91, 49, 'black', 'black'),
(92, 50, 'red', 'red'),
(93, 50, 'yellow', 'yellow'),
(94, 50, 'white', 'white'),
(99, 51, 'red', 'red'),
(100, 51, 'white', 'white'),
(101, 51, 'black', 'black'),
(102, 52, 'yellow', 'yellow'),
(103, 52, 'white', 'white'),
(104, 52, 'black', 'black'),
(105, 53, 'yellow', 'yellow'),
(106, 53, 'white', 'white'),
(107, 54, 'blue', 'blue'),
(108, 54, 'red', 'red'),
(109, 54, 'yellow', 'yellow'),
(110, 55, 'blue', 'blue'),
(111, 55, 'red', 'red'),
(112, 55, 'yellow', 'yellow'),
(113, 56, 'blue', 'blue'),
(114, 56, 'red', 'red'),
(115, 56, 'yellow', 'yellow'),
(116, 57, 'blue', 'blue'),
(117, 57, 'red', 'red'),
(118, 57, 'yellow', 'yellow'),
(119, 58, 'blue', 'blue'),
(120, 58, 'red', 'red'),
(121, 58, 'yellow', 'yellow'),
(122, 59, 'blue', 'blue'),
(123, 59, 'red', 'red'),
(124, 59, 'yellow', 'yellow'),
(125, 60, 'blue', 'blue'),
(126, 60, 'red', 'red'),
(127, 60, 'yellow', 'yellow'),
(128, 61, 'blue', 'blue'),
(129, 61, 'red', 'red'),
(130, 61, 'yellow', 'yellow'),
(131, 62, 'blue', 'blue'),
(132, 62, 'red', 'red'),
(133, 62, 'yellow', 'yellow'),
(134, 63, 'yellow', 'yellow'),
(135, 63, 'white', 'white'),
(136, 64, 'yellow', 'yellow'),
(137, 64, 'white', 'white'),
(138, 65, 'yellow', 'yellow'),
(139, 65, 'white', 'white'),
(140, 66, 'red', 'red'),
(141, 66, 'white', 'white'),
(142, 66, 'black', 'black'),
(143, 67, 'red', 'red'),
(144, 67, 'white', 'white'),
(145, 67, 'black', 'black'),
(146, 68, 'red', 'red'),
(147, 68, 'white', 'white'),
(148, 68, 'black', 'black'),
(149, 69, 'red', 'red'),
(150, 69, 'white', 'white'),
(151, 69, 'black', 'black'),
(152, 70, 'red', 'red'),
(153, 70, 'white', 'white'),
(154, 70, 'black', 'black'),
(155, 71, 'red', 'red'),
(156, 71, 'white', 'white'),
(157, 71, 'black', 'black'),
(158, 72, 'red', 'red'),
(159, 72, 'white', 'white'),
(160, 72, 'black', 'black'),
(161, 73, 'red', 'red'),
(162, 73, 'yellow', 'yellow'),
(163, 73, 'white', 'white'),
(164, 74, 'red', 'red'),
(165, 74, 'yellow', 'yellow'),
(166, 74, 'white', 'white'),
(167, 75, 'red', 'red'),
(168, 75, 'yellow', 'yellow'),
(169, 75, 'white', 'white'),
(170, 76, 'red', 'red'),
(171, 76, 'yellow', 'yellow'),
(172, 76, 'white', 'white'),
(173, 77, 'red', 'red'),
(174, 77, 'yellow', 'yellow'),
(175, 77, 'white', 'white'),
(176, 78, 'red', 'red'),
(177, 78, 'yellow', 'yellow'),
(178, 78, 'white', 'white'),
(179, 79, 'red', 'red'),
(180, 79, 'yellow', 'yellow'),
(181, 79, 'white', 'white'),
(182, 80, 'red', 'red'),
(183, 80, 'yellow', 'yellow'),
(184, 80, 'white', 'white'),
(185, 81, 'red', 'red'),
(186, 81, 'yellow', 'yellow'),
(187, 81, 'white', 'white'),
(188, 82, 'yellow', 'yellow'),
(189, 82, 'white', 'white'),
(190, 82, 'pink', 'pink'),
(191, 83, 'yellow', 'yellow'),
(192, 83, 'white', 'white'),
(193, 83, 'pink', 'pink'),
(194, 84, 'yellow', 'yellow'),
(195, 84, 'white', 'white'),
(196, 84, 'pink', 'pink'),
(197, 85, 'yellow', 'yellow'),
(198, 85, 'white', 'white'),
(199, 85, 'pink', 'pink'),
(200, 86, 'yellow', 'yellow'),
(201, 86, 'white', 'white'),
(202, 86, 'pink', 'pink'),
(203, 87, 'yellow', 'yellow'),
(204, 87, 'white', 'white'),
(205, 87, 'pink', 'pink');

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

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNhaCungCap`, `TenNhaCungCap`, `MoTa`, `MaChuyenMuc`, `TrangThai`) VALUES
(3, 'Nam', 'nam', 18, 1),
(4, 'Nam', 'Cung cấp quần nam 2', 19, 1);

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

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MoTaNgan`, `MoTaDai`, `GiaGoc`, `GiaBan`, `MaChuyenMuc`, `The`, `DuongDan`, `TrangThai`, `SoLuong`, `LoaiSanPham`) VALUES
(52, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'Sản phẩm, quần áo', 'san-pham-mau-cho-cua-hang', 1, 1, 1),
(53, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 1, 1),
(54, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(55, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(56, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(57, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(58, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(59, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(60, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(61, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 19, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(62, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hangnam', 1, 15, 1),
(63, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(64, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(65, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(66, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(67, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 27, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(68, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(69, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(70, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(71, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(72, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(73, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(74, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(75, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(76, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(77, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 26, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(78, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 24, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(79, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 22, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(80, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 25, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(81, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 19, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(82, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'san pham, moi', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(83, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 21, 'san pham, moi', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(84, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'san pham, moi', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(85, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'san pham, moi', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(86, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'san pham, moi', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(87, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<h1 style=\"text-align:start\"><span style=\"font-size:32px\"><strong><span style=\"font-family:Merriweather,serif\"><span style=\"color:#222222\"><span style=\"background-color:#fcfaf6\">T&aacute;c giả &lsquo;Vệt nắng cuối trời&rsquo; kh&ocirc;ng muốn l&agrave;m nhạc sĩ</span></span></span></strong></span></h1>\r\n\r\n<p style=\"text-align:start\"><span style=\"font-size:18px\"><span style=\"color:#222222\"><span style=\"font-family:arial\"><span style=\"background-color:#fcfaf6\">C&oacute; trong tay hơn 20 ca kh&uacute;c, trong đ&oacute; kh&ocirc;ng &iacute;t b&agrave;i được kh&aacute;n giả y&ecirc;u th&iacute;ch, Tiến Minh vẫn cho rằng, viết b&agrave;i h&aacute;t theo đơn đặt h&agrave;ng trước sau chỉ l&agrave; một th&uacute; chơi gi&uacute;p anh kiếm tiền để sống với niềm đam m&ecirc; diễn của m&igrave;nh</span></span></span></span></p>\r\n\r\n<p style=\"text-align:center\"><img src=\"https://i1-giaitri.vnecdn.net/2010/09/16/tm2-1345726083.jpg?w=480&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=dy2qHiFvD1gzNwwYSLmlfw\" /></p>\r\n\r\n<p style=\"text-align:center\"><span style=\"color:#222222\">&Iacute;t ai ngờ một người như Tiến Minh lại &quot;cổ lỗ sĩ&quot;.</span></p>\r\n\r\n<p>Khi &ldquo;Vệt nắng cuối trời&rdquo; kết th&uacute;c tr&ecirc;n VTV3, b&agrave;i h&aacute;t trong phim vẫn tiếp tục tạo th&agrave;nh cơn sốt. Tr&ecirc;n mạng, c&aacute;c qu&aacute;n caf&eacute; v&agrave; thậm ch&iacute; nhạc chu&ocirc;ng điện thoại cũng thấy vang l&ecirc;n ca kh&uacute;c n&agrave;y nhưng kh&aacute;n giả chẳng mấy ai nhận ra t&ecirc;n nhạc sĩ. Nhiều người d&ograve; đo&aacute;n kh&ocirc;ng biết nhạc sĩ Tiến Minh - ca sĩ Minh Tiến c&oacute; phải l&agrave; một?</p>\r\n\r\n<p><strong><span style=\"color:#3f3f3f\">Con người &ldquo;cổ lỗ sĩ&rdquo;</span></strong></p>\r\n\r\n<p>Để t&igrave;m được Tiến Minh d&ograve; ra nguồn cơn kh&ocirc;ng phải dễ. Những người quen anh đều bảo: &ldquo;Tiến Minh c&oacute; th&oacute;i quen rất lạ, kh&ocirc;ng d&ugrave;ng điện thoại, chỉ c&oacute; thể &#39;chộp&#39; anh khi anh l&ecirc;n h&atilde;ng phim hay chuyển lời nhắn&quot;. Nhờ một người bạn trong h&atilde;ng phim Đ&agrave;i truyền h&igrave;nh Việt Nam, ph&oacute;ng vi&ecirc;n cũng đ&atilde; gửi được lời nhắn tới ch&agrave;ng nhạc sĩ &ldquo;ẩn dật&rdquo; n&agrave;y. Kh&ocirc;ng l&acirc;u sau đ&oacute;, anh gọi điện lại đồng &yacute; gặp, giọng rất trầm ấm v&agrave; nhiệt t&igrave;nh.</p>\r\n\r\n<p>Tr&aacute;ch anh v&igrave; c&aacute;i sự &ldquo;v&ograve;ng vo tam quốc&rdquo; khi li&ecirc;n hệ, Tiến Minh bối rối tự nhận đ&oacute; l&agrave; điểm yếu của m&igrave;nh. Những người muốn li&ecirc;n hệ với Tiến Minh phải gọi qua c&aacute;c em anh nhờ b&aacute;o tin hoặc điện thoại đến nh&agrave;. Anh bảo d&ugrave;ng điện thoại cũng cần c&oacute; năng khiếu như l&agrave;m nhạc, đ&oacute;ng phim v&agrave; anh kh&ocirc;ng c&oacute; năng khiếu đ&oacute;. Nhiều khi bản th&acirc;n Tiến Minh cũng tự thấy buồn cười v&agrave; bất tiện nhưng t&iacute;nh anh cẩu thả, d&ugrave;ng điện thoại 1-2 ng&agrave;y l&agrave; mất, c&oacute; c&aacute;i mua để v&agrave;o hộp sắt cất trong cốp xe kh&oacute;a lại vẫn mất như thường.</p>\r\n\r\n<p>Gọi điện t&igrave;m anh vất vả nhưng b&ugrave; lại, Tiến Minh l&agrave; người rất tr&aacute;ch nhiệm. Khi đ&atilde; nhận lời, anh lu&ocirc;n l&agrave; người chủ động li&ecirc;n lạc. C&oacute; nhiều phim, đạo diễn sau khi li&ecirc;n hệ với anh v&agrave;i lần kh&ocirc;ng được n&ecirc;n nản, t&igrave;m người kh&aacute;c, nhưng anh kh&ocirc;ng thấy tiếc. Anh bảo, nếu người ta thực sự nghĩ vai diễn đ&oacute; phải để cho Minh &quot;Đen&quot; th&igrave; họ đ&atilde; t&igrave;m m&igrave;nh bằng mọi c&aacute;ch. Nếu họ t&igrave;m người kh&aacute;c, coi như vai ấy kh&ocirc;ng c&oacute; duy&ecirc;n với m&igrave;nh.</p>\r\n\r\n<p>Cũng bởi c&aacute;i t&iacute;nh cẩu thả hay qu&ecirc;n m&agrave; tr&ecirc;n người anh, kh&ocirc;ng c&oacute; bất cứ phụ kiện n&agrave;o như k&iacute;nh, b&uacute;t, v&ograve;ng d&acirc;y, nhẫn, đồng hồ đi k&egrave;m như c&aacute;c ch&agrave;ng trai thời thượng. Bạn b&egrave; khuy&ecirc;n anh sắm Macbook v&igrave; trong đ&oacute; c&oacute; chương tr&igrave;nh l&agrave;m nhạc hay. Anh nhắm mắt mua bừa, mua xong vứt cho người bạn nhờ c&agrave;i, mấy th&aacute;ng chưa biết sử dụng. Viết nhạc vẫn bằng tay.</p>\r\n\r\n<p>Tiến Minh thừa nhận m&igrave;nh l&agrave; người cổ lỗ sĩ, tuy vẫn quần b&ograve; &aacute;o ph&ocirc;ng nhưng th&uacute; ti&ecirc;u khiển duy nhất l&agrave; chơi cờ tướng. Quan niệm trong gia đ&igrave;nh cũng vậy: con c&aacute;i anh em phải r&otilde; r&agrave;ng, t&ocirc;n ti trật tự th&agrave;nh nếp như c&aacute;c cụ ng&agrave;y xưa. Nhiều người n&oacute;i anh &quot;b&ocirc;n&quot;. Bản th&acirc;n anh tự nhận m&igrave;nh gi&agrave;u t&igrave;nh cảm, rất thương bố mẹ v&agrave; chiều hai con nhưng c&aacute;ch thể hiện đ&ocirc;i khi hơi cục cằn, nghi&ecirc;m khắc.</p>\r\n', 150000, 140000, 18, 'san pham, moi', 'san-pham-moi-cua-cua-hang111111111', 1, 15, 3);

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
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`MaTinTuc`, `MaNhanVien`, `TieuDe`, `NoiDung`, `NgayDang`, `TrangThai`, `AnhChinh`, `DuongDan`, `The`) VALUES
(18, 1, 'Tin tức mới ', '<p>Tin tức mới&nbsp;</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/tintuc41.jpg', 'tin-tuc-moi', 'tin tuc, tin tuc'),
(19, 1, 'Tin tức mới ', '<p>Tin tức mới&nbsp;</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/tintuc42.jpg', 'tin-tuc-moi', 'tin tuc, tin tuc'),
(20, 1, 'Tin tức mới ', '<p>Tin tức mới&nbsp;</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/tintuc43.jpg', 'tin-tuc-moi', 'tin tuc, tin tuc'),
(21, 1, 'Tin tức mới ', '<p>L&agrave; người đầu ti&ecirc;n trong nh&oacute;m cựu quan chức nhận hối lộ bị thẩm vấn, &ocirc;ng Nguyễn Quang Linh khai l&agrave;m trợ l&yacute; Ph&oacute; thủ tướng thường trực từ năm 2013 đến khi bị bắt (th&aacute;ng 9/2022).</p>\r\n\r\n<p>Cho rằng trợ l&yacute; kh&ocirc;ng c&oacute; chức năng thẩm định, đề xuất c&aacute;c đề nghị hay tờ tr&igrave;nh gửi đến Ph&oacute; thủ tướng nhưng &ocirc;ng Linh nhận c&oacute; nhiệm vụ &quot;r&agrave; so&aacute;t văn phong, nội dung c&oacute; đ&uacute;ng hay kh&ocirc;ng&quot;. &Ocirc;ng kh&ocirc;ng c&oacute; thẩm quyền ngăn chặn, b&aacute;c bỏ văn bản m&agrave; chỉ b&aacute;o c&aacute;o Ph&oacute; thủ tướng xem x&eacute;t.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Cựu trợ lý phó thủ tướng, bị cáo Nguyễn Quang Linh tới tòa, sáng 11/7. Ảnh: Phạm Dự\" src=\"https://i1-vnexpress.vnecdn.net/2023/07/12/21e22ee9c515154b4c04-jpeg-1689-6425-1987-1689137869.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=ktyl-ZWKAVhnJjhRvsV6ZA\" /></p>\r\n\r\n<p style=\"text-align:center\">Cựu trợ l&yacute; ph&oacute; thủ tướng, bị c&aacute;o Nguyễn Quang Linh, tới t&ograve;a s&aacute;ng 11/7. Ảnh:&nbsp;<em>Phạm Dự</em></p>\r\n\r\n<p>Về quy tr&igrave;nh thẩm định văn bản, &ocirc;ng Linh cho hay mọi hồ sơ sẽ gửi ở văn thư của Văn ph&ograve;ng Ch&iacute;nh phủ, sau đ&oacute; gửi đến c&aacute;c vụ chức năng. Hồ sơ cấp ph&eacute;p chuyến bay giải cứu v&igrave; thế được chuyển đến Vụ Quan hệ quốc tế xem x&eacute;t, sau đ&oacute; l&agrave;m tờ tr&igrave;nh l&atilde;nh đạo Văn ph&ograve;ng Ch&iacute;nh phủ v&agrave; cuối c&ugrave;ng mới tr&igrave;nh Ph&oacute; thủ tướng.</p>\r\n\r\n<p>&Ocirc;ng Linh cho rằng Văn ph&ograve;ng Ch&iacute;nh phủ bổ sung th&ecirc;m chức năng thẩm định hồ sơ cấp ph&eacute;p chuyến bay giải cứu l&agrave; kh&ocirc;ng đ&uacute;ng, khi m&agrave; Thủ tướng đ&atilde; giao cho tổ c&ocirc;ng t&aacute;c 5 Bộ (Ngoại giao, C&ocirc;ng an, Y tế, Giao th&ocirc;ng Vận tải, Quốc ph&ograve;ng) l&agrave;m việc n&agrave;y. &quot;Bị c&aacute;o biết Văn ph&ograve;ng Ch&iacute;nh phủ trực tiếp tiếp nhận hồ sơ để tr&igrave;nh l&ecirc;n Ph&oacute; thủ tướng l&agrave; chưa đ&uacute;ng nhưng bị c&aacute;o vẫn tr&igrave;nh&quot;, &ocirc;ng Linh n&oacute;i.</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/tintuc44.jpg', 'tin-tuc-moi', 'tin tuc, tin tuc'),
(22, 1, 'Tin tức mới ', '<p>Tin tức mới&nbsp;</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/sanpham11.jpg', 'tin-tuc-moi', 'tin moi, tin tuc'),
(23, 1, 'Tin tức mới ', '<p>Tin tức mới&nbsp;</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/sanpham111.jpg', 'tin-tuc-moi', 'tin moi, tin tuc'),
(24, 1, 'Tin tức mới ', '<p>Tin tức mới&nbsp;</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/sanpham112.jpg', 'tin-tuc-moi', 'tin moi, tin tuc'),
(25, 1, 'Tin tức mới ', '<p>Tin tức mới&nbsp;</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/sanpham113.jpg', 'tin-tuc-moi', 'tin moi, tin tuc'),
(26, 1, 'Tin tức mới ', '<p>Tin tức mới&nbsp;</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/sanpham114.jpg', 'tin-tuc-moi', 'tin moi, tin tuc'),
(27, 1, 'Tin tức mới ', '<p>Bị thẩm vấn về 435 cuộc gọi với Ph&oacute; gi&aacute;m đốc C&ocirc;ng an H&agrave; Nội khi thụ l&yacute; vụ chuyến bay giải cứu, cựu điều tra vi&ecirc;n Ho&agrave;ng Văn Hưng n&oacute;i VKS &quot;&aacute;p đặt&quot; khi c&aacute;o buộc gọi nhau để chạy &aacute;n 2,6 triệu USD.</p>\r\n\r\n<p>Trưa 13/7, HĐXX TAND H&agrave; Nội x&eacute;t hỏi xong 54 bị c&aacute;o trong đại &aacute;n &quot;<a href=\"https://vnexpress.net/topic/vu-an-chuyen-bay-giai-cuu-26490\" rel=\"dofollow\">chuyến bay giải cứu</a>&quot; li&ecirc;n quan 21 cựu quan chức 7 bộ ng&agrave;nh, đơn vị nh&agrave; nước. Chuyển sang phần x&eacute;t hỏi của Viện kiểm s&aacute;t, người đầu ti&ecirc;n bước l&ecirc;n bục thẩm vấn l&agrave; bị c&aacute;o Ho&agrave;ng Văn Hưng, cựu Trưởng ph&ograve;ng 5, Cơ quan An ninh Điều tra, Bộ C&ocirc;ng an, cũng l&agrave; điều tra vi&ecirc;n ch&iacute;nh của vụ &aacute;n trong giai đoạn đầu.</p>\r\n\r\n<p>Hưng bị c&aacute;o buộc m&oacute;c nối với cựu thiếu tướng Nguyễn Anh Tuấn, cựu Ph&oacute; gi&aacute;m đốc C&ocirc;ng an H&agrave; Nội, nhận 2,6 triệu USD để &quot;chạy &aacute;n&quot; cho L&ecirc; Hồng Sơn (Tổng gi&aacute;m đốc C&ocirc;ng ty Bầu Trời Xanh, BlueSky), Nguyễn Thị Thanh Hằng (Ph&oacute; tổng gi&aacute;m đốc) bị điều tra sai phạm tổ chức chuyến bay.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"Cựu điều tra viên Hoàng Văn Hưng. Ảnh:Phạm Dự\" src=\"https://i1-vnexpress.vnecdn.net/2023/07/13/img-9897-jpg-4856-1689217306-1-9862-8711-1689234446.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=dnttucSoIErSM4zCzLM_sw\" /></p>\r\n\r\n<p style=\"text-align:center\">Cựu điều tra vi&ecirc;n Ho&agrave;ng Văn Hưng. Ảnh:&nbsp;<em>Phạm Dự</em></p>\r\n\r\n<p>Trong hơn 40 ph&uacute;t trả lời v&agrave; đối chất, &ocirc;ng Hưng tỏ ra tự tin, nhanh ch&oacute;ng khẳng định &quot;VKS truy tố oan&quot;. &Ocirc;ng cho rằng tất cả lời khai trước đ&oacute; của bị c&aacute;o Tuấn v&agrave; Hằng đều&nbsp;<a href=\"https://vnexpress.net/cuu-pho-giam-doc-cong-an-ha-noi-khai-moi-gioi-hoi-lo-2-6-trieu-usd-vi-thuong-nguoi-4628642.html\" rel=\"dofollow\">sai sự thật.</a></p>\r\n\r\n<p>&Ocirc;ng Hưng gợi &yacute; &quot;chỉ cần cho 5 ph&uacute;t, bị c&aacute;o chứng minh m&igrave;nh bị oan ngay&quot;, song chủ tọa nhắc &quot;cứ trả lời c&acirc;u hỏi của VKS trước đi, c&oacute; g&igrave; tr&igrave;nh b&agrave;y sau&quot;.</p>\r\n\r\n<p>Cựu điều tra vi&ecirc;n khai quen &ocirc;ng Tuấn do c&oacute; phối hợp c&ocirc;ng t&aacute;c v&agrave; chơi với nhau như anh em, qua một bạn chung. V&agrave;i ng&agrave;y sau khi những người đầu ti&ecirc;n của vụ &aacute;n n&agrave;y bị khởi tố, Hưng được &ocirc;ng Tuấn mời đến nh&agrave;, tổng 4 lần, để gặp b&agrave; Hằng &quot;tư vấn&quot; về t&igrave;nh h&igrave;nh điều tra.</p>\r\n\r\n<p>&quot;Bị c&aacute;o chỉ khuy&ecirc;n chị Hằng tự th&uacute; sớm. Chị ấy đang bị điều tra, chắc chắn sẽ bị gọi l&ecirc;n sớm, sẽ bị ph&aacute;p luật xử l&yacute; th&ocirc;i nhưng tự th&uacute; sẽ được khoan hồng&quot;, bị c&aacute;o Hưng khai v&agrave; khẳng định chưa bao giờ đề cập chuyện tiền nong v&igrave; biết chị n&agrave;y l&agrave; chỗ th&acirc;n quen &ocirc;ng Tuấn, &quot;hơn nữa đưa tiền cũng kh&ocirc;ng để l&agrave;m g&igrave;&quot;.</p>\r\n\r\n<p>&quot;Bị c&aacute;o nghe r&otilde; n&agrave;y, bị c&aacute;o khi đ&oacute; l&agrave; điều tra vi&ecirc;n ch&iacute;nh của vụ &aacute;n m&agrave; hẹn gặp để trao đổi th&ocirc;ng tin th&igrave; c&oacute; được ph&eacute;p kh&ocirc;ng?&quot;, c&ocirc;ng tố vi&ecirc;n hỏi.</p>\r\n\r\n<p>Bị c&aacute;o Hưng tự tin đ&aacute;p tr&ocirc;i chảy: &quot;Theo quy định của Bộ C&ocirc;ng an kh&ocirc;ng được gặp bị can, bị c&aacute;o ngo&agrave;i trụ sở, nhưng Hằng l&uacute;c đ&oacute; l&agrave; đối tượng đang được vận động tự th&uacute;, c&aacute;i n&agrave;y cũng theo chủ trương k&ecirc;u gọi của l&atilde;nh đạo Bộ&quot;.</p>\r\n\r\n<p>C&ocirc;ng tố vi&ecirc;n ngắt lời: &quot;T&ocirc;i chỉ hỏi đ&uacute;ng hay sai. Chưa c&oacute; quyết định g&igrave; sao đ&atilde; n&oacute;i với chị ấy l&agrave; chắc chắn bị khởi tố, xử l&yacute;?&quot;. Hưng đ&aacute;p: &quot;Bị c&aacute;o khi trả lời th&igrave; cũng phải b&agrave;o chữa của m&igrave;nh&quot;.</p>\r\n\r\n<p><strong>435 cuộc điện thoại bị c&aacute;o buộc li&ecirc;n lạc &#39;chạy &aacute;n&#39;</strong></p>\r\n\r\n<p>Dẫn lại lời khai của Hưng về việc &quot;kh&ocirc;ng c&oacute; bu&ocirc;n b&aacute;n hợp t&aacute;c kinh doanh g&igrave;&quot; với ph&oacute; gi&aacute;m đốc C&ocirc;ng an H&agrave; Nội, VKS tr&iacute;ch b&uacute;t lục t&agrave;i liệu điều tra v&agrave; y&ecirc;u cầu Hưng giải th&iacute;ch về 435 cuộc điện thoại giữa hai người trong khoảng thời gian rất ngắn, &quot;c&oacute; những ng&agrave;y 10 cuộc, c&oacute; nhiều cuộc l&uacute;c 0h&quot;. Hai người quen biết từ đầu năm 2021 nhưng 435 cuộc điện thoại đều ph&aacute;t sinh sau thời điểm li&ecirc;n quan việc &quot;chạy &aacute;n&quot; của Hằng.</p>\r\n\r\n<p>Phản b&aacute;c việc n&agrave;y, &ocirc;ng Hưng n&oacute;i: &quot;Viện dẫn của cơ quan điều tra ho&agrave;n to&agrave;n kh&ocirc;ng đ&uacute;ng sự thật. 435 cuộc điện thoại c&oacute; nhiều cuộc gọi lỡ. Hai bị c&aacute;o c&oacute; quan hệ với nhau, kh&ocirc;ng l&agrave;m ăn nhưng c&oacute; việc kh&aacute;c&quot;.</p>\r\n\r\n<p>Trước nghi vấn của VKS về việc trao đổi quan hệ đồng nghiệp m&agrave; c&oacute; tới h&agrave;ng trăm cuộc gọi trong thời gian ngắn, bị c&aacute;o Hưng n&oacute;i ngay: &quot;C&aacute;i n&agrave;y kiểm s&aacute;t vi&ecirc;n &aacute;p đặt rồi&quot;.</p>\r\n', '2023-07-13', 1, 'http://localhost/webquanao/uploads/sanpham115.jpg', 'tin-tuc-moi-1-2nam', 'tin moi, tin tuc');

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
