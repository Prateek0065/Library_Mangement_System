-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 12:10 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_books`
--

CREATE TABLE `add_books` (
  `id` int(11) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_image` varchar(500) NOT NULL,
  `books_author_name` varchar(50) NOT NULL,
  `books_publication_name` varchar(50) NOT NULL,
  `books_purchase_date` varchar(50) NOT NULL,
  `books_price` int(50) NOT NULL,
  `books_qty` int(50) NOT NULL,
  `available_qty` int(50) NOT NULL,
  `librarian_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_books`
--

INSERT INTO `add_books` (`id`, `books_name`, `books_image`, `books_author_name`, `books_publication_name`, `books_purchase_date`, `books_price`, `books_qty`, `available_qty`, `librarian_username`) VALUES
(1, '13 reasons why', 'books_image/d1058538681179e36ba28bbe31be3feareasons.jpg', 'JAY AsHER', 'NETFLIX', '15-07-2016', 245, 50, 10, '17BCB0015'),
(2, 'the fault in our stars', 'books_image/4670ee3b014ee84324bc273ddc551341stars.jpg', 'Nicholas Spark', 'Shailene Woodley', '12-09-2019', 700, 50, 2, '17BCB0015'),
(3, 'Notebook', 'books_image/9d7eb0d4141339dfa9fd9a8cc7455fdbnotebook.jpg', 'JAY AsHER', 'Rachel ', '12-09-2019', 700, 40, 10, '17BCB0015'),
(4, 'Wings of Fire', 'books_image/a829298890f1a1285637cf475e7816d9wings of fire.jpg', 'Abdul Kalam', 'Aruna chalan', '15-07-2016', 700, 78, 9, '17BCB0015'),
(5, 'splendid', 'books_image/8b8753cac255680dc211398680b6c25bsplendid.JPG', 'JAY AsHER', 'Rachel ', '12-09-2019', 700, 40, 2, '17BCB0015'),
(6, 'splendid', 'books_image/3e8111e4e99c0023ae48b79ea66913besplendid.JPG', 'JAY AsHER', 'Rachel ', '12-09-2019', 700, 40, 2, '17BCB0015');

-- --------------------------------------------------------

--
-- Table structure for table `issue_books`
--

CREATE TABLE `issue_books` (
  `id` int(11) NOT NULL,
  `student_enrollment` varchar(50) NOT NULL,
  `student_name` varchar(50) NOT NULL,
  `student_sem` int(50) NOT NULL,
  `student_contact` int(50) NOT NULL,
  `student_email` varchar(50) NOT NULL,
  `books_name` varchar(50) NOT NULL,
  `books_issue_date` varchar(50) NOT NULL,
  `books_return_date` varchar(50) NOT NULL,
  `student_username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issue_books`
--

INSERT INTO `issue_books` (`id`, `student_enrollment`, `student_name`, `student_sem`, `student_contact`, `student_email`, `books_name`, `books_issue_date`, `books_return_date`, `student_username`) VALUES
(1, '45', 'test test', 4, 2147483647, 'sr.pratik.vns@gmail.com', 'the night we met', '08-05-2019', '08-05-2019', 'susername'),
(6, '08', 'Puneet Srivastava', 6, 979558357, 'sr.pratik.vns@gmail.com', 'splendid', '08-05-2019', '08-05-2019', 'puns'),
(7, '0015', 'abc def', 5, 979558357, 'sai@gmail.com', '13 reasons why', '08-05-2019', '08-05-2019', 'abc'),
(8, '11', 'Prateek Srivastava', 0, 0, 'f', 'Wings of Fire', '08-05-2019', '', 'g');

-- --------------------------------------------------------

--
-- Table structure for table `librarian_registration`
--

CREATE TABLE `librarian_registration` (
  `id` int(11) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `username` text NOT NULL,
  `password` int(11) NOT NULL,
  `email` text NOT NULL,
  `contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `librarian_registration`
--

INSERT INTO `librarian_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`) VALUES
(1, 'praatu', 'Sri', '17BCB0065', 0, 'sr.pratik.vns@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_registration`
--

CREATE TABLE `student_registration` (
  `id` int(5) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `enrollment` varchar(11) NOT NULL,
  `status` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_registration`
--

INSERT INTO `student_registration` (`id`, `firstname`, `lastname`, `username`, `password`, `email`, `contact`, `sem`, `enrollment`, `status`) VALUES
(1, 'Prateek', 'Srivastava', 'g', 'ff', 'f', 0, 0, '11', 'yes'),
(7, 'test', 'test', 'test', 'test', 'sr.pratik.vns@gmail.com', 2147483647, 4, '45', 'yes'),
(8, 'john', 'snow', 'john', '0000', 'sr.pratik.vns@gmail.com', 979558357, 5, '65', 'yes'),
(9, 'jeetu', 'Bhaiya', 'Sai', '0000', 'jeetusai@gmail.com', 979558357, 5, '17', 'yes'),
(10, 'abc', 'def', 'abc', '0000', 'sai@gmail.com', 979558357, 5, '0015', 'yes'),
(11, 'Puneet', 'Srivastava', 'puns', '0000', 'sr.pratik.vns@gmail.com', 979558357, 6, '08', 'yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_books`
--
ALTER TABLE `add_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issue_books`
--
ALTER TABLE `issue_books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_registration`
--
ALTER TABLE `student_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_books`
--
ALTER TABLE `add_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `issue_books`
--
ALTER TABLE `issue_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `librarian_registration`
--
ALTER TABLE `librarian_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_registration`
--
ALTER TABLE `student_registration`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
