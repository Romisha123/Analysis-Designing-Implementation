-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2017 at 12:53 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event`
--

-- --------------------------------------------------------

--
-- Table structure for table `crevent`
--

CREATE TABLE `crevent` (
  `e_id` int(11) NOT NULL,
  `Eventname` varchar(30) DEFAULT NULL,
  `Eventdate` varchar(30) DEFAULT NULL,
  `Eventtime` varchar(30) DEFAULT NULL,
  `Eventlocation` varchar(40) DEFAULT NULL,
  `Eventdescription` text,
  `MinAttendee` varchar(30) DEFAULT NULL,
  `InvitedAttendee` varchar(25) DEFAULT NULL,
  `ThresholdMin` varchar(25) DEFAULT NULL,
  `u_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crevent`
--

INSERT INTO `crevent` (`e_id`, `Eventname`, `Eventdate`, `Eventtime`, `Eventlocation`, `Eventdescription`, `MinAttendee`, `InvitedAttendee`, `ThresholdMin`, `u_id`) VALUES
(8, 'Assignment', '14-04-2017', '2:00pm---3:00pm', 'ktm', 'bla bla..', '45', '20', '10', 11),
(9, 'assignment', '06-04-2017', '1:30pm', 'ktm', 'sffskkfkfffgdfd....', '10', '50', '44', 11),
(10, 'training', '06-04-2017', '1:30pm', 'pkr', 'kapil aacvc udhudfds xchdududs cddkdsjcsd czxkjcx\n', '40', '20', '10', 11),
(11, 'dsjhd', 'ddgf', 'jdhdf', 'dfjdhf', 'jdjh		', 'dhdj', 'sjfh', 'ndcndhf', 11),
(12, 'xcdhxcnc', '14-04-2017', '2:00pm', 'xncbbd', 'xcbb', 'xncb', 'xncb', 'xncb', 11),
(13, 'Birthday Party ', '23-04-2017', '1:30pm---2:00pm', 'Maligau', 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', '20', '10', '50', 13),
(14, 'tyty', '04-04-2017', '---3:00pm---2:30pm', 'ghg', 'jhjhjhh', 'hgggh', 'hgh', 'nhh', 13);

-- --------------------------------------------------------

--
-- Table structure for table `eventlist`
--

CREATE TABLE `eventlist` (
  `list_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `s_fname` varchar(30) NOT NULL,
  `s_lname` varchar(30) NOT NULL,
  `s_email` varchar(30) NOT NULL,
  `s_phone` varchar(30) NOT NULL,
  `r_id` int(11) DEFAULT NULL,
  `r_fname` varchar(30) NOT NULL,
  `r_lname` varchar(30) NOT NULL,
  `r_email` varchar(30) NOT NULL,
  `r_phone` varchar(30) NOT NULL,
  `e_id` int(11) DEFAULT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `edate` varchar(30) DEFAULT NULL,
  `etime` varchar(30) DEFAULT NULL,
  `elocation` varchar(40) DEFAULT NULL,
  `edesc` text,
  `eminatt` varchar(30) DEFAULT NULL,
  `einvitatten` varchar(25) DEFAULT NULL,
  `ethresmin` varchar(25) DEFAULT NULL,
  `stat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `eventlist`
--

INSERT INTO `eventlist` (`list_id`, `s_id`, `s_fname`, `s_lname`, `s_email`, `s_phone`, `r_id`, `r_fname`, `r_lname`, `r_email`, `r_phone`, `e_id`, `ename`, `edate`, `etime`, `elocation`, `edesc`, `eminatt`, `einvitatten`, `ethresmin`, `stat`) VALUES
(1, 1, 'Romisha', 'Thapa', 'romisha@gmail.com', '', 11, 'Rohit', 'Thapa', 'raju@gmail.com', '9812345678', 1, 'asd', '21-03-2017', '1pm', 'pkr', 'fggfhghghhf', 'fhghhgh', 'hghghg', 'hghghg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slots`
--

CREATE TABLE `slots` (
  `slot_id` int(11) NOT NULL,
  `ename` varchar(30) DEFAULT NULL,
  `slot1` varchar(50) DEFAULT NULL,
  `slot2` varchar(50) DEFAULT NULL,
  `slot3` varchar(50) DEFAULT NULL,
  `slot4` varchar(50) DEFAULT NULL,
  `slot5` varchar(50) DEFAULT NULL,
  `status1` int(11) DEFAULT NULL,
  `status2` int(11) DEFAULT NULL,
  `status3` int(11) DEFAULT NULL,
  `status4` int(11) DEFAULT NULL,
  `status5` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slots`
--

INSERT INTO `slots` (`slot_id`, `ename`, `slot1`, `slot2`, `slot3`, `slot4`, `slot5`, `status1`, `status2`, `status3`, `status4`, `status5`, `userid`) VALUES
(4, 'Assignment', '---2:00pm', '1:00pm---1:30pm', '1:30pm', '2:00pm', '3:00pm', 3, 4, 0, 1, 2, 11),
(5, 'nhghg', '2:30pm', '3:00pm', '3:30pm', '3:00pm', '3:00pm', 0, 0, 0, 0, 0, 11),
(6, '', '1:30pm---3:00pm', '', '', '', '', 1, 0, 0, 0, 0, 13);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `AvailableTime` varchar(50) NOT NULL,
  `UnavailableTime` varchar(50) NOT NULL,
  `stat` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `Firstname`, `Lastname`, `Email`, `password`, `Address`, `AvailableTime`, `UnavailableTime`, `stat`) VALUES
(11, 'Romisha', 'Thapa', 'romisha@gmail.com', 'password', 'PKH', 'Monday:1:30pm---2:00pm;', 'Monday:1:30pm---2:00pm;', 0),
(12, 'ffhj', 'dhdh', 'd@gmail.com', 'dfgyf', 'ehefgfhy', 'Tuesday:2:30pm', '---2:30pm;Wednesday:', 0),
(13, 'r', 'r', 'r@gmail.com', 'r', 'r@gmail.com', 'Monday:2:00pm---2:00pm;', 'Tuesday:2:00pm---3:00pm;', 1),
(14, 'r', 'r', 'r@gmail.com', 'r', 'rererer', 'Wednesday:2:00pm---3:00pm;', 'Thurusday:2:30pm---3:00pm;', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crevent`
--
ALTER TABLE `crevent`
  ADD PRIMARY KEY (`e_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `eventlist`
--
ALTER TABLE `eventlist`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `r_id` (`r_id`);

--
-- Indexes for table `slots`
--
ALTER TABLE `slots`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crevent`
--
ALTER TABLE `crevent`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `eventlist`
--
ALTER TABLE `eventlist`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slots`
--
ALTER TABLE `slots`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `crevent`
--
ALTER TABLE `crevent`
  ADD CONSTRAINT `crevent_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`u_id`) ON UPDATE CASCADE;

--
-- Constraints for table `eventlist`
--
ALTER TABLE `eventlist`
  ADD CONSTRAINT `eventlist_ibfk_1` FOREIGN KEY (`r_id`) REFERENCES `user` (`u_id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
