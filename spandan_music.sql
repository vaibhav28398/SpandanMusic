-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 11, 2018 at 09:59 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spandan_music`
--

-- --------------------------------------------------------

--
-- Table structure for table `album_details`
--

CREATE TABLE `album_details` (
  `tp_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `album_art` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album_details`
--

INSERT INTO `album_details` (`tp_id`, `uid`, `album_id`, `album_name`, `album_art`) VALUES
(1, 3, 1, 'Happy', '2015Coldplay_AHeadFullOfDreams271115-1.jpg'),
(2, 3, 2, 'Awesome', 'imaginedragons-0.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `msg_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `sender_id`, `message`, `msg_time`) VALUES
(1, 3, 'kp', '2018-09-26 20:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `queue_details`
--

CREATE TABLE `queue_details` (
  `tp_id` int(11) NOT NULL,
  `queue_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queue_details`
--

INSERT INTO `queue_details` (`tp_id`, `queue_id`, `song_id`) VALUES
(4, 3, 4),
(5, 3, 0),
(6, 3, 10),
(7, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `song_details`
--

CREATE TABLE `song_details` (
  `song_id` int(11) NOT NULL,
  `song_name` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song_details`
--

INSERT INTO `song_details` (`song_id`, `song_name`, `artist`, `genre`, `hits`) VALUES
(2, 'Traceback most recent call last  File hello.py line 1 in module    from mp3tagger import MP3File VER', 'Traceback most recent call last  File hello.py line 1 in module    from mp3tagger import MP3File VER', 'traceback most recent call last  file hello.py line 1 in module    from mp3tagger import mp3file ver', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `uid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `verify_key` varchar(100) NOT NULL,
  `reset_token` varchar(100) DEFAULT NULL,
  `reset_complete` varchar(100) NOT NULL,
  `reg_date` date NOT NULL,
  `last_login` datetime NOT NULL,
  `msg_notification` int(11) NOT NULL DEFAULT '0',
  `has_queue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`uid`, `name`, `email`, `pass`, `verify_key`, `reset_token`, `reset_complete`, `reg_date`, `last_login`, `msg_notification`, `has_queue`) VALUES
(1, 'Ankit Bhadage', 'abhadage@gmail.com', 'e0e289f71a4e7e3de4f09208fa55836a', 'Yes', NULL, 'Yes', '2018-09-25', '2018-09-25 13:41:16', 1, 0),
(2, 'Venkatesh Deore', 'deore.venkatesh@gmail.com', 'e4637652573268f24fd5161422f2e5dc', 'Yes', NULL, 'No', '2018-09-25', '2018-09-25 14:13:17', 1, 0),
(3, 'Vaibhav Raizu', 'vaibhav.raizada.mnnit@gmail.com', '28c771216b8d5d65aa97226ca8629f5a', 'Yes', NULL, 'No', '2018-09-25', '2018-09-29 23:08:58', 0, 0),
(4, 'Shahabaz Khan', 'shaz12cuteboy@gmail.com', 'eabcc33cd4445e424ddfdc1ca7f9a445', 'Yes', NULL, 'No', '2018-09-25', '2018-09-25 00:59:54', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_song_map`
--

CREATE TABLE `user_song_map` (
  `tp_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `custom_name` varchar(100) NOT NULL,
  `album_id` int(11) NOT NULL,
  `is_private` int(11) NOT NULL DEFAULT '0',
  `last_paused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_song_map`
--

INSERT INTO `user_song_map` (`tp_id`, `uid`, `song_id`, `custom_name`, `album_id`, `is_private`, `last_paused`) VALUES
(2, 3, 2, 'Love', 2, 1, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album_details`
--
ALTER TABLE `album_details`
  ADD PRIMARY KEY (`tp_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `queue_details`
--
ALTER TABLE `queue_details`
  ADD PRIMARY KEY (`tp_id`);

--
-- Indexes for table `song_details`
--
ALTER TABLE `song_details`
  ADD PRIMARY KEY (`song_id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `user_song_map`
--
ALTER TABLE `user_song_map`
  ADD PRIMARY KEY (`tp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album_details`
--
ALTER TABLE `album_details`
  MODIFY `tp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `queue_details`
--
ALTER TABLE `queue_details`
  MODIFY `tp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `song_details`
--
ALTER TABLE `song_details`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_song_map`
--
ALTER TABLE `user_song_map`
  MODIFY `tp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
