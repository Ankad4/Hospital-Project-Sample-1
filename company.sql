-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 04:32 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `s_customer`
--

CREATE TABLE `s_customer` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `zip_code` text DEFAULT NULL,
  `credit_rating` text DEFAULT NULL,
  `sales_rep_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_customer`
--

INSERT INTO `s_customer` (`id`, `name`, `phone`, `address`, `city`, `state`, `country`, `zip_code`, `credit_rating`, `sales_rep_id`, `region_id`, `comments`) VALUES
(201, 'One Sport', '55-112066222', '82 Via Bahia', 'Sao Paolo', NULL, 'Brazil', NULL, 'EXCELLENT', 12, 2, NULL),
(202, 'Deportivo Caracas', '58-28066222', '31 Sabana Grande', 'Caracas', NULL, 'Venezuela', NULL, 'EXCELLENT', 12, 2, NULL),
(203, 'New Delhi Sports', '91-11903338', '11368 Chanakya', 'New Delhi', NULL, 'India', NULL, 'GOOD', 11, 4, NULL),
(204, 'Ladysport', '1-206-104-0111', '281 Queen Street', 'Seattle', 'Washington', 'US', NULL, 'EXCELLENT', 11, 1, NULL),
(205, 'Kim\'s Sporting Goods', '852-3693888', '15 Henessey Road', 'Hong Kong', NULL, NULL, NULL, 'EXCELLENT', 11, 4, NULL),
(206, 'Sportique', '33-93425722253', '172 Rue de Place', 'Cannes', NULL, 'France', NULL, 'EXCELLENT', 13, 5, NULL),
(207, 'Tall Rock Sports', '234-16036222', '10 Saint Antoine', 'Lagos', NULL, 'Nigeria', NULL, 'GOOD', 13, 3, NULL),
(208, 'Muench Sports', '49-895274449', '435 Gruenestrasse', 'Munich', NULL, 'Germany', NULL, 'GOOD', 13, 5, NULL),
(209, 'Beisbol Si!', '809-352666', '415 Playa Del Mar', 'San Pedro de Macoris', NULL, 'Dominican Republic', NULL, 'EXCELLENT', 11, 6, NULL),
(210, 'Futbol Sonora', '52-404555', '5 Via Saguaro', 'Nogales', NULL, 'Mexico', NULL, 'EXCELLENT', 12, 2, NULL),
(211, 'Helmut\'s Sports', '42-2111222', '45 Modrany', 'Prague', NULL, 'Czechoslovakia', NULL, 'EXCELLENT', 11, 5, NULL),
(212, 'Hamada Sport', '20-31209222', '47A Corniche', 'Alexandria', NULL, 'Egypt', NULL, 'EXCELLENT', 13, 3, NULL),
(213, 'Sports Emporium', '1-415-555-6281', '4783 168th Street', 'San Francisco', 'CA', 'US', NULL, 'EXCELLENT', 11, 1, NULL),
(214, 'Sports Retail', '1-716-555-7777', '115 Main Street', 'Buffalo', 'NY', 'US', NULL, 'POOR', 11, 1, NULL),
(215, 'Sports Russia', '7-0953892444', '7070 Yekatamina', 'Saint Petersburg', NULL, 'Russia', NULL, 'POOR', 11, 5, NULL),
(301, 'Sports,Inc', '540-123-4567', '72 High St', 'Harrisonburg', 'VA', 'US', '22809', 'EXCELLENT', 12, 1, NULL),
(302, 'Toms Sporting Goods', '540-987-6543', '6741 Main St', 'Harrisonburg', 'VA', 'US', '22809', 'POOR', 14, 1, NULL),
(303, 'Athletic Attire', '540-123-6789', '54 Market St', 'Harrisonburg', 'VA', 'US', '22808', 'GOOD', 14, 1, NULL),
(304, 'Athletics For All', '540-987-1234', '286 Main St', 'Harrisonburg', 'VA', 'US', '22808', 'EXCELLENT', 12, 1, NULL),
(305, 'Shoes for Sports', '540-123-9876', '538 High St', 'Harrisonburg', 'VA', 'US', '22809', 'EXCELLENT', 14, 1, NULL),
(306, 'BJ Athletics', '540-987-9999', '632 Water St', 'Harrisonburg', 'VA', 'US', '22810', 'POOR', 12, 1, NULL),
(403, 'Athletics One', '717-234-6786', '912 Columbia Rd', 'Lancaster', 'PA', 'US', '17601', 'GOOD', 14, 1, NULL),
(404, 'Great Athletes', '717-987-2341', '121 Litiz Pike', 'Lancaster', 'PA', 'US', '17602', 'EXCELLENT', 12, 1, NULL),
(405, 'Athletics Two', '717-987-9875', '435 High Rd', 'Lancaster', 'PA', 'US', '17602', 'EXCELLENT', 14, 1, NULL),
(406, 'Athletes Attic', '717-234-9888', '101 Greenfield Rd', 'Lancaster', 'PA', 'US', '17601', 'POOR', 12, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_dept`
--

CREATE TABLE `s_dept` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_dept`
--

INSERT INTO `s_dept` (`id`, `name`, `region_id`) VALUES
(10, 'Finance', 1),
(31, 'Sales', 1),
(32, 'Sales', 2),
(33, 'Sales', 3),
(34, 'Sales', 4),
(35, 'Sales', 5),
(41, 'Operations', 1),
(42, 'Operations', 2),
(43, 'Operations', 3),
(44, 'Operations', 4),
(45, 'Operations', 5),
(50, 'Administration', 1);

-- --------------------------------------------------------

--
-- Table structure for table `s_emp`
--

CREATE TABLE `s_emp` (
  `id` int(11) NOT NULL,
  `last_name` text DEFAULT NULL,
  `first_name` text DEFAULT NULL,
  `userid` text DEFAULT NULL,
  `start_date` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `commission_pct` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_emp`
--

INSERT INTO `s_emp` (`id`, `last_name`, `first_name`, `userid`, `start_date`, `comments`, `manager_id`, `title`, `dept_id`, `salary`, `commission_pct`) VALUES
(1, 'Martin', 'Carmen', 'martincu', '2010-03-03', NULL, NULL, 'President', 50, 4500, NULL),
(2, 'Smith', 'Doris', 'smithdj', '2010-03-08', NULL, 1, 'VP, Operations', 41, 2450, NULL),
(3, 'Norton', 'Michael', 'nortonma', '2011-06-17', NULL, 1, 'VP, Sales', 31, 2400, NULL),
(4, 'Quentin', 'Mark', 'quentiml', '2010-04-07', NULL, 1, 'VP, Finance', 10, 2450, NULL),
(5, 'Roper', 'Joseph', 'roperjm', '2010-03-04', NULL, 1, 'VP, Administration', 50, 2550, NULL),
(6, 'Brown', 'Molly', 'brownmr', '2011-01-18', NULL, 2, 'Warehouse Manager', 41, 1600, NULL),
(7, 'Hawkins', 'Roberta', 'hawkinrt', '2010-05-14', NULL, 2, 'Warehouse Manager', 42, 1650, NULL),
(8, 'Burns', 'Ben', 'burnsba', '2010-04-07', NULL, 2, 'Warehouse Manager', 43, 1500, NULL),
(9, 'Catskill', 'Antoinette', 'catskiaw', '2012-02-09', NULL, 2, 'Warehouse Manager', 44, 1700, NULL),
(10, 'Jackson', 'Marta', 'jacksomt', '2011-02-27', NULL, 2, 'Warehouse Manager', 45, 1507, NULL),
(11, 'Henderson', 'Colin', 'hendercs', '2010-05-14', NULL, 3, 'Sales Representative', 31, 1400, '10'),
(12, 'Gilson', 'Sam', 'gilsonsj', '2012-01-18', NULL, 3, 'Sales Representative', 32, 1490, '12.5'),
(13, 'Sanders', 'Jason', 'sanderjk', '2011-02-18', NULL, 3, 'Sales Representative', 33, 1515, '10'),
(14, 'Dameron', 'Andre', 'dameroap', '2011-10-09', NULL, 3, 'Sales Representative', 35, 1450, '17.5'),
(15, 'Hardwick', 'Elaine', 'hardwiem', '2012-02-07', NULL, 6, 'Stock Clerk', 41, 1400, NULL),
(16, 'Brown', 'George', 'browngw', '2010-03-08', NULL, 6, 'Stock Clerk', 41, 940, NULL),
(17, 'Washington', 'Thomas', 'washintl', '2011-02-09', NULL, 7, 'Stock Clerk', 42, 1200, NULL),
(18, 'Patterson', 'Donald', 'patterdv', '2011-08-06', NULL, 7, 'Stock Clerk', 42, 795, NULL),
(19, 'Bell', 'Alexander', 'bellag', '2011-05-26', NULL, 8, 'Stock Clerk', 43, 850, NULL),
(20, 'Gantos', 'Eddie', 'gantosej', '2010-11-30', NULL, 9, 'Stock Clerk', 44, 800, NULL),
(21, 'Stephenson', 'Blaine', 'stephebs', '2011-03-17', NULL, 10, 'Stock Clerk', 45, 860, NULL),
(22, 'Chester', 'Eddie', 'chesteek', '2010-11-30', NULL, 9, 'Stock Clerk', 44, 800, NULL),
(23, 'Pearl', 'Roger', 'pearlrg', '2010-10-17', NULL, 9, 'Stock Clerk', 34, 795, NULL),
(24, 'Dancer', 'Bonnie', 'dancerbw', '2011-03-17', NULL, 7, 'Stock Clerk', 45, 860, NULL),
(25, 'Schmitt', 'Sandra', 'schmitss', '2011-05-09', NULL, 8, 'Stock Clerk', 45, 1100, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_inventory`
--

CREATE TABLE `s_inventory` (
  `product_id` int(11) NOT NULL,
  `warehouse_id` int(11) NOT NULL,
  `amount_in_stock` int(11) DEFAULT NULL,
  `reorder_point` int(11) DEFAULT NULL,
  `max_in_stock` int(11) DEFAULT NULL,
  `out_of_stock_explanation` text DEFAULT NULL,
  `restock_date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_inventory`
--

INSERT INTO `s_inventory` (`product_id`, `warehouse_id`, `amount_in_stock`, `reorder_point`, `max_in_stock`, `out_of_stock_explanation`, `restock_date`) VALUES
(10011, 101, 650, 625, 1100, NULL, NULL),
(10012, 101, 600, 560, 1000, NULL, NULL),
(10012, 10501, 300, 300, 525, NULL, NULL),
(10013, 101, 400, 400, 700, NULL, NULL),
(10013, 10501, 314, 300, 525, NULL, NULL),
(10021, 101, 500, 425, 740, NULL, NULL),
(10022, 101, 300, 200, 350, NULL, NULL),
(10022, 10501, 502, 300, 525, NULL, NULL),
(10023, 101, 400, 300, 525, NULL, NULL),
(10023, 10501, 500, 300, 525, NULL, NULL),
(20106, 101, 993, 625, 1000, NULL, NULL),
(20106, 201, 220, 150, 260, NULL, NULL),
(20106, 10501, 150, 100, 175, NULL, NULL),
(20108, 101, 700, 700, 1225, NULL, NULL),
(20108, 201, 166, 150, 260, NULL, NULL),
(20108, 10501, 222, 200, 350, NULL, NULL),
(20201, 101, 802, 800, 1400, NULL, NULL),
(20201, 201, 320, 200, 350, NULL, NULL),
(20201, 10501, 275, 200, 350, NULL, NULL),
(20510, 101, 1389, 850, 1400, NULL, NULL),
(20510, 201, 175, 100, 175, NULL, NULL),
(20510, 301, 69, 40, 100, NULL, NULL),
(20510, 401, 88, 50, 100, NULL, NULL),
(20510, 10501, 57, 50, 87, NULL, NULL),
(20512, 101, 850, 850, 1450, NULL, NULL),
(20512, 201, 162, 100, 175, NULL, NULL),
(20512, 301, 28, 20, 50, NULL, NULL),
(20512, 401, 75, 75, 140, NULL, NULL),
(20512, 10501, 62, 50, 87, NULL, NULL),
(30321, 101, 2000, 1500, 2500, NULL, NULL),
(30321, 201, 96, 80, 140, NULL, NULL),
(30321, 301, 85, 80, 140, NULL, NULL),
(30321, 401, 102, 80, 140, NULL, NULL),
(30321, 10501, 194, 150, 275, NULL, NULL),
(30326, 101, 2100, 2000, 3500, NULL, NULL),
(30326, 201, 147, 120, 210, NULL, NULL),
(30326, 401, 113, 80, 140, NULL, NULL),
(30326, 10501, 277, 250, 440, NULL, NULL),
(30421, 101, 1822, 1800, 3150, NULL, NULL),
(30421, 201, 102, 80, 140, NULL, NULL),
(30421, 301, 102, 80, 140, NULL, NULL),
(30421, 401, 85, 80, 140, NULL, NULL),
(30421, 10501, 190, 150, 275, NULL, NULL),
(30426, 101, 2250, 2000, 3500, NULL, NULL),
(30426, 201, 200, 120, 210, NULL, NULL),
(30426, 401, 135, 80, 140, NULL, NULL),
(30426, 10501, 423, 250, 450, NULL, NULL),
(30433, 101, 650, 600, 1050, NULL, NULL),
(30433, 201, 130, 130, 230, NULL, NULL),
(30433, 301, 35, 20, 35, NULL, NULL),
(30433, 401, 0, 100, 175, NULL, NULL),
(30433, 10501, 273, 200, 350, NULL, NULL),
(32779, 101, 2120, 1250, 2200, NULL, NULL),
(32779, 201, 180, 150, 260, NULL, NULL),
(32779, 301, 102, 95, 175, NULL, NULL),
(32779, 401, 135, 100, 175, NULL, NULL),
(32779, 10501, 280, 200, 350, NULL, NULL),
(32861, 101, 505, 500, 875, NULL, NULL),
(32861, 201, 132, 80, 140, NULL, NULL),
(32861, 301, 57, 50, 100, NULL, NULL),
(32861, 401, 250, 150, 250, NULL, NULL),
(32861, 10501, 288, 200, 350, NULL, NULL),
(40421, 101, 578, 350, 600, NULL, NULL),
(40421, 301, 70, 40, 70, NULL, NULL),
(40421, 401, 47, 40, 70, NULL, NULL),
(40421, 10501, 97, 80, 140, NULL, NULL),
(40422, 101, 0, 350, 600, 'Phenomenal sales...', '1993-02-08'),
(40422, 301, 65, 40, 70, NULL, NULL),
(40422, 401, 50, 40, 70, NULL, NULL),
(40422, 10501, 90, 80, 140, NULL, NULL),
(41010, 101, 250, 250, 437, NULL, NULL),
(41010, 301, 59, 40, 70, NULL, NULL),
(41010, 401, 80, 70, 220, NULL, NULL),
(41010, 10501, 151, 140, 245, NULL, NULL),
(41020, 101, 471, 450, 750, NULL, NULL),
(41020, 301, 61, 40, 70, NULL, NULL),
(41020, 401, 91, 70, 220, NULL, NULL),
(41020, 10501, 224, 140, 245, NULL, NULL),
(41050, 101, 501, 450, 750, NULL, NULL),
(41050, 301, 49, 40, 70, NULL, NULL),
(41050, 401, 169, 70, 220, NULL, NULL),
(41050, 10501, 157, 140, 245, NULL, NULL),
(41080, 101, 400, 400, 700, NULL, NULL),
(41080, 301, 50, 40, 70, NULL, NULL),
(41080, 401, 100, 70, 220, NULL, NULL),
(41080, 10501, 159, 140, 245, NULL, NULL),
(41100, 101, 350, 350, 600, NULL, NULL),
(41100, 301, 42, 40, 70, NULL, NULL),
(41100, 401, 75, 70, 220, NULL, NULL),
(41100, 10501, 141, 140, 245, NULL, NULL),
(50169, 101, 2530, 1500, 2600, NULL, NULL),
(50169, 201, 225, 220, 385, NULL, NULL),
(50169, 401, 240, 200, 350, NULL, NULL),
(50273, 101, 233, 200, 350, NULL, NULL),
(50273, 201, 75, 60, 100, NULL, NULL),
(50273, 401, 224, 150, 280, NULL, NULL),
(50417, 101, 518, 500, 875, NULL, NULL),
(50417, 201, 82, 60, 100, NULL, NULL),
(50417, 401, 130, 120, 210, NULL, NULL),
(50418, 101, 244, 100, 275, NULL, NULL),
(50418, 201, 98, 60, 100, NULL, NULL),
(50418, 401, 156, 100, 175, NULL, NULL),
(50419, 101, 230, 120, 310, NULL, NULL),
(50419, 201, 77, 60, 100, NULL, NULL),
(50419, 401, 151, 150, 280, NULL, NULL),
(50530, 101, 669, 400, 700, NULL, NULL),
(50530, 201, 62, 60, 100, NULL, NULL),
(50530, 401, 119, 100, 175, NULL, NULL),
(50532, 101, 0, 100, 175, 'Wait for Spring.', '1993-04-12'),
(50532, 201, 67, 60, 100, NULL, NULL),
(50532, 401, 233, 200, 350, NULL, NULL),
(50536, 101, 173, 100, 175, NULL, NULL),
(50536, 201, 97, 60, 100, NULL, NULL),
(50536, 401, 138, 100, 175, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_item`
--

CREATE TABLE `s_item` (
  `ord_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `quantity_shipped` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_item`
--

INSERT INTO `s_item` (`ord_id`, `item_id`, `product_id`, `price`, `quantity`, `quantity_shipped`) VALUES
(97, 1, 20106, 9, 1000, 1000),
(97, 2, 30321, 1500, 50, 50),
(98, 1, 40421, 85, 7, 7),
(99, 1, 20510, 9, 18, 18),
(99, 2, 20512, 8, 25, 25),
(99, 3, 50417, 80, 53, 53),
(99, 4, 50530, 45, 69, 69),
(100, 1, 10011, 135, 500, 500),
(100, 2, 10013, 380, 400, 400),
(100, 3, 10021, 14, 500, 500),
(100, 4, 10023, 36, 400, 400),
(100, 5, 30326, 582, 600, 600),
(100, 6, 30433, 20, 450, 450),
(100, 7, 41010, 8, 250, 250),
(101, 1, 30421, 16, 15, 15),
(101, 2, 40422, 50, 30, 30),
(101, 3, 41010, 8, 20, 20),
(101, 4, 41100, 45, 35, 35),
(101, 5, 50169, 4.29, 40, 40),
(101, 6, 50417, 80, 27, 27),
(101, 7, 50530, 45, 50, 50),
(102, 1, 20108, 28, 100, 100),
(102, 2, 20201, 123, 45, 45),
(103, 1, 30433, 20, 15, 15),
(103, 2, 32779, 7, 11, 11),
(104, 1, 20510, 9, 7, 7),
(104, 2, 20512, 8, 12, 12),
(104, 3, 30321, 1669, 19, 19),
(104, 4, 30421, 16, 35, 35),
(105, 1, 50273, 22.89, 16, 16),
(105, 2, 50419, 80, 13, 13),
(105, 3, 50532, 47, 28, 28),
(106, 1, 20108, 28, 46, 46),
(106, 2, 20201, 123, 21, 21),
(106, 3, 50169, 4.29, 125, 125),
(106, 4, 50273, 22.89, 75, 75),
(106, 5, 50418, 75, 98, 98),
(106, 6, 50419, 80, 27, 27),
(107, 1, 20106, 11, 50, 50),
(107, 2, 20108, 28, 22, 22),
(107, 3, 20201, 115, 130, 130),
(107, 4, 30321, 1669, 75, 75),
(107, 5, 30421, 16, 55, 55),
(108, 1, 20510, 9, 9, 9),
(108, 2, 20512, 8, 18, 18),
(108, 3, 30321, 1669, 85, 85),
(108, 4, 32779, 7, 60, 60),
(108, 5, 32861, 60, 57, 57),
(108, 6, 41080, 35, 50, 50),
(108, 7, 41100, 45, 42, 42),
(109, 1, 10011, 140, 150, 150),
(109, 2, 10012, 175, 600, 600),
(109, 3, 10022, 21.95, 300, 300),
(109, 4, 30326, 582, 1500, 1500),
(109, 5, 30426, 18.25, 500, 500),
(109, 6, 32861, 60, 50, 50),
(109, 7, 50418, 75, 43, 43),
(110, 1, 50273, 22.89, 17, 17),
(110, 2, 50536, 50, 23, 23),
(111, 1, 40421, 65, 27, 27),
(111, 2, 41080, 35, 29, 29),
(112, 1, 20106, 11, 50, 50);

-- --------------------------------------------------------

--
-- Table structure for table `s_ord`
--

CREATE TABLE `s_ord` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `date_ordered` text DEFAULT NULL,
  `date_shipped` text DEFAULT NULL,
  `sales_rep_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `payment_type` text DEFAULT NULL,
  `order_filled` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_ord`
--

INSERT INTO `s_ord` (`id`, `customer_id`, `date_ordered`, `date_shipped`, `sales_rep_id`, `total`, `payment_type`, `order_filled`) VALUES
(97, 201, '2012-08-28', '2012-09-17', 12, 84000, 'CREDIT', 'Y'),
(98, 202, '2012-08-31', '2012-09-10', 14, 595, 'CASH', 'Y'),
(99, 203, '2012-08-31', '2012-08-18', 14, 7707, 'CREDIT', 'Y'),
(100, 204, '2012-08-31', '2012-09-10', 11, 601100, 'CREDIT', 'Y'),
(101, 205, '2012-08-31', '2012-09-15', 14, 8057, 'CREDIT', 'Y'),
(102, 206, '2012-09-01', '2012-09-08', 12, 8335, 'CREDIT', 'Y'),
(103, 208, '2012-09-02', '2012-09-22', 11, 377, 'CASH', 'Y'),
(104, 208, '2012-09-03', '2012-09-23', 13, 32430, 'CREDIT', 'Y'),
(105, 209, '2012-09-04', '2012-09-18', 11, 2722, 'CREDIT', 'Y'),
(106, 210, '2012-09-07', '2012-09-15', 12, 15634, 'CREDIT', 'Y'),
(107, 211, '2012-09-07', '2012-09-21', 14, 142171, 'CREDIT', 'Y'),
(108, 212, '2012-09-07', '2012-09-10', 13, 149570, 'CREDIT', 'Y'),
(109, 213, '2012-09-08', '2012-09-28', 11, 1020935, 'CREDIT', 'Y'),
(110, 214, '2012-09-09', '2012-09-21', 11, 1539, 'CASH', 'Y'),
(111, 204, '2012-09-09', '2012-09-21', 11, 2770, 'CASH', 'Y'),
(112, 210, '2012-08-31', '2012-09-10', 12, 550, 'CREDIT', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `s_product`
--

CREATE TABLE `s_product` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `suggested_whlsl_price` double DEFAULT NULL,
  `whlsl_units` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_product`
--

INSERT INTO `s_product` (`id`, `name`, `short_desc`, `suggested_whlsl_price`, `whlsl_units`) VALUES
(10011, 'Bunny Boot', 'Beginner\'s ski boot', 150, NULL),
(10012, 'Ace Ski Boot', 'Intermediate ski boot', 200, NULL),
(10013, 'Pro Ski Boot', 'Advanced ski boot', 410, NULL),
(10021, 'Bunny Ski Pole', 'Beginner\'s ski pole', 16.25, NULL),
(10022, 'Ace Ski Pole', 'Intermediate ski pole', 21.95, NULL),
(10023, 'Pro Ski Pole', 'Advanced ski pole', 40.95, NULL),
(20106, 'Junior Soccer Ball', 'Junior soccer ball', 11, NULL),
(20108, 'World Cup Soccer Ball', 'World cup soccer ball', 28, NULL),
(20201, 'World Cup Net', 'World cup net', 123, NULL),
(20510, 'Black Hawk Knee Pads', 'Knee pads, pair', 9, NULL),
(20512, 'Black Hawk Elbow Pads', 'Elbow pads, pair', 8, NULL),
(30321, 'Grand Prix Bicycle', 'Road bicycle', 1669, NULL),
(30326, 'Himalaya Bicycle', 'Mountain bicycle', 582, NULL),
(30421, 'Grand Prix Bicycle Tires', 'Road bicycle tires', 16, NULL),
(30426, 'Himalaya Tires', 'Mountain bicycle tires', 18.25, NULL),
(30433, 'New Air Pump', 'Tire pump', 20, NULL),
(32779, 'Slaker Water Bottle', 'Water bottle', 7, NULL),
(32861, 'Safe-T Helmet', 'Bicycle helmet', 60, NULL),
(40421, 'Alexeyer Pro Lifting Bar', 'Straight bar', 65, NULL),
(40422, 'Pro Curling Bar', 'Curling bar', 50, NULL),
(41010, 'Prostar 10 Pound Weight', 'Ten pound weight', 8, NULL),
(41020, 'Prostar 20 Pound Weight', 'Twenty pound weight', 12, NULL),
(41050, 'Prostar 50 Pound Weight', 'Fifty pound weight', 25, NULL),
(41080, 'Prostar 80 Pound Weight', 'Eighty pound weight', 35, NULL),
(41100, 'Prostar 100 Pound Weight', 'One hundred pound weight', 45, NULL),
(50169, 'Major League Baseball', 'Baseball', 4.29, NULL),
(50273, 'Chapman Helmet', 'Batting helmet', 22.89, NULL),
(50417, 'Griffey Glove', 'Outfielder\'s glove', 80, NULL),
(50418, 'Alomar Glove', 'Infielder\'s glove', 75, NULL),
(50419, 'Steinbach Glove', 'Catcher\'s glove', 80, NULL),
(50530, 'Cabrera Bat', 'Thirty inch bat', 45, NULL),
(50532, 'Puckett Bat', 'Thirty-two inch bat', 47, NULL),
(50536, 'Winfield Bat', 'Thirty-six inch bat', 50, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `s_region`
--

CREATE TABLE `s_region` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_region`
--

INSERT INTO `s_region` (`id`, `name`) VALUES
(1, 'North America'),
(2, 'South America'),
(3, 'Africa / Middle East'),
(4, 'Asia'),
(5, 'Europe'),
(6, 'Central America /Caribbean');

-- --------------------------------------------------------

--
-- Table structure for table `s_warehouse`
--

CREATE TABLE `s_warehouse` (
  `id` int(11) NOT NULL,
  `region_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `zip_code` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `s_warehouse`
--

INSERT INTO `s_warehouse` (`id`, `region_id`, `address`, `city`, `state`, `country`, `zip_code`, `phone`, `manager_id`) VALUES
(101, 1, '283 King Street', 'Seattle', 'WA', 'US', NULL, NULL, 6),
(201, 2, '68 Via Centrale', 'Sao Paolo', NULL, 'Brazil', NULL, NULL, 7),
(301, 3, '6921 King Way', 'Lagos', NULL, 'Nigeria', NULL, NULL, 8),
(401, 4, '86 Chu Street', 'Hong Kong', NULL, NULL, NULL, NULL, 9),
(10501, 5, '5 Modrany', 'Bratislava', NULL, 'Czechozlovakia', NULL, NULL, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `s_customer`
--
ALTER TABLE `s_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`),
  ADD KEY `sales_rep_id` (`sales_rep_id`);

--
-- Indexes for table `s_dept`
--
ALTER TABLE `s_dept`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `s_emp`
--
ALTER TABLE `s_emp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_id` (`manager_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `s_inventory`
--
ALTER TABLE `s_inventory`
  ADD PRIMARY KEY (`product_id`,`warehouse_id`),
  ADD KEY `warehouse_id` (`warehouse_id`);

--
-- Indexes for table `s_item`
--
ALTER TABLE `s_item`
  ADD PRIMARY KEY (`ord_id`,`item_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `s_ord`
--
ALTER TABLE `s_ord`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `sales_rep_id` (`sales_rep_id`);

--
-- Indexes for table `s_product`
--
ALTER TABLE `s_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_region`
--
ALTER TABLE `s_region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_warehouse`
--
ALTER TABLE `s_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `region_id` (`region_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `s_customer`
--
ALTER TABLE `s_customer`
  ADD CONSTRAINT `s_customer_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `s_region` (`id`),
  ADD CONSTRAINT `s_customer_ibfk_2` FOREIGN KEY (`sales_rep_id`) REFERENCES `s_emp` (`id`);

--
-- Constraints for table `s_dept`
--
ALTER TABLE `s_dept`
  ADD CONSTRAINT `s_dept_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `s_region` (`id`);

--
-- Constraints for table `s_emp`
--
ALTER TABLE `s_emp`
  ADD CONSTRAINT `s_emp_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `s_emp` (`id`),
  ADD CONSTRAINT `s_emp_ibfk_2` FOREIGN KEY (`dept_id`) REFERENCES `s_dept` (`id`);

--
-- Constraints for table `s_inventory`
--
ALTER TABLE `s_inventory`
  ADD CONSTRAINT `s_inventory_ibfk_1` FOREIGN KEY (`warehouse_id`) REFERENCES `s_warehouse` (`id`),
  ADD CONSTRAINT `s_inventory_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `s_product` (`id`);

--
-- Constraints for table `s_item`
--
ALTER TABLE `s_item`
  ADD CONSTRAINT `s_item_ibfk_1` FOREIGN KEY (`ord_id`) REFERENCES `s_ord` (`id`),
  ADD CONSTRAINT `s_item_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `s_product` (`id`);

--
-- Constraints for table `s_ord`
--
ALTER TABLE `s_ord`
  ADD CONSTRAINT `s_ord_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `s_customer` (`id`),
  ADD CONSTRAINT `s_ord_ibfk_2` FOREIGN KEY (`sales_rep_id`) REFERENCES `s_emp` (`id`);

--
-- Constraints for table `s_warehouse`
--
ALTER TABLE `s_warehouse`
  ADD CONSTRAINT `s_warehouse_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `s_region` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
