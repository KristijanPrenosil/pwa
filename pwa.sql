-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2023 at 02:14 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwa`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) NOT NULL,
  `prezime` varchar(32) NOT NULL,
  `korisnicko_ime` varchar(32) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(1, 'Kristijan', 'Prenosil', 'Krisp', '$2y$10$BJiYV5pyR/KVEdAZ1jeeFuQtxbO3FBSFKeZi3qB30j8zC.nE34/Le', 0),
(2, 'Kristijan', 'Prenosil', 'kprenosil@tvz.hr', '$2y$10$vAcKWxYKwVcxgJXCKCQPnu2TlULtP46Qsvq67AP/pj2TzT/j0j0BK', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `Naslov` varchar(64) DEFAULT NULL,
  `Kratki` varchar(64) DEFAULT NULL,
  `Sadrzaj` text DEFAULT NULL,
  `Slika` varchar(64) DEFAULT NULL,
  `Kategorija` varchar(64) DEFAULT NULL,
  `Arhiva` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `Naslov`, `Kratki`, `Sadrzaj`, `Slika`, `Kategorija`, `Arhiva`) VALUES
(73, 'Lorem ipsum dolor sit amet', 'Bayern manad?er dobio otkaz zbog privatnih razloga', 'Curabitur vehicula placerat velit, a facilisis sapien suscipit nec. Etiam pellentesque enim est, id suscipit ipsum eleifend in. Suspendisse orci magna, ullamcorper ac enim et, semper euismod elit.', 'politik3.png', 'Sport', 0),
(74, 'Curabitur vehicula ', 'Nunc gravida tincidunt interdum. Sed sed nisl sit amet ipsum eff', 'Proin bibendum porta ipsum vitae condimentum. Aenean quis nisl et nisi semper commodo at eu massa. Praesent pulvinar iaculis molestie. Suspendisse porttitor lacinia neque nec ultricies. Sed a feugiat dui, id viverra quam. Curabitur luctus egestas nibh vitae aliquet. Etiam euismod, metus id faucibus convallis, magna lectus dapibus justo, eu commodo sapien tortor sit amet quam. Suspendisse facilisis arcu neque, nec viverra erat consequat vel. Donec molestie odio ut dapibus efficitur. Integer eget lobortis libero.', 'covjek.jpg', 'Sport', 0),
(75, 'Aliquam diam velit, volutpa.', 'Aliquam diam velit, volutpat sed eros eget, eleifend convallis s', 'Aliquam diam velit, volutpat sed eros eget, eleifend convallis sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'da.jpg', 'Sport', 0),
(76, 'Aliquam diam velit.', 'Suspendisse porttitor lacinia neque nec ultricies. Sed a feugiat', 'Aliquam diam velit, volutpat sed eros eget, eleifend convallis sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In sed massa aliquam, iaculis metus non, posuere ante. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'soker.jpg', 'Sport', 0),
(77, 'Himenaeos.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Nunc eget dui erat. Maecenas faucibus venenatis lacus, id maximus lacus pellentesque ac. Aenean ultricies odio eu blandit accumsan. Morbi leo erat, tristique sed risus non, fermentum feugiat mauris. Duis sit amet erat pulvinar, accumsan nisl sed, ullamcorper tellus. Nullam massa sem, tincidunt ac vulputate in, lacinia non nulla. In vestibulum gravida nisl vitae porttitor.', 'politik.jpeg', 'Politka', 0),
(78, 'Nunc gravida tincidunt.', 'Nullam metus urna, cursus at lobortis quis, egestas dignissim ve', 'Aenean quis nisl et nisi semper commodo at eu massa. Praesent pulvinar iaculis molestie. Suspendisse porttitor lacinia neque nec ultricies. Sed a feugiat dui, id viverra quam. Curabitur luctus egestas nibh vitae aliquet. Etiam euismod, metus id faucibus convallis, magna lectus dapibus justo, eu commodo sapien tortor sit amet quam. Suspendisse facilisis arcu neque, nec viverra erat consequat vel. Donec molestie odio ut dapibus efficitur. Integer eget lobortis libero.', 'politik2.png', 'Politka', 0),
(79, 'Lorem ipsum dolor sit amet.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabit', 'Nunc gravida tincidunt interdum. Sed sed nisl sit amet ipsum efficitur dignissim sit amet nec erat. Pellentesque nec magna vitae purus pulvinar ornare. Duis id est ut felis euismod dapibus. Nullam metus urna, cursus at lobortis quis, egestas dignissim velit. In mollis aliquet vehicula. Proin bibendum porta ipsum vitae condimentum. Aenean quis nisl et nisi semper commodo at eu massa. Praesent pulvinar iaculis molestie. Suspendisse porttitor lacinia neque nec ultricies. Sed a feugiat dui, id viverra quam. Curabitur luctus egestas nibh vitae aliquet. Etiam euismod, metus id faucibus convallis, magna lectus dapibus justo, eu commodo sapien tortor sit amet quam. Suspendisse facilisis arcu neque, nec viverra erat consequat vel. Donec molestie odio ut dapibus efficitur. Integer eget lobortis libero.', 'politik3.png', 'Politka', 0),
(80, 'dadadadada', 'dadadadada', 'dadadadada', 'druga.png', 'Sport', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
