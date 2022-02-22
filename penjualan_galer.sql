-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Feb 2022 pada 05.26
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan_galer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb`
--

CREATE TABLE `tb` (
  `id` int(5) NOT NULL,
  `nb` varchar(150) NOT NULL,
  `hrg` varchar(10) NOT NULL,
  `stok` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb`
--

INSERT INTO `tb` (`id`, `nb`, `hrg`, `stok`) VALUES
(1, 'Converse CHUCK 70 HI Unisex Sneakers - Black', '1.099.000', '24'),
(2, 'Converse CTAS Cx Pop Bright Men\'s Sneakers - BLACK/ASH STONE/STORM WIND', '1.299.000', '16'),
(3, 'Converse CTAS Cx Canvas and Polyester Men\'s Sneakers - MIDNIGHT NAVY/BLACK/WILD MANGO', '1.299.000', '11'),
(4, 'Converse CT ALL STAR Unisex Sneakers - Optic White', '799.000', '32'),
(5, 'Converse Chuck Taylor Original Unisex Sneakers - Navy/White', '759.000', '32'),
(6, 'Converse CTAS Ox Unisex Sneakers - Mono Black', '759.000', '40'),
(7, 'Converse CTAS Cx Stretch Canvas & Recycled Polyester Men\'s Sneakers - BLACK/STORM WIND/WASHED TEAL', '1.199.000', '8'),
(8, 'Converse CTAS Reflective Men\'s Sneakers - Ash Stone/Silver/White', '859.000', '12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb`
--
ALTER TABLE `tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb`
--
ALTER TABLE `tb`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
