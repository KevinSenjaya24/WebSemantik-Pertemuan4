-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Mar 2021 pada 15.18
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `websemantik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `family`
--

CREATE TABLE `family` (
  `id` int(11) NOT NULL,
  `nkk` char(16) DEFAULT NULL,
  `kepala_keluarga` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `family`
--

INSERT INTO `family` (`id`, `nkk`, `kepala_keluarga`, `created_at`, `updated_at`) VALUES
(1, '3204330610000001', 'BUDIONO', '2021-03-05 05:20:05', '2021-03-04 22:20:05'),
(5, '3204330410000012', 'Rolando', '2021-03-05 06:20:13', '2021-03-04 23:20:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jemaat`
--

CREATE TABLE `jemaat` (
  `id` int(11) NOT NULL,
  `nik` char(16) DEFAULT NULL,
  `family_id` int(11) DEFAULT NULL,
  `status_keanggotaan` varchar(45) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(45) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(45) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `hobi` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `baptis` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jemaat`
--

INSERT INTO `jemaat` (`id`, `nik`, `family_id`, `status_keanggotaan`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `no_telp`, `status`, `pekerjaan`, `hobi`, `photo`, `baptis`, `created_at`, `updated_at`) VALUES
(3810, '3204330410000004', 5, 'Aktif', 'Kevin', 'Bandung', '2000-10-04', 'Lelaki', 'Jl. Kota baru', '08986062530', '2', 'Pelajar / Mahasiswa', 'Bermain Musik', NULL, 'Baptis', '2021-03-11 23:47:32', '2021-03-11 23:47:32'),
(3812, '3048877677281298', 5, 'Aktif', 'Markus', 'Jakarta', '2000-10-04', 'lelaki', 'Jl. Kota Baru', '08986062655', '2', 'Pelajar/Mahasiswa', 'Bermain Musik', NULL, 'Baptis', '2021-03-21 06:53:32', '2021-03-21 06:53:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jemaat`
--
ALTER TABLE `jemaat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik_jemaat` (`nik`),
  ADD KEY `fk_Jemaat_family1_idx` (`family_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `family`
--
ALTER TABLE `family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `jemaat`
--
ALTER TABLE `jemaat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3813;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jemaat`
--
ALTER TABLE `jemaat`
  ADD CONSTRAINT `fk_Jemaat_family1` FOREIGN KEY (`family_id`) REFERENCES `family` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
