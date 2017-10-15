-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2017 at 07:37 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizzles`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_id` int(11) NOT NULL,
  `q_title` varchar(255) NOT NULL,
  `q_desc` varchar(255) NOT NULL,
  `q_time` int(11) NOT NULL,
  `q_course` varchar(255) NOT NULL,
  `q_type` int(11) NOT NULL,
  `q_name` varchar(255) NOT NULL,
  `a1` varchar(255) NOT NULL,
  `a2` varchar(255) NOT NULL,
  `a3` varchar(255) NOT NULL,
  `a4` varchar(255) NOT NULL,
  `a_corr` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_id`, `q_title`, `q_desc`, `q_time`, `q_course`, `q_type`, `q_name`, `a1`, `a2`, `a3`, `a4`, `a_corr`) VALUES
(1, 'quiz1', 'testing', 10, 'AP', 1, '.42568840', '.42568960', '.42569040', '.42569200', '.42569360', '.42569520'),
(2, 'quiz2', 'testing2', 10, 'OS', 2, '.43158664', '.43158784', '.43158864', '0', '0', '.43159024'),
(3, 'quiz1', 'testing4', 20, 'CN', 1, 'how you doin?', 'a', 'b', 'c', 'd', 'd'),
(4, 'quiz2', 'see', 10, 'CN', 3, '2+2?', '0', '0', '0', '0', '4'),
(5, 'quiz1', 'sadfs', 10, 'SE', 3, 'a+b', '0', '0', '0', '0', 'c'),
(6, 'quiz1', 'sada', 10, 'SE', 3, '1+2?', '0', '0', '0', '0', '3'),
(7, 'quiz1', 'ass', 12, 'SE', 3, '1+1?', '0', '0', '0', '0', '2'),
(8, 'quiz1', 'snsn', 10, 'SE', 3, 'are you alive?', '0', '0', '0', '0', 'Yes'),
(9, 'quizkfn', 'ncd', 10, 'kc', 1, 'who r u?', 'a', 'b', 'c', 'd', 'a'),
(10, 'qqqq', 'ddd', 10, 'cccc', 1, 'hkfdh', 'dnk', 'fnk', 'cnk', 'cnk', 'cnk'),
(11, 'quiza', 'as', 10, 'CN', 1, 'nkcdds', 'nckd', 'ksnadnd', 'sdaa', 'a', 'a'),
(12, 'aaa', 'dnk', 100000, 'ssssss', 1, 'zzz', 'aa', 'ii', 'qq', 'gg', 'gg'),
(13, 'qanda', 'andaq', 5, 'latest', 1, 'no', 'naa', 'nooo', 'naaaa', 'n', 'n'),
(14, 'qanda', 'andaq', 5, 'latest', 2, 'success', 't', 'f', '0', '0', 't'),
(15, 'qanda', 'andaq', 5, 'latest', 3, '10+10', '0', '0', '0', '0', '20'),
(16, 'quiz4', 'python coding', 10, 'AP', 2, 'Is zain going to mess up?', 'True', 'False', '0', '0', 'False');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `s_id` int(11) NOT NULL,
  `s_uname` varchar(255) NOT NULL,
  `s_paswd` varchar(255) NOT NULL,
  `s_marks` int(11) NOT NULL,
  `q_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`s_id`, `s_uname`, `s_paswd`, `s_marks`, `q_id`) VALUES
(26, 'zain', '123', 1, 0),
(25, 'z', 'a', 1, 0),
(24, 'az', 'z', 0, 0),
(23, 'zain', 'zain', 0, 0),
(22, 'ahsan', '12345', 0, 0),
(21, 'ali', '123', 0, 0),
(20, 'a', '123', 0, 0),
(19, 'zainy', '12345', 0, 0),
(18, '', '', 0, 0),
(17, 'zain', '1', 0, 0),
(16, '', '', 0, 0),
(15, '', '', 0, 0),
(14, '', '', 0, 0),
(27, 'zain', '123', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `t_id` int(11) NOT NULL,
  `t_uname` varchar(255) NOT NULL,
  `t_paswd` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`t_id`, `t_uname`, `t_paswd`) VALUES
(1, 'shumayl', '123'),
(2, 's', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
