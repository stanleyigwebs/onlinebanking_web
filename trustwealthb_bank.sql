-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 29, 2024 at 03:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trustwealthb_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` char(25) DEFAULT NULL,
  `pwd` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pwd`) VALUES
(1, 'admin', 'password123'),
(2, 'danda', '1010');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary1`
--

CREATE TABLE `beneficiary1` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary1`
--

INSERT INTO `beneficiary1` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(2, 2, 1133557788),
(3, 3, 1122338457),
(4, 4, 1756864032);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary2`
--

CREATE TABLE `beneficiary2` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary2`
--

INSERT INTO `beneficiary2` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(1, 1, 1122334455);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary3`
--

CREATE TABLE `beneficiary3` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary3`
--

INSERT INTO `beneficiary3` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(1, 5, 603887480),
(2, 1, 1184203694),
(3, 2, 1130259788);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary4`
--

CREATE TABLE `beneficiary4` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary4`
--

INSERT INTO `beneficiary4` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(1, 1, 1122334455),
(2, 2, 1133557788),
(3, 9, 817064888),
(6, 10, 235199686);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary5`
--

CREATE TABLE `beneficiary5` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beneficiary5`
--

INSERT INTO `beneficiary5` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(1, 1, 1122334455);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary6`
--

CREATE TABLE `beneficiary6` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beneficiary6`
--

INSERT INTO `beneficiary6` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(1, 1, 1122334455),
(2, 2, 1133557788);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary7`
--

CREATE TABLE `beneficiary7` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary8`
--

CREATE TABLE `beneficiary8` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary9`
--

CREATE TABLE `beneficiary9` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary10`
--

CREATE TABLE `beneficiary10` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beneficiary10`
--

INSERT INTO `beneficiary10` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(1, 4, 1233556739),
(2, 9, 817064888);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary11`
--

CREATE TABLE `beneficiary11` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beneficiary11`
--

INSERT INTO `beneficiary11` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(1, 12, 210035673),
(2, 9, 817064888);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary12`
--

CREATE TABLE `beneficiary12` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beneficiary12`
--

INSERT INTO `beneficiary12` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(1, 13, 692557808);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary13`
--

CREATE TABLE `beneficiary13` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary14`
--

CREATE TABLE `beneficiary14` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary15`
--

CREATE TABLE `beneficiary15` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `beneficiary15`
--

INSERT INTO `beneficiary15` (`benef_id`, `benef_cust_id`, `account_no`) VALUES
(1, 11, 642199474),
(2, 14, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `Routing_no` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  `pin` int(4) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'transfer_1.php',
  `blocktf` varchar(200) NOT NULL DEFAULT 'send_funds.php'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `first_name`, `last_name`, `gender`, `dob`, `Routing_no`, `email`, `phone_no`, `address`, `branch`, `account_no`, `pin`, `uname`, `pwd`, `status`, `blocktf`) VALUES
(1, 'Ghrepower Green Energy ', 'Co., Ltd', 'male', '1994-11-28', 123456789, 'zakees52@gmail.com', '+91 8918722499', 'Texas, Houston,567', 'Texas', 1184203694, 1010, 'zakee94', 'danda533', 'transfer_1.php', 'send_funds.php'),
(2, 'Vensys Energy ', ' AG', 'male', '1994-10-11', 987654321, 'ali.salman@gmail.com', '+966 895432167', 'Al Ahsa Street Malaz, King Abdulaziz Rd, Alamal Dist. RIYADH 12643-2121.', 'riyadh', 1130259788, 1234, 'salman', 'salman123', 'transfer_1.php', 'send_funds.php'),
(3, 'Keanu', 'Reeves', 'male', '1964-09-02', 921926, 'Keanureeves.inc047@gmail.com', '+1(320)365-2372', '  9026 Thrasher Avenue, Hollywood Hills, Los Angeles,CA , USA.\r\n', 'newyork', 1022635421, 2020, 'Keanu.reeves07', 'Cuddlebear123', 'transfer_1.php', 'send_funds.php'),
(4, 'Marcus', 'Rolph', 'male', '1965-05-19', 294371, 'marcolph1@gmail.com', '(559)249-4378', '330 Toyon Ave Los Altos, CA 94022 United States\r\n', 'newyork', 1756864032, 2465, 'MarcusRolph', 'MarcR19.05', 'transfer_1.php', 'send_funds.php'),
(5, 'Suzlon Energy ', 'Limited', 'male', '0000-00-00', 1234567890, 'stanleyigwebs@gmail.com', '08134491253', 'd34 nwangene street, housing estate fegge onitsha.', 'newyork', 603887480, 1010, 'stanleyigwebs', 'danda533', 'transfer_1.php', 'send_funds.php'),
(6, 'PT Energi ', 'Bayu Jeneponto ', 'male', '0000-00-00', 2147483647, 'stileschristo@gmail.com', '1473892787', 'AV/Los Incas peru', 'newyork', 1684747346, 1010, 'golubevdick', '1010', 'transfer_1.php', 'send_funds.php'),
(7, 'mane', 'bill', 'male', '1977-09-02', 1767153, 'mane@gmail.com', '0987725627', 'jhjhdnwhsbj', 'newyork', 1084642678, 1010, 'mane33', 'danda533', 'transfer_1.php', 'send_funds.php'),
(8, 'Golden', 'Emma', 'male', '1991-12-20', 21345, 'ugochukwu2096@gmail.com', '08109581174', 'Galveston, Texas', 'newyork', 12345678, 2020, 'golden2096', '12345', 'transfer_1.php', 'send_funds.php'),
(9, 'Russell', 'Daley', 'male', '1976-12-20', 67890, 'kellven1257@gmail.com', '+1  2029842020', 'Venture Way Boynton Beach, Florida, 33437', 'newyork', 817064888, 6666, 'russel12', '01477', 'transfer_1.php', 'send_funds.php'),
(10, 'Clifford Ralph ', 'Parker', 'male', '1964-05-08', 56486, 'cliffordralph1964@gmail.com', '+1 8126102443', 'Trenton New Jersey, USA', 'newyork', 235199686, 11, 'parker@12', '01477', 'transfer_1.php', 'send_funds.php'),
(11, 'Rica Bet', 'William', 'male', '1977-12-14', 64635, 'ricabetwilliam@gmail.com', '+1  2039864040', 'Trento New Jersey', 'delhi', 642199474, 1524, 'ricabet001', '09684', 'account_block.php', 'send_funds.php'),
(12, 'USMW', 'DEFENCE ', 'others', '1960-02-02', 90374, 'militarydefence@gmail.com', '+1  4230864765', 'Washington DC', 'newyork', 210035673, 2222, 'militarydefence2096', '99671', 'transfer_1.php', 'send_funds.php'),
(13, 'Buenconsejo', 'Robilyn Morgado', 'female', '1980-08-08', 83593, 'morgadorobilyn@gmail.com', '+6 39997504706', 'Block 6, Lot 45, Phase 1, Centella Homes, San Isidro, Rodriguez Rizal .', 'newyork', 692557808, 8002, 'brobilynm', '75047', 'account_block.php', 'send_funds.php'),
(14, 'Memphis ', 'Flight Academy ', 'female', '1978-12-20', 73758, '1316349072@qq.com', '+86 1316349072', 'China wdm 123456*', 'newyork', 2147483647, 2906, 'wu@12', '123456', 'account_block.php', 'send_funds.php'),
(15, 'Allen', 'Vazquez Roberto', 'male', '1969-11-20', 634795, 'allenvazquezroberto@gmail.com', '2048990401', 'Jacksonville Florida', 'newyork', 1935093264, 9101, 'allenroberto', 'rob56allen$', 'transfer_1.php', 'send_funds.php');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `created`) VALUES
(1, 'Hello World !', '2017-09-06 15:45:25'),
(2, 'The First News !', '2017-09-06 15:45:55'),
(3, 'Increasing Interest Rates !', '2017-09-06 15:46:21'),
(4, 'GST on banking', '2017-11-19 16:39:35'),
(5, 'JANE-FRANCIS MY LOVE', '2020-07-03 12:26:52'),
(6, 'JANE-FRANCIS MY LOVE', '2020-07-03 12:27:04'),
(7, 'JANE-FRANCIS MY LOVE', '2020-07-03 12:27:37'),
(8, 'JANE-FRANCIS MY LOVE', '2021-04-08 13:32:36');

-- --------------------------------------------------------

--
-- Table structure for table `news_body`
--

CREATE TABLE `news_body` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_body`
--

INSERT INTO `news_body` (`id`, `body`) VALUES
(1, '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"'),
(2, 'What is Lorem Ipsum? Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like). Where does it come from? Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some? There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.'),
(3, 'This is to inform that as of today interest rates will increase by 4.6% on loans and decrease by 5.8% on deposits. Effective immediately. '),
(4, 'This is to inform that GST shall be applied on all usages of :\r\n1. Credit Cards\r\n2. Debit Cards\r\n3. Internet Banking\r\nat a nominal (nationally applied) rate of 18%.\r\n'),
(5, 'My ije love ....'),
(6, 'My ije love ....'),
(7, 'My ije love ....'),
(8, 'the love of my life');

-- --------------------------------------------------------

--
-- Table structure for table `passbook1`
--

CREATE TABLE `passbook1` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook1`
--

INSERT INTO `passbook1` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(3, '2017-10-02 21:02:32', 'Sent to: Jon Snow, AC/No: 1133557736', 10000, 0, 20000),
(4, '2017-10-05 20:11:33', 'Received from: Salman Ali, AC/No: 1133557799', 0, 69000, 89000),
(5, '2017-11-19 17:00:35', 'Cash Deposit', 0, 2000000, 2089000),
(6, '2017-11-19 17:01:09', 'Sent to: Jon Snow, AC/No: 1233556739', 15000, 0, 2074000),
(7, '2017-11-19 17:02:29', 'Cash to Self', 25000, 0, 2049000),
(8, '2017-11-19 17:03:45', 'Sent to: Md Salman Ali, AC/No: 1133557799', 50000, 0, 1999000),
(9, '2017-11-19 17:26:45', 'Received from: Md Salman Ali, AC/No: 1133557788', 0, 6123, 2005123),
(10, '2020-07-05 12:02:15', 'Sent to: Md Salman Ali, AC/No: 1133557788', 1000, 0, 2004123),
(11, '2020-07-05 12:04:04', 'Sent to: Jon Snow, AC/No: 1233556739', 10000, 0, 1994123),
(12, '2020-07-05 12:06:53', 'Received from: Md Salman Ali, AC/No: 1133557788', 0, 100000, 2094123),
(13, '2020-07-05 12:49:05', 'Sent to: Md Salman Ali, AC/No: 1133557788', 10000, 0, 2084123),
(14, '2020-07-05 13:28:25', 'Sent to: Md Salman Ali, AC/No: 1133557788', 1000000, 0, 1084123),
(15, '2020-07-05 13:32:36', 'Sent to: Tushar Kr. Pandey, AC/No: 1122338457', 100, 0, 1084023),
(16, '2020-07-05 14:27:14', 'Cash to Self', 1000, 0, 1083023),
(17, '2020-07-05 17:00:23', 'Cash Deposit', 0, 100, 1083123),
(18, '2020-07-05 17:02:01', 'Cash Deposit', 0, 200, 1083323),
(19, '2020-07-05 21:46:54', 'Received from: igwebuike stanley, AC/No: 1130766665', 0, 3000000, 4083323),
(20, '2020-07-05 21:46:55', 'Received from: igwebuike stanley, AC/No: 1130766665', 0, 3000000, 7083323),
(21, '2020-07-10 11:23:14', 'Sent to: Md Salman Ali, AC/No: 1133557788', 10000, 0, 7073323),
(22, '2021-04-08 02:02:40', 'Cash Deposit', 0, 10000, 7083323),
(23, '2021-04-08 02:07:33', 'Transfer Successful ', 10000, 0, 7073323),
(24, '2021-07-19 14:57:06', 'Sent to: Tushar Kr. Pandey, AC/No: 1122338457', 10000, 0, 7063323),
(25, '2021-07-19 14:58:57', 'Sent to: Tushar Kr. Pandey, AC/No: 1122338457', 10000, 0, 7053323),
(26, '2021-07-20 07:23:53', 'Received from: golubev ci, AC/No: 84747346', 0, 230000, 7283323),
(27, '2021-07-20 07:45:59', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 7284323),
(28, '2021-07-20 07:51:29', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 7285323),
(29, '2021-07-20 08:03:25', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 7286323),
(30, '2021-07-20 08:28:01', 'Received from: golubev ci, AC/No: 84747346', 0, 2500, 7288823),
(31, '2021-07-20 08:36:34', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7300823),
(32, '2021-07-20 08:45:15', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7312823),
(33, '2021-07-20 08:47:24', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7324823),
(34, '2021-07-20 09:02:01', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7336823),
(35, '2021-07-20 09:02:47', 'Received from: golubev ci, AC/No: 84747346', 0, 10000, 7346823),
(36, '2023-09-26 04:31:33', 'Received from: Alexander Reyes Nick, AC/No: 1287904356', 0, 240000, 7586823),
(37, '2024-07-24 03:00:10', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7583323),
(38, '2024-07-24 03:04:20', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7579823),
(39, '2024-07-24 03:08:20', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7576323),
(40, '2024-07-24 03:08:26', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7572823),
(41, '2024-07-24 03:09:37', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7569323),
(42, '2024-07-24 11:30:02', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7560323),
(43, '2024-07-24 11:40:31', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7551323),
(44, '2024-07-24 11:41:15', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7542323),
(45, '2024-07-24 11:41:33', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7533323),
(46, '2024-07-24 11:41:46', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7524323),
(47, '2024-07-24 11:44:23', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7515323),
(48, '2024-07-24 11:44:53', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7506323),
(49, '2024-07-24 11:53:44', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7497323),
(50, '2024-07-24 11:54:05', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7488323),
(51, '2024-07-24 11:55:35', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7479323),
(52, '2024-07-24 11:55:56', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7470323),
(53, '2024-07-24 11:56:13', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7461323),
(54, '2024-07-24 11:57:12', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7452323),
(55, '2024-07-24 12:05:43', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7443323),
(56, '2024-07-24 12:06:32', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7434323),
(57, '2024-07-24 12:07:14', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7425323),
(58, '2024-07-24 12:17:34', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7416323),
(59, '2024-07-24 12:18:53', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7407323),
(60, '2024-07-24 12:20:49', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7398323),
(61, '2024-07-24 12:21:29', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7389323),
(62, '2024-07-24 12:23:33', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7380323),
(63, '2024-07-24 12:46:16', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7371323),
(64, '2024-07-24 12:46:28', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7362323),
(65, '2024-07-24 12:46:53', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7353323),
(66, '2024-07-24 12:47:15', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7344323),
(67, '2024-07-24 12:47:25', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7335323),
(68, '2024-07-24 12:57:14', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7326323),
(69, '2024-07-24 12:57:20', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7317323),
(70, '2024-07-24 12:57:32', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7308323),
(71, '2024-07-24 12:59:21', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7299323),
(72, '2024-07-24 13:00:52', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7290323),
(73, '2024-07-24 13:01:51', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7281323),
(74, '2024-07-24 13:02:39', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7272323),
(75, '2024-07-24 13:05:03', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7263323),
(76, '2024-07-24 13:05:53', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7254323),
(77, '2024-07-24 13:08:03', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7245323),
(78, '2024-07-24 13:17:21', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7236323),
(79, '2024-07-24 13:17:51', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7227323),
(80, '2024-07-24 13:18:28', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 7218323),
(81, '2024-07-24 13:27:12', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7214823),
(82, '2024-07-24 13:29:46', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7211323),
(83, '2024-07-24 13:30:28', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7207823),
(84, '2024-07-24 13:30:48', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7204323),
(85, '2024-07-24 13:31:29', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7200823),
(86, '2024-07-24 13:32:11', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7197323),
(87, '2024-07-24 13:32:46', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7193823),
(88, '2024-07-24 13:33:45', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7190323),
(89, '2024-07-24 13:35:09', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7186823),
(90, '2024-07-24 13:40:01', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7183323),
(91, '2024-07-24 13:41:45', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7179823),
(92, '2024-07-24 13:42:50', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7176323),
(93, '2024-07-24 13:43:11', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7172823),
(94, '2024-07-24 13:43:38', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7169323),
(95, '2024-07-24 13:44:00', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7165823),
(96, '2024-07-24 13:48:20', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7162323),
(97, '2024-07-24 13:49:59', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7158823),
(98, '2024-07-24 13:51:53', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7155323),
(99, '2024-07-24 13:55:37', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7151823),
(100, '2024-07-24 14:11:34', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7148323),
(101, '2024-07-24 14:11:53', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7144823),
(102, '2024-07-24 14:14:04', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7141323),
(103, '2024-07-24 14:15:57', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7137823),
(104, '2024-07-24 14:16:12', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7134323),
(105, '2024-07-24 14:16:49', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7130823),
(106, '2024-07-24 14:19:04', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7127323),
(107, '2024-07-24 14:19:37', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7123823),
(108, '2024-07-24 14:21:26', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7120323),
(109, '2024-07-24 14:22:38', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7116823),
(110, '2024-07-24 14:22:58', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7113323),
(111, '2024-07-24 14:24:12', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7109823),
(112, '2024-07-24 14:24:48', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7106323),
(113, '2024-07-24 14:24:56', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7102823),
(114, '2024-07-24 14:25:33', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7099323),
(115, '2024-07-24 14:26:05', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7095823),
(116, '2024-07-24 14:26:46', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7092323),
(117, '2024-07-24 14:27:09', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7088823),
(118, '2024-07-24 14:29:00', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7085323),
(119, '2024-07-24 14:31:01', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7081823),
(120, '2024-07-24 14:31:45', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7078323),
(121, '2024-07-24 14:37:51', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7074823),
(122, '2024-07-24 14:39:23', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7071323),
(123, '2024-07-24 14:41:51', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7067823),
(124, '2024-07-24 14:42:40', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7064323),
(125, '2024-07-24 14:45:17', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7060823),
(126, '2024-07-24 14:45:22', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7057323),
(127, '2024-07-24 14:46:49', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7053823),
(128, '2024-07-24 14:47:39', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7050323),
(129, '2024-07-24 14:48:10', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7046823),
(130, '2024-07-24 14:50:32', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7043323),
(131, '2024-07-24 14:53:27', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7039823),
(132, '2024-07-24 14:53:43', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7036323),
(133, '2024-07-24 14:57:29', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7032823),
(134, '2024-07-24 14:57:36', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7029323),
(135, '2024-07-24 15:01:51', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7025823),
(136, '2024-07-24 15:07:40', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7022323),
(137, '2024-07-24 15:09:48', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7018823),
(138, '2024-07-24 15:12:51', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7015323),
(139, '2024-07-24 15:19:19', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7011823),
(140, '2024-07-24 15:21:46', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7008323),
(141, '2024-07-24 15:22:58', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7004823),
(142, '2024-07-24 15:23:52', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 7001323),
(143, '2024-07-24 15:24:29', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 6997823),
(144, '2024-07-24 15:24:44', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 6994323),
(145, '2024-07-24 15:24:57', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 6990823),
(146, '2024-07-24 15:27:12', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 6987323),
(147, '2024-07-24 15:31:02', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 6983823),
(148, '2024-07-24 15:31:40', 'Sent to: Keanu Reeves, AC/No: 1022635421', 9000, 0, 6974823),
(149, '2024-07-24 15:46:21', 'Sent to: Keanu Reeves, AC/No: 1022635421', 60, 0, 6974823),
(150, '2024-07-24 15:47:17', 'Sent to: Keanu Reeves, AC/No: 1022635421', 60, 0, 6974823),
(151, '2024-07-24 15:47:33', 'Sent to: Keanu Reeves, AC/No: 1022635421', 60, 0, 6974823),
(152, '2024-07-24 15:51:17', 'Sent to: Keanu Reeves, AC/No: 1022635421', 3500, 0, 6974806),
(153, '2024-07-24 15:53:18', 'Sent to: Keanu Reeves, AC/No: 1022635421', 3000, 0, 6971791),
(154, '2024-07-24 15:56:23', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 10000, 0, 6961741),
(155, '2024-07-24 15:56:42', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 10000, 0, 6951691),
(156, '2024-07-24 15:59:47', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 10000, 0, 6941641),
(157, '2024-07-24 16:06:01', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 10000, 0, 6931591),
(158, '2024-07-24 16:11:38', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 6928074),
(159, '2024-07-24 16:12:24', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 6924557),
(160, '2024-07-24 16:13:34', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 6915512),
(161, '2024-07-24 16:13:38', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 6906467),
(162, '2024-07-24 16:13:57', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 9000, 0, 6897422),
(163, '2024-07-24 20:51:31', 'Sent to: Vensys Energy   AG, AC/No: 1130259788', 90, 0, 6897332),
(164, '2024-07-24 22:34:05', 'EFT-00 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 3500, 0, 6893815),
(165, '2024-07-24 22:39:57', '<p>EFT-00<small></small> online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788</p>', 9000, 0, 6884770),
(166, '2024-07-24 23:25:38', 'EFT-00 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 60, 0, 6884710),
(167, '2024-07-24 23:28:50', 'EFT-00 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 10000, 0, 6874660),
(168, '2024-07-24 23:35:02', 'EFT-00BNK167 online transfer to beneficiary: Keanu Reeves, AC/No: 1022635421', 60, 0, 6874600),
(169, '2024-07-24 23:39:49', 'EFT-00BNK168 online transfer to beneficiary: Keanu Reeves, AC/No: 1022635421', 60, 0, 6874540),
(170, '2024-07-24 23:42:28', 'EFT-00BNK169 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 90, 0, 6874450),
(171, '2024-07-24 23:44:14', 'EFT-00BNK170 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 90, 0, 6874360),
(172, '2024-07-24 23:44:46', 'EFT-00BNK171 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 90, 0, 6874270),
(173, '2024-07-24 23:48:02', 'EFT-00BNK172 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 90, 0, 6874180),
(174, '2024-07-24 23:50:34', 'EFT-00BNK173 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 90, 0, 6874090),
(175, '2024-07-25 00:16:39', 'EFT-00BNK174 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 90, 0, 6874000),
(176, '2024-07-25 00:23:01', 'EFT-00BNK175 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 1000, 0, 6872995),
(177, '2024-07-25 00:26:24', 'EFT-00BNK176 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 500, 0, 6872493),
(178, '2024-07-25 00:27:18', 'EFT-00BNK177 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 600, 0, 6871890),
(179, '2024-07-25 00:30:05', 'EFT-00BNK178 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 600, 0, 6871287),
(180, '2024-07-25 00:31:41', 'EFT-00BNK179 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 600, 0, 6870684),
(181, '2024-07-25 00:35:58', 'EFT-00BNK180 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 60, 0, 6870624),
(182, '2024-07-25 00:38:20', 'EFT-00BNK181 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 60, 0, 6870564),
(183, '2024-07-25 00:40:40', 'EFT-00BNK182 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 60, 0, 6870504),
(184, '2024-07-25 00:46:27', 'EFT-00BNK183 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 60, 0, 6870444),
(185, '2024-07-25 15:24:28', 'EFT-00BNK184 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 800, 0, 6869640),
(186, '2024-07-28 20:49:02', 'EFT-00BNK185 online transfer to beneficiary: Marcus Rolph, AC/No: 1756864032', 600, 0, 6869037),
(187, '2024-07-28 23:56:48', 'EFT-00BNK186 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 700, 0, 6868334),
(188, '2024-07-29 00:12:59', 'EFT-00BNK187 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 400, 0, 6867932),
(189, '2024-07-29 00:14:59', 'EFT-00BNK188 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 200, 0, 6867731),
(190, '2024-07-29 00:30:19', 'EFT-00BNK189 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 700, 0, 6867028),
(191, '2024-07-29 08:46:25', 'EFT-00BNK190 online transfer to beneficiary: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 1000, 0, 6866023),
(192, '2024-07-29 08:46:25', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 1000, 6868028),
(193, '2024-07-29 08:56:35', 'EFT-00BNK192 online transfer to beneficiary: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 2000, 0, 6866018),
(194, '2024-07-29 08:56:35', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 2000, 6870028),
(195, '2024-07-29 09:04:22', 'EFT-00BNK194 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 100, 0, 6869928),
(196, '2024-07-29 09:46:12', 'EFT-00BNK195 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 500, 0, 6869426),
(197, '2024-07-29 09:46:56', 'EFT-00BNK196 online transfer to beneficiary: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 600, 0, 6868823),
(198, '2024-07-29 09:46:56', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 600, 6870026),
(199, '2024-07-29 09:51:11', 'EFT-00BNK198 online transfer to beneficiary: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 1000, 0, 6869021),
(200, '2024-07-29 09:51:11', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 1000, 6871026),
(201, '2024-07-29 10:12:34', 'EFT-00BNK200 online transfer to beneficiary: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 100, 0, 6870926),
(202, '2024-07-29 10:12:34', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 100, 6871126),
(203, '2024-07-29 12:53:02', 'EFT-00BNK202 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 700, 0, 6870423),
(204, '2024-07-29 12:54:02', 'EFT-00BNK203 online transfer to beneficiary: Keanu Reeves, AC/No: 1022635421', 6000, 0, 6864393),
(205, '2024-07-29 12:55:33', 'EFT-00BNK204 online transfer to beneficiary: Vensys Energy   AG, AC/No: 1130259788', 2000, 0, 6862383);

-- --------------------------------------------------------

--
-- Table structure for table `passbook2`
--

CREATE TABLE `passbook2` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook2`
--

INSERT INTO `passbook2` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2017-09-06 22:21:54', 'Opening Balance', 0, 20000, 20000),
(2, '2017-09-10 15:35:39', 'Cash to Self', 2000, 0, 18000),
(3, '2017-09-26 17:51:47', 'Cash to Self', 2500, 0, 15500),
(4, '2017-09-26 17:52:31', 'Cash Deposit', 0, 3500, 19000),
(5, '2017-09-26 20:42:20', 'Cash Deposit', 0, 2500, 21500),
(6, '2017-09-26 20:44:17', 'Cash to Self', 1002, 0, 20498),
(7, '2017-09-29 19:38:04', 'Cash Deposit', 0, 20000, 40498),
(8, '2017-09-29 19:38:49', 'Cash to Self', 2000, 0, 38498),
(9, '2017-09-30 21:38:56', 'Cash Deposit', 0, 10000, 48498),
(10, '2017-10-02 18:49:26', 'Sent to: Nafees Zakee, AC/No: 1122334455', 20000, 0, 28498),
(11, '2017-10-03 00:18:44', 'Cash Deposit', 0, 500000, 528498),
(12, '2017-10-05 20:11:33', 'Sent to: Nafees Zakee, AC/No: 1122334455', 69000, 0, 459498),
(13, '2017-10-30 16:30:45', 'Cash Deposit', 0, 10000, 469498),
(14, '2017-11-19 17:03:45', 'Received from: Nafees Zakee, AC/No: 1122334455', 0, 50000, 519498),
(15, '2017-11-19 17:26:45', 'Sent to: Nafees Zakee, AC/No: 1122334455', 6123, 0, 513375),
(16, '2020-07-05 12:02:16', 'Received from: Nafees Zakee, AC/No: 1122334455', 0, 1000, 514375),
(17, '2020-07-05 12:06:53', 'Sent to: Nafees Zakee, AC/No: 1122334455', 100000, 0, 414375),
(18, '2020-07-05 12:49:06', 'Received from: Nafees Zakee, AC/No: 1122334455', 0, 10000, 424375),
(19, '2020-07-05 13:28:25', 'Received from: Nafees Zakee, AC/No: 1122334455', 0, 1000000, 1424375),
(20, '2020-07-10 11:23:14', 'Received from: Nafees Zakee, AC/No: 1122334455', 0, 10000, 1434375),
(21, '2021-07-20 07:38:42', 'Received from: golubev ci, AC/No: 84747346', 0, 126000, 1560375),
(22, '2021-07-20 07:59:16', 'Received from: golubev ci, AC/No: 84747346', 0, 1200, 1561575),
(23, '2021-07-20 08:00:34', 'Received from: golubev ci, AC/No: 84747346', 0, 2000, 1563575),
(24, '2021-07-20 08:19:46', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 1564575),
(25, '2023-09-26 04:40:31', 'Received from: Alexander Reyes Nick, AC/No: 1287904356', 0, 50000, 1614575),
(26, '2023-11-21 20:17:07', 'Received from: Marcus Rolph, AC/No: 1756864032', 0, 56, 1614631),
(27, '2024-07-24 03:00:10', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 1618131),
(28, '2024-07-24 03:04:20', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 1621631),
(29, '2024-07-24 03:08:20', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 1625131),
(30, '2024-07-24 03:08:26', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 1628631),
(31, '2024-07-24 03:09:37', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 1632131),
(32, '2024-07-24 11:30:02', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1641131),
(33, '2024-07-24 11:40:31', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1650131),
(34, '2024-07-24 11:41:15', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1659131),
(35, '2024-07-24 11:41:33', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1668131),
(36, '2024-07-24 11:41:46', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1677131),
(37, '2024-07-24 11:44:23', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1686131),
(38, '2024-07-24 11:44:53', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1695131),
(39, '2024-07-24 11:53:44', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1704131),
(40, '2024-07-24 11:54:05', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1713131),
(41, '2024-07-24 11:55:35', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1722131),
(42, '2024-07-24 11:55:56', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1731131),
(43, '2024-07-24 11:56:13', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1740131),
(44, '2024-07-24 11:57:12', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1749131),
(45, '2024-07-24 12:05:43', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1758131),
(46, '2024-07-24 12:06:32', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1767131),
(47, '2024-07-24 12:07:14', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1776131),
(48, '2024-07-24 12:17:34', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1785131),
(49, '2024-07-24 12:18:53', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1794131),
(50, '2024-07-24 12:20:49', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1803131),
(51, '2024-07-24 12:21:29', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1812131),
(52, '2024-07-24 12:23:33', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1821131),
(53, '2024-07-24 12:46:16', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1830131),
(54, '2024-07-24 12:46:28', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1839131),
(55, '2024-07-24 12:46:53', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1848131),
(56, '2024-07-24 12:47:15', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1857131),
(57, '2024-07-24 12:47:25', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1866131),
(58, '2024-07-24 12:57:14', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1875131),
(59, '2024-07-24 12:57:20', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1884131),
(60, '2024-07-24 12:57:32', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1893131),
(61, '2024-07-24 12:59:21', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1902131),
(62, '2024-07-24 13:00:52', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1911131),
(63, '2024-07-24 13:01:51', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1920131),
(64, '2024-07-24 13:02:39', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1929131),
(65, '2024-07-24 13:05:03', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1938131),
(66, '2024-07-24 13:05:53', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1947131),
(67, '2024-07-24 13:08:03', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1956131),
(68, '2024-07-24 13:17:21', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1965131),
(69, '2024-07-24 13:17:51', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1974131),
(70, '2024-07-24 13:18:28', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 1983131),
(71, '2024-07-24 13:27:12', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 1986631),
(72, '2024-07-24 13:29:46', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 1990131),
(73, '2024-07-24 13:30:28', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 1993631),
(74, '2024-07-24 13:30:48', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 1997131),
(75, '2024-07-24 13:31:29', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2000631),
(76, '2024-07-24 13:32:11', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2004131),
(77, '2024-07-24 13:32:46', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2007631),
(78, '2024-07-24 13:33:45', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2011131),
(79, '2024-07-24 13:35:09', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2014631),
(80, '2024-07-24 13:40:01', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2018131),
(81, '2024-07-24 13:41:45', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2021631),
(82, '2024-07-24 13:42:50', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2025131),
(83, '2024-07-24 13:43:11', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2028631),
(84, '2024-07-24 13:43:38', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2032131),
(85, '2024-07-24 13:44:00', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2035631),
(86, '2024-07-24 13:48:20', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2039131),
(87, '2024-07-24 13:49:59', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2042631),
(88, '2024-07-24 13:51:53', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2046131),
(89, '2024-07-24 13:55:37', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2049631),
(90, '2024-07-24 14:11:34', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2053131),
(91, '2024-07-24 14:11:53', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2056631),
(92, '2024-07-24 14:14:04', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2060131),
(93, '2024-07-24 14:15:57', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2063631),
(94, '2024-07-24 14:16:12', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2067131),
(95, '2024-07-24 14:16:49', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2070631),
(96, '2024-07-24 14:19:04', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2074131),
(97, '2024-07-24 14:19:37', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2077631),
(98, '2024-07-24 14:21:26', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2081131),
(99, '2024-07-24 14:22:38', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2084631),
(100, '2024-07-24 14:22:58', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2088131),
(101, '2024-07-24 14:24:12', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2091631),
(102, '2024-07-24 14:24:48', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2095131),
(103, '2024-07-24 14:24:56', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2098631),
(104, '2024-07-24 14:25:33', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2102131),
(105, '2024-07-24 14:26:05', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2105631),
(106, '2024-07-24 14:26:46', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2109131),
(107, '2024-07-24 14:27:09', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2112631),
(108, '2024-07-24 14:29:00', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2116131),
(109, '2024-07-24 14:31:01', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2119631),
(110, '2024-07-24 14:31:45', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2123131),
(111, '2024-07-24 14:37:51', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2126631),
(112, '2024-07-24 14:39:23', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2130131),
(113, '2024-07-24 14:41:51', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2133631),
(114, '2024-07-24 14:42:40', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2137131),
(115, '2024-07-24 14:45:17', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2140631),
(116, '2024-07-24 14:45:22', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2144131),
(117, '2024-07-24 14:46:49', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2147631),
(118, '2024-07-24 14:47:39', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2151131),
(119, '2024-07-24 14:48:10', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2154631),
(120, '2024-07-24 14:50:32', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2158131),
(121, '2024-07-24 14:53:27', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2161631),
(122, '2024-07-24 14:53:43', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2165131),
(123, '2024-07-24 14:57:29', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2168631),
(124, '2024-07-24 14:57:36', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2172131),
(125, '2024-07-24 15:01:51', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2175631),
(126, '2024-07-24 15:07:40', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2179131),
(127, '2024-07-24 15:09:48', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2182631),
(128, '2024-07-24 15:12:51', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2186131),
(129, '2024-07-24 15:19:19', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2189631),
(130, '2024-07-24 15:21:46', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2193131),
(131, '2024-07-24 15:22:58', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2196631),
(132, '2024-07-24 15:23:52', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2200131),
(133, '2024-07-24 15:24:29', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2203631),
(134, '2024-07-24 15:24:44', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2207131),
(135, '2024-07-24 15:24:57', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2210631),
(136, '2024-07-24 15:27:12', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2214131),
(137, '2024-07-24 15:31:02', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2217631),
(138, '2024-07-24 15:56:23', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 10000, 2227631),
(139, '2024-07-24 15:56:42', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 10000, 2237631),
(140, '2024-07-24 15:59:47', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 10000, 2247631),
(141, '2024-07-24 16:06:01', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 10000, 2257631),
(142, '2024-07-24 16:11:38', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2261131),
(143, '2024-07-24 16:12:24', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2264631),
(144, '2024-07-24 16:13:34', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 2273631),
(145, '2024-07-24 16:13:38', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 2282631),
(146, '2024-07-24 16:13:57', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 2291631),
(147, '2024-07-24 20:51:31', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 90, 2291721),
(148, '2024-07-24 22:34:05', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 2295221),
(149, '2024-07-24 22:39:57', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 2304221),
(150, '2024-07-24 23:25:38', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 2304281),
(151, '2024-07-24 23:28:50', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 10000, 2314281),
(152, '2024-07-24 23:42:28', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 90, 2314371),
(153, '2024-07-24 23:44:14', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 90, 2314461),
(154, '2024-07-24 23:44:46', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 90, 2314551),
(155, '2024-07-24 23:48:02', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 90, 2314641),
(156, '2024-07-24 23:50:34', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 90, 2314731),
(157, '2024-07-25 00:16:39', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 90, 2314821),
(158, '2024-07-25 00:23:01', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 1000, 2315821),
(159, '2024-07-25 00:26:24', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 500, 2316321),
(160, '2024-07-25 00:27:18', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 600, 2316921),
(161, '2024-07-25 00:30:05', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 600, 2317521),
(162, '2024-07-25 00:31:41', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 600, 2318121),
(163, '2024-07-25 00:35:58', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 2318181),
(164, '2024-07-25 00:38:20', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 2318241),
(165, '2024-07-25 00:40:40', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 2318301),
(166, '2024-07-25 00:46:27', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 2318361),
(167, '2024-07-25 15:24:28', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 800, 2319161),
(168, '2024-07-28 23:56:48', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 700, 2319861),
(169, '2024-07-29 00:12:59', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 400, 2320261),
(170, '2024-07-29 00:14:59', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 200, 2320461),
(171, '2024-07-29 00:30:19', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 700, 2321161),
(172, '2024-07-29 09:04:22', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 100, 2321261),
(173, '2024-07-29 09:46:12', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 500, 2321761),
(174, '2024-07-29 12:53:02', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 700, 2322461),
(175, '2024-07-29 12:55:33', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 2000, 2324461);

-- --------------------------------------------------------

--
-- Table structure for table `passbook3`
--

CREATE TABLE `passbook3` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook3`
--

INSERT INTO `passbook3` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2020-08-10 12:58:25', 'Opening Balance', 0, 4500, 4500),
(2, '2020-08-15 09:00:20', 'ATM Cash to Self', 100, 0, 4400),
(3, '2020-08-25 13:00:40', 'ATM Cash to Self', 150, 0, 4250),
(4, '2020-08-31 17:00:57', 'Walmart POS withdrawal ', 900, 0, 3350),
(5, '2020-09-01 03:01:09', 'Transfer to DCU Bank AC/No:****71273', 250, 0, 3100),
(6, '2020-09-04 16:22:26', ' Transfer to Bank of America AC/No*****19970', 2000, 0, 1100),
(7, '2020-09-07 19:59:10', 'ATM Check deposit', 0, 14000, 15100),
(21, '2020-11-13 14:15:08', 'Transfer from JP Morgan Chase bank AC/No: 113****665', 0, 3982070, 4311155),
(8, '2020-09-13 20:54:10', 'ATM Check deposit', 0, 21000, 36100),
(9, '2020-09-14 13:05:00', 'ATM Cash to Self', 7000, 0, 29100),
(10, '2020-09-18 08:05:34', 'ATM Cash to Self', 500, 0, 28600),
(11, '2020-09-20 08:05:45', 'Bank Charge: Debit card maintenance', 40, 0, 28560),
(12, '2020-09-24 08:05:54', 'Bank Charge: Stamp fee', 15, 0, 28545),
(13, '2020-09-30 06:07:04', 'Cashier deposit: Allen construction company ', 0, 450000, 478545),
(14, '2020-10-06 18:50:57', 'IRS Tax ', 1760, 0, 476785),
(15, '2020-10-10 10:08:41', 'ATM Cash to self', 700, 0, 476085),
(18, '2020-10-15 14:21:29', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 87000, 0, 389085),
(19, '2020-10-16 11:23:51', 'Sent to: Md Salman Ali, AC/No: 113****788', 65000, 0, 324085),
(20, '2020-10-23 16:48:13', 'Received from: Nando Malachovski, AC/No: 197****764', 0, 5000, 329085),
(22, '2020-11-24 01:29:29', 'Bank charge:Stamp fee', 700, 0, 4310455),
(23, '2020-11-29 04:29:50', 'Walmart POS card debit', 3000, 0, 4307455),
(24, '2020-12-03 02:30:12', 'ATM Cash to self ', 2500, 0, 4304955),
(25, '2020-12-08 04:30:30', 'Card debit Evergreen resort ', 1000, 0, 4303955),
(26, '2020-12-10 09:31:05', ' Transfer to Bank of America AC/No: 0843***870', 187480, 0, 4116475),
(27, '2020-12-13 01:12:23', 'Contractor\'s annual tax fee', 3000, 0, 4113475),
(28, '2020-12-17 19:10:23', 'Sent to: Yolly Verivsk AC/NO:0903***453', 7000, 0, 4106475),
(29, '2020-12-23 18:32:03', 'Sent to: Morris Bagman AC/NO: 387***202', 311999, 0, 3794476),
(30, '2020-12-25 21:02:20', 'Bank charge: S.M.S Fee', 90, 0, 3794386),
(31, '2020-12-28 04:03:40', 'Sent to: Davison Patric AC/NO: 857****354', 112890, 0, 3681496),
(32, '2020-12-31 14:33:50', 'Sent to: Tenmk Stanley, AC/No: 398***128', 69600, 0, 3611896),
(33, '2021-01-03 01:34:21', 'ATM Cash to self', 1400, 0, 3610496),
(34, '2021-01-12 20:35:03', 'Cash withdrawal', 445999, 0, 3164497),
(35, '2021-01-13 06:35:43', 'Sent to: Withney Obox, AC/No: 013******965', 182285, 0, 2982212),
(36, '2021-01-27 09:36:03', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 700, 0, 2981512),
(37, '2021-01-31 05:59:23', 'Sent to: Davison Patric AC/NO: 857****354', 727000, 0, 2254512),
(38, '2021-02-02 05:37:34', 'Sent to: Davison Patric AC/NO: 857****354', 208187, 0, 2046325),
(39, '2021-02-13 01:37:53', 'Bank charge: S.M.S Fee', 250, 0, 2046075),
(40, '2021-02-20 19:38:09', 'Sent to: Davison Patric AC/NO: 857****354', 2700, 0, 2043375),
(41, '2021-03-17 15:47:23', 'IRS Charge', 20000, 0, 2023375),
(42, '2021-03-23 22:46:11', 'Bank charge: stamp duty fee', 960, 0, 2022415),
(43, '2021-03-29 06:39:13', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 208187, 0, 1814228),
(44, '2021-04-10 20:39:35', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 77590, 0, 1736638),
(45, '2021-04-26 11:15:42', 'ATM Cash to self', 600, 0, 1736038),
(46, '2021-09-11 06:15:45', 'Sent to: Mavik Construction company AC/NO:284***3940', 10000, 0, 1726038),
(47, '2021-09-18 09:13:32', 'Sent to: Mavik Construction company AC/NO:284***3940', 25000, 0, 1701038),
(48, '2021-11-17 18:50:09', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 43000, 0, 1658038),
(49, '2021-11-25 14:41:41', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 54969, 0, 1603069),
(50, '2021-11-30 14:51:04', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 200000, 0, 1403069),
(51, '2021-12-16 20:42:48', 'Sent to: Mavik Construction company AC/NO:284***3940', 6000, 0, 1397069),
(52, '2021-12-17 15:21:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 15000, 0, 1382069),
(57, '2022-01-04 09:44:18', 'Card debit Transcort resort', 600, 0, 1381469),
(58, '2022-01-12 05:29:48', 'ATM Cash to self', 1800, 0, 1379669),
(59, '2022-01-14 16:18:23', ' Transfer to DCU Bank AC/No:****71273', 20000, 0, 1359669),
(60, '2022-01-19 12:26:35', 'Walmart POS withdrawal', 800, 0, 1358869),
(61, '2022-01-20 13:11:47', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 19500, 0, 1339369),
(62, '2022-01-25 04:17:37', 'Sent to: Davison Patric AC/NO: 857****354', 1650, 0, 1337719),
(63, '2022-02-01 12:43:06', 'Bank charge: Stamp fee	', 600, 0, 1337119),
(64, '2022-02-03 10:15:43', 'Sent to: Morris Bagman AC/NO: 387***202 ', 70000, 0, 1267119),
(65, '2022-02-08 14:21:42', 'Bank charge: S.M.S Fee', 50, 0, 1267069),
(66, '2022-03-19 04:27:54', 'IRS Tax	', 4000, 0, 1263069),
(67, '2022-03-24 10:42:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 50000, 0, 1213069),
(68, '2022-03-24 04:45:47', ' Transfer to Wellsfargo Bank AC/NO:203****183', 13000, 0, 1200069),
(69, '2022-03-30 22:43:04', 'ATM Cash to self', 550, 0, 1199519),
(70, '2022-04-04 23:44:01', 'Sent to: Mavik Construction company AC/NO:284***3940', 35000, 0, 1164519),
(71, '2022-04-07 02:24:47', 'ATM Cash to self', 400, 0, 1164119),
(72, '2022-04-11 12:59:56', 'Transfer to Bank of America AC/No: 0843***876', 78999, 0, 1085120),
(73, '2022-04-13 17:08:45', 'Contractor\'s annual tax fee', 4200, 0, 1080920),
(74, '2022-04-16 06:53:36', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 64000, 0, 1016920),
(75, '2022-04-18 11:43:25', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 14000, 0, 1002920),
(76, '2022-04-27 10:45:48', 'Sent to: Md Salman Ali, AC/No: 113****788', 29999, 0, 972921),
(77, '2022-04-30 09:19:36', ' cashier check deposit from Lorex Group Of Company', 0, 3500, 976421),
(78, '2022-05-01 23:52:50', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 268000, 0, 708421),
(79, '2022-05-06 12:02:06', 'International transfer to Awash Bank AC/NO: 384***262', 50945, 0, 657476),
(80, '2022-05-10 18:23:08', 'Transfer to: Gatubela Kristina, AC/No: 1176*****932', 15000, 0, 642476),
(81, '2022-05-13 22:31:31', 'web-funds-973FlightBooking/86-CardPurchase', 1500, 0, 640976),
(82, '2022-05-13 12:03:50', 'Monthly-MaintenanceFee-938/FeesPurchase0983', 300, 0, 640676),
(83, '2022-05-17 22:47:45', 'Shenzhen Energy, AC/No: 604****296', 0, 1500000, 2140676),
(84, '2022-05-20 07:20:54', 'ATM Cash to Self', 40000, 0, 2100676),
(85, '2022-05-24 08:30:26', 'Bank Transfer to Bank of America AC/No*****19970', 850000, 0, 1250676),
(86, '2022-05-28 09:54:12', 'Bank Transfer to DCU Bank AC/No:****71273', 70000, 0, 1180676),
(87, '2022-06-03 11:37:28', 'Sent to: Tushar Kr. Pandey, AC/No: ***8457', 80000, 0, 1100676),
(88, '2022-06-11 10:00:23', 'Sent to: Nafees Zakee, AC/No: 66****754', 500, 0, 1100176),
(89, '2022-06-18 06:10:55', 'Booking-Emirates Air/ Ticket-37672874', 200, 0, 1099976),
(94, '2022-06-24 03:07:49', 'Received from:Greg Rissi Muraback, AC/No:413***232', 0, 2100000, 3199976),
(95, '2022-06-30 19:24:45', 'Received from: Peterson Rodriguez, AC/No: 203****804', 0, 2900000, 6099976),
(96, '2022-07-01 23:13:14', 'Sent to: : King Bryan, AC/No: 90****437', 450000, 0, 5649976),
(97, '2022-07-08 11:13:34', 'Sent to: PNC Financial Services 451****871', 200000, 0, 5449976),
(98, '2022-07-12 09:16:44', 'Sent to: Bank of New York AC/No: 102****744', 120000, 0, 5329976),
(99, '2022-07-15 08:22:09', 'Sent to: Fifth Third Bank, AC/No: 963***102', 4000000, 0, 1329976),
(100, '2022-07-19 20:13:22', 'Received from: Jianlibao Group, AC/No: 781****340', 0, 5000000, 6329976),
(101, '2022-07-28 04:09:03', 'Received from: Kweichow Moutai 2600519.SS, AC/No: 781****004', 0, 2900000, 9229976),
(102, '2022-08-06 01:33:51', 'Sent to: U.S. Bank Branch, AC/No:21****975', 7000, 0, 9222976),
(103, '2022-08-11 05:34:18', 'Sent to: Truist Financial AC/No: 22****043', 100000, 0, 9122976),
(104, '2022-08-16 09:34:40', 'Sent to:Bank of the West AC/No 62***112', 800000, 0, 8322976),
(105, '2022-08-29 05:57:58', 'Sent to: Morgan Stanley, AC/No: 384**564', 3500, 0, 8319476),
(106, '2022-08-31 05:17:51', 'Sent to: Santander Bank, AC/No:343***210', 6000, 0, 8313476),
(107, '2022-09-05 10:36:09', 'Sent to: Capital One, AC/No: 905***524', 400000, 0, 7913476),
(108, '2022-09-10 08:24:54', 'Sent to: Fifth Third Bank, AC/No: 963***102', 80000, 0, 7833476),
(109, '2022-09-16 06:13:45', 'Sent to: U.S. Bank Branch, AC/No:21****975', 500000, 0, 7333476),
(110, '2022-09-23 07:40:27', 'Received from: Aluminum Corporation of China Limited, AC/No:610***563', 0, 4500000, 11833476),
(111, '2022-10-02 23:41:23', 'Sent to:Goldman Sachs, AC/No:*******6540', 56000, 0, 11777476),
(112, '2022-10-07 07:20:23', 'Sent to: Goldman Sachs, AC/No: ******6540', 700000, 0, 11077476),
(113, '2022-10-18 04:17:02', 'Sent to: Nando Malachovski, AC/No:****7656', 6000, 0, 11071476),
(114, '2022-10-22 04:42:21', 'Sent to: SunTrust Bank, AC/No:*****0965', 50000, 0, 11021476),
(115, '2022-11-04 09:20:43', 'Sent to: State Street Corporation, AC/No:***8345', 1000000, 0, 10021476),
(116, '2022-12-20 04:32:09', 'Sent to: Union Bank, AC/No:***** 084', 20000, 0, 10001476),
(117, '2022-11-25 16:25:49', 'Sent to: Ally Bank, AC/No:*****14324', 1000, 0, 10000476),
(118, '2022-11-29 06:25:07', 'Received from: Korean Electric Power Cooperation, AC/No: 982*****3224', 0, 3000000, 13000476),
(119, '2022-12-13 04:29:52', 'Sent to: Mavik Construction company AC/NO:284***3940', 7000, 0, 12993476),
(120, '2022-12-15 10:33:09', 'ATM Cash to self', 20000, 0, 12973476),
(121, '2022-12-22 10:40:27', 'Sent to: Md Salman Ali, AC/No: 113****788', 581000, 0, 12392476),
(122, '2022-12-28 17:46:48', 'Transfer to DCU Bank AC/No:****71273', 329000, 0, 12063476),
(123, '2023-01-03 05:19:12', 'Transfer to DCU Bank AC/No:****71273', 62740, 0, 12000736),
(124, '2023-01-14 08:35:06', 'Transfer to Bank of America AC/No: 0843***870', 90720, 0, 11910016),
(125, '2023-01-20 01:28:35', 'Sent to: Yolly Verivsk AC/NO:0903***453', 613540, 0, 11296476),
(126, '2023-05-26 09:18:09', 'Received from: Guoxuan High-Tech Power Energy Co. Ltd. AC/No: 203****804', 0, 1500000, 12796476),
(127, '2023-05-29 23:20:20', 'Received from: Green Hydrogen Systems  AC/No: 781****340', 0, 800000, 13596476),
(128, '2024-07-24 15:31:40', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 9000, 13605476),
(129, '2024-07-24 15:46:21', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 13605536),
(130, '2024-07-24 15:47:17', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 13605596),
(131, '2024-07-24 15:47:33', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 13605656),
(132, '2024-07-24 15:51:17', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3500, 13609156),
(133, '2024-07-24 15:53:18', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 3000, 13612156),
(134, '2024-07-24 23:35:02', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 13612216),
(135, '2024-07-24 23:39:49', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 60, 13612276),
(136, '2024-07-29 12:54:02', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 6000, 13618276);

-- --------------------------------------------------------

--
-- Table structure for table `passbook4`
--

CREATE TABLE `passbook4` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook4`
--

INSERT INTO `passbook4` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2020-08-10 12:58:25', 'Opening Balance', 0, 4500, 4500),
(2, '2020-08-15 09:00:20', 'ATM Cash to Self', 100, 0, 4400),
(3, '2020-08-25 13:00:40', 'ATM Cash to Self', 150, 0, 4250),
(4, '2020-08-31 17:00:57', 'Walmart POS withdrawal ', 900, 0, 3350),
(5, '2020-09-01 03:01:09', 'Transfer to DCU Bank AC/No:****71273', 250, 0, 3100),
(6, '2020-09-04 16:22:26', ' Transfer to Bank of America AC/No*****19970', 2000, 0, 1100),
(7, '2020-09-07 19:59:10', 'ATM Check deposit', 0, 14000, 15100),
(21, '2020-11-13 14:15:08', 'Transfer from JP Morgan Chase bank AC/No: 113****665', 0, 3982070, 4311155),
(8, '2020-09-13 20:54:10', 'ATM Check deposit', 0, 21000, 36100),
(9, '2020-09-14 13:05:00', 'ATM Cash to Self', 7000, 0, 29100),
(10, '2020-09-18 08:05:34', 'ATM Cash to Self', 500, 0, 28600),
(11, '2020-09-20 08:05:45', 'Bank Charge: Debit card maintenance', 40, 0, 28560),
(12, '2020-09-24 08:05:54', 'Bank Charge: Stamp fee', 15, 0, 28545),
(13, '2020-09-30 06:07:04', 'Cashier deposit: Allen Art Studio ', 0, 450000, 478545),
(14, '2020-10-06 18:50:57', 'Internal Revenue Service Tax ', 1760, 0, 476785),
(15, '2020-10-10 10:08:41', 'ATM Cash to self', 700, 0, 476085),
(18, '2020-10-15 14:21:29', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 87000, 0, 389085),
(19, '2020-10-16 11:23:51', 'Sent to: Md Salman Ali, AC/No: 113****788', 65000, 0, 324085),
(20, '2020-10-23 16:48:13', 'Received from: Nando Malachovski, AC/No: 197****764', 0, 5000, 329085),
(22, '2020-11-24 01:29:29', 'Bank charge:Stamp fee', 700, 0, 4310455),
(23, '2020-11-29 04:29:50', 'Walmart POS card debit', 3000, 0, 4307455),
(24, '2020-12-03 02:30:12', 'ATM Cash to self ', 2500, 0, 4304955),
(25, '2020-12-08 04:30:30', 'Card debit Evergreen resort ', 1000, 0, 4303955),
(26, '2020-12-10 09:31:05', ' Transfer to Bank of America AC/No: 0843***870', 187480, 0, 4116475),
(27, '2020-12-13 01:12:23', 'Importer\'s tax license fee', 3000, 0, 4113475),
(28, '2020-12-17 19:10:23', 'Sent to: Yolly Verivsk AC/NO:0903***453', 7000, 0, 4106475),
(29, '2020-12-23 18:32:03', 'Sent to: Morris Bagman AC/NO: 387***202', 311999, 0, 3794476),
(30, '2020-12-25 21:02:20', 'Bank charge: S.M.S Fee', 90, 0, 3794386),
(31, '2020-12-28 04:03:40', 'Sent to: Davison Patric AC/NO: 857****354', 112890, 0, 3681496),
(32, '2020-12-31 14:33:50', 'Sent to: Tenmk Stanley, AC/No: 398***128', 69600, 0, 3611896),
(33, '2021-01-03 01:34:21', 'ATM Cash to self', 1400, 0, 3610496),
(34, '2021-01-12 20:35:03', 'Cash withdrawal', 445999, 0, 3164497),
(35, '2021-01-13 06:35:43', 'Sent to: Withney Obox, AC/No: 013******965', 182285, 0, 2982212),
(36, '2021-01-27 09:36:03', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 700, 0, 2981512),
(37, '2021-01-31 05:59:23', 'Sent to: Davison Patric AC/NO: 857****354', 727000, 0, 2254512),
(38, '2021-02-02 05:37:34', 'Sent to: Davison Patric AC/NO: 857****354', 208187, 0, 2046325),
(39, '2021-02-13 01:37:53', 'Bank charge: S.M.S Fee', 250, 0, 2046075),
(40, '2021-02-20 19:38:09', 'Sent to: Davison Patric AC/NO: 857****354', 2700, 0, 2043375),
(41, '2021-03-17 15:47:23', 'IRS Charge', 20000, 0, 2023375),
(42, '2021-03-23 22:46:11', 'Bank charge: stamp duty fee', 960, 0, 2022415),
(43, '2021-03-29 06:39:13', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 208187, 0, 1814228),
(44, '2021-04-10 20:39:35', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 77590, 0, 1736638),
(45, '2021-04-26 11:15:42', 'ATM Cash to self', 600, 0, 1736038),
(46, '2021-09-11 06:15:45', 'Sent to: Mavik Views AC/NO:284***3940', 10000, 0, 1726038),
(47, '2021-09-18 09:13:32', 'Sent to: Mavik Views AC/NO:284***3940', 25000, 0, 1701038),
(48, '2021-11-17 18:50:09', 'Sent to: Constance Artifacts  AC/NO:00283***35', 43000, 0, 1658038),
(49, '2021-11-25 14:41:41', 'Sent to: Constance Artifacts AC/NO:00283***35', 54969, 0, 1603069),
(50, '2021-11-30 14:51:04', 'Sent to: Constance Artifacts AC/NO:00283***35', 200000, 0, 1403069),
(51, '2021-12-16 20:42:48', 'Sent to: Mavik Views AC/NO:284***3940', 6000, 0, 1397069),
(52, '2021-12-17 15:21:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 15000, 0, 1382069),
(57, '2022-01-04 09:44:18', 'Card debit Transcort resort', 600, 0, 1381469),
(58, '2022-01-12 05:29:48', 'ATM Cash to self', 1800, 0, 1379669),
(59, '2022-01-14 16:18:23', ' Transfer to DCU Bank AC/No:****71273', 20000, 0, 1359669),
(60, '2022-01-29 12:26:35', 'Walmart POS withdrawal', 800, 0, 1358869),
(61, '2022-02-09 13:11:47', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 19500, 0, 1339369),
(62, '2022-02-15 03:17:37', 'Sent to: Davison Patric AC/NO: 857****354', 1650, 0, 1337719),
(63, '2022-02-21 12:43:06', 'Bank charge: Stamp fee	', 600, 0, 1337119),
(64, '2022-03-05 10:15:43', 'Sent to: Morris Bagman AC/NO: 387***202 ', 70000, 0, 1267119),
(65, '2022-03-13 14:21:42', 'Bank charge: S.M.S Fee', 50, 0, 1267069),
(66, '2022-03-19 04:27:54', 'Internal Revenue Tax	', 4000, 0, 1263069),
(67, '2022-03-24 10:42:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 50000, 0, 1213069),
(68, '2022-05-04 04:45:47', ' Transfer to Wellsfargo Bank AC/NO:203****183', 13000, 0, 1200069),
(69, '2022-05-19 22:43:04', 'ATM Cash to self', 550, 0, 1199519),
(70, '2022-05-24 23:44:01', 'Sent to: Mavik Views AC/NO:284***3940', 35000, 0, 1164519),
(71, '2022-06-11 02:24:47', 'ATM Cash to self', 400, 0, 1164119),
(72, '2022-06-14 12:59:56', 'Transfer to Bank of America AC/No: 0843***876', 78999, 0, 1085120),
(73, '2022-06-15 17:08:45', 'Importer\'s tax license fee	', 4200, 0, 1080920),
(74, '2022-11-24 06:53:36', 'Sent to: Constance Artifacts  AC/NO:00283***35', 64000, 0, 1016920),
(75, '2022-11-29 11:43:25', 'Sent to: Constance Artifacts  AC/NO:00283***35', 14000, 0, 1002920),
(76, '2022-12-05 10:45:48', 'Sent to: Md Salman Ali, AC/No: 113****788', 29999, 0, 972921),
(77, '2022-12-13 09:19:36', ' cashier check deposit from Lorex Group Of Company', 0, 2067000, 3039921),
(78, '2022-12-28 23:52:50', 'Sent to: Constance Artifacts  AC/NO:00283***35', 268000, 0, 2771921),
(79, '2023-01-06 12:02:06', 'International transfer to Awash Bank AC/NO: 384***262', 509456, 0, 2262465),
(85, '2023-11-21 20:17:07', 'Sent to: Bruno Giacosa Inc., AC/No: 1133557788', 56, 0, 2262409),
(86, '2024-04-25 11:43:40', 'Sent to: Clifford Ralph  Parker, AC/No: 235199686', 1000000, 0, 1262409),
(87, '2024-04-25 11:45:05', 'Sent to: Russell Daley, AC/No: 817064888', 200000, 0, 1062409),
(88, '2024-07-28 20:49:02', 'Received from: Ghrepower Green Energy  Co., Ltd, AC/No: 1184203694', 0, 600, 1063009);

-- --------------------------------------------------------

--
-- Table structure for table `passbook5`
--

CREATE TABLE `passbook5` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook5`
--

INSERT INTO `passbook5` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2020-07-05 21:41:35', 'Opening Balance', 0, 20000000, 20000000),
(2, '2020-07-05 21:46:54', 'Sent to: Nafees Zakee, AC/No: 1122334455', 3000000, 0, 17000000),
(3, '2020-07-05 21:46:55', 'Sent to: Nafees Zakee, AC/No: 1122334455', 3000000, 0, 14000000),
(4, '2020-07-05 23:40:18', 'Cash to Self', 100, 0, 13999900);

-- --------------------------------------------------------

--
-- Table structure for table `passbook6`
--

CREATE TABLE `passbook6` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook6`
--

INSERT INTO `passbook6` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2017-08-10 12:58:25', 'Opening Balance', 0, 4500, 4500),
(2, '2017-08-15 09:00:20', 'ATM Cash to Self', 100, 0, 4400),
(3, '2017-10-05 13:00:41', 'ATM Cash to Self', 150, 0, 4250),
(4, '2017-11-01 17:00:57', 'Walmart POS withdrawal ', 900, 0, 3350),
(5, '2017-12-10 03:01:09', 'Bank Transfer to DCU Bank AC/No:****71273', 250, 0, 3100),
(6, '2018-02-10 16:22:26', 'Bank Transfer to Bank of America AC/No*****19970', 2000, 0, 1100),
(7, '2018-02-15 19:59:10', 'ATM Check deposit:United States Joint Board of Military Allowance', 0, 14000, 15100),
(8, '2018-03-23 20:54:10', 'ATM Check deposit: Department of Defense Monthly income', 0, 21000, 36100),
(9, '2018-12-10 13:05:00', 'ATM Cash to Self', 7000, 0, 29100),
(10, '2019-01-01 08:05:34', 'ATM Cash to Self', 500, 0, 28600),
(11, '2019-01-01 08:05:45', 'Bank Charge: Debit card maintenance', 40, 0, 28560),
(12, '2019-01-04 08:05:54', 'Bank Charge: Stamp fee', 15, 0, 28545),
(13, '2019-11-10 06:07:04', 'Bank Check deposit: United States Department of Defense Annual Grants', 0, 450000, 478545),
(14, '2020-01-06 18:50:57', 'IRS Tax ', 1760, 0, 476785),
(15, '2020-02-20 10:08:41', 'ATM Cash to self', 700, 0, 476085);

-- --------------------------------------------------------

--
-- Table structure for table `passbook7`
--

CREATE TABLE `passbook7` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passbook7`
--

INSERT INTO `passbook7` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2021-11-21 19:54:04', 'Opening Balance', 0, 20000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `passbook8`
--

CREATE TABLE `passbook8` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passbook8`
--

INSERT INTO `passbook8` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2023-02-08 09:53:47', 'Opening Balance', 0, 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `passbook9`
--

CREATE TABLE `passbook9` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passbook9`
--

INSERT INTO `passbook9` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2023-03-20 18:32:43', 'Opening Balance', 0, 50000000, 50000000),
(2, '2023-07-02 20:36:28', 'Received from: Clifford Ralph  Parker, AC/No: 235199686', 0, 50000, 50050000),
(3, '2023-07-03 10:03:02', 'Received from: Rica Bet William, AC/No: 642199474', 0, 17000, 50067000),
(4, '2023-09-28 03:28:48', 'Received from: Alexander Reyes Nick, AC/No: 1287904356', 0, 45000, 50112000),
(5, '2024-04-25 11:45:05', 'Received from: Marcus Rolph, AC/No: 1756864032', 0, 200000, 50312000);

-- --------------------------------------------------------

--
-- Table structure for table `passbook10`
--

CREATE TABLE `passbook10` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook10`
--

INSERT INTO `passbook10` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2020-08-10 12:58:25', 'Opening Balance', 0, 4500, 4500),
(2, '2020-08-15 09:00:20', 'ATM Cash to Self', 100, 0, 4400),
(3, '2020-08-25 13:00:40', 'ATM Cash to Self', 150, 0, 4250),
(4, '2020-08-31 17:00:57', 'Walmart POS withdrawal ', 900, 0, 3350),
(5, '2020-09-01 03:01:09', 'Transfer to DCU Bank AC/No:****71273', 250, 0, 3100),
(6, '2020-09-04 16:22:26', ' Transfer to Bank of America AC/No*****19970', 2000, 0, 1100),
(7, '2020-09-07 19:59:10', 'ATM Check deposit', 0, 14000, 15100),
(21, '2020-11-13 14:15:08', 'Transfer from JP Morgan Chase bank AC/No: 113****665', 0, 3982070, 4311155),
(8, '2020-09-13 20:54:10', 'ATM Check deposit', 0, 21000, 36100),
(9, '2020-09-14 13:05:00', 'ATM Cash to Self', 7000, 0, 29100),
(10, '2020-09-18 08:05:34', 'ATM Cash to Self', 500, 0, 28600),
(11, '2020-09-20 08:05:45', 'Bank Charge: Debit card maintenance', 40, 0, 28560),
(12, '2020-09-24 08:05:54', 'Bank Charge: Stamp fee', 15, 0, 28545),
(13, '2020-09-30 06:07:04', 'Cashier deposit: Allen construction company ', 0, 450000, 478545),
(14, '2020-10-06 18:50:57', 'IRS Tax ', 1760, 0, 476785),
(15, '2020-10-10 10:08:41', 'ATM Cash to self', 700, 0, 476085),
(18, '2020-10-15 14:21:29', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 87000, 0, 389085),
(19, '2020-10-16 11:23:51', 'Sent to: Md Salman Ali, AC/No: 113****788', 65000, 0, 324085),
(20, '2020-10-23 16:48:13', 'Received from: Nando Malachovski, AC/No: 197****764', 0, 5000, 329085),
(22, '2020-11-24 01:29:29', 'Bank charge:Stamp fee', 700, 0, 4310455),
(23, '2020-11-29 04:29:50', 'Walmart POS card debit', 3000, 0, 4307455),
(24, '2020-12-03 02:30:12', 'ATM Cash to self ', 2500, 0, 4304955),
(25, '2020-12-08 04:30:30', 'Card debit Evergreen resort ', 1000, 0, 4303955),
(26, '2020-12-10 09:31:05', ' Transfer to Bank of America AC/No: 0843***870', 187480, 0, 4116475),
(27, '2020-12-13 01:12:23', 'Contractor\'s annual tax fee', 3000, 0, 4113475),
(28, '2020-12-17 19:10:23', 'Sent to: Yolly Verivsk AC/NO:0903***453', 7000, 0, 4106475),
(29, '2020-12-23 18:32:03', 'Sent to: Morris Bagman AC/NO: 387***202', 311999, 0, 3794476),
(30, '2020-12-25 21:02:20', 'Bank charge: S.M.S Fee', 90, 0, 3794386),
(31, '2020-12-28 04:03:40', 'Sent to: Davison Patric AC/NO: 857****354', 112890, 0, 3681496),
(32, '2020-12-31 14:33:50', 'Sent to: Tenmk Stanley, AC/No: 398***128', 69600, 0, 3611896),
(33, '2021-01-03 01:34:21', 'ATM Cash to self', 1400, 0, 3610496),
(34, '2021-01-12 20:35:03', 'Cash withdrawal', 445999, 0, 3164497),
(35, '2021-01-13 06:35:43', 'Sent to: Withney Obox, AC/No: 013******965', 182285, 0, 2982212),
(36, '2021-01-27 09:36:03', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 700, 0, 2981512),
(37, '2021-01-31 05:59:23', 'Sent to: Davison Patric AC/NO: 857****354', 727000, 0, 2254512),
(38, '2021-02-02 05:37:34', 'Sent to: Davison Patric AC/NO: 857****354', 208187, 0, 2046325),
(39, '2021-02-13 01:37:53', 'Bank charge: S.M.S Fee', 250, 0, 2046075),
(40, '2021-02-20 19:38:09', 'Sent to: Davison Patric AC/NO: 857****354', 2700, 0, 2043375),
(41, '2021-03-17 15:47:23', 'IRS Charge', 20000, 0, 2023375),
(42, '2021-03-23 22:46:11', 'Bank charge: stamp duty fee', 960, 0, 2022415),
(43, '2021-03-29 06:39:13', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 208187, 0, 1814228),
(44, '2021-04-10 20:39:35', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 77590, 0, 1736638),
(45, '2021-04-26 11:15:42', 'ATM Cash to self', 600, 0, 1736038),
(46, '2021-09-11 06:15:45', 'Sent to: Mavik Construction company AC/NO:284***3940', 10000, 0, 1726038),
(47, '2021-09-18 09:13:32', 'Sent to: Mavik Construction company AC/NO:284***3940', 25000, 0, 1701038),
(48, '2021-11-17 18:50:09', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 43000, 0, 1658038),
(49, '2021-11-25 14:41:41', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 54969, 0, 1603069),
(50, '2021-11-30 14:51:04', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 200000, 0, 1403069),
(51, '2021-12-16 20:42:48', 'Sent to: Mavik Construction company AC/NO:284***3940', 6000, 0, 1397069),
(52, '2021-12-17 15:21:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 15000, 0, 1382069),
(57, '2022-01-04 09:44:18', 'Card debit Transcort resort', 600, 0, 1381469),
(58, '2022-01-12 05:29:48', 'ATM Cash to self', 1800, 0, 1379669),
(59, '2022-01-14 16:18:23', ' Transfer to DCU Bank AC/No:****71273', 20000, 0, 1359669),
(60, '2022-01-29 12:26:35', 'Walmart POS withdrawal', 800, 0, 1358869),
(61, '2022-02-09 13:11:47', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 19500, 0, 1339369),
(62, '2022-02-15 03:17:37', 'Sent to: Davison Patric AC/NO: 857****354', 1650, 0, 1337719),
(63, '2022-02-21 12:43:06', 'Bank charge: Stamp fee	', 600, 0, 1337119),
(64, '2022-03-05 10:15:43', 'Sent to: Morris Bagman AC/NO: 387***202 ', 70000, 0, 1267119),
(65, '2022-03-13 14:21:42', 'Bank charge: S.M.S Fee', 50, 0, 1267069),
(66, '2022-03-19 04:27:54', 'IRS Tax	', 4000, 0, 1263069),
(67, '2022-03-24 10:42:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 50000, 0, 1213069),
(68, '2022-05-04 04:45:47', ' Transfer to Wellsfargo Bank AC/NO:203****183', 13000, 0, 1200069),
(69, '2022-05-19 22:43:04', 'ATM Cash to self', 550, 0, 1199519),
(70, '2022-05-24 23:44:01', 'Sent to: Mavik Construction company AC/NO:284***3940', 35000, 0, 1164519),
(71, '2022-06-11 02:24:47', 'ATM Cash to self', 400, 0, 1164119),
(72, '2022-06-14 12:59:56', 'Transfer to Bank of America AC/No: 0843***876', 78999, 0, 1085120),
(73, '2022-06-15 17:08:45', 'Contractor\'s annual tax fee', 4200, 0, 1080920),
(74, '2022-11-24 06:53:36', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 64000, 0, 1016920),
(75, '2022-11-29 11:43:25', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 14000, 0, 1002920),
(76, '2022-12-05 10:45:48', 'Sent to: Md Salman Ali, AC/No: 113****788', 29999, 0, 972921),
(77, '2022-12-13 09:19:36', ' cashier check deposit from Lorex Group Of Company', 0, 2067000, 3039921),
(78, '2022-12-28 23:52:50', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 268000, 0, 2771921),
(79, '2023-01-06 12:02:06', 'International transfer to Awash Bank AC/NO: 384***262', 509456, 0, 2262465),
(80, '2023-01-11 17:08:16', 'Sent to: Jon Snow, AC/No: 1233556739', 100, 0, 2262365),
(81, '2023-07-02 20:36:28', 'Sent to: Russell Daley, AC/No: 817064888', 50000, 0, 2212365),
(82, '2024-04-25 11:43:40', 'Received from: Marcus Rolph, AC/No: 1756864032', 0, 1000000, 3212365);

-- --------------------------------------------------------

--
-- Table structure for table `passbook11`
--

CREATE TABLE `passbook11` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passbook11`
--

INSERT INTO `passbook11` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2023-07-02 15:06:34', 'Opening Balance', 0, 200000, 200000),
(2, '2023-07-03 09:57:57', 'Sent to: USMW DEFENCE , AC/No: 210035673', 15000, 0, 185000),
(4, '2023-10-20 12:48:32', 'Received from: Allen Vazquez Roberto, AC/No: 1935093264', 0, 1, 185001),
(5, '2023-10-23 17:17:03', 'Received from: Allen Vazquez Roberto, AC/No: 1935093264', 0, 0, 185001);

-- --------------------------------------------------------

--
-- Table structure for table `passbook12`
--

CREATE TABLE `passbook12` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook12`
--

INSERT INTO `passbook12` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2016-12-18 12:41:38', 'Opening Balance', 0, 27000000, 27000000),
(2, '2016-12-26 18:06:51', 'Mobile Transfer to Michael John', 5000000, 0, 22000000),
(3, '2016-12-26 01:48:09', 'Card maintenance', 50, 0, 21999950),
(4, '2016-07-18 12:48:29', 'FIP CHARGES', 30, 0, 21999920),
(5, '2017-04-27 12:49:53', 'Cash to Self', 12000, 0, 21988000),
(6, '2017-07-18 03:50:39', 'Cash to Self', 40000, 0, 21948000),
(7, '2017-10-20 05:51:45', 'Cash Deposit', 0, 30000, 21978000),
(8, '2018-07-18 08:32:08', 'Cash Deposit', 0, 5000, 21983000),
(9, '2018-09-06 12:55:43', 'Cash to Self', 4000, 0, 21979000),
(10, '2018-09-12 02:43:29', ' FIP:MB:Wellsfargo/Michael John/TrustMobile:nw', 5000000, 0, 16979000),
(11, '2019-04-07 05:57:28', 'Bank TELLER WITHDRAWAL-trustwealthbank/usa/405', 2000000, 0, 14979000),
(12, '2019-06-18 04:57:59', 'Cash Deposit', 0, 5000, 14984000),
(13, '2019-05-23 08:58:26', 'ATM WITHDRAWAL-Trustwealth bank/usa/408', 10000, 0, 14974000),
(14, '2020-07-25 17:12:08', 'Sent to: Chris Ridgway, AC/No: 1176435592', 100000, 0, 14874000),
(15, '2023-07-02 20:50:13', 'Opening Balance', 0, 10000, 10000),
(16, '2023-07-03 09:57:57', 'Received from: Rica Bet William, AC/No: 642199474', 0, 15000, 25000),
(17, '2023-08-17 03:00:33', 'Sent to: Buenconsejo Robilyn Morgado, AC/No: 692557808', 3500, 0, 21500),
(18, '2020-08-10 12:58:25', 'Opening Balance', 0, 4500, 4500),
(19, '2020-08-15 09:00:20', 'ATM Cash to Self', 100, 0, 4400),
(20, '2020-08-25 13:00:40', 'ATM Cash to Self', 150, 0, 4250),
(21, '2020-08-31 17:00:57', 'Walmart POS withdrawal ', 900, 0, 3350),
(22, '2020-09-01 03:01:09', 'Transfer to DCU Bank AC/No:****71273', 250, 0, 3100),
(23, '2020-09-04 16:22:26', ' Transfer to Bank of America AC/No*****19970', 2000, 0, 1100),
(24, '2020-09-07 19:59:10', 'ATM Check deposit', 0, 14000, 15100),
(25, '2020-11-13 14:15:08', 'Transfer from JP Morgan Chase bank AC/No: 113****665', 0, 3982070, 4311155),
(26, '2020-09-13 20:54:10', 'ATM Check deposit', 0, 21000, 36100),
(27, '2020-09-14 13:05:00', 'ATM Cash to Self', 7000, 0, 29100),
(28, '2020-09-18 08:05:34', 'ATM Cash to Self', 500, 0, 28600),
(29, '2020-09-20 08:05:45', 'Bank Charge: Debit card maintenance', 40, 0, 28560),
(30, '2020-09-24 08:05:54', 'Bank Charge: Stamp fee', 15, 0, 28545),
(31, '2020-09-30 06:07:04', 'Cashier deposit: Allen construction company ', 0, 450000, 478545),
(32, '2020-10-06 18:50:57', 'IRS Tax ', 1760, 0, 476785),
(33, '2020-10-10 10:08:41', 'ATM Cash to self', 700, 0, 476085),
(34, '2020-10-15 14:21:29', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 87000, 0, 389085),
(35, '2020-10-16 11:23:51', 'Sent to: Md Salman Ali, AC/No: 113****788', 65000, 0, 324085),
(36, '2020-10-23 16:48:13', 'Received from: Nando Malachovski, AC/No: 197****764', 0, 5000, 329085),
(37, '2020-11-24 01:29:29', 'Bank charge:Stamp fee', 700, 0, 4310455),
(38, '2020-11-29 04:29:50', 'Walmart POS card debit', 3000, 0, 4307455),
(39, '2020-12-03 02:30:12', 'ATM Cash to self ', 2500, 0, 4304955),
(40, '2020-12-08 04:30:30', 'Card debit Evergreen resort ', 1000, 0, 4303955),
(41, '2020-12-10 09:31:05', ' Transfer to Bank of America AC/No: 0843***870', 187480, 0, 4116475),
(42, '2020-12-13 01:12:23', 'Contractor\'s annual tax fee', 3000, 0, 4113475),
(43, '2020-12-17 19:10:23', 'Sent to: Yolly Verivsk AC/NO:0903***453', 7000, 0, 4106475),
(44, '2020-12-23 18:32:03', 'Sent to: Morris Bagman AC/NO: 387***202', 311999, 0, 3794476),
(45, '2020-12-25 21:02:20', 'Bank charge: S.M.S Fee', 90, 0, 3794386),
(46, '2020-12-28 04:03:40', 'Sent to: Davison Patric AC/NO: 857****354', 112890, 0, 3681496),
(47, '2020-12-31 14:33:50', 'Sent to: Tenmk Stanley, AC/No: 398***128', 69600, 0, 3611896),
(48, '2021-01-03 01:34:21', 'ATM Cash to self', 1400, 0, 3610496),
(49, '2021-01-12 20:35:03', 'Cash withdrawal', 445999, 0, 3164497),
(50, '2021-01-13 06:35:43', 'Sent to: Withney Obox, AC/No: 013******965', 182285, 0, 2982212),
(51, '2021-01-27 09:36:03', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 700, 0, 2981512),
(52, '2021-01-31 05:59:23', 'Sent to: Davison Patric AC/NO: 857****354', 727000, 0, 2254512),
(53, '2021-02-02 05:37:34', 'Sent to: Davison Patric AC/NO: 857****354', 208187, 0, 2046325),
(54, '2021-02-13 01:37:53', 'Bank charge: S.M.S Fee', 250, 0, 2046075),
(55, '2021-02-20 19:38:09', 'Sent to: Davison Patric AC/NO: 857****354', 2700, 0, 2043375),
(56, '2021-03-17 15:47:23', 'IRS Charge', 20000, 0, 2023375),
(57, '2021-03-23 22:46:11', 'Bank charge: stamp duty fee', 960, 0, 2022415),
(58, '2021-03-29 06:39:13', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 208187, 0, 1814228),
(59, '2021-04-10 20:39:35', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 77590, 0, 1736638),
(60, '2021-04-26 11:15:42', 'ATM Cash to self', 600, 0, 1736038),
(61, '2021-09-11 06:15:45', 'Sent to: Mavik Construction company AC/NO:284***3940', 10000, 0, 1726038),
(62, '2021-09-18 09:13:32', 'Sent to: Mavik Construction company AC/NO:284***3940', 25000, 0, 1701038),
(63, '2021-11-17 18:50:09', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 43000, 0, 1658038),
(64, '2021-11-25 14:41:41', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 54969, 0, 1603069),
(65, '2021-11-30 14:51:04', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 200000, 0, 1403069),
(66, '2021-12-16 20:42:48', 'Sent to: Mavik Construction company AC/NO:284***3940', 6000, 0, 1397069),
(67, '2021-12-17 15:21:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 15000, 0, 1382069),
(68, '2022-01-04 09:44:18', 'Card debit Transcort resort', 600, 0, 1381469),
(69, '2022-01-12 05:29:48', 'ATM Cash to self', 1800, 0, 1379669),
(70, '2022-01-14 16:18:23', ' Transfer to DCU Bank AC/No:****71273', 20000, 0, 1359669),
(71, '2022-01-29 12:26:35', 'Walmart POS withdrawal', 800, 0, 1358869),
(72, '2022-02-09 13:11:47', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 19500, 0, 1339369),
(73, '2022-02-15 03:17:37', 'Sent to: Davison Patric AC/NO: 857****354', 1650, 0, 1337719),
(74, '2022-02-21 12:43:06', 'Bank charge: Stamp fee	', 600, 0, 1337119),
(75, '2022-03-05 10:15:43', 'Sent to: Morris Bagman AC/NO: 387***202 ', 70000, 0, 1267119),
(76, '2022-03-13 14:21:42', 'Bank charge: S.M.S Fee', 50, 0, 1267069),
(77, '2022-03-19 04:27:54', 'IRS Tax	', 4000, 0, 1263069),
(78, '2022-03-24 10:42:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 50000, 0, 1213069),
(79, '2022-05-04 04:45:47', ' Transfer to Wellsfargo Bank AC/NO:203****183', 13000, 0, 1200069),
(80, '2022-05-19 22:43:04', 'ATM Cash to self', 550, 0, 1199519),
(81, '2022-05-24 23:44:01', 'Sent to: Mavik Construction company AC/NO:284***3940', 35000, 0, 1164519),
(82, '2022-06-11 02:24:47', 'ATM Cash to self', 400, 0, 1164119),
(83, '2022-06-14 12:59:56', 'Transfer to Bank of America AC/No: 0843***876', 78999, 0, 1085120),
(84, '2022-06-15 17:08:45', 'Contractor\'s annual tax fee', 4200, 0, 1080920),
(85, '2022-11-24 06:53:36', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 64000, 0, 1016920),
(86, '2022-11-29 11:43:25', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 14000, 0, 1002920),
(87, '2022-12-05 10:45:48', 'Sent to: Md Salman Ali, AC/No: 113****788', 29999, 0, 972921),
(88, '2022-12-13 09:19:36', ' cashier check deposit from Lorex Group Of Company', 0, 2067000, 3039921),
(89, '2022-12-28 23:52:50', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 268000, 0, 2771921),
(90, '2023-01-06 12:02:06', 'International transfer to Awash Bank AC/NO: 384***262', 509456, 0, 2262465);

-- --------------------------------------------------------

--
-- Table structure for table `passbook13`
--

CREATE TABLE `passbook13` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passbook13`
--

INSERT INTO `passbook13` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2023-07-17 11:33:52', 'Opening Balance', 0, 2800, 2800),
(2, '2023-08-17 03:00:33', 'Cash Deposit/4666-680DEP', 0, 3500, 6300);

-- --------------------------------------------------------

--
-- Table structure for table `passbook14`
--

CREATE TABLE `passbook14` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `passbook14`
--

INSERT INTO `passbook14` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2023-08-04 22:57:17', 'Opening Balance', 0, 15, 15),
(2, '2023-10-23 16:53:18', 'Received from: Allen Vazquez Roberto, AC/No: 1935093264', 0, 0, 15),
(3, '2024-07-23 03:53:00', NULL, 0, 1000, 1005),
(4, '2024-07-23 21:59:00', NULL, 0, 1000, 1005),
(5, '2024-07-25 21:58:00', 'obi pickup', 0, 1000, 3005),
(6, '2017-09-06 22:18:36', 'Opening Balance', 0, 10000, 10000),
(7, '2017-10-02 18:49:26', 'Received from: Salman Ali, AC/No: 1133557799', 0, 20000, 30000),
(8, '2017-10-02 21:02:32', 'Sent to: Jon Snow, AC/No: 1133557736', 10000, 0, 20000),
(9, '2017-10-05 20:11:33', 'Received from: Salman Ali, AC/No: 1133557799', 0, 69000, 89000),
(10, '2017-11-19 17:00:35', 'Cash Deposit', 0, 2000000, 2089000),
(11, '2017-11-19 17:01:09', 'Sent to: Jon Snow, AC/No: 1233556739', 15000, 0, 2074000),
(12, '2017-11-19 17:02:29', 'Cash to Self', 25000, 0, 2049000),
(13, '2017-11-19 17:03:45', 'Sent to: Md Salman Ali, AC/No: 1133557799', 50000, 0, 1999000),
(14, '2017-11-19 17:26:45', 'Received from: Md Salman Ali, AC/No: 1133557788', 0, 6123, 2005123),
(15, '2020-07-05 12:02:15', 'Sent to: Md Salman Ali, AC/No: 1133557788', 1000, 0, 2004123),
(16, '2020-07-05 12:04:04', 'Sent to: Jon Snow, AC/No: 1233556739', 10000, 0, 1994123),
(17, '2020-07-05 12:06:53', 'Received from: Md Salman Ali, AC/No: 1133557788', 0, 100000, 2094123),
(18, '2020-07-05 12:49:05', 'Sent to: Md Salman Ali, AC/No: 1133557788', 10000, 0, 2084123),
(19, '2020-07-05 13:28:25', 'Sent to: Md Salman Ali, AC/No: 1133557788', 1000000, 0, 1084123),
(20, '2020-07-05 13:32:36', 'Sent to: Tushar Kr. Pandey, AC/No: 1122338457', 100, 0, 1084023),
(21, '2020-07-05 14:27:14', 'Cash to Self', 1000, 0, 1083023),
(22, '2020-07-05 17:00:23', 'Cash Deposit', 0, 100, 1083123),
(23, '2020-07-05 17:02:01', 'Cash Deposit', 0, 200, 1083323),
(24, '2020-07-05 21:46:54', 'Received from: igwebuike stanley, AC/No: 1130766665', 0, 3000000, 4083323),
(25, '2020-07-05 21:46:55', 'Received from: igwebuike stanley, AC/No: 1130766665', 0, 3000000, 7083323),
(26, '2020-07-10 11:23:14', 'Sent to: Md Salman Ali, AC/No: 1133557788', 10000, 0, 7073323),
(27, '2021-04-08 02:02:40', 'Cash Deposit', 0, 10000, 7083323),
(28, '2021-04-08 02:07:33', 'Transfer Successful ', 10000, 0, 7073323),
(29, '2021-07-19 14:57:06', 'Sent to: Tushar Kr. Pandey, AC/No: 1122338457', 10000, 0, 7063323),
(30, '2021-07-19 14:58:57', 'Sent to: Tushar Kr. Pandey, AC/No: 1122338457', 10000, 0, 7053323),
(31, '2021-07-20 07:23:53', 'Received from: golubev ci, AC/No: 84747346', 0, 230000, 7283323),
(32, '2021-07-20 07:45:59', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 7284323),
(33, '2021-07-20 07:51:29', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 7285323),
(34, '2021-07-20 08:03:25', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 7286323),
(35, '2021-07-20 08:28:01', 'Received from: golubev ci, AC/No: 84747346', 0, 2500, 7288823),
(36, '2021-07-20 08:36:34', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7300823),
(37, '2021-07-20 08:45:15', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7312823),
(38, '2021-07-20 08:47:24', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7324823),
(39, '2021-07-20 09:02:01', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7336823),
(40, '2021-07-20 09:02:47', 'Received from: golubev ci, AC/No: 84747346', 0, 10000, 7346823),
(41, '2023-09-26 04:31:33', 'Received from: Alexander Reyes Nick, AC/No: 1287904356', 0, 240000, 7586823);

-- --------------------------------------------------------

--
-- Table structure for table `passbook15`
--

CREATE TABLE `passbook15` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook15`
--

INSERT INTO `passbook15` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2020-08-10 12:58:25', 'Opening Balance', 0, 4500, 4500),
(2, '2020-08-15 09:00:20', 'ATM Cash to Self', 100, 0, 4400),
(3, '2020-08-25 13:00:40', 'ATM Cash to Self', 150, 0, 4250),
(4, '2020-08-31 17:00:57', 'Walmart POS withdrawal ', 900, 0, 3350),
(5, '2020-09-01 03:01:09', 'Transfer to DCU Bank AC/No:****71273', 250, 0, 3100),
(6, '2020-09-04 16:22:26', ' Transfer to Bank of America AC/No*****19970', 2000, 0, 1100),
(7, '2020-09-07 19:59:10', 'ATM Check deposit', 0, 14000, 15100),
(21, '2020-11-13 14:15:08', 'Transfer from JP Morgan Chase bank AC/No: 113****665', 0, 3982070, 4311155),
(8, '2020-09-13 20:54:10', 'ATM Check deposit', 0, 21000, 36100),
(9, '2020-09-14 13:05:00', 'ATM Cash to Self', 7000, 0, 29100),
(10, '2020-09-18 08:05:34', 'ATM Cash to Self', 500, 0, 28600),
(11, '2020-09-20 08:05:45', 'Bank Charge: Debit card maintenance', 40, 0, 28560),
(12, '2020-09-24 08:05:54', 'Bank Charge: Stamp fee', 15, 0, 28545),
(13, '2020-09-30 06:07:04', 'Cashier deposit: Allen construction company ', 0, 450000, 478545),
(14, '2020-10-06 18:50:57', 'IRS Tax ', 1760, 0, 476785),
(15, '2020-10-10 10:08:41', 'ATM Cash to self', 700, 0, 476085),
(18, '2020-10-15 14:21:29', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 87000, 0, 389085),
(19, '2020-10-16 11:23:51', 'Sent to: Md Salman Ali, AC/No: 113****788', 65000, 0, 324085),
(20, '2020-10-23 16:48:13', 'Received from: Nando Malachovski, AC/No: 197****764', 0, 5000, 329085),
(22, '2020-11-24 01:29:29', 'Bank charge:Stamp fee', 700, 0, 4310455),
(23, '2020-11-29 04:29:50', 'Walmart POS card debit', 3000, 0, 4307455),
(24, '2020-12-03 02:30:12', 'ATM Cash to self ', 2500, 0, 4304955),
(25, '2020-12-08 04:30:30', 'Card debit Evergreen resort ', 1000, 0, 4303955),
(26, '2020-12-10 09:31:05', ' Transfer to Bank of America AC/No: 0843***870', 187480, 0, 4116475),
(27, '2020-12-13 01:12:23', 'Contractor\'s annual tax fee', 3000, 0, 4113475),
(28, '2020-12-17 19:10:23', 'Sent to: Yolly Verivsk AC/NO:0903***453', 7000, 0, 4106475),
(29, '2020-12-23 18:32:03', 'Sent to: Morris Bagman AC/NO: 387***202', 311999, 0, 3794476),
(30, '2020-12-25 21:02:20', 'Bank charge: S.M.S Fee', 90, 0, 3794386),
(31, '2020-12-28 04:03:40', 'Sent to: Davison Patric AC/NO: 857****354', 112890, 0, 3681496),
(32, '2020-12-31 14:33:50', 'Sent to: Tenmk Stanley, AC/No: 398***128', 69600, 0, 3611896),
(33, '2021-01-03 01:34:21', 'ATM Cash to self', 1400, 0, 3610496),
(34, '2021-01-12 20:35:03', 'Cash withdrawal', 445999, 0, 3164497),
(35, '2021-01-13 06:35:43', 'Sent to: Withney Obox, AC/No: 013******965', 182285, 0, 2982212),
(36, '2021-01-27 09:36:03', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 700, 0, 2981512),
(37, '2021-01-31 05:59:23', 'Sent to: Davison Patric AC/NO: 857****354', 727000, 0, 2254512),
(38, '2021-02-02 05:37:34', 'Sent to: Davison Patric AC/NO: 857****354', 208187, 0, 2046325),
(39, '2021-02-13 01:37:53', 'Bank charge: S.M.S Fee', 250, 0, 2046075),
(40, '2021-02-20 19:38:09', 'Sent to: Davison Patric AC/NO: 857****354', 2700, 0, 2043375),
(41, '2021-03-17 15:47:23', 'IRS Charge', 20000, 0, 2023375),
(42, '2021-03-23 22:46:11', 'Bank charge: stamp duty fee', 960, 0, 2022415),
(43, '2021-03-29 06:39:13', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 208187, 0, 1814228),
(44, '2021-04-10 20:39:35', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 77590, 0, 1736638),
(45, '2021-04-26 11:15:42', 'ATM Cash to self', 600, 0, 1736038),
(46, '2021-09-11 06:15:45', 'Sent to: Mavik Construction company AC/NO:284***3940', 10000, 0, 1726038),
(47, '2021-09-18 09:13:32', 'Sent to: Mavik Construction company AC/NO:284***3940', 25000, 0, 1701038),
(48, '2021-11-17 18:50:09', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 43000, 0, 1658038),
(49, '2021-11-25 14:41:41', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 54969, 0, 1603069),
(50, '2021-11-30 14:51:04', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 200000, 0, 1403069),
(51, '2021-12-16 20:42:48', 'Sent to: Mavik Construction company AC/NO:284***3940', 6000, 0, 1397069),
(52, '2021-12-17 15:21:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 15000, 0, 1382069),
(57, '2022-01-04 09:44:18', 'Card debit Transcort resort', 600, 0, 1381469),
(58, '2022-01-12 05:29:48', 'ATM Cash to self', 1800, 0, 1379669),
(59, '2022-01-14 16:18:23', ' Transfer to DCU Bank AC/No:****71273', 20000, 0, 1359669),
(60, '2022-01-29 12:26:35', 'Walmart POS withdrawal', 800, 0, 1358869),
(61, '2022-02-09 13:11:47', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 19500, 0, 1339369),
(62, '2022-02-15 03:17:37', 'Sent to: Davison Patric AC/NO: 857****354', 1650, 0, 1337719),
(63, '2022-02-21 12:43:06', 'Bank charge: Stamp fee	', 600, 0, 1337119),
(64, '2022-03-05 10:15:43', 'Sent to: Morris Bagman AC/NO: 387***202 ', 70000, 0, 1267119),
(65, '2022-03-13 14:21:42', 'Bank charge: S.M.S Fee', 50, 0, 1267069),
(66, '2022-03-19 04:27:54', 'IRS Tax	', 4000, 0, 1263069),
(67, '2022-03-24 10:42:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 50000, 0, 1213069),
(68, '2022-05-04 04:45:47', ' Transfer to Wellsfargo Bank AC/NO:203****183', 13000, 0, 1200069),
(69, '2022-05-19 22:43:04', 'ATM Cash to self', 550, 0, 1199519),
(70, '2022-05-24 23:44:01', 'Sent to: Mavik Construction company AC/NO:284***3940', 35000, 0, 1164519),
(71, '2022-06-11 02:24:47', 'ATM Cash to self', 400, 0, 1164119),
(72, '2022-06-14 12:59:56', 'Transfer to Bank of America AC/No: 0843***876', 78999, 0, 1085120),
(73, '2022-06-15 17:08:45', 'Contractor\'s annual tax fee', 4200, 0, 1080920),
(74, '2022-11-24 06:53:36', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 64000, 0, 1016920),
(75, '2023-05-29 11:43:25', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 14000, 0, 1002920),
(76, '2023-06-05 10:45:48', 'Sent to: Md Salman Ali, AC/No: 113****788', 29999, 0, 972921),
(82, '2023-10-20 12:48:32', 'Sent to: Rica Bet William, AC/No: 642199474', 1, 0, 977920),
(81, '2023-10-18 22:41:04', 'Received from: Allen Vazquez Roberto, AC/No: 1935093264', 0, 5000, 977921),
(80, '2023-10-18 22:41:04', 'Sent to: Allen Vazquez Roberto, AC/No: 1935093264', 5000, 0, 967921),
(83, '2023-10-23 05:11:25', 'Sent to: Allen Vazquez Roberto, AC/No: 1935093264', 0, 0, 977920),
(84, '2023-10-23 05:11:25', 'Received from: Allen Vazquez Roberto, AC/No: 1935093264', 0, 0, 977920),
(85, '2023-10-23 16:53:18', 'Sent to: Memphis  Flight Academy , AC/No: 2147483647', 0, 0, 977920),
(86, '2023-10-23 17:17:03', 'Sent to: Rica Bet William, AC/No: 642199474', 0, 0, 977920),
(87, '2017-09-06 22:18:36', 'Opening Balance', 0, 10000, 10000),
(88, '2017-10-02 18:49:26', 'Received from: Salman Ali, AC/No: 1133557799', 0, 20000, 30000),
(89, '2017-10-02 21:02:32', 'Sent to: Jon Snow, AC/No: 1133557736', 10000, 0, 20000),
(90, '2017-10-05 20:11:33', 'Received from: Salman Ali, AC/No: 1133557799', 0, 69000, 89000),
(91, '2017-11-19 17:00:35', 'Cash Deposit', 0, 2000000, 2089000),
(92, '2017-11-19 17:01:09', 'Sent to: Jon Snow, AC/No: 1233556739', 15000, 0, 2074000),
(93, '2017-11-19 17:02:29', 'Cash to Self', 25000, 0, 2049000),
(94, '2017-11-19 17:03:45', 'Sent to: Md Salman Ali, AC/No: 1133557799', 50000, 0, 1999000),
(95, '2017-11-19 17:26:45', 'Received from: Md Salman Ali, AC/No: 1133557788', 0, 6123, 2005123),
(96, '2020-07-05 12:02:15', 'Sent to: Md Salman Ali, AC/No: 1133557788', 1000, 0, 2004123),
(97, '2020-07-05 12:04:04', 'Sent to: Jon Snow, AC/No: 1233556739', 10000, 0, 1994123),
(98, '2020-07-05 12:06:53', 'Received from: Md Salman Ali, AC/No: 1133557788', 0, 100000, 2094123),
(99, '2020-07-05 12:49:05', 'Sent to: Md Salman Ali, AC/No: 1133557788', 10000, 0, 2084123),
(100, '2020-07-05 13:28:25', 'Sent to: Md Salman Ali, AC/No: 1133557788', 1000000, 0, 1084123),
(101, '2020-07-05 13:32:36', 'Sent to: Tushar Kr. Pandey, AC/No: 1122338457', 100, 0, 1084023),
(102, '2020-07-05 14:27:14', 'Cash to Self', 1000, 0, 1083023),
(103, '2020-07-05 17:00:23', 'Cash Deposit', 0, 100, 1083123),
(104, '2020-07-05 17:02:01', 'Cash Deposit', 0, 200, 1083323),
(105, '2020-07-05 21:46:54', 'Received from: igwebuike stanley, AC/No: 1130766665', 0, 3000000, 4083323),
(106, '2020-07-05 21:46:55', 'Received from: igwebuike stanley, AC/No: 1130766665', 0, 3000000, 7083323),
(107, '2020-07-10 11:23:14', 'Sent to: Md Salman Ali, AC/No: 1133557788', 10000, 0, 7073323),
(108, '2021-04-08 02:02:40', 'Cash Deposit', 0, 10000, 7083323),
(109, '2021-04-08 02:07:33', 'Transfer Successful ', 10000, 0, 7073323),
(110, '2021-07-19 14:57:06', 'Sent to: Tushar Kr. Pandey, AC/No: 1122338457', 10000, 0, 7063323),
(111, '2021-07-19 14:58:57', 'Sent to: Tushar Kr. Pandey, AC/No: 1122338457', 10000, 0, 7053323),
(112, '2021-07-20 07:23:53', 'Received from: golubev ci, AC/No: 84747346', 0, 230000, 7283323),
(113, '2021-07-20 07:45:59', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 7284323),
(114, '2021-07-20 07:51:29', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 7285323),
(115, '2021-07-20 08:03:25', 'Received from: golubev ci, AC/No: 84747346', 0, 1000, 7286323),
(116, '2021-07-20 08:28:01', 'Received from: golubev ci, AC/No: 84747346', 0, 2500, 7288823),
(117, '2021-07-20 08:36:34', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7300823),
(118, '2021-07-20 08:45:15', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7312823),
(119, '2021-07-20 08:47:24', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7324823),
(120, '2021-07-20 09:02:01', 'Received from: golubev ci, AC/No: 84747346', 0, 12000, 7336823),
(121, '2021-07-20 09:02:47', 'Received from: golubev ci, AC/No: 84747346', 0, 10000, 7346823),
(122, '2023-09-26 04:31:33', 'Received from: Alexander Reyes Nick, AC/No: 1287904356', 0, 240000, 7586823);

-- --------------------------------------------------------

--
-- Table structure for table `passbook18`
--

CREATE TABLE `passbook18` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook18`
--

INSERT INTO `passbook18` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2017-08-10 12:58:25', 'Opening Balance', 0, 4500, 4500),
(2, '2017-08-15 09:00:20', 'ATM Cash to Self', 100, 0, 4400),
(3, '2017-10-05 13:00:41', 'ATM Cash to Self', 150, 0, 4250),
(4, '2017-11-01 17:00:57', 'Walmart POS withdrawal ', 900, 0, 3350),
(5, '2017-12-10 03:01:09', 'Bank Transfer to DCU Bank AC/No:****71273', 250, 0, 3100),
(6, '2018-02-10 16:22:26', 'Bank Transfer to Bank of America AC/No*****19970', 2000, 0, 1100),
(7, '2018-02-15 19:59:10', 'ATM Check deposit:United States Joint Board of Military Allowance', 0, 14000, 15100),
(8, '2018-03-23 20:54:10', 'ATM Check deposit: Department of Defense Monthly income', 0, 21000, 36100),
(9, '2018-12-10 13:05:00', 'ATM Cash to Self', 7000, 0, 29100),
(10, '2019-01-01 08:05:34', 'ATM Cash to Self', 500, 0, 28600),
(11, '2019-01-01 08:05:45', 'Bank Charge: Debit card maintenance', 40, 0, 28560),
(12, '2019-01-04 08:05:54', 'Bank Charge: Stamp fee', 15, 0, 28545),
(13, '2019-11-10 06:07:04', 'Bank Check deposit: United States Department of Defense Annual Grants', 0, 450000, 478545),
(14, '2020-01-06 18:50:57', 'IRS Tax ', 1760, 0, 476785),
(15, '2020-02-20 10:08:41', 'ATM Cash to self', 700, 0, 476085);

-- --------------------------------------------------------

--
-- Table structure for table `passbook27`
--

CREATE TABLE `passbook27` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook27`
--

INSERT INTO `passbook27` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2020-08-10 12:58:25', 'Opening Balance', 0, 4500, 4500),
(2, '2020-08-15 09:00:20', 'ATM Cash to Self', 100, 0, 4400),
(3, '2020-08-25 13:00:40', 'ATM Cash to Self', 150, 0, 4250),
(4, '2020-08-31 17:00:57', 'Walmart POS withdrawal ', 900, 0, 3350),
(5, '2020-09-01 03:01:09', 'Transfer to DCU Bank AC/No:****71273', 250, 0, 3100),
(6, '2020-09-04 16:22:26', ' Transfer to Bank of America AC/No*****19970', 2000, 0, 1100),
(7, '2020-09-07 19:59:10', 'ATM Check deposit', 0, 14000, 15100),
(21, '2020-11-13 14:15:08', 'Transfer from JP Morgan Chase bank AC/No: 113****665', 0, 3982070, 4311155),
(8, '2020-09-13 20:54:10', 'ATM Check deposit', 0, 21000, 36100),
(9, '2020-09-14 13:05:00', 'ATM Cash to Self', 7000, 0, 29100),
(10, '2020-09-18 08:05:34', 'ATM Cash to Self', 500, 0, 28600),
(11, '2020-09-20 08:05:45', 'Bank Charge: Debit card maintenance', 40, 0, 28560),
(12, '2020-09-24 08:05:54', 'Bank Charge: Stamp fee', 15, 0, 28545),
(13, '2020-09-30 06:07:04', 'Cashier deposit: Allen construction company ', 0, 450000, 478545),
(14, '2020-10-06 18:50:57', 'IRS Tax ', 1760, 0, 476785),
(15, '2020-10-10 10:08:41', 'ATM Cash to self', 700, 0, 476085),
(18, '2020-10-15 14:21:29', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 87000, 0, 389085),
(19, '2020-10-16 11:23:51', 'Sent to: Md Salman Ali, AC/No: 113****788', 65000, 0, 324085),
(20, '2020-10-23 16:48:13', 'Received from: Nando Malachovski, AC/No: 197****764', 0, 5000, 329085),
(22, '2020-11-24 01:29:29', 'Bank charge:Stamp fee', 700, 0, 4310455),
(23, '2020-11-29 04:29:50', 'Walmart POS card debit', 3000, 0, 4307455),
(24, '2020-12-03 02:30:12', 'ATM Cash to self ', 2500, 0, 4304955),
(25, '2020-12-08 04:30:30', 'Card debit Evergreen resort ', 1000, 0, 4303955),
(26, '2020-12-10 09:31:05', ' Transfer to Bank of America AC/No: 0843***870', 187480, 0, 4116475),
(27, '2020-12-13 01:12:23', 'Contractor\'s annual tax fee', 3000, 0, 4113475),
(28, '2020-12-17 19:10:23', 'Sent to: Yolly Verivsk AC/NO:0903***453', 7000, 0, 4106475),
(29, '2020-12-23 18:32:03', 'Sent to: Morris Bagman AC/NO: 387***202', 311999, 0, 3794476),
(30, '2020-12-25 21:02:20', 'Bank charge: S.M.S Fee', 90, 0, 3794386),
(31, '2020-12-28 04:03:40', 'Sent to: Davison Patric AC/NO: 857****354', 112890, 0, 3681496),
(32, '2020-12-31 14:33:50', 'Sent to: Tenmk Stanley, AC/No: 398***128', 69600, 0, 3611896),
(33, '2021-01-03 01:34:21', 'ATM Cash to self', 1400, 0, 3610496),
(34, '2021-01-12 20:35:03', 'Cash withdrawal', 445999, 0, 3164497),
(35, '2021-01-13 06:35:43', 'Sent to: Withney Obox, AC/No: 013******965', 182285, 0, 2982212),
(36, '2021-01-27 09:36:03', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 700, 0, 2981512),
(37, '2021-01-31 05:59:23', 'Sent to: Davison Patric AC/NO: 857****354', 727000, 0, 2254512),
(38, '2021-02-02 05:37:34', 'Sent to: Davison Patric AC/NO: 857****354', 208187, 0, 2046325),
(39, '2021-02-13 01:37:53', 'Bank charge: S.M.S Fee', 250, 0, 2046075),
(40, '2021-02-20 19:38:09', 'Sent to: Davison Patric AC/NO: 857****354', 2700, 0, 2043375),
(41, '2021-03-17 15:47:23', 'IRS Charge', 20000, 0, 2023375),
(42, '2021-03-23 22:46:11', 'Bank charge: stamp duty fee', 960, 0, 2022415),
(43, '2021-03-29 06:39:13', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 208187, 0, 1814228),
(44, '2021-04-10 20:39:35', 'Sent to: Vinicius Hendrix, AC/NO: 937***635', 77590, 0, 1736638),
(45, '2021-04-26 11:15:42', 'ATM Cash to self', 600, 0, 1736038),
(46, '2021-09-11 06:15:45', 'Sent to: Mavik Construction company AC/NO:284***3940', 10000, 0, 1726038),
(47, '2021-09-18 09:13:32', 'Sent to: Mavik Construction company AC/NO:284***3940', 25000, 0, 1701038),
(48, '2021-11-17 18:50:09', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 43000, 0, 1658038),
(49, '2021-11-25 14:41:41', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 54969, 0, 1603069),
(50, '2021-11-30 14:51:04', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 200000, 0, 1403069),
(51, '2021-12-16 20:42:48', 'Sent to: Mavik Construction company AC/NO:284***3940', 6000, 0, 1397069),
(52, '2021-12-17 15:21:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 15000, 0, 1382069),
(57, '2022-01-04 09:44:18', 'Card debit Transcort resort', 600, 0, 1381469),
(58, '2022-01-12 05:29:48', 'ATM Cash to self', 1800, 0, 1379669),
(59, '2022-01-14 16:18:23', ' Transfer to DCU Bank AC/No:****71273', 20000, 0, 1359669),
(60, '2022-01-29 12:26:35', 'Walmart POS withdrawal', 800, 0, 1358869),
(61, '2022-02-09 13:11:47', 'Sent to: Tushar Kr. Pandey, AC/No: 11****457', 19500, 0, 1339369),
(62, '2022-02-15 03:17:37', 'Sent to: Davison Patric AC/NO: 857****354', 1650, 0, 1337719),
(63, '2022-02-21 12:43:06', 'Bank charge: Stamp fee	', 600, 0, 1337119),
(64, '2022-03-05 10:15:43', 'Sent to: Morris Bagman AC/NO: 387***202 ', 70000, 0, 1267119),
(65, '2022-03-13 14:21:42', 'Bank charge: S.M.S Fee', 50, 0, 1267069),
(66, '2022-03-19 04:27:54', 'IRS Tax	', 4000, 0, 1263069),
(67, '2022-03-24 10:42:33', 'Sent to: Tenmk Stanley, AC/No: 398***128', 50000, 0, 1213069),
(68, '2022-05-04 04:45:47', ' Transfer to Wellsfargo Bank AC/NO:203****183', 13000, 0, 1200069),
(69, '2022-05-19 22:43:04', 'ATM Cash to self', 550, 0, 1199519),
(70, '2022-05-24 23:44:01', 'Sent to: Mavik Construction company AC/NO:284***3940', 35000, 0, 1164519),
(71, '2022-06-11 02:24:47', 'ATM Cash to self', 400, 0, 1164119),
(72, '2022-06-14 12:59:56', 'Transfer to Bank of America AC/No: 0843***876', 78999, 0, 1085120),
(73, '2022-06-15 17:08:45', 'Contractor\'s annual tax fee', 4200, 0, 1080920),
(74, '2022-11-24 06:53:36', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 64000, 0, 1016920),
(75, '2022-11-29 11:43:25', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 14000, 0, 1002920),
(76, '2022-12-05 10:45:48', 'Sent to: Md Salman Ali, AC/No: 113****788', 29999, 0, 972921),
(77, '2022-12-13 09:19:36', ' cashier check deposit from Lorex Group Of Company', 0, 2067000, 3039921),
(78, '2022-12-28 23:52:50', 'Sent to: Constance Ville Realtor AC/NO:00283***35', 268000, 0, 2771921),
(79, '2023-01-06 12:02:06', 'International transfer to Awash Bank AC/NO: 384***262', 509456, 0, 2262465);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(10) NOT NULL,
  `fname` varchar(1000) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phno` varchar(150) NOT NULL,
  `email` varchar(250) NOT NULL,
  `pass_no` varchar(120) NOT NULL,
  `uname` varchar(200) NOT NULL,
  `pwd` varchar(150) NOT NULL,
  `pin` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `fname`, `lname`, `dob`, `address`, `phno`, `email`, `pass_no`, `uname`, `pwd`, `pin`) VALUES
(3, 'chidera', 'okeke', '1999-04-05', 'texas', '08134491253', 'stankendografix@gmail.com', '9876543', 'chidex', 'danda533', '1234'),
(4, 'å´ä¸œæ¢…', 'å´ä¸œæ¢…', '2023-08-03', 'ä¸­å›½', 'wdm123456*', '1316349072@qq.com', 'ä¸­å›½', 'å´ä¸œæ¢…', 'wdm123456*', '2906'),
(5, 'å´ä¸œæ¢…', 'å´ä¸œæ¢…', '2023-08-03', 'ä¸­å›½', 'wdm123456*', '1316349072@qq.com', 'ä¸­å›½', 'å´ä¸œæ¢…', 'wdm123456*', '2906'),
(6, 'å´ä¸œæ¢…', 'å´ä¸œæ¢…', '2023-08-04', 'ä¸­å›½', 'wdm123456*', '1316349072@qq.com', 'ä¸­å›½', 'wdm123456', 'wdm123456*', '2906'),
(7, 'å´ä¸œæ¢…', 'å´ä¸œæ¢…', '2023-08-04', 'ä¸­å›½', 'wdm123456*', '1316349072@qq.com', '532725197812210023', 'wdm123456*', 'wdm123456*', '2906');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `bank_name` varchar(100) NOT NULL,
  `account` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(200) NOT NULL,
  `narration` varchar(250) NOT NULL,
  `date` datetime NOT NULL,
  `remarks` varchar(200) NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary2`
--
ALTER TABLE `beneficiary2`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary3`
--
ALTER TABLE `beneficiary3`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary4`
--
ALTER TABLE `beneficiary4`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary5`
--
ALTER TABLE `beneficiary5`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary6`
--
ALTER TABLE `beneficiary6`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary7`
--
ALTER TABLE `beneficiary7`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary8`
--
ALTER TABLE `beneficiary8`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary9`
--
ALTER TABLE `beneficiary9`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary10`
--
ALTER TABLE `beneficiary10`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary11`
--
ALTER TABLE `beneficiary11`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary12`
--
ALTER TABLE `beneficiary12`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary13`
--
ALTER TABLE `beneficiary13`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary14`
--
ALTER TABLE `beneficiary14`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary15`
--
ALTER TABLE `beneficiary15`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `aadhar_no` (`Routing_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_body`
--
ALTER TABLE `news_body`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook1`
--
ALTER TABLE `passbook1`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook2`
--
ALTER TABLE `passbook2`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook3`
--
ALTER TABLE `passbook3`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook4`
--
ALTER TABLE `passbook4`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook5`
--
ALTER TABLE `passbook5`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook6`
--
ALTER TABLE `passbook6`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook7`
--
ALTER TABLE `passbook7`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook8`
--
ALTER TABLE `passbook8`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook9`
--
ALTER TABLE `passbook9`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook10`
--
ALTER TABLE `passbook10`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook11`
--
ALTER TABLE `passbook11`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook12`
--
ALTER TABLE `passbook12`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook13`
--
ALTER TABLE `passbook13`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook14`
--
ALTER TABLE `passbook14`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook15`
--
ALTER TABLE `passbook15`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook18`
--
ALTER TABLE `passbook18`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook27`
--
ALTER TABLE `passbook27`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `beneficiary2`
--
ALTER TABLE `beneficiary2`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary3`
--
ALTER TABLE `beneficiary3`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `beneficiary4`
--
ALTER TABLE `beneficiary4`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `beneficiary5`
--
ALTER TABLE `beneficiary5`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary6`
--
ALTER TABLE `beneficiary6`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beneficiary7`
--
ALTER TABLE `beneficiary7`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary8`
--
ALTER TABLE `beneficiary8`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary9`
--
ALTER TABLE `beneficiary9`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary10`
--
ALTER TABLE `beneficiary10`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beneficiary11`
--
ALTER TABLE `beneficiary11`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beneficiary12`
--
ALTER TABLE `beneficiary12`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary13`
--
ALTER TABLE `beneficiary13`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary14`
--
ALTER TABLE `beneficiary14`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary15`
--
ALTER TABLE `beneficiary15`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news_body`
--
ALTER TABLE `news_body`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `passbook1`
--
ALTER TABLE `passbook1`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT for table `passbook2`
--
ALTER TABLE `passbook2`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `passbook3`
--
ALTER TABLE `passbook3`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `passbook4`
--
ALTER TABLE `passbook4`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `passbook5`
--
ALTER TABLE `passbook5`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `passbook6`
--
ALTER TABLE `passbook6`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `passbook7`
--
ALTER TABLE `passbook7`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook8`
--
ALTER TABLE `passbook8`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook9`
--
ALTER TABLE `passbook9`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `passbook10`
--
ALTER TABLE `passbook10`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `passbook11`
--
ALTER TABLE `passbook11`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `passbook12`
--
ALTER TABLE `passbook12`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `passbook13`
--
ALTER TABLE `passbook13`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook14`
--
ALTER TABLE `passbook14`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `passbook15`
--
ALTER TABLE `passbook15`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `passbook18`
--
ALTER TABLE `passbook18`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `passbook27`
--
ALTER TABLE `passbook27`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
