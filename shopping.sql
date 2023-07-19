-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 05:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(7, 'Wedding Decorations', '', '2022-10-11 12:26:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(6, 1, '4', 1, '2017-03-08 19:21:38', 'COD', NULL),
(7, 4, '33', 3, '2022-10-11 14:02:14', 'Debit / Credit card', NULL),
(24, 4, '33', 2, '2022-10-12 14:44:25', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(1, 3, 'in Process', 'Order has been Shipped.', '2017-03-10 19:36:45'),
(9, 24, 'Delivered', 'on the way', '2022-10-12 14:45:05');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int(11) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(33, 7, 13, 'p2', 'Chamara Flora', 14000, 15000, '<span style=\"color: rgb(5, 5, 5); font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; font-size: 15px; white-space: pre-wrap;\">Tradition and style make the best combination for your Poruwa ceremony</span><br>', '2.jpg', '2.1.jpg', '3.jpg', 1500, 'In Stock', '2022-10-11 13:32:43', NULL),
(34, 7, 14, 'c1', 'Chamara Flora', 13000, 15000, '<font color=\"#050505\" face=\"Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15px; white-space: pre-wrap;\">Table decoration.</span></font>', '1.jpg', '1.2.jpg', '1.4.jpg', 1500, 'In Stock', '2022-10-11 13:36:23', NULL),
(35, 7, 14, 'c2', 'Chamara Flora', 12000, 13000, 'chair type', '2.jpg', '2.3.jpg', '2.2.jpg', 1500, 'In Stock', '2022-10-11 13:39:08', NULL),
(36, 7, 14, 'c3', 'Chamara Flora', 9500, 10000, 'Chair type', '3.jpg', '3.4.jpg', '3.3.jpg', 1500, 'In Stock', '2022-10-11 13:41:42', NULL),
(37, 7, 14, 'c4', 'Chamara Flora', 8300, 12500, 'chair type', '4.1.jpg', '4.jpg', '4.2.jpg', 1500, 'Out of Stock', '2022-10-11 13:52:36', NULL),
(38, 7, 15, 'TD1', 'Chamara Flora', 130, 150, '<br>', 'TD2.jpg', 'TD10.jpg', 'Td12.jpg', 0, 'In Stock', '2022-10-11 15:44:56', NULL),
(39, 7, 15, 'TD2', 'Chamara Flora', 145, 170, '<br>', 'TD4.jpg', 'TD7.jpg', 'TD1.jpg', 0, 'Out of Stock', '2022-10-11 17:32:17', NULL),
(40, 7, 16, 'E1', 'Chamara Flora', 13000, 15000, 'Wedding Entrance..&nbsp;', '278909573_459544112635253_624386341534209337_n.jpg', '278945207_459544352635229_3260228705215987048_n.jpg', '', 0, 'In Stock', '2022-10-11 17:36:08', NULL),
(41, 7, 17, 'c1', 'Chamara Flora', 22000, 25000, 'Wedding car&nbsp;', '169976460_4633549933356437_8026499770823938481_n.jpg', '168539969_4625656674145763_6893199554422794700_n.jpg', '', 0, 'In Stock', '2022-10-11 17:39:16', NULL),
(42, 7, 17, 'c2', 'Chamara Flora', 24000, 55000, '<br>', '287307145_5964796770231740_7371797028048956883_n.jpg', '283171547_1822881871376240_7077832799407324068_n.jpg', '143645659_4435586096486156_3913083021616334516_n.jpg', 0, 'Out of Stock', '2022-10-11 17:40:30', NULL),
(43, 7, 18, 'HT1', 'Chamara Flora', 13000, 15000, 'Head Table', '281724007_481888990400765_1752842248332389794_n.jpg', '272414795_5558420527536035_6809138885460728152_n.jpg', '', 1500, 'In Stock', '2022-10-11 17:44:19', NULL),
(44, 7, 18, 'HT2', 'Chamara Flora', 12000, 13000, 'Head Table', '275385309_5697565676954852_1852926998371624629_n.jpg', '226979516_4970798389631588_4165350882167216033_n.jpg', '278235286_5793077377403681_8082194615962652156_n.jpg', 1500, 'Out of Stock', '2022-10-11 17:45:17', NULL),
(45, 7, 19, 'M1', 'Chamara Flora', 12400, 15000, 'Milk fountain special item.', '283886909_481889497067381_3316035734564190061_n.jpg', '283886909_481889497067381_3316035734564190061_n.jpg', '283886909_481889497067381_3316035734564190061_n.jpg', 0, 'In Stock', '2022-10-11 17:48:01', NULL),
(46, 7, 13, 'P1', 'Chamara Flora', 24000, 25000, 'wedding poruwa', '1.jpg', '1.1.jpg', '1.3.jpg', 0, 'In Stock', '2022-10-11 17:49:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(13, 7, 'Poruwa', '2022-10-11 12:26:46', NULL),
(14, 7, 'Chair Type', '2022-10-11 12:26:52', NULL),
(15, 7, 'Table decoration', '2022-10-11 12:26:55', NULL),
(16, 7, 'Entrance', '2022-10-11 12:27:00', NULL),
(17, 7, 'Wedding Car', '2022-10-11 12:27:10', NULL),
(18, 7, 'Head Table', '2022-10-11 12:27:20', NULL),
(19, 7, 'Milk fountain', '2022-10-11 12:27:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 'imal.chana@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 14:02:00', '11-10-2022 07:33:08 PM', 1),
(25, 'imal.chana@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 15:37:35', '11-10-2022 09:09:40 PM', 1),
(26, 'imal.chana@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 16:09:52', '11-10-2022 09:52:27 PM', 1),
(27, 'imal.chana@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 16:22:56', NULL, 1),
(28, 'imal.chana@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 17:55:05', NULL, 1),
(29, 'imal.chana@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-11 18:23:36', NULL, 1),
(30, 'imal.chana@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-12 02:52:21', NULL, 0),
(31, 'imal.chana@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-12 02:52:29', NULL, 1),
(32, 'imal.chana@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-12 14:43:55', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext DEFAULT NULL,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int(11) DEFAULT NULL,
  `billingAddress` longtext DEFAULT NULL,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int(11) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'no 29,bop400 polonnaruwa', 'cash', 'polonnaruwa', 51050, '2017-02-04 19:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 17:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 09:30:32', ''),
(4, 'imal', 'imal.chana@gmail.com', 767716747, '81dc9bdb52d04dc20036dbd8313ed055', 'no29 bop 400 pulasthigama', 'noth central', 'polonnaruwa', 51050, 'no29 bop 400 pulasthigama', 'noth central', 'polonnaruwa', 51050, '2022-10-11 14:01:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
