-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th3 05, 2025 lúc 01:22 PM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webshop_ci`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cauhinh`
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
-- Đang đổ dữ liệu cho bảng `cauhinh`
--

INSERT INTO `cauhinh` (`MaCauHinh`, `Email`, `SoDienThoai`, `DiaChi`, `TenWebsite`, `Logo`, `Facebook`, `Instagram`, `Tiktok`, `ThuongHieu`) VALUES
(1, 'chuminhnam1@gmail.com', '09999998881', 'Hà Nội1', 'Web bán hàng trực tuyến', 'http://localhost:8000/uploads/26.jpg', '1', '1', '', 'http://localhost:8000/uploads/11.jpeg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
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
-- Cấu trúc bảng cho bảng `chuyenmuc`
--

CREATE TABLE `chuyenmuc` (
  `MaChuyenMuc` int(11) NOT NULL,
  `TenChuyenMuc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DuongDan` text COLLATE utf8_unicode_ci NOT NULL,
  `AnhChinh` text COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chuyenmuc`
--

INSERT INTO `chuyenmuc` (`MaChuyenMuc`, `TenChuyenMuc`, `DuongDan`, `AnhChinh`, `TrangThai`) VALUES
(1, 'Giày adidas', 'phu-kien-1', 'http://localhost:8000/uploads/1.jpg', 1),
(2, 'Giày Nike', 'giay-nike', 'http://localhost:8000/uploads/11.jpg', 1),
(3, 'Giày Dior', 'giay-dior', 'http://localhost:8000/uploads/52.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `MaDonHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TrangThai` int(11) NOT NULL DEFAULT '1',
  `DiaChi` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `GiamGia` int(11) NOT NULL DEFAULT '0',
  `TenCongTy` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucThanhToan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`MaDonHang`, `MaKhachHang`, `SoLuong`, `ThanhTien`, `ThoiGian`, `TrangThai`, `DiaChi`, `GiamGia`, `TenCongTy`, `PhuongThucThanhToan`) VALUES
(1, 13, 5, 150000, '2023-09-19 08:23:06', 4, 'HN', 15000, 'abcd', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodien`
--

CREATE TABLE `giaodien` (
  `MaGiaoDien` int(11) NOT NULL,
  `MaChuyenMuc` int(11) DEFAULT NULL,
  `TheLoai` int(11) NOT NULL,
  `HinhAnh` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giaodien`
--

INSERT INTO `giaodien` (`MaGiaoDien`, `MaChuyenMuc`, `TheLoai`, `HinhAnh`) VALUES
(1, 1, 1, 'http://localhost:8000/uploads/1.jpeg'),
(2, 1, 2, 'http://localhost:8000/uploads/2.jpeg'),
(3, 1, 3, 'http://localhost:8000/uploads/3.jpeg'),
(4, 1, 2, 'http://localhost:8000/uploads/4.jpeg'),
(5, 1, 2, 'http://localhost:8000/uploads/5.png'),
(6, 1, 3, 'http://localhost:8000/uploads/31.jpeg'),
(7, 1, 3, 'http://localhost:8000/uploads/51.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinhanh`
--

CREATE TABLE `hinhanh` (
  `MaHinhAnh` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `DuongDan` text COLLATE utf8_unicode_ci NOT NULL,
  `LoaiAnh` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hinhanh`
--

INSERT INTO `hinhanh` (`MaHinhAnh`, `MaSanPham`, `DuongDan`, `LoaiAnh`) VALUES
(1, 1, 'http://localhost:8000/uploads/3.png', 1),
(2, 1, 'http://localhost:8000/uploads/Nhap-Key-Crack77.jpg', 2),
(3, 1, 'http://localhost:8000/uploads/Nhap-Key-Crack78.jpg', 3),
(4, 1, 'http://localhost:8000/uploads/Nhap-Key-Crack79.jpg', 4),
(5, 2, 'http://localhost:8000/uploads/13.jpg', 1),
(6, 2, 'http://localhost:8000/uploads/Nhap-Key-Crack81.jpg', 2),
(7, 2, 'http://localhost:8000/uploads/Nhap-Key-Crack82.jpg', 3),
(8, 2, 'http://localhost:8000/uploads/Nhap-Key-Crack83.jpg', 4),
(9, 3, 'http://localhost:8000/uploads/1.png', 1),
(10, 3, 'http://localhost:8000/uploads/Nhap-Key-Crack85.jpg', 2),
(11, 3, 'http://localhost:8000/uploads/Nhap-Key-Crack86.jpg', 3),
(12, 3, 'http://localhost:8000/uploads/Nhap-Key-Crack87.jpg', 4),
(13, 4, 'http://localhost:8000/uploads/71.jpg', 1),
(14, 4, 'http://localhost:8000/uploads/Nhap-Key-Crack89.jpg', 2),
(15, 4, 'http://localhost:8000/uploads/Nhap-Key-Crack90.jpg', 3),
(16, 4, 'http://localhost:8000/uploads/Nhap-Key-Crack91.jpg', 4),
(17, 5, 'http://localhost:8000/uploads/51.jpg', 1),
(18, 5, 'http://localhost:8000/uploads/7.jpg', 2),
(19, 5, 'http://localhost:8000/uploads/Nhap-Key-Crack94.jpg', 3),
(20, 5, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 4),
(21, 6, 'http://localhost:8000/uploads/22.jpg', 1),
(22, 6, 'http://localhost:8000/uploads/5.jpg', 2),
(23, 6, 'http://localhost:8000/uploads/Nhap-Key-Crack98.jpg', 3),
(24, 6, 'http://localhost:8000/uploads/Nhap-Key-Crack99.jpg', 4),
(25, 7, 'http://localhost:8000/uploads/12.jpg', 1),
(26, 7, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(27, 7, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(28, 7, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(29, 8, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 1),
(30, 8, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(31, 8, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(32, 8, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(33, 10, 'http://localhost:8000/uploads/download_(2).png', 1),
(34, 10, 'http://localhost:8000/uploads/download_(2)1.png', 2),
(35, 10, 'http://localhost:8000/uploads/download_(2)2.png', 3),
(36, 10, 'http://localhost:8000/uploads/download_(2)3.png', 4),
(37, 9, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 1),
(38, 9, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(39, 9, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(40, 9, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(41, 11, 'http://localhost:8000/uploads/download_(2)4.png', 1),
(42, 11, 'http://localhost:8000/uploads/download_(2)5.png', 2),
(43, 11, 'http://localhost:8000/uploads/download_(2)6.png', 3),
(44, 11, 'http://localhost:8000/uploads/download_(2)7.png', 4),
(45, 12, 'http://localhost:8000/uploads/download_(2)8.png', 1),
(46, 12, 'http://localhost:8000/uploads/download_(2)9.png', 2),
(47, 12, 'http://localhost:8000/uploads/download_(2)10.png', 3),
(48, 12, 'http://localhost:8000/uploads/download_(2)11.png', 4),
(49, 13, 'http://localhost:8000/uploads/download_(2)12.png', 1),
(50, 13, 'http://localhost:8000/uploads/download_(2)13.png', 2),
(51, 13, 'http://localhost:8000/uploads/download_(2)14.png', 3),
(52, 13, 'http://localhost:8000/uploads/download_(2)15.png', 4),
(53, 14, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 1),
(54, 14, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(55, 14, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(56, 14, 'http://localhost:8000/uploads/Nhap-Key-Crack95.jpg', 0),
(57, 15, 'http://localhost:8000/uploads/download_(2)16.png', 1),
(58, 15, 'http://localhost:8000/uploads/rsz_screenshot_from_2020-07-03_12-01-57-722x4001.png', 2),
(59, 15, 'http://localhost:8000/uploads/download.png', 3),
(60, 15, 'http://localhost:8000/uploads/download_(3)4.png', 4),
(61, 16, 'http://localhost:8000/uploads/download_(2)17.png', 1),
(62, 16, 'http://localhost:8000/uploads/download_(2)18.png', 2),
(63, 16, 'http://localhost:8000/uploads/download_(2)19.png', 3),
(64, 16, 'http://localhost:8000/uploads/download_(2)20.png', 4),
(65, 17, 'http://localhost:8000/uploads/download1.png', 1),
(66, 17, 'http://localhost:8000/uploads/neural_networks-002.png', 2),
(67, 17, 'http://localhost:8000/uploads/download_(3)5.png', 3),
(68, 17, 'http://localhost:8000/uploads/download_(3)6.png', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `TenKhachHang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT '1',
  `NgayThamGia` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `TenKhachHang`, `SoDienThoai`, `DiaChi`, `Email`, `TaiKhoan`, `MatKhau`, `TrangThai`, `NgayThamGia`, `avatar`) VALUES
(13, 'Chu Minh Nam', '0379962045', 'Bắc Từ Liêm, Hà Nội', 'namchuminh@gmail.com', 'nam', '21232f297a57a5a743894a0e4a801fc3', 1, '2023-07-11 18:45:18', NULL),
(24, 'Nguyễn Văn Anh', '0555666777', 'Hà Nội', 'nguyenvananh@gmail.com', 'nguyenvana', '20ca70c7c8f494c7bd1d54ad23d40cde', 1, '2023-07-14 00:41:12', NULL),
(25, 'Nguyễn Văn Bình', '0888999777', 'Hà Nam', 'nguyenvanbinh@gmail.com', 'nguyenvanb', '23280a0ad9238d00c62b0272af265c57', 1, '2023-07-14 00:42:46', NULL),
(26, 'Nguyễn Văn Chung', '0333444555', 'Hà Nội', 'nguyenvanchung@gmail.com', 'nguyenvanchung', '36a00d76edeef3128c3918786dc4e10d', 1, '2023-07-14 00:46:05', NULL),
(27, 'Nguyễn Văn Dũng', '0444555666', 'Hà Nội', 'dung@gmail.com', 'dung', '625d45c587033e8970af8b4e3fdb575c', 1, '2023-07-14 00:48:59', NULL),
(28, 'Nguyễn Văn Em', '0222333444', 'Hà Nội', 'nguyenvanem@gmail.com', 'nguyenvanem', '2e3b271ef4f09bfd649193c6d11ccdc0', 1, '2023-07-14 00:50:32', NULL),
(29, 'Khai', '0368822642', 'Hà Đông', 'duongvankhai2022001@gmail.com', 'khai', 'c4ca4238a0b923820dcc509a6f75849b', 1, '2025-02-21 20:39:38', '/uploads/c51be62d7c277d3645156689b10c11b2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsunhap`
--

CREATE TABLE `lichsunhap` (
  `MaLichSuNhap` int(11) NOT NULL,
  `MaNhaCungCap` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `SoLuong` int(11) NOT NULL,
  `SoLuongCu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsuxem`
--

CREATE TABLE `lichsuxem` (
  `MaLichSuXem` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `MaKhachHang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichsuxem`
--

INSERT INTO `lichsuxem` (`MaLichSuXem`, `MaSanPham`, `MaKhachHang`) VALUES
(136, 17, '25'),
(137, 13, '25'),
(138, 10, '25'),
(139, 7, '25'),
(140, 14, '13'),
(141, 10, '13'),
(142, 8, '13'),
(143, 5, '13'),
(144, 7, 'rOAUoxWK9u8y56l324r9mH5ccQEGM0o1'),
(145, 5, 'rOAUoxWK9u8y56l324r9mH5ccQEGM0o1'),
(146, 4, 'rOAUoxWK9u8y56l324r9mH5ccQEGM0o1'),
(147, 6, 'rOAUoxWK9u8y56l324r9mH5ccQEGM0o1'),
(148, 16, '26'),
(149, 12, '26'),
(150, 10, '26'),
(151, 6, '26'),
(152, 11, '27'),
(153, 12, '27'),
(154, 5, '27'),
(155, 7, '27'),
(156, 16, '28'),
(157, 15, '28'),
(158, 4, '28'),
(159, 6, '28'),
(160, 4, 'JQNcPaYJ1vrelKa6tBMKibTQZZgugonD'),
(161, 3, 'JQNcPaYJ1vrelKa6tBMKibTQZZgugonD'),
(162, 1, 'JQNcPaYJ1vrelKa6tBMKibTQZZgugonD'),
(163, 7, 'JQNcPaYJ1vrelKa6tBMKibTQZZgugonD'),
(164, 10, 'JQNcPaYJ1vrelKa6tBMKibTQZZgugonD'),
(165, 6, 'JQNcPaYJ1vrelKa6tBMKibTQZZgugonD'),
(166, 5, 'JQNcPaYJ1vrelKa6tBMKibTQZZgugonD'),
(167, 1, 'JQNcPaYJ1vrelKa6tBMKibTQZZgugonD'),
(168, 16, '28'),
(169, 15, '28'),
(170, 2, '28'),
(171, 4, '28'),
(172, 16, '13'),
(173, 11, '13'),
(174, 8, '13'),
(175, 3, '13'),
(176, 10, '24'),
(177, 8, '24'),
(178, 3, '24'),
(179, 1, '24'),
(180, 14, '24'),
(181, 5, '24'),
(182, 3, '24'),
(183, 8, '24'),
(184, 16, '24'),
(185, 11, '24'),
(186, 12, 'pCpw5JMAAzYDsvWO5ebOxY1WjPveMl6b'),
(187, 7, 'pCpw5JMAAzYDsvWO5ebOxY1WjPveMl6b'),
(188, 1, 'CL8PMYS7QbwGa672gEmIb4fiSRAa96lp'),
(189, 1, 'CL8PMYS7QbwGa672gEmIb4fiSRAa96lp'),
(190, 5, 'CL8PMYS7QbwGa672gEmIb4fiSRAa96lp'),
(191, 6, 'CL8PMYS7QbwGa672gEmIb4fiSRAa96lp'),
(192, 14, 'CL8PMYS7QbwGa672gEmIb4fiSRAa96lp'),
(193, 14, '28'),
(194, 12, '28'),
(195, 4, '28'),
(196, 6, 'pCpw5JMAAzYDsvWO5ebOxY1WjPveMl6b'),
(197, 15, 'pCpw5JMAAzYDsvWO5ebOxY1WjPveMl6b'),
(198, 11, 'pCpw5JMAAzYDsvWO5ebOxY1WjPveMl6b'),
(199, 9, 'pCpw5JMAAzYDsvWO5ebOxY1WjPveMl6b'),
(200, 16, 'pCpw5JMAAzYDsvWO5ebOxY1WjPveMl6b'),
(201, 5, 'pCpw5JMAAzYDsvWO5ebOxY1WjPveMl6b'),
(202, 16, 'pCpw5JMAAzYDsvWO5ebOxY1WjPveMl6b'),
(203, 5, '9dJ8p9GzNFt1gYKnvPJnJYO18iwKUy84'),
(204, 7, 'pRodqaQF5vk7wiKieXcdEpQzjbBcp98h'),
(205, 7, 'pRodqaQF5vk7wiKieXcdEpQzjbBcp98h'),
(206, 7, 'pRodqaQF5vk7wiKieXcdEpQzjbBcp98h'),
(207, 7, '29'),
(208, 7, '29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `MaLienHe` int(11) NOT NULL,
  `TenKhachHang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SoDienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TrangThai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`MaLienHe`, `TenKhachHang`, `SoDienThoai`, `TieuDe`, `NoiDung`, `ThoiGian`, `TrangThai`) VALUES
(15, 'Nguyễn Văn A', '0999888999', 'ABCD', 'AAA', '2023-09-19 08:27:33', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `MaGiamGia` int(11) NOT NULL,
  `MaSuDung` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayTao` date NOT NULL,
  `NgayHetHan` date NOT NULL,
  `TriGia` int(11) NOT NULL,
  `SoLanDung` int(11) NOT NULL DEFAULT '0',
  `SoLuong` int(11) NOT NULL DEFAULT '1',
  `TrangThai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mausac`
--

CREATE TABLE `mausac` (
  `MaMauSac` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `TenMauSac` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MaHienThi` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mausac`
--

INSERT INTO `mausac` (`MaMauSac`, `MaSanPham`, `TenMauSac`, `MaHienThi`) VALUES
(1, 1, 'yellow', 'yellow'),
(2, 1, 'white', 'white'),
(3, 2, 'red', 'red'),
(4, 2, 'yellow', 'yellow'),
(5, 2, 'white', 'white'),
(6, 3, 'red', 'red'),
(7, 3, 'yellow', 'yellow'),
(8, 3, 'white', 'white'),
(9, 4, 'yellow', 'yellow'),
(10, 4, 'white', 'white'),
(11, 4, 'black', 'black'),
(12, 5, 'yellow', 'yellow'),
(13, 5, 'white', 'white'),
(14, 5, 'black', 'black'),
(15, 6, 'red', 'red'),
(16, 6, 'yellow', 'yellow'),
(17, 7, 'yellow', 'yellow'),
(18, 7, 'white', 'white'),
(19, 8, 'yellow', 'yellow'),
(20, 8, 'white', 'white'),
(21, 8, 'pink', 'pink'),
(22, 9, 'yellow', 'yellow'),
(23, 9, 'white', 'white'),
(24, 9, 'black', 'black'),
(25, 10, 'yellow', 'yellow'),
(26, 10, 'white', 'white'),
(27, 11, 'yellow', 'yellow'),
(28, 11, 'white', 'white'),
(29, 11, 'black', 'black'),
(30, 12, 'blue', 'blue'),
(31, 12, 'red', 'red'),
(32, 12, 'yellow', 'yellow'),
(33, 12, 'white', 'white'),
(34, 12, 'black', 'black'),
(35, 12, 'pink', 'pink'),
(36, 13, 'red', 'red'),
(37, 13, 'yellow', 'yellow'),
(38, 13, 'white', 'white'),
(39, 14, 'red', 'red'),
(40, 14, 'yellow', 'yellow'),
(41, 14, 'white', 'white'),
(42, 15, 'yellow', 'yellow'),
(43, 15, 'white', 'white'),
(46, 17, 'yellow', 'yellow'),
(47, 17, 'white', 'white'),
(48, 17, 'black', 'black'),
(49, 16, 'blue', 'blue'),
(50, 16, 'red', 'red'),
(51, 16, 'yellow', 'yellow'),
(52, 16, 'white', 'white'),
(53, 16, 'black', 'black'),
(54, 16, 'pink', 'pink');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNhaCungCap` int(11) NOT NULL,
  `TenNhaCungCap` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `MaChuyenMuc` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
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
  `TrangThai` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `TenNhanVien`, `SoDienThoai`, `DiaChi`, `Email`, `AnhChinh`, `TaiKhoan`, `MatKhau`, `TrangThai`) VALUES
(1, 'Chu Minh Nam', '0999999999', 'Hà Nội', 'chuminhnamma@gmail.com', 'http://localhost:8000/uploads/32.jpg', 'admin', '202cb962ac59075b964b07152d234b70', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
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
  `TrangThai` int(11) NOT NULL DEFAULT '1',
  `SoLuong` int(11) NOT NULL DEFAULT '0',
  `LoaiSanPham` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MoTaNgan`, `MoTaDai`, `GiaGoc`, `GiaBan`, `MaChuyenMuc`, `The`, `DuongDan`, `TrangThai`, `SoLuong`, `LoaiSanPham`) VALUES
(1, 'Sản phẩm 1', 'Sản phẩm 1', '<p>Sản phẩm 1</p>\r\n', 150000, 140000, 1, 'a,b,c', 'san-pham-1', 1, 150, 3),
(2, 'Sản phẩm 2', 'Sản phẩm 2', '<p>Sản phẩm 2</p>\r\n', 150000, 140000, 1, 'a,b,c', 'san-pham-2', 1, 150, 3),
(3, 'Sản phẩm 3', 'Sản phẩm 3', '<p>Sản phẩm 3</p>\r\n', 150000, 140000, 1, 'a,b,c', 'san-pham-3', 1, 15, 3),
(4, 'Sản phẩm 4', 'Sản phẩm 4', '<p>Sản phẩm 4</p>\r\n', 140000, 130000, 2, 'a,b,c', 'san-pham-4', 1, 150, 3),
(5, 'Sản phẩm 5', 'Sản phẩm 5', '<p>Sản phẩm 5</p>\r\n', 140000, 100000, 2, 'a,b,c', 'san-pham-5', 1, 150, 3),
(6, 'Sản phẩm 6', 'Sản phẩm 6', '<p>Sản phẩm 6</p>\r\n', 15000, 14000, 2, 'a,b,c', 'san-pham-6', 1, 15, 3),
(7, 'Sản phẩm 7', 'Sản phẩm 7', '<p>Sản phẩm 7</p>\r\n', 140000, 100000, 1, 'a,b,c', 'san-pham-7', 1, 15, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTinTuc` int(11) NOT NULL,
  `MaNhanVien` int(11) NOT NULL,
  `TieuDe` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` date NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT '1',
  `AnhChinh` text COLLATE utf8_unicode_ci NOT NULL,
  `DuongDan` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `The` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`MaTinTuc`, `MaNhanVien`, `TieuDe`, `NoiDung`, `NgayDang`, `TrangThai`, `AnhChinh`, `DuongDan`, `The`) VALUES
(1, 1, 'tin tuc 1', '<p>abcascascsa</p>\r\n', '0000-00-00', 1, 'http://localhost:8000/uploads/31.jpg', 'tin-tuc-1', 'a,b,c,d');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cauhinh`
--
ALTER TABLE `cauhinh`
  ADD PRIMARY KEY (`MaCauHinh`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaChiTietDonHang`);

--
-- Chỉ mục cho bảng `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  ADD PRIMARY KEY (`MaChuyenMuc`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonHang`);

--
-- Chỉ mục cho bảng `giaodien`
--
ALTER TABLE `giaodien`
  ADD PRIMARY KEY (`MaGiaoDien`);

--
-- Chỉ mục cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`MaHinhAnh`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `lichsunhap`
--
ALTER TABLE `lichsunhap`
  ADD PRIMARY KEY (`MaLichSuNhap`);

--
-- Chỉ mục cho bảng `lichsuxem`
--
ALTER TABLE `lichsuxem`
  ADD PRIMARY KEY (`MaLichSuXem`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`MaLienHe`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`MaGiamGia`);

--
-- Chỉ mục cho bảng `mausac`
--
ALTER TABLE `mausac`
  ADD PRIMARY KEY (`MaMauSac`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNhaCungCap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTinTuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cauhinh`
--
ALTER TABLE `cauhinh`
  MODIFY `MaCauHinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `MaChiTietDonHang` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chuyenmuc`
--
ALTER TABLE `chuyenmuc`
  MODIFY `MaChuyenMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `giaodien`
--
ALTER TABLE `giaodien`
  MODIFY `MaGiaoDien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `MaHinhAnh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `lichsunhap`
--
ALTER TABLE `lichsunhap`
  MODIFY `MaLichSuNhap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lichsuxem`
--
ALTER TABLE `lichsuxem`
  MODIFY `MaLichSuXem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `MaLienHe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `MaGiamGia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `mausac`
--
ALTER TABLE `mausac`
  MODIFY `MaMauSac` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNhaCungCap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTinTuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
