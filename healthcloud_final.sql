-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 06, 2018 at 05:44 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcloud`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment_cms`
--

CREATE TABLE `appointment_cms` (
  `s.no` int(11) NOT NULL,
  `phc_id` varchar(25) NOT NULL,
  `cms_id` varchar(25) NOT NULL,
  `approval_status` varchar(25) NOT NULL,
  `time_s` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_cms`
--

INSERT INTO `appointment_cms` (`s.no`, `phc_id`, `cms_id`, `approval_status`, `time_s`) VALUES
(6, 'Ajay', 'Ranvir', 'Pending', '2018-04-05 17:08:46'),
(7, 'Ajay', 'Ranvir', 'Pending', '2018-04-05 17:10:08'),
(8, 'Ajay', 'Ranvir', 'Pending', '2018-04-05 17:14:41'),
(9, 'Ajay', 'Shourya', 'Pending', '2018-04-05 17:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_phc`
--

CREATE TABLE `appointment_phc` (
  `s.no` int(11) NOT NULL,
  `citizen_id` varchar(25) NOT NULL,
  `phc_id` varchar(25) NOT NULL,
  `approval_status` varchar(25) NOT NULL,
  `time_s` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment_phc`
--

INSERT INTO `appointment_phc` (`s.no`, `citizen_id`, `phc_id`, `approval_status`, `time_s`) VALUES
(26, '123', 'testdoc', 'Pending', 'test'),
(27, '123', 'testdoc', 'Pending', ''),
(28, '123', 'testdoc', 'Pending', ''),
(29, '123', 'testdoc', 'Pending', ''),
(30, '123', 'testdoc', 'Pending', ''),
(31, '123', 'testdoc', 'Pending', ''),
(32, '123', 'testdoc', 'Pending', ''),
(70, 'Kapil', 'Ajay', 'Pending', '2018-04-05 15:08:58'),
(71, 'Kapil', 'Ajay', 'Pending', '2018-04-05 18:41:15'),
(72, 'Kapil', 'Ajay', 'Pending', '2018-04-05 18:45:15'),
(73, 'Kapil', 'Ajay', 'Pending', '2018-04-05 18:45:58'),
(74, 'Kapil', 'Ajay', 'Pending', '2018-04-05 20:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `citizen_details`
--

CREATE TABLE `citizen_details` (
  `username` varchar(25) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `ph_type` varchar(25) NOT NULL,
  `ph_alt` varchar(10) NOT NULL,
  `add_type` varchar(25) NOT NULL,
  `state` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `dob` varchar(25) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `vaccines` varchar(50) NOT NULL,
  `timestamp` varchar(25) NOT NULL,
  `m_history` varchar(200) NOT NULL,
  `allergies` varchar(200) NOT NULL,
  `biometric` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `citizen_details`
--

INSERT INTO `citizen_details` (`username`, `first_name`, `last_name`, `occupation`, `email`, `contact`, `ph_type`, `ph_alt`, `add_type`, `state`, `address`, `dob`, `gender`, `vaccines`, `timestamp`, `m_history`, `allergies`, `biometric`) VALUES
('Fardeen', 'Fardeen', 'Shaik', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('Kapil', 'Kapil', 'Shrotriya', 'Student', 'kapil@gmail.com', '1234599999', 'Mobile', '2702707', 'Home', 'Rajasthan', '123 T Block', '24/12/1996', 'Male', 'Tetanus', 'Mar-15', 'Nil', 'Egg', 'Approved'),
('Tanaya', 'Tanaya', 'Yadav', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cms_details`
--

CREATE TABLE `cms_details` (
  `username` varchar(25) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Speciality` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_details`
--

INSERT INTO `cms_details` (`username`, `Name`, `Email`, `Phone`, `Speciality`) VALUES
('Ranvir', 'Dr. Ranvir Bhandari', 'ranvir@gmail.com', '1234599999', 'Cardiologist'),
('Shourya', 'Dr. Shourya Bhardwaj', 'shourya@gmail.com', '9999912345', 'Dermatologist');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`username`, `password`, `type`) VALUES
('Ajay', 'Ajay', 5),
('daoa', 'daoa', 4),
('daos', 'daos', 3),
('Fardeen', 'Fardeen', 1),
('gpo', 'gpo', 2),
('Kapil', 'Kapil', 1),
('Ranvir', 'Ranvir', 6),
('Shourya', 'Shourya', 6),
('Tanaya', 'Tanaya', 1),
('Vijay', 'Vijay', 5);

-- --------------------------------------------------------

--
-- Table structure for table `phc_details`
--

CREATE TABLE `phc_details` (
  `username` varchar(25) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phc_details`
--

INSERT INTO `phc_details` (`username`, `Name`, `Email`, `Phone`) VALUES
('Ajay', 'Dr. Ajay Singh', 'ajay@gmail.com', '1234509876'),
('Vijay', 'Dr.Vijay Batra', 'vijay@gmail.com', '1234554321');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `FIRST_NAME` varchar(100) NOT NULL,
  `MIDDLE_NAME` varchar(100) NOT NULL,
  `LAST_NAME` varchar(100) NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `DATE_OF_BIRTH` varchar(15) NOT NULL,
  `PARENT_NAME` varchar(250) NOT NULL,
  `MARITAL_STATUS` varchar(15) NOT NULL,
  `SPOUSE_NAME` varchar(150) NOT NULL,
  `NUMBER_OF_CHILDREN` varchar(10) NOT NULL,
  `CONTACT_NUMBER` varchar(10) NOT NULL,
  `PHONE_TYPE` varchar(10) NOT NULL,
  `ALTERNATE_PHONE` varchar(10) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `STATE` varchar(100) NOT NULL,
  `PERMANENT_ADDRESS` varchar(300) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `EDUCATION_DETAILS` varchar(300) NOT NULL,
  `MI_NAME` varchar(150) NOT NULL,
  `MI_PHONE` varchar(10) NOT NULL,
  `MI_ADDRESS` varchar(300) NOT NULL,
  `MI_HEIGHT` varchar(10) NOT NULL,
  `MI_WEIGHT` varchar(10) NOT NULL,
  `MI_BLOOD_GROUP` varchar(5) NOT NULL,
  `MI_FAMILY_HEALTH_HISTORY` varchar(250) NOT NULL,
  `MI_MEDICAL_HISTORY` varchar(250) NOT NULL,
  `MI_ALLERGIES` varchar(150) NOT NULL,
  `MI_SURGERIES` varchar(150) NOT NULL,
  `MI_VACCINES` varchar(500) NOT NULL,
  `MI_INSURANCE_PROVIDER` varchar(100) NOT NULL,
  `MI_GROUP_NAME` varchar(50) NOT NULL,
  `MI_II_ADDRESS` varchar(300) NOT NULL,
  `MI_POLICY_NAME` varchar(100) NOT NULL,
  `OCCUPATION` varchar(100) NOT NULL,
  `COMPANY_NAME` varchar(50) NOT NULL,
  `EMPLOYEE_ID` varchar(50) NOT NULL,
  `WORKED_SINCE` varchar(25) NOT NULL,
  `OFFICE_ADDRESS` varchar(300) NOT NULL,
  `OFFICE_PHONE` varchar(10) NOT NULL,
  `ANNUAL_INCOME` varchar(150) NOT NULL,
  `PAN_NUMBER` varchar(15) NOT NULL,
  `GOVERNMENT_SCHEMES_ENROLLED` varchar(150) NOT NULL,
  `ACCOUNT_HOLDER_NAME` varchar(100) NOT NULL,
  `ACCOUNT_NUMBER` varchar(15) NOT NULL,
  `BANK_NAME` varchar(50) NOT NULL,
  `IFSC_CODE` varchar(15) NOT NULL,
  `BRANCH` varchar(50) NOT NULL,
  `BANK_ADDRESS` varchar(300) NOT NULL,
  `BANK_STATE` varchar(50) NOT NULL,
  `BANK_DISTRICT` varchar(50) NOT NULL,
  `BIOMETRIC_INPUT` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`FIRST_NAME`, `MIDDLE_NAME`, `LAST_NAME`, `GENDER`, `DATE_OF_BIRTH`, `PARENT_NAME`, `MARITAL_STATUS`, `SPOUSE_NAME`, `NUMBER_OF_CHILDREN`, `CONTACT_NUMBER`, `PHONE_TYPE`, `ALTERNATE_PHONE`, `CITY`, `STATE`, `PERMANENT_ADDRESS`, `EMAIL`, `EDUCATION_DETAILS`, `MI_NAME`, `MI_PHONE`, `MI_ADDRESS`, `MI_HEIGHT`, `MI_WEIGHT`, `MI_BLOOD_GROUP`, `MI_FAMILY_HEALTH_HISTORY`, `MI_MEDICAL_HISTORY`, `MI_ALLERGIES`, `MI_SURGERIES`, `MI_VACCINES`, `MI_INSURANCE_PROVIDER`, `MI_GROUP_NAME`, `MI_II_ADDRESS`, `MI_POLICY_NAME`, `OCCUPATION`, `COMPANY_NAME`, `EMPLOYEE_ID`, `WORKED_SINCE`, `OFFICE_ADDRESS`, `OFFICE_PHONE`, `ANNUAL_INCOME`, `PAN_NUMBER`, `GOVERNMENT_SCHEMES_ENROLLED`, `ACCOUNT_HOLDER_NAME`, `ACCOUNT_NUMBER`, `BANK_NAME`, `IFSC_CODE`, `BRANCH`, `BANK_ADDRESS`, `BANK_STATE`, `BANK_DISTRICT`, `BIOMETRIC_INPUT`) VALUES
('TEST', 'TEST', 'TEST', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '2', '3', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('1', '1', '1', '', '1', '1', '', '1', '1', '1', '', '1', '1', 'Rajasthan', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '', ''),
('1', '1', '1', '', '1', '1', '', '1', '1', '1', '', '1', '1', 'Rajasthan', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '', ''),
('1', '1', '1', '', '1', '1', '', '1', '1', '1', '', '1', '1', 'Rajasthan', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '1', '1', '1', '1', '11', '1', '1', '11', '1'),
('1', '1', '1', '', '1', '1', '', '1', '1', '1', '', '1', '1', 'Rajasthan', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '1', '1', '1', '1', '11', '1', '1', '11', '1'),
('1', '1', '1', '', '1', '1', '', '1', '1', '1', '', '1', '1', 'Rajasthan', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '11', '1', '1', '1', '1', '1', '1', '11', '1', '1', '11', '1'),
('', '', '', 'Male', '', '', '', '', '', '', 'Mobile', '', '', 'Rajasthan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', 'Male', '', '', '', '', '', '', 'Mobile', '', '', 'Rajasthan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', 'Male', '', '', 'Married', '', '', '', 'Mobile', '', '', 'Rajasthan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
('', '', '', 'Male', '', '', 'Married', '', '', '', 'Mobile', '', '', 'Rajasthan', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_approval`
--

CREATE TABLE `scheme_approval` (
  `s.no` int(11) NOT NULL,
  `s_id` varchar(25) NOT NULL,
  `a_id` varchar(25) NOT NULL,
  `Approval_Status` varchar(25) NOT NULL,
  `time_s` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheme_approval`
--

INSERT INTO `scheme_approval` (`s.no`, `s_id`, `a_id`, `Approval_Status`, `time_s`) VALUES
(8, '4', 'daoa', 'Pending', '2018-04-05 20:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `scheme_govt`
--

CREATE TABLE `scheme_govt` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Type` varchar(25) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Conditions` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheme_govt`
--

INSERT INTO `scheme_govt` (`id`, `Name`, `Type`, `Description`, `Conditions`) VALUES
(1, 'Pradhan Mantri Jan Dhan Yojna', 'People\'s Money Scheme', '-', 'Income'),
(3, 'Beti Bachao Beti Padhao Yojna', 'Education for girls', '-', 'Girl Child'),
(5, 'Deen Dayal Disabled Rehabilitation Scheme', 'Scheme for the Disabled', '-', 'Disability');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment_cms`
--
ALTER TABLE `appointment_cms`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `appointment_phc`
--
ALTER TABLE `appointment_phc`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `citizen_details`
--
ALTER TABLE `citizen_details`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `cms_details`
--
ALTER TABLE `cms_details`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `phc_details`
--
ALTER TABLE `phc_details`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `scheme_approval`
--
ALTER TABLE `scheme_approval`
  ADD PRIMARY KEY (`s.no`);

--
-- Indexes for table `scheme_govt`
--
ALTER TABLE `scheme_govt`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment_cms`
--
ALTER TABLE `appointment_cms`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `appointment_phc`
--
ALTER TABLE `appointment_phc`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `scheme_approval`
--
ALTER TABLE `scheme_approval`
  MODIFY `s.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scheme_govt`
--
ALTER TABLE `scheme_govt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
