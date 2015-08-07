-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 07, 2015 at 01:52 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `level` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `level`) VALUES
(1, 'Mr. Admin', 'jawadkhan.it@gmail.com', '123456', '1');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `attendance_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 undefined , 1 present , 2  absent',
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `status`, `student_id`, `date`) VALUES
(1, 1, 1, '2015-02-21'),
(2, 0, 2, '2015-03-25'),
(3, 0, 3, '2016-03-21'),
(4, 1, 4, '2015-02-21'),
(5, 0, 1, '2015-06-13'),
(6, 0, 2, '2015-06-13'),
(7, 0, 3, '2015-06-13'),
(8, 0, 4, '2015-06-13'),
(9, 0, 5, '2015-06-13'),
(10, 1, 1, '2015-07-25'),
(11, 2, 2, '2015-07-25'),
(12, 1, 3, '2015-07-25'),
(13, 1, 4, '2015-07-25'),
(14, 2, 5, '2015-07-25'),
(15, 1, 1, '2015-07-27'),
(16, 1, 2, '2015-07-27'),
(17, 2, 3, '2015-07-27'),
(18, 1, 4, '2015-07-27'),
(19, 1, 5, '2015-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `author` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL,
  `price` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `class_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `name_numeric` longtext COLLATE utf8_unicode_ci NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `name`, `name_numeric`, `teacher_id`) VALUES
(1, 'Class I', 'I', 1),
(2, 'Class 2', 'II', 2);

-- --------------------------------------------------------

--
-- Table structure for table `class_routine`
--

CREATE TABLE IF NOT EXISTS `class_routine` (
  `class_routine_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_start` int(11) NOT NULL,
  `time_end` int(11) NOT NULL,
  `day` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dormitory`
--

CREATE TABLE IF NOT EXISTS `dormitory` (
  `dormitory_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_room` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `exam_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `date` longtext COLLATE utf8_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`exam_id`, `name`, `date`, `comment`) VALUES
(1, '1st term', '08/20/2015', 'First term '),
(2, '2nd term', '09/21/2015', '2nd term '),
(3, '3rd term', '10/20/2015', '3rd term'),
(4, 'Mid term', '01/20/2016', 'Mid term'),
(5, 'Final', '05/01/2016', 'Final terms');

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `grade_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `grade_point` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mark_from` int(11) NOT NULL,
  `mark_upto` int(11) NOT NULL,
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grade`
--

INSERT INTO `grade` (`grade_id`, `name`, `grade_point`, `mark_from`, `mark_upto`, `comment`) VALUES
(1, 'A++', '100', 90, 100, 'A+'),
(2, 'A+', '80 points', 80, 90, 'A'),
(3, 'A', '70 points', 70, 80, ''),
(4, 'B', '60', 60, 70, 'B'),
(5, 'C', '50 points', 50, 60, 'C'),
(6, 'F', '0 points', 1, 50, 'fail');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE IF NOT EXISTS `holidays` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `creation_timestamp` int(11) NOT NULL,
  `payment_timestamp` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `payment_details` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT 'paid or unpaid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `phrase_id` int(11) NOT NULL,
  `phrase` longtext COLLATE utf8_unicode_ci NOT NULL,
  `english` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`phrase_id`, `phrase`, `english`) VALUES
(1, 'login', 'login'),
(2, 'account_type', 'account type'),
(3, 'admin', 'admin'),
(4, 'teacher', 'teacher'),
(5, 'student', 'student'),
(6, 'parent', 'parent'),
(7, 'email', 'email'),
(8, 'password', 'password'),
(9, 'forgot_password ?', 'forgot password ?'),
(10, 'reset_password', 'reset password'),
(11, 'reset', 'reset'),
(12, 'admin_dashboard', 'Admin Dashboard'),
(13, 'account', 'account'),
(14, 'profile', 'profile'),
(15, 'change_password', 'change password'),
(16, 'logout', 'logout'),
(17, 'panel', 'panel'),
(18, 'dashboard_help', 'dashboard help'),
(19, 'dashboard', 'dashboard'),
(20, 'student_help', 'student help'),
(21, 'teacher_help', 'teacher help'),
(22, 'subject_help', 'subject help'),
(23, 'subject', 'subject'),
(24, 'class_help', 'class help'),
(25, 'class', 'class'),
(26, 'exam_help', 'exam help'),
(27, 'exam', 'exam'),
(28, 'marks_help', 'marks help'),
(29, 'marks-attendance', 'marks-attendance'),
(30, 'grade_help', 'grade help'),
(31, 'exam-grade', 'exam-grade'),
(32, 'class_routine_help', 'class routine help'),
(33, 'class_routine', 'class routine'),
(34, 'invoice_help', 'invoice help'),
(35, 'payment', 'payment'),
(36, 'book_help', 'book help'),
(37, 'library', 'library'),
(38, 'transport_help', 'transport help'),
(39, 'transport', 'transport'),
(40, 'dormitory_help', 'dormitory help'),
(41, 'dormitory', 'dormitory'),
(42, 'noticeboard_help', 'noticeboard help'),
(43, 'noticeboard-event', 'noticeboard-event'),
(44, 'bed_ward_help', 'bed ward help'),
(45, 'settings', 'settings'),
(46, 'system_settings', 'system settings'),
(47, 'manage_language', 'manage language'),
(48, 'backup_restore', 'backup restore'),
(49, 'profile_help', 'profile help'),
(50, 'manage_student', 'manage student'),
(51, 'manage_teacher', 'Manage Teacher'),
(52, 'noticeboard', 'noticeboard'),
(53, 'language', 'language'),
(54, 'backup', 'backup'),
(55, 'calendar_schedule', 'calendar schedule'),
(56, 'select_a_class', 'select a class'),
(57, 'student_list', 'student list'),
(58, 'add_student', 'add student'),
(59, 'roll', 'roll'),
(60, 'photo', 'photo'),
(61, 'student_name', 'student name'),
(62, 'address', 'address'),
(63, 'options', 'options'),
(64, 'marksheet', 'marksheet'),
(65, 'id_card', 'id card'),
(66, 'edit', 'edit'),
(67, 'delete', 'delete'),
(68, 'personal_profile', 'personal profile'),
(69, 'academic_result', 'academic result'),
(70, 'name', 'name'),
(71, 'birthday', 'birthday'),
(72, 'sex', 'sex'),
(73, 'male', 'male'),
(74, 'female', 'female'),
(75, 'religion', 'religion'),
(76, 'blood_group', 'blood group'),
(77, 'phone', 'phone'),
(78, 'father_name', 'father name'),
(79, 'mother_name', 'mother name'),
(80, 'edit_student', 'edit student'),
(81, 'teacher_list', 'teacher list'),
(82, 'add_teacher', 'add teacher'),
(83, 'teacher_name', 'teacher name'),
(84, 'edit_teacher', 'edit teacher'),
(85, 'manage_parent', 'manage parent'),
(86, 'parent_list', 'parent list'),
(87, 'parent_name', 'parent name'),
(88, 'relation_with_student', 'relation with student'),
(89, 'parent_email', 'parent email'),
(90, 'parent_phone', 'parent phone'),
(91, 'parrent_address', 'parrent address'),
(92, 'parrent_occupation', 'parrent occupation'),
(93, 'add', 'add'),
(94, 'parent_of', 'parent of'),
(95, 'profession', 'profession'),
(96, 'edit_parent', 'edit parent'),
(97, 'add_parent', 'add parent'),
(98, 'manage_subject', 'manage subject'),
(99, 'subject_list', 'subject list'),
(100, 'add_subject', 'add subject'),
(101, 'subject_name', 'subject name'),
(102, 'edit_subject', 'edit subject'),
(103, 'manage_class', 'manage class'),
(104, 'class_list', 'class list'),
(105, 'add_class', 'add class'),
(106, 'class_name', 'class name'),
(107, 'numeric_name', 'numeric name'),
(108, 'name_numeric', 'name numeric'),
(109, 'edit_class', 'edit class'),
(110, 'manage_exam', 'manage exam'),
(111, 'exam_list', 'exam list'),
(112, 'add_exam', 'add exam'),
(113, 'exam_name', 'exam name'),
(114, 'date', 'date'),
(115, 'comment', 'comment'),
(116, 'edit_exam', 'edit exam'),
(117, 'manage_exam_marks', 'manage exam marks'),
(118, 'manage_marks', 'manage marks'),
(119, 'select_exam', 'select exam'),
(120, 'select_class', 'select class'),
(121, 'select_subject', 'select subject'),
(122, 'select_an_exam', 'select an exam'),
(123, 'mark_obtained', 'mark obtained'),
(124, 'attendance', 'attendance'),
(125, 'manage_grade', 'manage grade'),
(126, 'grade_list', 'grade list'),
(127, 'add_grade', 'add grade'),
(128, 'grade_name', 'grade name'),
(129, 'grade_point', 'grade point'),
(130, 'mark_from', 'mark from'),
(131, 'mark_upto', 'mark upto'),
(132, 'edit_grade', 'edit grade'),
(133, 'manage_class_routine', 'manage class routine'),
(134, 'class_routine_list', 'class routine list'),
(135, 'add_class_routine', 'add class routine'),
(136, 'day', 'day'),
(137, 'starting_time', 'starting time'),
(138, 'ending_time', 'ending time'),
(139, 'edit_class_routine', 'edit class routine'),
(140, 'manage_invoice/payment', 'manage invoice/payment'),
(141, 'invoice/payment_list', 'invoice/payment list'),
(142, 'add_invoice/payment', 'add invoice/payment'),
(143, 'title', 'title'),
(144, 'description', 'description'),
(145, 'amount', 'amount'),
(146, 'status', 'status'),
(147, 'view_invoice', 'view invoice'),
(148, 'paid', 'paid'),
(149, 'unpaid', 'unpaid'),
(150, 'add_invoice', 'add invoice'),
(151, 'payment_to', 'payment to'),
(152, 'bill_to', 'bill to'),
(153, 'invoice_title', 'invoice title'),
(154, 'invoice_id', 'invoice id'),
(155, 'edit_invoice', 'edit invoice'),
(156, 'manage_library_books', 'manage library books'),
(157, 'book_list', 'book list'),
(158, 'add_book', 'add book'),
(159, 'book_name', 'book name'),
(160, 'author', 'author'),
(161, 'price', 'price'),
(162, 'available', 'available'),
(163, 'unavailable', 'unavailable'),
(164, 'edit_book', 'edit book'),
(165, 'manage_transport', 'manage transport'),
(166, 'transport_list', 'transport list'),
(167, 'add_transport', 'add transport'),
(168, 'route_name', 'route name'),
(169, 'number_of_vehicle', 'number of vehicle'),
(170, 'route_fare', 'route fare'),
(171, 'edit_transport', 'edit transport'),
(172, 'manage_dormitory', 'manage dormitory'),
(173, 'dormitory_list', 'dormitory list'),
(174, 'add_dormitory', 'add dormitory'),
(175, 'dormitory_name', 'dormitory name'),
(176, 'number_of_room', 'number of room'),
(177, 'manage_noticeboard', 'manage noticeboard'),
(178, 'noticeboard_list', 'noticeboard list'),
(179, 'add_noticeboard', 'add noticeboard'),
(180, 'notice', 'notice'),
(181, 'add_notice', 'add notice'),
(182, 'edit_noticeboard', 'edit noticeboard'),
(183, 'system_name', 'system name'),
(184, 'save', 'save'),
(185, 'system_title', 'system title'),
(186, 'paypal_email', 'paypal email'),
(187, 'currency', 'currency'),
(188, 'phrase_list', 'phrase list'),
(189, 'add_phrase', 'add phrase'),
(190, 'add_language', 'add language'),
(191, 'phrase', 'phrase'),
(192, 'manage_backup_restore', 'manage backup restore'),
(193, 'restore', 'restore'),
(194, 'mark', 'mark'),
(195, 'grade', 'grade'),
(196, 'invoice', 'invoice'),
(197, 'book', 'book'),
(198, 'all', 'all'),
(199, 'upload_&_restore_from_backup', 'upload & restore from backup'),
(200, 'manage_profile', 'manage profile'),
(201, 'update_profile', 'update profile'),
(202, 'new_password', 'new password'),
(203, 'confirm_new_password', 'confirm new password'),
(204, 'update_password', 'update password'),
(205, 'teacher_dashboard', 'teacher dashboard'),
(206, 'backup_restore_help', 'backup restore help'),
(207, 'student_dashboard', 'student dashboard'),
(208, 'parent_dashboard', 'parent dashboard'),
(209, 'view_marks', 'view marks'),
(210, 'delete_language', 'delete language'),
(211, 'settings_updated', 'settings updated'),
(212, 'update_phrase', 'update phrase'),
(213, 'login_failed', 'login failed'),
(214, 'live_chat', 'live chat'),
(215, 'client 1', 'client 1'),
(216, 'buyer', 'buyer'),
(217, 'purchase_code', 'purchase code'),
(218, 'system_email', 'system email'),
(219, 'option', 'option'),
(220, 'edit_phrase', 'edit phrase'),
(221, 'marks', ''),
(222, 'message', ''),
(223, 'manage_message', ''),
(224, '0', ''),
(225, '0', ''),
(226, 'notice_updated', ''),
(227, 'payment_cancelled', ''),
(228, '0', ''),
(229, '0', ''),
(230, 'payment_successfull', ''),
(231, 'admit_student', ''),
(232, 'student_information', ''),
(233, 'student_marksheet', ''),
(234, 'daily_attendance', ''),
(235, 'exam_grades', ''),
(236, 'general_settings', ''),
(237, 'language_settings', ''),
(238, 'edit_profile', ''),
(239, 'event_schedule', ''),
(240, 'cancel', ''),
(241, 'addmission_form', ''),
(242, 'value_required', ''),
(243, 'select', ''),
(244, 'gender', ''),
(245, 'add_new_student', ''),
(246, 'language_list', ''),
(247, 'text_align', '');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

CREATE TABLE IF NOT EXISTS `mark` (
  `mark_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `mark_obtained` int(11) NOT NULL DEFAULT '0',
  `mark_total` int(11) NOT NULL DEFAULT '100',
  `attendance` int(11) NOT NULL DEFAULT '0',
  `comment` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`mark_id`, `student_id`, `subject_id`, `class_id`, `exam_id`, `mark_obtained`, `mark_total`, `attendance`, `comment`) VALUES
(1, 1, 1, 1, 1, 10, 100, 50, ''),
(2, 2, 1, 1, 1, 0, 100, 0, ''),
(3, 3, 1, 1, 1, 0, 100, 0, ''),
(4, 4, 1, 1, 1, 0, 100, 0, ''),
(5, 5, 1, 1, 1, 0, 100, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `noticeboard`
--

CREATE TABLE IF NOT EXISTS `noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_title` longtext COLLATE utf8_unicode_ci NOT NULL,
  `notice` longtext COLLATE utf8_unicode_ci NOT NULL,
  `create_timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE IF NOT EXISTS `parent` (
  `parent_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(11) NOT NULL,
  `relation_with_student` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `profession` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `method` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE IF NOT EXISTS `payment_types` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `code` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `title`, `code`, `is_active`) VALUES
(1, 'Monthly tuition fee', 'M', 1);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `settings_id` int(11) NOT NULL,
  `type` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`settings_id`, `type`, `description`) VALUES
(1, 'system_name', 'abc'),
(2, 'system_title', 'abc'),
(3, 'address', 'Dhaka, Bangladesh'),
(4, 'phone', '+8012654159'),
(5, 'paypal_email', 'payment@school.com'),
(6, 'currency', 'usd'),
(7, 'system_email', 'school@ekattor.com'),
(8, 'buyer', 'nulledphp.com'),
(9, 'purchase_code', '0'),
(11, 'language', 'english'),
(12, 'text_align', 'left-to-right');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `student_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL,
  `father_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `mother_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` longtext COLLATE utf8_unicode_ci NOT NULL,
  `roll` longtext COLLATE utf8_unicode_ci NOT NULL,
  `transport_id` int(11) NOT NULL,
  `dormitory_id` int(11) NOT NULL,
  `dormitory_room_number` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fee` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`, `father_name`, `mother_name`, `class_id`, `roll`, `transport_id`, `dormitory_id`, `dormitory_room_number`, `fee`) VALUES
(2, 'Raza', '02/10/2015', 'male', '', '', 'ABC', '1234567', 'kjawad43@gmail.com', '123456', '', '', '1', '2', 0, 0, '', 0),
(3, 'Sajiid', '02/03/2015', 'male', '', '', 'ABC', '1234567', 'skhan@knysys.com', '123456', '', '', '1', '1', 0, 0, '', 0),
(4, 'Jawad', '02/11/2015', 'male', '', '', 'Flat # A-201, F.B Area Block 21, Karachi, Pakistan', '1234567', 'a@a.com', '123456', '', '', '1', '2', 0, 0, '', 0),
(5, 'sibghat', '07/14/2015', 'male', '', '', 'sad', 'sd', 'sad', 'sssssss', '', '', '1', '2', 0, 0, '', 2320);

-- --------------------------------------------------------

--
-- Table structure for table `student_dues`
--

CREATE TABLE IF NOT EXISTS `student_dues` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `sys_dues_id` int(11) NOT NULL,
  `status` varchar(111) NOT NULL,
  `date` date NOT NULL,
  `fee` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_dues`
--

INSERT INTO `student_dues` (`id`, `student_id`, `sys_dues_id`, `status`, `date`, `fee`) VALUES
(1, 2, 1, '1', '0000-00-00', 1000),
(2, 2, 2, '0', '0000-00-00', 5000),
(3, 2, 3, '0', '0000-00-00', 120),
(4, 2, 1, '0', '0000-00-00', 50);

-- --------------------------------------------------------

--
-- Table structure for table `student_payments`
--

CREATE TABLE IF NOT EXISTS `student_payments` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `s_dues_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `amount` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_payments`
--

INSERT INTO `student_payments` (`id`, `s_id`, `s_dues_id`, `created`, `amount`) VALUES
(2, 0, 1, '2015-08-07 00:00:00', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `subject_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `name`, `class_id`, `teacher_id`) VALUES
(1, 'English', 1, 1),
(2, 'Urdu', 1, 1),
(3, 'Science', 1, 1),
(4, 'Computer', 1, 1),
(5, 'Islamiat', 1, 1),
(6, 'Pushto', 1, 1),
(7, 'English', 2, 2),
(8, 'Urdu', 2, 1),
(9, 'Computer', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sys_dues`
--

CREATE TABLE IF NOT EXISTS `sys_dues` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sys_dues`
--

INSERT INTO `sys_dues` (`id`, `date`, `title`, `amount`) VALUES
(1, '2015-08-01', 'monthly', 100000),
(2, '2015-09-01', 'monthly', 1500),
(3, '2015-10-01', 'exam', 500);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE IF NOT EXISTS `teacher` (
  `teacher_id` int(11) NOT NULL,
  `name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `birthday` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sex` longtext COLLATE utf8_unicode_ci NOT NULL,
  `religion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `blood_group` longtext COLLATE utf8_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8_unicode_ci NOT NULL,
  `phone` longtext COLLATE utf8_unicode_ci NOT NULL,
  `email` longtext COLLATE utf8_unicode_ci NOT NULL,
  `password` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `name`, `birthday`, `sex`, `religion`, `blood_group`, `address`, `phone`, `email`, `password`) VALUES
(1, 'Jawad', '01/13/2015', 'male', '', '', 'ABC', '1234567', 'a@a.com', '123456'),
(2, 'Muhammad TAha', '11/17/1989', 'male', '', '', 'north karachi', '090078601', 'mail@taha.com', 'zalil123');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE IF NOT EXISTS `transport` (
  `transport_id` int(11) NOT NULL,
  `route_name` longtext COLLATE utf8_unicode_ci NOT NULL,
  `number_of_vehicle` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `route_fare` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_routine`
--
ALTER TABLE `class_routine`
  ADD PRIMARY KEY (`class_routine_id`);

--
-- Indexes for table `dormitory`
--
ALTER TABLE `dormitory`
  ADD PRIMARY KEY (`dormitory_id`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`phrase_id`);

--
-- Indexes for table `mark`
--
ALTER TABLE `mark`
  ADD PRIMARY KEY (`mark_id`);

--
-- Indexes for table `noticeboard`
--
ALTER TABLE `noticeboard`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parent_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`settings_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_dues`
--
ALTER TABLE `student_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_payments`
--
ALTER TABLE `student_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `sys_dues`
--
ALTER TABLE `sys_dues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `transport`
--
ALTER TABLE `transport`
  ADD PRIMARY KEY (`transport_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `class_routine`
--
ALTER TABLE `class_routine`
  MODIFY `class_routine_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dormitory`
--
ALTER TABLE `dormitory`
  MODIFY `dormitory_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `grade`
--
ALTER TABLE `grade`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `phrase_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=248;
--
-- AUTO_INCREMENT for table `mark`
--
ALTER TABLE `mark`
  MODIFY `mark_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `noticeboard`
--
ALTER TABLE `noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parent_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `settings_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `student_dues`
--
ALTER TABLE `student_dues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `student_payments`
--
ALTER TABLE `student_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sys_dues`
--
ALTER TABLE `sys_dues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transport`
--
ALTER TABLE `transport`
  MODIFY `transport_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
