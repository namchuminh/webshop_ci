-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 06:53 PM
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
(1, 'chuminhnam1@gmail.com', '09999998881', 'Hà Nội1', 'Website quần áo1', 'http://localhost/webquanao/uploads/sanpham51.jpg', '1', '1', '', 'http://localhost/webquanao/uploads/logo11.png');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaChiTietDonHang` int(11) NOT NULL,
  `MaDonHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaChiTietDonHang`, `MaDonHang`, `MaSanPham`, `SoLuong`) VALUES
(1, 10, 51, 2),
(2, 10, 51, 3);

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
(18, 'Quần Nam', 'quan-nam', 'http://localhost/webquanao/uploads/sanpham5.jpg', 1),
(19, 'Nam2', 'nam2', 'http://localhost/webquanao/uploads/tintuc44.jpg', 1);

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
  `GiamGia` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MaDonHang`, `MaKhachHang`, `SoLuong`, `ThanhTien`, `ThoiGian`, `TrangThai`, `DiaChi`, `GiamGia`) VALUES
(10, 13, 45, 130000, '2023-07-11 18:49:47', 4, 'Hà Nội', 100000),
(11, 13, 45, 130000, '2023-07-11 18:49:49', 4, 'Hà Nội', 0),
(12, 13, 45, 134000, '2023-07-11 18:49:52', 4, 'Hà Nội', 0);

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
(147, 62, 'http://localhost/webquanao/uploads/product-144.jpg', 1),
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
(13, 'Nam Chu Minh', '0999889999', 'Hà Nội', 'namchuminh@gmail.com', 'nam', '21232f297a57a5a743894a0e4a801fc3', 1, '2023-07-11 18:45:18');

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
(13, 'A', '0999999999', 'a', 'a', '2023-07-11 19:10:44', 1);

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
(187, 81, 'white', 'white');

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
(1, 'Chu Minh Nam', '0999999999', 'Hà Nội', 'chuminhnamma@gmail.com', '', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

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
(61, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(62, 'Sản phẩm mẫu cho cửa hàng', 'Sản phẩm mẫu cho cửa hàng', '<p>Sản phẩm mẫu cho cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'nam, quần nam', 'san-pham-mau-cho-cua-hang', 1, 15, 1),
(63, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(64, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(65, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(66, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(67, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(68, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(69, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(70, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(71, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(72, 'Sản phẩm mới của cửa hàng', 'Sản phẩm mới của cửa hàng', '<p>Sản phẩm mới của cửa h&agrave;ng</p>\r\n', 150000, 140000, 18, 'quan, quan nam', 'san-pham-moi-cua-cua-hang', 1, 15, 3),
(73, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(74, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(75, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(76, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(77, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(78, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(79, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(80, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2),
(81, 'Sản phẩm siêu giảm giá', 'Sản phẩm siêu giảm giá', '<p>Sản phẩm si&ecirc;u giảm gi&aacute;</p>\r\n', 150000, 140000, 18, 'nam, quan nam', 'san-pham-sieu-giam-gia', 1, 15, 2);

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
  MODIFY `MaChiTietDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  MODIFY `MaChuyenMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `giaodien`
--
ALTER TABLE `giaodien`
  MODIFY `MaGiaoDien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `lichsunhap`
--
ALTER TABLE `lichsunhap`
  MODIFY `MaLichSuNhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `MaLienHe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `MaGiamGia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mausac`
--
ALTER TABLE `mausac`
  MODIFY `MaMauSac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

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
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
