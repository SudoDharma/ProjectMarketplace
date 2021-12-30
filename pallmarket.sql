-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 30, 2021 at 08:50 AM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pallmarket`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `kondisi` varchar(25) NOT NULL,
  `harga` int(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `deskripsi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `username`, `nama_barang`, `kategori`, `kondisi`, `harga`, `foto`, `deskripsi`) VALUES
(1, 'vickyadrii', 'Serum Scarlett ', 'Kosmetik', 'Barang Baru', 65000, 'cosmetic.png', 'ini adalah saya'),
(3, 'admin', 'iphone', 'Elektronik', 'seken', 2000000, 'iphone11.jfif', 'hp'),
(9, 'admin', 'PES 2020', 'game', 'baru', 10000, '29113046pes.jfif', 'Kaset PS4'),
(11, 'alvinchristian', 'Macbook ', 'gadget', 'baru', 20000000, '30081828Apple Jogja » iPhone dan MacBook Second Jogja.jpg', 'RAM : 8 GB\r\nChip : M1\r\nStorage : 512 GB'),
(12, 'alvinchristian', 'Scarlet Serum', 'kosmetik', 'baru', 65000, '30081855 .jpg', 'Acnes'),
(13, 'alvinchristian', 'Hoodie', 'pakaian', 'baru', 150000, '30082145Specialty Personalized Designs_  by Partyify on Etsy.jpg', 'Warna Hitam'),
(14, 'alvinchristian', 'Sprei Motif', 'lainnya', 'baru', 150000, '30082609Sprei Katun Panca.jpg', 'Katun'),
(15, 'alvinchristian', 'Kabel USB Type C', 'elektronik', 'baru', 30000, '30082806Type C Micro USB Cable.jpg', 'Type C'),
(16, 'ferrirama', 'Harddisk', 'elektronik', 'baru', 500000, '30083343HDD Hard Disk Drive.png', 'Penyimpanan 1 TB'),
(17, 'ferrirama', 'Flashdisk Sandisk', 'elektronik', 'baru', 100000, '30083432Flashdisk Sandisk.jpg', 'Storage 32 GB'),
(18, 'ferrirama', 'Keyboard', 'elektronik', 'baru', 200000, '30083456Monochrome Raven.jpg', 'Mekanikal Keyboard'),
(19, 'ferrirama', 'Mouse Gaming', 'elektronik', 'baru', 250000, '30083520Logitech G500 Gaming Mouse  IDR 648_000.jpg', 'Logitech G500 Gaming Mouse'),
(20, 'ferrirama', 'Headset', 'elektronik', 'baru', 200000, '30083647Unknown.jpg', 'Warna Putih\r\nAudio Jack'),
(21, 'admin', 'Kentang Goreng', 'makanan', 'baru', 15000, '30084232Kentang Goreng ala Joybox.jpg', 'Kentang Goreng Kriuk Spesial'),
(22, 'admin', 'Burger', 'makanan', 'baru', 20000, '30084256Best burger recipes.jpg', 'Burger Chicken Fillet Keju'),
(23, 'admin', 'Meja', 'furnitur', 'baru', 1000000, '30084341meja kerja.jpg', 'Warna : Putih\r\nPanjang 120 cm\r\nLebar 60 cm'),
(24, 'f55119069', 'Case iPhone', 'lainnya', 'baru', 50000, '30084655Funda colors.jpg', 'Iphone 11 '),
(25, 'f55119069', 'Memo Estetik', 'lainnya', 'baru', 80000, '30084753Mara-Mi Russell & Hazel Apg.jpg', 'Transparant, Kaca');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `whatsapp` varchar(16) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `whatsapp`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '82239115329', '1234'),
(7, 'f55119069', 'vickyadri290501@gmail.com', '82393012925', '123'),
(8, 'vickyadrii', 'Vickyadri@gmail.com', '82393012925', 'vickyadri29'),
(9, 'alvinchristian', 'alvintherry20@gmail.com', '82290491884', '23122001'),
(10, 'ferrirama', 'ferri69@gmail.com', '82250036483', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
