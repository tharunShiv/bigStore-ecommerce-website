-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2018 at 06:08 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bigstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `icon` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `icon`) VALUES
(1, 'Smartphone', 'phone'),
(2, 'Smartcam', 'cam'),
(3, 'Laptop', 'laptop'),
(4, 'Smartwatch', 'watch'),
(5, 'Smartspeaker', 'speaker'),
(6, 'SmartVR', 'vr');

-- --------------------------------------------------------

--
-- Table structure for table `command`
--

CREATE TABLE `command` (
  `id` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `dat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `statut` varchar(1000) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `command`
--

INSERT INTO `command` (`id`, `id_produit`, `quantity`, `dat`, `statut`, `id_user`) VALUES
(126, 21, 1, '2018-11-18 09:43:38', 'paid', 13),
(127, 17, 2, '2018-11-18 09:57:28', 'paid', 13),
(128, 13, 3, '2018-11-18 09:57:28', 'paid', 13),
(130, 12, 1, '2018-11-18 09:55:13', 'paid', 14),
(131, 11, 5, '2018-11-18 09:55:13', 'paid', 14),
(132, 16, 10, '2018-11-18 09:55:13', 'paid', 14),
(133, 19, 1, '2018-11-18 09:54:36', 'paid', 15),
(134, 9, 6, '2018-11-18 09:54:36', 'paid', 15),
(135, 17, 1, '2018-11-18 09:55:13', 'paid', 14),
(137, 19, 3, '2018-11-18 09:57:28', 'paid', 13);

-- --------------------------------------------------------

--
-- Table structure for table `details_command`
--

CREATE TABLE `details_command` (
  `id` int(11) NOT NULL,
  `product` varchar(1000) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `id_command` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `user` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `statut` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details_command`
--

INSERT INTO `details_command` (`id`, `product`, `quantity`, `price`, `id_command`, `id_user`, `user`, `address`, `country`, `city`, `statut`) VALUES
(32, 'Realme 2 (Diamond Blue, 32 GB)', 1, 9420, 126, 13, 'Venkat Anirudh', 'My Home address here', 'India', 'Bengaluru', 'ready'),
(33, 'Apple iPhone XS Max', 1, 109900, 133, 15, 'Vasanth Saravana', 'My Home address here', 'India', 'Bengaluru', 'ready'),
(34, 'Gopro Hero 5', 6, 180000, 134, 15, 'Vasanth Saravana', 'My Home address here', 'India', 'Bengaluru', 'ready'),
(35, 'MSI GP62 Leopard Pro', 1, 90000, 130, 14, 'Naveen VJSK', 'My Home address here', 'China', 'Bengaluru', 'ready'),
(36, 'Oculus rift', 5, 145000, 131, 14, 'Naveen VJSK', 'My Home address here', 'China', 'Bengaluru', 'ready'),
(37, 'Canon EOS 7D', 10, 250000, 132, 14, 'Naveen VJSK', 'My Home address here', 'China', 'Bengaluru', 'ready'),
(38, 'Nexus 6P', 1, 27999, 135, 14, 'Naveen VJSK', 'My Home address here', 'China', 'Bengaluru', 'ready'),
(39, 'Nexus 6P', 2, 55998, 127, 13, 'Venkat Anirudh', 'My Home address here', 'Singapore', 'Bengaluru', 'ready'),
(40, 'Amazon Echo', 3, 18000, 128, 13, 'Venkat Anirudh', 'My Home address here', 'Singapore', 'Bengaluru', 'ready'),
(41, 'Apple iPhone XS Max', 3, 329700, 137, 13, 'Venkat Anirudh', 'My Home address here', 'Singapore', 'Bengaluru', 'ready');

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `picture` varchar(1000) NOT NULL,
  `id_produit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `picture`, `id_produit`) VALUES
(13, 'Samsung-Galaxy-S6-edge-Gold-Platinum..jpg', 2),
(14, 'samsung-galaxy-s7-edge.jpg', 2),
(15, 'galaxy-s7-edge-black.png', 2),
(16, 'MMY72_AV2.jpg', 8),
(17, 'iphone7-plus-rosegold-select-2016.jpg', 8),
(18, 'blue-iphone.jpg', 8),
(19, 'Hero5-Black-Carousel-3.png', 9),
(20, 'gopro-hero-5-release-date-price-frame.jpg', 9),
(21, 'gopro_hero_5_black_review_display.jpg', 9),
(25, 'oculus_rift_1.jpg', 10),
(26, 'OculusRift.jpg', 10),
(27, '61EsR4QA0PL._SL1500_.jpg', 10),
(28, 'five_pictures1_100259_201506200523405584885cedd68.png', 12),
(29, 'pi_ms-gp622qe-035za1.jpg', 12),
(30, 'pi_ms-gp622qe-035za3.jpg', 12),
(31, 'amazon_b00x4whp5e_echo_1187819.jpg', 13),
(32, 'amazonecho_4-100599473-orig.jpg', 13),
(33, 'amazon-echo-part-1-a-consumer-pr.jpg', 13),
(34, 'og-img.png', 14),
(35, 'h_51561794.jpg', 14),
(36, 'apple-watch-thumbnail-100571651-orig.jpg', 14),
(37, 'pixel.png', 15),
(38, 'GoogleBlue.jpg', 15),
(39, 'etui-diztronic-matte-tpu-google-pixel-xl-alloy-grey.jpg', 15),
(40, 'D3S_4695-1200.jpg', 16),
(41, 'highres-Canon-EOS-7D-MarkII-8_1417776370.jpg', 16),
(42, 'highres-Canon-EOS-7D-Mark-II-with-lens-1_1411133185.jpg', 16),
(43, 'nexus-6p-9444.0.jpg', 17),
(44, 'nexus-6p-9693.0.jpg', 17),
(45, 'Google-Nexus-6P-Review-Conc.jpg', 17),
(46, 'redmi-note-5-pro-1.jpeg', 18),
(47, 'redmi-e7s-note-5-2.jpeg', 18),
(48, 'redmi-e7s-note-5-pro3.jpeg', 18),
(49, 'apple-iphone-xs-max-1.jpeg', 19),
(50, 'apple-iphone-xs-max-2.jpeg', 19),
(51, 'apple-iphone-xs-max-3.jpeg', 19),
(55, 'realme-1.jpeg', 20),
(56, 'realme-2.jpeg', 20),
(57, 'realme-3.jpeg', 20);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `id_picture` int(11) NOT NULL,
  `thumbnail` varchar(1000) NOT NULL,
  `promo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_category`, `name`, `description`, `price`, `id_picture`, `thumbnail`, `promo`) VALUES
(7, 1, 'Samsung s7 edge', '5.50-inch 1440x2560 display powered by 1.6GHz octa-core processor alongside 4GB of RAM and 12-megapixel', 47000, 2, 'galaxy-s7-edge-black.png', ''),
(8, 1, 'Iphone 7', 'Features 3G, LED-backlit IPS LCD display, 12 MP camera, Wi-Fi, GPS, Bluetooth', 65000, 8, 'rsz_iphone-7-jet-black.jpg', ''),
(9, 2, 'Gopro Hero 5', ' GoPro HERO5 Black features Supports 4K30, 2.7K60, 1080p120 Video, Capture 12MP Photos at 30fps', 30000, 9, 'gopro5.png', '1'),
(11, 6, 'Oculus rift', 'The Oculus Rift is a virtual reality system that completely immerses you inside virtual worlds', 29000, 10, 'Oculus_Product_Dynamic 45.jpg', '1'),
(12, 3, 'MSI GP62 Leopard Pro', 'In-depth review of the MSI GP62-2QEi781FD (Intel Core i7 5700HQ, NVIDIA GeForce GTX 950M, 15.6\", 2.3 kg) ... The MSI GE series is already the manufacturer\'s entry-level gaming series. ..... ', 90000, 12, 'msi-gp62-6qf-product_pictures-3d1.png', ''),
(13, 5, 'Amazon Echo', 'Amazon Echo is a hands-free speaker you control with your voice. Echo connects to the Alexa Voice Service to play music, provide information, news, sports ...', 6000, 13, 'amazon-echo-image.jpg', ''),
(14, 4, 'Apple Watch', 'The new Apple Watch is the ultimate device for your healthy life. Choose from a range of models including Apple Watch Series 2 and Apple Watch Nike+', 19999, 14, 'apple-watch-premium-design-vs-pebble-time-round-classic-design.jpg', ''),
(15, 1, 'Google Pixel XL', 'XL 5.5\" Phone 128GB Quite Black Cell Smart. GOOGLE PIXEL XL 5.5\" Black 32GB TRUE ANDROID PHONE CDMA+GSM WORLD UNLOCKED', 39999, 15, 'pixel.png', ''),
(16, 2, 'Canon EOS 7D', 'The EOS 7D features a Canon-designed 18.0 Megapixel APS-C size CMOS sensor that captures such a high level of resolution it\'s easy to crop images for ...', 25000, 16, 'EOS 7D Mark II Hero.jpg', ''),
(17, 1, 'Nexus 6P', 'All-metal design Unlocked, LTE smartphone with a powerful 2GHz Snapdragon 810 V2.1 Processor and the newest Android software, Android 6.0 marshmallow.', 27999, 17, 'nexus-6p-topic-full.png', ''),
(18, 1, 'Redmi Note 5 Pro', '4 GB RAM | 64 GB ROM | Expandable Upto 128 GB\r\n15.21 cm (5.99 inch) Full HD+ Display\r\n12MP + 5MP | 20MP Front Camera\r\n4000 mAh Li Polymer Battery\r\nQualcomm Snapdragon 636 Processor', 13999, 18, 'redmi-note-5-pro.jpeg', ''),
(19, 1, 'Apple iPhone XS Max', '\r\n64 GB ROM |\r\n16.51 cm (6.5 inch) Super Retina HD Display\r\n12MP + 12MP | 7MP Front Camera\r\nLithium-ion Battery\r\nA12 Bionic Chip Processor', 109900, 19, 'apple-iphone-xs-max.jpeg', ''),
(21, 1, 'Realme 2 (Diamond Blue, 32 GB)', '3 GB RAM | 32 GB ROM | Expandable Upto 256 GB\r\n15.75 cm (6.2 inch) HD+ Display\r\n13MP + 2MP | 8MP Front Camera\r\n4230 mAh Li-ion Battery\r\nQualcomm Snapdragon 450 Octa Core 1.8 GHz Processor\r\nNotch Full Screen Display\r\nFinger Print and Face Unlock\r\nTriple Slot ( Dual Active 4G Sims + Dedicated Memory)', 9420, 20, 'realme-2-rmx1805.jpeg', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `firstname` varchar(1000) NOT NULL,
  `lastname` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `city` varchar(1000) NOT NULL,
  `country` varchar(1000) NOT NULL,
  `role` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `firstname`, `lastname`, `password`, `address`, `city`, `country`, `role`) VALUES
(12, 'tharun@bigstore.com', 'Tharun', 'Shiv', '382f81ab4aeb1d3558a88462a9b1c9fc', 'My Home address here', 'Bengaluru', '', 'admin'),
(13, 'anirudh@bigstore.com', 'Venkat', 'Anirudh', '118e2292814bc5947352dabd6d02aa13', 'My Home address here', 'Bengaluru', '', 'client'),
(14, 'naveen@bigstore.com', 'Naveen', 'VJSK', 'e691cb702f5d25642aa87009ef1948f8', 'My Home address here', 'Bengaluru', '', 'client'),
(15, 'vasanth@bigstore.com', 'Vasanth', 'Saravana', 'f073560f61c8466c16bc60350fba6231', 'My Home address here', 'Bengaluru', '', 'client'),
(16, 'uma@bigstore.com', 'Uma', 'Maheswari', '18f8891c64e402460381ae66774c94bd', 'My Home address here', 'Bengaluru', '', 'client'),
(17, 'shiv@bigstore.com', 'Shiva', 'Paru', '69f404925df883e0e5579d65b7768e7c', 'My Home address here', 'Kailash', '', 'client'),
(18, 'ram@bigstore.com', 'Ram', 'Dashrath', '4641999a7679fcaef2df0e26d11e3c72', 'My Home address here', 'Ayodhya', '', 'client'),
(19, 'radhekrishn@bigstore.com', 'Radhe', 'Krishna', 'fad1baf6464b5da8f87896439ca2de03', 'My', 'Mathura', '', 'client');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `command`
--
ALTER TABLE `command`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details_command`
--
ALTER TABLE `details_command`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `command`
--
ALTER TABLE `command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `details_command`
--
ALTER TABLE `details_command`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
