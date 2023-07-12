-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 06:17 AM
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
(1, 'chuminhnam1@gmail.com', '09999998881', 'Hà Nội1', 'Website quần áo1', 'http://localhost/webquanao/uploads/sanpham51.jpg', '1', '1', '1', 'http://localhost/webquanao/uploads/logo11.png');

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
(9, 18, 3, 'http://localhost/webquanao/uploads/sanpham65.png'),
(10, NULL, 3, 'http://localhost/webquanao/uploads/sanpham65.png');

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
(106, 51, 'http://localhost/webquanao/uploads/tintuc43.jpg', 4);

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
(101, 51, 'black', 'black');

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
  `SoLuong` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MoTaNgan`, `MoTaDai`, `GiaGoc`, `GiaBan`, `MaChuyenMuc`, `The`, `DuongDan`, `TrangThai`, `SoLuong`) VALUES
(51, 'a', 'a', '<p>a</p>\r\n', 140000, 130000, 18, 'quần áo, nam nữ', 'a', 1, 105);

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
  MODIFY `MaGiaoDien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

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
  MODIFY `MaMauSac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

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
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
