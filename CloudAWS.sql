-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2025 at 05:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `h1` varchar(255) NOT NULL,
  `descr` varchar(255) NOT NULL,
  `img_1` varchar(255) NOT NULL,
  `img_2` varchar(255) NOT NULL,
  `img_3` varchar(255) NOT NULL,
  `img_4` varchar(255) NOT NULL,
  `img_5` varchar(255) NOT NULL,
  `img_6` varchar(255) NOT NULL,
  `moment1_img` varchar(255) NOT NULL,
  `moment2_img` varchar(255) NOT NULL,
  `moment3_img` varchar(255) NOT NULL,
  `momentdesc1` varchar(255) NOT NULL,
  `momentdesc2` varchar(255) NOT NULL,
  `momentdesc3` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`h1`, `descr`, `img_1`, `img_2`, `img_3`, `img_4`, `img_5`, `img_6`, `moment1_img`, `moment2_img`, `moment3_img`, `momentdesc1`, `momentdesc2`, `momentdesc3`, `id`, `location`) VALUES
('About Us', 'We specialize in beautifully crafted flowers, perfect for celebrating achievements and milestones. Our bouquets are designed to make every one\'s special day even more memorable.', 'uploads/IMG-20250325-WA0010.jpg', 'uploads/IMG-20250325-WA0009.jpg', 'uploads/IMG-20250325-WA0008.jpg', 'uploads/IMG-20250325-WA0007.jpg', 'uploads/IMG-20250325-WA0003.jpg', 'uploads/IMG-20250325-WA0005.jpg', 'uploads/IMG-20250325-WA0002.jpg', 'uploads/IMG-20250325-WA0004.jpg', 'uploads/IMG-20250325-WA0006.jpg', '\"Celebrate every milestone of your graduation journey with our premium gowns, personalized gifts, and memorable keepsakes.\"', ' \"Make your graduation unforgettable with our expertly curated gowns, customized gifts, and essential celebration accessories.\"', '\"Stay connected with us for the latest graduation trends, special offers, and exclusive updates.\"', 1, '77, Lorong Lembah Permai 3, 11200 Tanjung Bungah, Pulau Pinang');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `failed_attempts` int(11) DEFAULT 0,
  `last_attempt_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `email`, `failed_attempts`, `last_attempt_time`) VALUES
(1, 'KANGc', '$2y$10$zPxvCDsMzAwiHgErtUBox.PFpSrPTYWdwkEVBuHtzwwW8bGBcUUYy', 'adminmain@gmail.com', 0, NULL),
(19, 'CALVIN', '$2y$10$54ZqrNgNHy3WZQWFH4j8XuqhxSq9Z3Ju9CBf9S7eGzY0PGeAarb0a', 'calvinyong988@gmail.com', 0, NULL),
(20, 'a', '$2y$10$W2t7XeTUg6oN5y8NnVMJneOJ13dLK.vTezGx0JXs8Zs6SkGGQcDF6', 'tanks-pm23@student.tarc.edu.my', 0, NULL),
(21, 'tankahseang05@gmail.com', '$2y$10$M1AS/SrfDAIFu2NZi5kG2uaEfbytXeVR406K0sd1LbwuzMr7Sr71i', 'test1@gmail.com', 0, NULL),
(22, 'tankahseang05@gmail.com', '$2y$10$zpe6sLYceN0QspTiDo38suuqohzPV84IKJR9ghSKmwZ9H8hALPMdO', 'test3@gmail.com', 0, NULL),
(23, 'tankahseang05@gmail.com', '$2y$10$v1.1zgJUb5avKY9W/MI3PuOimJ7Fntj.PVWQ14XV8aIG4HP1yCXri', 'test4@gmail.com', 0, NULL),
(24, '2306586', '$2y$10$lxQTY/Zrcan.pVOuONHlYe6XEbg3AnIFvV3J1hVlp0oIm0wOdopXe', 'test5@gmail.com', 0, NULL),
(25, 'KA', '$2y$10$pjP5T6K8CN5nbAyASoxeDe6qqgMHP7UQtYoIgzc2XIWZLPSmZTa.S', 'test7@gmail.com', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aiml`
--

CREATE TABLE `aiml` (
  `id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL DEFAULT 1,
  `pattern` varchar(256) NOT NULL,
  `thatpattern` varchar(256) NOT NULL,
  `template` text NOT NULL,
  `topic` varchar(256) NOT NULL,
  `filename` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `aiml_userdefined`
--

CREATE TABLE `aiml_userdefined` (
  `id` int(11) NOT NULL,
  `pattern` varchar(256) NOT NULL,
  `thatpattern` varchar(256) NOT NULL,
  `template` text NOT NULL,
  `user_id` varchar(256) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `booking_detail_id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`booking_detail_id`, `booking_id`, `event_id`, `user_id`, `quantity`, `price`) VALUES
(1, 16, 1, 1, 3, 50.00),
(2, 16, 2, 1, 12, 10.00),
(3, 16, 7, 1, 1, 10.00),
(4, 17, 1, 1, 3, 50.00),
(5, 17, 2, 1, 12, 10.00),
(6, 17, 7, 1, 1, 10.00),
(7, 18, 1, 1, 3, 50.00),
(8, 18, 2, 1, 12, 10.00),
(9, 18, 7, 1, 1, 10.00),
(10, 20, 2, 1, 1, NULL),
(11, 20, 1, 1, 1, NULL),
(12, 23, 2, 1, 1, NULL),
(13, 24, 1, 1, 1, NULL),
(14, 24, 2, 1, 1, NULL),
(16, 25, 1, 1, 1, 50.00),
(18, 26, 1, 1, 1, 50.00),
(19, 27, 1, 1, 1, 50.00),
(20, 28, 2, 1, 1, 10.00),
(21, 30, 2, 1, 1, 10.00),
(22, 31, 2, 1, 1, 10.00),
(23, 31, 1, 1, 1, 50.00),
(24, 32, 2, 1, 1, 10.00),
(27, 35, 2, 1, 1, 10.00),
(28, 35, 1, 1, 1, 50.00),
(29, 36, 2, 1, 1, 10.00),
(30, 37, 2, 1, 1, 10.00),
(31, 38, 1, 1, 1, 50.00),
(32, 38, 2, 1, 1, 10.00),
(33, 53, 2, 1, 1, 10.00),
(34, 54, 2, 1, 1, 10.00),
(35, 55, 2, 1, 1, 10.00),
(36, 56, 2, 1, 1, 10.00),
(37, 57, 2, 1, 1, 10.00),
(38, 58, 1, 1, 1, 50.00),
(39, 60, 2, 1, 3, 10.00),
(40, 61, 2, 1, 3, 10.00),
(41, 62, 2, 1, 3, 10.00),
(42, 63, 2, 1, 1, 10.00),
(43, 64, 12, 1, 1, 10.00),
(44, 65, 2, 1, 2, 10.00),
(45, 66, 1, 1, 9, 50.00),
(47, 66, 2, 1, 3, 10.00),
(48, 67, 1, 1, 2, 50.00),
(49, 68, 1, 1, 1, 50.00),
(51, 70, 1, 1, 4, 50.00),
(53, 71, 1, 1, 1, 50.00),
(55, 73, 1, 1, 4, 50.00),
(56, 73, 7, 1, 1, 10.00),
(57, 74, 1, 1, 1, 50.00),
(58, 75, 1, 1, 1, 50.00),
(59, 76, 1, 1, 10, 50.00),
(61, 77, 1, 1, 1, 50.00),
(62, 77, 7, 1, 1, 10.00),
(63, 78, 1, 1, 1, 50.00),
(65, 79, 1, 1, 1, 50.00),
(66, 79, 12, 1, 1, 10.00),
(67, 80, 2, 1, 1, 148.00),
(68, 81, 12, 1, 2, 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `botpersonality`
--

CREATE TABLE `botpersonality` (
  `id` int(11) NOT NULL,
  `bot_id` tinyint(4) NOT NULL DEFAULT 0,
  `name` varchar(256) NOT NULL DEFAULT '',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bots`
--

CREATE TABLE `bots` (
  `bot_id` int(11) NOT NULL,
  `bot_name` varchar(256) NOT NULL,
  `bot_desc` varchar(256) NOT NULL,
  `bot_active` int(11) NOT NULL DEFAULT 1,
  `bot_parent_id` int(11) NOT NULL DEFAULT 0,
  `format` varchar(10) NOT NULL DEFAULT 'html',
  `save_state` enum('session','database') NOT NULL DEFAULT 'session',
  `conversation_lines` int(11) NOT NULL DEFAULT 7,
  `remember_up_to` int(11) NOT NULL DEFAULT 10,
  `debugemail` text NOT NULL,
  `debugshow` int(11) NOT NULL DEFAULT 1,
  `debugmode` int(11) NOT NULL DEFAULT 1,
  `error_response` text NOT NULL,
  `default_aiml_pattern` varchar(256) NOT NULL DEFAULT 'RANDOM PICKUP LINE',
  `unknown_user` varchar(256) NOT NULL DEFAULT 'Seeker'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bots`
--

INSERT INTO `bots` (`bot_id`, `bot_name`, `bot_desc`, `bot_active`, `bot_parent_id`, `format`, `save_state`, `conversation_lines`, `remember_up_to`, `debugemail`, `debugshow`, `debugmode`, `error_response`, `default_aiml_pattern`, `unknown_user`) VALUES
(1, 'CHAT KS17.0', 'VERY GOOD', 1, 1, 'json', 'session', 1, 10, 'tankahseang05@gmail.com', 4, 1, 'No AIML category found. This is a Default Response.', 'RANDOM PICKUP LINE', 'Seeker');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`, `event_id`, `quantity`) VALUES
(104, 74, 16, 1),
(105, 74, 15, 1),
(108, 1, 1, 1),
(109, 1, 7, 2),
(110, 1, 15, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_name` varchar(200) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_name`, `category_id`, `category_image`) VALUES
('ALL', 1, 'Websystemphp/first/categories.jpeg'),
('Flowers', 2, 'uploads/67e67bb92f500_67e12b0e6dd7e_istockphoto-2158811211-612x612.webp'),
('Accessories', 4, 'uploads/67e12d32dc71e_photo-1652573379656-4ce53f9cbd2d.avif'),
('Decoration Items', 5, 'uploads/67e12d95b28ea_photo-1740066547633-5c58a87eef1d.avif');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` int(11) NOT NULL,
  `user` longtext NOT NULL,
  `chatbot` longtext NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `client_properties`
--

CREATE TABLE `client_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `moment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment_text` text NOT NULL,
  `commented_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `moment_id`, `user_id`, `comment_text`, `commented_at`, `username`) VALUES
(1, 40, 1, 'a', '2024-04-18 01:34:37', NULL),
(2, 46, 1, '是MEH', '2024-04-18 01:42:42', NULL),
(3, 46, 1, 'a', '2024-04-18 01:44:58', NULL),
(4, 45, 1, 'a', '2024-04-18 01:45:30', NULL),
(6, 48, 1, 'hahah', '2024-04-26 01:51:46', NULL),
(8, 40, 1, 'kkkk', '2024-05-10 12:49:15', NULL),
(9, 50, 1, 'aaa', '2024-05-10 14:53:37', NULL),
(10, 52, 1, 'aaa', '2024-05-11 15:27:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conversation_log`
--

CREATE TABLE `conversation_log` (
  `id` int(11) NOT NULL,
  `input` text NOT NULL,
  `response` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  `convo_id` text NOT NULL,
  `bot_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cookies`
--

CREATE TABLE `cookies` (
  `id` int(11) NOT NULL,
  `cookie_name` varchar(255) NOT NULL,
  `cookie_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cookies`
--

INSERT INTO `cookies` (`id`, `cookie_name`, `cookie_value`) VALUES
(1, 'saved_search', 'basketball'),
(2, 'saved_search', 'basketball');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(255) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `emp_photo` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `emp_id`, `emp_photo`, `description`) VALUES
('Premium Quality', 1, 'choose1.avif', 'Carefully selected materials for lasting memories.'),
(' Customization Options', 2, 'choose2.webp', 'Personalized gifts to make graduation extra special.'),
('Affordable Pricing', 4, 'woman-holding-her-finger-balance-with-coins.jpg', 'High quality without breaking the bank.'),
('Fast & Reliable Service', 5, 'choose4.webp', 'Ensuring on-time delivery for your big day.');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `event_location` varchar(100) NOT NULL,
  `event_description` varchar(10000) NOT NULL,
  `start_time` date NOT NULL,
  `end_time` date NOT NULL,
  `event_imgside1` varchar(1000) NOT NULL,
  `event_imgside2` varchar(1000) NOT NULL,
  `event_imgside3` varchar(1000) NOT NULL,
  `event_imgside4` varchar(1000) NOT NULL,
  `event_imgside5` varchar(1000) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `event_price` varchar(10) NOT NULL,
  `event_img` varchar(255) NOT NULL,
  `event_time` varchar(100) NOT NULL,
  `event_hover` varchar(100) NOT NULL,
  `event_softskill` int(100) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `event_available` int(255) NOT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`event_id`, `type_name`, `event_location`, `event_description`, `start_time`, `end_time`, `event_imgside1`, `event_imgside2`, `event_imgside3`, `event_imgside4`, `event_imgside5`, `event_name`, `event_price`, `event_img`, `event_time`, `event_hover`, `event_softskill`, `category_id`, `event_available`, `latitude`, `longitude`) VALUES
(1, 'Flowers', '-', 'Consist of baby breath and chamomile \r\n\r\nSize of the bouquet H x W = 42~46 cm x 31~35 cm\r\n\r\nBouquet suitable for all occasion', '2024-03-21', '2024-04-03', 'uploads/flower1_a.png', 'uploads/flower1_b.png', 'uploads/flower1_c.png', 'uploads/flower1_d.png', 'uploads/flower1_e.png', 'Blushing Bride', '99', 'uploads/flower1_b.png', '-', 'uploads/flower1_c.png', 20, 2, 52, 5.45186090, 100.28599820),
(2, 'Flowers', '-', 'Consist of 4 red roses and 4 white roses.\r\nSize of the bouquet H x W = 40~45 cm x 31~35 cm\r\nBouquet suitable for all occasion', '2024-04-03', '2024-06-20', 'uploads/flower_2_a.png', 'uploads/flower_2_b.png', 'uploads/flower_2_c.png', 'uploads/flower_2_d.png', 'uploads/flower_2_e.png', 'Cinderella', '148', 'uploads/flower_2_a.png', '-', 'uploads/flower_2_d.png', 11, 2, 49, NULL, NULL),
(7, 'Flowers', '-', 'Consist of dye colourful baby breath \r\nSize of the bouquet H x W = 42~46 cm x 31~35 cm\r\nBouquet suitable for all occasion', '2024-04-17', '2024-04-18', 'uploads/flower_3_a.png', 'uploads/flower_3_b.png', 'uploads/flower_3_c.png', 'uploads/flower_3_d.png', 'uploads/flower_3_e.png', 'BB Galaxy', '133', 'uploads/flower_3_b.png', '-', 'uploads/flower_3_e.png', 50, 2, 100, NULL, NULL),
(12, 'Accessories', '-', 'SHIOK 10 / 13cm Poly Convo Foam Graduation Bear Holding Certificate Flower Accessories Bouquet Convocation\r\nSize:\r\n(10cm Sitting)5.9cm(L) x 10.5cm(W) x 12.2cm(H)\r\n(13cm Standing) 5.5cm(L) x 8cm(W) x 14.5cm(H)\r\nMaterial: Foam Bear\r\nQuantity: 1 Bear (Flowers and wrapper sold separately)\r\nAll items are already in wholesale price', '2024-05-07', '2024-05-29', 'uploads/accessories_1_a.png', 'uploads/accessories_1_b.png', 'uploads/accessories_1_c.png', 'uploads/accessories_1_d.png', 'uploads/accessories_1_e.png', 'Graduation Bear', '3', 'uploads/accessories_1_d.png', '-', 'uploads/accessories_1_b.png', 10, 4, 58, NULL, NULL),
(15, 'Accessories', '-', 'SHIOK 2.5cm*20Yard Gold Stamp Well Done Congratulations Word Ribbon For Convocation Graduation Decoration\r\nLength: 2.5cm x 20yard\r\nDesign : \r\nRB0284 : Well Done! You Are The Best\r\nRB0285 : Congratulations\r\nQuantity: 1 Roll\r\nAll item already in wholesale price\r\nDue to factors such as shooting light and display, there may be a slight colour difference between the picture and the actual object. The actual colour of the final product shall prevail. Thank you for your understanding.', '2024-05-13', '2024-05-15', 'uploads/accessories_2_a.png', 'uploads/accessories_2_b.png', 'uploads/accessories_2_c.png', 'uploads/accessories_2_d.png', 'uploads/accessories_2_e.png', 'Congratulations Word Ribbon', '7', 'uploads/accessories_2_a.png', '-', 'uploads/accessories_2_d.png', 100, 4, 100, NULL, NULL),
(16, 'Accessories', '-', 'SHIOK Examination Wrapper Single Flower Bag For Convocation Bouquet Arrangement\r\nSize: \r\n-WP0394 Set 1/2/3 : 15cm(L) x 44cm(H)\r\n-WP0395 01/02/03 : 30cm(L) x 45cm(H)\r\nQuantity: \r\n-WP0394 Set 1/2/3  : 20pcs/Pack\r\n-WP0395 01/02/03 : 10pcs/Pack\r\nAll items are already in wholesale price', '2024-05-13', '2024-05-15', 'uploads/asccessories_3_a.png', 'uploads/asccessories_3_b.png', 'uploads/asccessories_3_c.png', 'uploads/asccessories_3_d.png', 'uploads/asccessories_3_e.png', 'Wrapper Single Flower Bag', '5', 'uploads/asccessories_3_a.png', '-', 'uploads/asccessories_3_c.png', 10, 4, 36, NULL, NULL),
(19, 'Decoration Items', '-', '-Our graduation party supplies are designed to fit in seamlessly into a range of graduation related purposes. The graduation table centerpieces are perfect for 2025 graduation party, graduation photo booth props, college and senior high school graduation, class of 2025 party and so on\r\n-These graduation centerpieces are made of quality card paper, lightweight but durable. They feature an open top with a LED light fixture, which requires manual attachment to the base, the graduation decorations can be illuminated and bring a romantic atmosphere', '2025-03-27', '2025-03-29', 'uploads/image_67e4c58bcf92e.png', 'uploads/image_67e4c58bcfe77.png', 'uploads/image_67e4c58bcfff6.png', 'uploads/image_67e4c58bd01bd.png', 'uploads/image_67e4c58bd0301.png', 'Graduation Decorations Lantern Boxes LED', '20', 'uploads/image_67e4c58bd042c.png', '-', 'uploads/image_67e4c58bd054a.png', 0, 5, 50, NULL, NULL),
(20, 'Decoration Items', '-', 'WARMLY REMIND: As dark navy looks like black before inflating. Kindly when you think you get \"the wrong navy balloons\" which looks like black, please kindly inflate one balloon to double check. Thanks for your patience\r\nWHAT INLCUDE: This balloon stand kit include 4 set balloon holders, 35pcs balloons - navy blue balloons, white balloons, silver and confetti balloons, balloon pump, balloon clips, ribbons, glue dots and tie tool', '2025-03-27', '2025-03-29', 'uploads/image_67e4c68c7e2bb.png', 'uploads/image_67e4c68c7e56f.png', 'uploads/image_67e4c68c7e81d.png', 'uploads/image_67e4c68c7ea82.png', 'uploads/image_67e4c68c7f661.png', 'Balloon Stand', '15', 'uploads/image_67e4c68c7f82b.png', '-', 'uploads/image_67e4c68c7f9c2.png', 0, 5, 77, NULL, NULL),
(21, 'Decoration Items', '-', 'Bold and Bright Graduation Decor: The perfect addition to graduation decorations, graduation banners spell out a cheerful message of pomp to let the community know about a grad’s big news!\r\nBlack & Gold Classic Design: The graduation decorations feature the Class of 2025 & Congrats Grad in gold and silver, images of mortarboard caps, diploma, stars and confetti swirls around the headline.', '2025-03-27', '2025-03-29', 'uploads/image_67e4c7627688c.png', 'uploads/image_67e4c76276b39.png', 'uploads/image_67e4c76276d02.png', 'uploads/image_67e4c76276e55.png', 'uploads/image_67e4c76276fa8.png', 'Graduation Porch Banners', '12', 'uploads/image_67e4c762770ef.png', '-', 'uploads/image_67e4c762771fe.png', 0, 5, 46, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`favorite_id`, `user_id`, `event_id`) VALUES
(15, 74, 15),
(16, 74, 1),
(17, 74, 7),
(18, 75, 1),
(19, 75, 12),
(20, 75, 15),
(21, 1, 16),
(22, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `subject`, `description`) VALUES
(1, 'GOOD WEBSITE', 'GOOD EXPERIENCE USE THIS WEBSITE'),
(2, 'HAHA', 'HAHAHA'),
(3, 'IMPROVEMENT ABOUT WEBSITE', ''),
(4, 'ks', 'aaa'),
(5, 'aaa', 'aaa'),
(6, 'ks', 'jgkhhgvchhg\r\n'),
(7, 'aaa', 'm\r\n'),
(8, 'society good', 'good'),
(9, 'ks', 'rfddet'),
(10, 'djdjjd', 'dhdhhhjju'),
(11, 'djdjd', 'jdjdjdj'),
(15, 'aaa', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `home_poster` varchar(200) NOT NULL,
  `home_title` varchar(200) NOT NULL,
  `home_description` varchar(200) NOT NULL,
  `home_video` varchar(200) NOT NULL,
  `home_id` int(200) NOT NULL,
  `pj_img1` varchar(255) NOT NULL,
  `pj_img2` varchar(255) NOT NULL,
  `pj_img3` varchar(255) NOT NULL,
  `pj_des1` varchar(255) NOT NULL,
  `pj_des2` varchar(255) NOT NULL,
  `pj_des3` varchar(255) NOT NULL,
  `pj_h1_1` varchar(255) NOT NULL,
  `pj_h1_2` varchar(255) NOT NULL,
  `pj_h1_3` varchar(255) NOT NULL,
  `award_img` varchar(255) NOT NULL,
  `award_h1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`home_poster`, `home_title`, `home_description`, `home_video`, `home_id`, `pj_img1`, `pj_img2`, `pj_img3`, `pj_des1`, `pj_des2`, `pj_des3`, `pj_h1_1`, `pj_h1_2`, `pj_h1_3`, `award_img`, `award_h1`) VALUES
('Websystemphp/home/1742808360_photo-1525921429624-479b6a26d84d.avif', 'WELCOME', '\"Graduation is a milestone marking the completion of an academic program, celebrating achievements, and transitioning to new opportunities.\"', 'Websystemphp/home/1742808468_Cinematic Graduation Video _ University of Melbourne _ Quinn\'s Graduation Ceremony.mp4', 1, 'Websystemphp/home/1742808565_photo-1656381467726-24acd8f58b5b.avif', 'Websystemphp/home/1742808839_photo-1685270066075-a57813d1f202.avif', 'Websystemphp/home/1742809275_photo-1733458166214-cf834503dd0d.avif', 'A graduation flower symbolizes achievement, growth, and new beginnings, making it a perfect gift to celebrate this special milestone.', 'A graduation bear is a cute and meaningful gift symbolizing pride, success, and the joy of accomplishing a major milestone.', 'Dance the night away under the stars with top DJs and bands.', 'Graduation Flower', 'Graduation Accessories', 'Graduation Decoration', 'Websystemphp/home/1742741370_gettyimages-1429335351-1024x1024.jpg', 'AWARD');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `moment_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `liked_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `moment`
--

CREATE TABLE `moment` (
  `moment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `username` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `moment`
--

INSERT INTO `moment` (`moment_id`, `user_id`, `image_path`, `description`, `uploaded_at`, `username`, `category_id`) VALUES
(40, 1, 'Websystemphp/moment/food(1).jpeg', 'a', '2024-04-18 01:32:35', '', 4),
(41, 1, 'Websystemphp/moment/food_festival.JPG', '好吃\r\n', '2024-04-18 01:35:33', '', 4),
(42, 1, 'Websystemphp/moment/music5.jpeg', '跟我唱歌55开', '2024-04-18 01:35:55', '', 6),
(43, 1, 'Websystemphp/moment/pingpong.jpg', 'PING PONG打赢李忠伟', '2024-04-18 01:36:25', '', 2),
(44, 1, 'Websystemphp/moment/music2.jpeg', '有没有这个女的IG', '2024-04-18 01:36:59', '', 6),
(45, 1, 'Websystemphp/moment/music3.jpeg', '爱了爱了', '2024-04-18 01:41:41', '', 6),
(46, 1, 'Websystemphp/moment/food(4).jpeg', '啊很好吃', '2024-04-18 01:42:34', '', 4),
(47, 1, 'Websystemphp/moment/table_tennis.JPG', '有没有人JIO出来', '2024-04-18 01:46:29', '', 2),
(48, 1, 'Websystemphp/moment/sport.jpeg', '唱跳RAP', '2024-04-18 01:46:50', '', 2),
(49, 42, 'Websystemphp/moment/sport.jpeg', 'a', '2024-04-18 04:23:12', '', 2),
(50, 1, 'Websystemphp/moment/Nitro_Wallpaper_01_3840x2400.jpg', 'aaaaa', '2024-05-07 12:26:40', '', 2),
(51, 63, 'Websystemphp/moment/3.png', '今天恋爱了', '2024-05-10 12:36:56', '', 5),
(52, 1, 'Websystemphp/moment/Dating.jpg', 'meinv', '2024-05-11 15:27:17', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `myprogramo`
--

CREATE TABLE `myprogramo` (
  `id` int(11) NOT NULL,
  `user_name` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `last_ip` varchar(25) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `myprogramo`
--

INSERT INTO `myprogramo` (`id`, `user_name`, `password`, `last_ip`, `last_login`) VALUES
(1, 'dmorton@geekcavecreations.com', '986fb4494b455629e27ba1d1ad8cfdc8', '127.0.0.1', '2017-06-18 06:49:02'),
(2, '', 'd41d8cd98f00b204e9800998ecf8427e', '::1', '2024-04-25 02:15:53');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `card_number` varchar(50) DEFAULT NULL,
  `card_name` varchar(100) DEFAULT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `cvv` varchar(100) DEFAULT NULL,
  `expiry_date` varchar(100) DEFAULT NULL,
  `user_id` int(255) NOT NULL,
  `paypalemail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_method`, `card_number`, `card_name`, `payment_date`, `cvv`, `expiry_date`, `user_id`, `paypalemail`) VALUES
(15, 'credit_card', '1', '1', '2024-04-29 10:07:10', '1', '0000-00-00', 0, ''),
(16, 'credit_card', '1', '1', '2024-04-29 10:11:19', '1', '0000-00-00', 0, ''),
(17, 'credit_card', '1', '1', '2024-04-29 10:11:49', '1', '0000-00-00', 0, ''),
(18, 'credit_card', '1', '1', '2024-04-29 15:24:04', '1', '0000-00-00', 0, ''),
(19, 'credit_card', '1', '1', '2024-04-30 07:13:41', '1', '1', 1, ''),
(20, 'credit_card', '11', '11', '2024-04-30 07:21:32', '11', '11', 1, ''),
(21, 'credit_card', '11', '11', '2024-04-30 07:24:39', '11', '11', 1, ''),
(22, 'credit_card', '11', '11', '2024-04-30 07:26:04', '11', '11', 1, ''),
(23, 'credit_card', '11', '11', '2024-04-30 07:26:36', '11', '11', 1, ''),
(24, 'credit_card', '11', '11', '2024-04-30 07:29:01', '11', '11', 1, ''),
(25, 'credit_card', '11', '11', '2024-04-30 07:34:59', '11', '11', 1, ''),
(26, 'credit_card', '11', '11', '2024-04-30 07:36:52', '11', '11', 1, ''),
(27, 'credit_card', '11', '11', '2024-04-30 07:47:51', '11', '11', 1, ''),
(28, 'credit_card', '1', '1', '2024-04-30 08:08:56', '1', '1', 1, ''),
(29, 'credit_card', '1', '1', '2024-04-30 08:09:23', '1', '1', 1, ''),
(30, 'credit_card', '11111', '111', '2024-04-30 08:13:19', '111', '11', 1, ''),
(31, 'credit_card', '11', '11', '2024-04-30 08:15:00', '11', '11', 1, ''),
(32, 'credit_card', '111', '1111', '2024-04-30 11:42:34', '1111', '11', 1, ''),
(33, 'credit_card', '11', '11', '2024-04-30 13:27:41', '11', '11', 1, ''),
(34, 'credit_card', '1', '1', '2024-04-30 13:28:34', '1', '1', 1, ''),
(35, 'credit_card', '11', '11', '2024-04-30 16:00:59', '11', '11', 1, ''),
(36, 'credit_card', '11', '11', '2024-04-30 16:01:46', '11', '11', 1, ''),
(37, 'credit_card', '111', '11', '2024-04-30 16:04:17', '11', '11', 1, ''),
(38, 'credit_card', '11', '11', '2024-05-01 01:48:28', '11', '11', 1, ''),
(39, 'credit_card', '1111', '111', '2024-05-01 01:51:42', '11', '111', 1, ''),
(40, 'credit_card', '11111', '11111', '2024-05-02 01:31:27', '11111', '1111111', 1, ''),
(41, 'credit_card', '111', '1111', '2024-05-02 01:32:22', '11', '1111111', 1, ''),
(42, 'credit_card', '1', '1', '2024-05-02 01:37:07', '1', '1', 16, ''),
(43, 'credit_card', '1111', '11', '2024-05-02 01:42:42', '11', '1', 1, ''),
(44, 'credit_card', '2', '2', '2024-05-02 01:44:46', '2', '2', 1, ''),
(45, 'credit_card', '111', '11111', '2024-05-02 01:46:23', '111', '11', 1, ''),
(46, 'credit_card', '2', '2', '2024-05-02 01:49:34', '2', '2', 1, ''),
(47, 'credit_card', '2', '2', '2024-05-02 01:50:42', '2', '2', 1, ''),
(48, 'credit_card', '1', '1', '2024-05-02 01:51:15', '1', '1', 1, ''),
(49, 'credit_card', '1', '1', '2024-05-02 01:52:06', '1', '1', 1, ''),
(50, 'credit_card', '1', '11', '2024-05-02 01:52:40', '11', '11', 1, ''),
(51, 'credit_card', '11', '11', '2024-05-02 01:53:46', '11', '11', 1, ''),
(52, 'credit_card', '11', '11', '2024-05-02 02:03:25', '11', '1', 1, ''),
(53, 'credit_card', '1', '1', '2024-05-02 02:07:08', '1', '1', 1, ''),
(54, 'credit_card', 'q', '1', '2024-05-02 02:13:37', '1', '1', 1, ''),
(55, 'credit_card', '1', '1', '2024-05-02 03:46:52', '1', '1', 1, ''),
(56, 'credit_card', '1', '1', '2024-05-02 03:48:53', '1', '1', 1, ''),
(57, 'credit_card', '11', '111', '2024-05-07 12:20:41', '11', '11', 1, ''),
(58, 'credit_card', '11', '11', '2024-05-07 14:13:00', '11', '11', 1, ''),
(59, 'credit_card', '1', '1', '2024-05-08 05:01:35', '1', '1', 1, ''),
(60, 'credit_card', '1', '1', '2024-05-08 05:02:48', '1', '1', 1, ''),
(61, 'credit_card', '1', '1', '2024-05-08 05:02:59', '1', '1', 1, ''),
(62, 'credit_card', '1', '1', '2024-05-08 05:03:10', '1', '1', 1, ''),
(63, 'credit_card', '33', '44', '2024-05-08 05:43:33', '33', '223', 1, ''),
(64, 'credit_card', '2', '1', '2024-05-08 05:45:34', '1', '1', 1, ''),
(65, 'credit_card', '1', '1', '2024-05-08 05:55:50', '1', '1', 1, ''),
(66, 'credit_card', '11', '11', '2024-05-10 06:48:34', '111', '111', 1, ''),
(67, 'credit_card', '1', '11', '2024-05-10 08:23:09', '11', '11', 1, ''),
(68, 'credit_card', '222', '22', '2024-05-10 08:25:31', '222', '222', 1, ''),
(69, 'credit_card', '33', '33', '2024-05-10 08:31:31', '33', '33', 62, ''),
(70, '3', '', '', '2024-05-10 11:44:15', '', '', 1, ''),
(71, '3', '11', '11', '2024-05-10 11:55:53', '111', '11/11', 1, ''),
(72, '3', '1234567-67-45678', 'dfghjkertyui', '2024-05-10 12:34:44', '765', '45/3235', 63, ''),
(73, '3', '1', '1', '2024-05-10 12:43:42', '1', '11', 1, ''),
(74, '3', '1', '1', '2024-05-10 12:48:10', '1', '1', 1, ''),
(75, '3', '', '', '2024-05-10 13:01:04', '', '1', 1, ''),
(76, '3', '11', '11', '2024-05-12 08:33:13', '11', '11', 1, ''),
(77, '3', '2222222222222222', '22', '2024-05-12 15:39:16', '222', '11/2022', 1, ''),
(78, '3', '2222222222222222', '22', '2024-05-13 05:22:04', '222', '11/2022', 1, NULL),
(79, '3', '1234567890101010', '1111', '2024-05-14 04:42:58', '111', '11/2022', 1, NULL),
(80, '3', '1111111111111111', 'o', '2025-03-27 02:43:49', '111', '12/1111', 1, NULL),
(81, '3', '1111111111111111', 'o', '2025-03-28 10:31:03', '111', '11/1111', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_type` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_method`
--

INSERT INTO `payment_method` (`payment_type`, `id`) VALUES
('credit_card', 3),
('PayPal', 4),
('TNG', 5);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spellcheck`
--

CREATE TABLE `spellcheck` (
  `id` int(11) NOT NULL,
  `missspelling` varchar(100) NOT NULL,
  `correction` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `spellcheck`
--

INSERT INTO `spellcheck` (`id`, `missspelling`, `correction`) VALUES
(1, 'shakespear', 'shakespeare'),
(2, 'shakesper', 'shakespeare'),
(3, 'ws', 'william shakespeare'),
(4, 'shakespaer', 'shakespeare'),
(5, 'shakespere', 'shakespeare'),
(6, 'shakepeare', 'shakespeare'),
(7, 'shakeper', 'shakespeare'),
(8, 'willam', 'william'),
(9, 'willaim', 'william'),
(10, 'romoe', 'romeo'),
(11, 'julet', 'juliet'),
(12, 'juleit', 'juliet'),
(13, 'thats', 'that is'),
(89, 'Youa aare', 'you are'),
(88, 'that s', 'that is'),
(87, 'wot s', 'what is'),
(17, 'whats', 'what is'),
(18, 'wot', 'what'),
(19, 'wots', 'what is'),
(86, 'what s', 'what is'),
(21, 'lool', 'lol'),
(27, 'pogram', 'program'),
(23, 'progam', 'program'),
(26, 'progam', 'program'),
(28, 'r', 'are'),
(29, 'u', 'you'),
(30, 'ur', 'your'),
(31, 'v', 'very'),
(32, 'k', 'ok'),
(33, 'np', 'no problem'),
(34, 'ta', 'thank you'),
(35, 'ty', 'thank you'),
(36, 'omg', 'oh my god'),
(37, 'letts', 'lets'),
(38, 'yeah', 'yes'),
(39, 'yeh', 'yes'),
(40, 'portugues', 'portuguese'),
(41, 'hehe', 'lol'),
(42, 'ha', 'lol'),
(43, 'intersting', 'interesting'),
(44, 'qestion', 'question'),
(45, 'elrond hubbard', 'l.ron hubbard'),
(46, 'programm', 'program'),
(47, 'c\'mon', 'come on'),
(48, 'ye', 'yes'),
(49, 'im', 'i am'),
(50, 'fuckahh', 'fucker'),
(51, 'shakespeare bot', 'shakespearebot'),
(52, 'goodf', 'good'),
(53, 'dont', 'do not'),
(54, 'cos', 'because'),
(55, 'cus', 'because'),
(56, 'coz', 'because'),
(57, 'cuz', 'because'),
(58, 'isnt', 'is not'),
(59, 'isn\'t', 'is not'),
(60, 'i\'m', 'i am'),
(61, 'ima', 'i am a'),
(62, 'chheese', 'cheese'),
(63, 'watsup', 'what is up'),
(64, 'let s', 'let us'),
(65, 'he s', 'he is'),
(66, 'she\'s', 'she is'),
(67, 'i ll', 'i will'),
(68, 'they ll', 'they will'),
(69, 'you re', 'you are'),
(70, 'you ve', 'you have'),
(71, 'hy', 'hey'),
(72, 'msician', 'musician'),
(74, 'don t', 'do not'),
(75, 'can t', 'cannot'),
(76, 'favourite', 'favorite'),
(77, 'colour', 'color'),
(78, 'won t', 'will not'),
(79, 'a/s/l', 'asl'),
(80, 'haven t', 'have not'),
(81, 'doesn t', 'does not'),
(82, 'a/s/l/', 'asl'),
(83, 'wht', 'what'),
(84, 'It s been', 'It has been'),
(85, 'its been', 'it has been'),
(90, 'you re', 'you are'),
(91, 'theres', 'there is'),
(92, 'youa re', 'you are'),
(93, 'youa aare', 'you are'),
(94, 'wath', 'what'),
(95, 'waths', 'what is'),
(96, 'hy', 'hey'),
(97, 'oke', 'ok'),
(98, 'okay', 'ok'),
(99, 'errm', 'erm'),
(100, 'aare', 'are'),
(101, 'shakespeare bot', 'william shakespeare'),
(102, 'shakespearebot', 'william shakespeare'),
(103, 'werwerwer', 'war'),
(109, 'program o', 'programo'),
(106, 'ddddddddd', 'ddddddddd'),
(107, 'ddddddddd', 'ddddddddd'),
(108, 'fgfgfgfg', 'fgfgfgfg'),
(110, 'program-o', 'programo'),
(111, 'fav', 'favorite'),
(112, 'FUCK', 'FUCK'),
(113, 'U', 'YOU');

-- --------------------------------------------------------

--
-- Table structure for table `srai_lookup`
--

CREATE TABLE `srai_lookup` (
  `id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `pattern` text NOT NULL,
  `template_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci COMMENT='Contains previously stored SRAI calls';

-- --------------------------------------------------------

--
-- Table structure for table `undefined_defaults`
--

CREATE TABLE `undefined_defaults` (
  `id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `pattern` text NOT NULL,
  `template` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unknown_inputs`
--

CREATE TABLE `unknown_inputs` (
  `id` int(11) NOT NULL,
  `bot_id` int(11) NOT NULL,
  `input` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `reset_token` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `softskill` int(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `failed_attempts` int(11) DEFAULT 0,
  `last_attempt_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `user_img`, `activation_code`, `is_active`, `reset_token`, `address`, `postcode`, `gender`, `softskill`, `city`, `state`, `failed_attempts`, `last_attempt_time`) VALUES
(1, 'kah seang', '$2y$10$uXxn7.BAYE1b551aH2/HxuCiGjU9nfWvfiujUcxHuuhtdlKCGFmJ6', 'tankahseang05@gmail.com', 'Websystemphp/profile_images/3.png', NULL, 0, 'b57894745c997d1bcf4b53ecbb1e1622', 'ABC dui mian', 11111, 'female', 14534, 'KEDAH', 'AAA', 0, NULL),
(73, 'kang', '$2y$10$uyjNQQbUoCmKN8PhElcX7O/pfkS7LyF3GkYtKKkFXpGh/PYu4y5Yy', 'test@gmail.com', NULL, 'fce74c44acbab8a4cb01e453848ca3c5', 0, NULL, '', 0, '', 0, '', '', 3, '2024-05-14 14:01:39'),
(74, '2306586', '$2y$10$JIYGbmh9gu9EEjuhbozPCul2yCwNbWuhJO1GIX8qTTxrZXTRHJqim', 'ongwengkang@gmail.com', NULL, '8a40704e2e289a296edf988fe7f3e40c', 0, NULL, '', 0, '', 0, '', '', 0, NULL),
(75, '2306586', '$2y$10$vj5WHH4w5lO.gZXaWUWVPunNp.j.h.JuDnCL9.6LwP5e.Q0QWp8Iy', 'anpai@gmail.com', NULL, '006dd3c92f32b8c93a5c63678b0df2b9', 0, NULL, '', 0, '', 0, '', '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_backup`
--

CREATE TABLE `users_backup` (
  `user_id` int(11) NOT NULL DEFAULT 0,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `user_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_backup`
--

INSERT INTO `users_backup` (`user_id`, `username`, `password`, `email`, `user_img`) VALUES
(1, 'KANG', '$2y$10$2OkIXC5zywta.Y6RlE1tK.tPcs7W61okQrL0vm4lNPeUD2giCqe2C', 'ongwengkang@gmail.com', 'Websystemphp/talkshow.jpeg'),
(32, 'Hi', '$2y$10$61e4AML5FnQBxbNGGsrV7OsacvaRiwLgp86IZV/Z8MAZkhIbfbE.G', 'tankahseang05@gmail.com', 'Websystemphp/profile_images/music1.jpeg'),
(37, '2306586', '$2y$10$dGyJt08vv/X.iBBhQG5rfe5ry4mdfKz0mVSGB16H/XzHxQhwptueC', 'test@gmail.com', ''),
(38, 'nuibigelas', '$2y$10$xZ6eLH4CCaAqhLayplwyWOUIMMMmUGgZ7XLH/eaPR2czFH0N4/hb.', 'a@gmail.com', ''),
(39, 'kang', '$2y$10$QERCU47aRYhItqXcxFV90.h914tII1XLy9vDRZPEcnfQUdTaKEAsa', 'abc@gmail.com', ''),
(41, 'aaa', '$2y$10$hcD0VTtlnzxWphWOiUNrtuXTFGRZaSL9dBWiD0uBEAEO5PVQ7fMe.', 'a1@gmail.com', ''),
(42, 'aaaaa', '$2y$10$cMYc9LayoJ5zUFnK4/qSZ.JojCGjBLBeZsyLsUtuTsQUPPOCKsmty', 'a2@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `wordcensor`
--

CREATE TABLE `wordcensor` (
  `censor_id` int(11) NOT NULL,
  `word_to_censor` varchar(50) NOT NULL,
  `replace_with` varchar(50) NOT NULL DEFAULT '****',
  `bot_exclude` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `wordcensor`
--

INSERT INTO `wordcensor` (`censor_id`, `word_to_censor`, `replace_with`, `bot_exclude`) VALUES
(1, 'SHIT', 'S***', ''),
(2, 'fuck', 'f***', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `aiml`
--
ALTER TABLE `aiml`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `topic` (`topic`),
  ADD KEY `thatpattern` (`thatpattern`),
  ADD KEY `pattern` (`pattern`),
  ADD KEY `bot_id` (`bot_id`);

--
-- Indexes for table `aiml_userdefined`
--
ALTER TABLE `aiml_userdefined`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `pattern` (`pattern`),
  ADD KEY `thatpattern` (`thatpattern`),
  ADD KEY `bot_id` (`bot_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`booking_detail_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `botpersonality`
--
ALTER TABLE `botpersonality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `botname` (`bot_id`,`name`);

--
-- Indexes for table `bots`
--
ALTER TABLE `bots`
  ADD PRIMARY KEY (`bot_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `cart_ibfk_1` (`user_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_properties`
--
ALTER TABLE `client_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `moment_id` (`moment_id`),
  ADD KEY `comments_ibfk_2` (`user_id`);

--
-- Indexes for table `conversation_log`
--
ALTER TABLE `conversation_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookies`
--
ALTER TABLE `cookies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`favorite_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `favorites_ibfk_1` (`user_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`home_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`),
  ADD KEY `moment_id` (`moment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `moment`
--
ALTER TABLE `moment`
  ADD PRIMARY KEY (`moment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `myprogramo`
--
ALTER TABLE `myprogramo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spellcheck`
--
ALTER TABLE `spellcheck`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `srai_lookup`
--
ALTER TABLE `srai_lookup`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_id` (`template_id`),
  ADD KEY `pattern` (`bot_id`,`pattern`(64));

--
-- Indexes for table `undefined_defaults`
--
ALTER TABLE `undefined_defaults`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unknown_inputs`
--
ALTER TABLE `unknown_inputs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `wordcensor`
--
ALTER TABLE `wordcensor`
  ADD PRIMARY KEY (`censor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `aiml`
--
ALTER TABLE `aiml`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aiml_userdefined`
--
ALTER TABLE `aiml_userdefined`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `booking_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `botpersonality`
--
ALTER TABLE `botpersonality`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bots`
--
ALTER TABLE `bots`
  MODIFY `bot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `client_properties`
--
ALTER TABLE `client_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `conversation_log`
--
ALTER TABLE `conversation_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cookies`
--
ALTER TABLE `cookies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `favorite_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moment`
--
ALTER TABLE `moment`
  MODIFY `moment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `myprogramo`
--
ALTER TABLE `myprogramo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spellcheck`
--
ALTER TABLE `spellcheck`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `srai_lookup`
--
ALTER TABLE `srai_lookup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `undefined_defaults`
--
ALTER TABLE `undefined_defaults`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unknown_inputs`
--
ALTER TABLE `unknown_inputs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `wordcensor`
--
ALTER TABLE `wordcensor`
  MODIFY `censor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `payment` (`payment_id`),
  ADD CONSTRAINT `booking_details_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`),
  ADD CONSTRAINT `booking_details_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`moment_id`) REFERENCES `moment` (`moment_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`moment_id`) REFERENCES `moment` (`moment_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
