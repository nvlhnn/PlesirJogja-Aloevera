-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2020 at 06:56 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plesirjogja`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `rating` decimal(8,2) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `place_id`, `rating`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '5.00', 'bagus', '2020-06-27 08:07:25', '2020-06-27 08:07:25'),
(2, 2, 2, '5.00', 'bagus sekali', '2020-06-27 08:13:32', '2020-06-27 08:13:32'),
(3, 2, 2, '2.00', 'jelek', '2020-06-27 08:15:13', '2020-06-27 08:15:13'),
(4, 2, 3, '1.00', 'sasasasasas', NULL, NULL),
(5, 2, 3, '1.00', 'sasasasasas', NULL, NULL),
(6, 2, 8, '5.00', 'bagus sekali', NULL, NULL),
(7, 2, 4, '2.00', 'bagus sekali', NULL, NULL),
(8, 2, 10, '3.00', 'bagus sekali', NULL, NULL),
(9, 2, 4, '4.00', 'bagus sekali', NULL, NULL),
(10, 2, 9, '5.00', 'bagus sekali', NULL, NULL),
(11, 2, 2, '1.00', 'bagus sekali', NULL, NULL),
(12, 2, 2, '4.00', 'bagus sekali', NULL, NULL),
(13, 2, 9, '3.00', 'bagus sekali', NULL, NULL),
(14, 2, 7, '4.00', 'bagus sekali', NULL, NULL),
(15, 2, 10, '2.00', 'bagus sekali', NULL, NULL),
(16, 2, 6, '2.00', 'bagus sekali', NULL, NULL),
(17, 2, 4, '1.00', 'bagus sekali', NULL, NULL),
(18, 2, 4, '1.00', 'bagus sekali', NULL, NULL),
(19, 2, 5, '5.00', 'bagus sekali', NULL, NULL),
(20, 2, 2, '4.00', 'bagus sekali', NULL, NULL),
(21, 2, 2, '1.00', 'bagus sekali', NULL, NULL),
(22, 2, 2, '3.00', 'bagus sekali', NULL, NULL),
(23, 2, 11, '2.00', 'bagus sekali', NULL, NULL),
(24, 2, 11, '1.00', 'bagus sekali', NULL, NULL),
(25, 2, 11, '1.00', 'bagus sekali', NULL, NULL),
(26, 2, 8, '2.00', 'bagus sekali', NULL, NULL),
(27, 2, 8, '3.00', 'bagus sekali', NULL, NULL),
(28, 2, 10, '2.00', 'bagus sekali', NULL, NULL),
(29, 2, 2, '3.00', 'bagus sekali', NULL, NULL),
(30, 2, 8, '5.00', 'bagus sekali', NULL, NULL),
(31, 2, 7, '1.00', 'bagus sekali', NULL, NULL),
(32, 2, 6, '5.00', 'bagus sekali', NULL, NULL),
(33, 2, 5, '4.00', 'bagus sekali', NULL, NULL),
(34, 2, 8, '2.00', 'bagus sekali', NULL, NULL),
(35, 2, 10, '5.00', 'bagus sekali', NULL, NULL),
(36, 2, 6, '2.00', 'bagus sekali', NULL, NULL),
(37, 2, 2, '5.00', 'bagus sekali', NULL, NULL),
(38, 2, 11, '4.00', 'bagus sekali', NULL, NULL),
(39, 2, 2, '2.00', 'bagus sekali', NULL, NULL),
(40, 2, 6, '1.00', 'bagus sekali', NULL, NULL),
(41, 2, 9, '2.00', 'bagus sekali', NULL, NULL),
(42, 2, 7, '1.00', 'bagus sekali', NULL, NULL),
(43, 2, 10, '4.00', 'bagus sekali', NULL, NULL),
(44, 2, 3, '1.00', 'bagus sekali', NULL, NULL),
(45, 2, 6, '5.00', 'bagus sekali', NULL, NULL),
(46, 2, 6, '4.00', 'bagus sekali', NULL, NULL),
(47, 2, 8, '1.00', 'bagus sekali', NULL, NULL),
(48, 2, 3, '1.00', 'bagus sekali', NULL, NULL),
(49, 2, 10, '5.00', 'bagus sekali', NULL, NULL),
(50, 2, 7, '4.00', 'bagus sekali', NULL, NULL),
(51, 2, 7, '5.00', 'bagus sekali', NULL, NULL),
(52, 2, 9, '4.00', 'bagus sekali', NULL, NULL),
(53, 2, 4, '2.00', 'bagus sekali', NULL, NULL),
(54, 2, 7, '1.00', 'bagus sekali', NULL, NULL),
(55, 2, 10, '1.00', 'bagus sekali', NULL, NULL),
(56, 2, 7, '1.00', 'bagus sekali', NULL, NULL),
(57, 2, 6, '2.00', 'bagus sekali', NULL, NULL),
(58, 2, 8, '4.00', 'bagus sekali', NULL, NULL),
(59, 2, 11, '4.00', 'bagus sekali', NULL, NULL),
(60, 2, 3, '2.00', 'bagus sekali', NULL, NULL),
(61, 2, 6, '5.00', 'bagus sekali', NULL, NULL),
(62, 2, 5, '3.00', 'bagus sekali', NULL, NULL),
(63, 2, 9, '2.00', 'bagus sekali', NULL, NULL),
(64, 2, 8, '3.00', 'bagus sekali', NULL, NULL),
(65, 2, 10, '2.00', 'bagus sekali', NULL, NULL),
(66, 2, 10, '4.00', 'bagus sekali', NULL, NULL),
(67, 2, 2, '2.00', 'bagus sekali', NULL, NULL),
(68, 2, 2, '3.00', 'bagus sekali', NULL, NULL),
(69, 2, 8, '3.00', 'bagus sekali', NULL, NULL),
(70, 2, 11, '5.00', 'bagus sekali', NULL, NULL),
(71, 2, 11, '5.00', 'bagus sekali', NULL, NULL),
(72, 2, 5, '4.00', 'bagus sekali', NULL, NULL),
(73, 2, 2, '3.00', 'bagus sekali', NULL, NULL),
(74, 2, 2, '2.00', 'bagus sekali', NULL, NULL),
(75, 2, 9, '4.00', 'bagus sekali', NULL, NULL),
(76, 2, 11, '5.00', 'bagus sekali', NULL, NULL),
(77, 2, 3, '1.00', 'bagus sekali', NULL, NULL),
(78, 2, 8, '2.00', 'bagus sekali', NULL, NULL),
(79, 2, 11, '4.00', 'bagus sekali', NULL, NULL),
(80, 2, 9, '5.00', 'bagus sekali', NULL, NULL),
(81, 2, 5, '1.00', 'bagus sekali', NULL, NULL),
(82, 2, 8, '1.00', 'bagus sekali', NULL, NULL),
(83, 2, 7, '2.00', 'bagus sekali', NULL, NULL),
(84, 2, 11, '2.00', 'bagus sekali', NULL, NULL),
(85, 2, 7, '5.00', 'bagus sekali', NULL, NULL),
(86, 2, 8, '3.00', 'bagus sekali', NULL, NULL),
(87, 2, 8, '5.00', 'bagus sekali', NULL, NULL),
(88, 2, 3, '4.00', 'bagus sekali', NULL, NULL),
(89, 2, 3, '1.00', 'bagus sekali', NULL, NULL),
(90, 2, 6, '5.00', 'bagus sekali', NULL, NULL),
(91, 2, 8, '1.00', 'bagus sekali', NULL, NULL),
(92, 2, 11, '1.00', 'bagus sekali', NULL, NULL),
(93, 2, 9, '3.00', 'bagus sekali', NULL, NULL),
(94, 2, 11, '2.00', 'bagus sekali', NULL, NULL),
(95, 2, 3, '2.00', 'bagus sekali', NULL, NULL),
(96, 2, 4, '5.00', 'bagus sekali', NULL, NULL),
(97, 2, 6, '5.00', 'bagus sekali', NULL, NULL),
(98, 2, 2, '4.00', 'bagus sekali', NULL, NULL),
(99, 2, 6, '5.00', 'bagus sekali', NULL, NULL),
(100, 2, 6, '3.00', 'bagus sekali', NULL, NULL),
(101, 2, 6, '5.00', 'bagus sekali', NULL, NULL),
(102, 2, 5, '2.00', 'bagus sekali', NULL, NULL),
(103, 2, 6, '1.00', 'bagus sekali', NULL, NULL),
(104, 2, 8, '3.00', 'bagus sekali', NULL, NULL),
(105, 2, 5, '2.00', 'bagus sekali', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dates`
--

CREATE TABLE `dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dates`
--

INSERT INTO `dates` (`id`, `date`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, '2020-06-27 08:04:10'),
(2, '2020-06-12', '2020-06-11 17:00:00', '2020-06-27 08:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_11_23_024939_create_table_places', 1),
(4, '2016_11_27_153631_create_admins_table', 1),
(5, '2016_12_02_082147_create_dates_table', 1),
(6, '2016_12_03_180224_create_schedules_table', 1),
(7, '2018_11_24_122115_create_table_tickets', 1),
(8, '2018_12_07_075927_update_table_tickets', 1),
(9, '2019_08_19_000000_create_failed_jobs_table', 1),
(10, '2019_11_25_154418_create_comments_table', 1),
(11, '2019_12_07_091359_create_schedule_dates_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buka` time NOT NULL,
  `tutup` time NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_tiket` int(11) NOT NULL,
  `tempat_umum` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `nama`, `gambar`, `buka`, `tutup`, `hari`, `deskripsi`, `harga_tiket`, `tempat_umum`) VALUES
(2, 'Candi Borobudur', 'WzEAf7Z6VBoua7RdAeBSF9RrXL8r0kI6Dt9QfyZe.jpeg', '11:11:00', '12:57:00', 'Senin - Minggu', 'Candi Borobudur sudah sangat terkenal di dunia. Candi ini masuk kedalam daftar Warisan Dunia UNESCO. Candi ini merupakan Candi Budha terbesar dan terlengkap di dunia. Dilihat dari atas, bentuk Candi Borobudur menyerupai bunga teratai, yang akan sangat indah bila dilihat pada saat matahari terbit atau terbenam.', 50000, 'kamar mandi'),
(3, 'Candi Prambanan', 'VM6HC5g6L3lxPxgU2MPMtEgUT8uHUUwnQCflaF6x.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Candi lainnya yang terkenal adalah Candi Prambanan. Terletak sekitar 17Km dari pusat kota Yogyakarta, Candi Prambanan merupakan candi Hindu terbesar di Indonesia. Candi ini memiliki relief yang menceritakan kisah mengenai Ramayana dan Krishnayana.', 45000, 'kamar mandi'),
(4, 'Pantai Indrayanti', 'ty7mSSofgSejOINOOsOJXRIvlaoH0dapfGFeBDph.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Pantai Indrayanti adalah salah satu destinasi wisata pantai di Jogja yang sekarang cukup populer. Dengan bentang pasir yang putih bersih khas pantai selatan, pemandangan yang indah, dan fasilitas yang cukup lengkap, pantai ini banyak menjadi tujuan wisatawan.', 30000, 'kamar mandi'),
(5, 'Pantai Nglambor', 'zShelMVCFQo5mlDXMhMDAhoqXh8cURhMSMYGbVXQ.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Di Yogya juga terdapat pantai yang bisa untuk snorkeling asyik lho, tempatnya di pantai nglambor. Tidak seperti pantai selatan lainnya, disini terdapat laguna dengan air yang cukup tenang. Kekayaan alam disini bisa kita nikmati sambil snorkeling.', 30000, 'kamar mandi'),
(6, 'Pantai Pok Tunggal', 'V7qfpxKeIz3uoJ5ttsS6PkJZEcFc7OrveiJ4Qxk4.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Satu lagi pantai yang perlu anda kunjungi di Jogja, pantai pok tunggal. Keindahan pantai ini tidak kalah dengan pantai lainnya di Yogyakarta.\r\n\r\nFasilitasnya memang belum selengkap tempat lain, tapi sepadan dengan pemandangan yang bisa anda dapatkan.', 30000, 'kamar mandi'),
(7, 'Jalan Malioboro', 'mnkKvKAr2pSDyScO41PkykmBehli0CMADtMb610F.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Jalan paling terkenal di Yogyakarta adalah Jalan Malioboro. Di sepanjang jalan ini terdapat toko-toko dan pedagang kaki lima yang menjual berbagai macam barang, dari pakaian, kerajinan tangan sampai makanan. Salah satu hal yang khas mengenai Malioboro adalah penjual makanan lesehan.', 20000, 'kamar mandi'),
(8, 'Pasar Beringharjo', 'FxXzBBLvnyavDGYIiibJdKY00ttLQVdbpU31BUG3.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Pasar Beringharjo terletak di Jalan Malioboro. Pasar tertua di Yogyakarta ini terkenal sebagai tempat turis membeli souvenir dengan harga murah. Berbagai macam barang tersedia di pasar ini, dari batik, makanan tradisional, uang kuno, bahan dasar jamu tradisional hingga barang antik.', 20000, 'kamar mandi'),
(9, 'Benteng Vredeburg Yogyakarta', 'dm2jmLaABUEAWQTda67XsOlaxYNodIfHkxESZEHV.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Satu lagi tempat wisata di Jogja dekat Malioboro. Benteng Vredeburg juga terletak di Jalan Malioboro, tepatnya di depan Gedung Agung. Benteng yang kini telah menjadi museum yang berisi diorama mengenai sejarah Indonesia itu sangat cocok dikunjungi bagi Anda yang ingin menambah wawasan tentang sejarah Indonesia.', 40000, 'kamar mandi'),
(10, 'Museum Ullen Sentalu', 'NVTbeNNVYB3CO8S36cJWLmx7kjYZlIwMm0r1QZYO.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Museum Ullen Sentalu terletak di Jalan Boyong Km 25 Kaliurang Barat, Sleman,Yogyakarta. Tempat wisata Sleman ini dibangun diatas area seluas 1,2 hektar dengan suhu udara sekitar berkisar antara 15-20 derajat celcius. Arsitektur museum ini sangat unik, jalan masuk ke dalam museum sendiri terdiri dari undakan, kelokan dan labirin yang menuju ke salah satu ruang pameran yang berada di bawah tanah.', 50000, 'kamar mandi'),
(11, 'Keraton Yogyakarta', 't4bt66ZB1rFeff8yozSsaLcNXo7kq8keqG8OuJUm.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Salah satu tempat wisata budaya lainnya di Yogyakarta adalah Keraton Yogyakarta. Keraton ini adalah salah satu bangunan bersejarah kesultanan Yogyakarta yang ditempati oleh Sultan dan keluarga Sultan. Di keraton ini juga terdapat museum yang memamerkan barang-barang kesultanan Yogyakarta dari barang rumah tangga sampai barang-barang unik yang sebagian merupakan hadiah dari raja Eropa.', 30000, 'kamar mandi');

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `date_id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hourStart` time NOT NULL,
  `hourEnd` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `user_id`, `place_id`, `date_id`, `day`, `hourStart`, `hourEnd`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 2, 'Senin - Minggu', '11:11:00', '11:11:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_dates`
--

CREATE TABLE `schedule_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_id` bigint(20) UNSIGNED NOT NULL,
  `schedule_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `kode_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_tiket` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `user_id`, `place_id`, `kode_pembayaran`, `kode_tiket`, `created_at`, `updated_at`) VALUES
(7, 2, 2, '1212121212', '11212121212', '2020-06-01 07:25:45', NULL),
(8, 2, 3, '23232323', '232323232', '2020-06-12 07:25:51', NULL),
(10, 2, 11, '1212121', '212121212121', '2020-05-06 07:09:59', NULL),
(12, 2, 11, '132231', '2223241', '2020-05-06 07:09:59', NULL),
(13, 2, 11, '13112w2231', '21w2', '2020-04-06 07:09:59', NULL),
(14, 2, 10, 'qwqw12wqw', '121we242', '2020-05-21 07:20:39', NULL),
(17, 2, 10, 'qw12', '12wwq1', '2020-05-21 07:20:39', NULL),
(18, 2, 8, '114231', '2232sw', '2020-06-17 07:21:48', NULL),
(20, 2, 8, '43fw8nl1d90v', '44im0ey5f21j', '2020-08-18 09:25:57', NULL),
(21, 2, 10, '54fg4ri4y08z', '59iz4hz3u59i', '2020-03-09 12:50:44', NULL),
(22, 2, 7, '19fj9ni3g76p', '47vd2hf6v57j', '2020-06-18 21:53:42', NULL),
(23, 2, 6, '48ak6lo1p60t', '45zp2nk6x21h', '2020-05-03 07:19:14', NULL),
(24, 2, 6, '88op2jz1j13i', '71an8sj9t60m', '2020-08-18 07:56:17', NULL),
(25, 2, 6, '97tm7fe5r12b', '18wu8tj9l45k', '2020-04-07 18:35:00', NULL),
(26, 2, 8, '46id5pr3f39d', '20ru9st8i31x', '2020-06-08 12:50:08', NULL),
(27, 2, 8, '69hp4jm8v15i', '88fj9tu8h42f', '2020-10-30 02:24:10', NULL),
(28, 2, 4, '50va6ds6f77d', '94by7ls5a89y', '2020-04-04 11:56:53', NULL),
(29, 2, 7, '75oc2vx1v26m', '37pd3ds5y75l', '2020-02-20 23:34:42', NULL),
(30, 2, 8, '39pf6kl2t95c', '17jo8ls7x96a', '2020-09-18 18:01:06', NULL),
(31, 2, 8, '73cu4uu8w85u', '53pg5uo3b74u', '2020-09-22 17:22:13', NULL),
(32, 2, 6, '89bn9wk1d29o', '65ec5sd5n32p', '2020-03-13 04:13:05', NULL),
(33, 2, 3, '36qh2uk6h44r', '07ok6ay0q65p', '2020-05-04 19:14:11', NULL),
(34, 2, 4, '99qa7ri8r77g', '36pu7as5b04m', '2020-05-20 15:56:40', NULL),
(35, 2, 6, '67qv8sj0r34k', '31kc6xn3m07n', '2020-04-01 16:27:49', NULL),
(36, 2, 3, '87qp8fh1r57d', '55of4mj3w66f', '2020-04-03 17:04:09', NULL),
(37, 2, 6, '59da4lx1m44v', '90bm2xl4e38h', '2020-04-04 15:20:46', NULL),
(38, 2, 3, '86bz9tx7x44o', '99fx5hp8h25n', '2020-06-06 17:39:49', NULL),
(39, 2, 9, '70cm7ck2q56l', '85fg0jt6g46l', '2020-03-17 19:10:56', NULL),
(40, 2, 6, '16ik8wm4r48i', '27je9qi1n48d', '2020-03-30 22:16:38', NULL),
(41, 2, 8, '06sk2db5t06p', '31oe1ol5n36p', '2019-12-01 12:42:15', NULL),
(42, 2, 10, '10fn2pq2z80u', '52yf9sw0l83r', '2020-01-30 21:45:02', NULL),
(43, 2, 9, '37qt8xv1o45a', '29ma7sa3h40x', '2019-12-15 06:34:08', NULL),
(44, 2, 10, '47up5wc9p38y', '62ub3xq9v25k', '2020-09-18 13:54:14', NULL),
(45, 2, 10, '44od3nc1q74s', '28ga8lj4m42z', '2020-06-27 00:18:09', NULL),
(46, 2, 9, '78ta8la9z62u', '44le5qu2f01m', '2020-01-20 07:55:21', NULL),
(47, 2, 10, '37ha2zo1x13p', '09az9zd2a71y', '2020-06-25 14:28:55', NULL),
(48, 2, 5, '31xd7eb0a10a', '22re6gx5g25x', '2020-03-13 06:52:30', NULL),
(49, 2, 3, '05qr4fx4c43r', '03yf5dk6v07o', '2020-03-11 10:40:03', NULL),
(50, 2, 4, '41hi5xd6n72y', '41rv3rh0m49i', '2020-01-18 07:44:02', NULL),
(51, 2, 11, '51rn4pw5c59e', '67lh6ej1u40f', '2020-10-20 12:11:24', NULL),
(52, 2, 3, '63jm5ci7b91q', '08kt7nw2f77k', '2020-02-05 11:27:19', NULL),
(53, 2, 8, '86qo7ck5t02r', '88xb1ll3y58m', '2020-11-08 20:51:25', NULL),
(54, 2, 11, '25rv8fj9h81a', '64uc5hq4o05k', '2020-12-27 02:13:16', NULL),
(55, 2, 9, '03je1ov3y91g', '02qp2rr3g26p', '2020-11-16 04:19:44', NULL),
(56, 2, 7, '01pg8ag0w09a', '48zc3zs7n39u', '2020-11-17 10:01:20', NULL),
(57, 2, 3, '89jz1yq4f60b', '64kn4ns6y38c', '2020-10-01 05:28:45', NULL),
(58, 2, 4, '48ei2cu4a80e', '27ac2dx9o39v', '2020-06-01 15:46:56', NULL),
(59, 2, 4, '53gb3qc8s15m', '92uo5co6k56g', '2020-07-18 04:31:17', NULL),
(60, 2, 7, '25xv4mo9q60n', '55fk5gc7s11l', '2020-08-12 04:02:29', NULL),
(61, 2, 9, '09qr0so0p15l', '89eb0ib6y26v', '2020-01-17 02:21:26', NULL),
(62, 2, 8, '99ea5or5p45a', '59yn4dn3k49t', '2020-10-06 18:53:47', NULL),
(63, 2, 9, '19bl3ko2y12w', '80ug1an9o59i', '2019-12-16 19:42:08', NULL),
(64, 2, 11, '56wn3dp1x07z', '53bc5nq9k93h', '2020-09-26 02:39:33', NULL),
(65, 2, 9, '78ol6aq2x50v', '19yy7ua6q77f', '2020-12-15 18:21:29', NULL),
(66, 2, 11, '73vg5of4l16x', '76wl4uw1t67i', '2020-02-13 07:04:00', NULL),
(67, 2, 11, '20od2io3g29j', '21uq6mx2b56q', '2020-07-19 09:57:25', NULL),
(68, 2, 2, '12ge2yy4c13z', '23lf5kk2s87t', '2020-01-09 22:58:09', NULL),
(69, 2, 7, '74sc1yv2i07m', '97kk7gq5o43r', '2020-08-12 09:47:42', NULL),
(70, 2, 3, '09en6bj8f98l', '72qd7ca3m33d', '2019-12-24 21:46:32', NULL),
(71, 2, 6, '14ei3bi7m77g', '34qp0wc7e74p', '2020-12-25 18:33:50', NULL),
(72, 2, 4, '30id3vn0t08m', '98iq8rn7c09k', '2020-10-22 04:36:16', NULL),
(73, 2, 11, '01kd2tx1q98v', '21cc4zk5f01a', '2020-06-01 04:46:49', NULL),
(74, 2, 2, '11zs5aq7x64f', '75vq1mf8o87s', '2020-12-07 18:58:29', NULL),
(75, 2, 8, '90tv4rk1a70k', '78ct9hn4j26o', '2020-01-05 01:29:58', NULL),
(76, 2, 5, '42lt3uw8k34j', '28wa2bw5i70l', '2020-07-02 13:11:55', NULL),
(77, 2, 9, '10rt7gi2e36w', '67rr8tm5f75m', '2020-08-07 12:43:44', NULL),
(78, 2, 7, '03en6fp8h90d', '58hj1lq3v34o', '2020-02-02 04:05:06', NULL),
(79, 2, 7, '73dy8gd0u23q', '28jo9tb7q13j', '2020-05-02 15:21:56', NULL),
(80, 2, 8, '08ps9hk5g62s', '39xj5xc2t07n', '2020-12-15 00:02:14', NULL),
(81, 2, 7, '97mt5vj1l64l', '51ut8ux9b33h', '2020-06-04 11:02:57', NULL),
(82, 2, 2, '63or2sy1k16m', '10xu8kj0y17e', '2020-12-11 13:52:59', NULL),
(83, 2, 3, '27qc0na8g80l', '56rx6mo5e10q', '2020-07-15 21:10:08', NULL),
(84, 2, 3, '00ky6ks4r12o', '11iq6ax4k64k', '2020-05-02 23:00:38', NULL),
(85, 2, 7, '54ia3ul0k57u', '74tb1uh6u64h', '2020-07-11 22:29:09', NULL),
(86, 2, 11, '14ya8qr1g91d', '48dn7mx8c94t', '2020-09-18 13:30:33', NULL),
(87, 2, 10, '49rc6rr8g76a', '19vr2xj2h34n', '2020-05-11 23:28:12', NULL),
(88, 2, 8, '48fc3nd8e12l', '44eo4gh3z76d', '2020-07-20 07:01:42', NULL),
(89, 2, 2, '84je2ov4h96a', '61pj9hg4h83i', '2020-03-20 01:27:59', NULL),
(90, 2, 9, '10do6ys1u17x', '46az0jc8x53t', '2020-05-17 19:51:00', NULL),
(91, 2, 10, '26af0zn4g53q', '13xl2we9r07e', '2020-04-18 05:35:42', NULL),
(92, 2, 3, '19od3yc5i78l', '13vq6zf6d14f', '2020-01-13 21:16:55', NULL),
(93, 2, 3, '68jn1qp2q34r', '78gw9wb0p68n', '2020-05-02 14:58:50', NULL),
(94, 2, 5, '74ac3bq6m00z', '76vl1ph4q09s', '2020-04-12 02:53:37', NULL),
(95, 2, 3, '45wy3ua5o66r', '76rr3ml7z51t', '2020-01-14 19:24:12', NULL),
(96, 2, 11, '70fd2ql2x53m', '49vq2cm9u35g', '2020-01-28 00:43:51', NULL),
(97, 2, 5, '91qu1na2i46g', '36ee7mq9w60l', '2020-10-04 15:58:43', NULL),
(98, 2, 2, '58ip3lm7b10n', '42xb7fg8h21n', '2019-12-03 05:18:43', NULL),
(99, 2, 3, '67om7fy9l62c', '49lc9sb9n41c', '2020-12-16 23:13:27', NULL),
(100, 2, 11, '50xa5nd1i32f', '50gw5de5k28f', '2020-12-28 15:29:36', NULL),
(101, 2, 11, '65ch8ge3c36b', '15gx9bg5q57d', '2020-03-24 16:28:54', NULL),
(102, 2, 7, '73hd3ce2j03m', '66ed6yw3d86y', '2019-12-07 02:24:19', NULL),
(103, 2, 4, '15wm4oi8f03l', '10xl1gk0s11t', '2020-09-30 07:37:00', NULL),
(104, 2, 6, '27fz0ye1a86e', '76rz0rt9h80x', '2020-07-12 01:08:12', NULL),
(105, 2, 7, '23yq9pt5u86i', '97wy6du6s00n', '2020-11-12 04:28:45', NULL),
(106, 2, 10, '60st7zv2l06i', '80uv2lf6q49s', '2020-04-09 21:13:50', NULL),
(107, 2, 4, '72cu7zi8x42l', '27ne0zw5s21s', '2019-12-19 22:48:26', NULL),
(108, 2, 2, '33tc1ku4k25h', '85wn3lh2e68a', '2020-04-30 01:44:05', NULL),
(109, 2, 6, '25kw9bw7k92f', '82sf2dm8a46o', '2020-10-24 12:47:01', NULL),
(110, 2, 11, '72jj6ou6x93b', '03up6mc5o16a', '2020-10-22 07:09:37', NULL),
(111, 2, 6, '29cv2xo9i75k', '25ds0uq3r23i', '2020-05-11 16:33:25', NULL),
(112, 2, 3, '84on8qy5x21b', '51ya3ip8b52e', '2020-01-11 09:02:01', NULL),
(113, 2, 7, '97tz3xw1i05u', '00cc2fx1v76n', '2020-03-18 03:39:09', NULL),
(114, 2, 6, '83bo8zf7p01r', '80kz2vi4u27q', '2019-12-03 17:13:47', NULL),
(115, 2, 5, '11qw3uo1b91f', '15hm9gn3j82m', '2020-07-16 12:05:29', NULL),
(116, 2, 10, '89ps0ja0j67h', '96ra0bm3y21k', '2020-03-14 00:24:40', NULL),
(117, 2, 3, '37bv7fi1l04v', '90bm3ip5u62z', '2020-04-13 23:59:55', NULL),
(118, 2, 6, '43hh5we8k40j', '63ix3wi3m15g', '2019-12-16 04:42:31', NULL),
(119, 2, 6, '86zm5zs4w51p', '42io3dg8r49h', '2020-02-22 10:20:40', NULL),
(120, 2, 6, '34jo3as1i92i', '29bg4oh2p75z', '2020-07-31 12:41:44', NULL),
(121, 2, 7, '64tl6vl9b40i', '73wz9je0k39j', '2019-12-18 22:43:09', NULL),
(122, 2, 3, '09ax4rz8y60w', '51dd1va8x78w', '2020-11-05 19:06:00', NULL),
(123, 2, 2, '38my9fv6r02y', '62yt6kr9v89s', '2020-01-20 14:59:03', NULL),
(124, 2, 9, '92su2xb9q27g', '87qv9le3s01j', '2020-07-20 13:30:50', NULL),
(125, 2, 4, '04ya8bk8c65l', '77vr8dc4m50e', '2020-12-16 12:00:11', NULL),
(126, 2, 5, '49lj2rp9s07i', '86gw5zl2m81l', '2020-08-27 11:22:52', NULL),
(127, 2, 3, '66lx2th3n15c', '93xh3yq4n44n', '2020-03-02 20:06:30', NULL),
(128, 2, 9, '25ga8ui9v92k', '29aw3sc4w20r', '2020-08-04 04:13:46', NULL),
(129, 2, 2, '70pd8wq9r41p', '22kb5co4m69z', '2020-04-21 01:07:20', NULL),
(130, 2, 5, '42hn6nf1v88a', '53yz9ji9y49s', '2020-08-27 06:33:33', NULL),
(131, 2, 11, '09sa9qk9d54p', '59zt8gc9d43k', '2020-12-14 23:06:11', NULL),
(132, 2, 8, '88ys0ax2t84d', '28bp7ll3j78q', '2020-01-27 08:55:27', NULL),
(133, 2, 4, '27vj0ma1m04t', '84fi0ah5a03w', '2020-09-15 10:50:05', NULL),
(134, 2, 5, '87nq7dc2a29h', '79cb4rk9i57l', '2020-09-17 16:44:57', NULL),
(135, 2, 11, '56iw3xq1x39j', '52gb3cr1y92u', '2020-01-22 00:39:03', NULL),
(136, 2, 5, '94bo6pc0t36d', '52tf8ia8x05y', '2020-03-24 12:22:37', NULL),
(137, 2, 11, '82fs8wf1m02y', '33lo0el1z75r', '2020-11-25 23:28:16', NULL),
(138, 2, 6, '66lq3gk1m72b', '26sv6xc5d09g', '2019-12-09 07:10:52', NULL),
(139, 2, 10, '41nh9ry4r75i', '09fv1he4r82w', '2020-02-04 04:06:39', NULL),
(140, 2, 7, '82ug9dy4b40o', '18zq4ak9d94q', '2020-05-11 22:22:53', NULL),
(141, 2, 10, '83mc8vo6x61a', '82sl5dj3b02e', '2019-12-10 15:47:38', NULL),
(142, 2, 9, '90vx0ed5a15p', '95nz3bk8k21y', '2020-08-25 13:08:44', NULL),
(143, 2, 6, '36ri2mn2w75c', '77vo8oh9i84l', '2020-11-08 05:06:51', NULL),
(144, 2, 9, '07eh9en4a66n', '06fm9st1f79t', '2020-02-01 03:00:33', NULL),
(145, 2, 7, '71xc1gy6p15w', '62hz3qn6e67e', '2020-02-11 07:52:58', NULL),
(146, 2, 9, '02tg0qs3h26f', '69wx3tt4t20p', '2020-03-25 05:05:00', NULL),
(147, 2, 9, '97ay3zc5l24r', '43vx2oo8o86k', '2019-12-17 18:18:53', NULL),
(148, 2, 11, '12un0ko5o18z', '35lv3wx2r78i', '2019-12-04 01:07:09', NULL),
(149, 2, 7, '88dk9vy8s84d', '19kn8qo0b39n', '2020-02-19 13:44:10', NULL),
(150, 2, 6, '06vd4su2e17z', '07ts7fi9k49g', '2020-12-19 08:59:28', NULL),
(151, 2, 3, '82am6ku6v44z', '42ne1sh7e37o', '2020-08-28 15:44:51', NULL),
(152, 2, 6, '84mi6qa5d23u', '34bf6gf4x39n', '2019-12-12 23:39:28', NULL),
(153, 2, 9, '60yo9dl2g04y', '22vd3yw1j56c', '2020-07-15 11:44:09', NULL),
(154, 2, 4, '88kg4in5r67y', '69sd8bl8z71t', '2020-11-11 22:23:10', NULL),
(155, 2, 3, '33jd7ks1j98u', '78ci9ig2d83c', '2020-03-11 12:52:22', NULL),
(156, 2, 3, '61bw8kp8a42w', '54bh5ey2g91f', '2020-03-22 19:50:10', NULL),
(157, 2, 8, '06ak0jc7c81x', '45gl0oy4r81s', '2020-07-26 13:20:32', NULL),
(158, 2, 3, '14xh5yw6e24k', '26dh3vi7t63z', '2020-01-24 20:56:20', NULL),
(159, 2, 9, '80lr1gq2l95u', '84oq3bn5z44e', '2020-03-03 00:26:14', NULL),
(160, 2, 7, '16pw3bx3l85q', '07uq7wn6c58h', '2020-06-23 14:37:23', NULL),
(161, 2, 5, '57hd5uh2i72x', '72wm0sy4h29y', '2020-05-12 16:03:40', NULL),
(162, 2, 2, '48jv8cg9z16a', '86jp0cc5j23c', '2020-01-11 10:59:14', NULL),
(163, 2, 10, '74wb0on7b47f', '52mm0fd5t79c', '2020-08-19 21:36:25', NULL),
(164, 2, 6, '35ce6hr3n62q', '59oo7yp9a96y', '2020-08-14 20:11:48', NULL),
(165, 2, 9, '39nf4fb0m93k', '63wi7pf8z76u', '2020-10-10 01:36:00', NULL),
(166, 2, 11, '18yn8da6i17y', '67ar5di1j00n', '2020-01-25 14:37:02', NULL),
(167, 2, 6, '93ct6bg7l97g', '27mo5na4q80n', '2020-06-11 17:00:17', NULL),
(168, 2, 5, '71dw7gs9w63e', '63th6dv6p15d', '2020-05-12 11:49:29', NULL),
(169, 2, 5, '54mj8ia8s46s', '83wq6th2k29o', '2019-12-21 05:51:04', NULL),
(170, 2, 4, '01fr4xe5f93s', '81ez2ie2z02i', '2020-11-10 13:21:29', NULL),
(171, 2, 6, '79sy9wx8z76p', '22iv9cz5d14g', '2020-08-30 04:02:26', NULL),
(172, 2, 7, '50wo4wp5d37x', '59zk2fw6g23q', '2020-04-07 14:13:31', NULL),
(173, 2, 10, '91ia4kj9c17y', '68lf4id9o27b', '2020-03-09 23:35:37', NULL),
(174, 2, 9, '19lf4ss4q91p', '15xm5ch6q68t', '2020-07-07 21:13:07', NULL),
(175, 2, 6, '40vx4cu7i73k', '21qu7cg4k18v', '2020-12-06 08:37:40', NULL),
(176, 2, 9, '16vi4oz5d05y', '98hy2js0t52j', '2020-06-21 21:44:15', NULL),
(177, 2, 11, '00ce4be7y70i', '58yd3as0z27v', '2020-10-28 19:02:23', NULL),
(178, 2, 4, '38rr5fq4w31q', '23ep3gx4n79w', '2020-12-09 11:22:09', NULL),
(179, 2, 9, '93my9pa0g51n', '76wd1jp6v25r', '2020-12-23 21:39:26', NULL),
(180, 2, 7, '81ua7ry5q26k', '91ml7ej9k74o', '2020-08-04 04:40:54', NULL),
(181, 2, 11, '69rh9dq7v79s', '53un5jg2v93t', '2020-06-16 03:33:27', NULL),
(182, 2, 7, '22hy4gm8g00a', '72oi6um6n68s', '2020-04-18 10:05:12', NULL),
(183, 2, 7, '27qt8oz1n00s', '87xe0hn8j69p', '2020-05-22 04:17:11', NULL),
(184, 2, 6, '38ye5bt7h36f', '22nq4zf1v15i', '2020-09-27 22:14:50', NULL),
(185, 2, 7, '60hx6ny4o71z', '08pe7zt4k39l', '2020-09-28 05:39:08', NULL),
(186, 2, 2, '99tn7ox4a06r', '07zl2ch4f71c', '2020-11-13 08:46:26', NULL),
(187, 2, 3, '09mt0kn9e24v', '13ms3vl6d19y', '2020-02-27 00:56:33', NULL),
(188, 2, 7, '23ib7lz5b22d', '48wx7cd3t50w', '2020-02-25 15:11:59', NULL),
(189, 2, 9, '17cf0xf4w95s', '55sa2ab8k30d', '2020-07-01 07:57:57', NULL),
(190, 2, 10, '56sd6ap4p23n', '78bl8ms0t85v', '2020-01-18 07:09:47', NULL),
(191, 2, 9, '52pe5np3l57j', '72uq1in1y36z', '2020-08-20 03:19:09', NULL),
(192, 2, 4, '90mv7ie3t27z', '71ue9zr4y56t', '2020-06-21 15:04:29', NULL),
(193, 2, 8, '46ay8to3l98f', '15ez4cc2n48g', '2020-07-30 10:21:38', NULL),
(194, 2, 6, '66ny0dm7t66b', '43mm5fq8n20c', '2020-05-01 19:46:33', NULL),
(195, 2, 5, '17lg3de6g51i', '45eh0ox1i22v', '2020-10-08 05:11:48', NULL),
(196, 2, 7, '68ly4op5l17z', '90os0ej6q17a', '2020-03-08 02:43:01', NULL),
(197, 2, 6, '38ad9hd4h78b', '63gg8ye8m40g', '2020-04-19 05:14:12', NULL),
(198, 2, 10, '67ha5td0f03t', '55kc9ky7k93w', '2020-08-30 02:59:39', NULL),
(199, 2, 5, '92co5ft1l43x', '41fx1eq4u10o', '2020-04-08 19:21:40', NULL),
(200, 2, 8, '90up0kv9b43r', '85kr7ds2v07v', '2020-02-25 03:52:22', NULL),
(201, 2, 9, '84io6bc1l04n', '12cr5yj6k50t', '2020-03-23 03:24:47', NULL),
(202, 2, 11, '37hw8mo5p24h', '38il8tp0y59g', '2020-08-17 14:14:29', NULL),
(203, 2, 4, '50ei7nl3a75b', '89xe6dk4b86h', '2020-02-20 16:45:15', NULL),
(204, 2, 2, '51jx1is1z91e', '14id0dh3k66b', '2020-06-25 19:27:40', NULL),
(205, 2, 10, '94ga0ly0k65o', '85qh5tj4o12i', '2019-12-25 01:07:58', NULL),
(206, 2, 8, '12ki8ta8a99p', '10vv4ni5q89x', '2019-12-16 12:18:53', NULL),
(207, 2, 4, '39tr4av5b30x', '97qf8js5n82x', '2020-11-11 17:36:48', NULL),
(208, 2, 8, '53cw1hb3o59d', '34hh9ac9x78i', '2020-12-15 18:53:18', NULL),
(209, 2, 4, '89xs5nx1s30o', '84wl1cb4r17a', '2020-01-21 14:31:58', NULL),
(210, 2, 11, '62im3ch4f75n', '03de9xx4u18d', '2020-04-29 00:01:13', NULL),
(211, 2, 5, '95aq4ns5h25o', '36nd6ol2m37s', '2020-05-09 14:51:19', NULL),
(212, 2, 9, '09fy8bt2t24f', '25fp5jf2s58b', '2020-02-21 19:17:09', NULL),
(213, 2, 6, '86lp7qa3m28j', '51wi7jl4g33h', '2020-02-14 08:03:37', NULL),
(214, 2, 5, '12mm9oq1d12w', '36ce6sy8m87m', '2020-10-29 22:36:27', NULL),
(215, 2, 5, '67dh4cr4q77z', '54ze0pz9o45w', '2020-07-17 03:51:00', NULL),
(216, 2, 7, '69pi4jx0d34h', '27qu7ad5p38p', '2020-12-12 08:49:19', NULL),
(217, 2, 9, '53uh2sh1d95v', '24ur6um8z45y', '2020-06-27 01:08:30', NULL),
(218, 2, 4, '17me0bz4h53e', '59rt8jw2l98m', '2020-06-28 04:25:05', NULL),
(219, 2, 8, '86ai9qi0x03a', '80ih6ev3v75d', '2020-11-15 00:11:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isAdmin` tinyint(1) DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `isAdmin`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@gmail.com', NULL, '$2y$10$fxgfL99Rucn0M3HoDRLVWezMxx2XaVGCAq7RXtqym3J5mbR1IGpz2', NULL, '2020-06-17 23:14:37', '2020-06-17 23:14:37'),
(2, 0, 'user1', 'user1@gmail.com', NULL, '$2y$10$O6SK8ODHaBxbUIB7pv7Eee3VDnXknyEeUZdD4mJbXtQj0fxIaY192', NULL, '2020-06-26 23:08:12', '2020-06-26 23:08:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_place_id_foreign` (`place_id`);

--
-- Indexes for table `dates`
--
ALTER TABLE `dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_user_id_foreign` (`user_id`),
  ADD KEY `schedules_place_id_foreign` (`place_id`),
  ADD KEY `schedules_date_id_foreign` (`date_id`);

--
-- Indexes for table `schedule_dates`
--
ALTER TABLE `schedule_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `kode_pembayaran` (`kode_pembayaran`),
  ADD UNIQUE KEY `kode_tiket` (`kode_tiket`),
  ADD KEY `tickets_user_id_foreign` (`user_id`),
  ADD KEY `tickets_place_id_foreign` (`place_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedule_dates`
--
ALTER TABLE `schedule_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_date_id_foreign` FOREIGN KEY (`date_id`) REFERENCES `dates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  ADD CONSTRAINT `tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
