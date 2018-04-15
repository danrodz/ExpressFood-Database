-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 12, 2018 at 12:24 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `menu` 
--

-- --------------------------------------------------------

--
-- Table structure for table `biker`
--

CREATE TABLE `biker` (
  `biker_id` int(11) NOT NULL,
  `biker_first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biker_last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biker`
--

INSERT INTO `biker` (`biker_id`, `biker_first_name`, `biker_last_name`) VALUES
(1, 'Michael', 'Hernandez'),
(2, 'Lisa', 'Thomas'),
(3, 'Marcus', 'Davis');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `first_name`, `last_name`, `address`) VALUES
(1, 'Gabriela', 'Lewis', '123 Main St'),
(2, 'Joseph', 'Wilson', '4432 Congress Ave'),
(3, 'Keith', 'Martinez', '8810 Richmond Dr'),
(4, 'Phong', 'Nguyen', '7516 College Ave'),
(5, 'Andrea', 'Smith', '5729 Galveston Rd');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `order_date`) VALUES
(1, 1, '2018-02-01'),
(2, 2, '2018-02-01'),
(3, 3, '2018-02-01'),
(4, 4, '2018-02-01'),
(5, 5, '2018-02-01'),
(6, 1, '2018-02-02'),
(7, 2, '2018-02-02'),
(8, 3, '2018-02-02'),
(9, 4, '2018-02-02'),
(10, 5, '2018-02-02'),
(11, 1, '2018-02-03'),
(12, 2, '2018-02-03'),
(13, 3, '2018-02-03'),
(14, 4, '2018-02-03'),
(15, 5, '2018-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_schedule`
--

CREATE TABLE `delivery_schedule` (
  `order_id` int(11) NOT NULL,
  `biker_id` int(11) NOT NULL,
  `delivered_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_schedule`
--

INSERT INTO `delivery_schedule` (`order_id`, `biker_id`, `delivered_time`) VALUES
(1, 3, '2018-02-01 12:20:00'),
(2, 1, '2018-02-01 12:28:00'),
(3, 2, '2018-02-01 12:34:00'),
(4, 2, '2018-02-01 13:16:00'),
(5, 3, '2018-02-01 13:26:00'),
(6, 1, '2018-02-02 11:17:00'),
(7, 1, '2018-02-02 12:04:00'),
(8, 2, '2018-02-02 12:18:00'),
(9, 2, '2018-02-02 12:56:00'),
(10, 3, '2018-02-02 13:03:00'),
(11, 3, '2018-02-03 12:14:00'),
(12, 1, '2018-02-03 12:24:00'),
(13, 3, '2018-02-03 12:39:00'),
(14, 1, '2018-02-03 13:36:00'),
(15, 2, '2018-02-03 13:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_price` decimal(10,0) NOT NULL,
  `item_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dessert` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`item_id`, `item_name`, `item_price`, `item_description`, `dessert`) VALUES
(1, 'VEGAN QUINOA BURGER', '12', 'SMOKED QUINOA-BEAN PATTY, RED ONION, TOMATO, AVOCADO, PICKLES, CHIPOTLE AIOLI, PRETZEL BUN', 0),
(2, 'BACON STEAK & EGG BURGER', '15', '44 FARMS BEEF, CRISPY BACON, LOCAL FRIED EGG, CHEDDAR, TOMATO, SPICY AIOLI, JALAPENO CHALLAH BUN', 0),
(3, 'SHRIMP & GRAIN SALAD', '14', 'GULF SHRIMP, TOASTED QUINOA, LENTILS, BROWN RICE, CAULIFLOWER, TOASTED PUMPKIN SEEDS, TOMATO, BABY KALE, SAFFRON VINAIGRETTE', 0),
(4, 'VEGAN CAESAR SALAD', '10', 'TOFU, BABY KALE & ROMAINE, TOMATO, PICKLED RED ONION, SWEET POTATO, HONEY PECANS SWEET & SPICY WALNUTS, CASHEW PUREE', 0),
(5, 'HOUSE SMOKED SALMON ', '13', 'MIXED GREENS, ONION JAM, CREAM CHEESE, POPPYSEED BAGEL.', 0),
(6, 'BLONDIE SUNDAE', '7', 'HOUSE MADE BUTTERSCOTCH BLONDIE, VANILLA ICE CREAM, SALTED CARAMEL SAUCE, BUTTERSCOTCH CHIPS.', 1),
(7, 'CHOCOLATE CHIP CUPCAKE', '4', 'VANILLA CAKE WITH CHOCOLATE CHIPS FOLDED IN, VANILLA BUTTERCREAM TOPPED WITH ADDITIONAL CHOCOLATE CHIPS', 1),
(8, 'SMORE CUPCAKE', '4', 'CHOCOLATE CAKE WITH A MARSHMALLOW CENTER, TOPPED WITH BUTTERCREAM, GRAHAM CRACKER CRUMBS AND TOASTED MARSHMALLOWS', 1),
(9, 'BOSTON CREAM PIE CUPCAKE', '4', 'VANILLA CAKE, PASTRY CREAM CENTER, TOPPED WITH CHOCOLATE GANCHE', 1),
(10, 'DULCE DE LECHE CARAMEL CHEESECAKE', '5', 'CARAMEL CHEESECAKE TOPPED WITH CARAMEL MOUSSE AND ALMOND BRICKLE ON A VANILLA CRUST', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`order_id`, `item_id`, `item_qty`) VALUES
(1, 1, 1),
(1, 6, 2),
(2, 2, 2),
(2, 7, 1),
(3, 2, 1),
(3, 6, 1),
(4, 1, 1),
(5, 1, 1),
(5, 2, 1),
(6, 4, 1),
(6, 8, 2),
(6, 9, 1),
(7, 3, 1),
(7, 8, 4),
(8, 3, 2),
(8, 9, 2),
(9, 3, 1),
(9, 4, 1),
(10, 3, 1),
(10, 9, 2),
(11, 5, 1),
(11, 10, 2),
(12, 1, 1),
(12, 10, 1),
(13, 1, 1),
(13, 10, 1),
(14, 5, 1),
(14, 6, 1),
(15, 1, 1),
(15, 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biker`
--
ALTER TABLE `biker`
  ADD PRIMARY KEY (`biker_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `delivery_schedule`
--
ALTER TABLE `delivery_schedule`
  ADD PRIMARY KEY (`order_id`,`biker_id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`order_id`,`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biker`
--
ALTER TABLE `biker`
  MODIFY `biker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
