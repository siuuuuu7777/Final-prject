-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2025 at 07:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(10) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`, `role`) VALUES
('Admin', 'Admin123', 'head'),
('teacher1@gmail.com', '12345', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('684c4a109520e', '684c4a1095fdf'),
('684c4a109b4a6', '684c4a109bd9f'),
('684c4a109e991', '684c4a10a0317'),
('684c4a10a616d', '684c4a10a83e0'),
('684c4a10ab747', '684c4a10abf86'),
('684c4ca514fee', '684c4ca515eca'),
('684c4ca51a196', '684c4ca51ac4e'),
('684c4ca51e652', '684c4ca51ef8b'),
('684c4ca5217e0', '684c4ca522154'),
('684c4ca525369', '684c4ca525b20'),
('684d5764ab365', '684d5764ad7f5'),
('684d5764b3350', '684d5764b3d0e'),
('684d5764b7859', '684d5764b81f1'),
('684d5764bb9fa', '684d5764bcd51'),
('684d5764c00aa', '684d5764c0b17'),
('684d596eb9553', '684d596eba2e5'),
('684d596ebdb05', '684d596ebefa3'),
('684d596ec2463', '684d596ec2c76'),
('684d596ec5256', '684d596ec59ed'),
('684d596ec7d61', '684d596ec82ef');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('684d28f8c02a0', 'Jon ', 'dhrub@gmail.com', 'OS', 'Nt', '2025-06-14', '01:17:04pm');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `right`, `wrong`, `date`) VALUES
('dt@gmail.com', '684c4770eaa69', 6, 5, 3, 2, '2025-06-14 07:37:08'),
('dt@gmail.com', '684c4a4684a6b', 8, 5, 4, 1, '2025-06-14 07:39:55'),
('dh@gmail.com', '684c4a4684a6b', 10, 5, 5, 0, '2025-06-14 07:43:18'),
('dh@gmail.com', '684c4770eaa69', 10, 5, 5, 0, '2025-06-14 07:44:01'),
('nt@gmail.com', '684d579b72b48', 8, 5, 4, 1, '2025-06-14 11:16:06'),
('jt@gmail.com', '684d55a6cbccc', 10, 5, 5, 0, '2025-06-14 11:17:53'),
('jt@gmail.com', '684d579b72b48', 6, 5, 3, 2, '2025-06-14 11:18:24'),
('am@gmail.com', '684d579b72b48', 8, 5, 4, 1, '2025-06-14 11:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('684c4a109520e', 'Queue', '684c4a1095fd2'),
('684c4a109520e', 'Array', '684c4a1095fdd'),
('684c4a109520e', 'Stack', '684c4a1095fdf'),
('684c4a109520e', 'Linked List', '684c4a1095fe1'),
('684c4a109b4a6', 'O(n)', '684c4a109bd98'),
('684c4a109b4a6', 'O(log n)', '684c4a109bd9f'),
('684c4a109b4a6', 'O(n log n)', '684c4a109bda0'),
('684c4a109b4a6', 'O(1)', '684c4a109bda1'),
('684c4a109e991', 'Stack', '684c4a10a030e'),
('684c4a109e991', 'Queue', '684c4a10a0317'),
('684c4a109e991', 'Hash Table ', '684c4a10a0318'),
('684c4a109e991', 'Priority Queue', '684c4a10a0319'),
('684c4a10a616d', 'O(n)', '684c4a10a83e0'),
('684c4a10a616d', 'O(n log n)', '684c4a10a83e8'),
('684c4a10a616d', 'O(log n)', '684c4a10a83e9'),
('684c4a10a616d', 'O(n^)', '684c4a10a83ea'),
('684c4a10ab747', 'Stack ', '684c4a10abf7d'),
('684c4a10ab747', 'Queue', '684c4a10abf84'),
('684c4a10ab747', 'Array', '684c4a10abf85'),
('684c4a10ab747', 'Tree', '684c4a10abf86'),
('684c4ca514fee', 'Round Robin ', '684c4ca515ebc'),
('684c4ca514fee', 'SJF(Shortest Job First )', '684c4ca515ec7'),
('684c4ca514fee', 'Priority Scheduling', '684c4ca515ec9'),
('684c4ca514fee', 'FCFS(First Come First Serve)', '684c4ca515eca'),
('684c4ca51a196', 'Segment', '684c4ca51ac41'),
('684c4ca51a196', 'Blocks ', '684c4ca51ac4b'),
('684c4ca51a196', 'Pages ', '684c4ca51ac4e'),
('684c4ca51a196', 'Frames ', '684c4ca51ac4f'),
('684c4ca51e652', 'Selection of code which accesses shared resources', '684c4ca51ef8b'),
('684c4ca51e652', 'Memory allocation block', '684c4ca51ef95'),
('684c4ca51e652', 'Boost section of OS', '684c4ca51ef97'),
('684c4ca51e652', 'selection of kernel code ', '684c4ca51ef98'),
('684c4ca5217e0', 'Minimize CPU usage ', '684c4ca522146'),
('684c4ca5217e0', 'Maximize waiting time  ', '684c4ca522150'),
('684c4ca5217e0', 'Manage memory', '684c4ca522152'),
('684c4ca5217e0', 'Choose processes for execution', '684c4ca522154'),
('684c4ca525369', 'exec()', '684c4ca525b18'),
('684c4ca525369', 'fork()', '684c4ca525b20'),
('684c4ca525369', 'exit()', '684c4ca525b21'),
('684c4ca525369', 'wait()', '684c4ca525b22'),
('684d5764ab365', 'SELECT', '684d5764ad7f5'),
('684d5764ab365', 'CREATE ', '684d5764ad7fa'),
('684d5764ab365', 'DROP', '684d5764ad7fb'),
('684d5764ab365', 'ALTER', '684d5764ad7fc'),
('684d5764b3350', 'One primary key and multiple foreign keys ', '684d5764b3d0e'),
('684d5764b3350', 'Multiple primary keys', '684d5764b3d12'),
('684d5764b3350', 'No keys ', '684d5764b3d13'),
('684d5764b3350', 'Only one foreign key', '684d5764b3d14'),
('684d5764b7859', '1NF', '684d5764b81eb'),
('684d5764b7859', '2NF', '684d5764b81f1'),
('684d5764b7859', '3NF', '684d5764b81f2'),
('684d5764b7859', 'BCNF', '684d5764b81f3'),
('684d5764bb9fa', 'Atomicty,Consistency,Isolation,Durability', '684d5764bcd51'),
('684d5764bb9fa', 'Atomicty,Consistency,Integrity,Durability', '684d5764bcd56'),
('684d5764bb9fa', 'Accuracy,Consistency,Isolation,Durability', '684d5764bcd57'),
('684d5764bb9fa', 'Atomicty,Control,Isolation,Durability', '684d5764bcd58'),
('684d5764c00aa', 'Inner join ', '684d5764c0b10'),
('684d5764c00aa', 'Left join ', '684d5764c0b15'),
('684d5764c00aa', 'Right join', '684d5764c0b16'),
('684d5764c00aa', 'Full outer join', '684d5764c0b17'),
('684d596eb9553', 'Incremental', '684d596eba2dd'),
('684d596eb9553', 'Linear Sequential', '684d596eba2e5'),
('684d596eb9553', 'Spiral ', '684d596eba2e6'),
('684d596eb9553', 'Agile', '684d596eba2e8'),
('684d596ebdb05', 'Software Requirement Specification ', '684d596ebefa3'),
('684d596ebdb05', 'Software Revision Sheet ', '684d596ebefa8'),
('684d596ebdb05', 'Software Release Clause ', '684d596ebefaa'),
('684d596ebdb05', 'Software Runtime System', '684d596ebefab'),
('684d596ec2463', 'White-Box testing', '684d596ec2c6f'),
('684d596ec2463', 'Unit testing', '684d596ec2c74'),
('684d596ec2463', 'Greay-Box testing', '684d596ec2c75'),
('684d596ec2463', 'Black-Box testing ', '684d596ec2c76'),
('684d596ec5256', 'Interdependence between modules ', '684d596ec59ed'),
('684d596ec5256', 'Binding of data', '684d596ec59f0'),
('684d596ec5256', 'Internal cohesion', '684d596ec59f1'),
('684d596ec5256', 'Code reuse', '684d596ec59f2'),
('684d596ec7d61', 'Class diagram', '684d596ec82ec'),
('684d596ec7d61', 'Use case diagram', '684d596ec82ee'),
('684d596ec7d61', 'Sequence diagram ', '684d596ec82ef'),
('684d596ec7d61', 'Deployment diagram', '684d596ec82f0');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('684c4770eaa69', '684c4a109520e', 'Which data structure uses LIFO(Last in first out) principle ?', 4, 1),
('684c4770eaa69', '684c4a109b4a6', 'The worst-case time complexity for searching in a balanced binary search tree is ?  ', 4, 2),
('684c4770eaa69', '684c4a109e991', 'Which data structure is used in Breadth-first Search ?', 4, 3),
('684c4770eaa69', '684c4a10a616d', 'what is the best case complexity of insertion sort ?', 4, 4),
('684c4770eaa69', '684c4a10ab747', 'which of the following is a non-linear data structure ?', 4, 5),
('684c4a4684a6b', '684c4ca514fee', 'which of the following is a non-preemptive scheduling algorithm ?', 4, 1),
('684c4a4684a6b', '684c4ca51a196', 'In paging each process is divided into fixed size :    ', 4, 2),
('684c4a4684a6b', '684c4ca51e652', 'What is critical section ?', 4, 3),
('684c4a4684a6b', '684c4ca5217e0', 'What is the main goal of a scheduler ?', 4, 4),
('684c4a4684a6b', '684c4ca525369', 'Which system call is used to create a new process ?', 4, 5),
('684d55a6cbccc', '684d5764ab365', 'which of the following  is DML Command ?', 4, 1),
('684d55a6cbccc', '684d5764b3350', 'A table can have :', 4, 2),
('684d55a6cbccc', '684d5764b7859', 'Which normal form removes partial dependency ?', 4, 3),
('684d55a6cbccc', '684d5764bb9fa', 'What does ACID stand in transaction management?', 4, 4),
('684d55a6cbccc', '684d5764c00aa', 'Which join returns all rows when there is a match in either table ?  ', 4, 5),
('684d579b72b48', '684d596eb9553', 'Which model is known as the \"Waterfall model\" ?', 4, 1),
('684d579b72b48', '684d596ebdb05', 'What is SRS in software engineering ?', 4, 2),
('684d579b72b48', '684d596ec2463', 'What type of testing is done without looking at internal code ?', 4, 3),
('684d579b72b48', '684d596ec5256', 'What is coupling in software engineering ?', 4, 4),
('684d579b72b48', '684d596ec7d61', 'which UML diagram shows the interaction between objects ?', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `right`, `wrong`, `total`, `time`, `intro`, `tag`, `date`, `email`) VALUES
('684c4770eaa69', 'Data Structure', 2, 0, 5, 5, '', '#ds01', '2025-06-13 15:44:48', 'teacher1@gmail.com'),
('684c4a4684a6b', 'Operating System ', 2, 0, 5, 5, '', '#os01', '2025-06-13 15:56:54', 'teacher1@gmail.com'),
('684d55a6cbccc', 'Dbms', 2, 0, 5, 5, '', '#db01', '2025-06-14 10:57:42', 'teacher1@gmail.com'),
('684d579b72b48', 'Software Engineering', 2, 0, 5, 5, '', '#se01', '2025-06-14 11:06:03', 'teacher1@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('dt@gmail.com', 14, '2025-06-14 07:39:55'),
('dh@gmail.com', 20, '2025-06-14 07:44:01'),
('nt@gmail.com', 8, '2025-06-14 11:16:06'),
('jt@gmail.com', 16, '2025-06-14 11:18:24'),
('am@gmail.com', 8, '2025-06-14 11:20:40');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Amy', 'F', 'Assam Engineering Institute', 'am@gmail.com', 2233445532, '827ccb0eea8a706c4c34a16891f84e7b'),
('Anirban', 'M', 'Assam Engineering Institute', 'an@gmail.com', 1234567891, 'c37bf859faf392800d739a41fe5af151'),
('Dhruba', 'M', 'Assam Engineering Institute', 'dh@gmail.com', 2233445566, '827ccb0eea8a706c4c34a16891f84e7b'),
('Jyotirmoy ', 'M', 'Assam Engineering Institute', 'jt@gmail.com', 5454545464, '827ccb0eea8a706c4c34a16891f84e7b'),
('Netra', 'M', 'Assam Engineering Institute', 'nt@gmail.com', 2233445588, '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
