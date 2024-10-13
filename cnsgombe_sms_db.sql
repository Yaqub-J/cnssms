-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2024 at 11:08 AM
-- Server version: 10.6.18-MariaDB-cll-lve
-- PHP Version: 8.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cnsgombe_sms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'elias', '$2y$10$H7obJEdmLzqqcPy7wQWhsOLUvrgzC8f1Y1or2Gxaza5z1PT0tvLy6', 'Elias', 'Abdurrahman');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `grade`, `section`) VALUES
(2, 1, 1),
(8, 2, 1),
(9, 3, 1),
(10, 4, 1),
(13, 1, 2),
(14, 2, 2),
(15, 3, 2),
(16, 4, 2),
(17, 9, 3),
(18, 10, 3),
(19, 1, 3),
(20, 2, 3),
(21, 3, 3),
(22, 4, 3),
(23, 7, 3),
(24, 8, 3),
(25, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `grade` varchar(31) NOT NULL,
  `grade_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`grade_id`, `grade`, `grade_code`) VALUES
(1, 'Semester 1', 'Year 1'),
(2, 'Semester 2', 'Year 1'),
(3, 'Semester 1', 'Year 2'),
(4, 'Semester 2', 'Year 2'),
(7, 'Semester 1', 'Year 3'),
(8, 'Semester 2', 'Year 3'),
(9, 'Semester 1', 'PreYear'),
(10, 'Semester 2', 'PreYear'),
(11, 'Semester 1', 'Year 4'),
(12, 'Semester 2', 'Year 4');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_full_name` varchar(100) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_full_name`, `sender_email`, `message`, `date_time`) VALUES
(1, 'John doe', 'es@gmail.com', 'Hello, world', '2023-02-17 23:39:15'),
(2, 'John doe', 'es@gmail.com', 'Hi', '2023-02-17 23:49:19'),
(3, 'John doe', 'es@gmail.com', 'Hey, ', '2023-02-17 23:49:36'),
(4, 'Yaqub Jae', 'yaqubishaqjae@gmail.com', 'fhjkyt fjtyfgjmugykfxdyfukrlt iufykutj', '2024-06-14 11:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `registrar_office`
--

CREATE TABLE `registrar_office` (
  `r_user_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(31) NOT NULL,
  `lname` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registrar_office`
--

INSERT INTO `registrar_office` (`r_user_id`, `username`, `password`, `fname`, `lname`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(1, 'james', '$2y$10$cr29bwOONuD2IxXsbTgH0.PU9CpeMv7dsVC81Y2K5tMXHLZI3ITjC', 'Yaqub', 'Jae', 'West Virginia', 843583, '2022-10-04', '+12328324092', 'diploma', 'Male', 'james@j.com', '2022-10-23 01:03:25'),
(8, 'Tahirundk', '$2y$10$qIBkfpS2MbU96R6MOQ72fO9cNNwNzsCCwQvXaFe7nZRZqCr3abzGe', 'Attahiru', 'Adamu', 'Gombe', 2, '1960-01-01', '07060656296', 'B.Tech.,(Applied Microbiology), AMLS, PGDE, PGDPH, MSc. (Medical Microbiology ATBU), Ph.D (in-view)', 'Male', 'attahiruadamu@gmail.com', '2024-07-14 16:57:54');

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_id` int(11) NOT NULL,
  `section` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`section_id`, `section`) VALUES
(1, 'HND Nursing'),
(2, 'ND Nursing'),
(3, 'BMP Midwifery'),
(6, 'Post Basic Nursing'),
(8, 'HND P-Basic Nursing');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `current_year` int(11) NOT NULL,
  `current_semester` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `slogan` varchar(300) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `current_year`, `current_semester`, `school_name`, `slogan`, `about`) VALUES
(1, 2024, 'II', 'Gombe State College of Nursing Sciences', 'Shaping Nursing Professionals', 'Founded with a vision to revolutionize nursing education, the College of Nursing Sciences emerged in its humble beginnings to provide a holistic approach to learning. Motivated by a desire to elevate the standards of Nursing practice, the institution started with a small group of passionate educators.');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL,
  `section` int(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `parent_fname` varchar(127) NOT NULL,
  `parent_lname` varchar(127) NOT NULL,
  `parent_phone_number` varchar(31) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `username`, `password`, `fname`, `lname`, `grade`, `section`, `address`, `gender`, `email_address`, `date_of_birth`, `date_of_joined`, `parent_fname`, `parent_lname`, `parent_phone_number`, `profile_picture`) VALUES
(7, 'Maggie', '$2y$10$Kqf4Pljj3NsLVHSTS0QRz.bh1W4.rWpxTTLYafrVwEbuzbHihuqsC', 'Magdalene', 'Samson', 1, 2, 'Kumo, Akko LGA', 'Female', 'Maggie@gmail.com', '2000-01-01', '2024-08-14 12:49:44', 'Samson', 'Musa', '08029160196', NULL),
(8, 'Aishatu', '$2y$10$quGY4iyWVVv0S0/YhUwPsO3XDFXsuBg/g82QPB68bOcemhP8ZxMVW', 'Aishatu', 'Ibrahim ', 2, 3, 'Near Bubayero MFB, Gombe', 'Female', 'iaishatu233@gmail.com', '2006-04-02', '2024-08-15 12:40:53', 'Rukayya', 'Isa', '08108550365', NULL),
(9, 'Hajiyarifky', '$2y$10$qoThZFXs/.tvYTwDMoqwEOyVa81N9/so1aXiUqE7i3uETSeTw573e', 'Rifkatu', 'Ishaya Bukar', 2, 3, 'Bagadaza near 3rd TRansformer, ', 'Female', 'ishayarifkatu844@gmail.com', '2003-04-15', '2024-08-15 12:55:19', 'Ishaya', 'Bukar', '08086882149', NULL),
(10, 'JJdelight', '$2y$10$fMvwh9iIxTERKz/aaFqKTOFyUqqloPGdcn5IAwoXlk4br.qRtrTBe', 'Joy', 'Bitrus Jaban', 2, 3, 'Sabonlayi, Jessu, Balanga LGA', 'Female', 'joybitrusjaban428@gmail.com', '2002-05-27', '2024-08-15 13:02:19', 'Bitrus', 'Jaban ', '07026406980', NULL),
(11, 'Ramadan', '$2y$10$n2B7O0f2nx4YJS91ihf95e5e711B9yZS0wpSGq5ghQtJ2VKXuUOVa', 'Musa ', 'Isah', 4, 2, 'Near Specialist Hospital, Gombe', 'Male', 'musaisah2991@gmail.com', '1995-02-01', '2024-08-15 13:06:35', 'Barhama', 'Isah', '09160878959', NULL),
(12, 'Lovinaappolos', '$2y$10$xRSKpYQyokRGv3fAtM/7n.0.Od1bgeTg0ni1ULyyqUSdxhP7cZQQm', 'Lovina', 'Appolos ', 2, 3, 'Baganje, near ECWA 3, Billiri', 'Female', 'lovinappolos204@gmail.com', '2004-03-28', '2024-08-15 13:12:52', 'Appolos ', 'Maital ', '08025511681', NULL),
(13, 'Maryam', '$2y$10$y5H.9.6G9NbA7mX5qS/JO.SFf0D1WS5xJAOq.SRtwR7bfXgQ5NJ9G', 'Maryam', 'Abdullahi Lamido', 2, 3, 'Sudaniyya, Shadow Block, Gombe', 'Female', 'maryamabdullahilamido99@gmail.com', '2005-04-24', '2024-08-15 13:17:29', 'Abdullahi', 'Lamido', '08036937752', NULL),
(14, 'Khadija', '$2y$10$TGIQL0QkddaemsgTKN4XWOQe.rt1hIJUdb/IxEyW93xyqXCQitIOS', 'Khadija', 'Musa Yahaya', 2, 3, 'Malam-Inna, near GCDSS, Gombe', 'Female', 'khadijamusayahaya815@gmail.com', '2006-01-06', '2024-08-15 13:21:53', 'Musa', 'Yahaya', '08036278083', NULL),
(15, 'Dahirudeba', '$2y$10$IlObNdA3K.xYy2bjuaFR3OJgD/M62Y3kYJhyQ9cDhKZ6sA4fLI.iu', 'Dahiru', 'Muhammad Deba', 4, 2, 'Checheniya behind Tike, Jekadaf', 'Male', 'dahirumuhammaddeba2004@gmail.com', '2004-12-12', '2024-08-15 13:27:08', 'Muhammad', 'Abubakar Deba', '08038189865', NULL),
(16, 'Usman', '$2y$10$KWvgqEQs71qiCPfo/jHG8.pONvhVUo/6fr220HXj1g2/BArkFhNjK', 'Khadija', 'Zakari ', 2, 3, 'Ung. Brazil, Gidan Mamman Birki', 'Female', 'khadijazakari221@gmail.com', '2003-09-01', '2024-08-15 13:36:56', 'Hauwa', 'Zakari', '08024355784', NULL),
(17, 'Ladysmart', '$2y$10$1Iv6KIqf03b6BvqBsWDni.leloR3zsakdFT.KpbK.yxMQFXkki6H6', 'Keren-happuch', 'Adamu', 2, 3, 'Bagadaza near 3rd TRansformer, ', 'Female', 'adamukeren200@gmail.com', '1996-09-05', '2024-08-15 13:40:36', 'Adamu ', 'Tiri', '08033621230', NULL),
(18, 'Hafsat', '$2y$10$8jQH3jaTCAJWtA/z3jvRfeE54Qjz7.dlz8gVDVFyfynnYlAixoSk2', 'Hafsat', 'Adamu', 2, 3, 'Goldcost 1, Billiri, Billiri LG', 'Female', 'hafsatadamu1048@gmail.com', '2007-07-01', '2024-08-15 13:49:52', 'Zulaihat', 'Nasir Tugga', '08088009934', NULL),
(19, 'DarlingG', '$2y$10$Xl/hH6EQv1M2D3K5cFTVuuTsY6DrizrgWFKZnJ1SS3YvKXKJiVHIy', 'Gloria', 'Bello', 2, 3, 'Bagadaza near 3rd TRansformer, ', 'Female', 'gloriabello2310@gmail.com', '2003-04-10', '2024-08-15 13:52:23', 'Bello', 'K. Sokule', '08135723083', NULL),
(20, 'Terenge', '$2y$10$viUabWbc.PQECzxlPxQ8S.hvmLSMW8ZwxST256NyOSLbJ0ChseQkq', 'Terenge', 'Luka ', 2, 3, 'Tunfure Labour Qtrs, Gombe', 'Female', 'terengeluka@gmail.com', '2004-06-26', '2024-08-15 14:25:02', 'Patience', 'Luka', '07050810122', NULL),
(21, 'Dayyiba', '$2y$10$wmCAE7yK.0zBjd0n8IEWnutuFv992krvYd2dwc0JTC3LQG7GcqZkm', 'Dayyiba', 'Dayyabu Muhammad', 2, 3, 'Near Gombe Academy, Byepass, Go', 'Female', 'dayyabudayyiba@gmail.com', '2004-04-19', '2024-08-15 14:28:43', 'Dayyabu', 'Muhammad', '07031880064', NULL),
(22, 'Saadatu', '$2y$10$.nfnG4VM9ZMWRqkh07VWAect479xDR7KB/N08rlDCHDT0QolXmAwi', 'Sa\'adatu', 'Iliyasu ', 2, 3, 'Near Gadan Dahiru Deba, Pantami', 'Female', 'iliyasusaadatu8@gmail.com', '1990-10-01', '2024-08-15 14:43:03', 'Muhammad', 'Modibbo', '08032075416', NULL),
(23, 'Fatimatukur', '$2y$10$efswgqWjFS.K3P0NQk6wOefqTDycfZTHEaKs55lUk3toUVOQ3t6ze', 'Fatima', 'Muhammad Tukur', 2, 3, 'Jekadafari Near Govt House, Gom', 'Female', 'fatimamuhammadtukur6339@gmail.com', '2002-05-27', '2024-08-15 14:59:40', 'Muhammad', 'Tukur', '08069356028', NULL),
(24, 'Husnah', '$2y$10$LI8zVbz0Q1prH/ImB4T3eOW/.lmu6xZY3Nmqrb/eDMZ4K3kfCasb.', 'Asma\'u', 'Rabiu Ibrahim', 3, 3, 'Jekadafari Near Specialist Hosp', 'Female', 'asmaurabiuibrahim9@gmail.com', '2005-03-25', '2024-08-16 09:20:36', 'Rabiu', 'Ibrahim', '08032728228', NULL),
(25, 'Nabeela', '$2y$10$1FRJbdYz/UjRWD8GHgNfheZ8m6aei2.xaQGWLSPjBmvqyA3X0Lmvi', 'Husaina', 'M. Bose', 3, 3, 'Investment qtrs, Tunfure', 'Female', 'husainambose@gmail.com', '2004-02-01', '2024-08-16 09:25:29', 'Muhammad', 'Bose', '09066823366', NULL),
(26, 'Najnat', '$2y$10$44MPBGSZ2xkn1GA.e.2N8Ok5f0iefJbdvP4VhC4YDlJuRI50qKg5e', 'Naja\'atu', 'Isah Amin', 3, 3, 'Fed Low Cost, near Metro Clinic', 'Female', 'najaatuisahaminu19@gmail.com', '2003-04-01', '2024-08-16 09:33:55', 'Isah', 'Aminu', '08036089224', NULL),
(27, 'Nanah', '$2y$10$I/ewb0eXOM./apcSpxHUCOfHvhnDvzOQxGcPfAVtrMWyv/z3kqqEy', 'Khadija', 'Shehu Atiku', 3, 3, 'New GRA near Gulma Guest Inn, G', 'Female', 'midwifekhady@gmail.com', '2005-03-27', '2024-08-16 09:36:18', 'Shehu', 'Atiku', '08064738808', NULL),
(28, 'yaqubjae', '$2y$10$mJYI7L1TVe7ZTNQA1aMebOAAIaedHD0E.XacyUvMzCOPlANbWfanS', 'Yaqub', 'Ja\'e', 1, 1, 'No, 9B, Tafida road, Kadaure, K', 'Male', 'yaqubishaqjae@gmail.com', '2001-07-30', '2024-08-17 10:51:23', 'Yaqub', 'Ja\'e', '07087681616', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_score`
--

CREATE TABLE `student_score` (
  `id` int(11) NOT NULL,
  `semester` varchar(100) NOT NULL,
  `year` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `results` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_score`
--

INSERT INTO `student_score` (`id`, `semester`, `year`, `student_id`, `teacher_id`, `subject_id`, `results`) VALUES
(1, 'II', 2021, 1, 1, 1, '10 15,15 20,10 10,10 20,30 35'),
(2, 'II', 2023, 1, 1, 4, '15 20,4 5'),
(3, 'I', 2022, 1, 1, 5, '10 20,50 50');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject` varchar(31) NOT NULL,
  `subject_code` varchar(31) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject`, `subject_code`, `grade`) VALUES
(1, 'English and Communication Skill', 'GNS 102', 1),
(2, 'Citizenship Education', 'GNS 111', 1),
(3, 'Foundation/Emergency Care I', 'NUR 111', 1),
(4, 'Human Anatomy I', 'NUS 113', 1),
(5, 'Human Physiology I', 'NUS 114', 1),
(6, 'Social & Behavioural Sciences (', 'NUS 115', 1),
(7, 'Intro to ICT/Nursing Informatic', 'NUS 116', 1),
(8, 'Medical Microbiology', 'NUS 117', 1),
(9, 'Applied Chemistry', 'NUS 118', 1),
(10, 'Applied Physics', 'NUS 119', 1),
(11, 'Introduction to Entrepreneurshi', 'EED 126', 2),
(12, 'Foundations of Nursing II', 'NUR 121', 2),
(13, 'Primary Health Care I', 'NUR 122', 2),
(14, 'Medical-Surgical Nursing I', 'NUR 123', 2),
(15, 'Nursing Ethics and Jurisprudenc', 'NUR 124', 2),
(16, 'Reproductive Health I', 'NUR 125', 2),
(17, 'Human Anatomy II', 'NUS 121', 2),
(18, 'Human Physiology II', 'NUS 122', 2),
(19, 'Behavioural Science (Psychology', 'NUS 123', 2),
(20, 'Human Nutrition', 'NUS 124', 2),
(21, 'Pharmacology 1', 'NUS 125', 2),
(22, 'Communication in English II', 'GNS 211', 3),
(23, 'Foundation of Nursing III', 'NUR 211', 3),
(24, 'Primary Health Care II', 'NUR 212', 2),
(25, 'Medical Surgical Nursing II', 'NUR 213', 2),
(26, 'Dietetics', 'NUR 214', 3),
(27, 'Research Methodology I', 'NUS 214', 3),
(28, 'Reproductive Health I', 'NUR 2114', 3),
(29, 'Biostatistics', 'NUS 215', 3),
(30, 'Hospital Based Nursing Practice', 'NUR 215', 3),
(31, 'Human Anatomy III', 'NUS 211', 3),
(32, 'Human Physiology III', 'NUS 212', 3),
(33, 'Pharmacology II', 'NUS 213', 3),
(34, 'Practice of Entrepreneurship', 'EED 216', 4),
(35, 'Politics and Governance in Nurs', 'GNS 222', 4),
(36, 'Foundations of Nursing IV', 'NUR 221', 4),
(37, 'Medico Surgical Nursing III', 'NUR 222', 4),
(38, 'Reproductive Health II', 'NUR 223', 4),
(39, 'Mental/ Psychiatric Nursing', 'NUR 224', 4),
(40, 'Research Methodology II', 'NUR 225', 4),
(41, 'Seminar in Nursing', 'NUR 226', 4),
(42, 'Client Care Study', 'NUR 227', 4),
(43, 'Community Based Practice', 'NUR 228', 4),
(44, 'Hospital Based Practice', 'NUR 229', 4),
(45, 'Community Health Nursing I', 'NUR 230', 4),
(46, 'Human Anatomy IV', 'NUS 221', 4),
(47, 'Human Physiology IV', 'NUS 222', 4),
(48, 'General Laboratory Technique', 'GLT 311', 7),
(49, 'Communication in English III', 'GNS 311', 7),
(50, 'Medico Surgical Nursing IV', 'NUR 310', 7),
(51, 'Emergency and Disaster Nursing', 'NUR 311', 7),
(52, 'Reproductive Health III', 'NUR 312', 7),
(53, 'Child Health II', 'NUR 313', 7),
(54, 'Management and Teaching in Nurs', 'NUS 313', 7),
(55, 'Ethical and Legal issues in Nur', 'NUR 314', 7),
(56, 'Client Case/Care study', 'NUR 316', 7),
(57, 'Research Project writing ', 'NUR 317', 7),
(58, 'Hospital Based Clinical Practic', 'NUR 318', 7),
(59, 'Community Based Clinical Practi', 'NUR 319', 7),
(60, 'Community Health Nursing II', 'NUR 320', 7),
(61, 'Quality Improvement in Health C', 'NUR 321', 7),
(62, 'Medical Sociology', 'NUS 311', 7),
(63, 'Pharmacology III', 'NUS 312', 7),
(64, 'Communication in English IV', 'GNS 312', 4),
(65, 'Medical Surgical Nursing V', 'NUR 320', 8),
(66, 'Health Economics', 'NUR 322', 8),
(67, 'Adolescence, older people and p', 'NUR 323', 8),
(68, 'Health Education', 'NUR 324', 8),
(69, 'Principles of Management and Te', 'NUR 325', 8),
(70, 'School Health Programme', 'NUR 326', 8),
(71, 'Seminar Presentation ', 'NUR 327', 8),
(72, 'Research Project Writing ', 'NUR 328', 8),
(73, 'Hospital Based Experience', 'NUR 329', 8),
(74, 'Community Based Clinical Experi', 'NUR 330', 8),
(75, 'Home Health Care Nursing', 'NUR 331', 8),
(76, 'Entrepreneurship in Nursing.', 'NUS 320', 8),
(77, 'Public Health Nursing I', 'NUR 411', 11),
(78, 'Food Microbiology and Hygiene', 'NUR 412', 11),
(79, 'Maternal and Child Health', 'NUR 413', 11),
(80, 'Applied Anatomy and Physiology ', 'NUR 414', 11),
(81, 'Fundamentals of Midwifery Pract', 'NUR 415', 11),
(82, 'Normal Midwifery', 'NUR 416', 11),
(83, 'Infant', 'NUR 417', 11),
(84, 'Pharmacology in Midwifery', 'NUR 418', 11),
(85, 'Sociology of the Family', 'NUR 419', 11),
(86, 'Entrepreneurship Development', 'NUR 420', 11),
(87, 'Research Project Writing', 'NUR 421', 11),
(88, 'Research Project I Writing and ', 'NUR 402', 12),
(89, 'Hospital Based Posting', 'NUR 420', 12),
(90, 'Public Health Nursing II', 'NUR 421', 12),
(91, 'Complicated Midwifery', 'NUR 422', 12),
(92, 'Child Health II', 'NUR 423', 12),
(93, 'Community Midwifery', 'NUR 424', 12),
(94, 'Family Planning', 'NUR 425', 12),
(95, 'Seminar Presentation', 'NUR 426', 12),
(96, 'Expectant Family Care', 'NUR 427', 12),
(97, 'PHN Programme Project', 'NUR 428', 12),
(98, 'Midwifery Programme Project', 'NUS 429', 12),
(99, 'Hospital Based Posting', 'NUR 429', 12),
(100, 'NBTE Project (NMCN Project to b', 'NUR 430', 12),
(101, 'Foundations of Nursing', 'BMP 110', 1),
(102, 'Anatomy & Physiology I', 'BMP 111', 1),
(103, 'Applied Physics', 'BMP 112', 1),
(104, 'Applied Chemistry', 'BMP 113', 1),
(105, 'Behavioural Sciences I (Psychol', 'BMP 114', 1),
(106, 'Use of English', 'BMP 115', 1),
(107, 'Microbiology', 'BMP 116', 1),
(108, 'Primary Health Care I', 'BMP 117', 1),
(109, 'Nutrition', 'BMP 118', 1),
(110, 'Hospital Based Midwifery Clinic', 'BMP 119', 1),
(111, 'Foundations of Nursing II', 'BMP 120', 2),
(112, 'Anatomy & Physiology II', 'BMP 121', 2),
(113, 'Behavioural Sciences II (Sociol', 'BMP 122', 2),
(114, 'Intro to ICT/Nursing Informatic', 'BMP 123', 2),
(115, 'Pharmacology I', 'BMP 124', 2),
(116, 'Medical-Surgical I', 'BMP 125', 2),
(117, 'Primary Health Care II', 'BMP 126', 2),
(118, 'Seminar in Clinical Practice', 'BMP 127', 2),
(119, 'Community Based Midwifery Pract', 'BMP 128', 2),
(120, 'Applied Anatomy & Physiology', 'BMP 210', 3),
(121, 'Fundamentals of Midwifery Pract', 'BMP 211', 3),
(122, 'Normal Midwifery', 'BMP 212', 3),
(123, 'Pharmacology II', 'BMP 213', 3),
(124, 'Infant I', 'BMP 214', 3),
(125, 'Community Midwifery', 'BMP 215', 3),
(126, 'Medical-Surgical Nursing II', 'BMP 216', 3),
(127, 'Seminar in Community Midwifery ', 'BMP 217', 3),
(128, 'Hospital Based Midwifery Practi', 'BMP 218', 3),
(129, 'Infant II', 'BMP 220', 4),
(130, 'Complicated Midwifery I', 'BMP 221', 4),
(131, 'Child Health', 'BMP 222', 4),
(132, 'Mental Health Nursing', 'BMP 223', 4),
(133, 'Family Planning', 'BMP 224', 4),
(134, 'Research Methods & Statistics', 'BMP 225', 4),
(135, 'Seminar in Community Midwifery ', 'BMP 226', 4),
(136, 'Community Based Midwifery Pract', 'BMP 227', 4),
(137, 'Reproductive Health I', 'BMP 310', 7),
(138, 'Complicated Midwifery II', 'BMP 311', 7),
(139, 'Principles of Management & Teac', 'BMP 312', 7),
(140, 'Seminar in Midwifery Practice I', 'BMP 313', 7),
(141, 'Research Project', 'BMP 314', 7),
(142, 'Hospital Based Clinical Practic', 'BMP 315', 7),
(143, 'Community Based Midwifery Pract', 'BMP 316', 7),
(144, 'Reproductive Health II', 'BMP 320', 8),
(145, 'Expectant Family Care Project', 'BMP 321', 8),
(146, 'Seminar in Midwifery Practice I', 'BMP 322', 8),
(147, 'Hospital Based Midwifery Practi', 'BMP 324', 8),
(148, 'Community Based Clinical Practi', 'BMP 334', 8);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `class` varchar(31) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL,
  `subjects` varchar(31) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(127) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `password`, `class`, `fname`, `lname`, `subjects`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(11, 'Nasir', '$2y$10$IhJLxfXCx37tTGK17hjGS.vLm9x1UUywWVAPAXQISOY7ijF1XZ1tq', '91013', 'Nasir', 'Ishaq', '7', 'Gombe State College of Nursing ', 3, '1970-08-17', '08022544425', 'RN, RNT, BSc.', 'Male', 'nasihaq@gmaail.com', '2024-08-11 19:52:19'),
(12, 'Maimuna', '$2y$10$9qvpjLnFzc2VtcLR2eEru.75OVxP7PRZJsi69uGoAN6oV4Qf/rIai', '281920212223', 'Maimuna', 'Umar', '67', 'Gombe State College of Nursing ', 3, '2000-01-01', '08028153094', 'RN, RM, RMT, PGD, BNSC', 'Female', 'mmumar@gmaail.com', '2024-08-11 19:56:56'),
(13, 'James', '$2y$10$eY1kDU8fgPG8KDK7HZ8UVeGgRvMZESnRQbn/EgBf5J9x3MbsBdzuK', '10', 'James', 'Maital', '7', 'Gombe State College of Nursing ', 4, '1972-05-15', '07069584268', 'BSc. FCNA, FRCN', 'Male', 'jamesmaital@gmail.com', '2024-08-11 20:01:05'),
(14, 'Abubakar', '$2y$10$XPsG9nYDp0m2quRr/ZY00ekVCGmwMwHjhzCU7I04lg0iZFsn3VU7a', '2819', 'Abubakar', 'Umar', '67', 'Gombe State College of Nursing ', 5, '1975-10-07', '08037791398', 'BLS, MLS, CLN', 'Male', 'abubakarumar@gmail.com', '2024-08-11 20:05:18'),
(15, 'Bojude', '$2y$10$iKN1dHLyUH8vx43s0uATsOU8P3bGP7UEIQtvRXG14iV8Z5YkHDODm', '8910212225', 'Mohammed', 'Musa', '67', 'Gombe State College of Nursing ', 6, '1968-03-21', '08027521806', 'RN, BNSC, MSC', 'Male', 'mohdmusabojude@gmail.com', '2024-08-11 20:09:34'),
(16, 'Tahirundk', '$2y$10$7gEDF4QSirfgHkMf5OXGEOom1EYqEK3c0oDZVcbZhye721sgaFIvu', '10151925', 'Attahiru', 'Adamu', '67', 'No. 3 off Danfodio street, behi', 31359, '1976-02-19', '08029160196', 'B.TECH., MSc., PGDE, PGDPH, AMLS, (PhD IN-VIEW)', 'Male', 'tahirundk@yahoo.com', '2024-08-11 20:12:58'),
(17, 'Tiponas', '$2y$10$ykH3NPBZ.pX0O4olVkX/fO/PK4hDaxY6iePobQdP/Bw39bBH3Fs0q', '289101314151625', 'Tiponas', 'Omale', '3121415', 'Gombe State College of Nursing ', 8, '1972-07-10', '08104849519', 'BNSC, MNSC', 'Female', 'tiponasomale@gmail.com', '2024-08-11 21:50:22'),
(18, 'Suwaiba', '$2y$10$mZvxxjPUAqKXUfRf.gY8Dun9XvmqoGc.pMDYaMaYL2AkpZ7re1Uwu', '25', 'Suwaiba', 'Mohammed Waziri', '16', 'Gombe State College of Nursing ', 29182, '1978-05-30', '07037887384', 'ME', 'Female', 'suwaibamwaziri@gmail.com', '2024-08-12 19:47:38'),
(19, 'Sirjah', '$2y$10$KfDgsK/gVVOos7vPEzhrI..ymxz3CYpL/ZPx46050NM1in2glM.nW', '13', 'Dahiru', 'Adamu Sirjah', '12', 'Gombe State College of Nursing ', 29199, '1972-07-01', '07038670878', 'NE', 'Male', 'dahiruadamusirjah@gmail.com', '2024-08-12 19:54:28'),
(20, 'Abdullahi', '$2y$10$kGz04penPaFy9LS5l3dg9uMBea6hjFMEepk0o4CkQc59qMPlWl6k.', '141625', 'Abdullahi', 'Mohammed Aliyu', '14', 'Gombe State College of Nursing ', 38023, '1990-01-01', '08033076661', 'BNSc.', 'Male', 'abdullahimaliyu@gmail.com', '2024-08-12 19:59:41'),
(21, 'Maryam', '$2y$10$qa5wJh.WnBoEMGgVS7C15.1DIdZETUiAhlCIrcjtATzY9fsHySGW2', '1625', 'Maryam', 'Umar', '13', 'Gombe State College of Nursing ', 33705, '1988-02-01', '08035321282', 'BNSc.', 'Male', 'maryamumar@gmail.com', '2024-08-12 20:03:34'),
(22, 'Baraka', '$2y$10$RxLsoiomD0aX67sE6XNpReiNAN/YNqu/xBQ8EI5g5O4dyV0dKC8YO', '23', 'Baraka', 'Muhammad', '16', 'Midwifery Department, Gombe Sta', 32869, '1987-06-04', '08039299613', 'DNE', 'Female', 'barakamuhammad@gmail.com', '2024-08-12 20:07:55'),
(23, 'Dandaso', '$2y$10$vhn/aFEEVodxoPV9ZSneY.4iJWXodWBKdQBj8hP45b3Ev49xcQ0ke', '10', 'Dandaso', 'Lynda', '13', 'Public Health Nursing Departmen', 18648, '1975-01-04', '08034367760', 'BNSc.', 'Female', 'favourd@gmail.com', '2024-08-12 20:16:08'),
(24, 'Briska', '$2y$10$rRVfHcDtKtrDr6nszVqHdeVRRLtRvRD2cI.Kl9edZS4ynwNQr6iZK', '1314202225', 'Briska', 'Zakayo', '3', 'Department of Nursing, Gombe St', 29189, '1978-11-11', '07034518696', 'RN, RM, BNSc.', 'Female', 'briskazakayo@gmail.com', '2024-08-12 20:22:12'),
(25, 'Pire', '$2y$10$ZNkNHYTdfLsxC7wT8.S19.AFdDO8xeZkkvXxeYdqHeEFy5foF6bwq', '13141516171825', 'Pire', 'Maidambe Pius', '451718', 'Dept. of General Studies, Gombe', 53144, '1985-10-08', '07033994339', 'BSc. Anatomy', 'Male', 'piremaidambepius@gmail.com', '2024-08-13 08:56:27'),
(26, 'Ummukhulsum', '$2y$10$l8h.BdjluAIXh/mSemyOZuHvtZF1RFKbobJoxHxfph9jkI.sYd85K', '171925', 'Ummukhulsum', 'Abubakar', '26', 'Dept. of General Studies, Gombe', 53143, '1990-12-14', '08086147683', 'BSc. Sociology', 'Female', 'ummukhulsuma@gmail.com', '2024-08-13 09:00:04'),
(27, 'Felix', '$2y$10$Ca00ygvqAjfKGVlqohFNLuwSDpTQmbMjFvZFIBi8JP6yWYxceMOgq', '25', 'Felix', 'Mandoli', '10', 'Dept. of General Studies, Gombe', 53145, '1990-04-23', '08063294340', 'BSc. Physics', 'Male', 'felixmandoli@gmail.com', '2024-08-13 09:02:52'),
(28, 'Abdulmudallib', '$2y$10$n2ce4hR.mQM5k2l/nipVtuveChRE3i64lercx/ujHOOjE0.td9hPa', '17', 'Abdulmudallib', 'Ibrahim Saleh', '10', 'Dept. of General Studies, Gombe', 53438, '1988-10-10', '08082701889', 'BSc. Physics', 'Male', 'abdulmudallib@gmail.com', '2024-08-13 09:05:46'),
(29, 'Margaret', '$2y$10$r/ypFLS8nUtr5jqup7g4Qe/PNhY/HVRIQMBkdGCrXzzl4Rf5gQRyO', '92324', 'Margaret', 'Emmanuel', '511', 'Department of Midwifery, Gombe ', 29201, '1981-11-27', '08035813623', 'BNSc.', 'Female', 'margaretem@gmail.com', '2024-08-13 09:10:43'),
(30, 'Mary', '$2y$10$AuugA9EdEwgCxYydcP3LguJdJ7HdL090LiDKdOSQ2mKn1zd7sIvGO', '10', 'Mary', 'Umaru', '16', 'Department of Midwifery, Gombe ', 19380, '1971-10-01', '08024472794', 'BNSc.', 'Female', 'maryumaru@gmail.com', '2024-08-13 09:13:39'),
(31, 'Samson', '$2y$10$l2GzCATYI5LCm5KG37MIq.HHFefY6p1xZ.0iJmp.mWphkwO8LTtSy', '1725', 'Samson', 'Muna Maryah ', '1220', 'Department of Nursing, Gombe St', 21681, '1980-01-01', '08032211709', 'BNSc.', 'Male', 'smuna@gmail.com', '2024-08-13 09:17:41'),
(32, 'Esther', '$2y$10$OZoHUVrMa8oKHQbKchlvzOb9RC1lMuE.LM2GT57xzOeOyIUGW2iaK', '2223', 'Esther', 'Iliya Cham', '16', 'Department of Midwifery, Gombe ', 55780, '1973-05-12', '08036365507', 'DME', 'Female', 'estherilya@gmail.com', '2024-08-13 09:21:41'),
(33, 'Eleanor', '$2y$10$g0.YZIo5X23qq0dmwCH2Su2cIy3NRWR0TvnGmrPcYs1.3bFd2eFsq', '10', 'Eleanor ', 'Mustapha', '15', 'Department of Nursing, Gombe St', 33395, '1984-02-11', '07032142628', '\'RN,RPN,RNE', 'Female', 'eleanorm@gmail.com', '2024-08-13 09:25:21'),
(34, 'Zahra\'u', '$2y$10$IuBbI1ZsTEv5am06rgnEauFRmz6ljyzI1./r5M79Y1Na.5ePdHXKW', '10', 'Zahra\'u', 'Sani Kawuwa', '14', 'Department of Nursing, Gombe St', 34719, '1990-01-31', '08054981630', 'RN, BNSc.', 'Female', 'zahraukawuwa@gmail.com', '2024-08-13 09:30:29'),
(35, 'Patrick', '$2y$10$cmg5gQWPviKc0lQWM9gSvuEqCBcmy5XZZeiz01FTPMKJYL3wEd92i', '16', 'Patrick', 'Yila Shaibu', '14', 'Department of Nursing, Gombe St', 36794, '1988-03-06', '08036240645', 'RN, RM, BNSc.', 'Male', 'patricks@gmail.com', '2024-08-13 09:33:37'),
(36, 'Jonathan', '$2y$10$bw7QB64yiW.RX8KAZma2cenOXt.RM0Wpmc4LMNBAedkgc2SJeO7ze', '25', 'Jonathan', 'Nason Bula', '45', 'Dept. of General Studies, Gombe', 38998, '1993-07-17', '08131573837', 'NE', 'Male', 'jnbula@gmail.com', '2024-08-13 09:36:50'),
(37, 'Tiphonas', '$2y$10$K.gWmwHQoi36PDHlMj9nROqzIQkPg7Qt88TUFot56r9Z87jfiECXW', '102225', 'Tiphonas', 'Moses Omale', '14', 'Department of Nursing, Gombe St', 22529, '1972-07-10', '08104849519', 'BNSC, MNSC', 'Female', 'tiphonasomale@gmail.com', '2024-08-13 09:43:55'),
(38, 'Rabi', '$2y$10$lynsd0Qo7Ocx.mNcFevf/.KuYVSf7XRpTbOsmM4ITQeGt5V7PmGBO', '22', 'Rabi', 'Haruna Muhammad', '18', 'Department of Midwifery, Gombe ', 32878, '1989-08-21', '08062843314', 'DNE', 'Female', 'rabihmuhd@gmail.com', '2024-08-13 09:47:25'),
(39, 'Danjin67', '$2y$10$4kkjJ9PVnSVIZ6MDPWm.HOv0gpuZB5NHxH9BsgEfB5iQsVPEbuRqW', '2', 'Mela', 'Danjin', '577290134', 'Dept. of General Studies/PHN, G', 24159, '1969-01-01', '08063583988', 'BSc., MSc, Ph.D', 'Male', 'meladanjin@gmail.com', '2024-08-13 09:52:44'),
(40, 'Zainab', '$2y$10$xN4tS4lcluLtKvJ1jDTGyugIaxbuXufx5MPwlSOAQSq4cSI5cWh.u', '141617', 'Zainab', 'Usman Isa', '312', 'Department of Nursing/GNS, Gomb', 38323, '1985-02-10', '09064589948', 'RN, BNSc.', 'Female', 'zainabuisa@gmail.com', '2024-08-13 09:58:45'),
(41, 'Rahila', '$2y$10$tWf2GRzV7wChfbyKQON45u/NINQ2ctPqkUka8giRid4SaUNXTA8p2', '192124', 'Rahila', 'S. Madaki', '5', 'Department of Midwifery, Gombe ', 29186, '1988-01-01', '08027999033', 'BNSc.', 'Female', 'rahilasmadaki@gmail.com', '2024-08-13 10:01:49'),
(42, 'Lekke', '$2y$10$UiZU1KZdYRsJ/K36nxDBXeK1m62efm2VI7UghowmegE2VIiS5JTQO', '141622', 'Lekke', 'Mohammed Martins', '14', 'Department of Nursing, Gombe St', 18594, '1970-06-13', '08027325132', 'RN, RNE', 'Male', 'lekkemm@gmail.com', '2024-08-13 10:05:01'),
(43, 'Nelda', '$2y$10$d/MYNkKEriERjzbP2NbN7OSiT5/62uuVF9ygHSuuca5FvoM0jLUGO', '17192123', 'Nelda', 'Risku Madziga', '16', 'Department of Midwifery, Gombe ', 18708, '1967-09-26', '07030753005', 'DNE', 'Female', 'neldarmadziga@gmail.com', '2024-08-13 10:08:19'),
(44, 'Abubakar M', '$2y$10$YJPQkvsCGNUeNoVz1eo9JuZy0us7AnN444pkSUlHvAaETCd9jUQ62', '161725', 'Abubakar ', 'Musa', '9', 'Dept. of General Studies, Gombe', 24177, '1968-02-28', '08034335900', 'B.TECH., MSc.', 'Male', 'abubakarmusa@gmail.com', '2024-08-13 10:11:55'),
(45, 'Lami', '$2y$10$GgcEMJpqruX.p3JdkI/vmuvsgk9NijgIO109y9bKkf4x/jBMlOXCe', '10', 'Lami', 'Caleb Ubale', '15', 'Department of Midwifery, Gombe ', 14248, '1971-10-14', '07032964530', 'MSc MPH, Ph.D', 'Female', 'estherubale@gmail.com', '2024-08-13 10:15:11'),
(46, 'Daniel', '$2y$10$V8TzzpFDdNlyXlKp9LMf3.5ECvbEf3xQB2X8hH4m5902dTvEZLYT2', '214', 'Daniel', 'Ishaku', '513', 'Dept. of General Studies, Gombe', 38323, '1984-01-05', '08135561304', 'RN, RME', 'Male', 'danielishaku@gmail.com', '2024-08-13 10:18:30'),
(47, 'Abubakarsadiq', '$2y$10$GGv38XTW.Tqz88JwFWSvQOMu7S.0nVbkMkKEDS3E0q4.5wp510aXK', '13', 'Abubakar', 'Mohammad Sadiq', '14', 'Department of Nursing, Gombe St', 38321, '1990-01-16', '08035361308', 'RN, RNE', 'Male', 'abubakarsadiq@gmail.com', '2024-08-13 16:09:30'),
(48, 'Victoria', '$2y$10$H7S8RWP/SKyP9rjtAMMh8OHwT92zzBjPrkYaD0Cip644cBtOALvIi', '2142025', 'Victoria', 'J. Banas', '15', 'Department of Nursing, Gombe St', 23132, '1970-10-09', '08039749035', 'RN, RNE, RME', 'Female', 'victoriajb@gmail.com', '2024-08-13 16:13:30'),
(49, 'Rukaiya', '$2y$10$r28lZmkXW.g7oxujJfIDnesTwh8o5Dlqsq16Tvlgc9gLvxrLaKqG.', '2224', 'Rukaiya', 'Adamu Modibbo', '5', 'Department of Midwifery, Gombe ', 32864, '1987-06-12', '08039628622', 'DNE', 'Female', 'rukaiyamodibbo@gmail.com', '2024-08-13 16:17:29'),
(50, 'Jummai', '$2y$10$8azMQJ2trpyJB4xfafcf8ufRErM13wYrDNzgasTaky7AYccrauzua', '22', 'Jummai', 'Gideon Goje', '15', 'Department of Midwifery, Gombe ', 27579, '1974-04-11', '08125002268', 'BNSc.', 'Female', 'jummaiggoje@gmail.com', '2024-08-13 16:20:45'),
(51, 'Williams', '$2y$10$uyeQTPo9sSU8ezkDzmOc7eTucXhYH3yS0a6GY7/MQ0FTF5wJy0Opy', '9171925', 'Williams', 'W. Langa', '45', 'Dept. of General Studies, Gombe', 38306, '1987-08-28', '08035360299', 'NE', 'Male', 'williamswlanga@gmail.com', '2024-08-13 16:25:25'),
(52, 'Rifkatu', '$2y$10$6koBBYIbOhuiIPRo7dMpQ.WE2wLleFWv4xZZ7Jv4EB0.N5yps6q/e', '289', 'Rifkatu', 'Dauda Samaila', '12345678', 'Department of Nursing, CNS Gomb', 21126, '1968-05-15', '08032111901', 'RN, RM, RME, NE, BNSc, MNSc., FWAPCNM, (Ph.D. Nursing in-view)', 'Female', 'daudarifkatu101@gmail.com, rifkatudaudasamaila@yahoo.com', '2024-08-13 16:29:25'),
(53, 'Alamas', '$2y$10$wONCdqROs2Iq9Lzxw/nFFeJ9gPDuCafIQONCVL4Ldcc08mGsBGqgW', '131415162125', 'Alamas', 'Musa Ngale', '21', 'Department of Nursing, Gombe St', 32809, '1984-03-16', '08064034620', 'RN, RNE', 'Male', 'alamasngale@gmail.com', '2024-08-13 16:33:30'),
(54, 'Ishaku', '$2y$10$eJJ6hRXT3DXlbkhfuOiAWOw/z6lG.frzIAbmBsi0pyoUKxE8iwM6W', '92225', 'Ishaku ', 'I. Aliyu', '219', 'Dept. of General Studies, Gombe', 35294, '1976-10-03', '08162156580', 'BSc, Psychology', 'Male', 'ishakuialiyu@gmail.com', '2024-08-13 16:37:36'),
(55, 'Lanipi', '$2y$10$A5Kjvi3S424SIyU2W5G7yuVqG3TSX.z5cjOMghFglRBvmjqE9TTu.', '825', 'Jonathan', 'YUSUFU Lanipi', '5', 'Department of Public Health Nur', 23753, '1969-02-21', '07030406921', 'MPH', 'Male', 'joesufly@gmail.com', '2024-08-13 16:42:31'),
(56, 'Lugard', '$2y$10$6rqYqa2seSrfLuJ2SDFV1OCaYIaFOOpZN/03Fxsu.vA2ucDBilsMy', '214151925', 'Lugard', 'Lukson', '312', 'Department of Nursing, Gombe St', 38339, '1989-09-20', '09020007127', 'RN, RNE', 'Male', 'luksonlugard@gmail.com', '2024-08-13 16:47:47'),
(57, 'Badiatu', '$2y$10$ltd6chSCON4LPoUv0RE8e.6RIZm2yA7hkqFCuGiqyZlXroSofhgtW', '141619', 'Badiatu', 'Babayo Yakubu', '15', 'Department of Nursing, Gombe St', 41344, '1990-01-01', '08127661167', 'BNSc.', 'Female', 'badiatubabayo@gmail.com', '2024-08-13 16:51:42'),
(58, 'Aishamb', '$2y$10$wjpywEppjPOvPJenlNps3edoVJ4PcXpinDxgC40tzJBGFKuopNmN2', '29', 'Aisha', 'Muhammad Bello', '8', 'Dept. of General Studies, Gombe', 27081, '1983-12-17', '07032134772', 'B.TECH., MSc.', 'Female', 'aishabello461@gmail.com', '2024-08-13 16:56:40'),
(59, 'Aishatu', '$2y$10$dU5lJPgWx/Qvu7OQUy.Uie7oDeQ5C3YBBPSD3u.xFAblft33Jvgu6', '101622', 'Aishatu', 'Adamu', '1694', 'Department of Midwifery, Gombe ', 32877, '1989-08-09', '08036605325', 'DNE', 'Female', 'aishaadamu@gmail.com', '2024-08-13 19:26:13'),
(60, 'Lamis', '$2y$10$PF3sYI0iFXrFm8EVKWyu9e6weRRm6O.oeWAqzoOaP6oNreNOchG26', '1925', 'Lamis', 'Gwani', '685', 'Dept. of General Studies, Gombe', 24172, '1961-01-08', '08036463221', 'BSc., MSc,', 'Female', 'lamisgwani@gmail.com', '2024-08-13 20:13:40'),
(61, 'Hauwa', '$2y$10$mltICnIKf6Nm9ZxwbLct2.6Vjb.T54QLaCUHZnRmtaQ/7SlqS4vP6', '13151725', 'Hauwa', 'Abdulazeez', '1223', 'Department of Nursing, Gombe St', 35402, '1990-01-01', '0706666490', 'BNSc.', 'Female', 'hauwaabdulazeez@gmail.com', '2024-08-14 05:04:02'),
(62, 'Pauline', '$2y$10$nQbLHWFEZY7XvG.QK4UaIe3osczEsEVfUZhFplzsclunHHvoF7IzK', '1024', 'Pauline', 'J. S. Doka', '5455', 'Provost, Gombe State College of', 1, '1964-08-31', '08063661590', 'RN,RM,RNT,BNSC, MPH, Ph.D., MN SC.', 'Female', 'paulinedoka@gmail.com', '2024-08-14 09:56:12'),
(63, 'Reg', '$2y$10$f9yWNrO6DQThJ.IcNfJi5O5LC2FGoGo6z0AZw3ajwnXS.xBx.V9u.', '10', 'Isah', 'Abdulmumini', '54', 'Registrar, Gombe State College ', 2, '1970-01-01', '08142431502', 'BSc., MSc,', 'Male', 'registrarcnsgombe01@gmail.com', '2024-08-14 10:03:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `registrar_office`
--
ALTER TABLE `registrar_office`
  ADD PRIMARY KEY (`r_user_id`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`section_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student_score`
--
ALTER TABLE `student_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `registrar_office`
--
ALTER TABLE `registrar_office`
  MODIFY `r_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `section`
--
ALTER TABLE `section`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `student_score`
--
ALTER TABLE `student_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
