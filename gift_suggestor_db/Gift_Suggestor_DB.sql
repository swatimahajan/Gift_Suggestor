-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 23, 2015 at 11:00 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Gift_Suggestor_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add recipient', 7, 'add_recipient'),
(20, 'Can change recipient', 7, 'change_recipient'),
(21, 'Can delete recipient', 7, 'delete_recipient'),
(22, 'Can add age_ group', 8, 'add_age_group'),
(23, 'Can change age_ group', 8, 'change_age_group'),
(24, 'Can delete age_ group', 8, 'delete_age_group'),
(25, 'Can add occassion', 9, 'add_occassion'),
(26, 'Can change occassion', 9, 'change_occassion'),
(27, 'Can delete occassion', 9, 'delete_occassion');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$qkGth789v78a$KVFsWMgdSTZwjmwAANNAzsLL4P4wA0S40WbevkdVZA0=', '2015-09-23 16:33:47', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2015-09-23 12:24:13');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-09-23 16:07:40', '9', 'Recipient object', 1, '', 7, 1),
(2, '2015-09-23 16:45:18', '5', 'Occassion object', 1, '', 9, 1),
(3, '2015-09-23 16:45:45', '6', 'Occassion object', 1, '', 9, 1),
(4, '2015-09-23 16:47:16', '10', 'Recipient object', 1, '', 7, 1),
(5, '2015-09-23 16:47:33', '10', 'Recipient object', 3, '', 7, 1),
(6, '2015-09-23 16:49:45', '3', 'Age_Group object', 1, '', 8, 1),
(7, '2015-09-23 16:49:53', '4', 'Age_Group object', 1, '', 8, 1),
(8, '2015-09-23 16:50:08', '4', 'Age_Group object', 3, '', 8, 1),
(9, '2015-09-23 16:50:08', '3', 'Age_Group object', 3, '', 8, 1),
(10, '2015-09-23 16:50:08', '2', 'Age_Group object', 3, '', 8, 1),
(11, '2015-09-23 16:50:08', '1', 'Age_Group object', 3, '', 8, 1),
(12, '2015-09-23 16:50:18', '5', 'Age_Group object', 1, '', 8, 1),
(13, '2015-09-23 16:50:51', '5', 'Age_Group object', 3, '', 8, 1),
(14, '2015-09-23 16:51:05', '6', 'Age_Group object', 1, '', 8, 1),
(15, '2015-09-23 16:51:13', '7', 'Age_Group object', 1, '', 8, 1),
(16, '2015-09-23 16:51:21', '8', 'Age_Group object', 1, '', 8, 1),
(17, '2015-09-23 16:51:27', '9', 'Age_Group object', 1, '', 8, 1),
(18, '2015-09-23 16:51:49', '10', 'Age_Group object', 1, '', 8, 1),
(19, '2015-09-23 16:51:55', '11', 'Age_Group object', 1, '', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'recipient', 'suggestor', 'recipient'),
(8, 'age_ group', 'suggestor', 'age_group'),
(9, 'occassion', 'suggestor', 'occassion');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-09-22 16:27:20'),
(2, 'auth', '0001_initial', '2015-09-22 16:27:24'),
(3, 'admin', '0001_initial', '2015-09-22 16:27:25'),
(4, 'sessions', '0001_initial', '2015-09-22 16:27:25'),
(5, 'suggestor', '0001_initial', '2015-09-23 12:16:33'),
(6, 'suggestor', '0002_auto_20150923_1229', '2015-09-23 12:29:23'),
(7, 'suggestor', '0003_auto_20150923_1648', '2015-09-23 16:49:25');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('oxkzwnnx0pfb0f69yxl725bgrcbn6gaa', 'M2M1MmU2MDBiOTc0NmJhM2FjNzY3ZDcyMGIyZjAwYmEyNDAyZmFlZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0NmM0YTVlODkwODYxNDQyMDczYTExMmZmMjQ4OWU3Y2IwMDFhZjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-10-07 16:33:47'),
('rw92z7h4zra7inw10idymj4ambcggfum', 'M2M1MmU2MDBiOTc0NmJhM2FjNzY3ZDcyMGIyZjAwYmEyNDAyZmFlZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImE0NmM0YTVlODkwODYxNDQyMDczYTExMmZmMjQ4OWU3Y2IwMDFhZjQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-10-07 12:25:01');

-- --------------------------------------------------------

--
-- Table structure for table `suggestor_age_group`
--

CREATE TABLE IF NOT EXISTS `suggestor_age_group` (
  `age_id` int(11) NOT NULL AUTO_INCREMENT,
  `age_interval` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`age_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `suggestor_age_group`
--

INSERT INTO `suggestor_age_group` (`age_id`, `age_interval`) VALUES
(1, '10-20'),
(2, '20-30'),
(3, '30-40'),
(5, '40-50'),
(6, '50-60'),
(7, '60-70');

-- --------------------------------------------------------

--
-- Table structure for table `suggestor_occassion`
--

CREATE TABLE IF NOT EXISTS `suggestor_occassion` (
  `occ_id` int(11) NOT NULL AUTO_INCREMENT,
  `occassion_name` varchar(20) NOT NULL,
  PRIMARY KEY (`occ_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `suggestor_occassion`
--

INSERT INTO `suggestor_occassion` (`occ_id`, `occassion_name`) VALUES
(1, 'Birthday'),
(2, 'Anniversary'),
(3, 'Diwali'),
(4, 'New Year'),
(5, 'Eid'),
(6, 'Valentine''s Day');

-- --------------------------------------------------------

--
-- Table structure for table `suggestor_recipient`
--

CREATE TABLE IF NOT EXISTS `suggestor_recipient` (
  `rp_id` int(11) NOT NULL AUTO_INCREMENT,
  `relation` varchar(20) NOT NULL,
  PRIMARY KEY (`rp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `suggestor_recipient`
--

INSERT INTO `suggestor_recipient` (`rp_id`, `relation`) VALUES
(1, 'Brother'),
(2, 'Sister'),
(3, 'Mother'),
(4, 'Father'),
(5, 'GirlFriend'),
(6, 'Boyfriend'),
(7, 'Husband'),
(8, 'Wife'),
(9, 'Friend');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
