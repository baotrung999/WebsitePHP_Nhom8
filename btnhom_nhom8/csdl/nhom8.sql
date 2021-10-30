-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 09:05 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nhom8`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`) VALUES
(1, 'admin', 'nhom8');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `fullname` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `fullname`, `createdate`) VALUES
(1, '0', '2021-04-28 16:49:42'),
(2, '0', '2021-04-28 16:51:15'),
(3, '0', '2021-04-28 16:53:53'),
(4, 'Tài', '2021-04-28 16:54:34'),
(5, 'Trung', '2021-04-29 02:12:53'),
(6, 'Tâm', '2021-05-01 06:58:25'),
(7, 'Mạnh', '2021-05-01 10:16:28'),
(8, 'Tài', '2021-05-01 10:17:28'),
(9, 'Linh', '2021-05-01 11:15:23'),
(10, 'admin', '2021-05-01 11:42:20'),
(11, 'admin', '2021-05-01 11:45:21'),
(12, 'admin', '2021-05-03 14:20:16'),
(13, 'admin', '2021-05-04 02:53:38'),
(14, 'ha@gmail.co', '2021-05-05 14:32:04'),
(15, 'admin', '2021-05-05 14:44:28'),
(16, 'ha@gmail.co', '2021-05-05 14:49:02'),
(17, 'admin', '2021-05-05 14:55:56'),
(18, 'ha@gmail.co', '2021-05-05 14:56:35'),
(19, 'admin', '2021-05-24 06:18:44');

-- --------------------------------------------------------

--
-- Table structure for table `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `price` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 62, 0, '0'),
(2, 2, 60, 1, '50'),
(3, 2, 61, 1, '50'),
(4, 3, 45, 5, '60'),
(5, 4, 39, 1, '50'),
(6, 5, 62, 1, '50'),
(7, 6, 38, 1, '50'),
(8, 6, 39, 1, '50'),
(9, 6, 45, 1, '60'),
(10, 7, 40, 1, '50'),
(11, 7, 48, 1, '60'),
(12, 8, 48, 1, '60,000'),
(13, 9, 84, 7, '199000'),
(14, 10, 81, 5, '1290000'),
(15, 10, 79, 3, '1990000'),
(16, 10, 65, 1, '199'),
(17, 11, 83, 3, '199000'),
(18, 12, 86, 1, '27000000'),
(19, 12, 67, 8, '249900'),
(20, 12, 85, 1, '12000000'),
(21, 12, 72, 1, '40000'),
(22, 13, 86, 3, '27000000'),
(23, 13, 84, 1, '199000'),
(24, 14, 85, 1, '12000000'),
(25, 14, 84, 1, '199000'),
(26, 15, 88, 2, '22000000'),
(27, 16, 86, 3, '27000000'),
(28, 17, 88, 1, '22000000'),
(29, 18, 86, 1, '27000000'),
(30, 19, 85, 1, '12000000'),
(31, 19, 86, 2, '27000000');

-- --------------------------------------------------------

--
-- Table structure for table `dangky`
--

CREATE TABLE `dangky` (
  `id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachinhan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dangky`
--

INSERT INTO `dangky` (`id_khachhang`, `tenkhachhang`, `email`, `matkhau`, `dienthoai`, `diachinhan`) VALUES
(33, 'Tài', 'admin', 'nhom8', 3, '3'),
(34, 'Tài', 'admin', 'nhom8', 3, '3'),
(35, 'Tài', 'admin', 'nhom8', 3, '3'),
(36, 'Trung', 'admin', 'nhom8', 1222, '1'),
(37, 'Trung', 'admin', 'nhom8', 1222, '1'),
(38, 'Trung', 'admin', 'nhom8', 1222, '1'),
(39, 'Trung', 'admin', 'nhom8', 1222, '1'),
(40, 'Trung', 'admin', 'nhom8', 1222, '1'),
(41, 'Tâm', 'admin', 'nhom8', 909090909, '2'),
(42, 'Tâm', 'admin', 'nhom8', 909090909, '2'),
(43, 'Tâm', 'admin', 'nhom8', 909090909, '2'),
(44, 'Mạnh', 'admin', 'nhom8', 5435, '5'),
(45, 'Mạnh', 'admin', 'nhom8', 5435, '5'),
(46, 'Mạnh', 'admin', 'nhom8', 5435, '5'),
(47, 'Mạnh', 'admin', 'nhom8', 5435, '5'),
(48, 'Mạnh', 'admin', 'nhom8', 5435, '5'),
(49, 'Mạnh', 'admin', 'nhom8', 5435, '5'),
(50, 'Linh', 'admin', 'nhom8', 5435, '5'),
(51, 'Linh', 'admin', 'nhom8', 5435, '5'),
(52, 'Linh', 'admin', 'nhom8', 5435, '5'),
(53, 'Linh', 'admin', 'nhom8', 5435, '5'),
(54, 'Linh', 'admin', 'nhom8', 5435, '5'),
(55, 'Linh', 'admin', 'nhom8', 5435, '5'),
(56, 'Linh', 'admin', 'nhom8', 1222, '1'),
(57, 'Tài', 'admin', 'nhom8', 0, ''),
(58, 'Tài', 'tai@gmail.com', '123', 123, '123/4/8 kp1 ');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinhanhsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_sp`, `hinhanhsp`) VALUES
(23, 60, 'featured-section-new-to-imac_2x1493467732.jpg'),
(24, 60, 'image0011493467732.png'),
(25, 60, 'image001_21493467732.jpg'),
(26, 60, 'image001_111493467732.jpg'),
(29, 63, '5190001_sa (1) - Copy1493468586.jpg'),
(30, 63, '5190001_sa (1)1493468586.jpg'),
(31, 63, '1466960633738_19141493468586.jpg'),
(32, 63, '1466960633738_19141493468706.jpg'),
(33, 63, 'featured-section-new-to-imac_2x1493468926.jpg'),
(34, 63, '5190001_sa (1) - Copy1493469597.jpg'),
(38, 61, '1466960639886_19201493470147.jpg'),
(43, 62, '5190001_sa (1) - Copy1493471267.jpg'),
(44, 62, '5190001_sa (1)1493471267.jpg'),
(45, 62, 'featured-section-new-to-imac_2x1493471267.jpg'),
(46, 51, '5190001_sa (1) - Copy1493612642.jpg'),
(47, 51, '5190001_sa (1)1493612643.jpg'),
(48, 45, '5190001_sa (1) - Copy1493616068.jpg'),
(49, 45, '5190001_sa (1)1493616068.jpg'),
(50, 45, '1466960633738_19141493616068.jpg'),
(51, 85, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493695704.jpg'),
(52, 85, '3-4a620da2-d3d1-46b3-82b7-6522066a48ed1493695704.jpg'),
(53, 85, 'canon-eos-1d-x-1-1-min1493695704.jpg'),
(54, 85, 'canon-eos-1d-x-2-1-min1493695704.jpg'),
(55, 86, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493696681.jpg'),
(56, 86, 'canon-6d-1-1-min1493696682.jpg'),
(57, 86, 'canon-eos-1d-x-2-1-min1493696682.jpg'),
(64, 88, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493995899.jpg'),
(65, 88, '3-4a620da2-d3d1-46b3-82b7-6522066a48ed1493995899.jpg'),
(66, 88, 'canon-6d-1-1-min1493995899.jpg'),
(67, 88, 'canon-eos-1d-x-1-1-min1493995899.jpg'),
(79, 90, '50255958752895701512031536.png'),
(80, 90, '74652537370051001512031536.png'),
(81, 90, '80289829538760701512031536.png'),
(82, 89, 'dum1517247854.png'),
(83, 89, 'indian-flag1517247854.png'),
(84, 89, 'japan-flag1517247854.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hieusp`
--

CREATE TABLE `hieusp` (
  `idhieusp` int(11) NOT NULL,
  `tenhieusp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hieusp`
--

INSERT INTO `hieusp` (`idhieusp`, `tenhieusp`, `tinhtrang`) VALUES
(1, 'Sony', '1'),
(3, 'Byz', '1'),
(4, 'Ramax', '1'),
(5, 'Dudao', '1'),
(6, 'Niken', '1'),
(7, 'Piseen', '1'),
(8, 'Noko', '1'),
(9, 'Vukas', '1'),
(10, 'Basuse', '1'),
(11, 'Samsung', '1'),
(12, 'fasion', '1'),
(13, 'Iphone', '1'),
(14, 'Apple', '1');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `idloaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`, `tinhtrang`) VALUES
(2, 'Cáp Sạc', '1'),
(4, 'Ốp Lưng Iphone', '1'),
(8, 'Gậy Chụp Ảnh', '1'),
(9, 'Pin Điện Thoại', '1'),
(10, 'Sạc Dự Phòng', '1'),
(11, 'Kính Cường Lực', '1'),
(12, 'Miếng Dán Màn Hình', '1'),
(13, 'Adapter,Cáp Chuyển Đổi', '1'),
(14, 'Bao da Hãng', '1'),
(15, 'Dây Sạc, Cáp Sạc', '1'),
(16, 'Ốp Lưng SamSung', '1'),
(17, 'Loa Nghe Nhạc', '1'),
(18, 'Tai nghe head', '1'),
(19, 'Thiết Bị An Ninh', '1'),
(20, 'Cáp USB', '1'),
(21, 'Thiết bị mạng', '1'),
(22, 'Sản Phẩm Khác', '1'),
(24, 'Macbook pro', '1'),
(25, 'Thể thao', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` int(11) NOT NULL,
  `tensp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giadexuat` float NOT NULL,
  `giagiam` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `loaisp` int(11) NOT NULL,
  `nhasx` int(11) NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensp`, `masp`, `hinhanh`, `giadexuat`, `giagiam`, `soluong`, `loaisp`, `nhasx`, `tinhtrang`, `noidung`) VALUES
(37, 'iphone 7', 'M01', 'iphone-7-plus-red-128gb-400x460.png', 89, 89, 1, 5, 4, '1', 'rrrrrrr'),
(38, 'Macbook Pro', 'M50', 'featured-section-new-to-imac_2x.jpg', 500000, 39, 1, 9, 3, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(39, 'iphone 7', 'M50', 'iphone-7-plus-red-128gb-400x460.png', 3200000, 39, 1, 12, 3, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(40, 'Laptop Core ', 'M50', '5190001_sa (1).jpg', 1800000, 39, 1, 10, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(44, 'Oppo F3 plus', 'f3plus', 'oppo-f3-plus-pp-300x300.jpg', 230000, 89, 5, 11, 4, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(45, 'iphone 5 plus 256GB', 'ip5', 'iphone-7-plus-256gb-300x300.jpg', 24000, 60, 6, 11, 3, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(47, 'Sony 9', 'm8', 'sony-xperia-xzs-400x460.png', 180000, 8, 4, 11, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(48, 'Sony 9', 'm8', 'sony-xperia-xzs-400x460.png', 20000, 8, 4, 11, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(65, 'Phụ Kiện Combo Cáp + Sạc iphone 4', 'h7', 'znp1369155325-150x150.jpg', 199900, 60, 4, 2, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(66, 'Phụ Kiện Combo Cáp + Sạc iPad 2/3/4', 'y7', '7-700x390.jpg', 299000, 199, 3, 2, 4, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(67, 'Phụ Kiện Combo Cáp + Sạc iPhone 5/6/6+ ( Pisen)', 'j8', 'znp1369155325-150x150.jpg', 249900, 199, 6, 2, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(68, 'Bao da Clear View Galaxy S8 Plus Standing 2017 chính hãng ', 'b6', 'timthumb (1).jpg', 849000, 699, 2, 4, 4, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(69, 'Bao da Clear View Galaxy S8 Plus Standing 2017 chính hãng ', 'b6', 'timthumb (2).jpg', 679000, 699, 2, 4, 8, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(70, 'Bao da Clear View Galaxy S8 Plus Standing 2017 chính hãng ', 'b6', 'timthumb.jpg', 779000, 699, 2, 4, 7, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(71, 'Gậy chụp ảnh tự sướng mini', 'k8', 'gay ts gap gon dau 5_200x200.jpg', 400000, 30, 6, 8, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(72, 'Gậy selfie Apple', 'k8', 'gay tu suong mini 2_200x200.jpg', 40000, 30, 6, 8, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(73, 'Gậy selfie version 3.5', 'k8', '3112575548_1184480815_200x200.jpg', 60000, 30, 6, 8, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(74, 'Pin điện thoại Titan Blt6', 'p7', 'image-5763535-574477648cb589dfd49642531b777ca5-product.jpg', 159000, 149, 0, 9, 5, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(75, 'Pin điện thoại Lithium Ion', 'p7', 'image-6282355-202a86ba4c35ce1b5941fab448818358-product.jpg', 179000, 149, 2, 9, 7, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(76, 'Pin điện thoại Lg Blt6', 'p7', 'image-7576025-31419a2ed9a0cb8fb604b2f1590a52e7-product.jpg', 189000, 149, 2, 9, 7, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(77, 'Pin điện thoại Lg Blt7', 'p7', 'image-9776025-284b2d6e9c4f8a725360e92b737582f7-product.jpg', 215000, 149, 2, 9, 9, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(78, 'Sạc Dự Phòng Romos Trắng', 'j8', '0a7-sac-du-phong-romoss-polymoss-10000mah-gia-re.jpg', 199000, 189, 3, 10, 9, '1', '<p>Sản Phẩm Chính Hãng/p>'),
(79, 'Sạc Dự Phòng GENAI Trắng 10.000MAH', 'j8', '797-sac-du-phong-genai-trang-10000mah-gia-re.jpg', 1990000, 189, 3, 10, 8, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(80, 'Sạc Dự Phòng Anker PowerCore 10.000 mAh', 'j8', 'd8e-pin-sac-xiaomi-10000mah-gen-2-gia-re.jpg', 159000, 189, 3, 10, 8, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(81, 'Sạc Dự Phòng GENAI Trắng 20.000MAH', 'j8', 'd8e-pin-sac-xiaomi-10000mah-gen-2-gia-re.jpg', 1290000, 189, 3, 10, 10, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(82, 'Adapter T2H5', 'b6', '2.jpg', 199000, 199, 0, 13, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(83, 'Adapter T2H5', 'b6', '3.jpg', 199000, 199, 0, 13, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(85, 'Canon EOS-1D X', 'canon', 'canon-eos-1d-x-1-1-min.jpg', 12000000, 12000000, 6, 22, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(86, 'Canon EOS 6D', 'canon 6d', '3-4a620da2-d3d1-46b3-82b7-6522066a48ed.jpg', 27000000, 27000000, 6, 22, 1, '1', '<p>Sản Phẩm Chính Hãng</p>'),
(88, 'Macbook pro 2017', 'mp67', 'download (1).jpg', 22000000, 19000000, 100, 24, 14, '1', '<p>Macbook pro</p>'),
(89, 'Tai nghe head', 'r45', '2.jpg', 70000, 68000, 6, 18, 13, '1', '<p>Tai nghe cá»±c Sản Phẩm Chính Hãng</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `idtintuc` int(11) NOT NULL,
  `tentintuc` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matin` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`idtintuc`, `tentintuc`, `matin`, `hinhanh`, `noidung`, `tinhtrang`) VALUES
(2, 'Loạt phụ kiện giảm giá sốc đáng sắm ngay để tăng hiệu quả làm việc, không mất kết nối khi work from home', 't2', 'Jet.jpg', 'Đừng để công việc của bạn bị gián đoạn vì điện thoại hết pin, wifi yếu, tai nghe có vấn đề, phụ kiện đang rẻ thế này hốt ngay đi còn chần chừ gì!Sạc nhanh Apple iPhone 20W Type-C PD MHJE3ZA giảm từ 890.000đ xuống còn 575.000đ', '1'),
(4, 'Ốp điện thoại giá từ 200K có thêm tính năng đặc biệt gì? Ngó thử 6 kiểu dưới đây là rõ!', 'h7', 'image001.png', 'Mọi khi bỏ vài ba chục cũng tậu được ốp điện thoại rồi, nhưng nếu thử “cố” thêm một chút thì bạn sẽ được sở hữu thêm vài tính năng hay ho ra phết!', '1'),
(5, 'Sạc siêu nhanh, siêu gọn Anker PowerPort III Nano 20W', 'y6', 'image001_11.jpg', 'Đừng bỏ lỡ ngày hội siêu sale to nhất năm từ Anker. Chỉ duy nhất tại Lazada, sale toàn gian hàng lên đến 50%,', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `hieusp`
--
ALTER TABLE `hieusp`
  ADD PRIMARY KEY (`idhieusp`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`idloaisp`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idtintuc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `hieusp`
--
ALTER TABLE `hieusp`
  MODIFY `idhieusp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `idloaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idtintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
