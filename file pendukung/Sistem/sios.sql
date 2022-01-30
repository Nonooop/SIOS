-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Sep 2021 pada 04.08
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sios`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(10) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `foto_barang` varchar(75) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `merek` varchar(25) NOT NULL,
  `nama_kategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `foto_barang`, `harga`, `stok`, `deskripsi`, `merek`, `nama_kategori`) VALUES
('BRG0001', 'Nike Air Jordan 1 Retro High Obsidian UNC Blue Per', 'foto produk/Nike Air Jordan 1.jpg', 250000, 99957, 'Nike Air Jordan 1 Retro High Obsidian UNC Blue Perfect Kick ,BNIB', 'Nike', 'CTL0001'),
('BRG0002', 'Adidas Running Shoes', 'foto produk/Adidas Duramo.jpg', 240000, 199978, 'Black', 'Adidas', 'CTL0001'),
('BRG0003', 'Sepatu sneakers Casual Original PUMA RALPH SAMPSON', 'foto produk/PUMA RALPH SAMPSON LOW WHITE RED BLACK.jpg', 250000, 180000, 'Sepatu sneakers Casual Original PUMA RALPH SAMPSON LOW WHITE RED BLACK - Putih, 42', 'Puma', 'CTL0001'),
('BRG0004', 'Sepatu Flat Shoes Wanita Gio Saverino', 'foto produk/Sepatu Flat Shoes Wanita Gio Saverino Terbaru - BLACK, 36.jpg', 190000, 900, 'Sepatu Flat Shoes Wanita Gio Saverino Terbaru - BLACK, 36', 'Gio Saverino', 'CTL0002'),
('BRG0005', 'Pluvia - MADA Sepatu Flat Wanita Mules Shoes', 'foto produk/Pluvia - MADA Sepatu Flat Wanita Mules Shoes - Hitam, 37.jpg', 255000, 992, 'Pluvia - MADA Sepatu Flat Wanita Mules Shoes \r\nWarna Hitam dan Cream', 'Pluvia', 'CTL0002'),
('BRG0006', 'SHILKA Sepatu Flat Wanita Balet Flatshoes Lancip B', 'foto produk/SHILKA Sepatu Flat Wanita Balet.jpg', 150000, 1492, 'Pluvia - SHILKA Sepatu Flat Wanita Balet Flatshoes Lancip Butterfly - Merah Muda, 37', 'Pluvia', 'CTL0002'),
('BRG0007', 'Prodigo Sepatu Pria Belitung Brown Sepatu Boots', 'foto produk/Prodigo Sepatu Pria Belitung.jpg', 150000, 1500, 'Prodigo Sepatu Pria Belitung Brown Sepatu Boots Sepatu Formal casual - 39', 'Prodigo ', 'CTL0003'),
('BRG0008', 'Sepatu Boots AH Chelsea Tan Sepatu Kulit Pria ', '../inputan/foto produk/Sepatu Boots AH.jpg', 300000, 2500, 'Sepatu Boots AH Chelsea Tan Sepatu Kulit Pria', 'Chelsea ', 'CTL0003'),
('BRG0009', 'sepatu boot kulit pria model Berlin', 'foto produk/sepatu boot kulit.jpg', 320000, 2300, 'sepatu boot kulit pria model Berlin sepatu kerja sepatu formal santai', 'Berlin', 'CTL0003'),
('BRG0010', 'Sepatu boot pria sepatu touring model leopard', 'foto produk/sepatu boot pria.jpg', 299, 3384, 'sepatu boot pria sepatu touring sepatu casual model leopard', 'CRAZY HORSE', 'CTL0003'),
('BRG0011', 'FEBRIA Sepatu Flat Wanita Mules Shoes Suede', 'foto produk/FEBRIA Sepatu Flat Wanita Mules.jpg', 120000, 12000, 'Pluvia - FEBRIA Sepatu Flat Wanita Mules Shoes Suede - Hitam, 37', 'Pluvia ', 'CTL0002'),
('BRG0012', 'Redknot Greg Sepatu Kerja Pria', '../inputan/foto produk/Redknot Greg Hitam.jpg', 100000, 2500, 'Redknot ', 'Redknot ', 'CTL0004'),
('BRG0013', 'Sepatu Pantofel Kickers Pria Hitam', '../inputan/foto produk/4d7.jpg', 150000, 2300, 'Kickers  Sepatu Pantofel Kickers Pria Hitam', 'Kickers ', 'CTL0004'),
('BRG0014', 'Sepatu Formal Pria Madrid', 'foto produk/8717.jpg', 300000, 2300, 'PAULMAY Sepatu Formal Pria Madrid 91 - Hitam, 42', 'PAULMAY ', 'CTL0004');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pesanan`
--

CREATE TABLE `detail_pesanan` (
  `id_pesanan` varchar(10) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `kuantitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_pesanan`
--

INSERT INTO `detail_pesanan` (`id_pesanan`, `id_barang`, `kuantitas`) VALUES
('ORD0001', 'BRG0001', 100),
('ORD0001', 'BRG0002', 30),
('ORD0002', 'BRG0003', 5),
('ORD0002', 'BRG0005', 1),
('ORD0003', 'BRG0001', 6),
('ORD0004', 'BRG0002', 7),
('ORD0006', 'BRG0002', 8),
('ORD0004', 'BRG0006', 8),
('ORD0005', 'BRG0001', 14),
('ORD0005', 'BRG0002', 7),
('ORD0005', 'BRG0005', 8),
('ORD0005', 'BRG0010', 16),
('ORD0006', 'BRG0001', 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `info_pesanan`
--

CREATE TABLE `info_pesanan` (
  `id_pengiriman` varchar(10) NOT NULL,
  `jasa_kirim` varchar(10) NOT NULL,
  `No_Resi` varchar(30) NOT NULL,
  `status_pengiriman` varchar(50) NOT NULL,
  `lokasi` varchar(30) NOT NULL,
  `tgl_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_pesanan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `info_pesanan`
--

INSERT INTO `info_pesanan` (`id_pengiriman`, `jasa_kirim`, `No_Resi`, `status_pengiriman`, `lokasi`, `tgl_update`, `id_pesanan`) VALUES
('SHP0001', 'JNE', 'J0293283923892', 'Barang sedang disiapkan oleh penjual', 'Jakarta', '2021-08-28 03:57:33', 'ORD0001'),
('SHP0002', 'JNE', 'J0293283923892', 'Barang diambil oleh kurir', 'Jakarta', '2021-08-28 03:57:41', 'ORD0001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `katalog`
--

CREATE TABLE `katalog` (
  `id_katalog` varchar(10) NOT NULL,
  `nama_katalog` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `katalog`
--

INSERT INTO `katalog` (`id_katalog`, `nama_katalog`) VALUES
('CTL0001', 'Sneakers'),
('CTL0002', 'Flatshoes'),
('CTL0003', 'Boots'),
('CTL0004', 'Pantofel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_cart` varchar(10) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `kuantitas` int(11) NOT NULL,
  `id_user` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` varchar(10) NOT NULL,
  `nama_pembayaran` varchar(30) NOT NULL,
  `nama_akun` varchar(30) NOT NULL,
  `no_akun` varchar(25) NOT NULL,
  `logopayment` varchar(150) NOT NULL,
  `metode` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `nama_pembayaran`, `nama_akun`, `no_akun`, `logopayment`, `metode`) VALUES
('PAY0001', 'BCA', 'SIOS', '2739234093', '', 'Bank'),
('PAY0002', 'BNI', 'SIOS', '1199283929234093', '', 'Bank'),
('PAY0003', 'DANA', 'SIOS', '082763281921', '', 'Paypal'),
('PAY0004', 'GOPAY', 'SIOS', '082763281921', '', 'Paypal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `id_pesanan` varchar(10) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `nama_penerima` varchar(30) NOT NULL,
  `email_penerima` varchar(50) NOT NULL,
  `telepon_penerima` varchar(15) NOT NULL,
  `alamat_penerima` varchar(250) NOT NULL,
  `negara` varchar(25) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kode_pos` int(11) NOT NULL,
  `id_pembayaran` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `tgl_pesanan` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`id_pesanan`, `id_user`, `nama_penerima`, `email_penerima`, `telepon_penerima`, `alamat_penerima`, `negara`, `kota`, `kode_pos`, `id_pembayaran`, `status`, `tgl_pesanan`) VALUES
('ORD0001', 'USR0002', 'Rendiyanto Putra', 'rendiyanto@gmail.com', '0893049343', 'Dusun Pongangan, Desa Pegergunung, RT 01 RW 06, Kecamatan Bulu,  Kabupaten Temanggung, Jawa Tengah, Indonesia', 'Indonesia', 'Temanggung', 56253, 'PAY0001', 'Dikirim', '2021-08-27 14:23:41'),
('ORD0002', 'USR0002', 'Rendy PW', 'rendy@gmail.com', '08329878987', 'Dusun Pongangan, Desa Pegergunung, RT 01 RW 06, Kecamatan Bulu,  Kabupaten Temanggung, Jawa Tengah, Indonesia', 'ID', 'Temanggung', 12121212, 'PAY0001', 'Dikemas', '2021-09-04 04:09:14'),
('ORD0003', 'USR0002', 'Rendy PW', 'rendy@gmail.com', '08329878987', 'Purwakarta', 'ID', 'Purwakarta', 321211, 'PAY0003', 'Dikemas', '2021-09-04 04:52:35'),
('ORD0004', 'USR0002', 'Rendy PW', 'rendy@gmail.com', '08329878987', 'Dusun Pongangan, Desa Pegergunung, RT 01 RW 06, Kecamatan Bulu,  Kabupaten Temanggung, Jawa Tengah, Indonesia', 'ID', 'Temanggung', 321211, 'PAY0002', 'Belum Bayar', '2021-09-04 02:45:09'),
('ORD0005', 'USR0005', 'Deni Hermawan', 'dendeni@gmail.com', '08329878987', 'Jl Kapt Ismail Sindangkasih Purwakarta', 'ID', 'Purwakarta', 41112, 'PAY0003', 'Belum Bayar', '2021-09-04 04:46:23'),
('ORD0006', 'USR0002', 'Rendy PW', 'rendy@gmail.com', '08329878987', 'Pwk', 'ID', 'Temanggung', 321211, 'PAY0003', 'Belum Bayar', '2021-09-04 04:54:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(75) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `passwd` varchar(20) NOT NULL,
  `foto_profil` varchar(250) NOT NULL,
  `level_user` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `email`, `telepon`, `passwd`, `foto_profil`, `level_user`, `status`, `tgl_daftar`) VALUES
('USR0001', 'Maulana Hanhan', 'han2@gmail.com', '085759933124', '1', '../inputan/foto profil/dana-min.png', 'Administrator', 'Aktif', '2021-09-04 04:53:10'),
('USR0002', 'Rendiyanto Putra W', 'rendy@gmail.com', '085759933555', '1', '../inputan/foto profil/payment-methods.jpg', 'User', 'Aktif', '2021-09-04 03:09:17'),
('USR0003', 'Ini Admin', 'sios@sios.com', '3983029320', '1', '../inputan/foto profil/usr.png', 'Administrator', 'Aktif', '2021-09-01 11:45:09'),
('USR0004', 'Ini User', 'user@gmail.com', '3983029320', 'k', '../inputan/foto profil/usr.png', 'User', 'Aktif', '2021-09-01 11:45:12'),
('USR0005', 'Deni Hermawan', 'dendeni@gmail.com', '0802980283093', '1', '../inputan/foto profil/usr.png', 'User', 'Aktif', '2021-09-01 12:14:21'),
('USR0006', 'tes aja yeh', 'dimas55161@gmail.com', '0839830292', '1', '../inputan/foto profil/usr.png', 'User', 'Aktif', '2021-09-01 15:05:10');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `nama_kategori` (`nama_kategori`);

--
-- Indeks untuk tabel `detail_pesanan`
--
ALTER TABLE `detail_pesanan`
  ADD KEY `id_pesanan` (`id_pesanan`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `info_pesanan`
--
ALTER TABLE `info_pesanan`
  ADD PRIMARY KEY (`id_pengiriman`),
  ADD KEY `id_pesanan` (`id_pesanan`);

--
-- Indeks untuk tabel `katalog`
--
ALTER TABLE `katalog`
  ADD PRIMARY KEY (`id_katalog`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_cart`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_pembayaran` (`id_pembayaran`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
