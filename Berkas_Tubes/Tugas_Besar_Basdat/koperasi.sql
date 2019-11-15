-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2017 at 05:08 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi`
--
CREATE DATABASE IF NOT EXISTS `koperasi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `koperasi`;

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_Anggota` int(10) NOT NULL,
  `Nama_Anggota` varchar(30) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Tanggal_Lahir` date DEFAULT NULL,
  `No_Telpon` int(15) DEFAULT NULL,
  `Jenis_Kelamin` char(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_Anggota`, `Nama_Anggota`, `Alamat`, `Tanggal_Lahir`, `No_Telpon`, `Jenis_Kelamin`) VALUES
(10001, 'Disha Fitriani', 'Jl. Sapphir No. 5 Bdg', '1988-02-14', 7789309, 'P'),
(10002, 'Rini Agustin', 'Jl. Mawar No. 5 Jkt', '1989-08-17', 7793022, 'P'),
(10003, 'Donni Hutapea', 'Kosan Blackhouse', '1990-09-20', 9920390, 'L'),
(10004, 'Jaka Pradipta', 'Sukabirus 88a', '1989-01-20', 9867678, 'L'),
(10005, 'Anna Apriliana', 'Jl. Galaxi No. 29', '1989-04-03', 9920829, 'P'),
(10007, 'Rehan Ginanjar', 'Jl. Kepatihan Timur', '1989-03-09', 8378937, 'L'),
(10008, 'Disha Fitriani', 'Jl. Sapphir No. 5 Bdg', '1988-02-14', 7789309, 'P'),
(10009, 'Leni', 'Buah batu no 2, bandung', '1996-01-12', 2147483647, 'p'),
(10010, 'Syahrianzal', 'cipamokolan no 2,bandung', '1990-05-21', 2147483647, 'L'),
(10011, 'Kartika', 'Soreang', '1998-06-07', 2147483647, 'P'),
(10014, 'Zaenal', 'garut', '1996-01-01', 858721132, 'L');

-- --------------------------------------------------------

--
-- Table structure for table `anggota_mengajukan_pinjaman`
--

CREATE TABLE `anggota_mengajukan_pinjaman` (
  `ID_Pengajuan` int(10) NOT NULL,
  `ID_Anggota` int(10) DEFAULT NULL,
  `ID_Pinjaman` int(10) DEFAULT NULL,
  `Tanggal_Pengajuan` date DEFAULT NULL,
  `Penyetuju` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota_mengajukan_pinjaman`
--

INSERT INTO `anggota_mengajukan_pinjaman` (`ID_Pengajuan`, `ID_Anggota`, `ID_Pinjaman`, `Tanggal_Pengajuan`, `Penyetuju`) VALUES
(101, 10002, 1, '2017-02-21', 10006),
(102, 10004, 9, '2017-02-11', 10006),
(103, 10005, 8, '2017-04-15', 10006),
(104, 10007, 5, '2017-03-25', 10006),
(105, 10009, 4, '2017-04-01', 10006),
(107, 10009, 1, '2017-04-01', 10006),
(108, 10014, 4, '2017-04-01', 10006),
(109, 10014, 2, '2017-04-01', 10006);

-- --------------------------------------------------------

--
-- Table structure for table `anggota_pengurus`
--

CREATE TABLE `anggota_pengurus` (
  `ID_Anggota` int(10) NOT NULL,
  `Nama_Anggota` varchar(30) DEFAULT NULL,
  `Username` varchar(20) DEFAULT NULL,
  `Password` varchar(10) DEFAULT NULL,
  `Alamat` varchar(100) DEFAULT NULL,
  `Tanggal_Lahir` date DEFAULT NULL,
  `No_Telpon` int(15) DEFAULT NULL,
  `Jenis_Kelamin` char(15) DEFAULT NULL,
  `Jabatan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota_pengurus`
--

INSERT INTO `anggota_pengurus` (`ID_Anggota`, `Nama_Anggota`, `Username`, `Password`, `Alamat`, `Tanggal_Lahir`, `No_Telpon`, `Jenis_Kelamin`, `Jabatan`) VALUES
(10006, 'Rio Iswandi', 'Riorio', 'rio@123', 'Jl. Wiro No. 212', '1991-12-02', 9829123, 'L', 'Manager'),
(10008, 'Ilsya Kinansyiar', 'Kinan_ilsya', 'ilsya@123', 'Jl. Lentera No. 12', '1991-02-02', 9828273, 'P', 'Sekertaris');

-- --------------------------------------------------------

--
-- Table structure for table `angsuran`
--

CREATE TABLE `angsuran` (
  `ID_Angsuran` int(10) NOT NULL,
  `ID_Pengajuan` int(10) DEFAULT NULL,
  `Jumlah_Angsuran` varchar(30) DEFAULT NULL,
  `Tanggal_Angsuran` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angsuran`
--

INSERT INTO `angsuran` (`ID_Angsuran`, `ID_Pengajuan`, `Jumlah_Angsuran`, `Tanggal_Angsuran`) VALUES
(1101, 101, 'Rp. 250.000', '2017-03-21'),
(1102, 102, 'Rp. 333.333', '2017-03-11'),
(1103, 103, 'Rp. 500.000', '2017-05-15'),
(1104, 104, 'Rp. 166.667', '2017-04-21'),
(1105, 105, 'Rp. 500.000', '2017-02-01'),
(1106, 105, 'Rp. 500.000', '2017-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `mengajukan`
--

CREATE TABLE `mengajukan` (
  `ID_Anggota` int(10) DEFAULT NULL,
  `ID_Pinjaman` int(10) DEFAULT NULL,
  `Tanggal_Pengajuan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mengajukan`
--

INSERT INTO `mengajukan` (`ID_Anggota`, `ID_Pinjaman`, `Tanggal_Pengajuan`) VALUES
(10002, 1, '2017-02-21'),
(10004, 9, '2017-02-11'),
(10005, 8, '2017-04-15'),
(10007, 5, '2017-03-25'),
(10009, 2, '2017-04-01'),
(10009, 4, '2017-04-01'),
(10014, 6, '2017-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `menyimpan`
--

CREATE TABLE `menyimpan` (
  `ID_Anggota` int(10) DEFAULT NULL,
  `ID_Simpanan` varchar(10) DEFAULT NULL,
  `Tanggal_Simpan` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menyimpan`
--

INSERT INTO `menyimpan` (`ID_Anggota`, `ID_Simpanan`, `Tanggal_Simpan`) VALUES
(10001, '001', '2017-01-07'),
(10001, '003', '2017-01-07'),
(10002, '002', '2017-02-18'),
(10002, '003', '2017-02-18'),
(10003, '002', '2017-02-12'),
(10003, '002', '2017-02-12'),
(10003, '002', '2017-03-12'),
(10003, '003', '2017-04-12'),
(10004, '002', '2017-01-27'),
(10004, '003', '2017-01-27'),
(10005, '002', '2017-04-04'),
(10005, '003', '2017-04-04'),
(10007, '002', '2017-03-20'),
(10007, '003', '2017-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `pinjaman`
--

CREATE TABLE `pinjaman` (
  `ID_Pinjaman` int(10) NOT NULL,
  `Jumlah_Pinjaman` varchar(50) DEFAULT NULL,
  `Lama_Pinjaman` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjaman`
--

INSERT INTO `pinjaman` (`ID_Pinjaman`, `Jumlah_Pinjaman`, `Lama_Pinjaman`) VALUES
(1, 'Rp. 500.000,-', '2 Bln'),
(2, 'Rp. 500.000,-', '4 Bln'),
(3, 'Rp. 500.000,-', '6 Bln'),
(4, 'Rp. 1.000.000,-', '2 Bln'),
(5, 'Rp. 1.000.000,-', '4 Bln'),
(6, 'Rp. 1.000.000,-', '6 Bln'),
(7, 'Rp. 2.000.000,-', '2 Bln'),
(8, 'Rp. 2.000.000,-', '4 Bln'),
(9, 'Rp. 2.000.000,-', '6 Bln'),
(10, 'Rp. 3.000.000,-', '2 Bln'),
(11, 'Rp. 3.000.000,-', '4 Bln'),
(12, 'Rp. 3.000.000,-', '6 Bln'),
(13, 'Rp. 4.000.000,-', '2 Bln'),
(14, 'Rp. 4.000.000,-', '4 Bln'),
(15, 'Rp. 4.000.000,-', '6 Bln'),
(16, 'Rp. 5.000.000,-', '2 Bln'),
(17, 'Rp. 5.000.000,-', '4 Bln'),
(18, 'Rp. 5.000.000,-', '6 Bln');

-- --------------------------------------------------------

--
-- Table structure for table `simpanan`
--

CREATE TABLE `simpanan` (
  `ID_Simpanan` varchar(10) NOT NULL,
  `Keterangan` char(10) DEFAULT NULL,
  `Jumlah_Simpanan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simpanan`
--

INSERT INTO `simpanan` (`ID_Simpanan`, `Keterangan`, `Jumlah_Simpanan`) VALUES
('001', 'Wajib/Thn', 'Rp. 120,000,-'),
('002', 'Wajib/Bln', 'Rp. 10.000,-'),
('003', 'Pokok(1x)', 'Rp. 212.000,-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_Anggota`);

--
-- Indexes for table `anggota_mengajukan_pinjaman`
--
ALTER TABLE `anggota_mengajukan_pinjaman`
  ADD PRIMARY KEY (`ID_Pengajuan`),
  ADD KEY `ID_Anggota` (`ID_Anggota`),
  ADD KEY `ID_Pinjaman` (`ID_Pinjaman`),
  ADD KEY `Penyetuju` (`Penyetuju`);

--
-- Indexes for table `anggota_pengurus`
--
ALTER TABLE `anggota_pengurus`
  ADD PRIMARY KEY (`ID_Anggota`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD UNIQUE KEY `ID_Angsuran` (`ID_Angsuran`),
  ADD KEY `ID_Pengajuan` (`ID_Pengajuan`);

--
-- Indexes for table `mengajukan`
--
ALTER TABLE `mengajukan`
  ADD KEY `ID_Anggota` (`ID_Anggota`),
  ADD KEY `ID_Pinjaman` (`ID_Pinjaman`);

--
-- Indexes for table `menyimpan`
--
ALTER TABLE `menyimpan`
  ADD KEY `ID_Anggota` (`ID_Anggota`),
  ADD KEY `ID_Simpanan` (`ID_Simpanan`);

--
-- Indexes for table `pinjaman`
--
ALTER TABLE `pinjaman`
  ADD PRIMARY KEY (`ID_Pinjaman`);

--
-- Indexes for table `simpanan`
--
ALTER TABLE `simpanan`
  ADD PRIMARY KEY (`ID_Simpanan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `ID_Anggota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10015;
--
-- AUTO_INCREMENT for table `anggota_mengajukan_pinjaman`
--
ALTER TABLE `anggota_mengajukan_pinjaman`
  MODIFY `ID_Pengajuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `anggota_pengurus`
--
ALTER TABLE `anggota_pengurus`
  MODIFY `ID_Anggota` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10009;
--
-- AUTO_INCREMENT for table `angsuran`
--
ALTER TABLE `angsuran`
  MODIFY `ID_Angsuran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1107;
--
-- AUTO_INCREMENT for table `pinjaman`
--
ALTER TABLE `pinjaman`
  MODIFY `ID_Pinjaman` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota_mengajukan_pinjaman`
--
ALTER TABLE `anggota_mengajukan_pinjaman`
  ADD CONSTRAINT `anggota_mengajukan_pinjaman_ibfk_1` FOREIGN KEY (`ID_Anggota`) REFERENCES `anggota` (`ID_Anggota`),
  ADD CONSTRAINT `anggota_mengajukan_pinjaman_ibfk_2` FOREIGN KEY (`ID_Pinjaman`) REFERENCES `pinjaman` (`ID_Pinjaman`),
  ADD CONSTRAINT `anggota_mengajukan_pinjaman_ibfk_3` FOREIGN KEY (`Penyetuju`) REFERENCES `anggota_pengurus` (`ID_Anggota`);

--
-- Constraints for table `angsuran`
--
ALTER TABLE `angsuran`
  ADD CONSTRAINT `angsuran_ibfk_1` FOREIGN KEY (`ID_Pengajuan`) REFERENCES `anggota_mengajukan_pinjaman` (`ID_Pengajuan`);

--
-- Constraints for table `mengajukan`
--
ALTER TABLE `mengajukan`
  ADD CONSTRAINT `mengajukan_ibfk_1` FOREIGN KEY (`ID_Anggota`) REFERENCES `anggota` (`ID_Anggota`),
  ADD CONSTRAINT `mengajukan_ibfk_2` FOREIGN KEY (`ID_Pinjaman`) REFERENCES `pinjaman` (`ID_Pinjaman`);

--
-- Constraints for table `menyimpan`
--
ALTER TABLE `menyimpan`
  ADD CONSTRAINT `menyimpan_ibfk_1` FOREIGN KEY (`ID_Anggota`) REFERENCES `anggota` (`ID_Anggota`),
  ADD CONSTRAINT `menyimpan_ibfk_2` FOREIGN KEY (`ID_Simpanan`) REFERENCES `simpanan` (`ID_Simpanan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
