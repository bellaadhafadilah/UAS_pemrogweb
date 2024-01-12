-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2024 at 06:01 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bimbel`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id_user`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Adela Setiabudi Prawibowo', 'setiabudiq@gmail.com', 'e19d5cd5af0378da05f63f891c7467af', 'admin'),
(2, 'Alvaro', 'Alvaro@gmail.com', 'd0e46158db756016f8c42700c6bb1a89', 'user'),
(3, 'Bella Adha', 'bella@gmail.com', '993acec11ef1a181f9ac78f9a5b824ab', 'admin'),
(4, 'Simut', 'mutsi@gmail.com', '5281e2e43748e46574a2089f2030e5bf', 'user'),
(5, 'Ramanda', 'ramanda@gmail.com', '25af84a96fdf800f6ced94a9d1c2e81c', 'admin'),
(6, 'Setiabudi', 'setiabud2205@gmail.com', 'bfe84f9b258404dde399993f2933a7d9', 'admin'),
(7, 'bella', 'bellaadha@gmail.com', 'c2b9a64db6c5c5187f62f9f8871c1d1c', 'admin'),
(8, 'Wafa Lailatul', 'wafa@gmail.com', '8a9b6651e1c37d18e9ae263d8a2b83b9', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `detil_paket`
--

CREATE TABLE `detil_paket` (
  `id_detil_paket` int(11) NOT NULL,
  `PAKET_BELAJAR_id_paket_belajar` int(11) NOT NULL,
  `MATA_PELAJARAN_id_mapel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detil_paket`
--

INSERT INTO `detil_paket` (`id_detil_paket`, `PAKET_BELAJAR_id_paket_belajar`, `MATA_PELAJARAN_id_mapel`) VALUES
(231, 10228, 1),
(232, 10227, 3),
(233, 10224, 4),
(234, 10225, 5);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE `gender` (
  `id_gender` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id_gender`, `gender`) VALUES
(0, 'Perempuan'),
(1, 'Laki-laki');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int(11) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `no_kontak` int(11) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `speasialisasi` varchar(15) NOT NULL,
  `gender_id_gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `no_kontak`, `alamat`, `speasialisasi`, `gender_id_gender`) VALUES
(1, 'Dimas Evan Rivaldii', 2147483646, 'Brebes', 'Bahasa Inggris', 1),
(2, 'Bambang', 2147483647, 'Tegal', 'Bahasa Indonesi', 1),
(3, 'Shearen rike hasnita', 2147483647, 'Pemalang', 'Matematika', 0),
(4, 'Jheslin anastasya', 2147483647, 'Brebes', 'Fisika', 0),
(5, 'M.Heru setiadi', 2147483647, 'Brebes', 'Kimia', 1),
(6, 'Abadillah', 2147483647, 'Tegal', 'Agama Islam', 1),
(7, 'Iin nafisatun hayat', 2147483647, 'Brebes', 'PKN', 0),
(8, 'Filla abdilah hernaen', 2147483647, 'Brebes', 'Ekonomi', 1),
(9, 'Jihan farah audy', 2147483647, 'Tegal', 'Sosiologi', 0),
(10, 'Nur isti komah', 2147483647, 'Pemalang', 'Matematika', 0),
(11, 'Rafell', 2147483647, 'Pemalang', 'Bahasa Inggris', 1),
(12, 'Della claudia', 2147483647, 'Tegal', 'Bahasa Indonesi', 0),
(13, 'Anne ajeng', 2147483647, 'Brebes', 'Bahasa Jawa', 0),
(14, 'Desvita maharani', 2147483647, 'Tegal', 'Kimia', 0),
(15, 'Refi ananda', 2147483647, 'Brebes', 'Fisika', 1),
(16, 'Fakih agusta', 2147483647, 'Tegal', 'Ekonomi', 1),
(17, 'Mirzan pradani', 2147483647, 'Pemalang', 'Sosiologi', 1),
(18, 'Jeje', 2147483647, 'Tegal', 'PKN', 1),
(19, 'Abella', 2147483647, 'Tegal', 'Bahasa Inggris', 0),
(20, 'Rudi', 2147483647, 'Tegal', 'Bahasa Jawa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kbm`
--

CREATE TABLE `kbm` (
  `id_kbm` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `GURU_id_guru` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kbm`
--

INSERT INTO `kbm` (`id_kbm`, `tanggal`, `GURU_id_guru`) VALUES
(101, '2022-03-01', 1),
(102, '2022-03-02', 2),
(103, '2022-03-03', 3),
(104, '2022-03-04', 4),
(105, '2022-03-05', 5),
(106, '2022-03-06', 6),
(107, '2022-03-07', 7),
(108, '2022-03-08', 8),
(109, '2022-03-09', 9),
(110, '2022-03-10', 10),
(111, '2022-03-11', 11),
(112, '2022-03-12', 12),
(113, '2022-03-13', 13),
(114, '2022-03-14', 14),
(115, '2022-03-15', 15),
(116, '2022-03-16', 16),
(117, '2022-03-17', 17),
(118, '2022-03-18', 18),
(119, '2022-03-19', 19),
(120, '2022-03-20', 20),
(121, '2022-03-21', 1),
(122, '2022-03-22', 2),
(123, '2022-03-23', 3),
(124, '2022-03-24', 4),
(125, '2022-03-25', 5),
(126, '2022-03-26', 6),
(127, '2022-03-27', 7),
(128, '2022-03-28', 8),
(129, '2022-03-29', 9),
(130, '2022-03-30', 10),
(131, '2022-03-31', 11),
(132, '2022-04-01', 12),
(133, '2022-04-02', 13),
(134, '2022-04-03', 14),
(135, '2022-04-04', 15),
(136, '2022-04-05', 16),
(137, '2022-04-06', 17),
(138, '2022-04-07', 18),
(139, '2022-04-08', 19),
(140, '2022-04-09', 20),
(141, '2022-04-10', 1),
(142, '2022-04-11', 2),
(143, '2022-04-12', 3),
(144, '2022-04-13', 4),
(145, '2022-04-14', 5),
(146, '2022-04-15', 6),
(147, '2022-04-16', 7),
(148, '2022-04-17', 8),
(149, '2022-04-18', 9),
(150, '2022-04-19', 10),
(151, '2022-04-20', 11),
(152, '2022-04-21', 12),
(153, '2022-04-22', 13),
(154, '2022-04-23', 14),
(155, '2022-04-24', 15),
(156, '2022-04-25', 16),
(157, '2022-04-26', 17),
(158, '2022-04-27', 18),
(159, '2022-04-28', 19),
(160, '2022-04-29', 20),
(161, '2022-04-30', 1),
(162, '2022-05-01', 2),
(163, '2022-05-02', 3),
(164, '2022-05-03', 4),
(165, '2022-05-04', 5),
(166, '2022-05-05', 6),
(167, '2022-05-06', 7),
(168, '2022-05-07', 8),
(169, '2022-05-08', 9),
(170, '2022-05-09', 10),
(171, '2022-05-10', 11),
(172, '2022-05-11', 12),
(173, '2022-05-12', 13),
(174, '2022-05-13', 14),
(175, '2022-05-14', 15),
(176, '2022-05-15', 16),
(177, '2022-05-16', 17),
(178, '2022-05-17', 18),
(179, '2022-05-18', 19),
(180, '2022-05-19', 20),
(181, '2022-05-20', 1),
(182, '2022-05-21', 2),
(183, '2022-05-22', 3),
(184, '2022-05-23', 4),
(185, '2022-05-24', 5),
(186, '2022-05-25', 6),
(187, '2022-05-26', 7),
(188, '2022-05-27', 8),
(189, '2022-05-28', 9),
(190, '2022-05-29', 10),
(191, '2022-05-30', 11),
(192, '2022-05-31', 12),
(193, '2022-06-01', 13),
(194, '2022-06-02', 14),
(195, '2022-06-03', 15),
(196, '2022-06-04', 16),
(197, '2022-06-05', 17),
(198, '2022-06-06', 18),
(199, '2022-06-07', 19),
(200, '2022-06-08', 20),
(201, '2022-06-09', 1),
(202, '2022-06-10', 2),
(203, '2022-06-11', 3),
(204, '2022-06-12', 4),
(205, '2022-06-13', 5),
(206, '2022-06-14', 6),
(207, '2022-06-15', 7),
(208, '2022-06-16', 8),
(209, '2022-06-17', 9),
(210, '2022-06-18', 10),
(211, '2022-06-19', 11),
(212, '2022-06-20', 12),
(213, '2022-06-21', 13),
(214, '2022-06-22', 14),
(215, '2022-06-23', 15),
(216, '2022-06-24', 16),
(217, '2022-06-25', 17),
(218, '2022-06-26', 18),
(219, '2022-06-27', 19),
(220, '2022-06-28', 20),
(221, '2022-06-29', 1),
(222, '2022-06-30', 2),
(223, '2022-07-01', 3),
(224, '2022-07-02', 4),
(225, '2022-07-03', 5),
(226, '2022-07-04', 6),
(227, '2022-07-05', 7),
(228, '2022-07-06', 8),
(229, '2022-07-07', 9),
(230, '2022-07-08', 10),
(231, '2022-07-09', 11),
(232, '2022-07-10', 12),
(233, '2022-07-11', 13),
(234, '2022-07-12', 14),
(235, '2022-07-13', 15),
(236, '2022-07-14', 16),
(237, '2022-07-15', 17),
(238, '2022-07-16', 18),
(239, '2022-07-17', 19),
(240, '2022-07-18', 20),
(241, '2022-07-19', 1),
(242, '2022-07-20', 2),
(243, '2022-07-21', 3),
(244, '2022-07-22', 4),
(245, '2022-07-23', 5),
(246, '2022-07-24', 6),
(247, '2022-07-25', 7),
(248, '2022-07-26', 8),
(249, '2022-07-27', 9),
(250, '2022-07-28', 10),
(251, '2022-07-29', 11),
(252, '2022-07-30', 12),
(253, '2022-07-31', 13),
(254, '2022-08-01', 14),
(255, '2022-08-02', 15),
(256, '2022-08-03', 16),
(257, '2022-08-04', 17),
(258, '2022-08-05', 18),
(259, '2022-08-06', 19),
(260, '2022-08-07', 20),
(261, '2022-08-08', 1),
(262, '2022-08-09', 2),
(263, '2022-08-10', 3),
(264, '2022-08-11', 4),
(265, '2022-08-12', 5),
(266, '2022-08-13', 6),
(267, '2022-08-14', 7),
(268, '2022-08-15', 8),
(269, '2022-08-16', 9),
(270, '2022-08-17', 10),
(271, '2022-08-18', 11),
(272, '2022-08-19', 12),
(273, '2022-08-20', 13),
(274, '2022-08-21', 14),
(275, '2022-08-22', 15),
(276, '2022-08-23', 16),
(277, '2022-08-24', 17),
(278, '2022-08-25', 18),
(279, '2022-08-26', 19),
(280, '2022-08-27', 20),
(281, '2022-08-28', 1),
(282, '2022-08-29', 2),
(283, '2022-08-30', 3),
(284, '2022-08-31', 4),
(285, '2022-09-01', 5),
(286, '2022-09-02', 6),
(287, '2022-09-03', 7),
(288, '2022-09-04', 8),
(289, '2022-09-05', 9),
(290, '2022-09-06', 10),
(291, '2022-09-07', 11),
(292, '2022-09-08', 12),
(293, '2022-09-09', 13),
(294, '2022-09-10', 14),
(295, '2022-09-11', 15),
(296, '2022-09-12', 16),
(297, '2022-09-13', 17),
(298, '2022-09-14', 18),
(299, '2022-09-15', 19),
(300, '2022-09-16', 20);

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `status_kehadiran` varchar(15) NOT NULL,
  `Kbm_id_kbm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(15) NOT NULL,
  `GURU_id_guru` int(11) NOT NULL,
  `tingkatan_id_tingkatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id_mapel`, `nama_mapel`, `GURU_id_guru`, `tingkatan_id_tingkatan`) VALUES
(1, 'Bahasa Inggris', 1, 1),
(2, 'Bahasa Indonesi', 2, 1),
(3, 'Matematika', 4, 1),
(4, 'Fisika', 5, 3),
(5, 'Kimia', 6, 3),
(6, 'Agama Islam', 7, 1),
(7, 'PKN', 8, 1),
(8, 'Ekonomi', 9, 3),
(9, 'Sosiologi', 10, 3),
(10, 'Matematika', 11, 1),
(11, 'Bahasa Inggris', 12, 1),
(12, 'Bahasa Indonesi', 13, 1),
(13, 'Bahasa Jawa', 14, 1),
(14, 'Kimia', 15, 3),
(15, 'Fisika', 16, 3),
(16, 'Ekonomi', 17, 3),
(17, 'Sosiologi', 18, 3),
(18, 'PKN', 19, 1),
(19, 'Bahasa Inggris', 20, 1),
(20, 'Bahasa Jawa', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `paket_belajar`
--

CREATE TABLE `paket_belajar` (
  `id_paket_belajar` int(11) NOT NULL,
  `nama_paket` varchar(20) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `biaya_pendidikan` int(11) NOT NULL,
  `tahun_kurikulum` date NOT NULL,
  `lama_studi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket_belajar`
--

INSERT INTO `paket_belajar` (`id_paket_belajar`, `nama_paket`, `deskripsi`, `biaya_pendidikan`, `tahun_kurikulum`, `lama_studi`) VALUES
(10224, 'paket Studifun', 'Belajar dengan beberapa mapel lebih menyenangkan', 150000, '2020-06-09', 3),
(10225, 'paket MathFun', 'Yuk belajar matematika dengan cara yang lebih muda', 200000, '2020-06-09', 4),
(10227, 'paket UN', 'Yuk belajar lebih awal untuk persiapan Ujian Nasio', 450000, '2013-05-06', 12),
(10228, 'paket welcome school', 'Dalam rangka menyambut hari pertama sekolah ,kita ', 250000, '2012-02-12', 5);

-- --------------------------------------------------------

--
-- Table structure for table `pilih_paket`
--

CREATE TABLE `pilih_paket` (
  `id_pilih_paket` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `SISWA_id_siswa` int(11) NOT NULL,
  `PAKET_BELAJAR_id_paket_belajar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pilih_paket`
--

INSERT INTO `pilih_paket` (`id_pilih_paket`, `tanggal`, `SISWA_id_siswa`, `PAKET_BELAJAR_id_paket_belajar`) VALUES
(12215, '2021-11-13', 1809549015, 10228),
(12217, '2023-09-11', 1184727400, 10228),
(12225, '2022-04-26', 1313738002, 10227),
(12234, '2022-10-25', 1809469129, 10225),
(12236, '2022-03-28', 1184728433, 10225),
(12243, '2022-08-19', 1609529028, 10224),
(12257, '2023-01-14', 1809509019, 10225),
(12265, '2021-09-12', 1109529006, 10224),
(12270, '2022-10-25', 1895220012, 10228),
(12272, '2023-02-11', 1309519031, 10225),
(12274, '2022-04-15', 1209599000, 10224),
(12275, '2022-10-05', 1909529009, 10228),
(12277, '2021-11-12', 1109579010, 10227),
(12280, '2022-06-13', 1609529028, 10227),
(12281, '2023-05-29', 1002956182, 10227),
(12283, '2022-10-19', 1104577102, 10224),
(12286, '2022-10-07', 1809519003, 10224),
(12287, '2021-11-07', 1809599001, 10227),
(12289, '2023-03-10', 1409559015, 10227),
(12296, '2022-06-13', 1384727481, 10224);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_kontak` int(11) NOT NULL,
  `gender_id_gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `alamat`, `no_kontak`, `gender_id_gender`) VALUES
(384627348, 'Setia', 'Kebumen', 2147483647, 1),
(462434646, 'Wina', 'Cilacap', 2147483647, 1),
(488462644, 'Nisa', 'Kebumen', 2147483647, 0),
(573957384, 'Galang Setia', 'Kebumen', 2147483647, 1),
(756354656, 'Hadi Winata', 'Cilacap', 2147483647, 1),
(1002956134, 'Iksanudin', 'Pemalang', 2147483647, 1),
(1002956154, 'Udin', 'Pemalang', 2147483647, 1),
(1002956182, 'Iksanudin', 'Pemalang', 2147483647, 1),
(1009529006, 'Arobi Noto', 'Cilacap', 2147483647, 1),
(1074723341, 'Awaliyah', 'Karanganyar', 2147483647, 0),
(1074723361, 'Zahra', 'Karanganyar', 2147483647, 0),
(1074723377, 'Zahratun Awaliyah', 'Karanganyar', 2147483647, 0),
(1104577102, 'Hana Saraswati', 'Kebumen', 2147483647, 0),
(1104577132, 'Nina Sarah', 'Kebumen', 2147483647, 0),
(1104577152, 'Saras', 'Kebumen', 2147483647, 0),
(1109529006, 'Hadi Winoto', 'Cilacap', 2147483647, 1),
(1109529031, 'Hadi Winata', 'Cilacap', 2147483647, 1),
(1109529051, 'Hani', 'Cilacap', 2147483647, 1),
(1109579010, 'Anastasya Rahma', 'Brebes', 2147483647, 0),
(1109579043, 'Rahma', 'Brebes', 2147483647, 0),
(1109579063, 'Anis', 'Brebes', 2147483647, 0),
(1184727400, 'Moh Galang', 'Cirebon', 2147483647, 1),
(1184727437, 'Moh Gilang', 'Cirebon', 2147483647, 1),
(1184727457, 'Moh Guntur', 'Cirebon', 2147483647, 1),
(1184728433, 'Yanuar Galih', 'Karanganyar', 2147483647, 1),
(1184728440, 'Galih', 'Karanganyar', 2147483647, 1),
(1184728460, 'Yayan Galih', 'Karanganyar', 2147483647, 1),
(1204577102, 'Pitaloka Wati', 'Kebumen', 2147483647, 0),
(1209599000, 'Dimas Anggara', 'Semarang', 2147483647, 1),
(1209599049, 'Anggara', 'Semarang', 2147483647, 1),
(1209599069, 'Dimas Saputra', 'Semarang', 2147483647, 1),
(1234567890, 'Ilham', 'Semarang', 2147483647, 1),
(1309519031, 'Cantika', 'Karanganyar', 2147483647, 0),
(1309519047, 'Cantik', 'Karanganyar', 2147483647, 0),
(1309519067, 'Tika', 'Karanganyar', 2147483647, 0),
(1313738002, 'Sandi Wagara', 'Karanganyar', 2147483647, 1),
(1313738039, 'Sandi Segara', 'Karanganyar', 2147483647, 1),
(1313738059, 'Sandi', 'Karanganyar', 2147483647, 1),
(1384727438, 'Muhammad Azmil Yaqin', 'Cirebon', 2147483647, 1),
(1384727458, 'Muhammad Yaqin', 'Cirebon', 2147483647, 1),
(1384727481, 'Muhammad Ainul Yaqin', 'Cirebon', 2147483647, 1),
(1409559015, 'Birli Rahmawati', 'Karanganyar', 2147483647, 0),
(1409559046, 'Rahmawati', 'Karanganyar', 2147483647, 0),
(1409559066, 'Irli Wati', 'Karanganyar', 2147483647, 0),
(1495220012, 'Haura Rahma', 'Purwokerto', 2147483647, 0),
(1609529028, 'Dewi Inayah', 'Karanganyar', 2147483647, 0),
(1609529048, 'Dewi', 'Karanganyar', 2147483647, 0),
(1609529068, 'Dewi Ina', 'Karanganyar', 2147483647, 0),
(1709549015, 'Deski Andriwan', 'Kebumen', 2147483647, 1),
(1789519064, 'Adi Saputra', 'Tegal', 2147483647, 1),
(1809469129, 'Intan Sari', 'Brebes', 2147483647, 0),
(1809469136, 'Intan Naya', 'Brebes', 2147483647, 0),
(1809469156, 'Sari', 'Brebes', 2147483647, 0),
(1809509019, 'Isrinatul Jannah', 'Tegal', 2147483647, 0),
(1809509035, 'Isnatul Jarro', 'Tegal', 2147483647, 0),
(1809509055, 'Isrin', 'Tegal', 2147483647, 0),
(1809519003, 'Aji Saputra', 'Tegal', 2147483647, 1),
(1809519044, 'Aji Sahara', 'Tegal', 2147483647, 1),
(1809549015, 'Gilang Setiawan', 'Kebumen', 2147483647, 1),
(1809549030, 'Galang Setia', 'Kebumen', 2147483647, 1),
(1809549050, 'Gilang', 'Kebumen', 2147483647, 1),
(1809599001, 'Agung Adi Saputra', 'Brebes', 2147483647, 1),
(1809599042, 'Saputra', 'Brebes', 2147483647, 1),
(1809599062, 'Agung', 'Brebes', 2147483647, 1),
(1895220012, 'Haura Ganasya', 'Purwokerto', 2147483647, 0),
(1895220033, 'Aura Nasya', 'Purwokerto', 2147483647, 0),
(1895220053, 'Haura', 'Purwokerto', 2147483647, 0),
(1909529009, 'Bastian Ramadani', 'Brebes', 2147483647, 1),
(1909529045, 'Ramadani', 'Brebes', 2147483647, 1),
(1909529065, 'Bastian', 'Brebes', 2147483647, 1),
(2136256292, 'Putra Nada', 'Batang', 2147483647, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tingkatan`
--

CREATE TABLE `tingkatan` (
  `id_tingkatan` int(11) NOT NULL,
  `nama_tingkatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tingkatan`
--

INSERT INTO `tingkatan` (`id_tingkatan`, `nama_tingkatan`) VALUES
(1, 'SD/MI'),
(2, 'SMP/MTS'),
(3, 'SMA/SMK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `detil_paket`
--
ALTER TABLE `detil_paket`
  ADD PRIMARY KEY (`id_detil_paket`),
  ADD KEY `detil_paket_MATA_PELAJARAN_FK` (`MATA_PELAJARAN_id_mapel`),
  ADD KEY `detil_paket_PAKET_BELAJAR_FK` (`PAKET_BELAJAR_id_paket_belajar`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `GURU_gender_FK` (`gender_id_gender`),
  ADD KEY `id_guru` (`id_guru`);

--
-- Indexes for table `kbm`
--
ALTER TABLE `kbm`
  ADD PRIMARY KEY (`id_kbm`),
  ADD KEY `Kbm_GURU_FK` (`GURU_id_guru`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`),
  ADD KEY `Kehadiran_Kbm_FK` (`Kbm_id_kbm`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id_mapel`),
  ADD KEY `MATA_PELAJARAN_GURU_FK` (`GURU_id_guru`),
  ADD KEY `MATA_PELAJARAN_tingkatan_FK` (`tingkatan_id_tingkatan`);

--
-- Indexes for table `paket_belajar`
--
ALTER TABLE `paket_belajar`
  ADD PRIMARY KEY (`id_paket_belajar`);

--
-- Indexes for table `pilih_paket`
--
ALTER TABLE `pilih_paket`
  ADD PRIMARY KEY (`id_pilih_paket`),
  ADD KEY `Pilih_paket_PAKET_BELAJAR_FK` (`PAKET_BELAJAR_id_paket_belajar`),
  ADD KEY `Pilih_paket_SISWA_FK` (`SISWA_id_siswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `SISWA_gender_FK` (`gender_id_gender`);

--
-- Indexes for table `tingkatan`
--
ALTER TABLE `tingkatan`
  ADD PRIMARY KEY (`id_tingkatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detil_paket`
--
ALTER TABLE `detil_paket`
  ADD CONSTRAINT `detil_paket_MATA_PELAJARAN_FK` FOREIGN KEY (`MATA_PELAJARAN_id_mapel`) REFERENCES `mata_pelajaran` (`id_mapel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `detil_paket_PAKET_BELAJAR_FK` FOREIGN KEY (`PAKET_BELAJAR_id_paket_belajar`) REFERENCES `paket_belajar` (`id_paket_belajar`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `GURU_gender_FK` FOREIGN KEY (`gender_id_gender`) REFERENCES `gender` (`id_gender`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kbm`
--
ALTER TABLE `kbm`
  ADD CONSTRAINT `Kbm_GURU_FK` FOREIGN KEY (`GURU_id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `Kehadiran_Kbm_FK` FOREIGN KEY (`Kbm_id_kbm`) REFERENCES `kbm` (`id_kbm`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD CONSTRAINT `MATA_PELAJARAN_GURU_FK` FOREIGN KEY (`GURU_id_guru`) REFERENCES `guru` (`id_guru`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `MATA_PELAJARAN_tingkatan_FK` FOREIGN KEY (`tingkatan_id_tingkatan`) REFERENCES `tingkatan` (`id_tingkatan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pilih_paket`
--
ALTER TABLE `pilih_paket`
  ADD CONSTRAINT `Pilih_paket_PAKET_BELAJAR_FK` FOREIGN KEY (`PAKET_BELAJAR_id_paket_belajar`) REFERENCES `paket_belajar` (`id_paket_belajar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `Pilih_paket_SISWA_FK` FOREIGN KEY (`SISWA_id_siswa`) REFERENCES `siswa` (`id_siswa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `SISWA_gender_FK` FOREIGN KEY (`gender_id_gender`) REFERENCES `gender` (`id_gender`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
