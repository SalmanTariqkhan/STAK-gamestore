-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql301.epizy.com
-- Generation Time: Dec 19, 2019 at 07:52 PM
-- Server version: 5.6.45-86.1
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_24950832_stakgs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'XBox'),
(2, 'Playstation'),
(3, 'Nintendo'),
(4, 'Wii'),
(5, 'Pc');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `address` varchar(255) NOT NULL,
  `address2` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `transaction_id`, `qty`, `price`, `address`, `address2`, `city`, `state`, `zipcode`) VALUES
(1, 1, 1, '0', 1, '59.9900', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `image`, `price`, `title`, `description`, `category_id`) VALUES
(1, 'game1.jpg', '59.99', 'Sniper Elite III', 'Sniper Elite III is a third-person tactical shooter stealth video game developed and published by Rebellion Developments. The game is a prequel to its 2012 predecessor Sniper Elite V2, and is the third installment in the Sniper Elite series.', 1),
(2, 'game2.jpg', '59.99', 'Call of Duty: Ghosts ', 'Call of Duty: Ghosts is a first-person shooter video game developed by Infinity Ward and published by Activision, it is the tenth major installment in the Call of Duty series and the sixth developed by Infinity Ward. It was released for Microsoft Windows,', 1),
(3, 'game3.jpg', '59.99', 'Destiny', 'Destiny is an online-only multiplayer first-person shooter video game developed by Bungie and previously published by Activision. Destiny is now self-published by Bungie after separating from Activision in 2019.', 1),
(4, 'game4.jpg', '55.99', 'Gears of War 4', 'Gears of War 4 is a third-person shooter video game developed by The Coalition and published by Microsoft Studios for Microsoft Windows and Xbox One. It is the fifth main installment in the Gears of War series, and the first mainline entry not to be devel', 1),
(5, 'game5.jpg', '45.99', 'Watch Dogs', 'Watch Dogs is an action-adventure game developed by Ubisoft Montreal and published by Ubisoft. It was released for Microsoft Windows, PlayStation 3, PlayStation 4, Xbox 360, Xbox One, and Wii U in 2014.', 5),
(6, 'game6.jpg', '59.99', 'Batman: Arkham Knight', 'Batman: Arkham Knight is a 2015 action-adventure game developed by Rocksteady Studios and published by Warner Bros. Interactive Entertainment. Based on the DC Comics superhero Batman, it is the successor to the 2013 video game Batman: Arkham Origins, and ', 2),
(7, 'game7.jpg', '59.99', 'Middle-earth: Shadow of Mordor', 'Middle-earth: Shadow of Mordor is an open world action-adventure video game developed by Monolith Productions and published by Warner Bros. Interactive Entertainment. The game was released for Microsoft Windows, PlayStation 4, and Xbox One in September 20', 2),
(8, 'game8.jpg', '59.99', 'Grand Theft Auto V', 'Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the first main entry in the Grand Theft Auto series since 2008\'s Grand Theft Auto IV.', 5),
(9, 'game9.jpg', '59.99', 'Assassin\'s Creed Unity', 'Assassin\'s Creed Unity is an action-adventure video game developed by Ubisoft Montreal and published by Ubisoft. It was released in November 2014 for Microsoft Windows, PlayStation 4 and Xbox One.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `username`) VALUES
(1, 'Shaheryar', 'Khan', 'shaheryar@test.com', '098f6bcd4621d373cade4e832627b4f6', 'stak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
