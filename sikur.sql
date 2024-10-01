-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Okt 2024 pada 04.17
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
-- Database: `sikur`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `desc`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Solo Technopark Incubator', 'Solo Technopark Incubator adalah program di Solo, Indonesia, yang mendukung startup teknologi dengan menyediakan fasilitas, pelatihan, dan mentor untuk membantu mengembangkan dan meluncurkan bisnis.', '1724999548_inkubator.png', '0', '2024-08-29 23:32:28', '2024-08-29 23:32:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `banks`
--

CREATE TABLE `banks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sandi_bank` varchar(20) NOT NULL,
  `nama_bank` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `banks`
--

INSERT INTO `banks` (`id`, `sandi_bank`, `nama_bank`) VALUES
(1, '002', 'Bank BRI'),
(2, '008', 'Bank Mandiri'),
(3, '009', 'Bank BNI'),
(4, '427', 'Bank Syariah Indonesia (Eks. BNI Syariah)'),
(5, '451', 'Bank Syariah Indonesia (Eks. Bank Syariah Mandiri, BSM)'),
(6, '422', 'Bank Syariah Indonesia (Eks. BRI Syariah)'),
(7, '200', 'Bank BTN'),
(8, '022', 'Bank CIMB'),
(9, '022', 'Bank CIMB Niaga Syariah'),
(10, '147', 'Bank Muamalat'),
(11, '213', 'Bank BTPN'),
(12, '547', 'Bank BTPN Syariah'),
(13, '213', 'Bank Jenius'),
(14, '013', 'Bank Permata'),
(15, '013', 'Bank Permata Syariah'),
(16, '046', 'Bank DBS Indonesia'),
(17, '046', 'Digibank'),
(18, '011', 'BANK DANAMON'),
(19, '016', 'BANK MAYBANK (BII)'),
(20, '426', 'BANK MEGA'),
(21, '153', 'BANK SINARMAS'),
(22, '950', 'BANK COMMONWEALTH'),
(23, '028', 'BANK OCBC NISP'),
(24, '441', 'BANK BUKOPIN'),
(25, '521', 'BANK BUKOPIN SYARIAH'),
(26, '536', 'BANK BCA SYARIAH'),
(27, '026', 'BANK LIPPO'),
(28, '031', 'CITIBANK'),
(29, '789', 'INDOSAT DOMPETKU'),
(30, '911', 'LINKAJA'),
(31, '023', 'Bank UOB Indonesia'),
(32, '023', 'TMRW by UOB Indonesia'),
(33, '542', 'Bank Jago (Bank Artos Indonesia)'),
(34, '490', 'Bank NEO Commerce (Akulaku)'),
(35, '110', 'BANK JABAR BJB (JAWA BARAT)'),
(36, '425', 'BANK JABAR BJB SYARIAH (JAWA BARAT)'),
(37, '111', 'BANK DKI JAKARTA'),
(38, '112', 'BPD DIY (YOGYAKARTA)'),
(39, '113', 'BANK JATENG (JAWA TENGAH)'),
(40, '114', 'BANK JATIM (JAWA TIMUR)'),
(41, '115', 'BANK JAMBI'),
(42, '116', 'BANK ACEH'),
(43, '116', 'BANK ACEH SYARIAH'),
(44, '117', 'BANK SUMUT'),
(45, '118', 'BANK NAGARI (BANK SUMBAR)'),
(46, '119', 'BANK RIAU KEPRI'),
(47, '120', 'BANK SUMSEL BABEL (SUMATERA SELATAN BANGKA BELITUNG)'),
(48, '121', 'BANK LAMPUNG'),
(49, '122', 'BANK KALSEL (BANK KALIMANTAN SELATAN)'),
(50, '123', 'BANK KALBAR (BANK KALIMANTAN BARAT)'),
(51, '124', 'BANK KALTIMTARA (BANK KALIMANTAN TIMUR DAN UTARA)'),
(52, '125', 'BANK KALTENG (BANK KALIMANTAN TENGAH)'),
(53, '126', 'BANK SULSELBAR (BANK SULAWESI SELATAN DAN BARAT)'),
(54, '127', 'BANK SULUTGO (BANK SULAWESI UTARA DAN GORONTALO)'),
(55, '128', 'BANK NTB'),
(56, '128', 'BANK NTB SYARIAH'),
(57, '129', 'BANK BPD BALI'),
(58, '130', 'BANK NTT'),
(59, '131', 'BANK MALUKU MALUT'),
(60, '132', 'BANK PAPUA'),
(61, '133', 'BANK BENGKULU'),
(62, '134', 'BANK SULTENG (BANK SULAWESI TENGAH)'),
(63, '135', 'BANK SULTRA (BANK SULAWESI TENGGARA)'),
(64, '137', 'BANK BANTEN'),
(65, '003', 'BANK EKSPOR INDONESIA'),
(66, '019', 'BANK PANIN'),
(67, '517', 'BANK PANIN DUBAI SYARIAH'),
(68, '020', 'BANK ARTA NIAGA KENCANA'),
(69, '030', 'AMERICAN EXPRESS BANK LTD'),
(70, '031', 'CITIBANK'),
(71, '032', 'JP. MORGAN CHASE BANK, N.A.'),
(72, '033', 'BANK OF AMERICA, N.A'),
(73, '034', 'ING INDONESIA BANK'),
(74, '036', 'BANK CCB INDONESIA'),
(75, '037', 'BANK ARTHA GRAHA INTERNASIONAL'),
(76, '039', 'BANK CREDIT AGRICOLE INDOSUEZ'),
(77, '040', 'THE BANGKOK BANK COMP. LTD'),
(78, '042', 'MUFG BANK'),
(79, '045', 'BANK SUMITOMO MITSUI INDONESIA'),
(80, '047', 'BANK RESONA PERDANIA'),
(81, '048', 'BANK MIZUHO INDONESIA'),
(82, '050', 'STANDARD CHARTERED BANK'),
(83, '052', 'BANK ABN AMRO'),
(84, '053', 'BANK KEPPEL TATLEE BUANA'),
(85, '054', 'BANK CAPITAL INDONESIA'),
(86, '057', 'BANK BNP PARIBAS INDONESIA'),
(87, '059', 'KOREA EXCHANGE BANK DANAMON'),
(88, '060', 'RABOBANK INTERNASIONAL INDONESIA'),
(89, '061', 'BANK ANZ INDONESIA'),
(90, '069', 'BANK OF CHINA'),
(91, '076', 'BANK BUMI ARTA'),
(92, '087', 'BANK HSBC INDONESIA'),
(93, '087', 'BANK EKONOMI (Lebur dengan Bank HSBC)'),
(94, '088', 'BANK ANTARDAERAH'),
(95, '089', 'BANK HAGA'),
(96, '093', 'BANK IFI'),
(97, '095', 'BANK J TRUST INDONESIA'),
(98, '097', 'BANK MAYAPADA'),
(99, '145', 'BANK NUSANTARA PARAHYANGAN'),
(100, '146', 'BANK SWADESI (BANK OF INDIA INDONESIA)'),
(101, '151', 'BANK MESTIKA'),
(102, '152', 'BANK SHINHAN INDONESIA (BANK METRO EXPRESS)'),
(103, '157', 'BANK MASPION INDONESIA'),
(104, '159', 'BANK HAGAKITA'),
(105, '161', 'BANK GANESHA'),
(106, '162', 'BANK WINDU KENTJANA'),
(107, '164', 'BANK ICBC INDONESIA (HALIM INDONESIA BANK)'),
(108, '166', 'BANK HARMONI INTERNATIONAL'),
(109, '167', 'BANK QNB INDONESIA'),
(110, '212', 'BANK WOORI SAUDARA'),
(111, '405', 'BANK VICTORIA SYARIAH'),
(112, '459', 'BANK BISNIS INTERNASIONAL'),
(113, '466', 'BANK SRI PARTHA'),
(114, '472', 'BANK JASA JAKARTA'),
(115, '484', 'BANK HANA (KEB HANA BANK)'),
(116, '485', 'BANK MNC'),
(117, '490', 'BANK YUDHA BHAKTI'),
(118, '491', 'BANK MITRANIAGA'),
(119, '494', 'BANK BRI AGRO'),
(120, '498', 'BANK SBI INDONESIA (BANK INDOMONEX)'),
(121, '501', 'BANK DIGITAL BCA (BCA DIGITAL)'),
(122, '503', 'BANK NATIONAL NOBU (BANK ALFINDO)'),
(123, '506', 'BANK MEGA SYARIAH'),
(124, '513', 'BANK INA PERDANA'),
(125, '517', 'BANK PANIN DUBAI SYARIAH'),
(126, '520', 'PRIMA MASTER BANK'),
(127, '521', 'BANK PERSYARIKATAN INDONESIA'),
(128, '525', 'BANK AKITA'),
(129, '526', 'BANK DINAR INDONESIA'),
(130, '531', 'ANGLOMAS INTERNASIONAL BANK'),
(131, '523', 'BANK SAHABAT SAMPEORNA (BANK DIPO INTERNATIONAL)'),
(132, '535', 'BANK KESEJAHTERAAN EKONOMI'),
(133, '548', 'BANK MULTIARTA SENTOSA'),
(134, '553', 'BANK MAYORA INDONESIA'),
(135, '555', 'BANK INDEX SELINDO'),
(136, '558', 'BANK EKSEKUTIF'),
(137, '559', 'CENTRATAMA NASIONAL BANK'),
(138, '562', 'BANK FAMA INTERNASIONAL'),
(139, '564', 'BANK MANDIRI TASPEN POS (BANK SINAR HARAPAN BALI)'),
(140, '566', 'BANK VICTORIA INTERNATIONAL'),
(141, '567', 'BANK HARDA INTERNASIONAL'),
(142, '945', 'IBK BANK INDONESIA'),
(143, '946', 'BANK MERINCORP'),
(144, '947', 'BANK MAYBANK INDOCORP'),
(145, '949', 'BANK CTBC INDONESIA (CHINA TRUST)'),
(146, '688', 'BPR KS (KARYAJATNIKA SEDAYA)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `account_number` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `is_primary` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `slug`, `content`, `kategori_id`, `thumbnail`, `is_active`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Pelatihan Integrasi Jaringan', 'pelatihan-integrasi-jaringan', 'Pelatihan Integrasi Jaringan adalah program yang mengajarkan cara menghubungkan, mengkonfigurasi, dan mengelola berbagai jenis jaringan komputer, termasuk LAN, WAN, dan jaringan berbasis cloud. Peserta akan mempelajari konsep jaringan dasar, keamanan, konfigurasi perangkat, serta integrasi teknologi jaringan untuk meningkatkan keterampilan profesional di bidang TI.', 1, '1724999877_jrg.jpeg', '0', 1, '2024-08-29 23:37:57', '2024-08-29 23:37:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `berkas_murids`
--

CREATE TABLE `berkas_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `kartu_keluarga` varchar(255) DEFAULT NULL,
  `akte_kelahiran` varchar(255) DEFAULT NULL,
  `surat_kelakuan_baik` varchar(255) DEFAULT NULL,
  `surat_sehat` varchar(255) DEFAULT NULL,
  `surat_tidak_buta_warna` varchar(255) DEFAULT NULL,
  `rapor` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `ijazah` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `berkas_murids`
--

INSERT INTO `berkas_murids` (`id`, `user_id`, `kartu_keluarga`, `akte_kelahiran`, `surat_kelakuan_baik`, `surat_sehat`, `surat_tidak_buta_warna`, `rapor`, `foto`, `ijazah`, `created_at`, `updated_at`) VALUES
(1, 3, '1725001468_inkubator.png', '1725001468_inkubator.png', '1725001468_inkubator.png', '1725001468_inkubator.png', '1725001468_inkubator.png', '1725001468_inkubator.png', '1725001468_inkubator.png', '1725001468_inkubator.png', '2024-08-30 00:03:08', '2024-08-30 00:04:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `publication_year` year(4) NOT NULL,
  `isbn` varchar(50) NOT NULL,
  `stock` int(11) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `borrowings`
--

CREATE TABLE `borrowings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `borrow_code` varchar(255) NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `borrow_date` date NOT NULL,
  `return_date` date NOT NULL,
  `lateness` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_jurusans`
--

CREATE TABLE `data_jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jurusan_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_jurusans`
--

INSERT INTO `data_jurusans` (`id`, `jurusan_id`, `image`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, '1724998674_SI.jpeg', 'Sistem Informasi', '2024-08-29 23:17:56', '2024-08-29 23:17:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_murids`
--

CREATE TABLE `data_murids` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nis` bigint(20) DEFAULT NULL,
  `nisn` bigint(20) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `agama` enum('Islam','Kristen Katolik','Kristen Protestan','Hindu','Budha','Konghucu') DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `asal_sekolah` varchar(255) DEFAULT NULL,
  `proses` enum('Pendaftaran','Berkas','Murid','Ditolak') NOT NULL DEFAULT 'Pendaftaran',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_murids`
--

INSERT INTO `data_murids` (`id`, `user_id`, `nis`, `nisn`, `tempat_lahir`, `tgl_lahir`, `agama`, `telp`, `whatsapp`, `alamat`, `asal_sekolah`, `proses`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pendaftaran', '2024-08-29 00:47:18', '2024-08-29 00:47:18'),
(2, 3, NULL, NULL, 'Jerman', '2024-08-29', 'Konghucu', '081334521357', '081334521357', 'Selogiri, Wonogiri', 'MA WNG', 'Pendaftaran', '2024-08-30 00:00:33', '2024-08-30 00:01:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_orang_tuas`
--

CREATE TABLE `data_orang_tuas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `nama_ayah` varchar(255) DEFAULT NULL,
  `pendidikan_ayah` enum('SD','SMP','SMA/SMK','S1','S2','S3') DEFAULT NULL,
  `telp_ayah` varchar(255) DEFAULT NULL,
  `pekerjaan_ayah` enum('Wiraswasta','Wirausaha','ASN','Buruh') DEFAULT NULL,
  `alamat_ayah` varchar(255) DEFAULT NULL,
  `nama_ibu` varchar(255) DEFAULT NULL,
  `pendidikan_ibu` enum('SD','SMP','SMA/SMK','S1','S2','S3') DEFAULT NULL,
  `telp_ibu` varchar(255) DEFAULT NULL,
  `pekerjaan_ibu` enum('Ibu Rumah Tangga','Wiraswasta','Wirausaha','ASN','Buruh') DEFAULT NULL,
  `alamat_ibu` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `data_orang_tuas`
--

INSERT INTO `data_orang_tuas` (`id`, `user_id`, `nama_ayah`, `pendidikan_ayah`, `telp_ayah`, `pekerjaan_ayah`, `alamat_ayah`, `nama_ibu`, `pendidikan_ibu`, `telp_ibu`, `pekerjaan_ibu`, `alamat_ibu`, `created_at`, `updated_at`) VALUES
(1, 3, 'sugi', 'S3', '081213248956', 'Wiraswasta', 'sugi', 'tinah', 'SMA/SMK', '083284659023', 'Ibu Rumah Tangga', 'tinah', '2024-08-30 00:01:52', '2024-08-30 00:03:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_payment_spps`
--

CREATE TABLE `detail_payment_spps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sender` varchar(255) DEFAULT NULL,
  `bank_sender` varchar(255) DEFAULT NULL,
  `destination_bank` varchar(255) DEFAULT NULL,
  `month` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `status` enum('paid','unpaid') NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `date_file` date DEFAULT NULL,
  `approve_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `acara` datetime NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `events`
--

INSERT INTO `events` (`id`, `title`, `desc`, `slug`, `content`, `thumbnail`, `acara`, `lokasi`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Pelatihan Kewirausahaan', 'Pelatihan kewirausahaan mengajarkan keterampilan dan pengetahuan penting untuk memulai dan mengelola usaha sendiri, termasuk perencanaan bisnis, pemasaran, dan manajemen keuangan.', 'pelatihan-kewirausahaan', 'Pelatihan kewirausahaan adalah program yang dirancang untuk mengajarkan keterampilan dan pengetahuan yang diperlukan untuk memulai dan menjalankan usaha sendiri.', '1725000250_jaringan.jpeg', '2024-08-31 08:30:00', 'Solo Technopark', '0', '2024-08-29 23:44:10', '2024-08-29 23:44:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `footers`
--

INSERT INTO `footers` (`id`, `facebook`, `instagram`, `twitter`, `youtube`, `logo`, `telp`, `whatsapp`, `email`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Solo Tecnopark Incubator', 'Solo Tecnopark Incubator', 'Solo Tecnopark Incubator', 'Solo Tecnopark Incubator', '1725000570_inkubator.png', '081271317253', '081271317253', 'SoloecnoparkIncubator@gmail.com', 'Solo Technopark Incubator mendukung startup dengan fasilitas, bimbingan, dan sumber daya untuk mempercepat pengembangan bisnis dan teknologi.', '2024-08-29 23:49:30', '2024-08-29 23:49:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `image_sliders`
--

CREATE TABLE `image_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `urutan` int(11) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `image_sliders`
--

INSERT INTO `image_sliders` (`id`, `image`, `title`, `desc`, `urutan`, `is_active`, `created_at`, `updated_at`) VALUES
(1, '1724999217_jrg.jpeg', 'Pelatihan Integrasi Jaringan', 'Pelatihan Integrasi Jaringan adalah program yang mengajarkan cara menghubungkan, mengkonfigurasi, dan mengelola berbagai jenis jaringan komputer, termasuk LAN, WAN, dan jaringan berbasis cloud.', 0, '0', '2024-08-29 23:26:57', '2024-08-29 23:26:57'),
(2, '1724999370_SI.jpeg', 'Sistem Informasi', 'Sistem Informasi adalah sistem yang digunakan untuk mengumpulkan, memproses, menyimpan, dan mendistribusikan informasi guna mendukung operasi dan pengambilan keputusan dalam suatu organisasi.', 1, '0', '2024-08-29 23:29:30', '2024-08-29 23:29:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusans`
--

CREATE TABLE `jurusans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusans`
--

INSERT INTO `jurusans` (`id`, `nama`, `singkatan`, `slug`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Sistem Informasi', 'SI', 'sistem-informasi', '0', '2024-08-29 23:17:54', '2024-08-29 23:17:54');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_beritas`
--

CREATE TABLE `kategori_beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_beritas`
--

INSERT INTO `kategori_beritas` (`id`, `nama`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Pelatihan Integrasi Jaringan', '0', '2024-08-29 23:36:32', '2024-08-29 23:36:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imagas` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `nama`, `slug`, `image`, `imagas`, `content`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Pelatihan Integrasi Jaringan', 'pelatihan-integrasi-jaringan', '1724999030_jrg.jpeg', NULL, 'Pelatihan Integrasi Jaringan adalah program yang mengajarkan cara menghubungkan, mengkonfigurasi, dan mengelola berbagai jenis jaringan komputer, termasuk LAN, WAN, dan jaringan berbasis cloud. Peserta akan mempelajari konsep jaringan dasar, keamanan, konfigurasi perangkat, serta integrasi teknologi jaringan untuk meningkatkan keterampilan profesional di bidang TI.', '0', '2024-08-29 23:23:50', '2024-08-29 23:23:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `member_code` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_08_08_100000_create_banks_tables', 1),
(6, '2022_03_20_132856_create_jurusans_table', 1),
(7, '2022_03_20_133244_create_data_jurusans_table', 1),
(8, '2022_03_22_182953_create_kegiatans_table', 1),
(9, '2022_03_23_040838_create_image_sliders_table', 1),
(10, '2022_03_23_052723_add_field_to_image_sliders_table', 1),
(11, '2022_03_23_065335_create_abouts_table', 1),
(12, '2022_03_23_074809_create_videos_table', 1),
(13, '2022_03_24_075737_create_kategori_beritas_table', 1),
(14, '2022_03_24_075900_create_beritas_table', 1),
(15, '2022_03_24_105758_create_events_table', 1),
(16, '2022_03_24_201826_add_field_to_events_table', 1),
(17, '2022_03_24_204322_create_footers_table', 1),
(18, '2022_03_25_102915_create_permission_tables', 1),
(19, '2022_03_27_074151_create_users_details_table', 1),
(20, '2022_03_27_094236_create_data_murids_table', 1),
(21, '2022_03_28_154339_create_profile_sekolahs_table', 1),
(22, '2022_03_28_161701_create_visimisis_table', 1),
(23, '2022_03_30_084531_create_data_orang_tuas_table', 1),
(24, '2022_03_30_172737_add_value_role_in_users_table', 1),
(25, '2022_03_30_194727_add_value_role_in_users_details_table', 1),
(26, '2022_04_01_190600_add_field_to_data_murids', 1),
(27, '2022_04_01_191038_create_berkas_murids_table', 1),
(28, '2022_05_20_062053_create_authors_table', 1),
(29, '2022_05_20_062103_create_publishers_table', 1),
(30, '2022_05_20_062130_create_categories_table', 1),
(31, '2022_05_20_062140_create_books_table', 1),
(32, '2022_05_20_062219_create_members_table', 1),
(33, '2022_05_20_062236_create_borrowings_table', 1),
(34, '2022_07_16_094123_create_bank_accounts_table', 1),
(35, '2022_07_16_094821_create_payment_spps_table', 1),
(36, '2022_07_16_100447_create_detail_payment_spps_table', 1),
(37, '2022_07_16_145332_add_value_role_bendahara_in_users_table', 1),
(38, '2022_07_16_145418_add_value_role_bendahara_in_users_details_table', 1),
(39, '2022_07_29_072220_add_column_account_name_in_bank_accounts_table', 1),
(40, '2022_07_29_081354_add_column_in_detail_payment_spps_table', 1),
(41, '2022_08_01_080614_create_settings_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_spps`
--

CREATE TABLE `payment_spps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `year` bigint(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `January` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `February` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `March` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `April` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `May` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `June` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `July` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `August` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `September` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `October` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `November` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `December` enum('paid','unpaid','free') NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `profile_sekolahs`
--

CREATE TABLE `profile_sekolahs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `profile_sekolahs`
--

INSERT INTO `profile_sekolahs` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'SOLO TECNOPARK INCUBATOR', 'Solo Technopark Incubator mendukung startup dengan fasilitas, bimbingan, dan sumber daya untuk mempercepat pengembangan bisnis dan teknologi baru.', '1725000634_inkubator.png', '2024-08-29 23:50:34', '2024-08-29 23:50:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `publishers`
--

CREATE TABLE `publishers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2024-08-29 00:35:17', '2024-08-29 00:35:17'),
(2, 'Guru', 'web', '2024-08-29 00:35:17', '2024-08-29 00:35:17'),
(3, 'Staf', 'web', '2024-08-29 00:35:18', '2024-08-29 00:35:18'),
(4, 'Murid', 'web', '2024-08-29 00:35:18', '2024-08-29 00:35:18'),
(5, 'Orang Tua', 'web', '2024-08-29 00:35:18', '2024-08-29 00:35:18'),
(6, 'Alumni', 'web', '2024-08-29 00:35:18', '2024-08-29 00:35:18'),
(7, 'Guest', 'web', '2024-08-29 00:35:18', '2024-08-29 00:35:18'),
(8, 'Perpustakaan', 'web', '2024-08-29 00:35:18', '2024-08-29 00:35:18'),
(9, 'PPDB', 'web', '2024-08-29 00:35:18', '2024-08-29 00:35:18'),
(10, 'Bendahara', 'web', '2024-08-29 00:35:19', '2024-08-29 00:35:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `isEmail` tinyint(1) NOT NULL DEFAULT 0,
  `email` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `settings`
--

INSERT INTO `settings` (`id`, `isEmail`, `email`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 1, '2024-08-29 00:35:19', '2024-08-29 00:35:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') DEFAULT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL,
  `foto_profile` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `role`, `status`, `foto_profile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Sekolah', 'kepsek', 'kepsek@sch.id', 'Admin', 'Aktif', NULL, NULL, '$2y$10$AIOPTs2t8gmTE8FxKWoTI.I2NP6W.SniSTXrsNWu9tV4016O4kO4W', NULL, '2024-08-29 00:35:18', '2024-08-29 00:35:18'),
(2, 'bintang', 'bintang', 'alamsyahb208@gmail.com', 'Murid', 'Aktif', '', NULL, '$2y$10$yU.m8KjmZ8THaZzJsAJ/NOmUiSMLSv90Oo9zZPbH8hvKPFbIYPH/.', NULL, '2024-08-29 00:47:18', '2024-08-29 00:47:42'),
(3, 'ilham', 'ilham', 'ilham@sch.id', 'Murid', 'Aktif', NULL, NULL, '$2y$10$hTCanDjFBnZ0XYwZG83sHuzF1ryT.z4uGcG4qx0Vko8pFVU.0Wl6W', NULL, '2024-08-30 00:00:33', '2024-08-30 00:06:18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users_details`
--

CREATE TABLE `users_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('Admin','Guru','Staf','Murid','Orang Tua','Alumni','Guest','Perpustakaan','PPDB','Bendahara') DEFAULT NULL,
  `mengajar` varchar(255) DEFAULT NULL,
  `nip` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkidln` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `videos`
--

INSERT INTO `videos` (`id`, `title`, `desc`, `url`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Strategi Integrasi K3 dan Cyber Security dalam Perlindungan Data Digital', 'Materi Tentang Integrasi Jaringan', 'https://youtu.be/Z07BXbXdkNw?si=qzsqnAlT9BkvZqLZ', '0', '2024-08-29 23:35:57', '2024-08-29 23:35:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visimisis`
--

CREATE TABLE `visimisis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `visimisis`
--

INSERT INTO `visimisis` (`id`, `visi`, `misi`, `image`, `created_at`, `updated_at`) VALUES
(1, 'To become a superior, independent and sustainable business, technology and entrepreneurial development incubator center in producing strong and competitive technology-based start-up companies in 2034', 'Integrate/intermediate the potential of local resources, namely: Academics, Business Institutions, Government Institutions, and Communities (A, B, G, C)\r\nEncouraging the development of technology-based SMEs/SMIs, startups by conducting business incubation through technical and non-technical assistance\r\nDevelop business and entrepreneurial networks to support startup companies', '1725000728_inkubator.png', '2024-08-29 23:51:54', '2024-08-29 23:52:08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_name_unique` (`name`);

--
-- Indeks untuk tabel `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bank_accounts_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `beritas_title_unique` (`title`);

--
-- Indeks untuk tabel `berkas_murids`
--
ALTER TABLE `berkas_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_book_code_unique` (`book_code`);

--
-- Indeks untuk tabel `borrowings`
--
ALTER TABLE `borrowings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `borrowings_borrow_code_unique` (`borrow_code`);

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indeks untuk tabel `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_jurusans_jurusan_id_foreign` (`jurusan_id`);

--
-- Indeks untuk tabel `data_murids`
--
ALTER TABLE `data_murids`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detail_payment_spps_user_id_foreign` (`user_id`),
  ADD KEY `detail_payment_spps_payment_id_foreign` (`payment_id`);

--
-- Indeks untuk tabel `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `events_title_unique` (`title`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `image_sliders`
--
ALTER TABLE `image_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jurusans_nama_unique` (`nama`),
  ADD UNIQUE KEY `jurusans_slug_unique` (`slug`),
  ADD UNIQUE KEY `jurusans_singkatan_unique` (`singkatan`);

--
-- Indeks untuk tabel `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_beritas_nama_unique` (`nama`);

--
-- Indeks untuk tabel `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kegiatans_nama_unique` (`nama`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_member_code_unique` (`member_code`),
  ADD UNIQUE KEY `members_user_id_unique` (`user_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment_spps`
--
ALTER TABLE `payment_spps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_spps_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `publishers_name_unique` (`name`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indeks untuk tabel `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `visimisis`
--
ALTER TABLE `visimisis`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `banks`
--
ALTER TABLE `banks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `berkas_murids`
--
ALTER TABLE `berkas_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `borrowings`
--
ALTER TABLE `borrowings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `data_jurusans`
--
ALTER TABLE `data_jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_murids`
--
ALTER TABLE `data_murids`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `data_orang_tuas`
--
ALTER TABLE `data_orang_tuas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `image_sliders`
--
ALTER TABLE `image_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jurusans`
--
ALTER TABLE `jurusans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori_beritas`
--
ALTER TABLE `kategori_beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `payment_spps`
--
ALTER TABLE `payment_spps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `profile_sekolahs`
--
ALTER TABLE `profile_sekolahs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `publishers`
--
ALTER TABLE `publishers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users_details`
--
ALTER TABLE `users_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `visimisis`
--
ALTER TABLE `visimisis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `data_jurusans`
--
ALTER TABLE `data_jurusans`
  ADD CONSTRAINT `data_jurusans_jurusan_id_foreign` FOREIGN KEY (`jurusan_id`) REFERENCES `jurusans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_payment_spps`
--
ALTER TABLE `detail_payment_spps`
  ADD CONSTRAINT `detail_payment_spps_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payment_spps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `payment_spps`
--
ALTER TABLE `payment_spps`
  ADD CONSTRAINT `payment_spps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
