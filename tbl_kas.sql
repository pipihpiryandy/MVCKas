-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Des 2021 pada 14.16
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kas`
--

CREATE TABLE `tbl_kas` (
  `id` int(11) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `debit` varchar(20) NOT NULL,
  `kredit` varchar(20) NOT NULL,
  `saldo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_kas`
--

INSERT INTO `tbl_kas` (`id`, `tanggal`, `keterangan`, `debit`, `kredit`, `saldo`) VALUES
(12, '01/12/2021', 'Saldo Awal', 'Rp.3.000.000', '', 'Rp.3.000.000'),
(13, '01/12/2021', 'Pembelian ATK', '', 'Rp.300.000', 'Rp.2.700.000'),
(15, '02/12/2021', 'Biaya Listrik', '', 'Rp.100.000', 'Rp.2.600.000'),
(16, '02/12/2021', 'Beban Gaji', '', 'Rp.300.000', 'Rp.2.300.000'),
(17, '02/12/2021', 'Pembayaran Piutang', 'Rp.3.000.000', '', 'Rp.5.300.000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_kas`
--
ALTER TABLE `tbl_kas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_kas`
--
ALTER TABLE `tbl_kas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
