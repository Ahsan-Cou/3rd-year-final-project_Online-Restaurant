-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2021 at 02:22 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ahsan`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `price`, `qty`, `total`) VALUES
(1, 1, 'helal', 160, 2, 320),
(2, 8, 'showrov', 300, 1, 300),
(3, 12, 'rakib', 180, 2, 360),
(4, 26, 'shanto', 599, 1, 599),
(5, 17, 'rakibrayan', 230, 1, 230);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('ahsan', 'ahsan');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` bigint(12) NOT NULL,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `location` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `name`, `mobile`, `email`, `location`) VALUES
(1, 1, 'abcd', 'helal', 1523489675, 'helal@gmail.com', 'comilla'),
(2, 7, 'abcd', 'showrov', 1627984632, 'showrov@gmail.com', 'kandirpar'),
(3, 5, 'abcd', 'rakibul', 1325478938, 'rakibul@gmail.com', 'tomsombridge'),
(4, 8, 'abcd', 'shanto', 1532489654, 'shanto@gmail.com', 'kaliajury'),
(5, 12, 'abcd', 'rifat', 1654789327, 'rifat@gmail.com', 'residential school'),
(6, 16, 'abcd', 'rakibmia', 1879645865, 'rakibmia@gmail.com', 'nanua dighir par'),
(7, 20, 'abcd', 'titu', 1475968345, 'titu@gmail.com', 'comilla'),
(8, 11, 'abcd', 'sultan', 1658793456, 'sultan@gmail.com', 'kandirpar');


-- --------------------------------------------------------

--
-- Table structure for table `food_cat`
--

CREATE TABLE `food_cat` (
  `id` bigint(12) NOT NULL,
  `catnm` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food_cat`
--

INSERT INTO `food_cat` (`id`, `catnm`, `sub_cat`) VALUES
(1, 'Pizza', 'pizza capricciosa'),
(2, 'Pizza', 'pizza hawaiian'),
(3, 'Pizza', 'pizza margherita'),
(4, 'Pizza', 'pizza marinara'),
(5, 'Pizza', 'pizza maxican'),
(6, 'Pizza', 'pizza mushroom'),
(7, 'Pizza', 'pizza pepperoni'),
(8, 'Pizza', 'pizza seafood'),
(9, 'Burgers', 'Avocado burger'),
(10, 'Burgers', 'Cheese burger'),
(11, 'Burgers', 'Chile smash burger'),
(12, 'Burgers', 'Double petty burger'),
(13, 'Burgers', 'Full loaded burger'),
(14, 'Burgers', 'Juicy burger'),
(15, 'Burgers', 'Prawn burger'),
(16, 'Burgers', 'Rode bieten burger'),
(17, 'Burgers', 'Stovetop burger'),
(18, 'Biriyani', 'Beef biriyani'),
(19, 'Biriyani', 'Full chiken biriyani'),
(20, 'Biriyani', 'Hyderabadi chiken biriyani'),
(21, 'Biriyani', 'Hyderabadi mutton biriyani'),
(22, 'Biriyani', 'Mutton biriyani'),
(23, 'Biriyani', 'Chiken biriyani'),
(24, 'Indian-platter', 'BBQ Indian platter'),
(25, 'Indian-platter', 'Epic Indian platter'),
(26, 'Indian-platter', 'Full loaded indian platter'),
(27, 'Indian-platter', 'Indian platter-01'),
(28, 'Indian-platter', 'Indian platter-02'),
(29, 'Indian-platter', 'South indian platter');


-- --------------------------------------------------------

--
-- Table structure for table `food_parcel`
--

CREATE TABLE `food_parcel` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` bigint(12) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` text NOT NULL,
  `food_id` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` bigint(12) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(1, 'img/avocado burger.jpg'),
(2, 'img/BBQ Indian platter.jpg'),
(3, 'img/Epic Indian platter.jpg'),
(4, 'img/Hyderabadi mutton biryani.jpg'),
(5, 'img/Indian platter-01.jpg'),
(6, 'img/pizza marinara.jpg'),
(7, 'img/prawn burger.jpg'),
(8, 'img/pizza mexican.jpg'),
(9, 'img/rode bieten burger.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` bigint(12) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `description`, `price`, `image`) VALUES
(1, 'Pizza', 'Cheese', 'Mozzarella cheese', 'pizza tomato sauce', 160, 'mimg/pizza capricciosa.jpg'),
(2, 'Pizza', 'cheese', 'pizza tomato sauce', 'chiken', 150, 'mimg/pizza hawaiian.jpg'),
(3, 'Pizza', 'cheese', 'pizza tomato sauce', 'beef', 220, 'mimg/pizza margherita.jpg'),
(4, 'Pizza', 'cheese', 'pizza tomato sauce', 'chiken & beef', 250, 'mimg/pizza marinara.jpg'),
(5, 'Pizza', 'cheese', 'pizza tomato sauce', 'smoky beef & chiken masala', 240, 'mimg/pizza mexican.jpg'),
(6, 'Pizza', 'cheese', 'pizza tomato sauce', 'mushroom ', 180, 'mimg/pizza mushroom.jpg'),
(7, 'Pizza', 'cheese', 'pizza tomato sauce', 'pepperoni', 170, 'mimg/pizza pepperoni.jpg'),
(8, 'Pizza', 'cheese', 'pizza tomato sauce', 'seafood', 300, 'mimg/pizza seafood.jpg'),
(9, 'Burgers', 'cheese', 'mayonnaise ', 'avocado & chiken', 120, 'mimg/avocado burger.jpg'),
(10, 'Burgers', 'cheese', 'mayonnaise ', 'double cheese & beef', 150, 'mimg/cheese burger.jpg'),
(11, 'Burgers', 'cheese', 'mayonnaise ', 'chile smash & beef', 160, 'mimg/chile smash burger.jpg'),
(12, 'Burgers', 'cheese', 'mayonnaise ', 'one beef & one chiken patty', 180, 'mimg/double petty burger.jpg'),
(13, 'Burgers', 'cheese', 'mayonnaise ', '4 beef & chiken patty', 400, 'mimg/full loaded burger.png'),
(14, 'Burgers', 'cheese', 'mayonnaise ', 'three cheese, olive & beef', 240, 'mimg/juicy burger.jpg'),
(15, 'Burgers', 'cheese', 'mayonnaise ', 'prawn & chiken', 200, 'mimg/prawn burger.jpg'),
(16, 'Burgers', 'cheese', 'mayonnaise  ', 'beef & chiken mixed', 220, 'mimg/rode bieten burger.jpg'),
(17, 'Burgers', 'cheese', 'mayonnaise ', 'masala chiken & smoky beef mixed', 230, 'mimg/stovetop burger.jpg'),
(18, 'Biriyani', 'Beef', 'rice', 'egg', 160, 'mimg/Beef biriyani.jpeg'),
(19, 'Biriyani', 'full chiken', 'bashmoti rice', 'egg', 360, 'mimg/full chicken biryani.jpg'),
(20, 'Biriyani', 'chiken', 'bashmoti rice', 'egg & potato', 180, 'mimg/Hyderabadi chicken Biryani.jpg'),
(21, 'Biriyani', 'mutton', 'bashmoti rice', 'egg & potato', 220, 'mimg/Hyderabadi mutton biryani.jpg'),
(22, 'Biriyani', 'mutton', 'rice', 'egg', 180, 'mimg/Mutton Biriyani.jpg'),
(23, 'Biriyani', 'chiken', 'rice', 'egg', 120, 'mimg/chicken biryani.jpg'),
(24, 'Indian platter', 'BBQ mutton', 'BBQ beef', 'BBQ chiken', 659, 'mimg/BBQ Indian platter.jpg'),
(25, 'Indian platter', 'mutton', 'biriyani', 'gulap jamon, mixed salad etc', 599, 'mimg/Epic Indian platter.jpg'),
(26, 'Indian platter', 'mutton', 'beef', 'chiken, rice, biriyani, parata etc', 599, 'mimg/Full loaded Indian platter.png'),
(27, 'Indian platter', 'chiken', 'salad', 'panir, biriyani, chatni etc', 300, 'mimg/Indian platter-01.jpg'),
(28, 'Indian platter', 'beef', 'salad', 'fry vegetable, rice, parata, panir etc', 250, 'mimg/Indian platter-02.png'),
(29, 'Indian platter', 'chiken', 'vegetables', 'fry vegetables, chatni,salad etc ', 280, 'mimg/South Indian Platter.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` bigint(12) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `email`) VALUES
(1, 'asif', 'asif', 'asif@gmail.com'),
(2, 'helal', 'helal', 'helal@gmail.com'),
(3, 'showrov', '1234', 'showrov@gmail.com'),
(4, 'rakibul', '6789', 'rakibul@gmail.com'),
(5, 'rakib rayan', 'rayan', 'rakibrayan@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` bigint(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id`, `name`, `review`, `description`) VALUES
(1, 'Helal', 'Exellent', 'best hotel in comilla'),
(2, 'Showrov', 'Exellent', 'testy & yammy food');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_cat`
--
ALTER TABLE `food_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `food_cat`
--
ALTER TABLE `food_cat`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` bigint(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
