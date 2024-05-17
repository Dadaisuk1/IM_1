-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 10:12 PM
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
-- Database: `roomradar`
--

-- --------------------------------------------------------

--
-- Table structure for table `dorm`
--

CREATE TABLE `dorm` (
  `dorm_id` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `barangay` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `province` varchar(50) NOT NULL,
  `zip_code` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dorm`
--

INSERT INTO `dorm` (`dorm_id`, `street`, `barangay`, `city`, `province`, `zip_code`) VALUES
('D107', 'Willow Street', 'Centrals', 'Baytowns', 'TX', '78901'),
('D108', 'Poplar Street', 'Central', 'Baytown', 'TX', '78901'),
('D109', 'Ash Street', 'Eastside', 'Baytowns', 'TX', '78901'),
('D110', 'Hickory Street', 'Eastside', 'Baytown', 'TX', '78901'),
('D111', 'Locust Street', 'Westside', 'Baytown', 'TX', '78901'),
('D112', 'Sycamore Street', 'Central', 'Hillside', 'NY', '10001'),
('D113', 'Chestnut Street', 'Central', 'Hillside', 'NY', '10001'),
('D114', 'Beech Street', 'Eastside', 'Hillside', 'NY', '10001'),
('D115', 'Walnut Street', 'Eastside', 'Hillside', 'NY', '10001'),
('D116', 'Hazel Street', 'Westside', 'Hillside', 'NY', '10001'),
('D117', 'Alder Street', 'Central', 'Riverside', 'FL', '33133'),
('D118', 'Birch Street', 'Central', 'Riverside', 'FL', '33133'),
('D119', 'Dogwood Street', 'Eastside', 'Riverside', 'FL', '33133'),
('D120', 'Hemlock Street', 'Eastside', 'Riverside', 'FL', '33133'),
('D121', 'Spruce Street', 'Westside', 'Riverside', 'FL', '33133'),
('D122', 'Cypress Street', 'Central', 'Lakeview', 'WA', '98109'),
('D123', 'Fir Street', 'Central', 'Lakeview', 'WA', '98109'),
('D124', 'Cedar Street', 'Eastside', 'Lakeview', 'WA', '98109'),
('D125', 'Hemlock Street', 'Eastside', 'Lakeview', 'WA', '98109'),
('D126', 'Larch Street', 'Westside', 'Lakeview', 'WA', '98109'),
('D127', 'Mahogany Street', 'Central', 'Oceanside', 'CA', '92101'),
('D128', 'Teak Street', 'Central', 'Oceanside', 'CA', '92101'),
('D129', 'Ebony Street', 'Eastside', 'Oceanside', 'CA', '92101'),
('D130', 'Rosewood Street', 'Eastside', 'Oceanside', 'CA', '92101'),
('D131', 'Pine Street', 'Westside', 'Oceanside', 'CA', '92101'),
('D132', 'Willow Street', 'Central', 'Greenwich', 'CT', '06501'),
('D133', 'Poplar Street', 'Central', 'Greenwich', 'CT', '06501'),
('D134', 'Ash Street', 'Eastside', 'Greenwich', 'CT', '06501'),
('D135', 'Hickory Street', 'Eastside', 'Greenwich', 'CT', '06501'),
('D136', 'Locust Street', 'Westside', 'Greenwich', 'CT', '06501'),
('D137', 'Sycamore Street', 'Central', 'Springfield', 'MA', '01103'),
('D138', 'Chestnut Street', 'Central', 'Springfield', 'MA', '01103'),
('D139', 'Beech Street', 'Eastside', 'Springfield', 'MA', '01103'),
('D140', 'Walnut Street', 'Eastside', 'Springfield', 'MA', '01103'),
('D141', 'Hazel Street', 'Westside', 'Springfield', 'MA', '01103'),
('D142', 'Alder Street', 'Central', 'Portland', 'OR', '97204'),
('D143', 'Birch Street', 'Central', 'Portland', 'OR', '97204'),
('D144', 'Dogwood Street', 'Eastside', 'Portland', 'OR', '97204'),
('D145', 'Hemlock Street', 'Eastside', 'Portland', 'OR', '97204'),
('D146', 'Spruce Street', 'Westside', 'Portland', 'OR', '97204'),
('D147', 'Cypress Street', 'Central', 'Austin', 'TX', '78701'),
('D148', 'Fir Street', 'Central', 'Austin', 'TX', '78701'),
('D149', 'Cedar Street', 'Eastside', 'Austin', 'TX', '78701'),
('D150', 'Hemlock Street', 'Eastside', 'Austin', 'TX', '78701');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` varchar(50) NOT NULL,
  `availability` varchar(50) NOT NULL,
  `capacity` varchar(50) NOT NULL,
  `occupancy` varchar(50) NOT NULL,
  `dorm_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `availability`, `capacity`, `occupancy`, `dorm_id`) VALUES
('R001', 'Available', '1', '0', 'D101'),
('R002', 'Occupied', '2', '1', 'D102'),
('R003', 'Available', '3', '0', 'D103'),
('R004', 'Occupied', '4', '2', 'D104'),
('R005', 'Available', '1', '1', 'D105'),
('R006', 'Available', '2', '0', 'D106'),
('R007', 'Occupied', '3', '3', 'D107'),
('R008', 'Available', '4', '0', 'D108'),
('R009', 'Occupied', '1', '0', 'D109'),
('R010', 'Available', '2', '1', 'D110'),
('R011', 'Available', '1', '0', 'D111'),
('R012', 'Occupied', '2', '1', 'D112'),
('R013', 'Available', '3', '0', 'D113'),
('R014', 'Occupied', '4', '3', 'D114'),
('R015', 'Available', '1', '1', 'D115'),
('R016', 'Available', '2', '0', 'D116'),
('R017', 'Occupied', '3', '2', 'D117'),
('R018', 'Available', '4', '0', 'D118'),
('R019', 'Occupied', '1', '0', 'D119'),
('R020', 'Available', '2', '1', 'D120'),
('R021', 'Available', '3', '0', 'D121'),
('R022', 'Occupied', '4', '2', 'D122'),
('R023', 'Available', '1', '1', 'D123'),
('R024', 'Occupied', '2', '0', 'D124'),
('R025', 'Available', '3', '3', 'D125'),
('R026', 'Occupied', '4', '1', 'D126'),
('R027', 'Available', '1', '0', 'D127'),
('R028', 'Occupied', '2', '2', 'D128'),
('R029', 'Available', '3', '0', 'D129'),
('R030', 'Occupied', '4', '1', 'D130'),
('R031', 'Available', '1', '0', 'D131'),
('R032', 'Occupied', '2', '1', 'D132'),
('R033', 'Available', '3', '0', 'D133'),
('R034', 'Occupied', '4', '2', 'D134'),
('R035', 'Available', '1', '1', 'D135'),
('R036', 'Available', '2', '0', 'D136'),
('R037', 'Occupied', '3', '3', 'D137'),
('R038', 'Available', '4', '0', 'D138'),
('R039', 'Occupied', '1', '0', 'D139'),
('R040', 'Available', '2', '1', 'D140'),
('R041', 'Available', '3', '0', 'D141'),
('R042', 'Occupied', '4', '2', 'D142'),
('R043', 'Available', '1', '1', 'D143'),
('R044', 'Occupied', '2', '0', 'D144'),
('R045', 'Available', '3', '3', 'D145'),
('R046', 'Occupied', '4', '1', 'D146'),
('R047', 'Available', '1', '0', 'D147'),
('R048', 'Occupied', '2', '2', 'D148'),
('R049', 'Available', '3', '0', 'D149'),
('R050', 'Occupied', '4', '1', 'D150');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `tenant_id` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(2) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`tenant_id`, `first_name`, `middle_name`, `last_name`, `user_id`) VALUES
('1', 'John', 'Mi', 'Smith', 'user001'),
('10', 'James', 'Ch', 'Wilson', 'user010'),
('11', 'Emily', 'Gr', 'Clark', 'user011'),
('12', 'Alexander', 'Da', 'Lewis', 'user012'),
('13', 'Abigail', 'So', 'Lee', 'user013'),
('14', 'Mason', 'El', 'Walker', 'user014'),
('15', 'Charlotte', 'Av', 'Allen', 'user015'),
('16', 'Elijah', 'No', 'Young', 'user016'),
('17', 'Isabella', 'Ol', 'Johnson', 'user017'),
('18', 'Benjamin', 'Wi', 'Taylor', 'user018'),
('19', 'Evelyn', 'Mi', 'Wright', 'user019'),
('2', 'Jane', 'An', 'Doe', 'user002'),
('20', 'Aiden', 'Ja', 'Hernandez', 'user020'),
('21', 'Madison', 'El', 'King', 'user021'),
('22', 'Lucas', 'Ai', 'Scott', 'user022'),
('23', 'Elizabeth', 'Em', 'Robinson', 'user023'),
('24', 'Christopher', 'Ma', 'Moore', 'user024'),
('25', 'Avery', 'Ch', 'Nelson', 'user025'),
('26', 'Logan', 'El', 'Campbell', 'user026'),
('27', 'Sofia', 'Is', 'Mitchell', 'user027'),
('28', 'Matthew', 'Be', 'Hall', 'user028'),
('29', 'Scarlett', 'Ev', 'Adams', 'user029'),
('3', 'Olivia', 'Ro', 'Williams', 'user003'),
('30', 'Daniel', 'Al', 'Carter', 'user030'),
('31', 'Chloe', 'Ab', 'Baker', 'user031'),
('32', 'Jackson', 'Ma', 'Green', 'user032'),
('33', 'Harper', 'Mi', 'Griffin', 'user033'),
('34', 'Aaliyah', 'Ev', 'Sanchez', 'user034'),
('35', 'David', 'Li', 'Reed', 'user035'),
('36', 'Ella', 'So', 'Cook', 'user036'),
('37', 'Anthony', 'El', 'Morgan', 'user037'),
('38', 'Layla', 'Av', 'Lewis', 'user038'),
('39', 'Wyatt', 'No', 'Hill', 'user039'),
('4', 'Noah', 'Wi', 'Brown', 'user004'),
('40', 'Grace', 'Ol', 'Torres', 'user040'),
('41', 'Evelyn', 'Am', 'Perez', 'user041'),
('42', 'Olivia', 'Is', 'Roberts', 'user042'),
('43', 'Benjamin', 'Lu', 'Watson', 'user043'),
('44', 'Amelia', 'Ha', 'Brooks', 'user044'),
('45', 'Mia', 'Ri', 'Kelly', 'user045'),
('46', 'Liam', 'Et', 'Nguyen', 'user046'),
('47', 'Isabella', 'Av', 'Kim', 'user047'),
('48', 'William', 'Lo', 'Garcia', 'user048'),
('49', 'James', 'Ma', 'Robinson', 'user049'),
('5', 'Sophia', 'Is', 'Jones', 'user005'),
('50', 'John', 'El', 'Clark', 'user050'),
('6', 'Liam', 'Ja', 'Miller', 'user006'),
('7', 'Ava', 'Ch', 'Davis', 'user007'),
('8', 'William', 'Be', 'Garcia', 'user008'),
('9', 'Mia', 'Ev', 'Rodriguez', 'user009');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` varchar(50) NOT NULL,
  `date_started` varchar(50) NOT NULL,
  `date_ended` varchar(50) NOT NULL,
  `deposit` int(50) NOT NULL,
  `tenant_id` varchar(50) NOT NULL,
  `room_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `date_started`, `date_ended`, `deposit`, `tenant_id`, `room_id`) VALUES
('T001', '2024-05-13', '2024-06-13', 1000, '1', 'R001'),
('T002', '2024-05-14', '2024-06-14', 1100, '2', 'R002'),
('T003', '2024-05-15', '2024-06-15', 1200, '3', 'R003'),
('T004', '2024-05-16', '2024-06-16', 1300, '4', 'R004'),
('T005', '2024-05-17', '2024-06-17', 1400, '5', 'R005'),
('T006', '2024-05-18', '2024-06-18', 1500, '6', 'R006'),
('T007', '2024-05-19', '2024-06-19', 1600, '7', 'R007'),
('T008', '2024-05-20', '2024-06-20', 1700, '8', 'R008'),
('T009', '2024-05-21', '2024-06-21', 1800, '9', 'R009'),
('T010', '2024-05-22', '2024-06-22', 1900, '10', 'R010'),
('T011', '2024-05-23', '2024-06-23', 2000, '11', 'R011'),
('T012', '2024-05-24', '2024-06-24', 2100, '12', 'R012'),
('T013', '2024-05-25', '2024-06-25', 2200, '13', 'R013'),
('T014', '2024-05-26', '2024-06-26', 2300, '14', 'R014'),
('T015', '2024-05-27', '2024-06-27', 2400, '15', 'R015'),
('T016', '2024-05-28', '2024-06-28', 2500, '16', 'R016'),
('T017', '2024-05-29', '2024-06-29', 2600, '17', 'R017'),
('T018', '2024-05-30', '2024-06-30', 2700, '18', 'R018'),
('T019', '2024-05-31', '2024-07-01', 2800, '19', 'R019'),
('T020', '2024-06-01', '2024-07-02', 2900, '20', 'R020'),
('T021', '2024-06-02', '2024-07-03', 3000, '21', 'R021'),
('T022', '2024-06-03', '2024-07-04', 3100, '22', 'R022'),
('T023', '2024-06-04', '2024-07-05', 3200, '23', 'R023'),
('T024', '2024-06-05', '2024-07-06', 3300, '24', 'R024'),
('T025', '2024-06-06', '2024-07-07', 3400, '25', 'R025'),
('T026', '2024-06-07', '2024-07-08', 3500, '26', 'R026'),
('T027', '2024-06-08', '2024-07-09', 3600, '27', 'R027'),
('T028', '2024-06-09', '2024-07-10', 3700, '28', 'R028'),
('T029', '2024-06-10', '2024-07-11', 3800, '29', 'R029'),
('T030', '2024-06-11', '2024-07-12', 3900, '30', 'R030'),
('T031', '2024-06-12', '2024-07-13', 4000, '31', 'R031'),
('T032', '2024-06-13', '2024-07-14', 4100, '32', 'R032'),
('T033', '2024-06-14', '2024-07-15', 4200, '33', 'R033'),
('T034', '2024-06-15', '2024-07-16', 4300, '34', 'R034'),
('T035', '2024-06-16', '2024-07-17', 4400, '35', 'R035'),
('T036', '2024-06-17', '2024-07-18', 4500, '36', 'R036'),
('T037', '2024-06-18', '2024-07-19', 4600, '37', 'R037'),
('T038', '2024-06-19', '2024-07-20', 4700, '38', 'R038'),
('T039', '2024-06-20', '2024-07-21', 4800, '39', 'R039'),
('T040', '2024-06-21', '2024-07-22', 4900, '40', 'R040'),
('T041', '2024-06-22', '2024-07-23', 5000, '41', 'R041'),
('T043', '2024-06-23', '2024-07-24', 5100, '42', 'R042'),
('T044', '2024-06-24', '2024-07-25', 5200, '43', 'R043'),
('T045', '2024-06-25', '2024-07-26', 5300, '44', 'R044'),
('T046', '2024-06-26', '2024-07-27', 5400, '45', 'R045'),
('T047', '2024-06-27', '2024-07-28', 5500, '46', 'R046'),
('T048', '2024-06-28', '2024-07-29', 5600, '47', 'R047'),
('T049', '2024-06-30', '2024-07-30', 5800, '49', 'R049'),
('T050', '2024-07-01', '2024-08-01', 5900, '50', 'R050');

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE `useraccount` (
  `user_id` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`user_id`, `password`, `phone_number`, `email`, `role`) VALUES
('user001', 'password1', '123-456-789', 'user001@example.com', 'tenant'),
('user002', 'password2', '987-654-321', 'user002@example.com', 'landlord'),
('user003', 'password3', '555-123-456', 'user003@example.com', 'tenant'),
('user004', 'password4', '098-765-432', 'user004@example.com', 'landlord'),
('user005', 'password5', '222-333-444', 'user005@example.com', 'tenant'),
('user006', 'password6', '111-555-777', 'user006@example.com', 'landlord'),
('user007', 'password7', '333-444-555', 'user007@example.com', 'tenant'),
('user008', 'password8', '888-999-000', 'user008@example.com', 'landlord'),
('user009', 'password9', '444-555-666', 'user009@example.com', 'tenant'),
('user010', 'password10', '777-888-999', 'user010@example.com', 'landlord'),
('user011', 'password11', '543-210-987', 'user011@example.com', 'tenant'),
('user012', 'password12', '654-987-321', 'user012@example.com', 'landlord'),
('user013', 'password13', '765-098-432', 'user013@example.com', 'tenant'),
('user014', 'password14', '876-123-543', 'user014@example.com', 'landlord'),
('user015', 'password15', '987-234-654', 'user015@example.com', 'tenant'),
('user016', 'password16', '012-345-678', 'user016@example.com', 'landlord'),
('user017', 'password17', '123-456-789', 'user017@example.com', 'tenant'),
('user018', 'password18', '234-567-890', 'user018@example.com', 'landlord'),
('user019', 'password19', '345-678-901', 'user019@example.com', 'tenant'),
('user020', 'password20', '456-789-012', 'user020@example.com', 'landlord'),
('user021', 'password21', '901-234-567', 'user021@example.com', 'tenant'),
('user022', 'password22', '023-456-789', 'user022@example.com', 'landlord'),
('user023', 'password23', '145-678-901', 'user023@example.com', 'tenant'),
('user024', 'password24', '267-890-123', 'user024@example.com', 'landlord'),
('user025', 'password25', '389-012-345', 'user025@example.com', 'tenant'),
('user026', 'password26', '501-234-567', 'user026@example.com', 'landlord'),
('user027', 'password27', '623-456-789', 'user027@example.com', 'tenant'),
('user028', 'password28', '745-678-901', 'user028@example.com', 'landlord'),
('user029', 'password29', '867-890-123', 'user029@example.com', 'tenant'),
('user030', 'password30', '089-012-345', 'user030@example.com', 'landlord'),
('user031', 'password31', '201-432-657', 'user031@example.com', 'tenant'),
('user032', 'password32', '323-654-879', 'user032@example.com', 'landlord'),
('user033', 'password33', '445-876-091', 'user033@example.com', 'tenant'),
('user034', 'password34', '567-098-213', 'user034@example.com', 'landlord'),
('user035', 'password35', '689-210-435', 'user035@example.com', 'tenant'),
('user036', 'password36', '801-432-657', 'user036@example.com', 'landlord'),
('user037', 'password37', '923-654-879', 'user037@example.com', 'tenant'),
('user038', 'password38', '045-876-091', 'user038@example.com', 'landlord'),
('user039', 'password39', '167-098-213', 'user039@example.com', 'tenant'),
('user040', 'password40', '289-210-435', 'user040@example.com', 'landlord'),
('user041', 'password41', '310-678-901', 'user041@example.com', 'tenant'),
('user042', 'password42', '432-890-123', 'user042@example.com', 'landlord'),
('user043', 'password43', '554-012-345', 'user043@example.com', 'tenant'),
('user044', 'password44', '676-234-567', 'user044@example.com', 'landlord'),
('user045', 'password45', '798-456-789', 'user045@example.com', 'tenant'),
('user046', 'password46', '910-678-901', 'user046@example.com', 'landlord'),
('user047', 'password47', '032-890-123', 'user047@example.com', 'tenant'),
('user048', 'password48', '154-012-345', 'user048@example.com', 'landlord'),
('user049', 'password49', '276-234-567', 'user049@example.com', 'tenant'),
('user050', 'password50', '398-456-789', 'user050@example.com', 'landlord');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dorm`
--
ALTER TABLE `dorm`
  ADD PRIMARY KEY (`dorm_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `dormID` (`dorm_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`tenant_id`),
  ADD KEY `UserID` (`user_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `tenantID` (`tenant_id`),
  ADD KEY `roomID` (`room_id`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`user_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`dorm_id`) REFERENCES `dorm` (`dorm_id`);

--
-- Constraints for table `tenants`
--
ALTER TABLE `tenants`
  ADD CONSTRAINT `tenants_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `useraccount` (`user_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`tenant_id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
