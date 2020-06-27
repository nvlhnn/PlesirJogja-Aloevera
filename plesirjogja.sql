-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2020 at 02:23 PM
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
(3, 'Candi Prambanan', 'VM6HC5g6L3lxPxgU2MPMtEgUT8uHUUwnQCflaF6x.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Candi lainnya yang terkenal adalah Candi Prambanan. Terletak sekitar 17Km dari pusat kota Yogyakarta, Candi Prambanan merupakan candi Hindu terbesar di Indonesia. Candi ini memiliki relief yang menceritakan kisah mengenai Ramayana dan Krishnayana.', 50000, 'kamar mandi'),
(4, 'Pantai Indrayanti', 'ty7mSSofgSejOINOOsOJXRIvlaoH0dapfGFeBDph.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Pantai Indrayanti adalah salah satu destinasi wisata pantai di Jogja yang sekarang cukup populer. Dengan bentang pasir yang putih bersih khas pantai selatan, pemandangan yang indah, dan fasilitas yang cukup lengkap, pantai ini banyak menjadi tujuan wisatawan.', 50000, 'kamar mandi'),
(5, 'Pantai Nglambor', 'zShelMVCFQo5mlDXMhMDAhoqXh8cURhMSMYGbVXQ.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Di Yogya juga terdapat pantai yang bisa untuk snorkeling asyik lho, tempatnya di pantai nglambor. Tidak seperti pantai selatan lainnya, disini terdapat laguna dengan air yang cukup tenang. Kekayaan alam disini bisa kita nikmati sambil snorkeling.', 50000, 'kamar mandi'),
(6, 'Pantai Pok Tunggal', 'V7qfpxKeIz3uoJ5ttsS6PkJZEcFc7OrveiJ4Qxk4.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Satu lagi pantai yang perlu anda kunjungi di Jogja, pantai pok tunggal. Keindahan pantai ini tidak kalah dengan pantai lainnya di Yogyakarta.\r\n\r\nFasilitasnya memang belum selengkap tempat lain, tapi sepadan dengan pemandangan yang bisa anda dapatkan.', 50000, 'kamar mandi'),
(7, 'Jalan Malioboro', 'mnkKvKAr2pSDyScO41PkykmBehli0CMADtMb610F.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Jalan paling terkenal di Yogyakarta adalah Jalan Malioboro. Di sepanjang jalan ini terdapat toko-toko dan pedagang kaki lima yang menjual berbagai macam barang, dari pakaian, kerajinan tangan sampai makanan. Salah satu hal yang khas mengenai Malioboro adalah penjual makanan lesehan.', 50000, 'kamar mandi'),
(8, 'Pasar Beringharjo', 'FxXzBBLvnyavDGYIiibJdKY00ttLQVdbpU31BUG3.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Pasar Beringharjo terletak di Jalan Malioboro. Pasar tertua di Yogyakarta ini terkenal sebagai tempat turis membeli souvenir dengan harga murah. Berbagai macam barang tersedia di pasar ini, dari batik, makanan tradisional, uang kuno, bahan dasar jamu tradisional hingga barang antik.', 50000, 'kamar mandi'),
(9, 'Benteng Vredeburg Yogyakarta', 'dm2jmLaABUEAWQTda67XsOlaxYNodIfHkxESZEHV.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Satu lagi tempat wisata di Jogja dekat Malioboro. Benteng Vredeburg juga terletak di Jalan Malioboro, tepatnya di depan Gedung Agung. Benteng yang kini telah menjadi museum yang berisi diorama mengenai sejarah Indonesia itu sangat cocok dikunjungi bagi Anda yang ingin menambah wawasan tentang sejarah Indonesia.', 50000, 'kamar mandi'),
(10, 'Museum Ullen Sentalu', 'NVTbeNNVYB3CO8S36cJWLmx7kjYZlIwMm0r1QZYO.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Museum Ullen Sentalu terletak di Jalan Boyong Km 25 Kaliurang Barat, Sleman,Yogyakarta. Tempat wisata Sleman ini dibangun diatas area seluas 1,2 hektar dengan suhu udara sekitar berkisar antara 15-20 derajat celcius. Arsitektur museum ini sangat unik, jalan masuk ke dalam museum sendiri terdiri dari undakan, kelokan dan labirin yang menuju ke salah satu ruang pameran yang berada di bawah tanah.', 50000, 'kamar mandi'),
(11, 'Keraton Yogyakarta', 't4bt66ZB1rFeff8yozSsaLcNXo7kq8keqG8OuJUm.jpeg', '11:11:00', '11:11:00', 'Senin - Minggu', 'Salah satu tempat wisata budaya lainnya di Yogyakarta adalah Keraton Yogyakarta. Keraton ini adalah salah satu bangunan bersejarah kesultanan Yogyakarta yang ditempati oleh Sultan dan keluarga Sultan. Di keraton ini juga terdapat museum yang memamerkan barang-barang kesultanan Yogyakarta dari barang rumah tangga sampai barang-barang unik yang sebagian merupakan hadiah dari raja Eropa.', 50000, 'kamar mandi');

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
(1, 2, 2, '674421458', '579375434', '2020-06-26 23:30:13', '2020-06-26 23:30:13'),
(2, 2, 2, '327564269', '563612545', '2020-06-27 00:34:30', '2020-06-27 00:34:30');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dates`
--
ALTER TABLE `dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_dates`
--
ALTER TABLE `schedule_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
