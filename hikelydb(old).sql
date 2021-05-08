-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2021 at 02:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hikelydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID` int(11) NOT NULL,
  `User_ID` int(11) DEFAULT NULL,
  `trip_id` int(11) NOT NULL,
  `Date_Created` date NOT NULL,
  `Total_Price` int(11) NOT NULL,
  `quantity` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ID`, `User_ID`, `trip_id`, `Date_Created`, `Total_Price`, `quantity`) VALUES
(1, 5, 2, '2021-02-26', 420, '1');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `reciever` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `links` varchar(250) NOT NULL,
  `images` blob NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id`, `sender`, `sender_name`, `reciever`, `message`, `links`, `images`, `time`) VALUES
(115, 3, 'kareem', 3, 'visit this please', 'form.php', '', '2021-02-25 17:27:12'),
(116, 3, 'kareem', 5, 'rate us', 'form.php', '', '2021-02-25 17:31:21'),
(117, 5, 'mohamed', 0, '', '', 0x3132332e6a7067, '2021-02-25 17:35:39'),
(118, 5, 'mohamed', 0, '', '', 0x63616e796f6e2e6a666966, '2021-02-25 17:35:48'),
(119, 5, 'mohamed', 0, '', '', 0x416e6768616d692e657865, '2021-02-25 17:45:33'),
(120, 5, 'mohamed', 0, '', '', 0x616c61736b61612e6a666966, '2021-02-25 17:46:45'),
(121, 5, 'mohamed', 0, '', '', '', '2021-02-25 18:00:04'),
(122, 5, 'mohamed', 0, '', '', '', '2021-02-25 18:00:56'),
(123, 5, 'mohamed', 0, '', '', 0x63616e796f6e2e6a666966, '2021-02-25 18:03:00'),
(124, 1, 'Reem', 3, 'hey kareem how was your trip?', 'form.php', '', '2021-02-25 18:58:38'),
(125, 3, 'kareem', 0, 'it was great !', '', '', '2021-02-25 18:59:45'),
(126, 3, 'kareem', 0, 'hey reem', '', '', '2021-02-25 19:00:54'),
(127, 3, 'kareem', 0, '', '', '', '2021-02-25 19:01:05'),
(128, 3, 'kareem', 0, '', '', '', '2021-02-25 19:01:22'),
(129, 3, 'kareem', 0, '', '', '', '2021-02-25 19:01:58'),
(130, 3, 'kareem', 0, '', '', 0x3132332e6a7067, '2021-02-25 19:02:46'),
(131, 3, 'kareem', 0, '', '', 0x616c61736b612e6a666966, '2021-02-25 19:08:58'),
(132, 3, 'kareem', 0, '', 'https://www.google.com', '', '2021-02-25 19:09:26'),
(133, 4, 'ahmed', 3, 'ya ged3an ana ahmed ', 'formview.php', '', '2021-02-25 19:16:26'),
(134, 1, 'Reem', 5, 'Check our survey', '', '', '2021-02-25 19:50:06'),
(135, 1, 'Reem', 5, 'surv', '', '', '2021-02-25 19:51:43'),
(136, 6, 'ahmed', 0, 'Hi', '', '', '2021-02-25 21:25:48'),
(137, 1, 'Reem', 6, 'Hi Ahmed', '', '', '2021-02-25 21:26:49'),
(138, 2, 'Karim', 0, '', '', 0x4d6f6e74426c616e632e6a7067, '2021-03-01 23:45:47');

-- --------------------------------------------------------

--
-- Table structure for table `hr_report`
--

CREATE TABLE `hr_report` (
  `ID` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  `Admin_id` int(11) NOT NULL,
  `Penelty_subject` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `message_hr`
--

CREATE TABLE `message_hr` (
  `id` int(11) NOT NULL,
  `auditor_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `hr_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_placed` datetime NOT NULL,
  `trip_id` int(11) NOT NULL,
  `price` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_placed`, `trip_id`, `price`) VALUES
(1, 6, '2021-02-25 22:25:29', 2, '420'),
(2, 6, '2021-02-25 22:25:29', 2, '420'),
(3, 1, '2021-02-28 03:48:07', 1, '2000'),
(4, 1, '2021-02-28 03:48:07', 1, '2000'),
(5, 1, '2021-02-28 03:48:07', 1, '2000'),
(6, 1, '2021-02-28 03:48:07', 1, '2000'),
(7, 1, '2021-02-28 03:51:07', 1, '500');

-- --------------------------------------------------------

--
-- Table structure for table `pagesaccess`
--

CREATE TABLE `pagesaccess` (
  `ID` int(11) NOT NULL,
  `UTI` int(11) NOT NULL,
  `Access` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pagesaccess`
--

INSERT INTO `pagesaccess` (`ID`, `UTI`, `Access`, `Link`) VALUES
(1, 1, 'Edit Users', 'EditUsersInfoH.php'),
(2, 1, 'Edit Trips', 'EditTripsH.php'),
(3, 2, 'Edit my profile', 'EditMyProfileH.php'),
(4, 2, 'Contact Us', 'chatPage.php'),
(6, 1, 'Users Messages', 'message_users.php'),
(7, 4, 'Penalties', 'Admin-view.php'),
(8, 1, 'Penalties', 'Admin_penelty.php'),
(9, 3, 'HR Contact', 'messageHR.php'),
(10, 4, 'Auditor Messages', 'HR_message.php'),
(11, 1, 'Purchases', 'orderssH.php'),
(12, 3, 'Communications', 'message_users.php'),
(13, 1, 'Form View', 'formview.php'),
(14, 2, 'Survey', 'form.php');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `ID` int(11) NOT NULL,
  `Trip_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Review` varchar(255) NOT NULL,
  `Rating` int(11) NOT NULL,
  `User_name` varchar(255) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `surveytable`
--

CREATE TABLE `surveytable` (
  `username` varchar(25) NOT NULL,
  `radio1` varchar(30) NOT NULL,
  `radio2` varchar(30) NOT NULL,
  `radio3` varchar(30) NOT NULL,
  `radio4` varchar(30) NOT NULL,
  `radio5` varchar(30) NOT NULL,
  `radio6` varchar(30) NOT NULL,
  `radio7` varchar(30) NOT NULL,
  `radio8` varchar(30) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `surveytable`
--

INSERT INTO `surveytable` (`username`, `radio1`, `radio2`, `radio3`, `radio4`, `radio5`, `radio6`, `radio7`, `radio8`, `comment`) VALUES
(' anas', 'not bad', 'perfect', 'perfect', 'perfect', 'perfect', 'not bad', 'NO', 'Nice', 'kollo kwiis'),
(' anas', 'not bad', 'not bad', 'Nice', 'Nice', 'Nice', 'Nice', 'NO', 'perfect', 'kollo kwis'),
(' seif', 'Nice', 'Nice', 'perfect', 'perfect', 'not bad', 'NO', 'perfect', 'perfect', 'kkkkkkkk'),
(' kareem', 'perfect', 'Nice', 'Nice', 'perfect', 'Nice', 'perfect', 'NO', 'perfect', 'Its all perfect'),
(' kimoooo', 'perfect', 'Nice', 'Nice', 'perfect', 'Nice', 'Nice', 'Nice', 'Nice', 'eh ya reeeemooooooooooo'),
(' kimoou', '', '', '', '', '', '', 'Nice', '', 'siuuu'),
(' kimoou', '', '', '', '', '', '', 'Nice', '', 'siuuu'),
(' kimoo', '', '', '', '', '', '', '', '', ''),
(' kimoo', '', '', '', '', '', '', '', '', ''),
(' kimoo', 'Nice', '', '', '', '', '', '', '', 'haha'),
(' ', 'Nice', '', '', '', '', '', '', '', 'aa'),
(' yoo', 'not bad', 'perfect', 'not bad', 'perfect', 'Nice', 'Nice', 'perfect', 'perfect', ''),
(' ijoiejoie', 'perfect', 'Nice', 'Nice', 'perfect', 'not bad', 'perfect', 'not bad', 'perfect', 'kkddslsksl');

-- --------------------------------------------------------

--
-- Table structure for table `trips`
--

CREATE TABLE `trips` (
  `ID` int(11) NOT NULL,
  `location` varchar(255) NOT NULL DEFAULT 'Country ',
  `name` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Price` int(11) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `background` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trips`
--

INSERT INTO `trips` (`ID`, `location`, `name`, `Date`, `Price`, `Description`, `image`, `background`) VALUES
(1, 'France', 'TOUR DU MONT BLANC', '0000-00-00', 500, 'The Tour du Mont Blanc is one of the most popular long-distance walks in Europe. The trek gives you the chance to hike through three of Europe’s most beautiful countries. It leads through distinctive mountain passes, idyllic alpine meadows, and glac', 'MontBlanc.jpg ', 'MontBlanc.jpg '),
(2, 'USA', 'THE GRAND CANYON', '0000-00-00', 420, 'Grand Canyon is America’s crown jewel. It is famous for being one of the SevenNatural Wonders of the World. Its visually overwhelming size, the unique combination of incredible geological formations, vivid colors, and breathtakingly intricate landscape ', 'GrandCanyon.jpg ', 'GrandCanyon.jpg '),
(6, 'Peru', 'THE SANTA CRUZ TREK', '0000-00-00', 600, 'If you are looking for an adventurous high-latitude challenge that will not push you to your absolute limits, Peru’s Santa Cruz Trek might be the best option for you. This hike is considered one of the bests in Peru as well as one of the most beauti', 'SantaCruz.jpg  ', 'SantaCruz.jpg  '),
(7, 'South Africa', 'THE BLYDE RIVER CANYON', '0000-00-00', 470, 'The Blyde River Canyon in South Africa is the world’s third largest canyon as well as the greenest, offering the most epic views. One of its viewpoints is called “God’s Window” for a very good reason. Looking down from there, you can soak up the vis', 'SouthAfrica.jpg ', 'SouthAfrica.jpg '),
(8, 'Nepal', 'EVEREST BASE CAMP TREK', '0000-00-00', 510, 'The Himalayas and the Everest Base Camp Trek are the mecca for climbing and mountain enthusiasts. This beautiful, famous trekking journey is also culturally enticing. It starts in the rural Lukla town and features manyfamous Sherpa villages and sett', 'everestCampTrek.jpg ', 'everestCampTrek.jpg '),
(9, 'Australia', 'THE GREAT OCEAN WALK', '0000-00-00', 560, 'Australia Great Ocean Walk may be the most beautiful coastal hike in the world. Stretching over 100 kilometers (62.1 miles), the trail wanders through gum and eucalyptus forests and traverses sand dunes, green pastures, rocky beaches, and hair-rai', 'GreatOcean.jpg ', 'GreatOcean.jpg ');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `First Name` varchar(255) NOT NULL,
  `Last Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `Number` int(11) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Picture` varchar(55) NOT NULL,
  `User_Type_ID` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `First Name`, `Last Name`, `Email`, `Gender`, `Number`, `Password`, `Picture`, `User_Type_ID`) VALUES
(1, 'Reem', 'Ahmed', 'reemahmedd@gmail.com', 'female', 100100100, 'reem', '', 1),
(2, 'Karim', 'Yasser', 'karimyasser@gmail.com', 'male', 100200300, '123', '', 2),
(3, 'Mohamed', 'Tarek', 'mohamedtarek@gmail.com', 'male', 100300400, '123', '', 4),
(4, 'Mohamed', 'Agroody', 'mohamed@gmail.com', 'male', 100200500, '123', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `ID` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`ID`, `type`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Auditor'),
(4, 'HR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_report`
--
ALTER TABLE `hr_report`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indexes for table `message_hr`
--
ALTER TABLE `message_hr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagesaccess`
--
ALTER TABLE `pagesaccess`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UTI` (`UTI`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Trip_ID` (`Trip_ID`),
  ADD KEY `User_ID` (`User_ID`);

--
-- Indexes for table `trips`
--
ALTER TABLE `trips`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_Type_ID` (`User_Type_ID`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `hr_report`
--
ALTER TABLE `hr_report`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message_hr`
--
ALTER TABLE `message_hr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pagesaccess`
--
ALTER TABLE `pagesaccess`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trips`
--
ALTER TABLE `trips`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hr_report`
--
ALTER TABLE `hr_report`
  ADD CONSTRAINT `hr_report_ibfk_1` FOREIGN KEY (`Admin_id`) REFERENCES `users` (`ID`);

--
-- Constraints for table `pagesaccess`
--
ALTER TABLE `pagesaccess`
  ADD CONSTRAINT `pagesaccess_ibfk_1` FOREIGN KEY (`UTI`) REFERENCES `user_type` (`ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`User_Type_ID`) REFERENCES `user_type` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
