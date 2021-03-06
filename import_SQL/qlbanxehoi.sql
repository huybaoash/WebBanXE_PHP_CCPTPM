-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 12:03 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbanxehoi`
--
CREATE DATABASE IF NOT EXISTS `qlbanxehoi` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `qlbanxehoi`;

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MABL` int(11) NOT NULL,
  `NDBL` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAHD` int(11) NOT NULL,
  `MATK` int(11) NOT NULL,
  `NGAYDANG` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`MABL`, `NDBL`, `MAHD`, `MATK`, `NGAYDANG`) VALUES
(2, 'hello456', 20, 1, '2022-03-27 15:46:04'),
(3, '321 767', 20, 1, '2022-03-27 15:46:44');

-- --------------------------------------------------------

--
-- Stand-in structure for view `binhluan_ten`
-- (See below for the actual view)
--
CREATE TABLE `binhluan_ten` (
`MABL` int(11)
,`NDBL` mediumtext
,`MAHD` int(11)
,`MATK` int(11)
,`TENTK` mediumtext
,`NGAYDANG` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `giohopdong`
--

CREATE TABLE `giohopdong` (
  `Id` int(11) NOT NULL,
  `MAHD` int(11) NOT NULL,
  `MATK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giohopdong`
--

INSERT INTO `giohopdong` (`Id`, `MAHD`, `MATK`) VALUES
(1, 20, 8),
(6, 19, 10),
(7, 20, 10),
(8, 46, 10);

-- --------------------------------------------------------

--
-- Table structure for table `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MAHSX` int(11) NOT NULL,
  `TENHSX` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `HINHANH` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRANGTHAI` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MAHSX`, `TENHSX`, `HINHANH`, `TRANGTHAI`) VALUES
(1, 'Toyota', 'images/carconmpany/HangToyota.jpg', 'C??ng khai'),
(2, 'Mazda', 'images/carconmpany/HangMazda.jpg', 'C??ng khai'),
(3, 'Mercedes-Benz', 'images/carconmpany/HangMercedes-Benz.jpg', 'C??ng khai'),
(4, 'Lexus', 'images/carconmpany/HangLexus.jpg', 'C??ng khai'),
(5, 'Ford', 'images/carconmpany/HangFord.jpg', 'C??ng khai'),
(6, 'Hyundai', 'images/carconmpany/HangHyundai.jpg', 'C??ng khai'),
(7, 'Porsche', 'images/carconmpany/HangPorsche.jpg', 'C??ng khai'),
(8, 'Honda', 'images/carconmpany/HangHonda.jpg', 'C??ng khai'),
(9, 'BMW', 'images/carconmpany/HangBMW.jpg', 'C??ng khai'),
(10, 'Audi', 'images/carconmpany/HangAudi.jpg', 'C??ng khai'),
(11, 'Bugatti', 'images/carconmpany/HangBugatti.jpg', 'C??ng khai'),
(12, 'Ferrari', 'images/carconmpany/HangFerrari.jpg', 'C??ng khai'),
(13, 'Lamborghini', 'images/carconmpany/HangLamborghini.jpg', 'C??ng khai'),
(14, 'VinFast', 'images/carconmpany/HangVinFast.jpg', 'C??ng khai'),
(15, 'Mitsubishi Mirage', 'images/carconmpany/HangMitsubishi.jpg', 'C??ng khai'),
(16, 'Isuzu', 'images/carconmpany/IONm4xvuR1.jpg', '???n'),
(17, 'Isuzuka', 'images/carconmpany/HangBMW.jpg', '???n');

-- --------------------------------------------------------

--
-- Table structure for table `hopdong`
--

CREATE TABLE `hopdong` (
  `MAHD` int(11) NOT NULL,
  `MANGUOIBAN` int(11) NOT NULL,
  `MANGUOIMUA` int(11) DEFAULT NULL,
  `MAXE` int(11) NOT NULL,
  `NOIDUNGHD` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIADIEM` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `GIA` decimal(10,0) DEFAULT NULL,
  `NGAYLAP` datetime NOT NULL DEFAULT current_timestamp(),
  `TRANGTHAI` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hopdong`
--

INSERT INTO `hopdong` (`MAHD`, `MANGUOIBAN`, `MANGUOIMUA`, `MAXE`, `NOIDUNGHD`, `DIADIEM`, `GIA`, `NGAYLAP`, `TRANGTHAI`) VALUES
(1, 1, 6, 2, 'aaa', 'Tp.HCM', '566000000', '2022-03-03 00:00:00', 'Ho??n t???t giao d???ch'),
(19, 7, 9, 29, NULL, 'Tp.HCM', '665000000', '2022-03-10 20:43:46', 'Ho??n t???t giao d???ch'),
(20, 7, 1, 30, NULL, 'H?? N???i', '1690000000', '2022-03-10 20:56:51', 'Ho??n t???t giao d???ch'),
(26, 7, 1, 36, NULL, 'Tp.HCM', '410000000', '2022-03-14 09:28:43', 'Ho??n t???t giao d???ch'),
(46, 1, NULL, 56, '                          ', 'Tp.HCM', '759000000', '2022-03-26 13:24:26', 'C??ng khai'),
(47, 1, NULL, 57, NULL, 'Tp.HCM', '468000000', '2022-03-28 00:24:12', 'C??ng khai'),
(48, 1, NULL, 58, NULL, '???? N???ng', '2290000000', '2022-03-28 00:31:48', 'C??ng khai'),
(49, 1, NULL, 59, NULL, 'H???i Ph??ng', '825000000', '2022-03-28 01:19:20', 'C??ng khai'),
(50, 1, NULL, 60, NULL, 'H?? N???i', '2366000000', '2022-03-28 01:26:21', 'C??ng khai');

-- --------------------------------------------------------

--
-- Stand-in structure for view `hopdong_xe`
-- (See below for the actual view)
--
CREATE TABLE `hopdong_xe` (
`MATK` int(11)
,`TENTK` mediumtext
,`MAHD` int(11)
,`DIADIEM` mediumtext
,`GIA` decimal(10,0)
,`NGAYLAP` datetime
,`TRANGTHAI` mediumtext
,`MAXE` int(11)
,`TENXE` varchar(100)
,`HINHANH` mediumtext
,`BAOHANH` int(11)
,`NAMSANXUAT` int(11)
,`MALOAIXE` int(11)
,`TENLOAIXE` mediumtext
,`MAHSX` int(11)
,`TENHSX` mediumtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `hopdong_xe_nguoimua`
-- (See below for the actual view)
--
CREATE TABLE `hopdong_xe_nguoimua` (
`MAHD` int(11)
,`MANGUOIMUA` int(11)
,`TENTK` mediumtext
,`MAXE` int(11)
,`TENXE` varchar(100)
,`HINHANH` mediumtext
,`GIA` decimal(10,0)
,`BAOHANH` int(11)
,`NAMSANXUAT` int(11)
,`MALOAIXE` int(11)
,`TENLOAIXE` mediumtext
,`MAHSX` int(11)
,`TENHSX` mediumtext
,`NOIDUNGHD` mediumtext
,`DIADIEM` mediumtext
,`NGAYLAP` datetime
,`TRANGTHAI` mediumtext
);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MAKH` int(11) NOT NULL,
  `TENKH` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `GIOITINH` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIACHI` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `CMND` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MAKH`, `TENKH`, `SDT`, `EMAIL`, `GIOITINH`, `DIACHI`, `CMND`) VALUES
(1, 'Ph???m Tr???n Huy B???o', '0787502871', 'huybaoash@gmail.com', 'N???', '778D ???????ng s??? 4, Ph?????ng Hi???p B??nh Ph?????c', '026080277'),
(3, 'L?? V??n An', '0933561277', 'levelan@gmail.com', 'Nam', '232/2 Phan ????ng L??u', '023287388'),
(4, 'D????ng V??n L??m', '0787502123', 'duongvanlam@gmail.com', 'Nam', '12 ???????ng s??? 4 Ph?????ng Hi???p B??nh Ph?????c', '0260944421'),
(6, 'L??m Duy M???nh', '0787505678', 'lamduymanh@gmail.com', 'Nam', '779E Ph?????ng Hi???p B??nh Qu???n Th??? ?????c', '0260966612'),
(7, 'M???t L???n V?? M??i M??i', '0787505691', 'one4forever@gmail.com', 'Nam', '12 ???????ng s??? 4 Ph?????ng Hi???p B??nh Ph?????c', '0260912322'),
(8, 'T???t C??? Cho M???t', '0787556894', 'allforone@gmail.com', 'Nam', '779F Ph?????ng Hi???p B??nh Qu???n Th??? ?????c', '0260955326'),
(21, 'San An', '0937472588', 'sa@gmail.com', 'N???', '779F Ph?????ng Hi???p B??nh Qu???n Th??? ?????c', '0260325556');

-- --------------------------------------------------------

--
-- Table structure for table `loaixe`
--

CREATE TABLE `loaixe` (
  `MALOAIXE` int(11) NOT NULL,
  `TENLOAIXE` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `HINHANH` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TRANGTHAI` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaixe`
--

INSERT INTO `loaixe` (`MALOAIXE`, `TENLOAIXE`, `HINHANH`, `TRANGTHAI`) VALUES
(1, 'D??ng xe SUV', 'images/cartype/e5849910ff25785b2e81f0391dd99c17-2740466052296500054.jpg', 'C??ng khai'),
(2, 'D??ng ?? t?? CUV', 'images/cartype/XeCUV.jpg', 'C??ng khai'),
(3, 'D??ng xe Sedan', 'images/cartype/XeSedan.jpg', 'C??ng khai'),
(4, 'D??ng xe Minivan/MPV', 'images/cartype/XeMPV.jpg', 'C??ng khai'),
(5, 'D??ng ?? t?? Hatchback', 'images/cartype/XeHatchback.jpg', 'C??ng khai'),
(6, 'D??ng xe Convertible/Cabriolet', 'images/cartype/XeCabriolet.jpg', 'C??ng khai'),
(7, 'D??ng xe Pick-up', 'images/cartype/XePick-up.jpg', 'C??ng khai'),
(8, 'D??ng ?? t?? Limousine', 'images/cartype/XeLimousine.jpg', 'C??ng khai'),
(9, 'D??ng xe Coupe', 'images/cartype/XeCoupe.jpg', 'C??ng khai'),
(10, 'D??ng xe Ranger', 'images/cartype/XeRanger.jpg', 'C??ng khai'),
(11, 'D??ng xe Lamborghini', 'images/cartype/XeLamborghini.jpg', 'C??ng khai'),
(12, 'D??ng xe ASH', 'images/cartype/l_1646919103.951.jpg', '???n'),
(13, 'D??ng ?? t?? MAX', 'images/cartype/HangBMW.jpg', '???n');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MATK` int(11) NOT NULL,
  `MAKH` int(11) DEFAULT NULL,
  `TENTK` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `MATKHAU` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `HINHANH` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHUCVU` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `TRANGTHAI` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MATK`, `MAKH`, `TENTK`, `MATKHAU`, `HINHANH`, `CHUCVU`, `TRANGTHAI`) VALUES
(1, 1, 'huybaoash', 'huybaoash', NULL, 'Ng?????i Qu???n Tr???', '??ang ho???t ?????ng'),
(6, 3, 'levela', 'levela', NULL, 'Ng?????i d??ng', '???? kh??a'),
(7, 4, 'duongvanlam', 'duongvanlam', NULL, 'Ng?????i d??ng', '??ang ho???t ?????ng'),
(8, 6, 'lamduymanh', 'lamduymanh', '', 'Ng?????i d??ng', '??ang ho???t ?????ng'),
(9, 7, 'motlanvamaimai', 'motlanvamaimai', '', 'Ng?????i d??ng', '??ang ho???t ?????ng'),
(10, 8, 'tatcachomot', 'tatcachomot', '', 'Ng?????i d??ng', '??ang ho???t ?????ng'),
(11, 21, 'sa', 'sa', '', 'Ng?????i d??ng', '??ang ho???t ?????ng');

-- --------------------------------------------------------

--
-- Table structure for table `xe`
--

CREATE TABLE `xe` (
  `MAXE` int(11) NOT NULL,
  `TENXE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NOIDUNGXE` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `HINHANH` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `BAOHANH` int(11) DEFAULT NULL,
  `GIA` decimal(20,0) DEFAULT NULL,
  `NAMSANXUAT` int(11) NOT NULL,
  `MALOAIXE` int(11) NOT NULL,
  `MAHSX` int(11) NOT NULL,
  `TRANGTHAI` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xe`
--

INSERT INTO `xe` (`MAXE`, `TENXE`, `NOIDUNGXE`, `HINHANH`, `BAOHANH`, `GIA`, `NAMSANXUAT`, `MALOAIXE`, `MAHSX`, `TRANGTHAI`) VALUES
(2, 'Ford Ranger Xls At 2016', '\r\n\r\nD??ng xe: Ranger\r\n\r\nN??m s???n xu???t: 2016\r\n\r\nS??? Km ???? ??i: 118000\r\n\r\nT??nh tr???ng: ???? s??? d???ng\r\n\r\nH???p s???: T??? ?????ng\r\n\r\nNhi??n li???u: D???u\r\n\r\nKi???u d??ng: Pick-up (b??n t???i)\r\n', 'images/car/hopdong1/IMAG3259-1.jpg', 36, '566000000', 2016, 10, 5, 'C??ng khai'),
(29, 'Xe Mazda 3 Luxury 2020', 'Xu???t x???: L???p r??p trong n?????c \r\nT??nh tr???ng: Xe ???? d??ng \r\nD??ng xe: Sedan \r\nS??? Km ???? ??i: 20,000 Km \r\nM??u ngo???i th???t: ????? \r\nM??u n???i th???t: ??en \r\nS??? c???a: 4 c???a \r\nS??? ch??? ng???i: 5 ch??? \r\nNhi??n li???u - ?????ng c?? \r\n?????ng c??: X??ng \r\nH??? th???ng n???p nhi??n li???u: 1.5 \r\nH???p s??? chuy???n ?????ng \r\nH???p s???: S??? t??? ?????ng \r\nD???n ?????ng: FWD - D???n ?????ng c???u tr?????c \r\nTi??u th??? nhi??n li???u: 6 L/100Km', 'images/car/hopdong19/l_1646919103.951.jpg', 24, '665000000', 2020, 1, 1, 'C??ng khai'),
(30, 'Xe Toyota Prado TXL 2.7L 2016 ', 'Th??ng s??? c?? b???n \r\nXu???t x???: Nh???p kh???u \r\nT??nh tr???ng: Xe ???? d??ng\r\n D??ng xe: SUV \r\nS??? Km ???? ??i: 70,000 Km\r\n M??u ngo???i th???t: Tr???ng \r\nM??u n???i th???t: ??en \r\nS??? c???a: 5 c???a \r\nS??? ch??? ng???i: 8 ch??? \r\nNhi??n li???u - ?????ng c?? \r\n?????ng c??: X??ng \r\nH??? th???ng n???p nhi??n li???u: H???p s??? chuy???n ?????ng \r\nH???p s???: S??? t??? ?????ng \r\nD???n ?????ng: 4WD ho???c AWD \r\nTi??u th??? nhi??n li???u: L/100Km', 'images/car/hopdong20/l_1646919856.313.jpg', 24, '1690000000', 2016, 1, 1, 'C??ng khai'),
(36, 'B??N ACCENT 2022 GI?? T???T,T G??P 85%,XE GIAO NGAY', 'Tr??? g??p 5.81 tri???u/th??ng, tr??? tr?????c 123 tri???u (G??i vay tham kh???o t??? Ch??? T???t)\r\n?????C BI???T: Ng??n h??ng h??? tr??? vay l??n ?????n 80% - 90% gi?? tr??? xe --- Kh??ng c???n ch???ng minh thu nh???p (Ch??? c???n CMND + HK) --- Duy???t h??? s?? trong 15 ph??t.L??i su???t ??u ????i,th???p th??? tr?????ng .Bao ?????u h??? s?? vay ng??n h??ng\r\nGi?? xe ????? ngh??? mua:\r\n\r\nACEENT 1.4L MT S??? S??n Ti??u Chu???n 2022 : 410.000.000 ?? + T???ng Ph??? Ki???n Cao C???p\r\n\r\nACCENT 1.4L MT S??? S??n B???n ????? 2022 : 466.000.000 ?? + T???ng Ph??? Ki???n Cao C???p\r\n\r\nACCENT 1.4L AT T??? ?????ng Ti??u Chu???n 2022 : 495.000.000\r\n.?? + T???ng Ph??? Ki???n Cao C???p\r\n\r\nACCENT 1.4L AT S??? T??? ?????ng ?????c Bi???t 2022 : 535.000.000 ?? + T???ng Ph??? Ki???n Cao C???p\r\n\r\nB???o h??nh 100.000 km ho???c 5 n??m theo ti??u chu???n c???a Hyundai tr??n to??n qu???c\r\nHyundai Accent 2022 hi???n c?? c??c m??u: ??en,Tr???ng,B???c,?????,V??ng C??t,V??ng Be\r\nT???ng ph??? ki???n cho xe (Bao Tay L??i da, Tappi S??n m??? crom,Kh??n lau xe, B??nh Ch???a Ch??y, ??o Tr??m Xe, N?????c Hoa, D??n Phim C??ch Nhi???t M???, L??t S??n Cao C???p, H???p ??en,Ph??? G???m).\r\nGi?? xe Hyundai Accent ???? bao g???m thu??? VAT nh??ng ch??a bao g???m chi ph?? l??n b??nh.????? bi???t th??m chi ti???t gi?? l??n b??nh Qu?? Kh??ch vui LH', 'images/car/hopdong26/e5849910ff25785b2e81f0391dd99c17-2740466052296500054.jpg', 3, '410000000', 2022, 3, 6, 'C??ng khai'),
(56, 'Xe Toyota Fortuner', 'Th??ng s??? c?? b???n\r\n  Xu???t x???:\r\nL???p r??p trong n?????c\r\n  T??nh tr???ng:\r\nXe ???? d??ng\r\n  D??ng xe:\r\nSUV\r\n  S??? Km ???? ??i:\r\n0 Km\r\n  M??u ngo???i th???t:\r\nTr???ng\r\n  M??u n???i th???t:\r\nM??u kh??c\r\n  S??? c???a:\r\n5 c???a\r\n  S??? ch??? ng???i:\r\n7 ch???\r\nNhi??n li???u - ?????ng c??\r\n  ?????ng c??:\r\nD???u\r\n  H??? th???ng n???p nhi??n li???u:\r\nH???p s??? chuy???n ?????ng\r\n  H???p s???:\r\nS??? tay\r\n  D???n ?????ng:\r\nFWD - D???n ?????ng c???u tr?????c\r\n  Ti??u th??? nhi??n li???u:\r\nL/100Km\r\n', 'images/car/hopdong46/l_1648269199.516.jpg', 24, '759000000', 2016, 9, 1, 'C??ng khai'),
(57, 'Xe Volkswagen Beetle convertible 2005', 'Th??ng s??? c?? b???n\r\n  Xu???t x???:\r\nNh???p kh???u\r\n  T??nh tr???ng:\r\nXe ???? d??ng\r\n  D??ng xe:\r\nConvertible/Cabriolet\r\n  S??? Km ???? ??i:\r\n12,434 Km\r\n  M??u ngo???i th???t:\r\nTr???ng\r\n  M??u n???i th???t:\r\nN??u\r\n  S??? c???a:\r\n2 c???a\r\n  S??? ch??? ng???i:\r\n4 ch???\r\nNhi??n li???u - ?????ng c??\r\n  ?????ng c??:\r\nX??ng\r\n  H??? th???ng n???p nhi??n li???u:\r\nPhun x??ng ??i???n t???\r\nH???p s??? chuy???n ?????ng\r\n  H???p s???:\r\nS??? t??? ?????ng\r\n  D???n ?????ng:\r\n4WD - D???n ?????ng 4 b??nh\r\n  Ti??u th??? nhi??n li???u:\r\n8 L/100Km\r\nTh??ng tin m?? t???\r\n#Volkswagen_Beetle mui x???p n??? 2006\r\n??? M??u Tr???ng n???i th???t da N??u.\r\n??? S???n xu???t 2005\r\n??? ?????ng c??: 2.5L AT.\r\n??? Xe trang b???: NewBeetle mui s???p n??? 2 c???a 4 ch???, s??? t??? ?????ng, gh??? n???i th???t da sang tr???ng, ??m thanh 7 loa nghe c???c hay, ????n pha bi-xenon, , m??n h??nh gi???i tr?? k???t n???i usb CD, m??m ?????, s??? t??? ?????ng, ??i???u ho?? m??t l???nh, c??ch ??m t???t, 4 v??? m???i ch???y ??m ??i,???\r\n\r\n???Gi??: 468 Tri???u.\r\n\r\n??? H???ng Ph??c Auto cam k???t:\r\n??? ?????m b???o m??y m??c nguy??n b???n, kh??ng ????m ?????ng, kh??ng ng???p n?????c.\r\n??? Nh???n trao ?????i, giao l??u xe.\r\n??? ?????c bi???t c?? nh???n thu mua xe c?? gi?? cao nh???t th??? tr?????ng, c?? hu?? h???ng cho ng?????i ch??? ??i???m.\r\n#Volwagen_New_Beetle_Mui_S???p', 'images/car/hopdong47/m_1648398176.929.jpg', 23, '468000000', 2005, 6, 8, 'C??ng khai'),
(58, 'Xe Porsche Panamera 4S', 'Th??ng s??? c?? b???n\r\n  Xu???t x???:\r\nNh???p kh???u\r\n  T??nh tr???ng:\r\nXe ???? d??ng\r\n  D??ng xe:\r\nSedan\r\n  S??? Km ???? ??i:\r\n55,000 Km\r\n  M??u ngo???i th???t:\r\nXanh\r\n  M??u n???i th???t:\r\nN??u\r\n  S??? c???a:\r\n4 c???a\r\n  S??? ch??? ng???i:\r\n4 ch???\r\nNhi??n li???u - ?????ng c??\r\n  ?????ng c??:\r\nX??ng 4.8 L\r\n  H??? th???ng n???p nhi??n li???u:\r\nH???p s??? chuy???n ?????ng\r\n  H???p s???:\r\nS??? t??? ?????ng\r\n  D???n ?????ng:\r\nRFD - D???n ?????ng c???u sau\r\n  Ti??u th??? nhi??n li???u:\r\nL/100Km\r\nTh??ng tin m?? t???\r\nPORSCHE PANAMERA 4S 2012:\r\n\r\n-????ng k?? 2013\r\n-Ngo???i th???t xanh, n???i th???t n??u\r\n-ODO 5 v???n km\r\n-l???i th??? bi???n th??nh ph???\r\n\r\nXe ???????c trang b??? FULL OPTION:\r\n-Ki???m so??t ???n ?????nh v?? ki???m so??t ????? b??m ???????ng\r\n-H??? th???ng ch???ng b?? c???ng phanh\r\n-H??? th???ng treo tr?????c l?? Front independent suspension trong khi h??? th???ng treo sau l?? Rear independent suspension\r\n-H??? th???ng ??m thanh 10 loa, c???ng USB, k???t n???i AUX, Bluetooth,\r\n-C???p ??i???u khi???n ??i???n, h??? th???ng d???n ???????ng, Cruiser Control\r\n-V?? c??n nhi???u trang b??? ti???n ??ch v?? an to??n kh??c...\r\nCam k???t\r\n- Xe ?????p nh?? h??nh\r\n- Kh??ng ????m ?????ng, kh??ng ng???p n?????c\r\n- Gi???y t???, ph??p l?? r?? r??ng\r\nLI??N H??? NGAY ????? NH???N T?? V???N TR???C TI???P V?? B??O GI?? T???T', 'images/car/hopdong48/l_1647654494.219.jpg', 12, '2290000000', 2012, 10, 7, 'C??ng khai'),
(59, 'Xe VinFast Lux A 2.0 2.0 AT ', 'Th??ng s??? c?? b???n\r\n  Xu???t x???:\r\nL???p r??p trong n?????c\r\n  T??nh tr???ng:\r\nXe ???? d??ng\r\n  D??ng xe:\r\nSedan\r\n  S??? Km ???? ??i:\r\n5,000 Km\r\n  M??u ngo???i th???t:\r\n??en\r\n  M??u n???i th???t:\r\nN??u\r\n  S??? c???a:\r\n4 c???a\r\n  S??? ch??? ng???i:\r\n5 ch???\r\nNhi??n li???u - ?????ng c??\r\n  ?????ng c??:\r\nX??ng 2.0 L\r\n  H??? th???ng n???p nhi??n li???u:\r\nH???p s??? chuy???n ?????ng\r\n  H???p s???:\r\nS??? t??? ?????ng\r\n  D???n ?????ng:\r\nRFD - D???n ?????ng c???u sau\r\n  Ti??u th??? nhi??n li???u:\r\nL/100Km\r\nTh??ng tin m?? t???\r\nAuto88 v??? Vinfast Lux A2.0 AT sx 2021 ch???y 5000km. Xe m???t ch??? t??? m???i s??n zin 99%.\r\n\r\nAuto88 cam k???t s???n ph???m b??n ra kh??ng ????m ?????ng, kh??ng ng???p n?????c, ?????ng c?? h???p s??? nguy??n b???n, h??? s?? ph??p l?? chu???n, kh??ng ph???t ngu???i.\r\n\r\nCheck h??ng m???i n??i theo ch??? ?????nh c???a kh??ch h??ng.\r\nH??? tr??? tr??? g??p 70% gi?? tr??? xe trong 5 n??m!\r\nFb: Tr???nh V?? Th??i Ho??.', 'images/car/hopdong49/l_1647004723.409.jpg', 20, '825000000', 2021, 5, 14, 'C??ng khai'),
(60, 'Xe Ford Explorer 2022', 'T???ng th???m s??n 6D cao c???p\r\nT???ng d??n phim c??ch nhi???t to??n b??? xe\r\nT???ng n?????c hoa ?? t??\r\nT???ng th??? vip 10 tri???u\r\nT???ng Th??? c???u h??? mi???n ph?? 3 n??m\r\nGi?? xe cam k???t t???t th??? tr?????ng\r\nG???i ngay h??m nay ????? nh???n b??o gi?? t???t nh???t: xe c?? ????? m??u Tr???ng, ??en,Xanh,????? giao ngay\r\nH??? tr??? Tr??? g??p ?????n 80% gi?? xe, l??i su???t ??u ????i, th??? t???c nhanh ch??ng\r\nH??? tr??? th??? t???c ????ng k??, ????ng ki???m, giao xe t???i nh??\r\nFord Explorer 2022 nh???p kh???u nguy??n chi???c t??? M???, xe ch???c n???ch. ?????ng c?? Ecoboost 2.3L c???c k??? kh???e, cho c??ng su???t 301 m?? l???c\r\nNg???p tr??n nh???ng t??nh n??ng an to??n v?? h??? tr??? ng?????i l??i . C??ng ngh??? b???o v??? Kh??ch h??ng Co - Pilot 360?? bao g???m :\r\n???H??? th???ng c???nh b??o l???ch l??n v?? duy tr?? l??n ???????ng\r\n???H??? th???ng c???m bi???n h??? tr??? ????? xe tr?????c v?? sau, camera 360?? v?? camera l??i\r\n???H??? th???ng h??? tr??? ????nh l??i, c???nh b??o va ch???m, c???nh b??o ??i???m m?? v?? xe c???t ngang\r\n???H??? th???ng ??i???u ch???nh ????n pha/c???t t??? ?????ng\r\n???H??? th???ng c??n b???ng ??i???n t???, ch???ng b?? c???ng phanh (ABS) & ph??n ph???i l???c phanh ??i???n t??? (EBD)\r\n???H??? th???ng ch???ng tr???m, ki???m so??t ??p su???t l???p\r\n???H??? th???ng ki???m so??t h??nh tr??nh, h??? tr??? kh???i h??nh ngang d???c, ki???m so??t khi xe v??o cua\r\n???Trang b??? l??n ?????n 8 t??i kh??.\r\n???H??? th???ng ch???ng ???n ch??? ?????ng : C??ch ??m k??nh l??i, khoang ?????ng c??, khung g???m.\r\n\r\nNh???n ????? hi???n s???: 097342 ***\r\nH??ng\r\nH??ng: Ford\r\nD??ng xe\r\nD??ng xe: Explorer\r\nN??m s???n xu???t\r\nN??m s???n xu???t: 2022\r\nT??nh tr???ng\r\nT??nh tr???ng: M???i\r\nH???p s???\r\nH???p s???: T??? ?????ng\r\nNhi??n li???u\r\nNhi??n li???u: X??ng\r\nXu???t x???\r\nXu???t x???: M???\r\nKi???u d??ng\r\nKi???u d??ng: SUV / Cross over\r\nS??? ch???\r\nS??? ch???: 7\r\n', 'images/car/hopdong50/asdkasdasdk.jpg', 3, '2366000000', 2022, 9, 5, 'C??ng khai');

-- --------------------------------------------------------

--
-- Structure for view `binhluan_ten`
--
DROP TABLE IF EXISTS `binhluan_ten`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `binhluan_ten`  AS SELECT `binhluan`.`MABL` AS `MABL`, `binhluan`.`NDBL` AS `NDBL`, `binhluan`.`MAHD` AS `MAHD`, `binhluan`.`MATK` AS `MATK`, `taikhoan`.`TENTK` AS `TENTK`, `binhluan`.`NGAYDANG` AS `NGAYDANG` FROM (`binhluan` join `taikhoan`) WHERE `binhluan`.`MATK` = `taikhoan`.`MATK` ;

-- --------------------------------------------------------

--
-- Structure for view `hopdong_xe`
--
DROP TABLE IF EXISTS `hopdong_xe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hopdong_xe`  AS SELECT `taikhoan`.`MATK` AS `MATK`, `taikhoan`.`TENTK` AS `TENTK`, `hopdong`.`MAHD` AS `MAHD`, `hopdong`.`DIADIEM` AS `DIADIEM`, `hopdong`.`GIA` AS `GIA`, `hopdong`.`NGAYLAP` AS `NGAYLAP`, `hopdong`.`TRANGTHAI` AS `TRANGTHAI`, `xe`.`MAXE` AS `MAXE`, `xe`.`TENXE` AS `TENXE`, `xe`.`HINHANH` AS `HINHANH`, `xe`.`BAOHANH` AS `BAOHANH`, `xe`.`NAMSANXUAT` AS `NAMSANXUAT`, `loaixe`.`MALOAIXE` AS `MALOAIXE`, `loaixe`.`TENLOAIXE` AS `TENLOAIXE`, `hangsanxuat`.`MAHSX` AS `MAHSX`, `hangsanxuat`.`TENHSX` AS `TENHSX` FROM ((((`hopdong` join `xe`) join `loaixe`) join `hangsanxuat`) join `taikhoan`) WHERE `hopdong`.`MAXE` = `xe`.`MAXE` AND `loaixe`.`MALOAIXE` = `xe`.`MALOAIXE` AND `hangsanxuat`.`MAHSX` = `xe`.`MAHSX` AND `hopdong`.`MANGUOIBAN` = `taikhoan`.`MATK` ;

-- --------------------------------------------------------

--
-- Structure for view `hopdong_xe_nguoimua`
--
DROP TABLE IF EXISTS `hopdong_xe_nguoimua`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `hopdong_xe_nguoimua`  AS SELECT `hopdong`.`MAHD` AS `MAHD`, `hopdong`.`MANGUOIMUA` AS `MANGUOIMUA`, `taikhoan`.`TENTK` AS `TENTK`, `xe`.`MAXE` AS `MAXE`, `xe`.`TENXE` AS `TENXE`, `xe`.`HINHANH` AS `HINHANH`, `hopdong`.`GIA` AS `GIA`, `xe`.`BAOHANH` AS `BAOHANH`, `xe`.`NAMSANXUAT` AS `NAMSANXUAT`, `xe`.`MALOAIXE` AS `MALOAIXE`, `loaixe`.`TENLOAIXE` AS `TENLOAIXE`, `xe`.`MAHSX` AS `MAHSX`, `hangsanxuat`.`TENHSX` AS `TENHSX`, `hopdong`.`NOIDUNGHD` AS `NOIDUNGHD`, `hopdong`.`DIADIEM` AS `DIADIEM`, `hopdong`.`NGAYLAP` AS `NGAYLAP`, `hopdong`.`TRANGTHAI` AS `TRANGTHAI` FROM ((((`hopdong` join `taikhoan`) join `xe`) join `loaixe`) join `hangsanxuat`) WHERE `hopdong`.`MANGUOIMUA` = `taikhoan`.`MATK` AND `hopdong`.`MAXE` = `xe`.`MAXE` AND `xe`.`MALOAIXE` = `loaixe`.`MALOAIXE` AND `xe`.`MAHSX` = `hangsanxuat`.`MAHSX` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MABL`),
  ADD KEY `MAHD` (`MAHD`),
  ADD KEY `MATK` (`MATK`);

--
-- Indexes for table `giohopdong`
--
ALTER TABLE `giohopdong`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `MAHD` (`MAHD`),
  ADD KEY `MATK` (`MATK`);

--
-- Indexes for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MAHSX`);

--
-- Indexes for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD PRIMARY KEY (`MAHD`),
  ADD KEY `MANGUOIBAN` (`MANGUOIBAN`),
  ADD KEY `MANGUOIMUA` (`MANGUOIMUA`),
  ADD KEY `MAXE` (`MAXE`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MAKH`);

--
-- Indexes for table `loaixe`
--
ALTER TABLE `loaixe`
  ADD PRIMARY KEY (`MALOAIXE`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MATK`),
  ADD KEY `MAKH` (`MAKH`);

--
-- Indexes for table `xe`
--
ALTER TABLE `xe`
  ADD PRIMARY KEY (`MAXE`),
  ADD KEY `MALOAIXE` (`MALOAIXE`),
  ADD KEY `MAHSX` (`MAHSX`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MABL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `giohopdong`
--
ALTER TABLE `giohopdong`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `MAHSX` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hopdong`
--
ALTER TABLE `hopdong`
  MODIFY `MAHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MAKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `loaixe`
--
ALTER TABLE `loaixe`
  MODIFY `MALOAIXE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MATK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `xe`
--
ALTER TABLE `xe`
  MODIFY `MAXE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`MAHD`) REFERENCES `hopdong` (`MAHD`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`MATK`) REFERENCES `taikhoan` (`MATK`);

--
-- Constraints for table `giohopdong`
--
ALTER TABLE `giohopdong`
  ADD CONSTRAINT `giohopdong_ibfk_1` FOREIGN KEY (`MAHD`) REFERENCES `hopdong` (`MAHD`),
  ADD CONSTRAINT `giohopdong_ibfk_2` FOREIGN KEY (`MATK`) REFERENCES `taikhoan` (`MATK`);

--
-- Constraints for table `hopdong`
--
ALTER TABLE `hopdong`
  ADD CONSTRAINT `hopdong_ibfk_1` FOREIGN KEY (`MANGUOIBAN`) REFERENCES `taikhoan` (`MATK`),
  ADD CONSTRAINT `hopdong_ibfk_2` FOREIGN KEY (`MANGUOIMUA`) REFERENCES `taikhoan` (`MATK`),
  ADD CONSTRAINT `hopdong_ibfk_3` FOREIGN KEY (`MAXE`) REFERENCES `xe` (`MAXE`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MAKH`) REFERENCES `khachhang` (`MAKH`);

--
-- Constraints for table `xe`
--
ALTER TABLE `xe`
  ADD CONSTRAINT `xe_ibfk_1` FOREIGN KEY (`MALOAIXE`) REFERENCES `loaixe` (`MALOAIXE`),
  ADD CONSTRAINT `xe_ibfk_2` FOREIGN KEY (`MAHSX`) REFERENCES `hangsanxuat` (`MAHSX`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
