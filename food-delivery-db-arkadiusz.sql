-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 22, 2019 at 04:24 PM
-- Server version: 5.7.24-log
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `express_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` bigint(255) NOT NULL,
  `FirstName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostCode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PhoneAreaCode` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PhoneNumber` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Email`, `Address`, `City`, `PostCode`, `PhoneAreaCode`, `PhoneNumber`) VALUES
(1, 'Arkadiusz', 'Ostrowski', 'arkadiusz@email.com', 'Flat 21, 21 Jake Street', 'London', 'W58BT', '44', '5647897678'),
(2, 'Damien', 'Hill', 'damien@gmail.com', '21 Bond Street', 'London', 'E58BT', '44', '7865345234'),
(3, 'Luke', 'McHill', 'lhill@protonmail.com', 'Flat 3, 1 Bakery St', 'Reading', 'RG16AT', '44', '9876674653'),
(4, 'Hilary', 'Jacobs', 'jacobsh@sun.com', '45 Hill St', 'Doncaster', 'DN71GB', '44', '9080678567');

-- --------------------------------------------------------

--
-- Table structure for table `dessert`
--

CREATE TABLE `dessert` (
  `DessertID` bigint(100) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Description` varchar(300) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `dessert`
--

INSERT INTO `dessert` (`DessertID`, `Name`, `Description`, `Price`) VALUES
(1, 'Tiramisu', 'Tiramisu is an elegant and rich layered Italian dessert made with delicate ladyfinger cookies, espresso or instant espresso, mascarpone cheese, eggs, sugar, Marsala wine, rum and cocoa powder. Through the grouping of these diverse ingredients, an intense yet refined dish emerges.', '10.00'),
(2, 'Mandarin Chocolate Cheesecake', 'An utterly unique and delicious blend of flavors - a layer of chocolate fudge cake- a layer of fresh Mandarin Orange Marmalade - filled with creamy cheesecake, and enrobed in chocolate.', '8.75'),
(3, 'Pound Cake', ' Our pound cake is made with plenty of eggs, milk and butter. Baked to a golden brown with the traditional spilt top.', '6.70'),
(4, 'Southern Pecan Pie', 'We make our pecan pies with fresh pecan halves, brown sugar, vanilla, and rum. We also add heavy whipping cream to our pies just before baking to give them a rich creamy consistency.', '9.30');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `DriverID` bigint(100) NOT NULL,
  `FirstName` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `LastName` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `PhoneAreaCode` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `PhoneNumber` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`DriverID`, `FirstName`, `LastName`, `PhoneAreaCode`, `PhoneNumber`) VALUES
(1, 'George', 'Fast', '44', '7658465784'),
(2, 'Michel', 'Slow', '44', '7868563456'),
(3, 'Ankur', 'Ganges', '44', '765845637'),
(4, 'Grace', 'Glory', '44', '7786456345');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

CREATE TABLE `main` (
  `MainID` bigint(100) NOT NULL,
  `Name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Description` varchar(300) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Price` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`MainID`, `Name`, `Description`, `Price`) VALUES
(1, 'Swordfish Muddica', 'Chargrilled in herb & parmesan breadcrumbs, with tender grilled asparagus', '17.50'),
(2, 'Risotto agli Asparagi', 'The epitome of Antonio\'s motto of Mof Mof - Minimum of Fuss, Maximum of Flavour - simply, asparagus risotto', '15.40'),
(3, 'Risotto ai Funghi', 'Porcini, chestnut, oyster, shiitaki, shimenji, baby king oyster & closed cup mushrooms, garlic', '13.90'),
(4, 'Tuna Abruzzese Salad', 'Flaked tuna with buffalo mozzarella, green beans, tomatoes, baby potatoes, mixed leaves, anchovy fillet, soft-boiled egg and croutons. With a vinegar dressing', '14.00');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `MealID` bigint(100) NOT NULL,
  `MainID` bigint(100) NOT NULL,
  `DessertID` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`MealID`, `MainID`, `DessertID`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `MenuID` bigint(100) NOT NULL,
  `MainID-1` bigint(100) NOT NULL,
  `MainID-2` bigint(100) NOT NULL,
  `DessertID-1` bigint(100) NOT NULL,
  `DessertID-2` bigint(100) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`MenuID`, `MainID-1`, `MainID-2`, `DessertID-1`, `DessertID-2`, `Date`) VALUES
(1, 1, 2, 1, 2, '2019-04-11'),
(2, 3, 4, 3, 4, '2019-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `ordermeals`
--

CREATE TABLE `ordermeals` (
  `MealID` bigint(100) NOT NULL,
  `OrderID` bigint(100) NOT NULL,
  `OrderMealsQty` bigint(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `ordermeals`
--

INSERT INTO `ordermeals` (`MealID`, `OrderID`, `OrderMealsQty`) VALUES
(1, 1, 1),
(2, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` bigint(100) NOT NULL,
  `CustomerID` bigint(100) NOT NULL,
  `DriverID` bigint(100) NOT NULL,
  `DateTime` datetime NOT NULL,
  `Comments` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `Status` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `DriverID`, `DateTime`, `Comments`, `Status`) VALUES
(1, 1, 1, '2018-04-12 14:20:15', 'Please leave at reception', 'Order Accepted'),
(2, 2, 2, '2019-04-11 12:05:37', 'Add chocolate on top', 'Delivered'),
(3, 2, 1, '2009-06-15 13:45:30', 'Add hot chilli sauce', 'In Preparation');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `dessert`
--
ALTER TABLE `dessert`
  ADD PRIMARY KEY (`DessertID`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`DriverID`);

--
-- Indexes for table `main`
--
ALTER TABLE `main`
  ADD PRIMARY KEY (`MainID`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`MealID`),
  ADD KEY `MainID` (`MainID`),
  ADD KEY `DessertID` (`DessertID`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MenuID`),
  ADD KEY `MainID-1` (`MainID-1`),
  ADD KEY `MainID-2` (`MainID-2`),
  ADD KEY `DessertID-1` (`DessertID-1`),
  ADD KEY `DessertID-2` (`DessertID-2`);

--
-- Indexes for table `ordermeals`
--
ALTER TABLE `ordermeals`
  ADD KEY `MealID` (`MealID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `CustomerID` (`CustomerID`),
  ADD KEY `DriverID` (`DriverID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dessert`
--
ALTER TABLE `dessert`
  MODIFY `DessertID` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `DriverID` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main`
--
ALTER TABLE `main`
  MODIFY `MainID` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `MealID` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `MenuID` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `OrderedDesserts` FOREIGN KEY (`DessertID`) REFERENCES `dessert` (`DessertID`),
  ADD CONSTRAINT `OrderedMains` FOREIGN KEY (`MainID`) REFERENCES `main` (`MainID`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `FirstDessert` FOREIGN KEY (`DessertID-1`) REFERENCES `dessert` (`DessertID`),
  ADD CONSTRAINT `FirstMain` FOREIGN KEY (`MainID-1`) REFERENCES `main` (`MainID`),
  ADD CONSTRAINT `SecondDessert` FOREIGN KEY (`DessertID-2`) REFERENCES `dessert` (`DessertID`),
  ADD CONSTRAINT `SecondMain` FOREIGN KEY (`MainID-2`) REFERENCES `main` (`MainID`);

--
-- Constraints for table `ordermeals`
--
ALTER TABLE `ordermeals`
  ADD CONSTRAINT `OrderMeals-Meals` FOREIGN KEY (`MealID`) REFERENCES `meals` (`MealID`),
  ADD CONSTRAINT `OrderMeals-Order` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `delivery` FOREIGN KEY (`DriverID`) REFERENCES `driver` (`DriverID`),
  ADD CONSTRAINT `purchase` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
