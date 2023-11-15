-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 05:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugasakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `categori`
--

CREATE TABLE `categori` (
  `categori_id` int(11) NOT NULL,
  `nama_categori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categori`
--

INSERT INTO `categori` (`categori_id`, `nama_categori`) VALUES
(1, 'Helm Anak'),
(2, 'Helm Fullface'),
(3, 'Helm Open Face'),
(4, 'Helm Half Face'),
(5, 'Helm Racing'),
(6, 'Helm Modular'),
(7, 'Helm Balap'),
(8, 'Helm Retro'),
(9, 'Helm Special Edition'),
(10, 'Helm GM');

-- --------------------------------------------------------

--
-- Table structure for table `ekspedisi`
--

CREATE TABLE `ekspedisi` (
  `ongkos_kirim` int(11) NOT NULL,
  `nama_ekspedisi` varchar(255) NOT NULL,
  `ekspedisi_id` int(11) NOT NULL,
  `Tujuan` varchar(225) NOT NULL,
  `Berat(gram)` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ekspedisi`
--

INSERT INTO `ekspedisi` (`ongkos_kirim`, `nama_ekspedisi`, `ekspedisi_id`, `Tujuan`, `Berat(gram)`) VALUES
(9000, 'JNE', 1, 'Surabaya', 1300),
(12000, 'JNE', 2, 'Malang', 1300);

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `keranjang_id` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `nama_level` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`nama_level`, `level_id`) VALUES
('admin', 1),
('karyawan', 2),
('pelanggan', 3);

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `merk_id` int(11) NOT NULL,
  `nama_merk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`merk_id`, `nama_merk`) VALUES
(1, 'KYT'),
(2, 'INK'),
(3, 'Cargloss'),
(4, 'WTO'),
(5, 'Star'),
(6, 'Bogo'),
(7, 'Evolution'),
(8, 'RSIX'),
(9, 'NJS'),
(10, 'JPN'),
(11, 'Revo'),
(12, 'CX390'),
(13, 'MDS'),
(14, 'Shark Evo'),
(15, 'Cross Trai Monsa'),
(16, 'G2 Optimax'),
(17, 'Nazi'),
(18, 'Bogo Retro'),
(19, 'Marzanu'),
(20, 'Honda'),
(21, 'NHK'),
(22, 'KYT NFJ'),
(23, 'GM');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `nama_produk` varchar(20) NOT NULL,
  `deskripsi_produk` varchar(255) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `stok_produk` int(11) NOT NULL,
  `categori_id` int(11) NOT NULL,
  `merk_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`produk_id`, `nama_produk`, `deskripsi_produk`, `harga_produk`, `stok_produk`, `categori_id`, `merk_id`, `supplier_id`) VALUES
(1, 'Galaxy Flat R', '-', 415000, 15, 2, 1, 2),
(2, 'Metro', '-', 460000, 10, 4, 2, 2),
(3, 'Impressive Double Vi', '-', 252000, 10, 3, 4, 1),
(4, 'Star Helm Scoter', '-', 125000, 20, 3, 5, 1),
(5, 'Bogo Classic', '-', 125000, 35, 3, 6, 2),
(6, 'Retro', '-', 150000, 20, 3, 3, 2),
(7, 'GM EVO', '-', 105000, 20, 4, 7, 1),
(8, 'Venos Series', '-', 150000, 20, 4, 8, 1),
(9, 'Kronos', '-', 475000, 10, 4, 9, 2),
(10, 'Single Visor', '-', 120000, 20, 4, 11, 1),
(11, 'Batman Nobi', '-', 130000, 20, 4, 12, 1),
(12, 'Galaxy Original', '-', 300000, 10, 5, 10, 1),
(13, 'Pro Rider Solid Blac', '-', 450000, 8, 6, 13, 2),
(14, 'Yari Black Gray', '-', 200000, 10, 6, 14, 1),
(15, 'Original', '-', 525000, 10, 7, 15, 1),
(16, 'Leo Part', '-', 405000, 10, 7, 16, 1),
(17, 'Classic Dewasa', '-', 95000, 20, 8, 17, 2),
(18, 'Retro Millenial', '-', 81000, 25, 8, 18, 2),
(19, 'Rcaer Kids', '-', 400000, 10, 9, 19, 2),
(20, 'Luxury Black', '-', 395000, 10, 9, 20, 1),
(21, 'Wave Pink Black', '-', 420000, 10, 9, 21, 1),
(22, 'Espargaro', '-', 1700000, 10, 9, 22, 1),
(23, 'GM Supercross MX', '-', 535000, 10, 10, 23, 2);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `peringkat` varchar(20) NOT NULL,
  `komentar` varchar(255) NOT NULL,
  `tanggal_ulasan` date NOT NULL,
  `review_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `nama_supplier` varchar(20) NOT NULL,
  `alamat_supplier` varchar(255) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `telp_supplier` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`nama_supplier`, `alamat_supplier`, `supplier_id`, `telp_supplier`) VALUES
('Aji Sutomo', 'Malang', 1, '083886745784'),
('Imam Sopingi', 'Surabaya', 2, '081766454665');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `tanggal__pembayaran` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal__pemesanan` date NOT NULL,
  `metode__pembayaran` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `ekspedisi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`tanggal__pembayaran`, `user_id`, `tanggal__pemesanan`, `metode__pembayaran`, `alamat`, `total_harga`, `transaksi_id`, `supplier_id`, `ekspedisi_id`) VALUES
('2023-11-09', 2, '2023-11-09', 'Transfer', 'Jalan Soekarno Hatta, Surabaya', 81000, 1, 2, 1),
('2023-11-06', 3, '2023-11-06', 'Transfer', 'Jalan Imam Bonjol, Malang', 395000, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `subtotal` int(11) NOT NULL,
  `harga_item` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`subtotal`, `harga_item`, `jumlah`, `produk_id`, `transaksi_id`) VALUES
(90000, 81000, 1, 18, 1),
(407000, 395000, 1, 20, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `user_type` varchar(225) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(3, 'admin', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'user'),
(4, 'User', 'user@gmail.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categori`
--
ALTER TABLE `categori`
  ADD PRIMARY KEY (`categori_id`);

--
-- Indexes for table `ekspedisi`
--
ALTER TABLE `ekspedisi`
  ADD PRIMARY KEY (`ekspedisi_id`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`keranjang_id`),
  ADD KEY `user_id` (`id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_id`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`merk_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`),
  ADD KEY `categori_id` (`categori_id`),
  ADD KEY `merk_id` (`merk_id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `produk_id` (`produk_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`),
  ADD KEY `ekspedisi_id` (`ekspedisi_id`);

--
-- Indexes for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD KEY `produk_id` (`produk_id`),
  ADD KEY `transaksi_id` (`transaksi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`produk_id`);

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`categori_id`) REFERENCES `categori` (`categori_id`),
  ADD CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`merk_id`) REFERENCES `merk` (`merk_id`),
  ADD CONSTRAINT `produk_ibfk_3` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`produk_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`ekspedisi_id`) REFERENCES `ekspedisi` (`ekspedisi_id`);

--
-- Constraints for table `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `produk` (`produk_id`),
  ADD CONSTRAINT `transaksi_detail_ibfk_2` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`transaksi_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
