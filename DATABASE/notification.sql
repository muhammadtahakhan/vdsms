-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2015 at 11:26 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vdschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `notification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(112) NOT NULL,
  `action` varchar(112) NOT NULL,
  `message` varchar(112) NOT NULL,
  `date` date NOT NULL,
  `is_read` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  KEY `notification_id` (`notification_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `name`, `action`, `message`, `date`, `is_read`, `status`) VALUES
(1, 'asas', '', 'student created', '0000-00-00', 1, 1),
(2, 'asas', '', 'New Student098 Inserted by teacherJawad', '0000-00-00', 1, 1),
(3, 'kjkj', '', 'New Student 0099 Inserted by teacher: Muhammad TAha', '0000-00-00', 1, 1),
(4, 'asa', '', 'New Student 987 Inserted by teacher: Muhammad TAha', '0000-00-00', 1, 1),
(5, 'MUHAMMAD TAHA', 'create', 'New Student 654 Inserted by teacher: Muhammad TAha', '0000-00-00', 1, 1),
(6, 'MUHAMMAD TAHA', 'create', 'New Student 665 Inserted by teacher: Muhammad TAha', '1970-01-01', 1, 1),
(7, 'MUHAMMAD TAHA', 'create', 'New Student 543 Inserted by teacher: Muhammad TAha', '2015-10-29', 1, 1),
(8, 'MUHAMMAD TAHA', 'create', 'New Student 1 Inserted by teacher: Muhammad TAha', '2015-10-30', 1, 1),
(9, 'MUHAMMAD TAHA', 'create', 'New Student 11 Inserted by teacher: Muhammad TAha', '2015-10-30', 1, 1),
(10, 'MUHAMMAD TAHA', 'create', 'New Student qwe Inserted by teacher: Muhammad TAha', '2015-10-30', 1, 1),
(11, 'MUHAMMAD TAHA', 'create', 'New Student der Inserted by teacher: Muhammad TAha', '2015-10-30', 1, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
