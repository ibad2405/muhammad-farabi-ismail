-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Okt 2024 pada 08.34
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
-- Database: `apotek`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_supplier`
--

CREATE TABLE `detail_supplier` (
  `id` int(11) NOT NULL,
  `nama_panggilan` varchar(50) NOT NULL,
  `domisili` varchar(50) NOT NULL,
  `facebook` varchar(50) NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_supplier`
--

INSERT INTO `detail_supplier` (`id`, `nama_panggilan`, `domisili`, `facebook`, `id_supplier`) VALUES
(1, 'Agil', 'Surabaya', 'Ghilman Agil', 1),
(2, 'Kemal', 'Lamongan', 'KemalZ', 2),
(3, 'Felix', 'Lamongan', 'Nastainfelix', 3),
(4, 'Bilal', 'Lamongan', 'Bilal', 4),
(5, 'Farhan', 'Lamongan', 'Farhanfird', 5),
(6, 'Faisal', 'Lamongan', 'faisal', 6),
(7, 'Andik', 'Lamongan', 'andik', 7),
(8, 'Reza', 'Lamongan', 'rezaa', 8),
(9, 'Baihaqi', 'Lamongan', 'ahmadbaihaqi', 9),
(10, 'Wildan', 'Lamongan', 'wildanfird', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id` int(11) NOT NULL,
  `id_obat` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `harga` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id`, `id_obat`, `id_transaksi`, `harga`) VALUES
(1, 2, 1, 5000),
(2, 6, 2, 10000),
(3, 5, 3, 10000),
(4, 3, 4, 5000),
(5, 10, 5, 10000),
(6, 2, 6, 10000),
(7, 2, 7, 5000),
(8, 2, 8, 10000),
(9, 6, 9, 10000),
(10, 10, 10, 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id` int(11) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `harga_obat` decimal(10,0) NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id`, `nama_obat`, `harga_obat`, `id_supplier`) VALUES
(1, 'Paracetamol', 4000, 1),
(2, 'Grantusif', 5000, 2),
(3, 'Bintamox', 5000, 3),
(4, 'Abacavir', 5000, 4),
(5, 'Acarbose', 5000, 5),
(6, 'Antimo', 5000, 6),
(7, 'Benzolac', 5000, 7),
(8, 'Biogen', 5000, 8),
(9, 'Calcifar', 5000, 9),
(10, 'Calortusin', 5000, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama_pelanggan`, `alamat`, `no_telp`) VALUES
(1, 'Rendi', 'Grenjeng', '0812372739'),
(2, 'Teddy', 'Sidomukti', '08123283581'),
(3, 'Adit', 'Sidomukti', '08583262324'),
(4, 'Bowo', 'Labuhan', '08973297292'),
(5, 'Fani', 'Solokuro', '081293471931'),
(6, 'Hariri', 'Solokuro', '08121031038'),
(7, 'Fajar', 'Blimbing', '012038103812'),
(8, 'Dimas', 'Blimbing', '08913193132'),
(9, 'Arif', 'Bluluk', '08139193131'),
(10, 'Qirbi', 'Sidoarjo', '08113149923');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(100) NOT NULL,
  `alamat_supplier` text NOT NULL,
  `no_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `alamat_supplier`, `no_telepon`) VALUES
(1, 'Ghilman Nur Wahana', 'Jl. Ngagel Gg.4 No. 13 Surabaya', '085852907147'),
(2, 'Musthofa Kemal', 'Jl. Kauman Gg. kauman kecil Lamongan', '08129836242'),
(3, 'Natain Felix', ' Jl. taruna gg 2', '08129836234'),
(4, 'Bilal', 'Jl. Niaga Blimbing', '08486384632'),
(5, 'Farhan', 'Jl. taruna Gg 1 no.13', '08174274932'),
(6, 'Faisal', 'Gg. Taruna, no.10', '08984739247'),
(7, 'Andik', 'Jl. Taruna Gg. 1 No.17', '085635735824'),
(8, 'Reza', 'Jl. Niaga Gg 4 No.12', '08123669464'),
(9, 'Ahmad Baihaqi', 'Jl. Pasar blimbing Gg. Shihabiyah No.2', '08217868492'),
(10, 'Wildan', 'Jl. Lingkungan padek No.6', '08568631892');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `tanggal_beli` date NOT NULL,
  `total_harga` decimal(10,0) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `tanggal_beli`, `total_harga`, `id_pelanggan`) VALUES
(1, '2024-10-01', 5000, 1),
(2, '2024-10-02', 10000, 2),
(3, '2024-10-03', 10000, 3),
(4, '2024-10-04', 5000, 4),
(5, '2024-10-05', 10000, 5),
(6, '2024-10-09', 10000, 6),
(7, '2024-10-10', 5000, 7),
(8, '2024-10-11', 10000, 8),
(9, '2024-10-15', 10000, 9),
(10, '2024-10-15', 10000, 10);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_supplier`
--
ALTER TABLE `detail_supplier`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_obat` (`id_obat`,`id_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_idsupplier` (`id_supplier`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_supplier`
--
ALTER TABLE `detail_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_supplier`
--
ALTER TABLE `detail_supplier`
  ADD CONSTRAINT `detail_supplier_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `obat` (`id`);

--
-- Ketidakleluasaan untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD CONSTRAINT `FK_idsupplier` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
