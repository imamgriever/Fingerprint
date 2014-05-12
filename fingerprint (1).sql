-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2014 at 11:51 
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fingerprint`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_absen_in`
--

CREATE TABLE IF NOT EXISTS `data_absen_in` (
  `id` int(80) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `keterangan` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_absen_in`
--

INSERT INTO `data_absen_in` (`id`, `waktu`, `keterangan`) VALUES
(1, '2014-05-10 18:28:28', 'NULL'),
(1, '2014-05-10 18:29:20', 'NULL'),
(1, '2014-05-10 18:30:33', 'NULL'),
(1, '2014-05-10 18:31:04', 'NULL'),
(1, '2014-05-10 18:38:02', 'NULL'),
(1, '2014-05-10 18:40:43', 'NULL'),
(1, '2014-05-10 18:40:45', 'NULL'),
(1, '2014-05-10 18:42:03', 'NULL'),
(1, '2014-05-10 18:44:22', 'NULL'),
(1, '2014-05-10 18:45:19', 'NULL'),
(1, '2014-05-10 18:46:23', 'NULL'),
(1, '2014-05-10 18:47:15', 'NULL'),
(1, '2014-05-10 18:48:54', 'NULL'),
(1, '2014-05-10 18:50:22', 'NULL'),
(1, '2014-05-10 19:38:25', 'NULL'),
(1, '2014-05-10 19:41:35', 'NULL'),
(1, '2014-05-10 19:47:04', 'NULL'),
(1, '2014-05-10 19:48:55', 'NULL'),
(1, '2014-05-10 19:50:26', 'NULL'),
(1, '2014-05-10 19:52:01', 'NULL'),
(1, '2014-05-10 19:54:23', 'NULL'),
(1, '2014-05-10 19:55:21', 'NULL'),
(1, '2014-05-10 19:57:09', 'NULL'),
(1, '2014-05-10 19:59:23', 'NULL'),
(1, '2014-05-10 19:59:35', 'NULL'),
(1, '2014-05-10 20:00:07', 'NULL'),
(1, '2014-05-10 20:01:05', 'NULL'),
(1, '2014-05-12 13:26:17', 'NULL'),
(1, '2014-05-12 13:28:35', 'NULL'),
(1, '2014-05-12 13:40:32', 'NULL'),
(1, '2014-05-12 13:41:26', 'NULL'),
(1, '2014-05-12 13:41:55', 'NULL'),
(1, '2014-05-12 13:42:40', 'NULL'),
(1, '2014-05-12 13:43:16', 'NULL'),
(1, '2014-05-12 13:43:50', 'NULL'),
(1, '2014-05-12 13:47:24', 'NULL'),
(1, '2014-05-12 13:47:59', 'NULL'),
(1, '2014-05-12 13:48:02', 'NULL'),
(2, '2014-05-12 13:48:05', 'NULL'),
(1, '2014-05-12 13:57:38', 'NULL'),
(1, '2014-05-12 13:58:23', 'NULL'),
(1, '2014-05-12 13:59:04', 'NULL'),
(1, '2014-05-12 14:02:07', 'NULL'),
(1, '2014-05-12 14:03:22', 'NULL'),
(1, '2014-05-12 14:03:38', 'NULL'),
(1, '2014-05-12 14:05:05', 'NULL'),
(1, '2014-05-12 14:06:03', 'NULL'),
(1, '2014-05-12 14:06:35', 'NULL'),
(1, '2014-05-12 14:07:09', 'NULL'),
(1, '2014-05-12 14:08:15', 'NULL'),
(1, '2014-05-12 14:08:52', 'NULL'),
(1, '2014-05-12 14:09:13', 'NULL'),
(1, '2014-05-12 14:10:00', 'NULL'),
(1, '2014-05-12 14:10:33', 'NULL'),
(1, '2014-05-12 14:11:06', 'NULL'),
(1, '2014-05-12 14:12:23', 'NULL'),
(1, '2014-05-12 14:12:39', 'NULL'),
(1, '2014-05-12 14:12:50', 'NULL'),
(1, '2014-05-12 14:13:03', 'NULL'),
(1, '2014-05-12 14:13:38', 'NULL'),
(1, '2014-05-12 14:14:56', 'NULL'),
(1, '2014-05-12 14:17:24', 'NULL'),
(4, '2014-05-12 14:17:34', 'NULL'),
(1, '2014-05-12 14:18:00', 'NULL'),
(1, '2014-05-12 16:43:44', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `data_absen_out`
--

CREATE TABLE IF NOT EXISTS `data_absen_out` (
  `id` int(80) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `keterangan` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_absen_out`
--


-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE IF NOT EXISTS `data_admin` (
  `username` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`username`, `password`) VALUES
('a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE IF NOT EXISTS `data_pegawai` (
  `id` int(80) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `alamat` varchar(80) NOT NULL,
  `umur` int(6) NOT NULL,
  `jenis_kelamin` varchar(90) NOT NULL,
  `departemen` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`id`, `nama`, `alamat`, `umur`, `jenis_kelamin`, `departemen`) VALUES
(1, 'a', 'a', 11, 'Pria', 'Staff'),
(4, 'fa', 'ew', 23, 'dd', 'cc');

-- --------------------------------------------------------

--
-- Table structure for table `keterangan_absen`
--

CREATE TABLE IF NOT EXISTS `keterangan_absen` (
  `id` int(80) NOT NULL,
  `jam_kerja` int(80) NOT NULL,
  `ketrangan` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keterangan_absen`
--

