-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2020 at 02:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Table structure for table `comic`
--

CREATE TABLE `comic` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comic`
--

INSERT INTO `comic` (`id`, `title`, `slug`, `author`, `publisher`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'Naruto', 'naruto', 'Masashi Kishimoto', 'Shonen Jump', 'naruto.jpg', NULL, NULL),
(2, 'Detective Conan', 'detective-conan', 'Gosho Aoyama', 'Elex Media Komputindo', 'conan.jpg', NULL, NULL),
(3, 'Doraemon Version 1', 'doraemon-version-1', 'Fujiko F. Fujio ', 'Elex Media Komputindo ', 'doraemon.jpg', '2020-11-16 09:32:25', '2020-11-17 02:07:33'),
(7, 'tes saja', 'tes-saja', 'tes', 'tes', '1605605508_7321d8a9199dcb9e09b3.jpg', '2020-11-17 02:52:52', '2020-11-17 03:31:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` text NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-11-17-094316', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1605606626, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orang`
--

INSERT INTO `orang` (`id`, `name`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Cecep Maman Januar S.T.', 'Jr. Kartini No. 311, Madiun 26812, SulTra', '2012-04-05 04:32:11', '2020-11-17 04:29:09'),
(2, 'Pranawa Kurniawan', 'Jr. Ekonomi No. 233, Langsa 80751, Riau', '2018-09-21 15:45:01', '2020-11-17 04:29:09'),
(3, 'Zelda Sudiati', 'Ki. Yogyakarta No. 70, Administrasi Jakarta Barat 29363, KalSel', '1996-11-27 07:14:53', '2020-11-17 04:29:09'),
(4, 'Wadi Maulana', 'Psr. Supomo No. 75, Bontang 75778, Jambi', '2003-01-04 05:57:38', '2020-11-17 04:29:09'),
(5, 'Rahayu Mayasari', 'Ki. Bambon No. 143, Banjarmasin 86149, KalUt', '2020-04-13 14:20:36', '2020-11-17 04:29:09'),
(6, 'Limar Narpati S.Gz', 'Kpg. Kebonjati No. 937, Salatiga 44520, SulSel', '1999-04-26 10:22:47', '2020-11-17 04:29:09'),
(7, 'Sakti Nugroho', 'Gg. Gremet No. 937, Magelang 83636, Bengkulu', '1986-09-05 20:29:02', '2020-11-17 04:29:09'),
(8, 'Elma Karimah Mandasari S.H.', 'Ds. Warga No. 804, Sibolga 61617, SumSel', '1995-03-02 01:00:01', '2020-11-17 04:29:09'),
(9, 'Estiawan Maheswara', 'Dk. Jayawijaya No. 13, Parepare 64665, KalTeng', '1985-06-28 11:59:56', '2020-11-17 04:29:09'),
(10, 'Jaya Haryanto', 'Jln. Flores No. 258, Jambi 24712, DKI', '1993-05-20 16:56:31', '2020-11-17 04:29:09'),
(11, 'Wira Hakim M.Pd', 'Jr. Sudirman No. 931, Pekanbaru 63504, SulTra', '2017-03-24 04:10:45', '2020-11-17 04:29:09'),
(12, 'Marwata Permadi S.T.', 'Dk. Jamika No. 783, Tomohon 82437, Jambi', '1990-11-19 09:25:01', '2020-11-17 04:29:09'),
(13, 'Puti Novitasari S.H.', 'Ds. Sampangan No. 820, Dumai 24417, JaBar', '2018-01-06 08:55:44', '2020-11-17 04:29:09'),
(14, 'Tami Lalita Safitri', 'Psr. Sadang Serang No. 555, Bogor 97345, SulUt', '1986-08-10 17:09:27', '2020-11-17 04:29:10'),
(15, 'Dinda Gilda Farida S.I.Kom', 'Kpg. Uluwatu No. 273, Administrasi Jakarta Pusat 96827, KepR', '2012-05-25 12:26:32', '2020-11-17 04:29:10'),
(16, 'Ratih Handayani', 'Jln. Cikutra Timur No. 97, Blitar 70492, Bengkulu', '1984-08-10 01:57:46', '2020-11-17 04:29:10'),
(17, 'Zelda Uyainah', 'Psr. Jend. A. Yani No. 322, Tegal 69723, SumSel', '2010-01-06 11:35:10', '2020-11-17 04:29:10'),
(18, 'Janet Mayasari', 'Ds. Qrisdoren No. 701, Gorontalo 78711, PapBar', '2003-03-28 23:32:46', '2020-11-17 04:29:10'),
(19, 'Darimin Rajata', 'Jln. Sukajadi No. 126, Probolinggo 54084, DIY', '1995-12-23 05:32:25', '2020-11-17 04:29:10'),
(20, 'Kadir Widodo S.E.I', 'Jln. Yohanes No. 948, Administrasi Jakarta Utara 21921, SulUt', '2019-06-06 10:54:45', '2020-11-17 04:29:10'),
(21, 'Mala Mardhiyah', 'Jln. Lumban Tobing No. 681, Gunungsitoli 32744, JaTim', '1996-10-26 14:24:59', '2020-11-17 04:29:10'),
(22, 'Leo Habibi', 'Jln. Supomo No. 503, Lhokseumawe 38229, KalTim', '2004-10-25 13:49:51', '2020-11-17 04:29:10'),
(23, 'Banawa Cahyono Adriansyah', 'Ds. Thamrin No. 926, Tanjungbalai 80469, NTB', '1979-03-20 21:44:24', '2020-11-17 04:29:10'),
(24, 'Sadina Dina Padmasari', 'Kpg. Pelajar Pejuang 45 No. 305, Cilegon 45863, PapBar', '1999-01-01 06:59:31', '2020-11-17 04:29:10'),
(25, 'Vega Thamrin M.TI.', 'Ds. Cihampelas No. 728, Palangka Raya 37792, DIY', '1988-07-26 00:43:26', '2020-11-17 04:29:10'),
(26, 'Nadia Wastuti', 'Kpg. Suprapto No. 634, Pangkal Pinang 56050, KalUt', '2010-12-16 09:10:53', '2020-11-17 04:29:10'),
(27, 'Vicky Pratiwi', 'Kpg. Karel S. Tubun No. 958, Pontianak 63764, SumUt', '1970-10-19 07:58:02', '2020-11-17 04:29:10'),
(28, 'Ana Utami', 'Ki. Ters. Pasir Koja No. 711, Batam 90031, Papua', '1974-12-10 07:00:30', '2020-11-17 04:29:10'),
(29, 'Vanya Farida', 'Dk. Otto No. 98, Cimahi 63822, Riau', '2007-01-28 01:50:34', '2020-11-17 04:29:10'),
(30, 'Elma Mayasari', 'Kpg. Otista No. 983, Kediri 95267, NTT', '2005-07-15 02:08:15', '2020-11-17 04:29:10'),
(31, 'Lala Nasyiah', 'Ds. Sampangan No. 142, Dumai 84197, Papua', '1993-04-11 15:48:51', '2020-11-17 04:29:10'),
(32, 'Hesti Safitri', 'Ki. Basoka No. 582, Administrasi Jakarta Barat 27481, Jambi', '1981-12-10 17:25:14', '2020-11-17 04:29:10'),
(33, 'Eva Laksmiwati S.Pt', 'Dk. Hang No. 777, Balikpapan 32888, BaBel', '2008-05-23 23:24:02', '2020-11-17 04:29:10'),
(34, 'Arsipatra Megantara', 'Ds. Wahid No. 15, Padang 20308, SumBar', '1972-06-06 15:20:30', '2020-11-17 04:29:10'),
(35, 'Nilam Novitasari S.T.', 'Psr. Taman No. 846, Sungai Penuh 41279, Papua', '1983-03-09 20:33:08', '2020-11-17 04:29:10'),
(36, 'Samiah Halimah', 'Psr. Baja No. 470, Blitar 24057, MalUt', '1977-01-02 17:23:04', '2020-11-17 04:29:10'),
(37, 'Vanya Purnawati', 'Dk. B.Agam 1 No. 726, Madiun 84727, Riau', '2018-03-10 18:48:54', '2020-11-17 04:29:10'),
(38, 'Nyana Luluh Adriansyah S.I.Kom', 'Psr. Basmol Raya No. 134, Salatiga 45416, JaTim', '1993-05-25 05:34:10', '2020-11-17 04:29:10'),
(39, 'Karen Handayani', 'Psr. Raya Ujungberung No. 908, Surabaya 70032, SulUt', '1996-01-30 08:53:41', '2020-11-17 04:29:11'),
(40, 'Zaenab Wulandari', 'Jr. Moch. Yamin No. 361, Banjarmasin 10140, NTT', '2001-06-27 17:14:33', '2020-11-17 04:29:11'),
(41, 'Salwa Silvia Wulandari S.Farm', 'Psr. Yohanes No. 960, Bogor 83126, Maluku', '1983-04-01 01:58:30', '2020-11-17 04:29:11'),
(42, 'Tari Yuniar', 'Kpg. Ketandan No. 429, Payakumbuh 85908, SulTra', '1997-06-16 02:38:26', '2020-11-17 04:29:11'),
(43, 'Sari Palastri', 'Kpg. Sutan Syahrir No. 978, Tidore Kepulauan 52406, Banten', '1973-06-07 01:07:58', '2020-11-17 04:29:11'),
(44, 'Kurnia Habibi S.Pd', 'Gg. Madrasah No. 822, Tasikmalaya 71004, Aceh', '1973-11-08 03:46:06', '2020-11-17 04:29:11'),
(45, 'Diana Laksmiwati', 'Dk. Warga No. 539, Singkawang 19460, JaBar', '2007-08-14 21:53:13', '2020-11-17 04:29:11'),
(46, 'Indra Simbolon', 'Dk. Baung No. 499, Administrasi Jakarta Pusat 84622, KepR', '2015-07-12 11:09:02', '2020-11-17 04:29:11'),
(47, 'Sabri Jailani', 'Jln. B.Agam 1 No. 183, Medan 11003, KalTim', '2004-09-29 16:04:02', '2020-11-17 04:29:11'),
(48, 'Paris Padmasari', 'Psr. Agus Salim No. 244, Banjar 11821, Banten', '1976-10-24 05:31:24', '2020-11-17 04:29:11'),
(49, 'Usyi Rahmawati', 'Jr. Kali No. 192, Pasuruan 33994, KepR', '1976-06-02 18:15:48', '2020-11-17 04:29:11'),
(50, 'Najib Imam Latupono S.Sos', 'Kpg. Bayam No. 366, Tarakan 87376, KalSel', '2006-09-29 17:44:03', '2020-11-17 04:29:11'),
(51, 'Gandi Sitompul', 'Jr. Rajawali Barat No. 696, Magelang 30733, Bali', '1999-07-09 13:50:24', '2020-11-17 04:29:11'),
(52, 'Rahman Rudi Halim', 'Kpg. Cut Nyak Dien No. 756, Kotamobagu 10184, DIY', '1990-05-14 00:39:22', '2020-11-17 04:29:11'),
(53, 'Rahmi Rahayu Wastuti M.Pd', 'Ki. Abdul No. 433, Probolinggo 94236, Papua', '1984-06-26 14:56:47', '2020-11-17 04:29:11'),
(54, 'Maria Melani', 'Ds. Hasanuddin No. 572, Bitung 81544, KalTeng', '1990-10-05 10:26:12', '2020-11-17 04:29:11'),
(55, 'Artawan Waskita', 'Psr. Yap Tjwan Bing No. 767, Pekalongan 44216, NTB', '1973-12-25 17:30:35', '2020-11-17 04:29:11'),
(56, 'Waluyo Taufik Permadi', 'Gg. Baan No. 487, Administrasi Jakarta Pusat 82617, KepR', '2009-02-13 06:47:13', '2020-11-17 04:29:11'),
(57, 'Rahmat Adriansyah', 'Jr. K.H. Maskur No. 633, Gunungsitoli 94148, Bengkulu', '2009-01-02 22:15:44', '2020-11-17 04:29:11'),
(58, 'Hilda Laksmiwati', 'Kpg. Gading No. 77, Ternate 21563, JaTim', '1973-12-31 06:27:45', '2020-11-17 04:29:11'),
(59, 'Zahra Salimah Haryanti', 'Psr. Ters. Jakarta No. 784, Bitung 64299, Riau', '2004-07-22 04:56:52', '2020-11-17 04:29:11'),
(60, 'Parman Anggriawan', 'Jln. Urip Sumoharjo No. 51, Palu 55504, Lampung', '1978-06-27 06:30:47', '2020-11-17 04:29:11'),
(61, 'Kayla Namaga', 'Ds. Radio No. 489, Probolinggo 43389, SulSel', '1991-10-08 22:13:45', '2020-11-17 04:29:12'),
(62, 'Garang Hutagalung', 'Gg. Wahid Hasyim No. 948, Pontianak 65820, KepR', '1991-07-11 23:21:52', '2020-11-17 04:29:12'),
(63, 'Raihan Wasita', 'Gg. Cikutra Barat No. 624, Binjai 36024, JaTeng', '2003-11-23 06:23:57', '2020-11-17 04:29:12'),
(64, 'Jumari Harimurti Napitupulu S.Ked', 'Psr. Dr. Junjunan No. 537, Bukittinggi 62782, SulTeng', '2005-10-28 06:04:17', '2020-11-17 04:29:12'),
(65, 'Yessi Nasyidah', 'Gg. Ters. Kiaracondong No. 681, Yogyakarta 45254, JaBar', '2018-11-06 08:21:23', '2020-11-17 04:29:12'),
(66, 'Wulan Permata', 'Gg. Taman No. 889, Padang 28433, PapBar', '2011-04-02 05:18:46', '2020-11-17 04:29:12'),
(67, 'Zelda Ratna Wahyuni S.E.', 'Psr. Ekonomi No. 851, Salatiga 84857, DIY', '1975-08-22 20:05:00', '2020-11-17 04:29:12'),
(68, 'Daliono Adika Waskita M.TI.', 'Ki. Abdul Rahmat No. 684, Sungai Penuh 59963, MalUt', '1974-09-23 20:49:56', '2020-11-17 04:29:12'),
(69, 'Anita Kayla Permata', 'Jr. Gotong Royong No. 45, Yogyakarta 22308, SulTra', '1997-06-19 17:26:35', '2020-11-17 04:29:12'),
(70, 'Icha Riyanti', 'Psr. Ujung No. 587, Blitar 97407, Jambi', '1993-10-24 08:16:31', '2020-11-17 04:29:12'),
(71, 'Hafshah Rahmi Padmasari S.E.', 'Ki. Gardujati No. 366, Administrasi Jakarta Barat 66148, NTB', '1988-01-27 10:43:02', '2020-11-17 04:29:12'),
(72, 'Bakti Maulana', 'Jr. Eka No. 985, Pangkal Pinang 66409, KalSel', '2010-06-03 04:46:33', '2020-11-17 04:29:12'),
(73, 'Eva Hartati', 'Psr. Qrisdoren No. 458, Padangpanjang 33309, SumSel', '1989-09-06 05:13:56', '2020-11-17 04:29:12'),
(74, 'Dewi Andriani', 'Kpg. Bara No. 176, Tebing Tinggi 92113, JaTim', '2016-11-17 09:50:10', '2020-11-17 04:29:12'),
(75, 'Zelaya Rahmawati', 'Ki. Baja Raya No. 517, Tasikmalaya 62327, SulSel', '2015-07-15 01:16:54', '2020-11-17 04:29:12'),
(76, 'Karta Mustofa', 'Psr. Umalas No. 580, Bengkulu 18424, KepR', '2012-06-19 08:41:18', '2020-11-17 04:29:12'),
(77, 'Emin Pradipta', 'Ki. Ciumbuleuit No. 675, Salatiga 55659, KalUt', '2008-01-13 12:45:25', '2020-11-17 04:29:12'),
(78, 'Jelita Natalia Hastuti S.E.', 'Psr. Surapati No. 542, Banjar 87269, Bali', '2009-09-15 05:11:28', '2020-11-17 04:29:12'),
(79, 'Lutfan Labuh Natsir S.Pt', 'Jln. Casablanca No. 897, Bukittinggi 96605, KalBar', '2001-05-11 22:48:00', '2020-11-17 04:29:12'),
(80, 'Ibrahim Putra M.Farm', 'Kpg. Teuku Umar No. 211, Sawahlunto 87509, Jambi', '2003-11-27 06:30:52', '2020-11-17 04:29:12'),
(81, 'Nabila Mulyani', 'Jln. Suniaraja No. 31, Administrasi Jakarta Timur 84721, DIY', '1972-04-01 13:19:02', '2020-11-17 04:29:12'),
(82, 'Makara Wahyudin', 'Jln. Ciumbuleuit No. 406, Salatiga 19491, SulSel', '1981-09-29 01:58:38', '2020-11-17 04:29:12'),
(83, 'Indah Najwa Fujiati', 'Jln. Sutarjo No. 231, Parepare 86654, Aceh', '1972-06-13 01:39:32', '2020-11-17 04:29:12'),
(84, 'Zahra Anastasia Susanti S.E.I', 'Kpg. Baranang Siang No. 359, Batam 45376, Papua', '1972-09-30 19:23:47', '2020-11-17 04:29:12'),
(85, 'Paramita Lailasari', 'Jr. Babadan No. 434, Sabang 25443, Bali', '1973-11-07 00:58:06', '2020-11-17 04:29:12'),
(86, 'Zahra Winda Nasyiah', 'Kpg. Tambak No. 428, Pematangsiantar 34128, KalSel', '1975-07-30 22:18:29', '2020-11-17 04:29:13'),
(87, 'Yono Mursinin Waluyo S.Farm', 'Ki. Raden No. 636, Bau-Bau 45098, KalBar', '2011-12-01 13:37:41', '2020-11-17 04:29:13'),
(88, 'Ifa Hartati', 'Dk. Industri No. 508, Administrasi Jakarta Selatan 76061, JaTim', '1981-02-24 07:17:05', '2020-11-17 04:29:13'),
(89, 'Kawaca Firmansyah S.T.', 'Psr. Jend. A. Yani No. 483, Tasikmalaya 89970, KalTim', '1988-05-24 23:17:11', '2020-11-17 04:29:13'),
(90, 'Unggul Lazuardi', 'Ki. Setiabudhi No. 231, Samarinda 48840, KalUt', '1998-02-25 01:13:52', '2020-11-17 04:29:13'),
(91, 'Adika Najmudin', 'Dk. Gedebage Selatan No. 999, Bandung 97191, NTB', '1985-05-09 01:26:33', '2020-11-17 04:29:13'),
(92, 'Balidin Asmuni Kusumo', 'Jln. Surapati No. 17, Banjar 67546, DKI', '1983-03-23 10:52:47', '2020-11-17 04:29:13'),
(93, 'Ana Mardhiyah S.E.', 'Psr. Merdeka No. 536, Bandar Lampung 77057, Papua', '1999-10-11 14:44:24', '2020-11-17 04:29:13'),
(94, 'Ellis Permata', 'Ds. Taman No. 893, Binjai 89422, KepR', '1970-05-04 06:41:10', '2020-11-17 04:29:13'),
(95, 'Atmaja Tarihoran', 'Dk. Baladewa No. 312, Yogyakarta 42694, SumUt', '1979-06-17 03:40:44', '2020-11-17 04:29:13'),
(96, 'Luluh Prayoga Haryanto S.Sos', 'Dk. Laksamana No. 847, Banda Aceh 30515, SulTra', '2012-12-02 11:39:45', '2020-11-17 04:29:13'),
(97, 'Vicky Zulaika', 'Jr. Baranang No. 31, Tegal 34441, MalUt', '2011-07-27 01:18:42', '2020-11-17 04:29:13'),
(98, 'Cinta Hariyah', 'Kpg. Baranangsiang No. 67, Kediri 44064, Riau', '2015-06-01 00:05:05', '2020-11-17 04:29:13'),
(99, 'Labuh Slamet Situmorang', 'Kpg. Jamika No. 528, Cimahi 39177, JaTeng', '1993-09-03 16:37:26', '2020-11-17 04:29:13'),
(100, 'Indra Warta Sihotang', 'Kpg. Babadak No. 141, Bandar Lampung 72991, KalUt', '1998-10-01 00:04:49', '2020-11-17 04:29:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comic`
--
ALTER TABLE `comic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comic`
--
ALTER TABLE `comic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
