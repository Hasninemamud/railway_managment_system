


--
-- Database: `railway_managment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(20) NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `LAST_Name` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(20) DEFAULT NULL,
  `Contract` int(20) DEFAULT NULL,
  `Admin_pass` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `First_Name`, `LAST_Name`, `Gender`, `Age`, `Contract`, `Admin_pass`) VALUES
(101, 'Ahmed', 'Jihan', 'Male', 22, 1635442987, 12345),
(102, 'Pranto', 'Partho', 'Male', 22, 16398765, 12345),
(103, 'Yean', 'Chowdhory', 'Male', 22, 1745581966, 12345),
(104, 'Hasnine', 'Mamud', 'Male', 22, 1636442347, 12345),
(105, 'Sifat', 'Rahman', 'Male', 22, 2147483647, 12345),
(106, 'Mehedi', 'Mahi', 'Male', 22, 1635487987, 12345),
(107, 'Emtiaz', 'Ahmed', 'Male', 22, 1635982987, 12345),
(108, 'Arshed', 'Siddiki', 'Male', 22, 1623442987, 12345),
(109, 'Mir', 'Jafor', 'Male', 22, 1635449877, 12345),
(110, 'Rifat', 'Hasan', 'Male', 22, 1635267987, 12345),
(111, 'Famida', 'Sara', 'Female', 22, 1609842987, 12345),
(112, 'Newton', 'Mahi', 'Male', 22, 1636780987, 12345),
(113, 'Shekh', 'Mahi', 'Male', 22, 163109887, 12345),
(114, 'Ratul', 'Islam', 'Male', 22, 1633332987, 12345),
(115, 'Shekh', 'Hasina', 'Male', 22, 1622242987, 12345);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(20) NOT NULL,
  `First_Name` varchar(20) DEFAULT NULL,
  `LAST_NAme` varchar(20) DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Age` int(20) DEFAULT NULL,
  `Cust_Contract` int(20) DEFAULT NULL,
  `Cust_pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `First_Name`, `LAST_NAme`, `Gender`, `Age`, `Cust_Contract`, `Cust_pass`) VALUES
(1001, 'Toki', 'Tajowar', 'Male', 22, 2147483647, '54321'),
(1002, 'Noyan', 'Mamud', 'Male', 22, 1876541689, '54321'),
(1003, 'Angle', 'florida', 'Male', 29, 1999262349, '54321'),
(1004, 'Vladimir', 'Putin', 'Male', 67, 2147483647, '54321'),
(1005, 'Donald ', 'Trump', 'Male', 76, 1999912589, '54321'),
(1006, 'TAbdul', 'Hamid', 'Male', 22, 2147483647, '54321'),
(1007, 'Issace', 'Newton', 'Male', 112, 2147483647, '54321'),
(1008, 'Albert', 'Robart', 'Male', 42, 1999981689, '54321'),
(1009, 'Frnakh', 'Men', 'Male', 25, 1999200179, '54321'),
(1010, 'George', 'Washington', 'Male', 52, 2147483647, '54321'),
(1011, 'Shundor', 'Pichai', 'Male', 72, 1999988689, '54321'),
(1012, 'Joe', 'Biden', 'Male', 81, 2147483647, '54321'),
(1013, 'Ahmed', 'Didar', 'Male', 32, 2147483647, '54321'),
(1014, 'Henry', 'trueman', 'Male', 92, 1932181689, '54321');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `Report_ID` int(11) NOT NULL,
  `Trans_ID` int(11) DEFAULT NULL,
  `Res_ID` int(11) DEFAULT NULL,
  `Report_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`Report_ID`, `Trans_ID`, `Res_ID`, `Report_date`) VALUES
(3001, 501, 201, '2022-09-10'),
(3002, 502, 202, '2022-09-11'),
(3003, 503, 203, '2022-09-12'),
(3004, 504, 204, '2022-09-13'),
(3005, 505, 205, '2022-09-14'),
(3006, 506, 206, '2022-09-15'),
(3007, 507, 207, '2022-09-16'),
(3008, 508, 208, '2022-09-17'),
(3009, 509, 209, '2022-09-18'),
(3010, 510, 210, '2022-09-19'),
(3011, 511, 211, '2022-09-20'),
(3012, 512, 212, '2022-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Res_ID` int(20) NOT NULL,
  `Customer_ID` int(20) DEFAULT NULL,
  `Ticket_ID` int(20) DEFAULT NULL,
  `Admin_ID` int(15) DEFAULT NULL,
  `date_accom` date DEFAULT NULL,
  `date_reserv` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Res_ID`, `Customer_ID`, `Ticket_ID`, `Admin_ID`, `date_accom`, `date_reserv`) VALUES
(201, 1001, 190, 101, '2022-09-04', '2022-09-05'),
(202, 1002, 191, 108, '2021-10-14', '2021-10-19'),
(203, 1003, 192, 109, '2021-10-15', '2021-10-29'),
(204, 1004, 193, 107, '2021-11-14', '2021-11-19'),
(205, 1005, 194, 108, '2021-12-14', '2021-12-19'),
(206, 1006, 195, 109, '2022-01-14', '2022-01-19'),
(207, 1007, 196, 110, '2022-02-14', '2022-02-19'),
(209, 1009, 198, 112, '2022-04-14', '2022-04-29'),
(210, 1010, 199, 113, '2022-05-14', '2022-05-20'),
(211, 1011, 200, 114, '2022-06-14', '2022-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `train_ticket`
--

CREATE TABLE `train_ticket` (
  `Ticket_ID` int(20) NOT NULL,
  `Ticket_Name` varchar(20) DEFAULT NULL,
  `Date_Ava` date DEFAULT NULL,
  `Date_Flight` date DEFAULT NULL,
  `Time_depart` time DEFAULT NULL,
  `Time_land` time DEFAULT NULL,
  `Destination` varchar(20) DEFAULT NULL,
  Ticket_Amount varchar(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train_ticket`
--

INSERT INTO `train_ticket` (`Ticket_ID`, `Ticket_Name`, `Date_Ava`, `Date_Flight`, `Time_depart`, `Time_land`, `Destination`) VALUES
(190, 'Didar', '2022-09-03', '2022-09-04', '12:00:00', '03:00:00', 'Dhaka'),
(191, 'TAlukdar', '2022-09-02', '2022-09-03', '10:30:00', '03:00:00', 'Kolkata'),
(192, 'Hossain', '2022-09-03', '2022-09-03', '09:30:00', '11:00:00', 'Delhi'),
(193, 'Messi', '2022-09-09', '2022-09-10', '07:25:00', '01:30:11', 'Norway'),
(194, 'Ronaldo', '2022-11-12', '2022-11-16', '01:45:00', '09:45:00', 'Chicago'),
(195, 'Xavi', '2021-01-05', '2021-01-07', '11:00:00', '09:00:04', 'NewYork'),
(196, 'Kaka', '2020-07-08', '2020-07-11', '05:30:00', '10:30:00', 'Barisal'),
(198, 'Farnandej', '2019-09-22', '2019-09-24', '10:10:00', '12:00:00', 'Khulna'),
(199, 'Pedrej', '2023-10-25', '2023-10-26', '-00:00:20', '00:00:10', 'Jossre'),
(200, 'Kante', '2020-03-23', '2020-03-28', '-00:00:20', '00:00:01', 'Bhola'),
(201, 'Salah', '2021-03-22', '2021-03-24', '-00:00:20', '00:00:09', 'Rajshahi'),
(202, 'Neymar', '2022-09-22', '2022-09-24', '-00:00:20', '00:00:12', 'Dinajpur'),
(259, 'Kormin', '2022-09-03', '2022-09-04', '00:00:10', '00:00:02', 'munshigonj');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_train`
--

CREATE TABLE `transaction_train` (
  `Trans_ID` int(20) NOT NULL,
  `Res_ID` int(20) DEFAULT NULL,
  `Admin_ID` int(20) DEFAULT NULL,
  `Customer_ID` int(20) DEFAULT NULL,
  `transty_ID` int(20) DEFAULT NULL,
  `trans_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_train`
--

INSERT INTO `transaction_train` (`Trans_ID`, `Res_ID`, `Admin_ID`, `Customer_ID`, `transty_ID`, `trans_date`) VALUES
(501, 201, 101, 1001, 1001, '2022-09-03'),
(502, 202, 102, 1002, 1002, '2022-09-04'),
(503, 203, 103, 1003, 1003, '2022-09-05'),
(504, 204, 104, 1004, 1004, '2022-09-06'),
(505, 205, 105, 1005, 1005, '2022-09-07'),
(506, 206, 106, 1006, 1006, '2022-09-08'),
(507, 207, 107, 1007, 1007, '2022-09-09'),
(508, 208, 108, 1008, 1008, '2022-09-10'),
(509, 209, 109, 1009, 1009, '2022-09-11'),
(510, 210, 110, 1010, 1010, '2022-09-12'),
(511, 211, 111, 1011, 1011, '2022-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_type`
--

CREATE TABLE `transaction_type` (
  `transty_ID` int(10) DEFAULT NULL,
  `trans_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_type`
--

INSERT INTO `transaction_type` (`transty_ID`, `trans_name`) VALUES
(1001, 'Khan'),
(1001, 'Khan'),
(1002, 'Yean'),
(1003, 'Partho'),
(1004, 'Hemel'),
(1005, 'Joe'),
(1006, 'Biden'),
(1007, 'Nisha'),
(1008, 'Trump'),
(1009, 'Won'),
(1010, 'Imran'),
(1011, 'Kazi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`),
  ADD UNIQUE KEY `Admin_ID` (`Admin_ID`),
  ADD UNIQUE KEY `Contract` (`Contract`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`Report_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Res_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Ticket_ID` (`Ticket_ID`),
  ADD KEY `Admin_ID` (`Admin_ID`);

--
-- Indexes for table `train_ticket`
--
ALTER TABLE `train_ticket`
  ADD PRIMARY KEY (`Ticket_ID`);

--
-- Indexes for table `transaction_train`
--
ALTER TABLE `transaction_train`
  ADD PRIMARY KEY (`Trans_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`Ticket_ID`) REFERENCES `train_ticket` (`Ticket_ID`),
  ADD CONSTRAINT `reservation_ibfk_3` FOREIGN KEY (`Admin_ID`) REFERENCES `admin` (`Admin_ID`);
COMMIT;


--Describe table
Describe admin;
Describe customer;
Describe reports;
Describe reservation;
Describe transaction_type;
Describe transaction_train;
Describe train_ticket;

--table information
SELECT * FROM admin;
SELECT * FROM customer;
SELECT * FROM reports;
SELECT * FROM reservation;
SELECT * FROM transaction_type;
SELECT * FROM transaction_train;
SELECT * FROM train_ticket;

--Delete 
DELETE FROM admin WHERE Admin_ID = 111;

--ALTER TABLE 
ALTER TABLE admin ADD District varchar(20);

ALTER TABLE admin DROP District;

--UPDATE
UPDATE admin SET Admin_pass = 54321 WHERE Admin_ID = 115;

--DISTINCT
SELECT DISTINCT First_Name FROM admin WHERE Age <= 22;

--LIMIT
SELECT * FROM admin LIMIT 5;


--NOT
SELECT * FROM transaction_train WHERE NOT transty_ID BETWEEN 1005 AND 1010;


--BETWEEN (AND)
SELECT * FROM transaction_train WHERE transty_ID BETWEEN 1005 AND 1010;

--OR
SELECT * FROM transaction_train WHERE transty_ID = 1002 OR Customer_ID = 1005;


--WHERE,OPRETORS
SELECT * FROM transaction_train WHERE Customer_ID <= 1010 AND Admin_ID > 107;


--DESC,ASC
SELECT * FROM transaction_train ORDER BY Admin_ID DESC LIMIT 5;
SELECT * FROM transaction_train ORDER BY Admin_ID ASC LIMIT 5;


--LIKE
SELECT * FROM customer WHERE First_Name LIKE 'T%';
SELECT * FROM customer WHERE First_Name LIKE '%t%';
SELECT * FROM customer WHERE First_Name LIKE 'N___n';

--NULL
SELECT * FROM customer WHERE Address IS NULL;


--AVG
SELECT AVG(Ticket_amount)FROM train_ticket;

--SUM
SELECT SUM(Ticket_amount)FROM train_ticket;

--MAX
SELECT MAX(Ticket_amount)FROM train_ticket;

--MIN
SELECT MIN(Ticket_amount)FROM train_ticket;

--COUNT
SELECT COUNT(Ticket_amount)FROM train_ticket;

--CONCAT
SELECT Destination , CONCAT(Ticket_Name,-Ticket_ID) FROM train_ticket;

--LOWER
SELECT Destination , CONCAT(Ticket_Name,-Ticket_ID) FROM train_ticket;


--UNION
SELECT customer.First_Name ,customer.LAST_NAme FROM customer UNION SELECT admin.First_Name ,admin.LAST_Name FROM admin;


--QUERY


SELECT customer.First_Name,reservation.date_reserv FROM reservation,customer WHERE reservation.Res_ID= 207 AND customer.LAST_NAme = 'Newton';

SELECT train_ticket.Date_Ava,train_ticket.Ticket_ID,train_ticket.Time_depart,train_ticket.Time_land,train_ticket.Destination,train_ticket.Ticket_amount FROM train_ticket WHERE train_ticket.Ticket_Name = 'Salah';

SELECT * FROM train_ticket WHERE train_ticket.Destination = 'Dhaka' OR train_ticket.Ticket_amount = 15000;




