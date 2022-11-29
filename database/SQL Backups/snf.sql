-- phpMyAdmin 

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `snf`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product`(`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'BMW', 'BMW 2 Sport', 61590, './assets/img/M2Sport.PNG', '2020-03-28 11:08:57'), -- NOW()
(2, 'AUDI', 'AUDI A4', 52200, './assets/img/A4.PNG', '2020-03-28 11:08:57'),
(3, 'BMW', 'BMW i4', 70500, './assets/img/i4G26.PNG', '2020-03-28 11:08:57'),
(4, 'AUDI', 'AUDI A4 Manhattan Gray Metallic', 55290, './assets/img/A4Blk.PNG', '2020-03-28 11:08:57'),
(5, 'Tesla', 'Tesla S', 91590, './assets/img/TeslaSP.png', '2020-03-28 11:08:57'),
(6, 'BMW', 'BMW 1', 45900, './assets/img/BMW1.PNG', '2020-03-28 11:08:57'),
(7, 'BMW', 'BMW M760Li xDrive Sedan', 100590, './assets/img/BMWM760LixDriveSedan.PNG', '2020-03-28 11:08:57'),
(8, 'BMW', 'BMW X4 M Competition', 99900, './assets/img/BMWX4MCompetition.PNG', '2020-03-28 11:08:57'),
(9, 'BMW', 'BMW X7 M50i', 115900, './assets/img/BMWX7M50i.PNG', '2020-03-28 11:08:57'),
(10, 'BMW', 'BMW Z4 Roadster', 88900, './assets/img/BMWZ4ROADSTER.PNG', '2020-03-28 11:08:57'),
(11, 'BMW', 'BMW Coupe M Sport', 70500, './assets/img/BMWCoupeMSport.PNG', '2020-03-28 11:08:57');


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'daily', 'car', '2020-03-28 13:07:17'),
(2, 'shaad', 'mahamod', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;