-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2014 at 08:30 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbakademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE IF NOT EXISTS `dosen` (
  `nip` varchar(12) NOT NULL,
  `nama_dosen` varchar(40) NOT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip`, `nama_dosen`) VALUES
('001', 'Dra. Sri Rezeki'),
('002', 'Dra, Andiani'),
('003', 'Amir Murtako, M.T.'),
('005', 'Agung');

-- --------------------------------------------------------

--
-- Table structure for table `khs`
--

CREATE TABLE IF NOT EXISTS `khs` (
  `nim` varchar(10) NOT NULL,
  `smt` varchar(3) DEFAULT NULL,
  `ta` varchar(9) DEFAULT NULL,
  `jum_sks` int(11) DEFAULT NULL,
  `ipk` float DEFAULT NULL,
  KEY `nim` (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`nim`, `smt`, `ta`, `jum_sks`, `ipk`) VALUES
('4512210011', '3', '2014/2015', 2, 4),
('4512210011', '5', '2013/2014', 2, 4),
('4512210011', '5', '2014/2015', 2, 4),
('4512210025', '3', '2013/1014', 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(35) NOT NULL,
  `password` varchar(35) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin'),
('kurakura', '68c73b12dbe53b0dbf2ef637fe2134c4'),
('haseum', 'haseum'),
('asd', 'asd'),
('reza', 'admin'),
('masa', 'sih');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `jurusan` varchar(30) DEFAULT NULL,
  `jk` varchar(30) DEFAULT NULL,
  `ta` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `jk`, `ta`) VALUES
('4512210001', 'Wahyu Hidayat', 'Informatika', 'laki-laki', '2012'),
('4512210011', 'Reza Saputra', 'Informatika', 'laki-laki', '2012'),
('4512210035', 'Andri', 'Informatika', 'laki-laki', '2012');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE IF NOT EXISTS `matakuliah` (
  `kode_mk` varchar(8) NOT NULL,
  `nama_mk` varchar(40) NOT NULL,
  `sks` int(11) NOT NULL,
  `smt` varchar(3) NOT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`, `smt`) VALUES
('MI31141', 'Pancasila', 2, '1'),
('MI31142', 'Bahasa Inggris I', 2, '1'),
('mi31144', 'Desain Web', 3, '2');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE IF NOT EXISTS `penilaian` (
  `nim` varchar(10) NOT NULL,
  `kode_mk` varchar(8) NOT NULL,
  `semester` int(2) NOT NULL,
  `nilai_tugas` varchar(3) NOT NULL,
  `nilai_uts` varchar(3) NOT NULL,
  `nilai_uas` varchar(3) NOT NULL,
  KEY `nim` (`nim`,`kode_mk`),
  KEY `kode_mk` (`kode_mk`),
  KEY `nim_2` (`nim`),
  KEY `kode_mk_2` (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`nim`, `kode_mk`, `semester`, `nilai_tugas`, `nilai_uts`, `nilai_uas`) VALUES
('4512210011', 'mi31141', 5, '90', '89', '90'),
('4512210035', 'mi31144', 5, '78', '88', '90');

-- --------------------------------------------------------

--
-- Table structure for table `tempkhs`
--

CREATE TABLE IF NOT EXISTS `tempkhs` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `dosen` varchar(40) NOT NULL,
  `semester` varchar(3) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `prodi` varchar(30) NOT NULL,
  `kelas` varchar(6) NOT NULL,
  `kode_mk` varchar(8) NOT NULL,
  `nama_mk` varchar(40) NOT NULL,
  `sks` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `sksxnilai` int(11) NOT NULL,
  `keterangan` char(1) NOT NULL,
  `totalsks` int(11) NOT NULL,
  `totalsksxnilai` int(11) NOT NULL,
  `ip` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempkhs`
--

INSERT INTO `tempkhs` (`nim`, `nama`, `dosen`, `semester`, `fakultas`, `prodi`, `kelas`, `kode_mk`, `nama_mk`, `sks`, `nilai`, `sksxnilai`, `keterangan`, `totalsks`, `totalsksxnilai`, `ip`) VALUES
('12312', 'qewrqw', 'qefrwefw', '2', 'yhrhrtrt', 'qewrwed', 'wewq', '132wedw', 'sdfdew', 2, 4, 8, 'A', 18, 60, 4);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `matakuliah` (`kode_mk`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
