-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 28, 2025 at 12:48 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plaksha_careers`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('open','closed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibilities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `requirements` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `how_to_apply` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobs_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `slug`, `status`, `position`, `location`, `department`, `employment_type`, `description`, `responsibilities`, `requirements`, `how_to_apply`, `created_at`, `updated_at`) VALUES
(1, 'Job Position 1', 'job-position-1', 'open', 'Data Scientist', 'Hyderabad, Telangana', 'Engineering', 'Full-time', 'This is a detailed description for Job Position 1. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 1\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 3 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 1\'', '2025-04-18 04:22:19', '2025-05-28 04:22:19'),
(2, 'Job Position 2', 'job-position-2', 'open', 'HR Specialist', 'Hyderabad, Telangana', 'Administration', 'Full-time', 'This is a detailed description for Job Position 2. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 2\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 4 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 2\'', '2025-05-15 04:22:19', '2025-05-28 04:22:19'),
(3, 'Job Position 3', 'job-position-3', 'open', 'Administrative Assistant', 'Bangalore, Karnataka', 'Administration', 'Internship', 'This is a detailed description for Job Position 3. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 3\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 5 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-05-20 04:22:19', '2025-05-28 04:22:19'),
(4, 'Job Position 4', 'job-position-4', 'open', 'DevOps Engineer', 'Mumbai, Maharashtra', 'Research', 'Part-time', 'This is a detailed description for Job Position 4. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 4\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 6 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 4\'', '2025-04-24 04:22:19', '2025-05-28 04:22:19'),
(5, 'Job Position 5', 'job-position-5', 'closed', 'Data Scientist', 'Mumbai, Maharashtra', 'Design', 'Internship', 'This is a detailed description for Job Position 5. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 5\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 7 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 5\'', '2025-04-16 04:22:19', '2025-05-28 04:22:19'),
(6, 'Job Position 6', 'job-position-6', 'open', 'Data Scientist', 'Remote', 'Finance', 'Part-time', 'This is a detailed description for Job Position 6. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 6\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 8 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-05-26 04:22:19', '2025-05-28 04:22:19'),
(7, 'Job Position 7', 'job-position-7', 'open', 'HR Specialist', 'Bangalore, Karnataka', 'Engineering', 'Full-time', 'This is a detailed description for Job Position 7. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 7\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 9 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 7\'', '2025-04-08 04:22:19', '2025-05-28 04:22:19'),
(8, 'Job Position 8', 'job-position-8', 'open', 'UX Designer', 'Bangalore, Karnataka', 'Design', 'Part-time', 'This is a detailed description for Job Position 8. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 8\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 10 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 8\'', '2025-05-26 04:22:19', '2025-05-28 04:22:19'),
(9, 'Job Position 9', 'job-position-9', 'open', 'DevOps Engineer', 'Mumbai, Maharashtra', 'Product', 'Part-time', 'This is a detailed description for Job Position 9. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 9\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 11 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-05-24 04:22:19', '2025-05-28 04:22:19'),
(10, 'Job Position 10', 'job-position-10', 'closed', 'DevOps Engineer', 'Mumbai, Maharashtra', 'Design', 'Internship', 'This is a detailed description for Job Position 10. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 10\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 12 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 10\'', '2025-05-04 04:22:19', '2025-05-28 04:22:19'),
(11, 'Job Position 11', 'job-position-11', 'open', 'Research Associate', 'Remote', 'Finance', 'Full-time', 'This is a detailed description for Job Position 11. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 11\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 13 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 11\'', '2025-03-29 04:22:19', '2025-05-28 04:22:19'),
(12, 'Job Position 12', 'job-position-12', 'closed', 'Software Engineer', 'Hyderabad, Telangana', 'Engineering', 'Full-time', 'This is a detailed description for Job Position 12. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 12\r\n- Responsibility 2 including task management\r\n- Responsibility 3 for team collaboration\r\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\r\n- 14 years of professional experience\r\n- Strong communication skills\r\n- Ability to work in team environment', NULL, '2025-05-27 04:22:19', '2025-05-28 05:13:53'),
(13, 'Job Position 13', 'job-position-13', 'open', 'Data Scientist', 'Mumbai, Maharashtra', 'HR', 'Full-time', 'This is a detailed description for Job Position 13. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 13\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 15 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 13\'', '2025-04-24 04:22:19', '2025-05-28 04:22:19'),
(14, 'Job Position 14', 'job-position-14', 'open', 'Data Scientist', 'Bangalore, Karnataka', 'Engineering', 'Internship', 'This is a detailed description for Job Position 14. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 14\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 16 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 14\'', '2025-05-26 04:22:19', '2025-05-28 04:22:19'),
(15, 'Job Position 15', 'job-position-15', 'closed', 'Data Scientist', 'Hyderabad, Telangana', 'Design', 'Contract', 'This is a detailed description for Job Position 15. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 15\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 17 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-05-21 04:22:19', '2025-05-28 04:22:19'),
(16, 'Job Position 16', 'job-position-16', 'open', 'UX Designer', 'Mohali, Punjab', 'Engineering', 'Contract', 'This is a detailed description for Job Position 16. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 16\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 18 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 16\'', '2025-03-29 04:22:19', '2025-05-28 04:22:19'),
(17, 'Job Position 17', 'job-position-17', 'open', 'Research Associate', 'Hyderabad, Telangana', 'Research', 'Contract', 'This is a detailed description for Job Position 17. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 17\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 19 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 17\'', '2025-04-20 04:22:19', '2025-05-28 04:22:19'),
(18, 'Job Position 18', 'job-position-18', 'open', 'Administrative Assistant', 'Remote', 'Research', 'Internship', 'This is a detailed description for Job Position 18. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 18\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 20 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-03-29 04:22:19', '2025-05-28 04:22:19'),
(19, 'Job Position 19', 'job-position-19', 'open', 'Software Engineer', 'Mumbai, Maharashtra', 'Product', 'Internship', 'This is a detailed description for Job Position 19. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 19\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 21 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 19\'', '2025-04-06 04:22:19', '2025-05-28 04:22:19'),
(20, 'Job Position 20', 'job-position-20', 'closed', 'Research Associate', 'Hyderabad, Telangana', 'Design', 'Internship', 'This is a detailed description for Job Position 20. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 20\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 22 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 20\'', '2025-05-13 04:22:19', '2025-05-28 04:22:19'),
(21, 'Job Position 21', 'job-position-21', 'open', 'Data Scientist', 'Mumbai, Maharashtra', 'Design', 'Full-time', 'This is a detailed description for Job Position 21. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 21\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 23 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-04-18 04:22:19', '2025-05-28 04:22:19'),
(22, 'Job Position 22', 'job-position-22', 'open', 'HR Specialist', 'Bangalore, Karnataka', 'Finance', 'Part-time', 'This is a detailed description for Job Position 22. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 22\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 24 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 22\'', '2025-03-30 04:22:19', '2025-05-28 04:22:19'),
(23, 'Job Position 23', 'job-position-23', 'open', 'HR Specialist', 'Remote', 'Research', 'Contract', 'This is a detailed description for Job Position 23. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 23\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 25 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 23\'', '2025-04-16 04:22:19', '2025-05-28 04:22:19'),
(24, 'Job Position 24', 'job-position-24', 'open', 'Data Scientist', 'Mohali, Punjab', 'HR', 'Part-time', 'This is a detailed description for Job Position 24. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 24\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 26 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-04-01 04:22:19', '2025-05-28 04:22:19'),
(25, 'Job Position 25', 'job-position-25', 'closed', 'Software Engineer', 'Mohali, Punjab', 'Design', 'Internship', 'This is a detailed description for Job Position 25. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 25\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 27 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 25\'', '2025-04-26 04:22:19', '2025-05-28 04:22:19'),
(26, 'Job Position 26', 'job-position-26', 'open', 'HR Specialist', 'Remote', 'Administration', 'Full-time', 'This is a detailed description for Job Position 26. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 26\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 28 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 26\'', '2025-05-27 04:22:19', '2025-05-28 04:22:19'),
(27, 'Job Position 27', 'job-position-27', 'open', 'UX Designer', 'Bangalore, Karnataka', 'Finance', 'Internship', 'This is a detailed description for Job Position 27. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 27\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 29 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-04-11 04:22:19', '2025-05-28 04:22:19'),
(28, 'Job Position 28', 'job-position-28', 'open', 'Product Manager', 'Hyderabad, Telangana', 'HR', 'Contract', 'This is a detailed description for Job Position 28. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 28\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 30 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 28\'', '2025-05-24 04:22:19', '2025-05-28 04:22:19'),
(29, 'Job Position 29', 'job-position-29', 'open', 'Research Associate', 'Delhi', 'Research', 'Full-time', 'This is a detailed description for Job Position 29. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 29\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 31 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 29\'', '2025-05-27 04:22:19', '2025-05-28 04:22:19'),
(30, 'Job Position 30', 'job-position-30', 'closed', 'Data Scientist', 'Hyderabad, Telangana', 'Finance', 'Internship', 'This is a detailed description for Job Position 30. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 30\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 32 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-04-04 04:22:19', '2025-05-28 04:22:19'),
(31, 'Job Position 31', 'job-position-31', 'open', 'Data Scientist', 'Hyderabad, Telangana', 'Product', 'Full-time', 'This is a detailed description for Job Position 31. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 31\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 33 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 31\'', '2025-05-15 04:22:19', '2025-05-28 04:22:19'),
(32, 'Job Position 32', 'job-position-32', 'open', 'Administrative Assistant', 'Remote', 'Engineering', 'Internship', 'This is a detailed description for Job Position 32. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 32\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 34 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 32\'', '2025-04-10 04:22:19', '2025-05-28 04:22:19'),
(33, 'Job Position 33', 'job-position-33', 'open', 'Research Associate', 'Mumbai, Maharashtra', 'Product', 'Part-time', 'This is a detailed description for Job Position 33. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 33\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 35 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-05-19 04:22:19', '2025-05-28 04:22:19'),
(34, 'Job Position 34', 'job-position-34', 'open', 'Product Manager', 'Remote', 'Design', 'Part-time', 'This is a detailed description for Job Position 34. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 34\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 36 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 34\'', '2025-05-17 04:22:19', '2025-05-28 04:22:19'),
(35, 'Job Position 35', 'job-position-35', 'closed', 'Administrative Assistant', 'Hyderabad, Telangana', 'Administration', 'Part-time', 'This is a detailed description for Job Position 35. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 35\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 37 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 35\'', '2025-05-27 04:22:19', '2025-05-28 04:22:19'),
(36, 'Job Position 36', 'job-position-36', 'open', 'Administrative Assistant', 'Hyderabad, Telangana', 'Product', 'Contract', 'This is a detailed description for Job Position 36. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 36\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 38 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-04-24 04:22:19', '2025-05-28 04:22:19'),
(37, 'Job Position 37', 'job-position-37', 'open', 'UX Designer', 'Bangalore, Karnataka', 'Research', 'Contract', 'This is a detailed description for Job Position 37. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 37\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 39 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 37\'', '2025-05-19 04:22:19', '2025-05-28 04:22:19'),
(38, 'Job Position 38', 'job-position-38', 'open', 'Data Scientist', 'Mumbai, Maharashtra', 'Administration', 'Part-time', 'This is a detailed description for Job Position 38. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 38\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 40 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 38\'', '2025-04-26 04:22:19', '2025-05-28 04:22:19'),
(39, 'Job Position 39', 'job-position-39', 'open', 'Data Scientist', 'Remote', 'Engineering', 'Full-time', 'This is a detailed description for Job Position 39. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 39\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 41 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-05-12 04:22:19', '2025-05-28 04:22:19'),
(40, 'Job Position 40', 'job-position-40', 'closed', 'Product Manager', 'Mumbai, Maharashtra', 'Product', 'Internship', 'This is a detailed description for Job Position 40. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 40\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 42 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 40\'', '2025-04-08 04:22:19', '2025-05-28 04:22:19'),
(41, 'Job Position 41', 'job-position-41', 'open', 'Software Engineer', 'Hyderabad, Telangana', 'Administration', 'Internship', 'This is a detailed description for Job Position 41. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 41\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 43 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 41\'', '2025-05-16 04:22:19', '2025-05-28 04:22:19'),
(42, 'Job Position 42', 'job-position-42', 'open', 'Research Associate', 'Remote', 'Engineering', 'Part-time', 'This is a detailed description for Job Position 42. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 42\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 44 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-04-03 04:22:19', '2025-05-28 04:22:19'),
(43, 'Job Position 43', 'job-position-43', 'open', 'Administrative Assistant', 'Mohali, Punjab', 'Administration', 'Part-time', 'This is a detailed description for Job Position 43. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 43\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 45 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 43\'', '2025-04-13 04:22:19', '2025-05-28 04:22:19'),
(44, 'Job Position 44', 'job-position-44', 'open', 'UX Designer', 'Delhi', 'Product', 'Internship', 'This is a detailed description for Job Position 44. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 44\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 46 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 44\'', '2025-04-16 04:22:19', '2025-05-28 04:22:19'),
(45, 'Job Position 45', 'job-position-45', 'closed', 'HR Specialist', 'Delhi', 'HR', 'Full-time', 'This is a detailed description for Job Position 45. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 45\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 47 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-05-03 04:22:19', '2025-05-28 04:22:19'),
(46, 'Job Position 46', 'job-position-46', 'open', 'Data Scientist', 'Delhi', 'Finance', 'Contract', 'This is a detailed description for Job Position 46. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 46\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 48 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 46\'', '2025-03-30 04:22:19', '2025-05-28 04:22:19'),
(47, 'Job Position 47', 'job-position-47', 'open', 'Software Engineer', 'Mumbai, Maharashtra', 'Finance', 'Contract', 'This is a detailed description for Job Position 47. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 47\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 49 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 47\'', '2025-05-17 04:22:19', '2025-05-28 04:22:19'),
(48, 'Job Position 48', 'job-position-48', 'open', 'UX Designer', 'Remote', 'HR', 'Full-time', 'This is a detailed description for Job Position 48. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 48\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 50 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', NULL, '2025-05-16 04:22:19', '2025-05-28 04:22:19'),
(49, 'Job Position 49', 'job-position-49', 'open', 'Research Associate', 'Remote', 'Product', 'Internship', 'This is a detailed description for Job Position 49. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 49\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 51 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 49\'', '2025-05-06 04:22:19', '2025-05-28 04:22:19'),
(50, 'Job Position 50', 'job-position-50', 'closed', 'Data Scientist', 'Mumbai, Maharashtra', 'Administration', 'Full-time', 'This is a detailed description for Job Position 50. The role involves working on cutting-edge technologies and collaborating with cross-functional teams.', '- Responsibility 1 for Job Position 50\n- Responsibility 2 including task management\n- Responsibility 3 for team collaboration\n- Additional duties as assigned', '- Bachelor\'s degree in relevant field\n- 52 years of professional experience\n- Strong communication skills\n- Ability to work in team environment', 'Send your resume to careers@plaksha.edu.in with subject \'Application for Job Position 50\'', '2025-04-17 04:22:19', '2025-05-28 04:22:19'),
(51, 'ram66666666666666666666', 'ram66666666666666666666', 'closed', 'Odio quo voluptas au', 'Aliquid officia qui', 'Eiusmod optio fugia', 'Part-time', 'Occaecat eveniet ve', 'Eligendi rem earum i', 'Dolore magni sequi t', 'Officia eu magna mol', '2025-05-28 04:31:18', '2025-05-28 05:10:22'),
(52, 'Quod est similique l2222222222222222222222222', 'quod-est-similique-l2222222222222222222222222', 'closed', 'Eos odit sint sint', 'Sit dolorem aut con', 'Ea enim impedit id', 'Contract', 'Eligendi rerum omnis', 'Quam voluptas nihil', 'Culpa iusto laudanti', 'Ut do ut distinctio', '2025-05-28 04:35:36', '2025-05-28 05:07:03'),
(53, 'Quidem rerum eiusmod', 'quidem-rerum-eiusmod', 'closed', 'Dolores sint enim es', 'Sint laudantium dol', 'Vel sunt suscipit d', 'Contract', 'Quis dolores vitae m', 'Beatae fuga Illo bl', 'Ut laboriosam odit', 'Ex quae delectus te', '2025-05-28 04:41:13', '2025-05-28 04:41:13'),
(56, 'Sit fuga Qui dolor', 'sit-fuga-qui-dolor', 'open', 'Proident qui labori', 'In rerum quia necess', 'Expedita non non con', 'Contract', 'Enim temporibus dolo', 'Et id dolor libero v', 'Quas qui ut maiores', 'Veritatis consequatu', '2025-05-28 05:39:36', '2025-05-28 05:39:36'),
(57, 'Quo eos consequatur', 'quo-eos-consequatur', 'open', 'Aliqua Pariatur Po', 'Aliquid labore qui a', 'In porro magni dolor', 'Contract', 'Dicta enim voluptate', 'Culpa qui reprehende', 'Est omnis quasi temp', 'Qui quidem officiis', '2025-05-28 06:38:31', '2025-05-28 06:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '2025_05_28_060543_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('NdFu3RE5r1mK0DKJH8M5ObuH6lTDYaWeWxEupNz0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTHcwRmxkNUdnNWxZZnRFUmtoeVVSSUJITTlDb2p3TU5jRlo2Mk1adiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1748436383);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Dr. Akeem Stracke MD', 'bridgette05@example.net', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', 'wUC9HnPCWY', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(2, 'Tracy Hane I', 'shanna31@example.net', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', 'V3ARPB5Hi7', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(3, 'Demetris Upton Sr.', 'gdare@example.org', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', 'hmK5UgZHHh', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(4, 'Susana Hamill', 'guillermo94@example.org', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', 'GcsUlqPjPU', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(5, 'Dawn Renner', 'maud14@example.com', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', '2k79vdD0BK', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(6, 'Ms. Katrina Heathcote V', 'rschinner@example.net', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', '6l6A01qKOB', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(7, 'Sylvia McCullough', 'rsauer@example.net', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', 'XQGdnuzOku', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(8, 'Mrs. Freida Kessler', 'pdaugherty@example.com', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', 'WotTT5ttCb', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(9, 'Dr. Loren Zieme PhD', 'rosalind63@example.org', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', 'EsxgFI23sF', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(10, 'Markus Hudson', 'legros.alden@example.net', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', 'AtEThzT88H', '2025-05-28 04:22:19', '2025-05-28 04:22:19'),
(11, 'Test User', 'test@example.com', '2025-05-28 04:22:19', '$2y$12$/GFu6d/1JOSgpukIxxJ19OlDNR.tB6ED5SFN0TWO7uqIKPbePXeF6', 'XzZpMWW5xs', '2025-05-28 04:22:19', '2025-05-28 04:22:19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
