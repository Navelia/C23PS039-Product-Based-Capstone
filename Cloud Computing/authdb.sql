-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: 34.171.140.15
-- Generation Time: Jun 16, 2023 at 08:16 AM
-- Server version: 5.7.40-google-log
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `authdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT '0',
  `url` varchar(255) DEFAULT '0',
  `userid` int(11) DEFAULT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL,
  `userUUID` varchar(255) DEFAULT '0',
  `username` varchar(255) DEFAULT '0',
  `profil` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `uuid`, `title`, `description`, `image`, `url`, `userid`, `createdAt`, `updatedAt`, `userUUID`, `username`, `profil`) VALUES
(11, 'd5eca786-699b-4522-842f-ed1a00a68ec1', 'ReachYou', 'Sign Language Translator as a Solution for Facilitating Communication with Disabled People Using Image and Voice Recognition Technology', '5fbe5c0d547e51122751167bf22eef84.png', 'https://storage.googleapis.com/profil-reachyou/5fbe5c0d547e51122751167bf22eef84.png', NULL, '2023-06-14', '2023-06-14', 'e118f347-13e1-4b61-a21c-5f2329df3876', 'qwertthyngbdvs', 'https://storage.googleapis.com/profil-reachyou/888e730341da24ef467cc42d7c65c0d4.jpg'),
(12, '078325aa-231c-4b71-9a5a-c187e4018283', 'Ini adalah berita nya', 'jadi saat ini saya sedang berada di dalam kegelapan capstone', '1dcb47923b55f30b31a004c27cfd3c86.jpg', 'https://storage.googleapis.com/profil-reachyou/1dcb47923b55f30b31a004c27cfd3c86.jpg', NULL, '2023-06-14', '2023-06-14', '92236af6-8720-4f30-884e-1433638970e5', 'Yaska321', 'https://storage.googleapis.com/profil-reachyou/1dcb47923b55f30b31a004c27cfd3c86.jpg'),
(13, '0344023d-88d2-4dd2-b77b-0c2788c864ad', 'Gelas ', 'ws jeruk bg', '882dbc0ea626aaf9ced16f10ff899b88.jpg', 'https://storage.googleapis.com/profil-reachyou/882dbc0ea626aaf9ced16f10ff899b88.jpg', NULL, '2023-06-14', '2023-06-14', 'a2e6d7af-c655-4e76-a39c-633ed4616a24', 'khamzz', 'https://storage.googleapis.com/profil-reachyou/06f25a425e0f7ea79b778a095bddcf3d.jpg'),
(14, '5b84b844-86ec-41ae-896b-605ba4367e90', 'Ini adalah struktur project kita', 'struktut berita yang sangat bagus', '308760222818eab78a28acbd53634f9f.jpg', 'https://storage.googleapis.com/profil-reachyou/308760222818eab78a28acbd53634f9f.jpg', NULL, '2023-06-14', '2023-06-14', '57ed3653-e084-4795-9fae-18eabd8dc517', 'Yaska129', 'https://storage.googleapis.com/profil-reachyou/0f93a916b53ed73a9c33093c8420e2b0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `uuid` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL,
  `bug` longtext NOT NULL,
  `image` varchar(255) DEFAULT '0',
  `url` varchar(255) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bugs`
--

INSERT INTO `bugs` (`uuid`, `id`, `email`, `createdAt`, `updatedAt`, `bug`, `image`, `url`) VALUES
('2364e101-3554-43f1-a088-b6e6af137e7c', 15, 'qwerty@example.com', '2023-06-09', '2023-06-09', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', NULL, NULL),
('74c7d52d-23bc-46ff-addf-7f79b7ed695f', 16, 'qwerty@example.com', '2023-06-09', '2023-06-09', 't34v34tb4we64t ahykuo[-]\'9gi;u8looi;p;/otg', NULL, NULL),
('fcef53c4-5445-449b-8310-1254e285ce82', 17, 'awfggrshrhsxdg@example.com', '2023-06-10', '2023-06-10', 'wqcfghtyriremdnckutlxcutkyfxg', NULL, NULL),
('d26c0a4f-c1d8-446a-8330-aaa49cfce575', 18, 'iqbal@example.com', '2023-06-12', '2023-06-12', 'lorem ipsum', NULL, NULL),
('b06f82d8-2392-42c5-9c57-83ea7e9d2882', 19, 'iqbal@example.com', '2023-06-12', '2023-06-12', 'lorem ipsum', '87d5f45aff27716825a0926a75eb46eb.png', 'https://storage.googleapis.com/profil-reachyou/87d5f45aff27716825a0926a75eb46eb.png'),
('ab75ad00-70c7-4c85-a27f-93583d31ebba', 20, 'iqqqql@example.com', '2023-06-12', '2023-06-12', 'cergvbfjnmkmn fbdsa', '', ''),
('99ab2822-1ede-4633-b3e6-6ca2c441448f', 21, 'Yaska@gmail.com', '2023-06-13', '2023-06-13', 'Saya mengalami kendala ketika melakukan upload gambar', '95be419972a5c6f96c2578f00c9a32b9.jpg', 'https://storage.googleapis.com/profil-reachyou/95be419972a5c6f96c2578f00c9a32b9.jpg'),
('dea89296-5e6a-42f4-9ef5-95d3c8e450b0', 22, 'samting@gmail.com', '2023-06-13', '2023-06-13', 'bdbdbahaha', '1dcb47923b55f30b31a004c27cfd3c86.jpg', 'https://storage.googleapis.com/profil-reachyou/1dcb47923b55f30b31a004c27cfd3c86.jpg'),
('153b2977-7136-4cba-888a-03d9dc9ec70e', 23, 'samting@lal.clala', '2023-06-13', '2023-06-13', 'bdbdbahaha', '1dcb47923b55f30b31a004c27cfd3c86.jpg', 'https://storage.googleapis.com/profil-reachyou/1dcb47923b55f30b31a004c27cfd3c86.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Sessions`
--

CREATE TABLE `Sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Sessions`
--

INSERT INTO `Sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('4gl1Ldgeph3oYBLebVZqINo1tOkEFdeI', '2023-06-17 05:32:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 05:32:16', '2023-06-16 05:32:16'),
('5Ivm_6G88EhXba62Zrtg-oWPkvrZPw4Y', '2023-06-16 14:08:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"d0695774-5e40-46ec-aba3-2c3f9067cde1\"}', '2023-06-15 14:08:19', '2023-06-15 14:08:19'),
('5jUx-MTSY9rk9oKyq5NAKSOxXdyFW7XC', '2023-06-17 06:50:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 06:50:42', '2023-06-16 06:50:42'),
('5lONSPwslOc6FjakQRqlQt-Nkq33nY6t', '2023-06-16 14:08:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 14:08:27', '2023-06-15 14:08:27'),
('5RCzEH96oE30-Vjg041gNZp2Gl_tsKbO', '2023-06-17 05:32:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 05:32:11', '2023-06-16 05:32:11'),
('A2rHBdxQRuAYmyK68trBCIDlvkJIT3-k', '2023-06-16 14:08:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 14:08:27', '2023-06-15 14:08:27'),
('ah5TLHbO0PgbIc-UWh_fpfE16bHCYdeJ', '2023-06-17 05:32:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 05:32:12', '2023-06-16 05:32:12'),
('bvtjw_9_S3MsqDy8rR3s5UsOOja0zG0K', '2023-06-17 04:41:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-16 04:41:42', '2023-06-16 04:41:42'),
('c1M2docbEEYvsxHjdN6nPH3zSOcue5cp', '2023-06-16 14:07:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 14:07:42', '2023-06-15 14:07:42'),
('dgRo3UwWkueps1sP3INr525mcY7HC5Q-', '2023-06-16 22:35:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 22:35:44', '2023-06-15 22:35:44'),
('Dx8W5CbGbEWy3WONUSJtceHxYntzmlFB', '2023-06-17 07:11:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-16 07:11:04', '2023-06-16 07:11:04'),
('ew-HzUNI0DmcPKWZEH5smCyDgI9slxf3', '2023-06-17 07:10:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 07:10:24', '2023-06-16 07:10:24'),
('f64z2rEdHXs-tRzXW1Y-xSqUeepByytD', '2023-06-17 05:32:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 05:32:19', '2023-06-16 05:32:19'),
('g2t4glXnGUFlj_IdikjgqY59YbyJnje5', '2023-06-16 18:04:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 18:04:48', '2023-06-15 18:04:48'),
('gOI78v-Nnemg0egXYHYE8I4AilaEQem1', '2023-06-17 01:38:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-16 01:38:05', '2023-06-16 01:38:05'),
('gQKpT4kZZj5aUAYY8FVsSeGXYviOgBYY', '2023-06-16 18:04:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 18:04:49', '2023-06-15 18:04:49'),
('hjPbjuqRF-RAvoYD2XewmEOUJw66v_9m', '2023-06-17 07:10:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 07:10:11', '2023-06-16 07:10:11'),
('KkXWxPYnq1WFPkko04KjTKq4jaATqXcb', '2023-06-17 05:09:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-16 05:09:06', '2023-06-16 05:09:06'),
('LmyxfuVdTFrIPT87--KLqAfok9FiuYyR', '2023-06-17 05:00:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-16 05:00:56', '2023-06-16 05:00:56'),
('MaECOBlID0t_1eRmmrCjHPzokhFfvX0H', '2023-06-17 06:49:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-16 06:49:20', '2023-06-16 06:49:20'),
('mzfSF6TVk9RIOFXAwXzvE_PqJPmmahGw', '2023-06-17 05:32:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 05:32:23', '2023-06-16 05:32:23'),
('ntQsK9tq-DGZKgktsD8lcHfBTiTHKd_D', '2023-06-16 22:36:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-15 22:36:44', '2023-06-15 22:36:44'),
('oyFld-5_FnimyXCpK80cD4x_Yhyp5gEg', '2023-06-17 06:50:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 06:50:07', '2023-06-16 06:50:07'),
('phXVx4ip3btBuPKgVTajdSWs7fqqzA1g', '2023-06-16 18:04:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"6860679f-1a6e-429d-80d0-426d2883dd9c\"}', '2023-06-15 18:04:38', '2023-06-15 18:04:38'),
('pkhYI_Hq7SJKlXG9gsXGi5lFMM9OHNje', '2023-06-16 18:05:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 18:05:02', '2023-06-15 18:05:02'),
('q7ayrr5mFPfdSeMg_2Qj-8WbzeL2zCJt', '2023-06-17 05:32:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 05:32:18', '2023-06-16 05:32:18'),
('qoUiRHmMEryKx2ZBCwNGn8QvzV9QUWb9', '2023-06-17 06:50:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 06:50:17', '2023-06-16 06:50:17'),
('TkyQpD94Z3VxefU7VpFNMR5YwG5PMWFD', '2023-06-16 18:04:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 18:04:53', '2023-06-15 18:04:53'),
('ttob1zneWK7hlQDy5XwBq9owhP5Aj14v', '2023-06-17 04:12:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-16 04:12:47', '2023-06-16 04:12:47'),
('u9aGtSyKQFrtX5ZTogeB_WYPiaGy2ZnD', '2023-06-16 18:07:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 18:07:16', '2023-06-15 18:07:16'),
('v8CqpNALwqSjSBekqcNPTxKAMsq3V0P-', '2023-06-16 18:07:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 18:07:17', '2023-06-15 18:07:17'),
('vDrQio_WDoJ82jM5yXvQeOpXBiirih6H', '2023-06-17 04:14:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-16 04:14:08', '2023-06-16 04:14:08'),
('VeOEgPksCcU_adFYPTq_Odng-B6Nxu8h', '2023-06-16 14:07:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 14:07:11', '2023-06-15 14:07:11'),
('vNFuC-VpsGFl8iJxJI3oiBzHWfcBKTNE', '2023-06-16 15:35:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 15:35:39', '2023-06-15 15:35:39'),
('WrkPwacFQV3Ky-WVcNKCHTU9MiAfTLYi', '2023-06-16 15:35:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 15:35:35', '2023-06-15 15:35:35'),
('X-Mpp3weTTXoLlrsB5SuX4tT7TESQZ3d', '2023-06-17 03:20:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"57ed3653-e084-4795-9fae-18eabd8dc517\"}', '2023-06-16 03:20:31', '2023-06-16 03:20:31'),
('xb-4VB_x058KTzOCQpK2KJNotf8DV767', '2023-06-16 14:08:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 14:08:08', '2023-06-15 14:08:08'),
('xSvbfToz2fczFh52NDX-sHDo08EeZmMx', '2023-06-17 06:50:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 06:50:08', '2023-06-16 06:50:08'),
('yKS6WWQ0mcTX_Wppnt-cItZlCWK7y8Wl', '2023-06-17 07:10:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 07:10:55', '2023-06-16 07:10:55'),
('yXNV7kd0xiVPtxYcebsr1BqaxnAV9BTU', '2023-06-16 18:05:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-15 18:05:05', '2023-06-15 18:05:05'),
('yXqtcwhFLOO0fhz1zvak3PVOUBJ1kqMa', '2023-06-17 07:10:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-06-16 07:10:40', '2023-06-16 07:10:40');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('vQOrhsYj2lPODgsSJcXiupI45Ll0Cfkh', '2023-06-10 22:23:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"92236af6-8720-4f30-884e-1433638970e5\"}', '2023-06-07 15:46:43', '2023-06-09 22:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `point` int(255) DEFAULT '0',
  `username` varchar(255) DEFAULT '0',
  `createdAt` date NOT NULL,
  `updatedAt` date NOT NULL,
  `image` varchar(255) DEFAULT '0',
  `url` varchar(255) DEFAULT '0',
  `newPoint` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `email`, `password`, `point`, `username`, `createdAt`, `updatedAt`, `image`, `url`, `newPoint`) VALUES
(1, 'af3ce015-8f15-45b5-91c5-864b7e665afe', 'wkwmaikwk@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$m+iUL9rB9togvHm+ia6zcA$WzoXTkC6Xl/j+TVp2eTwHdiKcHx8jvCGp7whaGUghuQ', 1250, 'aaaaaaaa', '2023-06-03', '2023-06-12', '2c11fd7b62549a0e8bd51631e8930816.jpeg', 'https://storage.googleapis.com/profil-reachyou/2c11fd7b62549a0e8bd51631e8930816.jpeg', 0),
(3, 'a9349048-7ff8-4933-8dbb-d7c1faa15e0d', 'qwerty123@example.com', '$argon2id$v=19$m=4096,t=3,p=1$V73NIaC0EjpmTwOcgd9Gfw$4+eKQ1Yedkc0eN+jntsefTvWTjVf3bS5gLlTdb/ogGA', 0, 'qwerty123', '2023-06-04', '2023-06-12', '534b996a8df7083ecf9b70e60b615ed6.jpeg', 'https://storage.googleapis.com/profil-reachyou/534b996a8df7083ecf9b70e60b615ed6.jpeg', 0),
(4, '6860679f-1a6e-429d-80d0-426d2883dd9c', 'iqbal@example.com', '$argon2id$v=19$m=4096,t=3,p=1$28SF2Qm13Xvy5BdIit+0ww$AtXFXzPXsyRuwtuG8FGenoOxmhjB20JTZVqA8BPl1VI', 24, 'iqbal', '2023-06-04', '2023-06-14', '3e3d73e3d0d2464d2fc558997baf70d9.jpg', 'https://storage.googleapis.com/profil-reachyou/3e3d73e3d0d2464d2fc558997baf70d9.jpg', 0),
(5, '131a4bb4-02a3-433f-a35f-7196f0ec7827', 'apa@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$YxLdFIU2zAedMD7URpq2OA$a6mgtyg5GSJBtRNdefTff4dvJUyN3r3kVEf5qWF89Ys', 0, 'apa', '2023-06-05', '2023-06-07', '', '', 0),
(6, '549649a4-8851-40c5-8966-357023f36ce1', 'plm@example.com', '$argon2id$v=19$m=65536,t=3,p=4$LA5lnJAgNpnWlapCxUS92g$sj2Q4d+5CN1rFm32blgnvjcC+ZpQVdJR+JVFFuw8QbA', 20, 'plm', '2023-06-05', '2023-06-12', '', '', 0),
(8, '92236af6-8720-4f30-884e-1433638970e5', 'qwerty@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$rqfcEH5Jew8QEBaRhL/UYw$FUoHCA1tHc66DO3PWY5j1HlCnQ8aZM06qltRHeawjNw', 160, 'Yaska321', '2023-06-05', '2023-06-14', '1dcb47923b55f30b31a004c27cfd3c86.jpg', 'https://storage.googleapis.com/profil-reachyou/1dcb47923b55f30b31a004c27cfd3c86.jpg', 0),
(12, 'e118f347-13e1-4b61-a21c-5f2329df3876', 'saya@example.com', '$argon2id$v=19$m=65536,t=3,p=4$IVdXng5/t4prTGQOzGF7QA$5+r7KHzdB+TMkj6NaaCnO1jQyQzO+Pw4pBMKwy79EOY', 0, 'qwertthyngbdvs', '2023-06-07', '2023-06-13', '', 'https://storage.googleapis.com/profil-reachyou/888e730341da24ef467cc42d7c65c0d4.jpg', 0),
(17, 'df9939b6-f6c2-41e3-9167-0bfcae4eada7', 'Yaska@hotmail.com', '$argon2id$v=19$m=65536,t=3,p=4$RqywvGz5VsdM7XYn3oHo1w$EK/P/r+yvaGz94w5G69wu2JO4nYTEfO3t3ZjFvcGb70', NULL, NULL, '2023-06-13', '2023-06-13', NULL, NULL, NULL),
(18, 'a0307493-30a1-4985-870e-4c9090f81272', 'Yaska1@hotmail.com', '$argon2id$v=19$m=65536,t=3,p=4$ZfNujtljSKxcOA1UhhjeQw$e4SRUjNmxogfVulQLeKSzwfy8ZITpE1Ie5VM5CjYOUc', NULL, NULL, '2023-06-13', '2023-06-13', NULL, NULL, NULL),
(19, '2f54b6ab-b1f9-4fdd-b34e-8e270c884cd0', 'Yaska2@hotmail.com', '$argon2id$v=19$m=65536,t=3,p=4$Or3C90Ccq5lbndAXAPplBg$Xd90HfE8oqeLxD1SiqoiMCNgBq2EBT8d2W6j18gey/g', NULL, 'agahah', '2023-06-13', '2023-06-13', '1dcb47923b55f30b31a004c27cfd3c86.jpg', 'https://storage.googleapis.com/profil-reachyou/1dcb47923b55f30b31a004c27cfd3c86.jpg', NULL),
(20, 'c590cb99-ac3c-4e64-8cad-ee8c010e59ce', 'Judul@A.rtikel', '$argon2id$v=19$m=65536,t=3,p=4$FMJbCTjk3IWSmJ8HvnFdKA$BzDPRZw09T/Qwl1vtmNkh1OxBNIPLL43UyNV7RoOG7Q', 0, '0', '2023-06-13', '2023-06-13', '0', '0', 0),
(21, '57ed3653-e084-4795-9fae-18eabd8dc517', 'yas@hotmail.com', '$argon2id$v=19$m=65536,t=3,p=4$whPrXuwPOKFZ8E3WQONTsA$KPyns2D2eeTA4kPW6HFd8AkheS+g0yXW0yNDKWI1y+g', 0, 'Yaska12', '2023-06-14', '2023-06-16', '8652abe2bb6addb01c785a034f863053.jpg', 'https://storage.googleapis.com/profil-reachyou/8652abe2bb6addb01c785a034f863053.jpg', 0),
(22, 'a2e6d7af-c655-4e76-a39c-633ed4616a24', 'muhirkham21@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$zbVxMYXh4Jpl0GwlltKWRA$+rxS1ob9mlQYXLE88JZ9chNh2KqbG0QpmK6hp3xv2Yg', 100, 'khamzz', '2023-06-14', '2023-06-14', '06f25a425e0f7ea79b778a095bddcf3d.jpg', 'https://storage.googleapis.com/profil-reachyou/06f25a425e0f7ea79b778a095bddcf3d.jpg', 0),
(23, 'd0695774-5e40-46ec-aba3-2c3f9067cde1', 'mmmmmmmmm@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$ycaN8uWvM60tHKvoN0ohoA$e/0t1kObCtN8L/s+Q9oGdY7qyuEEPTtFH6Y1qlSFlD0', 0, 'iqbal12345', '2023-06-15', '2023-06-15', '9d032c3c28412ee2b4f0dd8a8ff454c4.jpg', 'https://storage.googleapis.com/profil-reachyou/9d032c3c28412ee2b4f0dd8a8ff454c4.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
