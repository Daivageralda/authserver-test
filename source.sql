-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Feb 2024 pada 09.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `source`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `userid` char(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `semester` varchar(20) NOT NULL,
  `praktikan` tinyint(1) NOT NULL,
  `asisten_laboratorium` tinyint(1) NOT NULL,
  `dosen` tinyint(1) NOT NULL,
  `kd_matkul` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`userid`, `password`, `nama`, `email`, `semester`, `praktikan`, `asisten_laboratorium`, `dosen`, `kd_matkul`) VALUES
('198608032019031006', 'password456', 'Putut Pamilih Widagdo, S.Kom., M. Kom', 'pututpamilih@gmail.com', 'Genap 2023/2024', 0, 0, 1, '1909036023'),
('198612182019031007', 'password909', 'Hario Jati Setyadi, S.Kom., M.Kom', 'hariojati.setyadi@ft.unmul.ac.id', 'Genap 2023/2024', 0, 0, 1, '1909036050'),
('199202122020121009', 'password098', 'Amin Padmo Azam Masa, S.Kom., M.Cs.', 'aminpadmo@ft.unmul.ac.id', 'Genap 2023/2024', 0, 0, 1, '1909036020'),
('199508272022031003', 'password567', 'Akhmad Irsyad S.T.,M.Kom', 'akhmadirsyad@ft.unmul.ac.id', 'Genap 2023/2024', 0, 0, 1, '1909036021'),
('2109116017', 'password000', 'Nur Inayah', 'nayanay@gmail.com', 'Genap 2023/2024', 0, 0, 0, NULL),
('2109116038', 'password000', 'Raihan Daiva Geralda', 'daivadai@gmail.com', 'Genap 2023/2024', 0, 0, 0, NULL),
('2109116058', 'password987', 'Firzian Caesar Ananta', 'firzianfir@gmail.com', 'Genap 2023/2024', 0, 1, 0, '1909036020'),
('2109116068', 'password123', 'Wahyu Kesuma Bakti', 'kambingsegitiga@gmail.com', 'Genap 2023/2024', 0, 1, 0, '1909036021'),
('2109116077', 'password890', 'Muhammad Raza Daffa', 'daffadaf@gmail.com', 'Genap 2023/2024', 0, 1, 0, '1909036050'),
('2109116095', 'password678', 'Muhammad Novil Fahlevy', 'novilnovil@gmail.com', 'Genap 2023/2024', 0, 1, 0, '1909036023'),
('2209116004', 'password345', 'Novianti Safitri', 'novinov@gmail.com', 'Genap 2023/2024', 1, 1, 0, NULL),
('2209116006', 'password789', 'Dinnuhoni Trahutomo', 'dinnudin@gmail.com', 'Genap 2023/2024', 1, 0, 0, NULL),
('2209116054', 'password234', 'Dera Kayla', 'derader@gmail.com', 'Genap 2023/2024', 1, 0, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `aslab_mengajar` (`kd_matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
