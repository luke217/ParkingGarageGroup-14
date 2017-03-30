-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2017 at 05:25 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garage`
--

-- --------------------------------------------------------

--
-- Table structure for table `parkingusers`
--

CREATE TABLE `parkingusers` (
  `plateNum` char(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `beginTime` datetime NOT NULL,
  `endTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reserve_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `confirmNum` int(10) DEFAULT NULL,
  `spot_id` int(3) NOT NULL,
  `beginTime` datetime NOT NULL,
  `endTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reserve_id`, `user_id`, `confirmNum`, `spot_id`, `beginTime`, `endTime`) VALUES
(1, 23, 1487452364, 83, '2017-03-28 23:00:00', '2017-03-29 13:30:00'),
(2, 27, 1487452373, 78, '2017-03-29 01:30:00', '2017-03-29 14:00:00'),
(3, 32, 1487452391, 8, '2017-03-28 19:30:00', '2017-03-29 04:30:00'),
(4, 37, 1487452400, 94, '2017-03-29 01:00:00', '2017-03-29 07:00:00'),
(5, 11, 1487452409, 18, '2017-03-28 18:00:00', '2017-03-29 09:00:00'),
(6, 10, 1487452418, 120, '2017-03-28 20:30:00', '2017-03-29 06:00:00'),
(7, 15, 1487452427, 8, '2017-03-29 03:30:00', '2017-03-29 18:00:00'),
(8, 40, 1487452437, 100, '2017-03-28 20:30:00', '2017-03-28 22:00:00'),
(9, 21, 1487452444, 113, '2017-03-28 20:00:00', '2017-03-29 03:00:00'),
(10, 53, 1487452451, 44, '2017-03-28 19:00:00', '2017-03-29 06:00:00'),
(11, 22, 1487452459, 68, '2017-03-28 23:30:00', '2017-03-29 02:30:00'),
(12, 23, 1487452465, 62, '2017-03-29 02:30:00', '2017-03-29 13:00:00'),
(13, 2, 1487452472, 82, '2017-03-29 01:00:00', '2017-03-29 10:00:00'),
(14, 54, 1487452479, 4, '2017-03-28 21:00:00', '2017-03-29 08:30:00'),
(15, 5, 1487452486, 5, '2017-03-28 22:00:00', '2017-03-29 05:30:00'),
(16, 11, 1487452499, 80, '2017-03-28 20:00:00', '2017-03-29 06:00:00'),
(17, 17, 1487452507, 47, '2017-03-28 22:00:00', '2017-03-29 07:00:00'),
(18, 60, 1487452521, 20, '2017-03-28 20:30:00', '2017-03-28 23:00:00'),
(19, 24, 1487452531, 58, '2017-03-28 22:30:00', '2017-03-29 08:30:00'),
(20, 5, 1487452543, 35, '2017-03-28 20:00:00', '2017-03-29 10:30:00'),
(21, 9, 1487452550, 8, '2017-03-28 21:00:00', '2017-03-29 03:30:00'),
(22, 11, 1487452558, 93, '2017-03-29 03:00:00', '2017-03-29 16:00:00'),
(23, 18, 1487452565, 107, '2017-03-29 01:00:00', '2017-03-29 11:00:00'),
(24, 4, 1487452571, 45, '2017-03-28 18:00:00', '2017-03-29 03:30:00'),
(25, 36, 1487452578, 85, '2017-03-28 22:30:00', '2017-03-29 00:30:00'),
(26, 28, 1487452584, 102, '2017-03-28 20:30:00', '2017-03-29 10:30:00'),
(27, 48, 1487452593, 32, '2017-03-28 20:00:00', '2017-03-29 03:30:00'),
(28, 9, 1487452601, 112, '2017-03-28 22:30:00', '2017-03-29 07:30:00'),
(29, 39, 1487452608, 39, '2017-03-29 02:00:00', '2017-03-29 11:30:00'),
(30, 51, 1487452615, 47, '2017-03-28 21:30:00', '2017-03-29 03:00:00'),
(31, 53, 1487452625, 74, '2017-03-29 03:00:00', '2017-03-29 06:00:00'),
(32, 20, 1487452631, 116, '2017-03-29 00:30:00', '2017-03-29 14:30:00'),
(33, 17, 1487452638, 108, '2017-03-28 21:30:00', '2017-03-29 12:00:00'),
(34, 20, 1487452647, 48, '2017-03-28 19:30:00', '2017-03-28 21:30:00'),
(35, 34, 1487452654, 112, '2017-03-29 02:30:00', '2017-03-29 13:30:00'),
(36, 36, 1487452660, 55, '2017-03-29 00:00:00', '2017-03-29 09:30:00'),
(37, 31, 1487452667, 54, '2017-03-28 19:30:00', '2017-03-28 22:30:00'),
(38, 54, 1487452673, 106, '2017-03-29 01:00:00', '2017-03-29 04:30:00'),
(39, 51, 1487452688, 26, '2017-03-28 18:00:00', '2017-03-28 20:00:00'),
(40, 58, 1487452697, 51, '2017-03-28 20:30:00', '2017-03-29 06:30:00'),
(41, 20, 1487452705, 117, '2017-03-28 19:30:00', '2017-03-28 23:00:00'),
(42, 34, 1487452712, 100, '2017-03-29 03:30:00', '2017-03-29 13:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `spots`
--

CREATE TABLE `spots` (
  `spot_id` int(11) NOT NULL,
  `spotNum` int(4) NOT NULL,
  `state` tinyint(1) DEFAULT '0',
  `futurestate1` int(11) DEFAULT '0',
  `futurestate2` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spots`
--

INSERT INTO `spots` (`spot_id`, `spotNum`, `state`, `futurestate1`, `futurestate2`) VALUES
(1, 2001, 1, 0, 0),
(2, 2002, 0, 0, 0),
(3, 2003, 0, 0, 0),
(4, 2004, 1, 64, 0),
(5, 2005, 0, 256, 0),
(6, 2006, 0, 0, 0),
(7, 2007, 0, 0, 0),
(8, 2008, 1, -524216, 131072),
(9, 2009, 0, 0, 0),
(10, 2010, 0, 0, 0),
(11, 2011, 0, 0, 0),
(12, 2012, 1, 0, 0),
(13, 2013, 0, 0, 0),
(14, 2014, 0, 0, 0),
(15, 2015, 0, 0, 0),
(16, 2016, 0, 0, 0),
(17, 2017, 1, 0, 0),
(18, 2018, 0, 1, 0),
(19, 2019, 1, 0, 0),
(20, 2020, 0, 32, 0),
(21, 2021, 0, 0, 0),
(22, 2022, 1, 0, 0),
(23, 2023, 0, 0, 0),
(24, 2024, 1, 0, 0),
(25, 2025, 0, 0, 0),
(26, 2026, 0, 1, 0),
(27, 2027, 0, 0, 0),
(28, 2028, 0, 0, 0),
(29, 2029, 0, 0, 0),
(30, 2030, 0, 0, 0),
(31, 2031, 0, 0, 0),
(32, 2032, 0, 16, 0),
(33, 2033, 1, 0, 0),
(34, 2034, 0, 0, 0),
(35, 2035, 0, -16, 4),
(36, 2036, 1, 0, 0),
(37, 2037, 0, 0, 0),
(38, 2038, 0, 0, 0),
(39, 2039, 0, -65536, 16),
(40, 2040, 0, 0, 0),
(41, 3001, 0, 0, 0),
(42, 3002, 0, 0, 0),
(43, 3003, 1, 0, 0),
(44, 3004, 0, 4, 0),
(45, 3005, 0, 1, 0),
(46, 3006, 0, 0, 0),
(47, 3007, 0, 384, 0),
(48, 3008, 0, 8, 0),
(49, 3009, 0, 0, 0),
(50, 3010, 0, 0, 0),
(51, 3011, 0, 32, 0),
(52, 3012, 0, 0, 0),
(53, 3013, 0, 0, 0),
(54, 3014, 1, 8, 0),
(55, 3015, 0, 0, 0),
(56, 3016, 0, 0, 0),
(57, 3017, 0, 0, 0),
(58, 3018, 0, 512, 0),
(59, 3019, 0, 0, 0),
(60, 3020, 1, 0, 0),
(61, 3021, 0, 0, 0),
(62, 3022, 0, -131072, 128),
(63, 3023, 0, 0, 0),
(64, 3024, 0, 0, 0),
(65, 3025, 0, 0, 0),
(66, 3026, 1, 0, 0),
(67, 3027, 1, 0, 0),
(68, 3028, 0, 2048, 0),
(69, 3029, 1, 0, 0),
(70, 3030, 0, 0, 0),
(71, 3031, 0, 0, 0),
(72, 3032, 0, 0, 0),
(73, 3033, 0, 0, 0),
(74, 3034, 0, 262144, 0),
(75, 3035, 0, 0, 0),
(76, 3036, 0, 0, 0),
(77, 3037, 0, 0, 0),
(78, 3038, 0, -32768, 512),
(79, 3039, 1, 0, 0),
(80, 3040, 0, 16, 0),
(81, 4001, 1, 0, 0),
(82, 4002, 1, -16384, 2),
(83, 4003, 0, -1024, 256),
(84, 4004, 1, 0, 0),
(85, 4005, 1, 512, 0),
(86, 4006, 0, 0, 0),
(87, 4007, 0, 0, 0),
(88, 4008, 0, 0, 0),
(89, 4009, 0, 0, 0),
(90, 4010, 0, 0, 0),
(91, 4011, 0, 0, 0),
(92, 4012, 0, 0, 0),
(93, 4013, 0, -262144, 8192),
(94, 4014, 1, 16384, 0),
(95, 4015, 0, 0, 0),
(96, 4016, 0, 0, 0),
(97, 4017, 0, 0, 0),
(98, 4018, 0, 0, 0),
(99, 4019, 0, 0, 0),
(100, 4020, 0, -524256, 256),
(101, 4021, 0, 0, 0),
(102, 4022, 0, -32, 4),
(103, 4023, 0, 0, 0),
(104, 4024, 1, 0, 0),
(105, 4025, 0, 0, 0),
(106, 4026, 1, 16384, 0),
(107, 4027, 0, -16384, 8),
(108, 4028, 1, -128, 32),
(109, 4029, 0, 0, 0),
(110, 4030, 0, 0, 0),
(111, 4031, 1, 0, 0),
(112, 4032, 0, -130560, 256),
(113, 4033, 1, 16, 0),
(114, 4034, 1, 0, 0),
(115, 4035, 0, 0, 0),
(116, 4036, 0, -8192, 1024),
(117, 4037, 1, 8, 0),
(118, 4038, 0, 0, 0),
(119, 4039, 0, 0, 0),
(120, 4040, 0, 32, 0),
(121, 5001, 1, 0, 0),
(122, 5002, 1, 0, 0),
(123, 5003, 1, 0, 0),
(124, 5004, 0, 0, 0),
(125, 5005, 0, 0, 0),
(126, 5006, 1, 0, 0),
(127, 5007, 0, 0, 0),
(128, 5008, 0, 0, 0),
(129, 5009, 0, 0, 0),
(130, 5010, 0, 0, 0),
(131, 5011, 1, 0, 0),
(132, 5012, 1, 0, 0),
(133, 5013, 1, 0, 0),
(134, 5014, 0, 0, 0),
(135, 5015, 0, 0, 0),
(136, 5016, 0, 0, 0),
(137, 5017, 0, 0, 0),
(138, 5018, 0, 0, 0),
(139, 5019, 0, 0, 0),
(140, 5020, 1, 0, 0),
(141, 5021, 1, 0, 0),
(142, 5022, 1, 0, 0),
(143, 5023, 1, 0, 0),
(144, 5024, 0, 0, 0),
(145, 5025, 0, 0, 0),
(146, 5026, 1, 0, 0),
(147, 5027, 1, 0, 0),
(148, 5028, 1, 0, 0),
(149, 5029, 0, 0, 0),
(150, 5030, 0, 0, 0),
(151, 5031, 0, 0, 0),
(152, 5032, 0, 0, 0),
(153, 5033, 1, 0, 0),
(154, 5034, 0, 0, 0),
(155, 5035, 0, 0, 0),
(156, 5036, 0, 0, 0),
(157, 5037, 1, 0, 0),
(158, 5038, 0, 0, 0),
(159, 5039, 0, 0, 0),
(160, 5040, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `plateNum` char(6) DEFAULT NULL,
  `password` varchar(10) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'user',
  `billing` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `plateNum`, `password`, `role`, `billing`) VALUES
(1, 'Mcloopryof', 'R84VF9', 'bO`At;csN', 'user', 0),
(2, 'Cslhsvn', 'XR85WH', 'n]Ms*~-^', 'user', 0),
(3, 'Jugdxtygwl', 'H9119I', 'YX6kX^vK', 'user', 0),
(4, 'Wggyjldt', 'D7QA59', '>[K.Ev(X-', 'user', 0),
(5, 'Vqdsvkukn', '71F797', '-W2{IKCs0^', 'user', 0),
(6, 'Ixoq', 'B1G46J', '2iQJite;B@', 'user', 0),
(7, 'Nzuxzouh', 'E6PO08', '9a.GC[6r', 'user', 0),
(8, 'Cppujifb', '8E0VOG', '<O4zXeibS', 'user', 0),
(9, 'Wenalhqulj', '220G12', '=|vL-2e=', 'user', 0),
(10, 'Ijvzp', 'USEJPY', '3B=[Kb_3', 'user', 0),
(11, 'Nyuat', 'B38864', 'VVk(qT5\Z{', 'user', 0),
(12, 'Ggzi', '706Q7W', 'g0wkMrTNF', 'user', 0),
(13, 'Gilwsvfvgt', 'R45SZZ', '2A,:X2>gH', 'user', 0),
(14, 'Lfeazba', '6598N4', 'pMUWdr^O', 'user', 0),
(15, 'Zyyvvgnupt', '8EOTV1', '0AaeH.{)', 'user', 0),
(16, 'Dhuhwiljo', '74BOG5', '`_Oa1kv9{3', 'user', 0),
(17, 'Zbrhgsw', 'TR6PE5', '.^,|Vt,0', 'user', 0),
(18, 'Happrx', '02B8EK', 'eQg2E|EtA)', 'user', 0),
(19, 'Fhytpoqag', 'K71PB9', '5lQQdS5w', 'user', 0),
(20, 'Nqdak', 'K0JN39', 'vobWJ9f9Rl', 'user', 0),
(21, 'Oklcywmxsc', 'WVN2T0', '1QW^UBH>Op', 'user', 0),
(22, 'Uxqmhhvsw', 'Z72814', 'lZM9l41<<', 'user', 0),
(23, 'Anszmo', '12J0T0', '+D^PRi_l', 'user', 0),
(24, 'Iaejbeiarf', '7L6HN8', 'dU>57sAxN', 'user', 0),
(25, 'Etlzo', 'R70317', 'r+T:_{w.QQ', 'user', 0),
(26, 'Rwranserho', 'B91V44', ':OjOHaOz', 'user', 0),
(27, 'Gpurw', 'RI7497', '<>58Q[5zr,', 'user', 0),
(28, 'Sczhwkexsn', '964MV2', '1CkFfS30`', 'user', 0),
(29, 'Obin', 'CA4115', 'Ho<<+zpyQ6', 'user', 0),
(30, 'Lnlqzn', '53SHHG', 'p?VbN+~a', 'user', 0),
(31, 'Szmtiiddtj', 'NFI0KR', 'P.J+gD<}v', 'user', 0),
(32, 'Wlfnrzkps', 'Q762TE', 'W}~~A*d]e', 'user', 0),
(33, 'Cmabcfxfg', 'Q192ZN', 'S>PEg2+^Hh', 'user', 0),
(34, 'Srzkvherkn', '2354T9', ',+Y=(xhTg8', 'user', 0),
(35, 'Huonyhhi', 'V0N4X9', '4;JDkE2:', 'user', 0),
(36, 'Xyqdsgco', 'VUBXUM', 'G4@Av_s', 'user', 0),
(37, 'Uwzowsi', '271N6O', 'I-52N;82Ln', 'user', 0),
(38, 'Zkalj', 'PB7GF3', '8`QbIB|a+4', 'user', 0),
(39, 'Vwnosb', '03WAXS', '`=a40E[qd', 'user', 0),
(40, 'Gmkoujtkz', '60N1K0', 'l2~([Iai', 'user', 0),
(41, 'Hhewf', 'QLY5M5', ',n5A*lG:', 'user', 0),
(42, 'Guqauosgff', '7KI940', '/GKEb}Br9[', 'user', 0),
(43, 'Ldgaslpug', 'RED7AZ', 'xI*M}@pC', 'user', 0),
(44, 'Ttjjf', 'N2GIO3', 'w@IQ>t=0-', 'user', 0),
(45, 'Jfhh', 'D874KL', 'vS:E]{yuH', 'user', 0),
(46, 'Dznoc', 'Y29630', 'U?GkDBC</s', 'user', 0),
(47, 'Zqyxpj', 'F0NC82', 'uf*[bm2}', 'user', 0),
(48, 'Uyrjnhozbo', 'XN7A7P', '_vlFeAV`', 'user', 0),
(49, 'Qidqh', '41542N', 'L?D-lN5rK', 'user', 0),
(50, 'Mzwdtwhqsm', '63LKTC', 'eKJm1lmq4k', 'user', 0),
(51, 'Hoshvnm', 'LJ4GLM', 'Q*s7`l^`', 'user', 0),
(52, 'Rlmu', '5GX795', 'h[>S`X:d', 'user', 0),
(53, 'Rbeivctnvy', 'ZDZDV5', '3qwi*?v`.H', 'user', 0),
(54, 'Xkjuloywtq', '83DC62', 'gs:RR[W,DC', 'user', 0),
(55, 'Ngqwj', 'RHZJRL', 'E]rZ.)N8Q', 'user', 0),
(56, 'Pqqoaxdp', '40G4T1', '{(oJBbekkh', 'user', 0),
(57, 'Nvilfmz', '489NDB', 'mO,vBv^?Q', 'user', 0),
(58, 'Ghrxjg', 'X76110', 'vAd+nPrZ', 'user', 0),
(59, 'Jsoojziwux', '895153', 'vl`,>c=gc)', 'user', 0),
(60, 'Atnirpkzju', '34GC0X', '_7MI@{k9qs', 'user', 0),
(61, 'test', 'TTTTTT', 'test', 'user', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `parkingusers`
--
ALTER TABLE `parkingusers`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `plateNum` (`plateNum`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `spot_id` (`spot_id`);

--
-- Indexes for table `spots`
--
ALTER TABLE `spots`
  ADD PRIMARY KEY (`spot_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `plateNum` (`plateNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `spots`
--
ALTER TABLE `spots`
  MODIFY `spot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `parkingusers`
--
ALTER TABLE `parkingusers`
  ADD CONSTRAINT `parkingusers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`spot_id`) REFERENCES `spots` (`spot_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
