-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Nov 13, 2022 at 01:01 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11
=======
-- Waktu pembuatan: 13 Nov 2022 pada 11.45
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laundry_crud`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `nama_file` varchar(64) NOT NULL,
  `file` varchar(64) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

<<<<<<< HEAD
--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `id`, `nama_file`, `file`, `waktu`) VALUES
(25, 44, 'siapa', 'siapa.jfif', '2022-11-13 19:16:07'),
(26, 45, 'kenapa', 'kenapa.jfif', '2022-11-13 19:16:53'),
(27, 46, 'sepatoooo', 'sepatoooo.jfif', '2022-11-13 19:21:12');

=======
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face
-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
<<<<<<< HEAD
  `id_gambar` int(11) NOT NULL,
=======
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face
  `nama` varchar(64) NOT NULL,
  `alamat` varchar(64) NOT NULL,
  `jenis` varchar(64) NOT NULL,
  `nama_file` varchar(64) NOT NULL,
  `file` varchar(64) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laundry`
--

CREATE TABLE `laundry` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

<<<<<<< HEAD
--
-- Dumping data for table `laundry`
--

INSERT INTO `laundry` (`id`, `id_user`, `nama`, `alamat`, `telpon`, `email`, `jenis`) VALUES
(44, 44, 'Atika M.Z', 'Samarinda', '08521234567', 'atikamaulidazahra@gmail.com', 'Regular Ekonomis'),
(45, 45, 'Atika Maulida Zahra', 'Sempaja', '0987654321', '2771@smaridasa.web.id', 'Laundry Exclusive'),
(46, 46, 'Rista', 'Jalan Abdul Wahab Syahrani 4 Blok S No. 16', '0987654321', 'chenle@gmail.com', 'Laundry Sepatu');

=======
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face
-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
<<<<<<< HEAD
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`) VALUES
(1, 'Atika Maulida Zahra', 'atika', '$2y$10$PZp9ctjmrchSwclm6ku7/eLc.SEK7RjKIJ0rPWkdIJDqHDH9LL9Ee'),
(3, 'admin', 'admin', '$2y$10$D/loUMYdW36xSxcV1UkfNe0xNcRgMm1JAdH6PR66SXSYT.VsnW/La'),
(4, 'putri', 'putri', '$2y$10$53ZGcuNrMchtKCAZ49oBCuHjSzDYXYWP7TXio1QBDzKMMwoJ0MvUO');
=======
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`) VALUES
(1, 'putri wahdaniyah iskandar', 'putri', '$2y$10$Sym/8NK/IOSG/duzUtz7ou7ETiD.BiCD7fXK0S0z8ec0CLucaGJGO');
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`),
<<<<<<< HEAD
  ADD KEY `id` (`id`);
=======
  ADD KEY `id_laundry` (`id`);
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`),
<<<<<<< HEAD
  ADD KEY `fk_history` (`id`),
  ADD KEY `fk_history1` (`id_user`),
  ADD KEY `fk_history2` (`id_gambar`);
=======
  ADD KEY `id_laundry` (`id`),
  ADD KEY `id_user` (`id_user`);
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face

--
-- Indeks untuk tabel `laundry`
--
ALTER TABLE `laundry`
<<<<<<< HEAD
  ADD PRIMARY KEY (`id`);
=======
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
<<<<<<< HEAD
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
=======
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT;
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laundry`
--
ALTER TABLE `laundry`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
<<<<<<< HEAD
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
=======
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `gambar_ibfk_1` FOREIGN KEY (`id`) REFERENCES `laundry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `history`
--
ALTER TABLE `history`
<<<<<<< HEAD
  ADD CONSTRAINT `fk_history` FOREIGN KEY (`id`) REFERENCES `laundry` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_history1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_history2` FOREIGN KEY (`id_gambar`) REFERENCES `gambar` (`id_gambar`) ON UPDATE CASCADE;
=======
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`id`) REFERENCES `laundry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `laundry`
--
ALTER TABLE `laundry`
  ADD CONSTRAINT `laundry_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
>>>>>>> eac41a789336e86f28fac7ccf1cd6777d571face
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
