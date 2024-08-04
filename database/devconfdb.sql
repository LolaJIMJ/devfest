-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2024 at 01:07 AM
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
-- Database: `devconfdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(45) DEFAULT NULL,
  `admin_password` varchar(200) DEFAULT NULL,
  `admin_lastloggedin` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_password`, `admin_lastloggedin`) VALUES
(1, 'adeniji@gmail.com', '$2y$10$bt2jdHZuBGQTj3Bd7BGQvO.zgBklb4PA8Jde47gjYxuMw47ITna.q', NULL),
(2, 'ololade@gmail.com', '$2y$10$ZFC9xfVJDVKLXum9BPO5kuWJkk8vhh0bZPeqNY0ChIo6DL5kSY8Ra', NULL),
(3, 'o@gmail.com', '$2y$10$YNCTlLbrjko41BhfQ.xRIuMCUAmlrXpkGRl4Qfp.iRbdF7SXtWq9i\r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `breakout_topics`
--

CREATE TABLE `breakout_topics` (
  `topic_id` int(11) NOT NULL,
  `topic_name` varchar(100) DEFAULT NULL,
  `topic_image` varchar(200) NOT NULL,
  `topic_level` int(11) DEFAULT NULL,
  `topic_status` enum('1','0') DEFAULT NULL,
  `topic_amt` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `breakout_topics`
--

INSERT INTO `breakout_topics` (`topic_id`, `topic_name`, `topic_image`, `topic_level`, `topic_status`, `topic_amt`) VALUES
(2, 'dashboard and intermediate', '17138878161613629297.jpg', 2, '1', 10000),
(3, 'github', '1713887850544870740.jpg', 1, '1', 1200),
(4, 'giitttt', '1713888090924945261.jpg', 3, '1', 200),
(5, 'github3', '17139630501892824764.jpg', 1, '1', 1200),
(6, 'Software Development', '17141463991072595672.jpg', 3, '1', 20000),
(7, 'Software Development and Leadership Session', '1714146808280178537.jpg', 2, '1', 25000),
(8, 'Software Development and Leadership Session', '17141468081103343424.jpg', 2, '1', 25000),
(9, 'Ajax lesson', '1714487793453772392.jpg', 4, '1', 5000),
(10, 'software class', '17212358701375862801.png', 2, '0', 2700);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_id` int(11) NOT NULL,
  `level_name` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_id`, `level_name`) VALUES
(1, 'Junior Developer'),
(2, 'Intermediate Developer'),
(3, 'Senior Developer'),
(4, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `lga`
--

CREATE TABLE `lga` (
  `lga_id` int(11) NOT NULL,
  `lga_name` varchar(60) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `lga`
--

INSERT INTO `lga` (`lga_id`, `lga_name`, `state_id`) VALUES
(1, 'Aba North', 1),
(2, 'Aba South', 1),
(3, 'Arochukwu', 1),
(4, 'Bende', 1),
(5, 'Ikwuano', 1),
(6, 'Isiala-Ngwa North', 1),
(7, 'Isiala-Ngwa South', 1),
(8, 'Isikwuato', 1),
(9, 'Nneochi', 1),
(10, 'Obi-Ngwa', 1),
(11, 'Ohafia', 1),
(12, 'Osisioma', 1),
(13, 'Ugwunagbo', 1),
(14, 'Ukwa East', 1),
(15, 'Ukwa West', 1),
(16, 'Umuahia North', 1),
(17, 'Umuahia South', 1),
(18, 'Demsa', 2),
(19, 'Fufore', 2),
(20, 'Genye', 2),
(21, 'Girei', 2),
(22, 'Gombi', 2),
(23, 'guyuk', 2),
(24, 'Hong', 2),
(25, 'Jada', 2),
(26, 'Jimeta', 2),
(27, 'Lamurde', 2),
(28, 'Madagali', 2),
(29, 'Maiha', 2),
(30, 'Mayo Belwa', 2),
(31, 'Michika', 2),
(32, 'Mubi North', 2),
(33, 'Mubi South', 2),
(34, 'Numan', 2),
(35, 'Shelleng', 2),
(36, 'Song', 2),
(37, 'Toungo', 2),
(38, 'Yola', 2),
(39, 'Abak', 3),
(40, 'Eastern-Obolo', 3),
(41, 'Eket', 3),
(42, 'Ekpe-Atani', 3),
(43, 'Essien-Udim', 3),
(44, 'Esit Ekit', 3),
(45, 'Etim-Ekpo', 3),
(46, 'Etinam', 3),
(47, 'Ibeno', 3),
(48, 'Ibesikp-Asitan', 3),
(49, 'Ibiono-Ibom', 3),
(50, 'Ika', 3),
(51, 'Ikono', 3),
(52, 'Ikot-Abasi', 3),
(53, 'Ikot-Ekpene', 3),
(54, 'Ini', 3),
(55, 'Itu', 3),
(56, 'Mbo', 3),
(57, 'Mkpae-Enin', 3),
(58, 'Nsit-Ibom', 3),
(59, 'Nsit-Ubium', 3),
(60, 'Obot-Akara', 3),
(61, 'Okobo', 3),
(62, 'Onna', 3),
(63, 'Oron', 3),
(64, 'Oro-Anam', 3),
(65, 'Udung-Uko', 3),
(66, 'Ukanefun', 3),
(67, 'Uru Offong Oruko', 3),
(68, 'Uruan', 3),
(69, 'Uquo Ibene', 3),
(70, 'Uyo', 3),
(71, 'Aguata', 4),
(72, 'Anambra', 4),
(73, 'Anambra West', 4),
(74, 'Anocha', 4),
(75, 'Awka- North', 4),
(76, 'Awka-South', 4),
(77, 'Ayamelum', 4),
(78, 'Dunukofia', 4),
(79, 'Ekwusigo', 4),
(80, 'Idemili-North', 4),
(81, 'Idemili-South', 4),
(82, 'Ihiala', 4),
(83, 'Njikoka', 4),
(84, 'Nnewi-North', 4),
(85, 'Nnewi-South', 4),
(86, 'Ogbaru', 4),
(87, 'Onisha North', 4),
(88, 'Onitsha South', 4),
(89, 'Orumba North', 4),
(90, 'Orumba South', 4),
(91, 'Oyi', 4),
(92, 'Alkaleri', 5),
(93, 'Bauchi', 5),
(94, 'Bogoro', 5),
(95, 'Damban', 5),
(96, 'Darazo', 5),
(97, 'Dass', 5),
(98, 'Gamawa', 5),
(99, 'Ganjuwa', 5),
(100, 'Giade', 5),
(101, 'Itas/Gadau', 5),
(102, 'Jama\'are', 5),
(103, 'Katagum', 5),
(104, 'Kirfi', 5),
(105, 'Misau', 5),
(106, 'Ningi', 5),
(107, 'Shira', 5),
(108, 'Tafawa-Balewa', 5),
(109, 'Toro', 5),
(110, 'Warji', 5),
(111, 'Zaki', 5),
(112, 'Brass', 6),
(113, 'Ekerernor', 6),
(114, 'Kolokuma/Opokuma', 6),
(115, 'Nembe', 6),
(116, 'Ogbia', 6),
(117, 'Sagbama', 6),
(118, 'Southern-Ijaw', 6),
(119, 'Yenegoa', 6),
(120, 'Kembe', 6),
(121, 'Ado', 7),
(122, 'Agatu', 7),
(123, 'Apa', 7),
(124, 'Buruku', 7),
(125, 'Gboko', 7),
(126, 'Guma', 7),
(127, 'Gwer-East', 7),
(128, 'Gwer-West', 7),
(129, 'Katsina-Ala', 7),
(130, 'Konshisha', 7),
(131, 'Kwande', 7),
(132, 'Logo', 7),
(133, 'Makurdi', 7),
(134, 'Obi', 7),
(135, 'Ogbadibo', 7),
(136, 'Ohimini', 7),
(137, 'Oju', 7),
(138, 'Okpokwu', 7),
(139, 'Otukpo', 7),
(140, 'Tarkar', 7),
(141, 'Vandeikya', 7),
(142, 'Ukum', 7),
(143, 'Ushongo', 7),
(144, 'Abadan', 8),
(145, 'Askira-Uba', 8),
(146, 'Bama', 8),
(147, 'Bayo', 8),
(148, 'Biu', 8),
(149, 'Chibok', 8),
(150, 'Damboa', 8),
(151, 'Dikwa', 8),
(152, 'Gubio', 8),
(153, 'Guzamala', 8),
(154, 'Gwoza', 8),
(155, 'Hawul', 8),
(156, 'Jere', 8),
(157, 'Kaga', 8),
(158, 'Kala/Balge', 8),
(159, 'Kukawa', 8),
(160, 'Konduga', 8),
(161, 'Kwaya-Kusar', 8),
(162, 'Mafa', 8),
(163, 'Magumeri', 8),
(164, 'Maiduguri', 8),
(165, 'Marte', 8),
(166, 'Mobbar', 8),
(167, 'Monguno', 8),
(168, 'Ngala', 8),
(169, 'Nganzai', 8),
(170, 'Shani', 8),
(171, 'Abi', 9),
(172, 'Akamkpa', 9),
(173, 'Akpabuyo', 9),
(174, 'Bakassi', 9),
(175, 'Bekwara', 9),
(176, 'Biasi', 9),
(177, 'Boki', 9),
(178, 'Calabar-Municipal', 9),
(179, 'Calabar-South', 9),
(180, 'Etunk', 9),
(181, 'Ikom', 9),
(182, 'Obantiku', 9),
(183, 'Ogoja', 9),
(184, 'Ugep North', 9),
(185, 'Yakurr', 9),
(186, 'Yala', 9),
(187, 'Aniocha North', 10),
(188, 'Aniocha South', 10),
(189, 'Bomadi', 10),
(190, 'Burutu', 10),
(191, 'Ethiope East', 10),
(192, 'Ethiope West', 10),
(193, 'Ika North East', 10),
(194, 'Ika South', 10),
(195, 'Isoko North', 10),
(196, 'Isoko South', 10),
(197, 'Ndokwa East', 10),
(198, 'Ndokwa West', 10),
(199, 'Okpe', 10),
(200, 'Oshimili North', 10),
(201, 'Oshimili South', 10),
(202, 'Patani', 10),
(203, 'Sapele', 10),
(204, 'Udu', 10),
(205, 'Ughilli North', 10),
(206, 'Ughilli South', 10),
(207, 'Ukwuani', 10),
(208, 'Uvwie', 10),
(209, 'Warri Central', 10),
(210, 'Warri North', 10),
(211, 'Warri South', 10),
(212, 'Abakaliki', 11),
(213, 'Ofikpo North', 11),
(214, 'Ofikpo South', 11),
(215, 'Ebonyi', 11),
(216, 'Ezza North', 11),
(217, 'Ezza South', 11),
(218, 'ikwo', 11),
(219, 'Ishielu', 11),
(220, 'Ivo', 11),
(221, 'Izzi', 11),
(222, 'Ohaukwu', 11),
(223, 'Ohaozara', 11),
(224, 'Onicha', 11),
(225, 'Akoko Edo', 12),
(226, 'Egor', 12),
(227, 'Esan Central', 12),
(228, 'Esan North East', 12),
(229, 'Esan South East', 12),
(230, 'Esan West', 12),
(231, 'Etsako-Central', 12),
(232, 'Etsako-West', 12),
(233, 'Igueben', 12),
(234, 'Ikpoba-Okha', 12),
(235, 'Oredo', 12),
(236, 'Orhionmwon', 12),
(237, 'Ovia North East', 12),
(238, 'Ovia South West', 12),
(239, 'owan east', 12),
(240, 'Owan West', 12),
(241, 'Umunniwonde', 12),
(242, 'Ado Ekiti', 13),
(243, 'Aiyedire', 13),
(244, 'Efon', 13),
(245, 'Ekiti-East', 13),
(246, 'Ekiti-South West', 13),
(247, 'Ekiti West', 13),
(248, 'Emure', 13),
(249, 'Ido Osi', 13),
(250, 'Ijero', 13),
(251, 'Ikere', 13),
(252, 'Ikole', 13),
(253, 'Ilejemeta', 13),
(254, 'Irepodun/Ifelodun', 13),
(255, 'Ise Orun', 13),
(256, 'Moba', 13),
(257, 'Oye', 13),
(258, 'Aninri', 14),
(259, 'Awgu', 14),
(260, 'Enugu East', 14),
(261, 'Enugu North', 14),
(262, 'Enugu South', 14),
(263, 'Ezeagu', 14),
(264, 'Igbo Etiti', 14),
(265, 'Igbo Eze North', 14),
(266, 'Igbo Eze South', 14),
(267, 'Isi Uzo', 14),
(268, 'Nkanu East', 14),
(269, 'Nkanu West', 14),
(270, 'Nsukka', 14),
(271, 'Oji-River', 14),
(272, 'Udenu', 14),
(273, 'Udi', 14),
(274, 'Uzo Uwani', 14),
(275, 'Akko', 15),
(276, 'Balanga', 15),
(277, 'Billiri', 15),
(278, 'Dukku', 15),
(279, 'Funakaye', 15),
(280, 'Gombe', 15),
(281, 'Kaltungo', 15),
(282, 'Kwami', 15),
(283, 'Nafada/Bajoga', 15),
(284, 'Shomgom', 15),
(285, 'Yamltu/Deba', 15),
(286, 'Ahiazu-Mbaise', 16),
(287, 'Ehime-Mbano', 16),
(288, 'Ezinihtte', 16),
(289, 'Ideato North', 16),
(290, 'Ideato South', 16),
(291, 'Ihitte/Uboma', 16),
(292, 'Ikeduru', 16),
(293, 'Isiala-Mbano', 16),
(294, 'Isu', 16),
(295, 'Mbaitoli', 16),
(296, 'Ngor-Okpala', 16),
(297, 'Njaba', 16),
(298, 'Nkwerre', 16),
(299, 'Nwangele', 16),
(300, 'obowo', 16),
(301, 'Oguta', 16),
(302, 'Ohaji-Eggema', 16),
(303, 'Okigwe', 16),
(304, 'Onuimo', 16),
(305, 'Orlu', 16),
(306, 'Orsu', 16),
(307, 'Oru East', 16),
(308, 'Oru West', 16),
(309, 'Owerri Municipal', 16),
(310, 'Owerri North', 16),
(311, 'Owerri West', 16),
(312, 'Auyu', 17),
(313, 'Babura', 17),
(314, 'Birnin Kudu', 17),
(315, 'Birniwa', 17),
(316, 'Bosuwa', 17),
(317, 'Buji', 17),
(318, 'Dutse', 17),
(319, 'Gagarawa', 17),
(320, 'Garki', 17),
(321, 'Gumel', 17),
(322, 'Guri', 17),
(323, 'Gwaram', 17),
(324, 'Gwiwa', 17),
(325, 'Hadejia', 17),
(326, 'Jahun', 17),
(327, 'Kafin Hausa', 17),
(328, 'Kaugama', 17),
(329, 'Kazaure', 17),
(330, 'Kirikasanuma', 17),
(331, 'Kiyawa', 17),
(332, 'Maigatari', 17),
(333, 'Malam Maduri', 17),
(334, 'Miga', 17),
(335, 'Ringim', 17),
(336, 'Roni', 17),
(337, 'Sule Tankarkar', 17),
(338, 'Taura', 17),
(339, 'Yankwashi', 17),
(340, 'Birnin-Gwari', 18),
(341, 'Chikun', 18),
(342, 'Giwa', 18),
(343, 'Gwagwada', 18),
(344, 'Igabi', 18),
(345, 'Ikara', 18),
(346, 'Jaba', 18),
(347, 'Jema\'a', 18),
(348, 'Kachia', 18),
(349, 'Kaduna North', 18),
(350, 'Kagarko', 18),
(351, 'Kajuru', 18),
(352, 'Kaura', 18),
(353, 'Kauru', 18),
(354, 'Koka/Kawo', 18),
(355, 'Kubah', 18),
(356, 'Kudan', 18),
(357, 'Lere', 18),
(358, 'Makarfi', 18),
(359, 'Sabon Gari', 18),
(360, 'Sanga', 18),
(361, 'Sabo', 18),
(362, 'Tudun-Wada/Makera', 18),
(363, 'Zango-Kataf', 18),
(364, 'Zaria', 18),
(365, 'Ajingi', 19),
(366, ' Albasu', 19),
(367, 'Bagwai', 19),
(368, 'Bebeji', 19),
(369, 'Bichi', 19),
(370, 'Bunkure', 19),
(371, 'Dala', 19),
(372, 'Dambatta', 19),
(373, 'Dawakin Kudu', 19),
(374, 'Dawakin Tofa', 19),
(375, 'Doguwa', 19),
(376, 'Fagge', 19),
(377, 'Gabasawa', 19),
(378, 'Garko', 19),
(379, 'Garun-Mallam', 19),
(380, 'Gaya', 19),
(381, 'Gezawa', 19),
(382, 'Gwale', 19),
(383, 'Gwarzo', 19),
(384, 'Kabo', 19),
(385, 'Kano Municipal', 19),
(386, 'Karaye', 19),
(387, 'Kibiya', 19),
(388, 'Kiru', 19),
(389, 'Kumbotso', 19),
(390, 'Kunchi', 19),
(391, 'Kura', 19),
(392, 'Madobi', 19),
(393, 'Makoda', 19),
(394, 'Minjibir', 19),
(395, 'Nasarawa', 19),
(396, 'Rano', 19),
(397, 'Rimin Gado', 19),
(398, 'Rogo', 19),
(399, 'Shanono', 19),
(400, 'Sumaila', 19),
(401, 'Takai', 19),
(402, 'Tarauni', 19),
(403, 'Tofa', 19),
(404, 'Tsanyawa', 19),
(405, 'Tudun Wada', 19),
(406, 'Ngogo', 19),
(407, 'Warawa', 19),
(408, 'Wudil', 19),
(409, 'Bakori', 20),
(410, 'Batagarawa', 20),
(411, 'Batsari', 20),
(412, 'Baure', 20),
(413, 'Bindawa', 20),
(414, 'Charanchi', 20),
(415, 'Danja', 20),
(416, 'Danjume', 20),
(417, 'Dan-Musa', 20),
(418, 'Daura', 20),
(419, 'Dutsi', 20),
(420, 'Dutsinma', 20),
(421, 'Faskari', 20),
(422, 'Funtua', 20),
(423, 'Ingara', 20),
(424, 'Jibia', 20),
(425, 'Kafur', 20),
(426, 'Kaita', 20),
(427, 'Kankara', 20),
(428, 'Kankia', 20),
(429, 'Katsina', 20),
(430, 'Kurfi', 20),
(431, 'Kusada', 20),
(432, 'Mai Adua', 20),
(433, 'Malumfashi', 20),
(434, 'Mani', 20),
(435, 'Mashi', 20),
(436, 'Matazu', 20),
(437, 'Musawa', 20),
(438, 'Rimi', 20),
(439, 'Sabuwa', 20),
(440, 'Safana', 20),
(441, 'Sandamu', 20),
(442, 'Zango', 20),
(443, 'Aleira', 21),
(444, 'Arewa', 21),
(445, 'Argungu', 21),
(446, 'Augie', 21),
(447, 'Bagudo', 21),
(448, 'Birnin-Kebbi', 21),
(449, 'Bumza', 21),
(450, 'Dandi', 21),
(451, 'Danko', 21),
(452, 'Fakai', 21),
(453, 'Gwandu', 21),
(454, 'Jega', 21),
(455, 'Kalgo', 21),
(456, 'Koko-Besse', 21),
(457, 'Maiyama', 21),
(458, 'Ngaski', 21),
(459, 'Sakaba', 21),
(460, 'Shanga', 21),
(461, 'Suru', 21),
(462, 'Wasagu', 21),
(463, 'Yauri', 21),
(464, 'Zuru', 21),
(465, 'Adavi', 22),
(466, 'Ajaokuta', 22),
(467, 'Ankpa', 22),
(468, 'Bassa', 22),
(469, 'Dekina', 22),
(470, 'Ibaji', 22),
(471, 'Idah', 22),
(472, 'Igalamela', 22),
(473, 'Ijumu', 22),
(474, 'Kabba/Bunu', 22),
(475, 'Kogi', 22),
(476, 'Lokoja', 22),
(477, 'Mopa-Muro-Mopi', 22),
(478, 'Ofu', 22),
(479, 'Ogori/Magongo', 22),
(480, 'Okehi', 22),
(481, 'Okene', 22),
(482, 'Olamaboro', 22),
(483, 'Omala', 22),
(484, 'Oyi', 22),
(485, 'Yagba-East', 22),
(486, 'Yagba-West', 22),
(487, 'Asa', 23),
(488, 'Baruten', 23),
(489, 'Edu', 23),
(490, 'Ekiti', 23),
(491, 'Ifelodun', 23),
(492, 'Ilorin East', 23),
(493, 'Ilorin South', 23),
(494, 'Ilorin West', 23),
(495, 'Irepodun', 23),
(496, 'Isin', 23),
(497, 'Kaiama', 23),
(498, 'Moro', 23),
(499, 'Offa', 23),
(500, 'Oke-Ero', 23),
(501, 'Oyun', 23),
(502, 'Pategi', 23),
(503, 'Agege', 24),
(504, 'Ajeromi-Ifelodun', 24),
(505, 'Alimosho', 24),
(506, 'Amuwo-Odofin', 24),
(507, 'Apapa', 24),
(508, 'Bagagry', 24),
(509, 'Epe', 24),
(510, 'Eti-Osa', 24),
(511, 'Ibeju-Lekki', 24),
(512, 'Ifako-Ijaiye', 24),
(513, 'Ikeja', 24),
(514, 'Ikorodu', 24),
(515, 'Kosofe', 24),
(516, 'Lagos-Island', 24),
(517, 'Lagos-Mainland', 24),
(518, 'Mushin', 24),
(519, 'Ojo', 24),
(520, 'Oshodi-Isolo', 24),
(521, 'Shomolu', 24),
(522, 'Suru-Lere', 24),
(523, 'Akwanga', 25),
(524, 'Awe', 25),
(525, 'Doma', 25),
(526, 'Karu', 25),
(527, 'Keana', 25),
(528, 'Keffi', 25),
(529, 'Kokona', 25),
(530, 'Lafia', 25),
(531, 'Nassarawa', 25),
(532, 'Nassarawa Eggor', 25),
(533, 'Obi', 25),
(534, 'Toto', 25),
(535, 'Wamba', 25),
(536, 'Agaie', 26),
(537, 'Agwara', 26),
(538, 'Bida', 26),
(539, 'Borgu', 26),
(540, 'Bosso', 26),
(541, 'Chanchaga', 26),
(542, 'Edati', 26),
(543, 'Gbako', 26),
(544, 'Gurara', 26),
(545, 'Katcha', 26),
(546, 'Kontagora', 26),
(547, 'Lapai', 26),
(548, 'Lavum', 26),
(549, 'Magama', 26),
(550, 'Mariga', 26),
(551, 'Mashegu', 26),
(552, 'Mokwa', 26),
(553, 'Muya', 26),
(554, 'Paikoro', 26),
(555, 'Rafi', 26),
(556, 'Rajau', 26),
(557, 'Shiroro', 26),
(558, 'Suleja', 26),
(559, 'Tafa', 26),
(560, 'Wushishi', 26),
(561, 'Abeokuta -North', 27),
(562, 'Abeokuta -South', 27),
(563, 'Ado-Odu/Ota', 27),
(564, 'Yewa-North', 27),
(565, 'Yewa-South', 27),
(566, 'Ewekoro', 27),
(567, 'Ifo', 27),
(568, 'Ijebu East', 27),
(569, 'Ijebu North', 27),
(570, 'Ijebu North-East', 27),
(571, 'Ijebu-Ode', 27),
(572, 'Ikenne', 27),
(573, 'Imeko-Afon', 27),
(574, 'Ipokia', 27),
(575, 'Obafemi -Owode', 27),
(576, 'Odeda', 27),
(577, 'Odogbolu', 27),
(578, 'Ogun-Water Side', 27),
(579, 'Remo-North', 27),
(580, 'Shagamu', 27),
(581, 'Akoko-North-East', 28),
(582, 'Akoko-North-West', 28),
(583, 'Akoko-South-West', 28),
(584, 'Akoko-South-East', 28),
(585, 'Akure- South', 28),
(586, 'Akure-North', 28),
(587, 'Ese-Odo', 28),
(588, 'Idanre', 28),
(589, 'Ifedore', 28),
(590, 'Ilaje', 28),
(591, 'Ile-Oluji-Okeigbo', 28),
(592, 'Irele', 28),
(593, 'Odigbo', 28),
(594, 'Okitipupa', 28),
(595, 'Ondo-West', 28),
(596, 'Ondo East', 28),
(597, 'Ose', 28),
(598, 'Owo', 28),
(599, 'Atakumosa', 29),
(600, 'Atakumosa East', 29),
(601, 'Ayeda-Ade', 29),
(602, 'Ayedire', 29),
(603, 'Boluwaduro', 29),
(604, 'Boripe', 29),
(605, 'Ede', 29),
(606, 'Ede North', 29),
(607, 'Egbedore', 29),
(608, 'Ejigbo', 29),
(609, 'Ife', 29),
(610, 'Ife East', 29),
(611, 'Ife North', 29),
(612, 'Ife South', 29),
(613, 'Ifedayo', 29),
(614, 'Ifelodun', 29),
(615, 'Ila', 29),
(616, 'Ilesha', 29),
(617, 'Ilesha-West', 29),
(618, 'Irepodun', 29),
(619, 'Irewole', 29),
(620, 'Isokun', 29),
(621, 'Iwo', 29),
(622, 'Obokun', 29),
(623, 'Odo-Otin', 29),
(624, 'Ola Oluwa', 29),
(625, 'Olorunda', 29),
(626, 'Ori-Ade', 29),
(627, 'Orolu', 29),
(628, 'Osogbo', 29),
(629, 'Afijio', 30),
(630, 'Akinyele', 30),
(631, 'Atiba', 30),
(632, 'Atisbo', 30),
(633, 'Egbeda', 30),
(634, 'Ibadan-Central', 30),
(635, 'Ibadan-North-East', 30),
(636, 'Ibadan-North-West', 30),
(637, 'Ibadan-South-East', 30),
(638, 'Ibadan-South West', 30),
(639, 'Ibarapa-Central', 30),
(640, 'Ibarapa-East', 30),
(641, 'Ibarapa-North', 30),
(642, 'Ido', 30),
(643, 'Ifedayo', 30),
(644, 'Ifeloju', 30),
(645, 'Irepo', 30),
(646, 'Iseyin', 30),
(647, 'Itesiwaju', 30),
(648, 'Iwajowa', 30),
(649, 'Kajola', 30),
(650, 'Lagelu', 30),
(651, 'Odo-Oluwa', 30),
(652, 'Ogbomoso-North', 30),
(653, 'Ogbomosho-South', 30),
(654, 'Olorunsogo', 30),
(655, 'Oluyole', 30),
(656, 'Ona-Ara', 30),
(657, 'Orelope', 30),
(658, 'Ori-Ire', 30),
(659, 'Oyo East', 30),
(660, 'Oyo West', 30),
(661, 'saki east', 30),
(662, 'Saki West', 30),
(663, 'Surulere', 30),
(664, 'Barkin Ladi', 31),
(665, 'Bassa', 31),
(666, 'Bokkos', 31),
(667, 'Jos-East', 31),
(668, 'Jos-South', 31),
(669, 'Jos-North', 31),
(670, 'Kanam', 31),
(671, 'Kanke', 31),
(672, 'Langtang North', 31),
(673, 'Langtang South', 31),
(674, 'Mangu', 31),
(675, 'Mikang', 31),
(676, 'Pankshin', 31),
(677, 'Quan\'pan', 31),
(678, 'Riyom', 31),
(679, 'Shendam', 31),
(680, 'Wase', 31),
(681, 'Abua/Odual', 32),
(682, 'Ahoada East', 32),
(683, 'Ahoada West', 32),
(684, 'Akukutoru', 32),
(685, 'Andoni', 32),
(686, 'Asari-Toro', 32),
(687, 'Bonny', 32),
(688, 'Degema', 32),
(689, 'Eleme', 32),
(690, 'Emuoha', 32),
(691, 'Etche', 32),
(692, 'Gokana', 32),
(693, 'Ikwerre', 32),
(694, 'Khana', 32),
(695, 'Obio/Akpor', 32),
(696, 'Ogba/Egbama/Ndoni', 32),
(697, 'Ogu/Bolo', 32),
(698, 'Okrika', 32),
(699, 'Omuma', 32),
(700, 'Opobo/Nkoro', 32),
(701, 'Oyigbo', 32),
(702, 'Port-Harcourt', 32),
(703, 'Tai', 32),
(704, 'Binji', 33),
(705, 'Bodinga', 33),
(706, 'Dange-Shuni', 33),
(707, 'Gada', 33),
(708, 'Goronyo', 33),
(709, 'Gudu', 33),
(710, 'Gwadabawa', 33),
(711, 'Illela', 33),
(712, 'Isa', 33),
(713, 'Kebbe', 33),
(714, 'Kware', 33),
(715, 'Raba', 33),
(716, 'Sabon-Birni', 33),
(717, 'Shagari', 33),
(718, 'Silame', 33),
(719, 'Sokoto North', 33),
(720, 'Sokoto South', 33),
(721, 'Tambuwal', 33),
(722, 'Tanzaga', 33),
(723, 'Tureta', 33),
(724, 'Wamakko', 33),
(725, 'Wurno', 33),
(726, 'Yabo', 33),
(727, 'Ardo Kola', 34),
(728, 'Bali', 34),
(729, 'Donga', 34),
(730, 'Gashaka', 34),
(731, 'Gassol', 34),
(732, 'Ibi', 34),
(733, 'Jalingo', 34),
(734, 'Karim-Lamido', 34),
(735, 'Kurmi', 34),
(736, 'Lau', 34),
(737, 'Sardauna', 34),
(738, 'Takuni', 34),
(739, 'Ussa', 34),
(740, 'Wukari', 34),
(741, 'Yarro', 34),
(742, 'Zing', 34),
(743, 'Bade', 35),
(744, 'Bursali', 35),
(745, 'Damaturu', 35),
(746, 'Fuka', 35),
(747, 'Fune', 35),
(748, 'Geidam', 35),
(749, 'Gogaram', 35),
(750, 'Gujba', 35),
(751, 'Gulani', 35),
(752, 'Jakusko', 35),
(753, 'Karasuwa', 35),
(754, 'Machina', 35),
(755, 'Nangere', 35),
(756, 'Nguru', 35),
(757, 'Potiskum', 35),
(758, 'Tarmua', 35),
(759, 'Yunisari', 35),
(760, 'Yusufari', 35),
(761, 'Anka', 36),
(762, 'Bakure', 36),
(763, 'Bukkuyum', 36),
(764, 'Bungudo', 36),
(765, 'Gumi', 36),
(766, 'Gusau', 36),
(767, 'Isa', 36),
(768, 'Kaura-Namoda', 36),
(769, 'Kiyawa', 36),
(770, 'Maradun', 36),
(771, 'Marau', 36),
(772, 'Shinkafa', 36),
(773, 'Talata-Mafara', 36),
(774, 'Tsafe', 36),
(775, 'Zurmi', 36),
(776, 'Obudu', 9),
(777, 'Abaji', 37),
(778, 'Bwari', 37),
(779, 'Gwagwalada', 37),
(780, 'Kuje', 37),
(781, 'Kwali', 37),
(782, 'Municipal', 37),
(783, 'Etsako-East', 12),
(784, 'Ahiazu-Mbaise', 16),
(785, 'Foreign', 38),
(786, 'Kaduna South', 18),
(787, 'Aboh-Mbaise', 16),
(788, 'Odukpani', 9);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `pay_amt` float DEFAULT NULL,
  `pay_userid` int(11) DEFAULT NULL,
  `pay_status` enum('pending','paid','failed') DEFAULT NULL,
  `pay_others` text DEFAULT NULL,
  `pay_date` timestamp NULL DEFAULT NULL,
  `pay_transid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `planguage`
--

CREATE TABLE `planguage` (
  `lang_id` int(11) NOT NULL,
  `lang_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_by` int(11) DEFAULT NULL,
  `post_title` text DEFAULT NULL,
  `post_content` text DEFAULT NULL,
  `post_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `state_id` int(11) NOT NULL,
  `state_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`state_id`, `state_name`) VALUES
(1, 'Abia'),
(2, 'Adamawa'),
(3, 'Akwa Ibom'),
(4, 'Anambra'),
(5, 'Bauchi'),
(6, 'Bayelsa'),
(7, 'Benue'),
(8, 'Borno'),
(9, 'Cross River'),
(10, 'Delta'),
(11, 'Ebonyi'),
(12, 'Edo'),
(13, 'Ekiti'),
(14, 'Enugu'),
(15, 'Gombe'),
(16, 'Imo'),
(17, 'Jigawa'),
(18, 'Kaduna'),
(19, 'Kano'),
(20, 'Katsina'),
(21, 'Kebbi'),
(22, 'Kogi'),
(23, 'Kwara'),
(24, 'Lagos'),
(25, 'Nassarawa'),
(26, 'Niger'),
(27, 'Ogun'),
(28, 'Ondo'),
(29, 'Osun'),
(30, 'Oyo'),
(31, 'Plateau'),
(32, 'Rivers'),
(33, 'Sokoto'),
(34, 'Taraba'),
(35, 'Yobe'),
(36, 'Zamfara'),
(37, 'Abuja (FCT)'),
(38, 'Foreign');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `trans_id` int(11) NOT NULL,
  `trans_ref` varchar(45) DEFAULT NULL,
  `trans_date` timestamp NULL DEFAULT current_timestamp(),
  `trans_totamt` float DEFAULT NULL,
  `trans_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`trans_id`, `trans_ref`, `trans_date`, `trans_totamt`, `trans_by`) VALUES
(1, '1714649790941553873', '2024-05-02 11:36:30', 40000, 9),
(2, '1714649814338629132', '2024-05-02 11:36:54', 40000, 9),
(3, '17146549681902319392', '2024-05-02 13:02:48', 60400, 9),
(4, '1714660786804996278', '2024-05-02 14:39:46', 20000, 9),
(5, '17146608071027110229', '2024-05-02 14:40:07', 40200, 9),
(6, '1714660813888088414', '2024-05-02 14:40:13', 60200, 9),
(7, '17146608541118134009', '2024-05-02 14:40:54', 80400, 9),
(8, '1714661388664671143', '2024-05-02 14:49:48', 20200, 9),
(9, '1714661785401225573', '2024-05-02 14:56:25', 20200, 9),
(10, '17213579872069728321', '2024-07-19 02:59:47', 40400, 9),
(11, '17215649222118332614', '2024-07-21 12:28:42', 40400, 9),
(12, '1721574001622518736', '2024-07-21 15:00:01', 40400, 9),
(13, '1721574580477006184', '2024-07-21 15:09:40', 40400, 9),
(14, '17215749331638262775', '2024-07-21 15:15:33', 40400, 9),
(15, '1721577271416297290', '2024-07-21 15:54:31', 40400, 9),
(16, '17219291011731968914', '2024-07-25 17:38:21', 20200, 9);

-- --------------------------------------------------------

--
-- Table structure for table `trans_details`
--

CREATE TABLE `trans_details` (
  `det_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `det_amt` float DEFAULT NULL,
  `det_transid` int(11) DEFAULT NULL,
  `det_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `trans_details`
--

INSERT INTO `trans_details` (`det_id`, `topic_id`, `det_amt`, `det_transid`, `det_qty`) VALUES
(1, NULL, 20000, 1, 2),
(2, 6, 20000, 2, 2),
(3, 6, 20000, 3, 3),
(4, 4, 200, 3, 2),
(5, 6, 20000, 4, 1),
(6, 6, 20000, 5, 2),
(7, 4, 200, 5, 1),
(8, 6, 20000, 6, 3),
(9, 4, 200, 6, 1),
(10, 6, 20000, 7, 4),
(11, 4, 200, 7, 2),
(12, 6, 20000, 8, 1),
(13, 4, 200, 8, 1),
(14, 6, 20000, 9, 1),
(15, 4, 200, 9, 1),
(16, 6, 20000, 10, 2),
(17, 4, 200, 10, 2),
(18, 6, 20000, 11, 2),
(19, 4, 200, 11, 2),
(20, 6, 20000, 12, 2),
(21, 4, 200, 12, 2),
(22, 6, 20000, 13, 2),
(23, 4, 200, 13, 2),
(24, 6, 20000, 14, 2),
(25, 4, 200, 14, 2),
(26, 6, 20000, 15, 2),
(27, 4, 200, 15, 2),
(28, 6, 20000, 16, 1),
(29, 4, 200, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(60) DEFAULT NULL,
  `user_lname` varchar(60) DEFAULT NULL,
  `user_email` varchar(60) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_stateid` int(11) DEFAULT NULL,
  `user_lgaid` int(11) DEFAULT NULL,
  `user_level` int(11) DEFAULT NULL,
  `user_datereg` timestamp NULL DEFAULT NULL,
  `user_phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fname`, `user_lname`, `user_email`, `user_password`, `user_stateid`, `user_lgaid`, `user_level`, `user_datereg`, `user_phone`) VALUES
(1, 'Ololade', 'Adeniji', 'adenijiololade@gmail.com', 'lolajj24', NULL, NULL, NULL, NULL, NULL),
(2, 'Temitope', 'Adeniji', 'temmygal@gmail.com', 'debby234', NULL, NULL, NULL, NULL, NULL),
(3, 'Odion', 'Davies', 'odiondav@gmail.com', 'davies80', NULL, NULL, NULL, NULL, NULL),
(4, 'Odion', 'Davies', 'odiondav@gmail.com', '$2y$10$CW8JoLhZP9XXQNwnI1BYwur0pTciDPGXTbVUAe4yGG6pM2LIrJ/WW', NULL, NULL, NULL, NULL, NULL),
(5, 'Blessing', 'Davies', 'blessingdav@gmail.com', '$2y$10$AK.pUQyCspep6piqv1iTh.Qzb7TXuwYPN8D/vHWYUql1vSQLGpRTW', NULL, NULL, NULL, NULL, NULL),
(6, 'Blessing', 'Davies', 'blessingdav@gmail.com', '$2y$10$FQrs57LYN7mj70TH2ozD4OnsPtTSPFmg8D/80qSmUS51tbjo4waIq', NULL, NULL, NULL, NULL, NULL),
(7, 'Blessing', 'Davies', 'blessingdav@gmail.com', '$2y$10$KtWgKRy0MLPHowqzGYkLbeH2EDmlZZ4hEhpNnEQoHzbB2WAlhQOM.', NULL, NULL, NULL, NULL, NULL),
(8, 'Ololade', 'Adeniji', 'adenijiololade@gmail.com', '$2y$10$OHvw/8f4AnqicFBZWLN0kOVEUONA69dbDYqrkUsiZwb/WWyEzScGS', NULL, NULL, NULL, NULL, NULL),
(9, 'John', 'Osagie', 'johnosagie@gmail.com', '$2y$10$Xpb6XvaxwjFKZA1JOdYAceIbaRnESMWDXkiydMSmu8l30hbDpbuuO', NULL, NULL, 3, NULL, '08064923986');

-- --------------------------------------------------------

--
-- Table structure for table `userlang`
--

CREATE TABLE `userlang` (
  `userlang_id` int(11) NOT NULL,
  `userlang_langid` int(11) NOT NULL,
  `userlang_userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_breakout`
--

CREATE TABLE `user_breakout` (
  `breakout_id` int(11) NOT NULL,
  `breakout_topicid` int(11) DEFAULT NULL,
  `breakout_userid` int(11) DEFAULT NULL,
  `breakout_regdate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `breakout_topics`
--
ALTER TABLE `breakout_topics`
  ADD PRIMARY KEY (`topic_id`),
  ADD KEY `FK_idx` (`topic_level`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `lga`
--
ALTER TABLE `lga`
  ADD PRIMARY KEY (`lga_id`),
  ADD KEY `FKSTLGA_idx` (`state_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `FK2_idx` (`pay_userid`),
  ADD KEY `FK3_idx` (`pay_transid`);

--
-- Indexes for table `planguage`
--
ALTER TABLE `planguage`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FKPOSTBY_idx` (`post_by`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`trans_id`),
  ADD KEY `FKTRX_idx` (`trans_by`);

--
-- Indexes for table `trans_details`
--
ALTER TABLE `trans_details`
  ADD PRIMARY KEY (`det_id`),
  ADD KEY `FKDET_idx` (`det_transid`),
  ADD KEY `FKTOP_idx` (`topic_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FKLEV_idx` (`user_level`),
  ADD KEY `FKST_idx` (`user_stateid`),
  ADD KEY `FKLGA_idx` (`user_lgaid`);

--
-- Indexes for table `userlang`
--
ALTER TABLE `userlang`
  ADD PRIMARY KEY (`userlang_id`);

--
-- Indexes for table `user_breakout`
--
ALTER TABLE `user_breakout`
  ADD PRIMARY KEY (`breakout_id`),
  ADD KEY `FKTop_idx` (`breakout_topicid`),
  ADD KEY `FKUser_idx` (`breakout_userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `breakout_topics`
--
ALTER TABLE `breakout_topics`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `planguage`
--
ALTER TABLE `planguage`
  MODIFY `lang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `trans_details`
--
ALTER TABLE `trans_details`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userlang`
--
ALTER TABLE `userlang`
  MODIFY `userlang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_breakout`
--
ALTER TABLE `user_breakout`
  MODIFY `breakout_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `breakout_topics`
--
ALTER TABLE `breakout_topics`
  ADD CONSTRAINT `FK` FOREIGN KEY (`topic_level`) REFERENCES `level` (`level_id`);

--
-- Constraints for table `lga`
--
ALTER TABLE `lga`
  ADD CONSTRAINT `FKSTLGA` FOREIGN KEY (`state_id`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `FK2` FOREIGN KEY (`pay_userid`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FK3` FOREIGN KEY (`pay_transid`) REFERENCES `transaction` (`trans_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FKPOSTBY` FOREIGN KEY (`post_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `FKTRX` FOREIGN KEY (`trans_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `trans_details`
--
ALTER TABLE `trans_details`
  ADD CONSTRAINT `FKDET` FOREIGN KEY (`det_transid`) REFERENCES `transaction` (`trans_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKTOPS` FOREIGN KEY (`topic_id`) REFERENCES `breakout_topics` (`topic_id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FKLEV` FOREIGN KEY (`user_level`) REFERENCES `level` (`level_id`),
  ADD CONSTRAINT `FKLGA` FOREIGN KEY (`user_lgaid`) REFERENCES `lga` (`lga_id`),
  ADD CONSTRAINT `FKST` FOREIGN KEY (`user_stateid`) REFERENCES `state` (`state_id`);

--
-- Constraints for table `user_breakout`
--
ALTER TABLE `user_breakout`
  ADD CONSTRAINT `FKTop` FOREIGN KEY (`breakout_topicid`) REFERENCES `breakout_topics` (`topic_id`),
  ADD CONSTRAINT `FKUser` FOREIGN KEY (`breakout_userid`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
