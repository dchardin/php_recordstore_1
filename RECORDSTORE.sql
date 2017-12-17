-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 17, 2017 at 10:40 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `STOREDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `store_categories`
--

CREATE TABLE IF NOT EXISTS `store_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(50) NOT NULL,
  `cat_desc` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cat_title` (`cat_title`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `store_categories`
--

INSERT INTO `store_categories` (`id`, `cat_title`, `cat_desc`) VALUES
(1, 'fifties', ''),
(2, 'sixties', ''),
(3, 'seventies', ''),
(4, 'eighties', ''),
(5, 'nineties', ''),
(6, 'two_thousands', ''),
(7, 'tens', '');

-- --------------------------------------------------------

--
-- Table structure for table `store_item_color`
--

CREATE TABLE IF NOT EXISTS `store_item_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_color` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `store_item_size`
--

CREATE TABLE IF NOT EXISTS `store_item_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `item_size` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `store_items`
--

CREATE TABLE IF NOT EXISTS `store_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_id` int(11) NOT NULL,
  `item_title` varchar(75) NOT NULL,
  `item_price` float(8,2) NOT NULL,
  `item_desc` text NOT NULL,
  `item_image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `store_items`
--

INSERT INTO `store_items` (`id`, `cat_id`, `item_title`, `item_price`, `item_desc`, `item_image`) VALUES
(1, 1, 'John Coltrane: Blue Train', 12.00, '', 'coltrane_blue_train.jpg'),
(2, 2, 'The Beatles: Sgt. Pepper''s Lonely Hearts Club Band', 14.00, '', 'beatles_sgt_pepper.jpeg'),
(3, 3, 'The Ramones: Rocket to Russia', 12.00, '', 'ramones_rocket.jpg'),
(4, 4, 'Peter Gabriel: So', 12.00, '', 'peter_gabriel_so.jpg'),
(5, 5, 'The Eagles: Hell Freezes Over', 11.00, '', 'eagles_hell.jpg'),
(6, 6, 'Coldplay: Parachutes', 12.00, '', 'coldplay_parachutes.jpg'),
(7, 7, 'Gorillaz: Plastic Beach', 12.00, '', 'gorillaz_plastic.jpg'),
(8, 1, 'Frank Sinatra: In the wee small hours', 10.00, '', 'sinatra_hours.jpg'),
(9, 2, 'Bob Dylan: Highway 61 Revisited', 14.00, '', 'bob_dylan_61.jpg'),
(10, 3, 'Fleetwood Mac: Rumors', 12.00, '', 'fleetwood_mac_rumors.jpg'),
(11, 4, 'Metallica: And Justice For All', 12.00, '', 'metallica_justice.jpg'),
(12, 5, 'Green Day: Dookie', 11.00, '', 'green_day_dookie.jpg'),
(13, 6, 'Coldplay: Viva La Vida', 12.00, '', 'coldplay_viva.jpg'),
(14, 7, 'Kanye West: My Beautiful Dark Twisted Fantasy', 12.00, '', 'kanye_fantasy.jpg'),
(15, 5, 'Tupac Shakur:  2pac: All eyez on me', 12.00, '', '2pac_all_eyez.jpg'),
(16, 7, 'Arcade Fire: Neon Bible', 12.00, '', 'arcade_fire_neon.jpg'),
(17, 2, 'The Beach Boys: Pet Sounds', 12.00, '', 'beach_boys_pet.jpg'),
(18, 3, 'Blondie: Parellel Lines', 12.00, '', 'blondie_lines'),
(19, 7, 'Bon Iver: Bon Iver', 12.00, '', 'bon_iver_bon_iver.jpg'),
(20, 4, 'Bruce Springsteen: Born in the USA', 12.00, '', 'bruce_springsteen_born.jpg'),
(21, 1, 'Buddy Holly: The Chirping Crickets', 12.00, '', 'buddy_holly_chirping.jpg'),
(22, 1, 'Carl Perkins: Whole Lotta Shakin', 12.00, '', 'carl_perkins_shakin'),
(23, 2, 'Creedence Clearwater Revival: Willy and the Poor Boys', 12.00, '', 'ccr_willy.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `store_orders`
--

CREATE TABLE IF NOT EXISTS `store_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` datetime DEFAULT NULL,
  `order_name` varchar(100) DEFAULT NULL,
  `order_address` varchar(255) DEFAULT NULL,
  `order_city` varchar(50) DEFAULT NULL,
  `order_state` char(2) DEFAULT NULL,
  `order_zip` varchar(10) DEFAULT NULL,
  `order_tel` varchar(25) DEFAULT NULL,
  `order_email` varchar(100) DEFAULT NULL,
  `item_total` float(6,2) DEFAULT NULL,
  `shipping_total` float(6,2) DEFAULT NULL,
  `authorization` varchar(50) DEFAULT NULL,
  `status` enum('processed','pending') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `store_orders`
--

INSERT INTO `store_orders` (`id`, `order_date`, `order_name`, `order_address`, `order_city`, `order_state`, `order_zip`, `order_tel`, `order_email`, `item_total`, `shipping_total`, `authorization`, `status`) VALUES
(3, NULL, 'dhardin', '2716 any drive', 'Winston Salem', 'nc', '27021', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `store_orders_items`
--

CREATE TABLE IF NOT EXISTS `store_orders_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `sel_item_id` int(11) DEFAULT NULL,
  `sel_item_qty` smallint(6) DEFAULT NULL,
  `sel_item_size` varchar(25) DEFAULT NULL,
  `sel_item_color` varchar(25) DEFAULT NULL,
  `sel_item_price` float(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `store_shoppertrack`
--

CREATE TABLE IF NOT EXISTS `store_shoppertrack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(32) DEFAULT NULL,
  `sel_item_id` int(11) DEFAULT NULL,
  `sel_item_qty` smallint(6) DEFAULT NULL,
  `sel_item_size` varchar(25) DEFAULT NULL,
  `sel_item_color` varchar(25) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `store_shoppertrack`
--

INSERT INTO `store_shoppertrack` (`id`, `session_id`, `sel_item_id`, `sel_item_qty`, `sel_item_size`, `sel_item_color`, `date_added`) VALUES
(7, 'ou60mpep0qrh15rg93i565r5g4', 3, 1, '', '', '2016-12-31 17:43:44'),
(8, 'ou60mpep0qrh15rg93i565r5g4', 2, 1, '', '', '2016-12-31 17:44:05'),
(9, 'ou60mpep0qrh15rg93i565r5g4', 13, 2, '', '', '2016-12-31 17:44:17');
--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) DEFAULT NULL,
  `interpret` varchar(200) DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);
--
-- Database: `loginapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(12, 'Carl', '3242342'),
(13, 'donnie', 'redhat'),
(14, 'Steve', '845435'),
(15, 'Eric', '$2y$10$iusesomecrazystrings2ui1qr860E30b0c9ijNqwCSwHnHdgz.1K');

-- --------------------------------------------------------
