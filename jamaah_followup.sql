-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Apr 2026 pada 10.47
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
-- Database: `jemaah_followup`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `calon_jemaah`
--

CREATE TABLE `calon_jemaah` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `paket` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `calon_jemaah`
--

INSERT INTO `calon_jemaah` (`id`, `nama`, `no_hp`, `alamat`, `paket`, `created_at`) VALUES
(1, 'Ahmad Fauzi', '0811111111', 'Bandung', 'Umroh Reguler', '2026-04-07 07:01:29'),
(2, 'Siti Aminah', '0822222222', 'Jakarta', 'Umroh VIP', '2026-04-07 07:01:29'),
(3, 'Budi Santoso', '0833333333', 'Surabaya', 'Haji Khusus', '2026-04-07 07:01:29'),
(4, 'Dewi Lestari', '0844444444', 'Medan', 'Umroh Reguler', '2026-04-07 07:01:29'),
(5, 'Rizky Hidayat', '0855555555', 'Bekasi', 'Umroh Plus Turki', '2026-04-07 07:01:29'),
(6, 'Nur Aisyah', '0866666666', 'Depok', 'Umroh VIP', '2026-04-07 07:01:29'),
(7, 'Fajar Nugroho', '0877777777', 'Semarang', 'Haji Furoda', '2026-04-07 07:01:29'),
(8, 'Lina Marlina', '0888888888', 'Bogor', 'Umroh Reguler', '2026-04-07 07:01:29'),
(9, 'Andi Saputra', '0899999999', 'Makassar', 'Umroh Plus Dubai', '2026-04-07 07:01:29'),
(10, 'Putri Ayu', '0812121212', 'Yogyakarta', 'Umroh VIP', '2026-04-07 07:01:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `follow_ups`
--

CREATE TABLE `follow_ups` (
  `id` int(11) NOT NULL,
  `calon_jemaah_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tanggal_follow_up` datetime DEFAULT NULL,
  `metode` enum('call','whatsapp','meeting') DEFAULT NULL,
  `status_task` enum('pending','in_progress','done') DEFAULT NULL,
  `hasil_follow_up` text DEFAULT NULL,
  `next_follow_up` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `follow_ups`
--

INSERT INTO `follow_ups` (`id`, `calon_jemaah_id`, `user_id`, `tanggal_follow_up`, `metode`, `status_task`, `hasil_follow_up`, `next_follow_up`, `created_at`) VALUES
(1, 1, 3, '2026-04-01 10:00:00', 'call', 'done', 'Sudah dihubungi', '2026-04-05 10:00:00', '2026-04-07 07:01:37'),
(2, 2, 4, '2026-04-01 11:00:00', 'whatsapp', 'in_progress', 'Masih diskusi', '2026-04-06 11:00:00', '2026-04-07 07:01:37'),
(3, 3, 5, '2026-04-02 09:00:00', 'meeting', 'pending', 'Belum kontak', NULL, '2026-04-07 07:01:37'),
(4, 4, 6, '2026-04-02 13:00:00', 'call', 'done', 'Tertarik', '2026-04-07 13:00:00', '2026-04-07 07:01:37'),
(5, 5, 7, '2026-04-03 14:00:00', 'whatsapp', 'done', 'Closing', '2026-04-08 14:00:00', '2026-04-07 07:01:37'),
(6, 6, 8, '2026-04-03 15:00:00', 'call', 'in_progress', 'Follow up lagi', '2026-04-09 15:00:00', '2026-04-07 07:01:37'),
(7, 7, 9, '2026-04-04 10:00:00', 'meeting', 'pending', 'Menunggu jadwal', NULL, '2026-04-07 07:01:37'),
(8, 8, 10, '2026-04-04 12:00:00', 'call', 'done', 'Tidak jadi', '2026-04-10 12:00:00', '2026-04-07 07:01:37'),
(9, 9, 3, '2026-04-05 09:00:00', 'whatsapp', 'in_progress', 'Masih tanya paket', '2026-04-11 09:00:00', '2026-04-07 07:01:37'),
(10, 10, 4, '2026-04-05 16:00:00', 'call', 'done', 'Sudah closing', '2026-04-12 16:00:00', '2026-04-07 07:01:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status_komunikasi`
--

CREATE TABLE `status_komunikasi` (
  `id` int(11) NOT NULL,
  `follow_up_id` int(11) DEFAULT NULL,
  `status` enum('prospek_baru','dihubungi','tertarik','closing','tidak_jadi') DEFAULT NULL,
  `last_follow_up` datetime DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `status_komunikasi`
--

INSERT INTO `status_komunikasi` (`id`, `follow_up_id`, `status`, `last_follow_up`, `updated_at`) VALUES
(1, 1, 'dihubungi', '2026-04-01 10:00:00', '2026-04-07 07:01:50'),
(2, 2, 'tertarik', '2026-04-01 11:00:00', '2026-04-07 07:01:50'),
(3, 3, 'prospek_baru', '2026-04-02 09:00:00', '2026-04-07 07:01:50'),
(4, 4, 'tertarik', '2026-04-02 13:00:00', '2026-04-07 07:01:50'),
(5, 5, 'closing', '2026-04-03 14:00:00', '2026-04-07 07:01:50'),
(6, 6, 'dihubungi', '2026-04-03 15:00:00', '2026-04-07 07:01:50'),
(7, 7, 'prospek_baru', '2026-04-04 10:00:00', '2026-04-07 07:01:50'),
(8, 8, 'tidak_jadi', '2026-04-04 12:00:00', '2026-04-07 07:01:50'),
(9, 9, 'tertarik', '2026-04-05 09:00:00', '2026-04-07 07:01:50'),
(10, 10, 'closing', '2026-04-05 16:00:00', '2026-04-07 07:01:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` enum('admin','staff') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Admin Utama', 'admin1@mail.com', '123', 'admin', '2026-04-07 07:01:05'),
(2, 'Admin Kedua', 'admin2@mail.com', '123', 'admin', '2026-04-07 07:01:05'),
(3, 'Staff A', 'staff1@mail.com', '123', 'staff', '2026-04-07 07:01:05'),
(4, 'Staff B', 'staff2@mail.com', '123', 'staff', '2026-04-07 07:01:05'),
(5, 'Staff C', 'staff3@mail.com', '123', 'staff', '2026-04-07 07:01:05'),
(6, 'Staff D', 'staff4@mail.com', '123', 'staff', '2026-04-07 07:01:05'),
(7, 'Staff E', 'staff5@mail.com', '123', 'staff', '2026-04-07 07:01:05'),
(8, 'Staff F', 'staff6@mail.com', '123', 'staff', '2026-04-07 07:01:05'),
(9, 'Staff G', 'staff7@mail.com', '123', 'staff', '2026-04-07 07:01:05'),
(10, 'Staff H', 'staff8@mail.com', '123', 'staff', '2026-04-07 07:01:05');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `calon_jemaah`
--
ALTER TABLE `calon_jemaah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `follow_ups`
--
ALTER TABLE `follow_ups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `calon_jemaah_id` (`calon_jemaah_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `status_komunikasi`
--
ALTER TABLE `status_komunikasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follow_up_id` (`follow_up_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `calon_jemaah`
--
ALTER TABLE `calon_jemaah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `follow_ups`
--
ALTER TABLE `follow_ups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `status_komunikasi`
--
ALTER TABLE `status_komunikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `follow_ups`
--
ALTER TABLE `follow_ups`
  ADD CONSTRAINT `follow_ups_ibfk_1` FOREIGN KEY (`calon_jemaah_id`) REFERENCES `calon_jemaah` (`id`),
  ADD CONSTRAINT `follow_ups_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `status_komunikasi`
--
ALTER TABLE `status_komunikasi`
  ADD CONSTRAINT `status_komunikasi_ibfk_1` FOREIGN KEY (`follow_up_id`) REFERENCES `follow_ups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
