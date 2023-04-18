-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 18, 2023 at 01:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pawan`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerId` varchar(255) NOT NULL,
  `customerName` varchar(255) NOT NULL,
  `number` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerId`, `customerName`, `number`) VALUES
('1234', 'jassisirr', '9845623451'),
('1234787', 'Suraj', '9825107177'),
('12347878', 'Suraj', '9825107177'),
('1236', 'suraj', '9815180613'),
('2346', 'jassiSirrr', '9865123478'),
('2365', 'adfsdf', 'adsfsd'),
('3215', 'Suraj chor', '9805879401'),
('5555', 'Suraj Don', '9825107177'),
('6321', 'adsff', 'afasdfsd'),
('8945', 'dalley', '9856412891'),
('9633', 'wertgyhu', '963214785'),
('9852', 'bhimsen', '986321478'),
('9874', 'sujita', '9815180412'),
('9876', 'Jassi sir', '9846117015');

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `id` int(11) NOT NULL,
  `vehicle_no` int(11) DEFAULT NULL,
  `in_time` datetime DEFAULT NULL,
  `out_time` datetime DEFAULT NULL,
  `payment` varchar(255) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `park_time` varchar(255) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parkings`
--

INSERT INTO `parkings` (`id`, `vehicle_no`, `in_time`, `out_time`, `payment`, `total`, `park_time`, `merchant_id`) VALUES
(1, 9633, '2023-04-01 11:53:44', '1900-04-08 15:41:18', 'dasdsa', 500, '2hrs', 27),
(2, 9633, '2023-04-01 11:55:42', '2023-04-08 00:00:00', NULL, 22.166666666667, '133', 27),
(3, 1234, '2023-04-01 11:57:21', '2023-04-07 14:10:11', NULL, 22.166666666667, '133', 27),
(4, 1234, '2023-04-01 12:00:16', '2023-04-01 14:10:42', NULL, 21.666666666667, '130', 27),
(5, 1234, '2023-04-01 13:41:41', '2023-04-01 14:12:16', NULL, 5.1666666666667, '31', 27),
(6, 1234, '2023-04-01 13:42:14', NULL, NULL, NULL, NULL, NULL),
(7, 1234, '2023-04-02 13:31:08', NULL, NULL, NULL, NULL, NULL),
(8, 1234, '2023-04-03 06:28:19', NULL, NULL, NULL, NULL, NULL),
(9, 9852, '2023-04-03 06:29:58', NULL, NULL, NULL, NULL, NULL),
(10, 1234, '2023-04-06 10:52:00', NULL, NULL, NULL, NULL, NULL),
(11, 9633, '2023-04-08 11:59:35', NULL, NULL, NULL, NULL, NULL),
(12, 1234, '2023-04-08 12:03:55', NULL, NULL, NULL, NULL, NULL),
(13, 1234, '2023-04-08 12:06:31', NULL, NULL, NULL, NULL, NULL),
(14, 1234, '2023-04-08 12:08:02', NULL, NULL, NULL, NULL, NULL),
(15, 9633, '2023-04-08 12:10:12', '2023-04-08 16:04:43', NULL, 10, '1 hrs', 27);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `amount`, `payment_date`, `merchant_id`, `created_at`) VALUES
(1, 500, '2023-04-08', 27, '2023-04-08 16:09:42');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` int(11) NOT NULL,
  `token` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `token`, `user_id`) VALUES
(1, 'fba345872e75c839a42ed7ad29bb10f9', 1),
(2, '5cda485dafb8059e54c1c2302ab588dd', 1),
(3, '39c411b09d6357370e79f3594c0f466d', 1),
(4, 'dd74eb02514b65e717b28e3fe9b220db', 1),
(5, 'ae4a7771a0b421f041af44145e415735', 2),
(6, '7588e885d26441d9066ef8fb3deb6d1d', 2),
(7, 'aef37e07c2dda82a0d23f03a9b28f569', 2),
(8, 'f22f96d6b4b12f4f97ab4ed787ab02a6', 2),
(9, '49d0e043c79974d37bc04f5911c78183', 2),
(10, 'ace466c7c65e802e11a8973fdd869966', 1),
(11, '8ad087345961ff1c69afd6a43de875a3', 1),
(12, 'df5bd3dfc75726fd38ee82f75cd624df', 5),
(13, 'a41033b717c5e33bfcb49fe34d4fdcd1', 1),
(14, 'd19b0764f9321cc17d4d39535ed2016d', 5),
(15, '12fdec8fcfb4b06e65f3c4edaa1d12bf', 5),
(16, 'b1f71d48c75b2312a30bd5031a9c1fc6', 1),
(17, '25ceaca82c412a23b2155e53e7d9f31a', 1),
(18, '043168f9db302984ab6391f026cba3fb', 5),
(19, 'ff251cecaab10bc4b3942fe2a356a2fe', 1),
(20, 'b819f40ca3799553479cfaaebf1bf1d4', 6),
(21, '17228a95a4a408289d2262e20d196694', 1),
(22, '3f61d2ac90d93dd1da4ff7090e1da5eb', 6),
(23, '5b56cbf9bfeb960053ce93c6c85e4f6a', 1),
(24, '87253637d9e98b9bef266c9f30967d58', 6),
(25, 'cbcfd7218504cdb9f76def9419b72d79', 1),
(26, 'ba2c470b5c5c8a73c7bd184df8d36f98', 1),
(27, 'bd59f0cfbbf91f1b79844a10dc642864', 1),
(28, '4cc389fab56a1aa56c01913bb98da58f', 1),
(29, '4f3971a2485491aabcea01bf51750f59', 6),
(30, '2029476895309b399067f714fecc7e9b', 6),
(31, 'd4d9c3a88fb6849d55bb6e6d6a6e9c6e', 6),
(32, '005f7366d138d054bd45eff700236a34', 6),
(33, '6cc79904226ce55a168c7496b0ad09f4', 6),
(34, '19a9a370ab0cf927dc0f80a507619e66', 1),
(35, 'cfb0b7e0c413919c17fe1207aaed1dbb', 1),
(36, '0f7966d7ddca21d66d268a337d49212a', 1),
(37, '2820b189f9278b1b67cfcc96ab40c59f', 5),
(38, 'c6fcdb0cccc8cd07379e1f71742b39a4', 5),
(39, '6cbf381153213cd4d36acd7eac404eb6', 2),
(40, 'b225561ae1483f4ea97ef12d4232e12c', 6),
(41, 'fbc87bfaa819b1b1d9e113f3e0aa8849', 6),
(42, '2382b77926f79dccf28f5e4c0d405c9c', 6),
(43, '21cecd79773457015e8417ce9c8c5f85', 6),
(44, 'dfb0209c8013adcd01c9643c8b812c25', 6),
(45, '7667a3008807696f5cb36b03c888c27e', 6),
(46, 'af3815621af9d4a1d22486a629a49ea8', 6),
(47, '0664ab1cc086a625d129bf7569b453c3', 6),
(48, '055020a9270573874a019882aa2bba0a', 6),
(49, '8ad9865476e0b6f5fa508f72b934545f', 6),
(50, '41c05f82a887d9898ec172872f457168', 6),
(51, '7b4fca6ef03e135cd392089b2adffda8', 6),
(52, '53941c161d8c1c888c27b1931fd69a6c', 6),
(53, 'bb0090b7e815925a7ac7351b14546aed', 6),
(54, 'b9cd6d6dd0ca56013f8f6a033e3a465c', 6),
(55, '31d8a59fc3ca239e9a8a8f713cd88102', 8),
(56, '1b9a08236c4634854c6c45ecd5f0cab2', 8),
(57, 'cf63d9822bbc281eb239dd26052b9d25', 8),
(58, '14d2729254b9474f7e49b54f191f6bf0', 8),
(59, '059342710094fb1e3ef503b9403f4202', 8),
(60, '8009c229d22b6481ce2fce96ad867bad', 8),
(61, 'e477cd072468492ac93d03f68b202a14', 8),
(62, '65b4bbaa60b115079d334dc6953c83af', 8),
(63, '44259cd13635e31acaf674b37f0ace92', 8),
(64, '29fa433d4a78c1b402b342fe9e23242e', 8),
(65, '2214c3b76484ae9839e3cc6387c9a897', 8),
(66, '7268dca70e119feec6c3f29e5dbe9de2', 8),
(67, '86fdce77bbcf68ec92bcf0ddae3dd423', 8),
(68, '0740467b23480ae9f07e2e3740feb947', 8),
(69, 'ef2b86d772af297d5e35c88277373a81', 8),
(70, 'a3c1be1b3cb77e7ae940d0f668a2c138', 8),
(71, '9dc4e4d5b8a0407130727f57ac0b85f4', 8),
(72, 'b9fe768946dff7b246a8d6e2677344bd', 8),
(73, '9cbf0bd1316e1547d3b910ddf5e97226', 2),
(74, '04a83c468f4bf796e72b2e45570a20b5', 2),
(75, '79e39e133a1bed8d9de82113721dc900', 2),
(76, '65cccedf63462abdeb07269bbed5751f', 2),
(77, '61767c43eb4b3eadc1939dfb6d78172b', 1),
(78, '966dcdfd489b9acd534ba49aecc3700d', 5),
(79, '650d4187e56d27a4b83c622c16e06eca', 5),
(80, 'c78d65b37a3b5258f98118d6519bd697', 5),
(81, '11ce4259c03fc848d7328402614ab0ec', 5),
(82, '7b4d6206713f1cb5c2fd40ffff66bf80', 5),
(83, 'a44f568d87502acce50c700a44428ed9', 5),
(84, '020e5f6e1463c9abb38d3895abb71078', 5),
(85, 'b408025ef0f6c79f88b454d984975a72', 5),
(86, 'fc9c5de0196d64cb998da027905426f2', 5),
(87, '4130191920891e041192cfe0af356c80', 5),
(88, '7a24d70c0b7f4946fa7726cd02ff9acb', 5),
(89, 'd081ebf825b0f2c5591f77236c270aa5', 5),
(90, '1f57a554b5e8d8779f4e8bc517ba54ab', 5),
(91, '12498e9872c69b7d8779039301f24d35', 1),
(92, '753e539928cd311d42d199b6da5277a2', 5),
(93, '048db8d153b168efa83163d8afb88161', 5),
(94, 'f6ffb173e6fd2f945a4ba49c187b61f7', 5),
(95, '5bee3c36af88a202167ae3566610087f', 5),
(96, '0219c1084c7e67e23f9197fe1df9a9b5', 1),
(97, '3888182683100b5c3b56cfc11f4320fb', 5),
(98, 'c474c06e29a07168175a7ff5932cd848', 6),
(99, '7a96313d7a5a4ee32bf864804e05be0a', 1),
(100, 'be3af82a05a967b4845b958e54ac3a5a', 1),
(101, 'cc26dc7c61d6626866fab6ff9ed822de', 5),
(102, '741cc0ce70492710d85677a50cce7ef0', 2),
(103, '1ab30601e95ff910877182b4ea21cd84', 2),
(104, '195a7ae0d819455845438dbb4e27d140', 5),
(105, '50b2308157e172469983084abf469540', 5),
(106, 'ccc892e5ac9a4a611f91f28a58a03acc', 5),
(107, '50207687af28e366ce17f6b7c9002c69', 1),
(108, 'b24cad93461fea77aa275c3611081346', 5),
(109, '8e9192d523a7eef4862f71e5b512ad6c', 1),
(110, '938dd2910dd6fc22a5f17af7a885e27b', 1),
(111, 'f7232a51929af6524b05e67b0ea8c0c0', 6),
(112, 'bf675bae172b0d6cd17e4e9dd3cd51f8', 5),
(113, '856d53fd46ebdde574b00c79c09bdfab', 1),
(114, '96f937b85f400c1bf888cd95c1861000', 1),
(115, 'bdebefbb3eff1b30a09d3186a923737a', 1),
(116, 'a4e703f1b95bf5b759ca4345b0ef3cef', 1),
(117, '10b5ee4188e42a25b59ab06a1620de92', 1),
(118, '1888c6673c1a65ab830b1fb00a461cf7', 5),
(119, '19a401ce5caa8baf21b02f697c52ff44', 1),
(120, '80abae855381719798226a3db08d250c', 2),
(121, '2d54ccefc35f157be8629a91d364e5e8', 8),
(122, 'ecd4a4432b9ea5afece797927d3f8e02', 8),
(123, '697beb9a9d79096ac9a2a6a5a2c0ac46', 8),
(124, '5fb230602c71d751b7f54349d163bca0', 5),
(125, '98a945bc4316df4f9df027a2a5a3cee5', 1),
(126, 'e4b857184cdfc081af8597cfe2bc4f11', 5),
(127, '9b46a958faec0402f99d6700943b82c6', 5),
(128, '2850a3fcc8c04b0ac642b7ec2fc67c6e', 1),
(129, '66efdd1d08ea64e513c5f5106f11e0de', 2),
(130, '71b11bfbe228b9693a4e40b545aa424e', 5),
(131, '9e05b6370a10360f8e3827a378d501b9', 1),
(132, '9d06fdd73df27a99cfacbaf25ef3a4bd', 1),
(133, '6b203a548d80cbf26aea17748b76b36e', 5),
(134, '621648914cb6e99aa895e9caa0ea086b', 1),
(135, 'bacfd12ee450d2f5e1fed04efbb35027', 1),
(136, '2efdf2b6e12d92cdea5e9e0680a019ac', 8),
(137, 'dd5c3264770d11be6f6682cfcbc59966', 5),
(138, '0a05ac3c29886ebb991981ab85666066', 8),
(139, '42f145567e3cce5d9d3c694515dc21ab', 1),
(140, '34af47dadd200f1019b0d3a9f58f5f23', 1),
(141, '53d8f491e9eb51977deb48e19243a666', 5),
(142, '0b4edb9ecf207ce4ae8dca74373b47c9', 1),
(143, '7cd45899a353c5352ebd15fb26cc5f7b', 1),
(144, '56466929c9707b581fa3d09f1080b976', 1),
(145, '320863c91d93fbca9cc3b772aef2b9af', 1),
(146, 'bb4b055b0db5271748f86dd02236b845', 1),
(147, '919873a5c00ec38ed7ce2b39e0a20bd6', 1),
(148, '3655277bbb36ab4faeea2aa7c9af5335', 1),
(149, '12a6f3898288992672c321cae3345273', 1),
(150, '751f4eb19ba924b515937214cd40db6e', 5),
(151, '806bd0612e1134ceff09c8d9da19a93f', 1),
(152, '6e08f702ce6a3009ceab106616c198da', 5),
(153, '22c7ced9f5557300f3e272cda927e4c8', 1),
(154, 'e34d8150016a420957d61051bc5a79ff', 5),
(155, '03a8f222b079e7a44548fae7d5026772', 1),
(156, '5166c296a52cdf318b88e659484e3393', 1),
(157, '3abfb474e7176079bdb646abc548de0f', 1),
(158, '5edee119c1890de179a2a74390734908', 1),
(159, 'ead8f787a93918d86dcc53b59f810daf', 1),
(160, 'ff6dabdc3ae3f55a7f8b55068cb5f05f', 1),
(161, '4e2b82f20358e5f6b07cf91f15415017', 1),
(162, 'eedd7b781521497be8816c810bfe7b25', 1),
(163, '65bcd3d4c6bf4cd658dc1b327d14fc59', 5),
(164, 'd3393c1df23ef857aa0a0da039ac3c6c', 1),
(165, '0ee30a3d8b861298e2ce9e4c84914a90', 1),
(166, '3928a8c80827e8e06d0c4573486067bd', 1),
(167, '1b2bfc1f5eaa5b95cbe52b6fdbbcbac6', 11),
(168, '6e3db1481395fa23e63a8deaf307297f', 1),
(169, '74b902f3059ceab2b09b4330ed6e9961', 1),
(170, '4aa4298b82e238fdbdb0f893ba1a5d9e', 1),
(171, '970c636362bd76fbd0e8f08e807ccc6d', 5),
(172, 'd01ab327f03048a95299c89fc7dc55c9', 1),
(173, '2027ff658082c2bd9143724595e57fa5', 1),
(174, '9cbb017876d1e6fc0d7ada9b37170b42', 1),
(175, '383742175be734b1b1bf4cbb33643062', 8),
(176, 'b75b53eb002131951a5b8b154de7fc95', 1),
(177, '3b5a2d7fba132ede380b0c4b51204d1b', 5),
(178, 'b20280aa014f5ea948ad60c8d64e9bc5', 13),
(179, 'e3d4493ec006b3f1aa03643a5695836f', 1),
(180, '1e986fe746238fdda014e29d37d51802', 5),
(181, 'c3e1200783c5bee8d045f4e698d37ee4', 1),
(182, 'e584554a407520ae0581873b7348643e', 1),
(183, 'f060bd9c14a0bfa4dc6c171ec19ec8b0', 1),
(184, 'd3fd4acb43f92f0746c645bb72b50cbd', 1),
(185, 'cd76faf50b427214beba944dcc540ca8', 1),
(186, 'e8645b68adbd0e8087e1c24d108d0b0f', 19),
(187, '8e638b469c7b7044d8d9829cc31b76d4', 1),
(188, 'fb88c5d771e9f67515fe1b152109e15b', 1),
(189, '8c4768f8a472e4880f333b28862aba73', 5),
(190, '4e929cb7a5a645f406b24d760348c942', 1),
(191, '568ff2d1eef3b01d24c5ca743e7ffe9c', 1),
(192, '1b18721966d21ce6e158ee3ebe7793d1', 1),
(193, 'dc28ef5a93ba762905344d4452ee8de7', 1),
(194, '1e303e63a2fe66db071b198e353c86d0', 1),
(195, 'a6565471df89385ecbfe3fd64d116307', 1),
(196, '8eb4b0b92977a85542d7781e51425a41', 1),
(197, '08699d95a7b733cd3bd5cbc00c338484', 1),
(198, '9d32c7dc687749decd0c55a4842d1966', 1),
(199, '29040bc13c142a9fbbd1c5959a43fb0f', 1),
(200, 'b88a4165b4354688f9670bdd3b1c25ff', 1),
(201, '4a9b770e853fd14f9d5a4883d88a7121', 1),
(202, 'f421a41f502b24a034fdf08777fceb37', 1),
(203, 'd1546da607295317f0ed22bfab7f3163', 1),
(204, '1c790059f557620650abeb1f01cb9f64', 25),
(205, '40e969ace320e84486604246f42214b1', 1),
(206, '4bba37de1e6ebfac83896446b5ef9eaf', 1),
(207, 'd5ede098462a72095dbc6539393ac81b', 1),
(208, '084395d733931688c8266043dcdeaadb', 1),
(209, 'b6455fc3e512c526c347ae46cec2154b', 1),
(210, '09920826252355525a75a7f5df4f55db', 1),
(211, '04b6103565a37cc013cf6caff8425710', 1),
(212, '48bf26cdb56852a0735a8e6e8575a652', 1),
(213, 'a39790f61fe2ff5adf5dec0917a1143c', 1),
(214, '3466cb2dfb8c3cf719202866b5594d55', 1),
(215, 'b4ba6be55acfc8ad226b79bf2fcffa15', 1),
(216, '751d21dbe3c0e31846532d2675d29fbe', 1),
(217, 'd88c9b433d6b72bd3c6f337897ded4b3', 1),
(218, 'fa09a011ade24edd8cb42e541183eaf3', 1),
(219, 'e16bc2b4b1a8f315545f0ff68e0c2536', 1),
(220, 'a65a49187dab8e90978afc7367dac025', 1),
(221, '791382527b4a1ed12f5033cd547b43fe', 28),
(222, 'af1aab14d07abc1f8f7976d80849c3d7', 1),
(223, 'f8974f8d7d391b54ac6ceaf287dda751', 27),
(224, '8239499f25263a7d3965c204569270c7', 27),
(225, '1e8be809bb45f64e65002353e83ea056', 27),
(226, 'b24a72dfb0b0eca936eb9c7d2c1a12d8', 27),
(227, 'b72f5345536dbb1df9e2e0b672ec4ab8', 27),
(228, '50ecd0286ceed8b6ad8a56d76df74ace', 27),
(229, '81d1166311092529593c212f15a30cca', 27),
(230, '381671c9dbba20d608184bf3779d20fc', 27),
(231, '637732e7f62f9e3613394c98a843e58e', 1),
(232, '34c9856363bd816f45ae82474c884560', 27),
(233, '0ba27aa08de8c9dbed858bb59f892474', 27),
(234, 'b10c1f3f75fbfc7544522788c8700172', 27),
(235, '5c9e942c81c87f57cda44f4f0d95e7c8', 27),
(236, 'ae89b45a238c54539ca2fa195af173bd', 27),
(237, '33e07a536962306571229b5209fd44ac', 27),
(238, '9a5ffca40d8ed1b65ecc313f6342b63a', 27),
(239, '66ad9daf27078849051f13f9fc89567a', 27),
(240, '86b5af435abf78005a91ccb0e7f6ca51', 27),
(241, 'bdd0165acb654e557c1918e8483a517d', 27),
(242, '4af827c8fcfb7ab12abce846e93dc8b8', 27),
(243, '355071dd4c5cddb5c990adbfc057235a', 27),
(244, '5becd9a4b6772e02acfde25063ab6b02', 27),
(245, '6e61e8e1bd982eebeb788b8a235a0f4e', 27),
(246, 'dd4ac2e133c09d3742b4d96d067b6b47', 27),
(247, 'b01ed09fd4afd8203ee2f7b744e1f9a1', 27),
(248, '427560d7bd1e433032511791691fe404', 27),
(249, '17f6fddc18196b2afce8969603703092', 27),
(250, '5af81299bdaba23d1b08fccd608347bc', 27),
(251, '8f917073dd4dec2df3c3d024a489a706', 27),
(252, '79327e924db9189964fcefe2693e1ac8', 27),
(253, 'd805487a960295e266e326586cc273b0', 27),
(254, 'ffe37aba0cd2d39da72dc2d269e8bd55', 27),
(255, '837c178d61aa55959b3dee1b5faf482a', 27),
(256, '2dfae15569c8933865f42bd903abe9c2', 27),
(257, '764ce96516755809212b8f3d0f426d84', 27),
(258, 'a18f7cc713dc18d2b8ce1a2af8bd72d0', 27),
(259, '63ec2183598866e3d43646dd7b8e4af2', 27),
(260, 'c5cf392b33d22d53bb0f278baeb2a1e1', 27),
(261, '155fd0dfffa8cfefbe95ef6d5066d908', 27),
(262, '9c970504591e5a23df58c19a3d5ec86e', 27),
(263, '889c140c7647dd2e7709409fd4986613', 27),
(264, 'd9830333b476c620c9f8348b42c3cb44', 1),
(265, 'b238478200813743a2b105ec214c7c95', 30),
(266, '79bfa61f4eb170376e40c28831db23aa', 27),
(267, '8a1011022787458d9bacffcff8b13e40', 27),
(268, '596e9528c4dd1cb183d6426706e816ac', 1),
(269, '471d0211417bcf6ee40234fec9365ebc', 27),
(270, '18812d604c08424db4fa4b00e30292e5', 1),
(271, '5a5ab91cfeb78e66e74a84588938b50b', 27),
(272, '7cd15c8ed41d774d60fc6867f78b8611', 27),
(273, '0ecfb0820a0debfab51eca100cd450bd', 27),
(274, '71193a8bf320cc592576135650ed823c', 27),
(275, 'edfc9e2f45dc720bd947be2987f02ed7', 27),
(276, 'ce95ebea3844a5c6171719cce291d030', 27),
(277, 'f14f7957e0d0e3235e8e14e57b79466f', 27),
(278, '66be7eccbe5718623c32de6d9ff0a2ee', 27),
(279, '6d1b983f22d38c8e940facc32158a268', 27),
(280, '1c22fcfd1bd7a6fa9a1da760d10c1e2e', 27),
(281, '436ff1bc5d09ab753914348e7fbd5376', 27),
(282, '0deb13ebbafb5f2ec2086cff8238946c', 1),
(283, 'd37420b468d9ffc0d38f2237f2eb482a', 27),
(284, '7178c4e20a3afb2bce4f2b59e8663585', 27),
(285, '8e0a29ac811e684eeee0ffec125270de', 27),
(286, '68eeba8c448051b3be2b27696920e170', 27),
(287, 'caa71d1ba22ec3dc6e4d97c58f1cca6c', 27),
(288, '5d4b4643e4e49ee7cc377dc8c6427ad1', 27),
(289, '13f7e857f21c87f096ab62e0cdeca60e', 27),
(290, 'd1b21e31b2a7cdef8fe8019f50a26c24', 27),
(291, '612e9a0956bad31b3900641f53a4d00e', 27),
(292, 'd21be5dd6db08352243874813dd234f3', 27),
(293, 'a2b4086a27f95dd8291212488e9a35b0', 27),
(294, '5833bb3a2f3e6f5b5b98f4691cab1cdd', 27),
(295, 'c2969da2cb56d2a438d3abbf48297e56', 27),
(296, '15a72bfc91ee9f1a75d24c5248457b92', 27),
(297, '68a4084c6ca017c6d16666bb4b945c38', 27),
(298, '7eb65f5a43ede4dc0c7fb2ed400f03fc', 27),
(299, '331a4088b9d735daead166adedf1116c', 27),
(300, '870d58cf017dda98d1acb85d67548cee', 27),
(301, 'fd7cb0d176c36256f2bcc36fda95f6d6', 27),
(302, 'ac4f45a7082cfd22b016986a2205bf88', 1),
(303, 'd5aaa627912f697ad31b20ac285c27c9', 30),
(304, '374838cd604228c633ced31c45a71f9e', 27),
(305, '34912aaaf0a3c3226f5569b8137742eb', 27),
(306, '13a25a5943ce00f83462050edc59a246', 1),
(307, '69151df53d4dcce2163c6f4c7f9e25eb', 27),
(308, 'f379eeff46664791712ae0850f99076a', 27),
(309, 'abb75ec44d0db97dbff8b46f2c435f22', 27),
(310, '3e5b8d184f5a84017d008b157cf16227', 1),
(311, '2a93e34aec63976e3133b8a2913d9122', 27),
(312, '8982d3b57c410d165b796bd5409c1e94', 1),
(313, '92fd3e9236a387ba03afb85756f037a4', 1),
(314, '737d81e9741fb3056d065ab06fb09dde', 1),
(315, '841a05b684db0fa2b5a3454d92dc354b', 1),
(316, 'da4e190e8c7f4ead0b5ae38d22060fb3', 1),
(317, '74a0bba3bf571a1c3cff539da7e867bb', 1),
(318, '60d09b5007142b89ab209ba969021f7c', 1),
(319, '3d72d895ea3b0367be6f4ba32951557f', 1),
(320, '229ef85efbca434a1c653e034b03e063', 1),
(321, 'd046c631f54113dc2067f643db5e26a0', 27),
(322, '2f45e169f15fcc2821f3c22b3bcbd31f', 27),
(323, '5750adc264e748d5ad5c578e8f53216e', 27),
(324, '9dd937cee426bc218f9a6408017b6646', 1),
(325, '6e23e6ca4d7bcd0b90981c6546e16823', 28),
(326, '752908b441634f96e90ede8ee07b4cb5', 27),
(327, '8ef58b2fb2fd58c6a8282a70e3f594f3', 28),
(328, '9f66d235cfb0c25dfb49aeea0caf3e19', 27),
(329, '61ebd38a2a3a4a4d56a64a623d085c33', 27),
(330, '5b83cfee2c860feb686aa66229355073', 27),
(331, '60315eeb0937d4ad02930ae265a285ee', 27),
(332, 'b1941e21b4824762354ee0bb0193d543', 27),
(333, '9fc2b71f494d363842165fa43e1a0d48', 27),
(334, 'f38a8622c4a4244b94602a8fedbb6ee8', 27),
(335, 'a21770a7175421d452758bb61b0730b5', 27),
(336, '022a1c800a32b9ba7a34c5cc3a4dc94c', 27),
(337, 'd768bdfd96b84454d2a580861195ffdf', 27),
(338, 'e9f19fad2fb96163320df86970f32d1b', 27),
(339, '1814f52a1f03c2f1e86acd4ddfb22c1f', 27),
(340, '4653383fcf42005a83001c3ccd6a7417', 27),
(341, '0a81aa2983a4a91b0bffccb2d825da33', 27),
(342, 'd713b7f94a3f67117b12ece362020099', 27),
(343, '82c39ca43c34fad960f6b4fd124d3624', 27),
(344, 'b6c731fc74e3c64bacca81a184af32cb', 27),
(345, 'f4a07ae31a1af2787b81a71b3bbac27a', 27),
(346, '3b2acafc45d27d1915190c22c82964a6', 27),
(347, 'c8ca1bbe5ae7b6c0758a7f3df80faacc', 27),
(348, '64ce4c3d6332a54688350cc6b07ac9bb', 27),
(349, 'ade4a7e06240ec7d0c861b437b2f14cc', 27),
(350, '24694d83c82f679ad218093364e9234f', 27),
(351, '2f8743b3d59fcff7807d14796da66d94', 27),
(352, '739ed181c6b2e16f87c8b25e3ce403fd', 27),
(353, 'a80129fc13fa831aacc4ba637b4b74d2', 27),
(354, '6ab386951feb896f6fec351e6a906760', 27),
(355, '29fcc7fa4223b95d8a8f469367291fc3', 27),
(356, 'd266cff6f239aff0effb3be330107f5c', 1),
(357, 'b60129340fb88631d5cca9af9f70a4a4', 27),
(358, '98bd2fe5986fa963f7b6f9c100a11667', 28),
(359, '5627668fe9306aa62e1972663677e75f', 27),
(360, '83eb9f9e04f7a16f65633d03e36e4c93', 27),
(361, '07772e01899000848f4400dec94b2e5e', 27),
(362, 'ae695166453adf6d3d23a6b896a3c506', 27),
(363, '8003e4ed4cec8baca749fc6bb36615e7', 28),
(364, 'ab11f5f3272ecbd3e5b979f25605608f', 27),
(365, 'a8bfaa0e0d0edb8bfab8b441af3aad7e', 28),
(366, '94a3a10b0731df906dc981dd3ec898d2', 27),
(367, '2d7e436fc65f09ef962652b90a036f9c', 27),
(368, 'da436ff970e1081c1fdffdab63e9bf76', 27),
(369, '371087505c39e16259a2a732c759d49d', 27),
(370, 'e6a00a34995726372f6c410866486109', 27),
(371, 'd6499b5ea000d31d3e0d005bab14b348', 27),
(372, '971735541e4491eca6538b9e78236cd8', 27),
(373, '2e4e0dae1f9ee242b3040777f7d95f64', 27),
(374, '4722bb4256fadbfed5b2c6db1d4b6ebf', 27),
(375, 'c888d4eea92976cfa94c685956a742ec', 1),
(376, 'ee6fecf0ee49a12ad717f84c7df558c7', 27),
(377, '89219d1b3cdd563cef7a3cfa781b1b36', 1),
(378, 'f21da1fb4eb4d39b31f49e3856d5b49a', 27),
(379, '2406470251099ba85c840d7686cade1b', 1),
(380, '94a2d72e9300b388437303589ad08032', 28),
(381, 'e5b303f16d0e61b1601ca8cfc8be08e1', 1),
(382, '905a246303d80d79c4b70d9e0b613027', 27),
(383, '5f95c946c3ae4f1a2d625373ba68aecb', 1),
(384, 'd3871818311462510e0f5107e789f7b5', 1),
(385, '06e501a02611f70f339de178e65c2975', 1),
(386, 'db9111896f23460860a8918f0ad05e5b', 27),
(387, 'f13163078fea6f162cb4893e40b1be3c', 27),
(388, '2a23fa40afe09426c2bff3a1de8c1c68', 1),
(389, '4360ab832955c3729322494d78e4fc61', 28),
(390, '0c02b3493119e1af4da2cc1d034d9a59', 28),
(391, 'd37b0f540158e2b39c28bf87cc85b2eb', 27),
(392, 'b01d9daf1b74f336d52b53aec54f4ba6', 27),
(393, 'c6323999430e4039d2332ab07a9f5212', 1),
(394, '9cd0915bd8786ce196daacf13b4b1ed9', 27),
(395, '299dcb7ee74844288f93ebe74361e0c6', 27),
(396, 'd14b519d9f3d98e2a833f5d7a2cb95bf', 1),
(397, '06850c47730351bac30643f252abb9c1', 27),
(398, '2dd1da3728fd6b82b9c3c920d9d7f22d', 1),
(399, 'd250387e51242ab8fe3a09d3218140c2', 1),
(400, 'a639913d2e121c307249b7d93b47ad05', 27),
(401, '26e6778aab627dfdbe7a9f68351774a2', 1),
(402, '6c79eb055417223e9a05c599610cb366', 27),
(403, '3ce92b562c036a2cd1288def836b2923', 1),
(404, 'c1a057115b789635236c1ee194c9eaeb', 27),
(405, 'df225bec3a3e73d77e5925ea8970053f', 27),
(406, '7b98f4c51f999d48d9f1fa99b74e1f2c', 1),
(407, '22678e200b35802f303a930943ec256f', 27),
(408, '1ba0ac8d2e40607f23a8189267f9a96c', 1),
(409, 'eac8869051ed804eaff640144088151e', 27),
(410, '42aa6a7ae927efa90d2a95e974d59006', 1),
(411, '7171b4b93e1e1243ca79b0fd8da8bac9', 1),
(412, '808db430185c52ad649ece2fb74bf851', 27),
(413, '0c36152985effee92949baa9cb917f2e', 1),
(414, '7734426d07570327a51e2cf2b0995eb1', 27),
(415, 'a161483aad9d91a9887bddd6d0340ced', 1),
(416, 'ee86402aff4c4fe7edb817a99b939ad4', 27),
(417, '8e0d657a56e5607959903b4d334ceba2', 1),
(418, '011f7c5d88ef4567a76c90df4761d686', 1),
(419, '21d3be71459c2e39d8f1753d212a04d4', 27),
(420, '95f54eaa926810d6c187dd9d44cb7940', 27),
(421, 'e06e00457ab61ed19de0b8f9feb27ac1', 1),
(422, '2d5872b435b2fddbdd13d78637518cb2', 1),
(423, 'b3e05a32ae9bb65138a15f666ffcf30b', 1),
(424, 'fb71cdbdd551ffbfa8f8770f2c2aec62', 27),
(425, '48d8ecec658f778770360117816ff7ef', 1),
(426, '79e676d478a4c89aa91d3ce099bdb542', 27),
(427, '28cf5becfd4997a05ab89cdccd52c368', 27),
(428, '16c862fae9a26d5035e2ec029910cb65', 1),
(429, '57f85d539639200f86d4ca5557e94cd5', 1),
(430, '99013080c1f1d409b9b7581b0d9f7ff0', 27),
(431, 'fd069510f23968f671ea3052cc3edbba', 1),
(432, '47b9a68e6839755c778c9e497c3e3fda', 27),
(433, '85a2d43c9d49b42038593ae8d820ed14', 27),
(434, '0c2fbdca2287e0afd767a93f75f8decb', 1),
(435, 'ce3d8d34de89d95ffea181406f8dd2b2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `role` varchar(255) DEFAULT 'user',
  `name` varchar(100) DEFAULT NULL,
  `number` varchar(15) DEFAULT NULL,
  `verification_code` varchar(10) NOT NULL,
  `password_reset_code` varchar(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `active` char(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `name`, `number`, `verification_code`, `password_reset_code`, `image`, `active`) VALUES
(1, 'pawan@gmail.com', '$2y$10$4b6La2/hCk4ZB9DHGDJGs.PL0Uonp8vuXShG2YBVuexLwzdPEyHDm', 'admin', 'Pawan Kunwar', '9815180612', '', '0674', NULL, '1'),
(27, 'test@gmail.com', '$2y$10$ZmWM2vo8DRQ71fpV7.7dFeJt90LhjH1GobGwvbUFiYoZcZLsWwPU.', 'merchant', 'Pawan', '9815180612', '', '', NULL, '1'),
(28, 'sushma@gmail.com', '$2y$10$SM2WFiBIDtNulxeTTlfv4.45e3kg9sZJIWJWQXa1HtagkCDhUeMLC', 'merchant', 'sushma', '984611111111', '', '', NULL, '1'),
(29, 'dhiraj@gmail.com', '$2y$10$SgFrHgdOuogpYR1cT4Py0uSJhcfZKMW8O6KOcQ8MwosAQBI3rVRmu', 'merchant', 'dhiraj', '9846117015', '', '', NULL, '1'),
(30, 'jassiSir@gmail.com', '$2y$10$IS91rJeLBdIsQcA0WSwg7.OAAI7qS00B2BdBK.Fm4YVtUqxvN2/cm', 'merchant', 'JassiSirDon', '9815180612', '', '', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `categoryId` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerId`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
