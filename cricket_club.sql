-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2018 at 05:43 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cricket_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `house_no` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `thana` varchar(100) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `post_code` varchar(100) DEFAULT NULL,
  `Player_pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `house_no`, `location`, `street`, `thana`, `district`, `post_code`, `Player_pid`) VALUES
(5, '118/8', 'Shantinagar', 'Estern Plus Road', 'Ramna', 'Dhaka', '3470', NULL),
(6, '118/8', 'Shantinagar', 'Estern Plus Road', 'Ramna', 'Dhaka', '3470', NULL),
(7, '118/8', 'Shantinagar', 'Estern Plus Road', 'Ramna', 'Dhaka', '3470', NULL),
(8, '118/8', 'Shantinagar', 'Estern Plus Road', 'Ramna', 'Dhaka', '3470', NULL),
(9, '120/8', 'Akhaura', 'Devogram', 'Akhaura', 'B-Baria', '32540', NULL),
(10, '118/8', 'Shantinagar', 'Estern Plus Road', 'Ramna', 'Dhaka', '3470', NULL),
(11, '120/8', 'Akhaura', 'Devogram', 'Akhaura', 'B-Baria', '32540', NULL),
(12, '118/8', 'Puran Dhaka', '10th Street', 'Dhaka', 'Dhaka', '1254', NULL),
(13, '120/8', 'Akhaura', 'Bijoy Nagar', 'Akhaura', 'B-Baria', '32540', NULL),
(14, '', 'Puran Dhaka', '', 'Ramna', 'Dhaka', '3470', NULL),
(15, '118/8', 'Puran Dhaka', 'Estern Plus Road', 'Ramna', 'Dhaka', '3470', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `best_performance`
--

CREATE TABLE `best_performance` (
  `club_name` varchar(255) DEFAULT NULL,
  `opponent_club_name` varchar(255) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `m_id` int(11) NOT NULL,
  `runs` int(11) DEFAULT NULL,
  `wickets` int(11) DEFAULT NULL,
  `Player_pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `best_performance`
--

INSERT INTO `best_performance` (`club_name`, `opponent_club_name`, `e_id`, `m_id`, `runs`, `wickets`, `Player_pid`) VALUES
('Abahoni', 'Mohamedan', 1, 1, 57, 5, NULL),
('Mohamedan', 'Abahoni', 2, 2, 12, 4, NULL),
('RRA', 'CMV', 3, 3, 40, 7, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `club`
--

CREATE TABLE `club` (
  `c_id` int(11) NOT NULL,
  `club_name` varchar(255) DEFAULT NULL,
  `date_of_establishment` varchar(100) DEFAULT NULL,
  `president_name` varchar(255) DEFAULT NULL,
  `Player_pid` int(11) DEFAULT NULL,
  `Address_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `club`
--

INSERT INTO `club` (`c_id`, `club_name`, `date_of_establishment`, `president_name`, `Player_pid`, `Address_address_id`) VALUES
(1, 'Abahoni', '10-11-1995', 'Nannu', NULL, NULL),
(2, 'Abahoni', '10-11-1995', 'Nannu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `contract_id` int(11) NOT NULL,
  `club_id` int(11) DEFAULT NULL,
  `club_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `contract_amount` decimal(6,2) DEFAULT NULL,
  `contract_witness_1` varchar(255) DEFAULT NULL,
  `contract_witness_2` varchar(255) DEFAULT NULL,
  `Player_pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`contract_id`, `club_id`, `club_name`, `first_name`, `middle_name`, `last_name`, `player_id`, `start_date`, `end_date`, `contract_amount`, `contract_witness_1`, `contract_witness_2`, `Player_pid`) VALUES
(2, 1, 'Abahoni', 'Mashrafee', 'Bin', 'Mortaza', 10, '10-11-2017', '15-12-2020', '9999.99', 'Tushar', 'Nahid', NULL),
(3, 2, 'Abahoni', 'Mashrafee', 'Bin', 'Mortaza', 10, '10-11-2017', '15-12-2020', '9999.99', 'Pappu', 'Nahid', NULL),
(4, 2, 'Abahoni', 'Mashrafee', 'Bin', 'Mortaza', 10, '10-11-2017', '15-12-2020', '9999.99', 'Pappu', 'Nahid', NULL),
(5, 3, 'Abahoni', 'Mashrafee', 'Bin', 'Mortaza', 10, '10-11-2017', '15-12-2020', '9999.99', 'Tushar', 'Nahid', NULL),
(6, 2, 'Abahoni', 'Mashrafee', 'Bin', 'Mortaza', 10, '10-11-2017', '15-12-2020', '9999.99', 'Pappu', 'Islam', NULL),
(7, 10, 'Abahoni', 'Mashrafee', 'Bin', 'Mortaza', 12, '10-11-2017', '15-12-2020', '9999.99', 'Pappu', 'Islam', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `e_id` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `match_information`
--

CREATE TABLE `match_information` (
  `m_id` int(11) NOT NULL,
  `man_of_the_match` varchar(255) DEFAULT NULL,
  `umpires` varchar(255) DEFAULT NULL,
  `Event_e_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `match_information`
--

INSERT INTO `match_information` (`m_id`, `man_of_the_match`, `umpires`, `Event_e_id`) VALUES
(10, 'Asif', 'Tony', NULL),
(11, 'Zaved', 'Fitchburg', NULL),
(12, 'Hamim', 'Usuf', NULL),
(13, '', '', NULL),
(14, '', '', NULL),
(15, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `match_performance`
--

CREATE TABLE `match_performance` (
  `pid` int(11) NOT NULL,
  `total_wickets` int(11) DEFAULT NULL,
  `total_runs` int(11) DEFAULT NULL,
  `outstanding_performance` varchar(20) DEFAULT NULL,
  `Match_m_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `match_performance`
--

INSERT INTO `match_performance` (`pid`, `total_wickets`, `total_runs`, `outstanding_performance`, `Match_m_id`) VALUES
(1, 5, 45, 'NO', NULL),
(10, 2, 15, 'Yes', NULL),
(12, 3, 99, 'Yes', NULL),
(14, 5, 100, 'Yes', NULL),
(145, 5, 45, 'NO', NULL),
(456, 2, 200, 'Yes', NULL),
(1001, 3, 99, 'Yes', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `match_state`
--

CREATE TABLE `match_state` (
  `m_id` int(11) NOT NULL,
  `v_id` int(11) DEFAULT NULL,
  `date_of_the_match` varchar(100) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `Player_pid` int(11) DEFAULT NULL,
  `Team_t_id` int(11) DEFAULT NULL,
  `Event_e_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `match_state`
--

INSERT INTO `match_state` (`m_id`, `v_id`, `date_of_the_match`, `e_id`, `Player_pid`, `Team_t_id`, `Event_e_id`) VALUES
(1, 1, '10-11-1985', NULL, NULL, NULL, NULL),
(3, 1, '10-11-1985', NULL, NULL, NULL, NULL),
(10, 1, '10-11-1985', NULL, NULL, NULL, NULL),
(14, 1, '10-11-1985', NULL, NULL, NULL, NULL),
(15, 1, '10-11-1985', NULL, NULL, NULL, NULL),
(16, 12, '10-11-1985', 1, NULL, NULL, NULL),
(17, 12, '10-11-1985', 100, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment_schedule`
--

CREATE TABLE `payment_schedule` (
  `serial_number` int(11) NOT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `payment_date` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `Contract_contract_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment_schedule`
--

INSERT INTO `payment_schedule` (`serial_number`, `due_date`, `payment_date`, `amount`, `Contract_contract_id`) VALUES
(1521, '10-11-16', '18-02-17', 1250, NULL),
(1522, '10-12-17', '12-10-18', 1000, NULL),
(14521, '10-11-16', '18-02-17', 1250, NULL),
(14522, '', '12-10-18', 1000, NULL),
(15210, '10-11-16', '18-02-17', 12500, NULL),
(15220, '10-12-17', '12-10-18', 10001, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `Club_c_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `middle_name`, `last_name`, `designation`, `Club_c_id`) VALUES
(1, 'Mr.', 'Hossain', 'Khan', 'Coach', NULL),
(2, 'Mr.', 'Hossain', 'Khan', 'Coach', NULL),
(3, 'Mr.', 'Hossain', 'Khan', 'Coach', NULL),
(4, 'Mr.', 'Hossain', 'Khan', 'Coach', NULL),
(5, 'Mr.', 'Baker', 'Vai', 'Coach', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `pid` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `present_address_id` int(11) DEFAULT NULL,
  `permanent_address_id` int(11) DEFAULT NULL,
  `date_of_birth` varchar(100) DEFAULT NULL,
  `q_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `membership` varchar(100) DEFAULT NULL,
  `signature` varchar(100) DEFAULT NULL,
  `datee` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`pid`, `first_name`, `middle_name`, `last_name`, `father_name`, `mother_name`, `present_address_id`, `permanent_address_id`, `date_of_birth`, `q_id`, `c_id`, `membership`, `signature`, `datee`) VALUES
(9, 'Mashrafee', 'Bin', 'Mortaza', 'Rafikul Islam', 'Nahar Khatun', NULL, NULL, '12-25-1047', NULL, NULL, 'ICCB', 'Tushar Faroque', '15-DEC-2018'),
(10, 'Mashrafee', 'Bin', 'Mortaza', 'Rafikul Islam', 'Nahar Khatun', NULL, NULL, '', NULL, NULL, 'ICCB', 'Tushar Faroque', '15-DEC-2018'),
(11, 'Mashrafee', 'Bin', 'Mortaza', 'Rafikul Islam', 'Nahar Khatun', NULL, NULL, '12-25-1047', NULL, NULL, 'ICCB', 'Mashrafee', '18-DEC-2018'),
(12, 'Mashrafee', 'Bin', 'Mortaza', 'Rafikul Islam', 'Nahar Khatun', NULL, NULL, '12-25-1047', NULL, NULL, 'ICCB', 'Mashrafee', '18-DEC-2018'),
(13, 'Mashrafee', 'Bin', 'Mortaza', 'Rafikul Islam', 'Nahar Khatun', NULL, NULL, '12-25-1047', NULL, NULL, 'ICCB', 'Mashrafee', '18-DEC-2018'),
(14, 'Mashrafee', 'Bin', 'Mortaza', 'Rafikul Islam', 'Nahar Khatun', NULL, NULL, '12-25-1047', NULL, NULL, 'ACCB', 'Mashrafee Mortaza', '20-DEC-2018');

-- --------------------------------------------------------

--
-- Table structure for table `previous_history`
--

CREATE TABLE `previous_history` (
  `c_id` int(11) NOT NULL,
  `club_name` varchar(255) DEFAULT NULL,
  `start_date` varchar(100) DEFAULT NULL,
  `end_date` varchar(100) DEFAULT NULL,
  `total_runs` int(11) DEFAULT NULL,
  `total_wickets` int(11) DEFAULT NULL,
  `team_leader` char(1) DEFAULT NULL,
  `Player_pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `previous_history`
--

INSERT INTO `previous_history` (`c_id`, `club_name`, `start_date`, `end_date`, `total_runs`, `total_wickets`, `team_leader`, `Player_pid`) VALUES
(2, 'Mohamedan', '10-10-2017', '10-12-2018', 486, 70, 'N', NULL),
(3, 'Abahoni', '05-04-2015', '06-10-2017', 550, 56, 'Y', NULL),
(4, 'Mohamedan', '10-10-2017', '10-12-2018', 486, 70, 'N', NULL),
(5, 'Abahoni', '05-04-2015', '06-10-2017', 550, 56, 'Y', NULL),
(6, 'Mohamedan', '10-10-2017', '10-12-2018', 486, 70, 'N', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `qualifications`
--

CREATE TABLE `qualifications` (
  `q_id` int(11) NOT NULL,
  `degree_name` varchar(255) DEFAULT NULL,
  `institute` varchar(255) DEFAULT NULL,
  `board` varchar(255) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `result` decimal(3,2) DEFAULT NULL,
  `Player_pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qualifications`
--

INSERT INTO `qualifications` (`q_id`, `degree_name`, `institute`, `board`, `year`, `result`, `Player_pid`) VALUES
(1, 'HSC', 'DIC', 'Dhaka', 2017, '5.00', NULL),
(2, 'HSC', 'DIC', 'Dhaka', 2017, '5.00', NULL),
(15, 'SSC', 'Motijheel Model High School & College', 'Dhaka', 2015, '4.58', NULL),
(16, 'HSC', 'Notre Dame College', 'Dhaka', 2018, '5.00', NULL),
(17, 'SSC', 'Motijheel Model High School & College', 'Dhaka', 2015, '4.58', NULL),
(18, 'HSC', 'Notre Dame College', 'Dhaka', 2018, '5.00', NULL),
(19, 'SSC', 'Motijheel Model High School & College', 'Dhaka', 2015, '4.58', NULL),
(20, 'HSC', 'Notre Dame College', 'Dhaka', 2018, '5.00', NULL),
(21, 'SSC', 'MMHC', 'Dhaka', 2015, '4.58', NULL),
(22, 'HSC', 'DIC', 'Dhaka', 2018, '5.00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `t_id` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `p_id` int(11) DEFAULT NULL,
  `date_of_formation` varchar(100) DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL,
  `team_leader_id` int(11) DEFAULT NULL,
  `team_leader_name` varchar(255) DEFAULT NULL,
  `coach_id` int(11) DEFAULT NULL,
  `coach_name` varchar(255) DEFAULT NULL,
  `Event_e_id` int(11) DEFAULT NULL,
  `Player_pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`t_id`, `c_id`, `p_id`, `date_of_formation`, `e_id`, `team_leader_id`, `team_leader_name`, `coach_id`, `coach_name`, `Event_e_id`, `Player_pid`) VALUES
(1, 1, 0, '12-8-1976', 100, 12, 'Asif', 100, 'Nabiul', NULL, NULL),
(2, 1, 0, '12-8-1976', 10, 12, 'Asif', 100, 'Nabiul', NULL, NULL),
(3, 1, 14, '12-8-1976', 1, 12, 'Asif', 100, 'Nabiul', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team_player_list`
--

CREATE TABLE `team_player_list` (
  `p_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Team_t_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team_player_list`
--

INSERT INTO `team_player_list` (`p_id`, `name`, `Team_t_id`) VALUES
(1, 'Sakib', NULL),
(12, 'Arif', NULL),
(100, 'Mortaza', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `Player_pid` (`Player_pid`);

--
-- Indexes for table `best_performance`
--
ALTER TABLE `best_performance`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `Player_pid` (`Player_pid`);

--
-- Indexes for table `club`
--
ALTER TABLE `club`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `Player_pid` (`Player_pid`),
  ADD KEY `Address_address_id` (`Address_address_id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`contract_id`),
  ADD KEY `Player_pid` (`Player_pid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `match_information`
--
ALTER TABLE `match_information`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `Event_e_id` (`Event_e_id`);

--
-- Indexes for table `match_performance`
--
ALTER TABLE `match_performance`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `Match_m_id` (`Match_m_id`);

--
-- Indexes for table `match_state`
--
ALTER TABLE `match_state`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `Event_e_id` (`Event_e_id`),
  ADD KEY `Player_pid` (`Player_pid`),
  ADD KEY `Team_t_id` (`Team_t_id`);

--
-- Indexes for table `payment_schedule`
--
ALTER TABLE `payment_schedule`
  ADD PRIMARY KEY (`serial_number`),
  ADD KEY `Contract_contract_id` (`Contract_contract_id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `Club_c_id` (`Club_c_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `previous_history`
--
ALTER TABLE `previous_history`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `Player_pid` (`Player_pid`);

--
-- Indexes for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `Player_pid` (`Player_pid`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `Event_e_id` (`Event_e_id`),
  ADD KEY `Player_pid` (`Player_pid`);

--
-- Indexes for table `team_player_list`
--
ALTER TABLE `team_player_list`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `Team_t_id` (`Team_t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `best_performance`
--
ALTER TABLE `best_performance`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `club`
--
ALTER TABLE `club`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `contract_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `match_information`
--
ALTER TABLE `match_information`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `match_performance`
--
ALTER TABLE `match_performance`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;

--
-- AUTO_INCREMENT for table `match_state`
--
ALTER TABLE `match_state`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `payment_schedule`
--
ALTER TABLE `payment_schedule`
  MODIFY `serial_number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15221;

--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `previous_history`
--
ALTER TABLE `previous_history`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `qualifications`
--
ALTER TABLE `qualifications`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `team_player_list`
--
ALTER TABLE `team_player_list`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`Player_pid`) REFERENCES `player` (`pid`);

--
-- Constraints for table `best_performance`
--
ALTER TABLE `best_performance`
  ADD CONSTRAINT `best_performance_ibfk_1` FOREIGN KEY (`Player_pid`) REFERENCES `player` (`pid`);

--
-- Constraints for table `club`
--
ALTER TABLE `club`
  ADD CONSTRAINT `club_ibfk_1` FOREIGN KEY (`Player_pid`) REFERENCES `player` (`pid`),
  ADD CONSTRAINT `club_ibfk_2` FOREIGN KEY (`Address_address_id`) REFERENCES `address` (`address_id`);

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_ibfk_1` FOREIGN KEY (`Player_pid`) REFERENCES `player` (`pid`);

--
-- Constraints for table `match_information`
--
ALTER TABLE `match_information`
  ADD CONSTRAINT `match_information_ibfk_1` FOREIGN KEY (`Event_e_id`) REFERENCES `event` (`e_id`);

--
-- Constraints for table `match_performance`
--
ALTER TABLE `match_performance`
  ADD CONSTRAINT `match_performance_ibfk_1` FOREIGN KEY (`Match_m_id`) REFERENCES `match_state` (`m_id`);

--
-- Constraints for table `match_state`
--
ALTER TABLE `match_state`
  ADD CONSTRAINT `match_state_ibfk_1` FOREIGN KEY (`Event_e_id`) REFERENCES `event` (`e_id`),
  ADD CONSTRAINT `match_state_ibfk_2` FOREIGN KEY (`Player_pid`) REFERENCES `player` (`pid`),
  ADD CONSTRAINT `match_state_ibfk_3` FOREIGN KEY (`Team_t_id`) REFERENCES `team` (`t_id`);

--
-- Constraints for table `payment_schedule`
--
ALTER TABLE `payment_schedule`
  ADD CONSTRAINT `payment_schedule_ibfk_1` FOREIGN KEY (`Contract_contract_id`) REFERENCES `contract` (`contract_id`);

--
-- Constraints for table `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`Club_c_id`) REFERENCES `club` (`c_id`);

--
-- Constraints for table `previous_history`
--
ALTER TABLE `previous_history`
  ADD CONSTRAINT `previous_history_ibfk_1` FOREIGN KEY (`Player_pid`) REFERENCES `player` (`pid`);

--
-- Constraints for table `qualifications`
--
ALTER TABLE `qualifications`
  ADD CONSTRAINT `qualifications_ibfk_1` FOREIGN KEY (`Player_pid`) REFERENCES `player` (`pid`);

--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`Event_e_id`) REFERENCES `event` (`e_id`),
  ADD CONSTRAINT `team_ibfk_2` FOREIGN KEY (`Player_pid`) REFERENCES `player` (`pid`);

--
-- Constraints for table `team_player_list`
--
ALTER TABLE `team_player_list`
  ADD CONSTRAINT `team_player_list_ibfk_1` FOREIGN KEY (`Team_t_id`) REFERENCES `team` (`t_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
