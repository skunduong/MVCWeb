-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2017 at 02:40 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php23_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adv`
--

CREATE TABLE `tbl_adv` (
  `pk_adv_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adv`
--

INSERT INTO `tbl_adv` (`pk_adv_id`, `c_name`, `c_img`, `c_position`) VALUES
(1, 'Slide 1', '', 0),
(2, 'Slide 2', '1510837899anh_8.jpg', 1),
(3, 'Slide 3', '1510837873anh_6.jpg', 2),
(5, 'Slide 5', '1510837867anh_7.jpg', 2),
(6, 'test', 'anh_8.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `pk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_display_home` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`pk_category_product_id`, `c_name`, `c_display_home`) VALUES
(2, 'Đồ dùng sơ sinh cần thiết', 0),
(3, 'Giường cũi trẻ em', 1),
(4, 'Ghế ăn cho bé', 1),
(5, 'Nôi điện tự động - nôi xách tay', 0),
(6, 'Máy báo khóc, đèn ngủ, ru ngủ', 0),
(7, 'Thực phẩm, đồ dùng ăn uống', 0),
(8, 'Đồ dùng cần thiết cho mẹ', 0),
(9, 'Búp bê barbie', 0),
(10, 'Đồ chơi vận động trí não, học tập', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `pk_news_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(20000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_hotnews` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`pk_news_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_hotnews`) VALUES
(2, 'Giá nguyên liệu sữa nhập khẩu tiếp tục tăng cao@', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '1484744380anh_1.jpg', 1),
(3, 'Giá nguyên liệu sữa nhập khẩu tiếp tục tăng cao 1', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '1484745113anh_2.jpg', 1),
(4, 'Giá nguyên liệu sữa nhập khẩu tiếp tục tăng cao 2', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '1484745121anh_3.jpg', 1),
(5, 'Giá nguyên liệu sữa nhập khẩu tiếp tục tăng cao 3', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '1484745131anh_4.jpg', 1),
(6, 'Giá nguyên liệu sữa nhập khẩu tiếp tục tăng cao 4', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '<p>Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.&nbsp;Theo c&aacute;c Cty sữa cho biết, gi&aacute; nguy&ecirc;n liệu sữa nhập khẩu trong th&aacute;ng 11 tiếp tục tăng th&ecirc;m 200USD/tấn. Với mức gi&aacute; hiện nay, gi&aacute; sữa b&eacute;o c&oacute; nguồn gốc New Zealand nhập về VN hiện l&agrave; 5.700USD/tấn, tăng gấp 2 lần so với thời điểm n&agrave;y năm ngo&aacute;i.</p>\r\n', '1484745140anh_5.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pk_product_id` int(11) NOT NULL,
  `fk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(2000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_price` float NOT NULL DEFAULT '0',
  `c_hotproduct` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pk_product_id`, `fk_category_product_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_price`, `c_hotproduct`) VALUES
(4, 3, 'Sản phẩm 1@', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '1511006389anh_1.jpg', 1000000, 0),
(5, 4, 'Sản phẩm 2', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '1511006395anh_2.jpg', 2000000, 1),
(6, 2, 'Sản phẩm 3', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '1511006403anh_3.jpg', 3000000, 1),
(7, 2, 'Sản phẩm 4', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;</p>\r\n', '1511006410anh_4.jpg', 3000000, 1),
(9, 3, 'Sản phẩm 5', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '1511006424anh_5.jpg', 2000000, 1),
(11, 2, 'Sản phẩm 6', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '1511006432anh_6.jpg', 3000000, 1),
(12, 2, 'Sản phẩm 7', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '1511006439anh_7.jpg', 4000000, 1),
(13, 2, 'Sản phẩm 8', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '1511006445anh_8.jpg', 2000000, 1),
(14, 2, 'Sản phẩm 9', '<p>H&ocirc;m qua, MU đ&atilde; gi&agrave;nh chiến thắng quan trọng với tỷ số 2-0 trước Watford. Trong đ&oacute;, Juan Mata v&agrave; Anthony Martial l&agrave; những người lập c&ocirc;ng cho MU ở trận đấu n&agrave;y. Ngo&agrave;i việc gi&agrave;nh 3 điểm để tiếp tục b&aacute;m đuổi những đội xếp tr&ecirc;n, chiến thắng n&agrave;y c&ograve;n gi&uacute;p MU c&aacute;n cột mốc đặc biệt.</p>\r\n', '<p>H&ocirc;m qua, MU đ&atilde; gi&agrave;nh chiến thắng quan trọng với tỷ số 2-0 trước Watford. Trong đ&oacute;, Juan Mata v&agrave; Anthony Martial l&agrave; những người lập c&ocirc;ng cho MU ở trận đấu n&agrave;y. Ngo&agrave;i việc gi&agrave;nh 3 điểm để tiếp tục b&aacute;m đuổi những đội xếp tr&ecirc;n, chiến thắng n&agrave;y c&ograve;n gi&uacute;p MU c&aacute;n cột mốc đặc biệt.&nbsp;H&ocirc;m qua, MU đ&atilde; gi&agrave;nh chiến thắng quan trọng với tỷ số 2-0 trước Watford. Trong đ&oacute;, Juan Mata v&agrave; Anthony Martial l&agrave; những người lập c&ocirc;ng cho MU ở trận đấu n&agrave;y. Ngo&agrave;i việc gi&agrave;nh 3 điểm để tiếp tục b&aacute;m đuổi những đội xếp tr&ecirc;n, chiến thắng n&agrave;y c&ograve;n gi&uacute;p MU c&aacute;n cột mốc đặc biệt.&nbsp;H&ocirc;m qua, MU đ&atilde; gi&agrave;nh chiến thắng quan trọng với tỷ số 2-0 trước Watford. Trong đ&oacute;, Juan Mata v&agrave; Anthony Martial l&agrave; những người lập c&ocirc;ng cho MU ở trận đấu n&agrave;y. Ngo&agrave;i việc gi&agrave;nh 3 điểm để tiếp tục b&aacute;m đuổi những đội xếp tr&ecirc;n, chiến thắng n&agrave;y c&ograve;n gi&uacute;p MU c&aacute;n cột mốc đặc biệt.</p>\r\n', '1511006455product-lager.gif', 5000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_static`
--

CREATE TABLE `tbl_static` (
  `visited` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_static`
--

INSERT INTO `tbl_static` (`visited`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support`
--

CREATE TABLE `tbl_support` (
  `pk_support_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_phone` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_support`
--

INSERT INTO `tbl_support` (`pk_support_id`, `c_name`, `c_phone`) VALUES
(1, 'Hỗ trợ bán hàng', '012345678'),
(2, 'Hỗ trợ kinh doanh', '87654321');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `pk_user_id` int(11) NOT NULL,
  `c_email` varchar(500) NOT NULL,
  `c_password` varchar(500) NOT NULL,
  `c_fullname` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`pk_user_id`, `c_email`, `c_password`, `c_fullname`) VALUES
(1, 'admin@mail.com', '202cb962ac59075b964b07152d234b70', 'Test'),
(2, 'admin1@mail.com', '202cb962ac59075b964b07152d234b70', 'Test'),
(3, 'admin2@mail.com', '202cb962ac59075b964b07152d234b70', 'Test'),
(4, 'admin3@mail.com', '202cb962ac59075b964b07152d234b70', ''),
(5, 'admin4@mail.com', '202cb962ac59075b964b07152d234b70', 'Test'' Hello');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_useronline`
--

CREATE TABLE `tbl_useronline` (
  `pk_useronline_id` int(11) NOT NULL,
  `session_id` varchar(500) NOT NULL,
  `thoidiemtruycap` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_useronline`
--

INSERT INTO `tbl_useronline` (`pk_useronline_id`, `session_id`, `thoidiemtruycap`) VALUES
(1, '55vf4qm16gkl6846gjur9n1ld6', 1511012250),
(2, 'rg33but57jijvqn7nmobu2reu4', 1511012250);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_adv`
--
ALTER TABLE `tbl_adv`
  ADD PRIMARY KEY (`pk_adv_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`pk_category_product_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`pk_news_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pk_product_id`);

--
-- Indexes for table `tbl_support`
--
ALTER TABLE `tbl_support`
  ADD PRIMARY KEY (`pk_support_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`pk_user_id`);

--
-- Indexes for table `tbl_useronline`
--
ALTER TABLE `tbl_useronline`
  ADD PRIMARY KEY (`pk_useronline_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_adv`
--
ALTER TABLE `tbl_adv`
  MODIFY `pk_adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `pk_category_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `pk_news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pk_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_support`
--
ALTER TABLE `tbl_support`
  MODIFY `pk_support_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `pk_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_useronline`
--
ALTER TABLE `tbl_useronline`
  MODIFY `pk_useronline_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
