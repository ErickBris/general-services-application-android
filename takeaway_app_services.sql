-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2016 at 09:51 AM
-- Server version: 5.5.45-cll-lve
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `takeaway_app_services`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin123', 'test@test.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(4, 'Plumber', '2016-03-31 10:13:39', '2016-04-12 12:48:35'),
(5, 'Mechanic', '2016-03-31 10:14:14', '2016-03-31 15:14:14'),
(6, 'Painter', '2016-03-31 10:14:58', '2016-03-31 15:14:58'),
(7, 'Electrician', '2016-03-31 10:14:58', '2016-03-31 13:17:44'),
(9, 'Household', '2016-03-31 12:18:29', '2016-03-31 13:18:29');

-- --------------------------------------------------------

--
-- Table structure for table `emprating`
--

CREATE TABLE IF NOT EXISTS `emprating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `rating_counter` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `emp_category` varchar(255) NOT NULL,
  `emp_address` varchar(255) NOT NULL,
  `emp_phone` varchar(255) NOT NULL,
  `emp_image` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `job_status` int(11) NOT NULL,
  `job_description` varchar(255) NOT NULL,
  `reasons_job_cancel` varchar(255) NOT NULL,
  `rating` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `emp_id`, `emp_name`, `emp_email`, `emp_category`, `emp_address`, `emp_phone`, `emp_image`, `user_id`, `user_name`, `user_email`, `user_address`, `user_phone`, `user_image`, `comments`, `job_status`, `job_description`, `reasons_job_cancel`, `rating`, `created_at`, `updated_at`) VALUES
(1, 9, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'gulberg', '12345678', '', '', 1, 'maintenance', '', 1, '2016-04-06 11:15:52', '2016-04-06 12:15:52'),
(2, 9, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'hotadoo', '12345678', '', '', 1, 'maintenance job', '', 1, '2016-04-06 11:21:37', '2016-04-06 12:21:37'),
(3, 8, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'Lhr', '12345678', '', 'ssda', 1, 'i have a job ajao', '', 3.3, '2016-04-06 11:31:26', '2016-04-06 12:31:26'),
(4, 8, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'khi', '12345678', '', 'ssda', 1, 'lets do some job ', '', 3.3, '2016-04-06 11:32:08', '2016-04-06 12:32:08'),
(5, 7, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'Kotadoo dud pati chah wali', '12345678', '', '', 1, 'mechanic job ', '', 1, '2016-04-06 14:21:51', '2016-04-06 15:21:51'),
(6, 7, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'ryk', '12345678', '', '', 1, 'mech job', '', 1, '2016-04-06 14:33:12', '2016-04-06 15:33:12'),
(7, 7, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'sdk', '12345678', '', '', 1, 'elec job', '', 1, '2016-04-06 14:35:17', '2016-04-06 15:35:17'),
(8, 8, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'plumberi job ', '12345678', '', 'ssda', 1, 'water cooler maintenance', '', 3.3, '2016-04-07 06:05:08', '2016-04-07 07:05:08'),
(9, 7, 'waqar', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'Uk', 'phonetxt', '', '', 1, 'Repair washing machine', '', 3, '2016-04-07 07:17:38', '2016-04-07 08:17:38'),
(10, 7, 'waqar', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459839829.jpg', 5, 'awais', '', 'df', 'phonetxt', '', '', 1, 'dfwefdqwe', '', 3, '2016-04-07 09:24:29', '2016-04-07 10:24:29'),
(11, 13, 'John', '', '', '', '044555477', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1460109233.jpg', 13, 'John', '', 'U.K open street near CMH', '044555477', '', '', 1, 'water cooler maitenance ', '', 3.05, '2016-04-08 10:02:53', '2016-04-08 11:02:53'),
(13, 8, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459840956.jpg', 14, 'Smith', '', 'uk', '+4455776879', '', 'ssda', 1, 'water pump maintenance', '', 3.3, '2016-04-08 12:51:06', '2016-04-08 13:51:06'),
(14, 8, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459840956.jpg', 14, 'Smith', '', 'pk', '+4455776879', '', 'wefdqwefdqwe', 0, 'ukiay job', '', 3.8, '2016-04-08 14:59:03', '2016-04-08 15:59:03'),
(15, 13, 'John', '', '', '', '044555477', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1460109233.jpg', 14, 'Smith', '', 'sdk', '+4455776879', '', 'dfgsdgsdgs', 0, 'asdas', '', 1.4, '2016-04-08 15:02:53', '2016-04-08 16:02:53'),
(16, 8, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459840956.jpg', 14, 'Smith', '', 'das', '+4455776879', '', 'ssda', 1, 'asdas', '', 3.3, '2016-04-08 15:05:45', '2016-04-08 16:05:45'),
(17, 13, 'John', '', '', '', '044555477', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1460109233.jpg', 14, 'Smith', '', 'dfsd', '+4455776879', '', '', 1, 'fgdg', '', 1, '2016-04-09 07:03:38', '2016-04-09 08:03:38'),
(18, 13, 'John', '', '', '', '044555477', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1460109233.jpg', 14, 'Smith', '', 'uk', '+4455776879', '', '', 1, 'gate maintenance job', '', 1, '2016-04-09 08:01:32', '2016-04-09 09:01:32'),
(19, 8, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459840956.jpg', 14, 'Smith', '', 'pk', '+4455776879', '', 'bgfhdh', 0, 'any job', '', 1.5, '2016-04-12 06:14:40', '2016-04-12 07:14:40'),
(20, 8, 'sajid', '', '', '', '033472871422', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1459840956.jpg', 14, 'Smith', '', 'Paris', '+4455776879', '', '', 1, 'tech job', '', 1, '2016-04-12 06:22:27', '2016-04-12 07:22:27'),
(21, 13, 'John', '', '', '', '044555477', 'http://takeawaymobileapplication.uk/clients/apis/generalservices/uploads/1460109233.jpg', 14, 'Smith', '', 'maldowa', '+4455776879', '', 'decdcd ', 0, 'maintenance job', '', 1.5, '2016-04-12 06:33:00', '2016-04-12 07:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `user_type` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `password`, `address`, `phone`, `image`, `user_type`, `category`, `experience`, `description`, `created_at`, `updated_at`) VALUES
(1, 'nametxt', 'usernametxt', 'test@test.com', '1468f98ac4548f824ccaacc951d69a63', 'Gulberg Lahore', 'phonetxt', '1459579027.jpg', 1, 12345, 'experiencetxt', 'strEmpDiscripion', '2016-04-02 06:37:07', '2016-04-02 07:37:07'),
(2, 'nametxt', 'usernametxt', 'emailtxt', '1468f98ac4548f824ccaacc951d69a63', 'Gulberg Lahore', 'phonetxt', '1460458548.jpg', 1, 12345, 'experiencetxt', 'strEmpDiscripion', '2016-04-02 06:42:05', '2016-04-02 07:42:05'),
(3, 'user', 'usernametxt', 'emailtxt', '1468f98ac4548f824ccaacc951d69a63', 'Gulberg Lahore', 'phonetxt', '1460461144.jpg', 2, 0, '', '', '2016-04-02 06:55:48', '2016-04-02 07:55:48'),
(4, 'user', 'usernametxt', 'emailtxt', '1468f98ac4548f824ccaacc951d69a63', 'Gulberg Lahore', 'phonetxt', '1460461144.jpg', 2, 0, '', '', '2016-04-02 06:57:40', '2016-04-02 07:57:40'),
(5, 'awais', 'aws', 'awais@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Gulberg Lahore', '03347287142', '1460461144.jpg', 2, 0, '', '', '2016-04-02 07:08:57', '2016-04-08 07:52:28'),
(6, 'M.Waqar ', 's.wqar', 'waqar1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Kot Addoo', '033472871422', '1460461144.jpg', 1, 0, '', '', '2016-04-02 07:10:33', '2016-04-02 15:15:52'),
(7, 'Engineer waqar', 'usernametxt', 'waqar@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Gulberg Lahore', '0334728700000', '1460461144.jpg', 1, 0, '', '', '2016-04-05 07:03:50', '2016-04-07 12:02:00'),
(8, 'sajid', 'sajid', 'sajid2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Gulberg Lahore', '033472871422', '1460461144.jpg', 1, 4, '10', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2016-04-05 07:22:36', '2016-04-05 08:22:36'),
(9, 'sajid ', 'sajid', 'sajid@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Gulberg Lahore', '033472871422', '1460458548.jpg', 1, 0, '', '', '2016-04-05 07:40:11', '2016-04-08 09:00:39'),
(10, 'sajidsd', 'sajid', 'sajidsdfsa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Gulberg Lahore', '033472871422', '1460461144.jpg', 1, 4, '10', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2016-04-05 07:52:25', '2016-04-05 08:52:25'),
(11, 'yasir', 'yasr', 'yasir@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'lahore', '023154718487', '1460458548.jpg', 2, 0, '', '', '2016-04-07 11:20:40', '2016-04-07 12:20:40'),
(12, 'q', 'q', 'q', '099b3b060154898840f0ebdfb46ec78f', 'q', 'q', '1460458548.jpg', 2, 0, '', '', '2016-04-08 07:18:47', '2016-04-08 08:18:47'),
(13, 'John', 'john', 'john@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'U.K', '044555477', '1460461144.jpg', 1, 5, '15', 'Much experience in maintenance jobs', '2016-04-08 09:53:53', '2016-04-12 12:39:04'),
(14, 'Smith', 'smith', 'smith@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'U.k', '+4455776879', '1460458548.jpg', 2, 0, '', '', '2016-04-08 10:01:20', '2016-04-12 11:55:48');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
