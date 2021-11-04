-- phpMyAdmin SQL Dump
-- version 4.0.10deb1ubuntu0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 01, 2021 at 06:47 PM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `f32ee`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `full_name`, `username`, `password`) VALUES
(7, 'test', '11', '111'),
(8, 'test2', 'test2', 'test2');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `isbn` char(13) NOT NULL,
  `author` char(50) DEFAULT NULL,
  `title` char(100) DEFAULT NULL,
  `price` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `author`, `title`, `price`) VALUES
('0-672-31509-2', 'Pruitt, et al.', 'Teach Yourself GIMP in 24 Hours', 24.99),
('0-672-31697-8', 'Michael Morgan', 'Java 2 for Professional Developers', 34.99),
('0-672-31745-1', 'Thomas Down', 'Installing Debian GNU/Linux', 24.99),
('0-672-31769-9', 'Thomas Schenk', 'Caldera OpenLinux System Administration Unleashed', 49.99),
('123', 'grg', 'grg', 43.00),
('abc', 'priya hello', 'forever', 23.08);

-- --------------------------------------------------------

--
-- Table structure for table `book_reviews`
--

CREATE TABLE IF NOT EXISTS `book_reviews` (
  `isbn` char(13) NOT NULL,
  `review` text,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book_reviews`
--

INSERT INTO `book_reviews` (`isbn`, `review`) VALUES
('0-672-31697-8', 'Morgan''s book is clearly written and goes well beyond most of the basic Java books out there.');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(100) NOT NULL,
  `foodItem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(9, 'Pizza', 'Pizza.jpeg', 'Yes', 'Yes'),
(10, 'Sides', 'drumlet.jpg', 'No', 'Yes'),
(11, 'Drinks', 'Coke.jpeg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `address` char(100) NOT NULL,
  `city` char(30) NOT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`) VALUES
(3, 'Julie Smith', '25 Oak Street', 'Airport West'),
(4, 'Alan Wong', '1/47 Haines Avenue', 'Box Hill'),
(5, 'Michelle Arthur', '357 North Road', 'Yarraville');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `star` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `comment`, `category`, `star`, `email`) VALUES
(1, 'good', 'cheesPiza', '', ''),
(2, 'good', 'cheesPiza', '', ''),
(3, 'Comments', 'cheesePizza', '', ''),
(4, 'HI THERE', 'Sprite', '', ''),
(5, 'Comments', 'Cheese Pizza', '', ''),
(6, 'Comments', 'Cheese Pizza', '', ''),
(7, 'ewrw', 'Cheese Pizza', '', ''),
(8, 'rewr', 'Cheese Pizza', '', ''),
(9, 'hihts', 'Hawaiian Pizza', 'star5', ''),
(10, 'hihts', 'Hawaiian Pizza', 'star2', ''),
(11, 'fgdgrf', 'Cheese Pizza', 'star3', 'Array'),
(12, 'tcetf', 'Cheese Pizza', 'star4', 'heheheh'),
(13, 'rewrw', 'Coke', 'star2', 'heheheh'),
(14, '4t3t3', 'Pepperoni Pizza', 'star4', 'heheheh'),
(15, '435', 'Cheese Pizza', 'star3', 'heheheh'),
(16, 'erwwr', 'Cheese Pizza', 'star5', 'heheheh'),
(17, '3434', 'Cheese Pizza', 'star2', 'heheheh'),
(18, 'ewrw', 'Cheese Pizza', 'star5', 'heheheh'),
(19, 'rerw', 'Pepperoni Pizza', 'star4', 'heheheh'),
(20, 'tetwt', 'Hawaiian Pizza', 'star5', 'heheheh'),
(21, 'erwwr', 'service', 'star4', 'trete'),
(22, '', 'others', 'star2', '423'),
(23, 'rwe', 'service', 'star3', '423'),
(24, 'rewr', 'service', 'star3', '423'),
(25, '', 'service', 'star3', '423'),
(26, '4234', 'service', 'star4', '423'),
(27, '342423', 'service', 'star3', '423'),
(28, 'jhk mn', 'service', 'star2', '423'),
(29, '4234', 'service', 'star3', '423'),
(30, '42342', 'service', 'star4', '423'),
(31, 'eqw', 'service', 'star3', '423'),
(32, 'jnl', 'service', 'star4', '423'),
(33, '42342', 'service', 'star3', '423'),
(34, '3424', 'service', 'star4', '423'),
(35, 'erwr', 'service', 'star4', '423'),
(36, '4234', 'service', 'star4', '423'),
(37, '4234', 'others', 'star3', '423'),
(38, '3424', 'service', 'star4', '423');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `active` varchar(10) NOT NULL,
  `featured` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `active`, `featured`) VALUES
(1, 'Pepperoni Pizza', 'Combining the aromatic flavour of beef pepperoni and 100% mozzarella cheese.\r\n\r\n', 12.50, 'http://192.168.56.2/f32ee/PizzaNow/images/food/Pepperoni.jpg', 10, 'Yes', 'Yes'),
(2, 'Cheese Pizza', 'Enjoy the perfect medley of our signature blend of seven wondrous cheese and topped with cream cheese.', 12.50, 'http://192.168.56.2/f32ee/PizzaNow/images/food/Cheese.jpg', 9, 'Yes', 'Yes'),
(3, 'Hawaiian Pizza', 'Tender chicken ham combined with sweet and succulent pineapple chunks.', 12.50, 'http://192.168.56.2/f32ee/PizzaNow/images/food/Hawaiian.jpg', 9, 'Yes', 'Yes'),
(26, 'Drumlets', 'Juicy, tender drumlets marinated in New Orleans spices.', 4.50, 'http://192.168.56.2/f32ee/PizzaNow/images/food/drumlet.jpg', 10, 'Yes', 'Yes'),
(27, 'Pop Corn Chicken', 'Indulge in this golden succulent chicken bite that comes with a spicy kick. Addictively delicious, you just can''t stop!', 4.50, 'http://192.168.56.2/f32ee/PizzaNow/images/food/PopChic.jpg', 10, 'Yes', 'Yes'),
(28, 'Garlic Bread', 'Oven-baked sesame seed bun with hot buttery garlic spread.', 4.50, 'http://192.168.56.2/f32ee/PizzaNow/images/food/GarlicBread.jpg', 10, 'Yes', 'Yes'),
(29, 'Sprite', '250ml Bottle', 2.00, 'http://192.168.56.2/f32ee/PizzaNow/images/food/Sprite.jpeg', 11, 'Yes', 'Yes'),
(30, 'Coke', '250ml Bottle', 2.00, 'http://192.168.56.2/f32ee/PizzaNow/images/food/Coke.jpeg', 11, 'Yes', 'Yes'),
(31, 'Green Tea', '250ml Bottle', 2.00, 'http://192.168.56.2/f32ee/PizzaNow/images/food/GreenTea.jpeg', 11, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`name`) VALUES
('Just Java'),
('Cafe au Lait'),
('Iced Cappucino');

-- --------------------------------------------------------

--
-- Table structure for table `MyGuests`
--

CREATE TABLE IF NOT EXISTS `MyGuests` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `MyGuests`
--

INSERT INTO `MyGuests` (`id`, `firstname`, `lastname`, `email`, `reg_date`) VALUES
(1, 'John', 'Doe', 'john@example.com', '2021-10-06 02:39:05'),
(2, 'John', 'Sam', 'john@example.com', '2021-10-06 02:50:47'),
(4, 'Julie', 'Dooley', 'julie@example.com', '2021-10-06 02:41:39'),
(5, 'John', 'Doe', 'john@example.com', '2021-10-06 02:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `customerid` int(10) unsigned NOT NULL,
  `amount` float(6,2) DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`) VALUES
(1, 3, 69.98, '2007-04-02'),
(2, 1, 49.99, '2007-04-15'),
(3, 2, 74.98, '2007-04-19'),
(4, 3, 24.99, '2007-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE IF NOT EXISTS `order_items` (
  `orderid` int(10) unsigned NOT NULL,
  `isbn` char(13) NOT NULL,
  `quantity` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`orderid`,`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `isbn`, `quantity`) VALUES
(1, '0-672-31697-8', 2),
(2, '0-672-31769-9', 1),
(3, '0-672-31509-2', 1),
(3, '0-672-31769-9', 1),
(4, '0-672-31745-1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `PriceTable`
--

CREATE TABLE IF NOT EXISTS `PriceTable` (
  `id` int(40) NOT NULL AUTO_INCREMENT,
  `product` varchar(40) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `PriceTable`
--

INSERT INTO `PriceTable` (`id`, `product`, `price`, `quantity`) VALUES
(1, 'java', 2, 7),
(2, 'cafe1', 3, 1),
(3, 'cafe2', 5, 0),
(4, 'cup1', 2, 2),
(5, 'cup2', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`, `order_id`) VALUES
(4, 'Drumlets', 4.50, 1, 4.50, '2021-10-26 02:19:43', 'Ordered', 'sacsa', 'sa', 'jsmith@sample.com', 'asdasd', 0),
(5, 'Drumlets', 4.50, 1, 4.50, '2021-10-26 02:20:29', 'Ordered', 'test', '12313', 'jsmith@sample.com', '123123', 0),
(6, 'Drumlets', 4.50, 1, 4.50, '2021-10-26 02:24:54', 'Delivered', 'asc', '12312311', 'dfvnofndnI@hotmail.com', 'dsvdv', 0),
(7, 'Pepperoni Pizza', 12.50, 1, 25.00, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 0),
(8, 'Pepperoni Pizza', 12.50, 1, 37.50, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 0),
(9, 'Pepperoni Pizza', 12.50, 1, 37.50, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 0),
(10, 'Pepperoni Pizza', 12.50, 1, 25.00, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 0),
(11, 'Drumlets', 4.50, 1, 9.00, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 0),
(12, 'Pepperoni Pizza', 12.50, 1, 37.50, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 0),
(13, 'Cheese Pizza', 12.50, 1, 25.00, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 0),
(14, 'Hawaiian Pizza', 12.50, 1, 25.00, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 0),
(15, 'Pepperoni Pizza', 12.50, 1, 37.50, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 1),
(16, 'Cheese Pizza', 12.50, 1, 37.50, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 1),
(17, 'Hawaiian Pizza', 12.50, 1, 37.50, '0000-00-00 00:00:00', 'Ordered', 'hello there', '0987', '0987', '0987', 1),
(18, 'Cheese Pizza', 12.50, 1, 25.00, '2021-11-01 06:05:11', 'Ordered', 'hello there', '0987', '0987', '0987', 1),
(19, 'Pepperoni Pizza', 12.50, 1, 25.00, '2021-11-01 06:05:11', 'Ordered', 'hello there', '0987', '0987', '0987', 1),
(20, 'Pepperoni Pizza', 12.50, 1, 25.00, '2021-11-01 06:23:57', 'Ordered', 'hello there', '34234', '4324', '234', 1),
(21, 'Hawaiian Pizza', 12.50, 1, 25.00, '2021-11-01 06:23:57', 'Ordered', 'hello there', '34234', '4324', '234', 1),
(22, 'Hawaiian Pizza', 12.50, 1, 12.50, '2021-11-01 06:26:41', 'Ordered', 'hello there', '34234', '4324', '234', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Test`
--

CREATE TABLE IF NOT EXISTS `Test` (
  `ID` int(40) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Test`
--

INSERT INTO `Test` (`ID`, `name`, `email`) VALUES
(1, 'faeyz', 'xyz@gmail.com'),
(2, 'faeyz1', 'abcd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `subtotal` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`subtotal`, `quantity`) VALUES
(2, 2),
(2, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `contact`, `address`) VALUES
(9, 'admin', '$2y$10$w0KujYMYDaxdlG4ncN5Q3.rr3pvxsB9YsE00ckrIhsg12Hm7ccwHm', '', '', '', ''),
(10, 'hithere', '$2y$10$G1vR0nu.cYX1JBuFB21nuO/Vg0N6gd.rIg41IfjqPYwmKI8nNBHKS', 'hello there', '342', '4234', '4324');

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE IF NOT EXISTS `users1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(8) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`id`, `username`, `email`, `phone`, `address`) VALUES
(1, 'hithere', '423', 4234, 'ilivehere');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
