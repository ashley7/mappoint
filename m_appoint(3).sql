-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 11, 2019 at 08:41 AM
-- Server version: 5.7.24-0ubuntu0.18.10.1
-- PHP Version: 7.2.10-0ubuntu1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m_appoint`
--

-- --------------------------------------------------------

--
-- Table structure for table `apointment_records`
--

CREATE TABLE `apointment_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `number_of_visits` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance_status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `follow_up_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `method_of_follow_up` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reschedauled_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reschedauled_time` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_id` int(10) UNSIGNED NOT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_to_return` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_to_return` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appointment_status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_suport_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `created_at`, `updated_at`, `date_to_return`, `time_to_return`, `appointment_status`, `family_suport_group_id`) VALUES
(8, '2018-07-29 09:24:01', '2018-09-07 08:26:56', '09-26-2018', '8:30 AM', '2', 14);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_record_care_types`
--

CREATE TABLE `appointment_record_care_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `care_type_id` int(10) UNSIGNED NOT NULL,
  `apointment_record_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `art_card_regimens`
--

CREATE TABLE `art_card_regimens` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_recorded` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_recorded` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_recorded` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regimen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `hiv_care_art_card_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `art_card_regimens`
--

INSERT INTO `art_card_regimens` (`id`, `created_at`, `updated_at`, `date_recorded`, `month_recorded`, `year_recorded`, `regimen`, `reason`, `hiv_care_art_card_id`) VALUES
(3, '2018-04-24 10:19:08', '2018-04-24 10:19:08', '09-14-13', '09', '13', 'TDF/3TC/EFV', '10', 11),
(4, '2018-04-24 10:21:14', '2018-04-24 10:21:14', '09-14-2013', '09', '2013', 'TDF/3TC/EFV', NULL, 11),
(5, '2018-04-25 08:55:28', '2018-04-25 08:55:28', '07-02-2014', '07', '2014', 'TDF/3TC/NVP', NULL, 19),
(6, '2018-04-25 11:30:26', '2018-04-25 11:30:26', '08-09-2013', '08', '2013', 'AZT/3TC/NVP', '5', 18),
(7, '2018-04-27 09:08:52', '2018-04-27 09:08:52', '11-29-2017', '11', '2017', 'AZT/3TC/ATV/R', '8', 38),
(8, '2018-04-27 09:08:52', '2018-04-27 09:08:52', '11-29-2017', '11', '2017', 'AZT/3TC/ATV/R', '8', 38),
(9, '2018-04-28 10:35:29', '2018-04-28 10:35:29', '08-08-2011', '08', '2011', 'TDF 3TC EFV', NULL, 68),
(10, '2018-04-28 14:54:38', '2018-04-28 14:54:38', '02-14-2018', '02', '2018', 'TDF 3TC EFV', NULL, 91),
(12, '2018-04-29 11:15:17', '2018-04-29 11:15:17', '04-27-2011', '04', '2011', 'CBU/NUP', NULL, 137),
(13, '2018-04-29 11:17:45', '2018-04-29 11:17:45', '10-28-2015', '10', '2015', 'TDF 3TC EFV', NULL, 138),
(14, '2018-04-29 14:31:01', '2018-04-29 14:31:01', '11-25-2015', '11', '2015', 'TDF 3TC EFV', 'POOR ADHERENCE', 169),
(15, '2018-04-29 14:31:03', '2018-04-29 14:31:03', '11-25-2015', '11', '2015', 'TDF 3TC EFV', 'POOR ADHERENCE', 169),
(16, '2018-05-01 08:52:39', '2018-05-01 08:52:39', '08-09-2013', '08', '2013', 'ANT/3TC/NVP', '5', 18),
(17, '2018-05-01 08:52:39', '2018-05-01 08:52:39', '08-09-2013', '08', '2013', 'ANT/3TC/NVP', '5', 18),
(18, '2018-05-01 08:52:39', '2018-05-01 08:52:39', '08-09-2013', '08', '2013', 'ANT/3TC/NVP', '5', 18),
(19, '2018-05-01 08:53:17', '2018-05-01 08:53:17', '08-09-2013', '08', '2013', 'AZT/3TC/NVP', NULL, 18),
(20, '2018-05-01 09:55:01', '2018-05-01 09:55:01', '02-07-2016', '02', '2016', 'AZT/3TC/NVP', NULL, 25),
(21, '2018-05-03 09:13:20', '2018-05-03 09:13:20', '07-31-2016', '07', '2016', 'AZT/3TC/ATV/R', '9', 217),
(22, '2018-05-09 08:18:30', '2018-05-09 08:18:30', '05-09-2018', '05', '2018', 'ABC/3TC/EFV', '10', 48);

-- --------------------------------------------------------

--
-- Table structure for table `art_treatment_interaptions`
--

CREATE TABLE `art_treatment_interaptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `circle` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_accured` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_accured` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_accured` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_restart` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_restart` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_restart` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `art_treatment_interaptions`
--

INSERT INTO `art_treatment_interaptions` (`id`, `created_at`, `updated_at`, `circle`, `date_accured`, `month_accured`, `year_accured`, `reason`, `date_restart`, `month_restart`, `year_restart`, `hiv_care_art_card_id`) VALUES
(5, '2018-08-28 15:25:41', '2018-08-28 15:25:41', 'Stop', '05-02-2018', '05', '2018', 'Other patient decision', NULL, NULL, NULL, 47);

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_id` int(10) UNSIGNED NOT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `care_entry_points`
--

CREATE TABLE `care_entry_points` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `care_entry_points`
--

INSERT INTO `care_entry_points` (`id`, `created_at`, `updated_at`, `name`, `description`) VALUES
(1, '2018-04-16 06:42:14', '2018-04-16 06:42:14', 'eMTCT', NULL),
(2, '2018-04-16 06:42:14', '2018-04-16 06:42:14', 'TB', NULL),
(4, '2018-04-16 06:42:14', '2018-04-16 06:42:14', 'STI', NULL),
(5, '2018-04-16 06:42:14', '2018-04-16 06:42:14', 'YCC', NULL),
(6, '2018-04-16 06:42:14', '2018-04-16 06:42:14', 'Inpatient', NULL),
(7, '2018-04-16 06:42:14', '2018-04-16 06:42:14', 'SMC', NULL),
(11, '2018-04-16 06:45:39', '2018-04-16 06:45:39', 'Out Patient', NULL),
(16, '2018-04-16 06:45:39', '2018-04-16 06:45:39', 'Out Reach', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `care_types`
--

CREATE TABLE `care_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `children_hiv_statuses`
--

CREATE TABLE `children_hiv_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_tested` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `month_tested` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_tested` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `test_results` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `falimly_suport_group_register_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `communications`
--

CREATE TABLE `communications` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `phonenumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appointment_id` int(10) UNSIGNED DEFAULT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `communications`
--

INSERT INTO `communications` (`id`, `created_at`, `updated_at`, `message`, `phonenumber`, `status`, `amount`, `appointment_id`, `hiv_care_art_card_id`) VALUES
(1, '2018-04-16 11:49:26', '2018-04-16 11:49:26', 'Dear Samson Tusiime You have been made a Linkage Facilitator your Login email is: tusiimesam@gmail.com and Password is: fs47w', '+256775926572', 'Success', 'UGX 35.0000', NULL, NULL),
(42, '2018-04-19 10:02:13', '2018-04-19 10:02:13', 'Dear Samson Tusiime your new M-Appoint password is KGpW6', '+256775926572', 'Success', 'UGX 35.0000', NULL, NULL),
(43, '2018-04-19 10:03:25', '2018-04-19 10:03:25', 'Dear Samson Tusiime your new M-Appoint password is aS3d2', '+256775926572', 'Success', 'UGX 35.0000', NULL, NULL),
(44, '2018-04-19 10:03:59', '2018-04-19 10:03:59', 'Dear Samson Tusiime your new M-Appoint password is agxnm', '+256775926572', 'Success', 'UGX 35.0000', NULL, NULL),
(54, '2018-04-23 13:33:57', '2018-04-23 13:33:57', 'Dear BUKENYA DEBORAH, You have been made a Linkage Facilitator your Login email is: bukenyadeb2018@gmail.com Phone Number is: +256778283353 and Password is: 63286', '+256778283353', 'Success', 'UGX 70.0000', NULL, NULL),
(55, '2018-05-04 16:23:19', '2018-05-04 16:23:19', 'An Appointment has been made for you FSG on 05-23-2018 at 7:30 PM', '256778283353', 'Success', 'UGX 35.0000', NULL, NULL),
(56, '2018-05-14 11:23:32', '2018-05-14 11:23:32', 'fdddff', '256775926572', 'Success', 'UGX 35.0000', NULL, NULL),
(57, '2018-05-15 06:13:29', '2018-05-15 06:13:29', 'Dear Some User Name, You have been made a Linkage Facilitator your Login email is: some@user.co Phone Number is: +256787444081 and Password is: 14545', '256787444081', 'Success', 'UGX 35.0000', NULL, NULL),
(58, '2018-05-18 09:49:30', '2018-05-18 09:49:30', 'Dear Mukandekezi Harriet, You have been made a Linkage Facilitator your Login email is: mukandekezi@gmail.com Phone Number is: +256771898532 and Password is: 93894', '256771898532', 'Success', 'UGX 70.0000', NULL, NULL),
(59, '2018-05-18 09:58:01', '2018-05-18 09:58:01', 'An Appointment has been made for you FSG on 05-30-2018 at 1:00 PM', '256778283353', 'Success', 'UGX 35.0000', NULL, NULL),
(60, '2018-05-18 10:08:42', '2018-05-18 10:08:42', 'Dear Kavakule Pascal, You have been made a Linkage Facilitator your Login email is: kavakule@gmail.com Phone Number is: +256758282268 and Password is: 73621', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(61, '2018-05-18 10:11:11', '2018-05-18 10:11:11', 'Dear Logoose Sarah, You have been made a Linkage Facilitator your Login email is: logoosesarah@gmail.com Phone Number is: +256783866274 and Password is: 78722', '256783866274', 'Success', 'UGX 35.0000', NULL, NULL),
(62, '2018-05-18 10:13:03', '2018-05-18 10:13:03', 'Dear Naluyinda Jesca, You have been made a Linkage Facilitator your Login email is: naluyinda@gmail.com Phone Number is: +256786373581 and Password is: 33644', '256786373581', 'Success', 'UGX 35.0000', NULL, NULL),
(63, '2018-05-18 10:14:51', '2018-05-18 10:14:51', 'Dear Nakimera Ritah, You have been made a Linkage Facilitator your Login email is: nakimera@gmail.com Phone Number is: +256783861530 and Password is: 68266', '256783861530', 'Success', 'UGX 35.0000', NULL, NULL),
(64, '2018-05-18 10:17:10', '2018-05-18 10:17:10', 'Dear Nantongo Annet, You have been made a Linkage Facilitator your Login email is: nantongo@gmail.com Phone Number is: +256774180753 and Password is: 13144', '256774180753', 'Success', 'UGX 35.0000', NULL, NULL),
(65, '2018-05-18 10:18:32', '2018-05-18 10:18:32', 'Dear Namande Prossy, You have been made a Linkage Facilitator your Login email is: namande@gmail.com Phone Number is: +256759706732 and Password is: 38685', '256759706732', 'Success', 'UGX 35.0000', NULL, NULL),
(66, '2018-05-18 10:20:15', '2018-05-18 10:20:15', 'Dear Nabweteme Prossy, You have been made a Linkage Facilitator your Login email is: nabweteme@gmail.com Phone Number is: +256756321552 and Password is: 13995', '256756321552', 'Success', 'UGX 35.0000', NULL, NULL),
(67, '2018-05-18 10:22:09', '2018-05-18 10:22:09', 'Dear Kyobe Richard, You have been made a Linkage Facilitator your Login email is: kyoberichard@gmail.com Phone Number is: +256774254806 and Password is: 34899', '256774254806', 'Success', 'UGX 35.0000', NULL, NULL),
(68, '2018-06-03 20:37:18', '2018-06-03 20:37:18', 'Dear KAMBEJJA we are reminding you that you return to the health center Tomorrow  06-04-2018 | 256780234525', '256780234525', 'Success', 'UGX 35.0000', NULL, 207),
(69, '2018-06-18 09:27:08', '2018-06-18 09:27:08', 'Dear Nakimera Ritah your new M-Appoint password is 59736', '256783861530', 'Success', 'UGX 35.0000', NULL, NULL),
(70, '2018-06-18 09:32:13', '2018-06-18 09:32:13', 'Dear Nakimera Ritah your new M-Appoint password is 66663', '256783861530', 'Success', 'UGX 35.0000', NULL, NULL),
(71, '2018-06-18 09:40:13', '2018-06-18 09:40:13', 'Dear Nakimera Ritah your new M-Appoint password is 21651', '256783861530', 'Success', 'UGX 35.0000', NULL, NULL),
(72, '2018-06-18 09:58:32', '2018-06-18 09:58:32', 'Dear KABAKULE, olwalero batwetaga kudwaliro', '256758282268', 'Success', 'UGX 35.0000', NULL, 13),
(73, '2018-06-18 10:26:43', '2018-06-18 10:26:43', 'Dear Kavakule Pascal your new M-Appoint password is 45545', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(74, '2018-06-19 14:10:25', '2018-06-19 14:10:25', 'Dear Namale we are reminding you that you return to the health center Tomorrow  06-20-2018 | 256705517218', '256705517218', 'Success', 'UGX 35.0000', NULL, 92),
(75, '2018-06-27 15:13:41', '2018-06-27 15:13:41', 'Dear BIRABWA we are reminding you that you return to the health center Tomorrow  06-28-2018 | 256781801717', '256781801717', 'Success', 'UGX 35.0000', NULL, 93),
(76, '2018-06-27 15:13:42', '2018-06-27 15:13:42', 'Dear NABAYEGO we are reminding you that you return to the health center Tomorrow  06-28-2018 | 256700573929', '256700573929', 'Success', 'UGX 35.0000', NULL, 115),
(77, '2018-06-27 15:13:43', '2018-06-27 15:13:43', 'Dear KASOLO we are reminding you that you return to the health center Tomorrow  06-28-2018 | 256779438807', '256779438807', 'Success', 'UGX 35.0000', NULL, 158),
(78, '2018-06-27 15:13:44', '2018-06-27 15:13:44', 'Dear KASOLO we are reminding you that you return to the health center Tomorrow  06-28-2018 | 256779438807', '256779438807', 'Success', 'UGX 35.0000', NULL, 158),
(79, '2018-06-27 15:13:45', '2018-06-27 15:13:45', 'Dear NABUKEERA we are reminding you that you return to the health center Tomorrow  06-28-2018 | 2567775942', '2567775942', 'InvalidPhoneNumber', '0', NULL, 238),
(80, '2018-06-27 15:13:45', '2018-06-27 15:13:45', 'Dear BABIRYE we are reminding you that you return to the health center Tomorrow  06-28-2018 | 256750428275', '256750428275', 'Success', 'UGX 35.0000', NULL, 239),
(81, '2018-06-27 15:13:45', '2018-06-27 15:13:45', 'Dear BABIRYE we are reminding you that you return to the health center Tomorrow  06-28-2018 | 256750428275', '256750428275', 'Success', 'UGX 35.0000', NULL, 239),
(82, '2018-06-27 15:16:37', '2018-06-27 15:16:37', 'Dear KYOMUKAMA, ', '256786213553', 'Success', 'UGX 35.0000', NULL, 141),
(83, '2018-07-17 11:56:13', '2018-07-17 11:56:13', 'Dear KABAKULE, ', '256758282268', 'Success', 'UGX 35.0000', NULL, 13),
(84, '2018-07-21 08:42:13', '2018-07-21 08:42:13', 'Dear NAMUTEBI, namutebi..jja', '256751167314', 'Success', 'UGX 35.0000', NULL, 53),
(85, '2018-07-21 08:42:25', '2018-07-21 08:42:25', 'Dear NAMUTEBI, ', '256751167314', 'Success', 'UGX 35.0000', NULL, 53),
(86, '2018-07-21 08:42:30', '2018-07-21 08:42:30', 'Dear NAMUTEBI, ', '256751167314', 'Success', 'UGX 35.0000', NULL, 53),
(87, '2018-07-24 06:33:42', '2018-07-24 06:33:42', 'Dear KABAKULE we are reminding you that you return to the health center Tomorrow  07-25-2018 | 256758282268', '256758282268', 'Success', 'UGX 35.0000', NULL, 13),
(88, '2018-07-24 06:33:43', '2018-07-24 06:33:43', 'Dear KINAAWA we are reminding you that you return to the health center Tomorrow  07-25-2018 | 256750576339', '256750576339', 'InsufficientBalance', '0', NULL, 24),
(89, '2018-07-24 06:33:45', '2018-07-24 06:33:45', 'Dear NAMULONDO we are reminding you that you return to the health center Tomorrow  07-25-2018 | 256785780117', '256785780117', 'InsufficientBalance', '0', NULL, 139),
(90, '2018-07-24 06:33:46', '2018-07-24 06:33:46', 'Dear NAKIBERU we are reminding you that you return to the health center Tomorrow  07-25-2018 | 256759745190', '256759745190', 'InsufficientBalance', '0', NULL, 243),
(91, '2018-07-31 02:00:16', '2018-07-31 02:00:16', 'Dear NAKIMERA we are reminding you that you return to the health center Tomorrow  08-01-2018 | 256753040160', '256753040160', 'InsufficientBalance', '0', NULL, 26),
(92, '2018-07-31 02:00:19', '2018-07-31 02:00:19', 'Dear NAKABUUBI we are reminding you that you return to the health center Tomorrow  08-01-2018 | 256754721296', '256754721296', 'InsufficientBalance', '0', NULL, 251),
(93, '2018-07-31 18:27:35', '2018-07-31 18:27:35', 'Dear KYOMUKAMA, ', '256786213553', 'InsufficientBalance', '0', NULL, 141),
(94, '2018-08-04 10:51:49', '2018-08-04 10:51:49', 'Dear NABALONZI we are reminding you that you return to the health center Tomorrow  08-05-2018 | 256754447271', '256754447271', 'InsufficientBalance', '0', NULL, 57),
(95, '2018-08-28 07:23:27', '2018-08-28 07:23:27', 'Dear NAKANWAGI we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256700731267', '256700731267', 'Success', 'UGX 35.0000', NULL, 30),
(96, '2018-08-28 07:23:28', '2018-08-28 07:23:28', 'Dear NAKYANZI we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256783178799', '256783178799', 'Success', 'UGX 35.0000', NULL, 55),
(97, '2018-08-28 07:23:29', '2018-08-28 07:23:29', 'Dear NAKAMATE we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256783560775', '256783560775', 'Success', 'UGX 35.0000', NULL, 76),
(98, '2018-08-28 07:23:30', '2018-08-28 07:23:30', 'Dear NSUBUGA we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256755984849', '256755984849', 'Success', 'UGX 35.0000', NULL, 165),
(99, '2018-08-28 07:23:31', '2018-08-28 07:23:31', 'Dear NANYANZI we are reminding you that you return to the health center Tomorrow  08-29-2018 | 25677809621', '25677809621', 'InvalidPhoneNumber', '0', NULL, 167),
(100, '2018-08-28 07:23:32', '2018-08-28 07:23:32', 'Dear NAKAJJA we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256788002256', '256788002256', 'Success', 'UGX 35.0000', NULL, 171),
(101, '2018-08-28 07:23:33', '2018-08-28 07:23:33', 'Dear MUSISI KIRAAGA we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256758197537', '256758197537', 'Success', 'UGX 35.0000', NULL, 197),
(102, '2018-08-28 07:23:34', '2018-08-28 07:23:34', 'Dear NANYONGA we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256750733889', '256750733889', 'Success', 'UGX 35.0000', NULL, 206),
(103, '2018-08-28 07:23:34', '2018-08-28 07:23:34', 'Dear NAKAKANDE we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256752187790', '256752187790', 'Success', 'UGX 35.0000', NULL, 240),
(104, '2018-08-28 07:23:35', '2018-08-28 07:23:35', 'Dear SSERUBBO we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256752890405', '256752890405', 'Success', 'UGX 35.0000', NULL, 241),
(105, '2018-08-28 07:23:36', '2018-08-28 07:23:36', 'Dear AWOLI we are reminding you that you return to the health center Tomorrow  08-29-2018 | 256758250713', '256758250713', 'Success', 'UGX 35.0000', NULL, 242),
(106, '2018-08-28 07:23:37', '2018-08-28 07:23:37', 'Dear BULYABA we are reminding you that you return to the health center Tomorrow  08-29-2018 | 25675203334', '25675203334', 'InvalidPhoneNumber', '0', NULL, 259),
(107, '2018-08-28 09:26:38', '2018-08-28 09:26:38', 'Hello', '256775926572', 'Success', 'UGX 35.0000', NULL, NULL),
(108, '2018-08-28 10:17:03', '2018-08-28 10:17:03', 'Dear Kavakule Pascal your new M-Appoint password is 84647', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(109, '2018-08-28 10:49:37', '2018-08-28 10:49:37', 'Dear Kavakule Pascal your new M-Appoint password is 34469', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(110, '2018-08-29 04:38:12', '2018-08-29 04:38:12', 'Dear NANSUBUGA we are reminding you that you return to the health center Tomorrow  08-30-2018 | 256775036312', '256775036312', 'Success', 'UGX 35.0000', NULL, 75),
(111, '2018-09-04 07:37:15', '2018-09-04 07:37:15', 'Dear MWAMULA we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256704747200', '256704747200', 'Success', 'UGX 35.0000', NULL, 37),
(112, '2018-09-04 07:37:16', '2018-09-04 07:37:16', 'Dear NAGAWA we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256783455827', '256783455827', 'Success', 'UGX 35.0000', NULL, 70),
(113, '2018-09-04 07:37:16', '2018-09-04 07:37:16', 'Dear SENTONGO we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256782815851', '256782815851', 'Success', 'UGX 35.0000', NULL, 71),
(114, '2018-09-04 07:37:17', '2018-09-04 07:37:17', 'Dear NAZZIWA we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256759515507', '256759515507', 'Success', 'UGX 35.0000', NULL, 88),
(115, '2018-09-04 07:37:18', '2018-09-04 07:37:18', 'Dear NAKIMULI we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256', '256', 'InvalidPhoneNumber', '0', NULL, 126),
(116, '2018-09-04 07:37:19', '2018-09-04 07:37:19', 'Dear BUKIRWA we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256754632903', '256754632903', 'Success', 'UGX 35.0000', NULL, 144),
(117, '2018-09-04 07:37:20', '2018-09-04 07:37:20', 'Dear WANDEGA we are reminding you that you return to the health center Tomorrow  09-05-2018 | 25675674614O', '25675674614O', 'InvalidPhoneNumber', '0', NULL, 150),
(118, '2018-09-04 07:37:21', '2018-09-04 07:37:21', 'Dear MUSISI we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256774169904', '256774169904', 'Success', 'UGX 35.0000', NULL, 151),
(119, '2018-09-04 07:37:21', '2018-09-04 07:37:21', 'Dear NAMANDE we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256750826306', '256750826306', 'Success', 'UGX 35.0000', NULL, 175),
(120, '2018-09-04 07:37:22', '2018-09-04 07:37:22', 'Dear SEMWALO we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256774935916', '256774935916', 'Success', 'UGX 35.0000', NULL, 179),
(121, '2018-09-04 07:37:23', '2018-09-04 07:37:23', 'Dear KIYIMBA we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256758448314', '256758448314', 'Success', 'UGX 35.0000', NULL, 181),
(122, '2018-09-04 07:37:24', '2018-09-04 07:37:24', 'Dear MUKASA we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256772085241', '256772085241', 'Success', 'UGX 35.0000', NULL, 198),
(123, '2018-09-04 07:37:24', '2018-09-04 07:37:24', 'Dear KEMIREMBE we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256777907704', '256777907704', 'Success', 'UGX 35.0000', NULL, 214),
(124, '2018-09-04 07:37:25', '2018-09-04 07:37:25', 'Dear NABISUBI we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256777970521', '256777970521', 'Success', 'UGX 35.0000', NULL, 216),
(125, '2018-09-04 07:37:26', '2018-09-04 07:37:26', 'Dear NABAKUUMA we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256788640903', '256788640903', 'Success', 'UGX 35.0000', NULL, 249),
(126, '2018-09-04 07:37:27', '2018-09-04 07:37:27', 'Dear NASIMU we are reminding you that you return to the health center Tomorrow  09-05-2018 | 256773907878', '256773907878', 'Success', 'UGX 35.0000', NULL, 256),
(127, '2018-09-12 18:49:45', '2018-09-12 18:49:45', 'Dear NAMUSISI, ', '256778946858', 'Success', 'UGX 35.0000', NULL, 20),
(128, '2018-10-06 14:41:44', '2018-10-06 14:41:44', 'Just Testing the new deployment after a migration', '256758282268', 'Success', 'UGX 35.0000', NULL, 13),
(129, '2018-10-23 12:57:30', '2018-10-23 12:57:30', 'Dear Logoose Sarah your new M-Appoint password is 25723', '256783866274', 'Success', 'UGX 35.0000', NULL, NULL),
(130, '2018-10-23 13:03:59', '2018-10-23 13:03:59', 'Dear Kavakule Pascal your new M-Appoint password is 92496', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(131, '2018-10-23 13:07:04', '2018-10-23 13:07:04', 'Dear Nakimera Ritah your new M-Appoint password is 36655', '256783861530', 'Success', 'UGX 35.0000', NULL, NULL),
(132, '2018-10-23 13:25:34', '2018-10-23 13:25:34', 'Dear KONDE we are reminding you that you return to the health center Tomorrow  10-24-2018 | 256777907521', '256777907521', 'Success', 'UGX 35.0000', NULL, 266),
(133, '2018-10-24 08:59:42', '2018-10-24 08:59:42', 'Dear NABIKOLO we are reminding you that you return to the health center Tomorrow  10-25-2018 | 256754666604', '256754666604', 'Success', 'UGX 35.0000', NULL, 98),
(134, '2018-10-28 16:21:32', '2018-10-28 16:21:32', 'Dear NANSUBUGA, ', '256773742696', 'Success', 'UGX 35.0000', NULL, 42),
(135, '2018-10-28 16:23:14', '2018-10-28 16:23:14', 'Dear NANSUBUGA, ', '256773742696', 'Success', 'UGX 35.0000', NULL, 42),
(136, '2018-10-28 21:41:48', '2018-10-28 21:41:48', 'Dear WADADA, j', '256782968899', 'Success', 'UGX 35.0000', NULL, 219),
(137, '2018-12-05 06:22:47', '2018-12-05 06:22:47', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(138, '2018-12-05 06:22:47', '2018-12-05 06:22:47', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(139, '2018-12-05 06:24:50', '2018-12-05 06:24:50', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(140, '2018-12-05 06:24:51', '2018-12-05 06:24:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(141, '2018-12-05 06:25:50', '2018-12-05 06:25:50', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(142, '2018-12-05 06:25:50', '2018-12-05 06:25:50', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(143, '2018-12-05 06:26:51', '2018-12-05 06:26:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(144, '2018-12-05 06:26:51', '2018-12-05 06:26:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(145, '2018-12-05 06:29:20', '2018-12-05 06:29:20', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(146, '2018-12-05 06:29:20', '2018-12-05 06:29:20', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(147, '2018-12-05 06:30:18', '2018-12-05 06:30:18', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(148, '2018-12-05 06:30:18', '2018-12-05 06:30:18', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(149, '2018-12-05 06:31:19', '2018-12-05 06:31:19', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(150, '2018-12-05 06:31:19', '2018-12-05 06:31:19', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(151, '2018-12-05 06:32:58', '2018-12-05 06:32:58', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(152, '2018-12-05 06:32:58', '2018-12-05 06:32:58', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(153, '2018-12-05 06:33:58', '2018-12-05 06:33:58', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(154, '2018-12-05 06:33:58', '2018-12-05 06:33:58', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(155, '2018-12-05 06:35:49', '2018-12-05 06:35:49', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(156, '2018-12-05 06:35:50', '2018-12-05 06:35:50', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(157, '2018-12-05 06:36:49', '2018-12-05 06:36:49', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(158, '2018-12-05 06:36:50', '2018-12-05 06:36:50', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(159, '2018-12-05 06:37:50', '2018-12-05 06:37:50', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(160, '2018-12-05 06:37:51', '2018-12-05 06:37:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(161, '2018-12-05 06:39:41', '2018-12-05 06:39:41', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(162, '2018-12-05 06:39:41', '2018-12-05 06:39:41', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(163, '2018-12-05 06:40:41', '2018-12-05 06:40:41', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(164, '2018-12-05 06:40:41', '2018-12-05 06:40:41', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(165, '2018-12-05 06:41:44', '2018-12-05 06:41:44', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(166, '2018-12-05 06:41:44', '2018-12-05 06:41:44', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(167, '2018-12-05 06:43:09', '2018-12-05 06:43:09', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(168, '2018-12-05 06:43:09', '2018-12-05 06:43:09', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(169, '2018-12-05 06:44:09', '2018-12-05 06:44:09', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(170, '2018-12-05 06:44:09', '2018-12-05 06:44:09', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(171, '2018-12-05 06:45:09', '2018-12-05 06:45:09', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(172, '2018-12-05 06:45:10', '2018-12-05 06:45:10', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(173, '2018-12-05 06:46:08', '2018-12-05 06:46:08', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(174, '2018-12-05 06:46:08', '2018-12-05 06:46:08', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(175, '2018-12-05 07:09:29', '2018-12-05 07:09:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(176, '2018-12-05 07:09:29', '2018-12-05 07:09:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(177, '2018-12-05 07:10:27', '2018-12-05 07:10:27', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(178, '2018-12-05 07:10:28', '2018-12-05 07:10:28', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(179, '2018-12-05 07:11:28', '2018-12-05 07:11:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(180, '2018-12-05 07:11:28', '2018-12-05 07:11:28', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(181, '2018-12-05 07:12:28', '2018-12-05 07:12:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(182, '2018-12-05 07:12:29', '2018-12-05 07:12:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(183, '2018-12-05 07:13:29', '2018-12-05 07:13:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(184, '2018-12-05 07:13:29', '2018-12-05 07:13:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(185, '2018-12-05 07:14:29', '2018-12-05 07:14:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(186, '2018-12-05 07:14:29', '2018-12-05 07:14:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(187, '2018-12-05 07:15:28', '2018-12-05 07:15:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(188, '2018-12-05 07:15:29', '2018-12-05 07:15:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(189, '2018-12-05 07:16:28', '2018-12-05 07:16:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(190, '2018-12-05 07:16:29', '2018-12-05 07:16:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(191, '2018-12-05 07:17:28', '2018-12-05 07:17:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(192, '2018-12-05 07:17:28', '2018-12-05 07:17:28', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(193, '2018-12-05 07:18:28', '2018-12-05 07:18:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(194, '2018-12-05 07:18:29', '2018-12-05 07:18:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(195, '2018-12-05 07:19:28', '2018-12-05 07:19:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(196, '2018-12-05 07:19:29', '2018-12-05 07:19:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(197, '2018-12-05 07:20:29', '2018-12-05 07:20:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(198, '2018-12-05 07:20:29', '2018-12-05 07:20:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(199, '2018-12-05 07:21:29', '2018-12-05 07:21:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(200, '2018-12-05 07:21:30', '2018-12-05 07:21:30', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(201, '2018-12-05 07:22:29', '2018-12-05 07:22:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(202, '2018-12-05 07:22:29', '2018-12-05 07:22:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(203, '2018-12-05 07:23:28', '2018-12-05 07:23:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(204, '2018-12-05 07:23:29', '2018-12-05 07:23:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(205, '2018-12-05 07:24:29', '2018-12-05 07:24:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'Success', 'UGX 35.0000', NULL, 105),
(206, '2018-12-05 07:24:29', '2018-12-05 07:24:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'Success', 'UGX 35.0000', NULL, NULL),
(207, '2018-12-05 07:25:28', '2018-12-05 07:25:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(208, '2018-12-05 07:25:29', '2018-12-05 07:25:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(209, '2018-12-05 07:26:28', '2018-12-05 07:26:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(210, '2018-12-05 07:26:29', '2018-12-05 07:26:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(211, '2018-12-05 07:27:28', '2018-12-05 07:27:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(212, '2018-12-05 07:27:29', '2018-12-05 07:27:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(213, '2018-12-05 07:28:28', '2018-12-05 07:28:28', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(214, '2018-12-05 07:28:29', '2018-12-05 07:28:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(215, '2018-12-05 07:29:29', '2018-12-05 07:29:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(216, '2018-12-05 07:29:29', '2018-12-05 07:29:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(217, '2018-12-05 07:30:29', '2018-12-05 07:30:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(218, '2018-12-05 07:30:29', '2018-12-05 07:30:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(219, '2018-12-05 07:31:30', '2018-12-05 07:31:30', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(220, '2018-12-05 07:31:30', '2018-12-05 07:31:30', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(221, '2018-12-05 07:32:29', '2018-12-05 07:32:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(222, '2018-12-05 07:32:30', '2018-12-05 07:32:30', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(223, '2018-12-05 07:33:29', '2018-12-05 07:33:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(224, '2018-12-05 07:33:29', '2018-12-05 07:33:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(225, '2018-12-05 07:34:29', '2018-12-05 07:34:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(226, '2018-12-05 07:34:29', '2018-12-05 07:34:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(227, '2018-12-05 07:35:29', '2018-12-05 07:35:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(228, '2018-12-05 07:35:29', '2018-12-05 07:35:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(229, '2018-12-05 07:36:29', '2018-12-05 07:36:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(230, '2018-12-05 07:36:29', '2018-12-05 07:36:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(231, '2018-12-05 08:13:16', '2018-12-05 08:13:16', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(232, '2018-12-05 08:13:16', '2018-12-05 08:13:16', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(233, '2018-12-05 08:13:21', '2018-12-05 08:13:21', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(234, '2018-12-05 08:13:21', '2018-12-05 08:13:21', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(235, '2018-12-05 08:16:30', '2018-12-05 08:16:30', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(236, '2018-12-05 08:16:30', '2018-12-05 08:16:30', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(237, '2018-12-05 08:17:41', '2018-12-05 08:17:41', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(238, '2018-12-05 08:17:41', '2018-12-05 08:17:41', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(239, '2018-12-05 08:18:31', '2018-12-05 08:18:31', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(240, '2018-12-05 08:18:31', '2018-12-05 08:18:31', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(241, '2018-12-05 08:20:43', '2018-12-05 08:20:43', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(242, '2018-12-05 08:20:43', '2018-12-05 08:20:43', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(243, '2018-12-05 08:21:43', '2018-12-05 08:21:43', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(244, '2018-12-05 08:21:43', '2018-12-05 08:21:43', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(245, '2018-12-05 08:24:36', '2018-12-05 08:24:36', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(246, '2018-12-05 08:24:36', '2018-12-05 08:24:36', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(247, '2018-12-05 08:25:32', '2018-12-05 08:25:32', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(248, '2018-12-05 08:25:33', '2018-12-05 08:25:33', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(249, '2018-12-05 08:26:32', '2018-12-05 08:26:32', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(250, '2018-12-05 08:26:32', '2018-12-05 08:26:32', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(251, '2018-12-05 08:27:37', '2018-12-05 08:27:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(252, '2018-12-05 08:27:37', '2018-12-05 08:27:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(253, '2018-12-05 08:28:37', '2018-12-05 08:28:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(254, '2018-12-05 08:28:38', '2018-12-05 08:28:38', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(255, '2018-12-05 08:29:37', '2018-12-05 08:29:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(256, '2018-12-05 08:29:37', '2018-12-05 08:29:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(257, '2018-12-05 08:30:36', '2018-12-05 08:30:36', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(258, '2018-12-05 08:30:36', '2018-12-05 08:30:36', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(259, '2018-12-05 08:31:40', '2018-12-05 08:31:40', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(260, '2018-12-05 08:31:40', '2018-12-05 08:31:40', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(261, '2018-12-05 08:32:38', '2018-12-05 08:32:38', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(262, '2018-12-05 08:32:38', '2018-12-05 08:32:38', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(263, '2018-12-05 08:33:37', '2018-12-05 08:33:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(264, '2018-12-05 08:33:37', '2018-12-05 08:33:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(265, '2018-12-05 08:34:37', '2018-12-05 08:34:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(266, '2018-12-05 08:34:37', '2018-12-05 08:34:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(267, '2018-12-05 08:35:37', '2018-12-05 08:35:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(268, '2018-12-05 08:35:37', '2018-12-05 08:35:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(269, '2018-12-05 08:36:37', '2018-12-05 08:36:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(270, '2018-12-05 08:36:37', '2018-12-05 08:36:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(271, '2018-12-05 08:37:37', '2018-12-05 08:37:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(272, '2018-12-05 08:37:37', '2018-12-05 08:37:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(273, '2018-12-05 08:38:37', '2018-12-05 08:38:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(274, '2018-12-05 08:38:37', '2018-12-05 08:38:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(275, '2018-12-05 08:39:38', '2018-12-05 08:39:38', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(276, '2018-12-05 08:39:38', '2018-12-05 08:39:38', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(277, '2018-12-05 08:40:37', '2018-12-05 08:40:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(278, '2018-12-05 08:40:37', '2018-12-05 08:40:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(279, '2018-12-05 08:41:37', '2018-12-05 08:41:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(280, '2018-12-05 08:41:37', '2018-12-05 08:41:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(281, '2018-12-05 08:42:37', '2018-12-05 08:42:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(282, '2018-12-05 08:42:37', '2018-12-05 08:42:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(283, '2018-12-05 08:43:37', '2018-12-05 08:43:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(284, '2018-12-05 08:43:38', '2018-12-05 08:43:38', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(285, '2018-12-05 08:44:37', '2018-12-05 08:44:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(286, '2018-12-05 08:44:37', '2018-12-05 08:44:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(287, '2018-12-05 08:45:38', '2018-12-05 08:45:38', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105);
INSERT INTO `communications` (`id`, `created_at`, `updated_at`, `message`, `phonenumber`, `status`, `amount`, `appointment_id`, `hiv_care_art_card_id`) VALUES
(288, '2018-12-05 08:45:38', '2018-12-05 08:45:38', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(289, '2018-12-05 08:46:37', '2018-12-05 08:46:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(290, '2018-12-05 08:46:37', '2018-12-05 08:46:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(291, '2018-12-05 08:47:37', '2018-12-05 08:47:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(292, '2018-12-05 08:47:37', '2018-12-05 08:47:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(293, '2018-12-05 08:48:37', '2018-12-05 08:48:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(294, '2018-12-05 08:48:37', '2018-12-05 08:48:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(295, '2018-12-05 08:49:37', '2018-12-05 08:49:37', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(296, '2018-12-05 08:49:37', '2018-12-05 08:49:37', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(297, '2018-12-05 10:52:10', '2018-12-05 10:52:10', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(298, '2018-12-05 10:52:10', '2018-12-05 10:52:10', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(299, '2018-12-05 11:00:07', '2018-12-05 11:00:07', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(300, '2018-12-05 11:00:07', '2018-12-05 11:00:07', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(301, '2018-12-05 11:14:16', '2018-12-05 11:14:16', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(302, '2018-12-05 11:14:16', '2018-12-05 11:14:16', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(303, '2018-12-05 11:18:45', '2018-12-05 11:18:45', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(304, '2018-12-05 11:18:45', '2018-12-05 11:18:45', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(305, '2018-12-05 11:19:58', '2018-12-05 11:19:58', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(306, '2018-12-05 11:19:58', '2018-12-05 11:19:58', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(307, '2018-12-05 11:46:22', '2018-12-05 11:46:22', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(308, '2018-12-05 11:46:22', '2018-12-05 11:46:22', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(309, '2018-12-05 12:23:09', '2018-12-05 12:23:09', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(310, '2018-12-05 12:23:09', '2018-12-05 12:23:09', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(311, '2018-12-05 12:27:48', '2018-12-05 12:27:48', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(312, '2018-12-05 12:27:49', '2018-12-05 12:27:49', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(313, '2018-12-05 12:28:45', '2018-12-05 12:28:45', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(314, '2018-12-05 12:28:45', '2018-12-05 12:28:45', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(315, '2018-12-05 12:33:59', '2018-12-05 12:33:59', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(316, '2018-12-05 12:33:59', '2018-12-05 12:33:59', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(317, '2018-12-05 12:34:46', '2018-12-05 12:34:46', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(318, '2018-12-05 12:34:46', '2018-12-05 12:34:46', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(319, '2018-12-05 12:35:43', '2018-12-05 12:35:43', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(320, '2018-12-05 12:35:44', '2018-12-05 12:35:44', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(321, '2018-12-05 12:36:53', '2018-12-05 12:36:53', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(322, '2018-12-05 12:36:53', '2018-12-05 12:36:53', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(323, '2018-12-05 12:40:03', '2018-12-05 12:40:03', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(324, '2018-12-05 12:40:03', '2018-12-05 12:40:03', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(325, '2018-12-05 12:40:43', '2018-12-05 12:40:43', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(326, '2018-12-05 12:40:44', '2018-12-05 12:40:44', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(327, '2018-12-05 12:50:08', '2018-12-05 12:50:08', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(328, '2018-12-05 12:50:08', '2018-12-05 12:50:08', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(329, '2018-12-05 12:57:43', '2018-12-05 12:57:43', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(330, '2018-12-05 12:57:43', '2018-12-05 12:57:43', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(331, '2018-12-05 13:01:11', '2018-12-05 13:01:11', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(332, '2018-12-05 13:01:11', '2018-12-05 13:01:11', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(333, '2018-12-05 13:13:48', '2018-12-05 13:13:48', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(334, '2018-12-05 13:13:48', '2018-12-05 13:13:48', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(335, '2018-12-05 13:19:06', '2018-12-05 13:19:06', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(336, '2018-12-05 13:19:06', '2018-12-05 13:19:06', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(337, '2018-12-05 13:46:25', '2018-12-05 13:46:25', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(338, '2018-12-05 13:46:25', '2018-12-05 13:46:25', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(339, '2018-12-05 13:48:07', '2018-12-05 13:48:07', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(340, '2018-12-05 13:48:07', '2018-12-05 13:48:07', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(341, '2018-12-05 13:49:06', '2018-12-05 13:49:06', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(342, '2018-12-05 13:49:07', '2018-12-05 13:49:07', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(343, '2018-12-05 13:50:09', '2018-12-05 13:50:09', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(344, '2018-12-05 13:50:09', '2018-12-05 13:50:09', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(345, '2018-12-05 13:54:12', '2018-12-05 13:54:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(346, '2018-12-05 13:54:12', '2018-12-05 13:54:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(347, '2018-12-05 13:55:08', '2018-12-05 13:55:08', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(348, '2018-12-05 13:55:09', '2018-12-05 13:55:09', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(349, '2018-12-05 13:56:12', '2018-12-05 13:56:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(350, '2018-12-05 13:56:12', '2018-12-05 13:56:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(351, '2018-12-05 13:57:11', '2018-12-05 13:57:11', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(352, '2018-12-05 13:57:12', '2018-12-05 13:57:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(353, '2018-12-05 13:59:35', '2018-12-05 13:59:35', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(354, '2018-12-05 13:59:35', '2018-12-05 13:59:35', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(355, '2018-12-05 14:01:54', '2018-12-05 14:01:54', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(356, '2018-12-05 14:01:54', '2018-12-05 14:01:54', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(357, '2018-12-05 14:02:47', '2018-12-05 14:02:47', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(358, '2018-12-05 14:02:48', '2018-12-05 14:02:48', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(359, '2018-12-05 14:04:22', '2018-12-05 14:04:22', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(360, '2018-12-05 14:04:22', '2018-12-05 14:04:22', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(361, '2018-12-05 14:04:50', '2018-12-05 14:04:50', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(362, '2018-12-05 14:04:50', '2018-12-05 14:04:50', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(363, '2018-12-05 14:05:50', '2018-12-05 14:05:50', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(364, '2018-12-05 14:05:50', '2018-12-05 14:05:50', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(365, '2018-12-05 14:06:56', '2018-12-05 14:06:56', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(366, '2018-12-05 14:06:57', '2018-12-05 14:06:57', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(367, '2018-12-05 14:07:48', '2018-12-05 14:07:48', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(368, '2018-12-05 14:07:49', '2018-12-05 14:07:49', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(369, '2018-12-05 14:08:52', '2018-12-05 14:08:52', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(370, '2018-12-05 14:08:53', '2018-12-05 14:08:53', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(371, '2018-12-05 14:11:42', '2018-12-05 14:11:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(372, '2018-12-05 14:11:42', '2018-12-05 14:11:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(373, '2018-12-05 14:12:00', '2018-12-05 14:12:00', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(374, '2018-12-05 14:12:00', '2018-12-05 14:12:00', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(375, '2018-12-05 14:12:22', '2018-12-05 14:12:22', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(376, '2018-12-05 14:12:22', '2018-12-05 14:12:22', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(377, '2018-12-05 14:23:29', '2018-12-05 14:23:29', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(378, '2018-12-05 14:23:29', '2018-12-05 14:23:29', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(379, '2018-12-05 14:25:27', '2018-12-05 14:25:27', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(380, '2018-12-05 14:25:27', '2018-12-05 14:25:27', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(381, '2018-12-05 14:26:14', '2018-12-05 14:26:14', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(382, '2018-12-05 14:26:14', '2018-12-05 14:26:14', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(383, '2018-12-05 14:27:45', '2018-12-05 14:27:45', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(384, '2018-12-05 14:27:46', '2018-12-05 14:27:46', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(385, '2018-12-05 14:28:56', '2018-12-05 14:28:56', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(386, '2018-12-05 14:28:56', '2018-12-05 14:28:56', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(387, '2018-12-05 14:29:18', '2018-12-05 14:29:18', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(388, '2018-12-05 14:29:18', '2018-12-05 14:29:18', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(389, '2018-12-05 14:30:16', '2018-12-05 14:30:16', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(390, '2018-12-05 14:30:16', '2018-12-05 14:30:16', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(391, '2018-12-05 14:31:17', '2018-12-05 14:31:17', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(392, '2018-12-05 14:31:17', '2018-12-05 14:31:17', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(393, '2018-12-05 14:32:15', '2018-12-05 14:32:15', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(394, '2018-12-05 14:32:15', '2018-12-05 14:32:15', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(395, '2018-12-05 14:33:32', '2018-12-05 14:33:32', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(396, '2018-12-05 14:33:32', '2018-12-05 14:33:32', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(397, '2018-12-05 14:34:15', '2018-12-05 14:34:15', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(398, '2018-12-05 14:34:15', '2018-12-05 14:34:15', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(399, '2018-12-05 14:35:18', '2018-12-05 14:35:18', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(400, '2018-12-05 14:35:18', '2018-12-05 14:35:18', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(401, '2018-12-05 14:36:15', '2018-12-05 14:36:15', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(402, '2018-12-05 14:36:15', '2018-12-05 14:36:15', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(403, '2018-12-05 14:37:24', '2018-12-05 14:37:24', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(404, '2018-12-05 14:37:24', '2018-12-05 14:37:24', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(405, '2018-12-05 14:38:21', '2018-12-05 14:38:21', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(406, '2018-12-05 14:38:22', '2018-12-05 14:38:22', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(407, '2018-12-05 14:39:15', '2018-12-05 14:39:15', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(408, '2018-12-05 14:39:16', '2018-12-05 14:39:16', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(409, '2018-12-05 14:40:14', '2018-12-05 14:40:14', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(410, '2018-12-05 14:40:14', '2018-12-05 14:40:14', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(411, '2018-12-05 14:41:16', '2018-12-05 14:41:16', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(412, '2018-12-05 14:41:16', '2018-12-05 14:41:16', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(413, '2018-12-05 14:42:58', '2018-12-05 14:42:58', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(414, '2018-12-05 14:42:58', '2018-12-05 14:42:58', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(415, '2018-12-05 14:43:20', '2018-12-05 14:43:20', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(416, '2018-12-05 14:43:21', '2018-12-05 14:43:21', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(417, '2018-12-05 14:45:22', '2018-12-05 14:45:22', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(418, '2018-12-05 14:45:23', '2018-12-05 14:45:23', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(419, '2018-12-05 14:47:07', '2018-12-05 14:47:07', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(420, '2018-12-05 14:47:07', '2018-12-05 14:47:07', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(421, '2018-12-05 14:47:07', '2018-12-05 14:47:07', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(422, '2018-12-05 14:47:07', '2018-12-05 14:47:07', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(423, '2018-12-05 14:47:19', '2018-12-05 14:47:19', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(424, '2018-12-05 14:47:19', '2018-12-05 14:47:19', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(425, '2018-12-05 14:48:36', '2018-12-05 14:48:36', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(426, '2018-12-05 14:48:36', '2018-12-05 14:48:36', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(427, '2018-12-05 14:49:14', '2018-12-05 14:49:14', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(428, '2018-12-05 14:49:14', '2018-12-05 14:49:14', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(429, '2018-12-05 14:50:26', '2018-12-05 14:50:26', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(430, '2018-12-05 14:50:26', '2018-12-05 14:50:26', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(431, '2018-12-05 14:51:27', '2018-12-05 14:51:27', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(432, '2018-12-05 14:51:27', '2018-12-05 14:51:27', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(433, '2018-12-05 14:52:16', '2018-12-05 14:52:16', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(434, '2018-12-05 14:52:17', '2018-12-05 14:52:17', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(435, '2018-12-05 14:53:24', '2018-12-05 14:53:24', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(436, '2018-12-05 14:53:24', '2018-12-05 14:53:24', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(437, '2018-12-05 14:54:22', '2018-12-05 14:54:22', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(438, '2018-12-05 14:54:22', '2018-12-05 14:54:22', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(439, '2018-12-05 19:34:39', '2018-12-05 19:34:39', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(440, '2018-12-05 19:34:39', '2018-12-05 19:34:39', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(441, '2018-12-05 19:35:40', '2018-12-05 19:35:40', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(442, '2018-12-05 19:35:40', '2018-12-05 19:35:40', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(443, '2018-12-05 19:36:40', '2018-12-05 19:36:40', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(444, '2018-12-05 19:36:40', '2018-12-05 19:36:40', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(445, '2018-12-05 19:37:39', '2018-12-05 19:37:39', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(446, '2018-12-05 19:37:39', '2018-12-05 19:37:39', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(447, '2018-12-05 19:38:40', '2018-12-05 19:38:40', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(448, '2018-12-05 19:38:40', '2018-12-05 19:38:40', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(449, '2018-12-05 19:39:41', '2018-12-05 19:39:41', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(450, '2018-12-05 19:39:41', '2018-12-05 19:39:41', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(451, '2018-12-05 19:40:40', '2018-12-05 19:40:40', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(452, '2018-12-05 19:40:41', '2018-12-05 19:40:41', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(453, '2018-12-05 19:41:39', '2018-12-05 19:41:39', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(454, '2018-12-05 19:41:40', '2018-12-05 19:41:40', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(455, '2018-12-05 19:43:40', '2018-12-05 19:43:40', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(456, '2018-12-05 19:43:40', '2018-12-05 19:43:40', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(457, '2018-12-05 19:44:40', '2018-12-05 19:44:40', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(458, '2018-12-05 19:44:40', '2018-12-05 19:44:40', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(459, '2018-12-05 19:45:40', '2018-12-05 19:45:40', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(460, '2018-12-05 19:45:40', '2018-12-05 19:45:40', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(461, '2018-12-05 19:48:11', '2018-12-05 19:48:11', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(462, '2018-12-05 19:48:11', '2018-12-05 19:48:11', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(463, '2018-12-05 19:49:10', '2018-12-05 19:49:10', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(464, '2018-12-05 19:49:10', '2018-12-05 19:49:10', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(465, '2018-12-05 19:50:10', '2018-12-05 19:50:10', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(466, '2018-12-05 19:50:11', '2018-12-05 19:50:11', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(467, '2018-12-05 19:51:11', '2018-12-05 19:51:11', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(468, '2018-12-05 19:51:11', '2018-12-05 19:51:11', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(469, '2018-12-05 19:52:12', '2018-12-05 19:52:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(470, '2018-12-05 19:52:12', '2018-12-05 19:52:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(471, '2018-12-05 19:53:10', '2018-12-05 19:53:10', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(472, '2018-12-05 19:53:10', '2018-12-05 19:53:10', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(473, '2018-12-05 19:54:11', '2018-12-05 19:54:11', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(474, '2018-12-05 19:54:11', '2018-12-05 19:54:11', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(475, '2018-12-05 19:55:12', '2018-12-05 19:55:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(476, '2018-12-05 19:55:13', '2018-12-05 19:55:13', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(477, '2018-12-05 19:56:11', '2018-12-05 19:56:11', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(478, '2018-12-05 19:56:11', '2018-12-05 19:56:11', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(479, '2018-12-05 19:57:11', '2018-12-05 19:57:11', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(480, '2018-12-05 19:57:11', '2018-12-05 19:57:11', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(481, '2018-12-05 19:58:11', '2018-12-05 19:58:11', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(482, '2018-12-05 19:58:11', '2018-12-05 19:58:11', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(483, '2018-12-05 20:00:54', '2018-12-05 20:00:54', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(484, '2018-12-05 20:00:55', '2018-12-05 20:00:55', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(485, '2018-12-05 20:01:41', '2018-12-05 20:01:41', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(486, '2018-12-05 20:01:42', '2018-12-05 20:01:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(487, '2018-12-05 20:03:03', '2018-12-05 20:03:03', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(488, '2018-12-05 20:03:04', '2018-12-05 20:03:04', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(489, '2018-12-05 20:03:42', '2018-12-05 20:03:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(490, '2018-12-05 20:03:42', '2018-12-05 20:03:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(491, '2018-12-05 20:04:42', '2018-12-05 20:04:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(492, '2018-12-05 20:04:42', '2018-12-05 20:04:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(493, '2018-12-05 20:05:41', '2018-12-05 20:05:41', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(494, '2018-12-05 20:05:41', '2018-12-05 20:05:41', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(495, '2018-12-05 20:06:42', '2018-12-05 20:06:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(496, '2018-12-05 20:06:42', '2018-12-05 20:06:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(497, '2018-12-05 20:07:42', '2018-12-05 20:07:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(498, '2018-12-05 20:07:42', '2018-12-05 20:07:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(499, '2018-12-05 20:08:42', '2018-12-05 20:08:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(500, '2018-12-05 20:08:42', '2018-12-05 20:08:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(501, '2018-12-05 20:09:54', '2018-12-05 20:09:54', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(502, '2018-12-05 20:09:54', '2018-12-05 20:09:54', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(503, '2018-12-05 20:10:42', '2018-12-05 20:10:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(504, '2018-12-05 20:10:42', '2018-12-05 20:10:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(505, '2018-12-05 20:11:42', '2018-12-05 20:11:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(506, '2018-12-05 20:11:42', '2018-12-05 20:11:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(507, '2018-12-05 20:12:42', '2018-12-05 20:12:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(508, '2018-12-05 20:12:42', '2018-12-05 20:12:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(509, '2018-12-05 20:13:42', '2018-12-05 20:13:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(510, '2018-12-05 20:13:42', '2018-12-05 20:13:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(511, '2018-12-05 20:14:40', '2018-12-05 20:14:40', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(512, '2018-12-05 20:14:40', '2018-12-05 20:14:40', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(513, '2018-12-05 20:15:42', '2018-12-05 20:15:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(514, '2018-12-05 20:15:42', '2018-12-05 20:15:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(515, '2018-12-05 20:16:42', '2018-12-05 20:16:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(516, '2018-12-05 20:16:42', '2018-12-05 20:16:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(517, '2018-12-05 20:17:42', '2018-12-05 20:17:42', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(518, '2018-12-05 20:17:42', '2018-12-05 20:17:42', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL);
INSERT INTO `communications` (`id`, `created_at`, `updated_at`, `message`, `phonenumber`, `status`, `amount`, `appointment_id`, `hiv_care_art_card_id`) VALUES
(519, '2018-12-05 20:18:45', '2018-12-05 20:18:45', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(520, '2018-12-05 20:18:45', '2018-12-05 20:18:45', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(521, '2018-12-05 20:20:51', '2018-12-05 20:20:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(522, '2018-12-05 20:20:52', '2018-12-05 20:20:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(523, '2018-12-05 20:21:51', '2018-12-05 20:21:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(524, '2018-12-05 20:21:52', '2018-12-05 20:21:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(525, '2018-12-05 20:22:50', '2018-12-05 20:22:50', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(526, '2018-12-05 20:22:51', '2018-12-05 20:22:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(527, '2018-12-05 20:23:51', '2018-12-05 20:23:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(528, '2018-12-05 20:23:51', '2018-12-05 20:23:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(529, '2018-12-05 20:24:51', '2018-12-05 20:24:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(530, '2018-12-05 20:24:51', '2018-12-05 20:24:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(531, '2018-12-05 20:25:51', '2018-12-05 20:25:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(532, '2018-12-05 20:25:51', '2018-12-05 20:25:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(533, '2018-12-05 20:26:51', '2018-12-05 20:26:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(534, '2018-12-05 20:26:52', '2018-12-05 20:26:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(535, '2018-12-05 20:27:52', '2018-12-05 20:27:52', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(536, '2018-12-05 20:27:52', '2018-12-05 20:27:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(537, '2018-12-05 20:28:52', '2018-12-05 20:28:52', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(538, '2018-12-05 20:28:52', '2018-12-05 20:28:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(539, '2018-12-05 20:29:51', '2018-12-05 20:29:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(540, '2018-12-05 20:29:52', '2018-12-05 20:29:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(541, '2018-12-05 20:30:51', '2018-12-05 20:30:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(542, '2018-12-05 20:30:52', '2018-12-05 20:30:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(543, '2018-12-05 20:31:51', '2018-12-05 20:31:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(544, '2018-12-05 20:31:51', '2018-12-05 20:31:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(545, '2018-12-05 20:32:51', '2018-12-05 20:32:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(546, '2018-12-05 20:32:52', '2018-12-05 20:32:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(547, '2018-12-05 20:33:51', '2018-12-05 20:33:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(548, '2018-12-05 20:33:52', '2018-12-05 20:33:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(549, '2018-12-05 20:34:51', '2018-12-05 20:34:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(550, '2018-12-05 20:34:52', '2018-12-05 20:34:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(551, '2018-12-05 20:35:51', '2018-12-05 20:35:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(552, '2018-12-05 20:35:51', '2018-12-05 20:35:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(553, '2018-12-05 20:36:51', '2018-12-05 20:36:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(554, '2018-12-05 20:36:52', '2018-12-05 20:36:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(555, '2018-12-05 20:37:51', '2018-12-05 20:37:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(556, '2018-12-05 20:37:52', '2018-12-05 20:37:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(557, '2018-12-05 20:38:51', '2018-12-05 20:38:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(558, '2018-12-05 20:38:52', '2018-12-05 20:38:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(559, '2018-12-05 20:39:53', '2018-12-05 20:39:53', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(560, '2018-12-05 20:39:53', '2018-12-05 20:39:53', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(561, '2018-12-05 20:40:52', '2018-12-05 20:40:52', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(562, '2018-12-05 20:40:52', '2018-12-05 20:40:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(563, '2018-12-05 20:41:51', '2018-12-05 20:41:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(564, '2018-12-05 20:41:52', '2018-12-05 20:41:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(565, '2018-12-05 20:42:52', '2018-12-05 20:42:52', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(566, '2018-12-05 20:42:52', '2018-12-05 20:42:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(567, '2018-12-05 20:43:51', '2018-12-05 20:43:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(568, '2018-12-05 20:43:52', '2018-12-05 20:43:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(569, '2018-12-05 20:44:52', '2018-12-05 20:44:52', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(570, '2018-12-05 20:44:52', '2018-12-05 20:44:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(571, '2018-12-05 20:45:51', '2018-12-05 20:45:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(572, '2018-12-05 20:45:52', '2018-12-05 20:45:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(573, '2018-12-05 20:46:51', '2018-12-05 20:46:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(574, '2018-12-05 20:46:51', '2018-12-05 20:46:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(575, '2018-12-05 20:47:50', '2018-12-05 20:47:50', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(576, '2018-12-05 20:47:51', '2018-12-05 20:47:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(577, '2018-12-05 20:48:51', '2018-12-05 20:48:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(578, '2018-12-05 20:48:51', '2018-12-05 20:48:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(579, '2018-12-05 20:49:51', '2018-12-05 20:49:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(580, '2018-12-05 20:49:51', '2018-12-05 20:49:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(581, '2018-12-05 20:50:51', '2018-12-05 20:50:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(582, '2018-12-05 20:50:51', '2018-12-05 20:50:51', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(583, '2018-12-05 20:51:51', '2018-12-05 20:51:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(584, '2018-12-05 20:51:52', '2018-12-05 20:51:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(585, '2018-12-05 20:52:51', '2018-12-05 20:52:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(586, '2018-12-05 20:52:52', '2018-12-05 20:52:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(587, '2018-12-05 20:53:51', '2018-12-05 20:53:51', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(588, '2018-12-05 20:53:52', '2018-12-05 20:53:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(589, '2018-12-05 20:54:52', '2018-12-05 20:54:52', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(590, '2018-12-05 20:54:52', '2018-12-05 20:54:52', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(591, '2018-12-05 20:58:13', '2018-12-05 20:58:13', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(592, '2018-12-05 20:58:13', '2018-12-05 20:58:13', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(593, '2018-12-05 20:59:12', '2018-12-05 20:59:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(594, '2018-12-05 20:59:12', '2018-12-05 20:59:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(595, '2018-12-05 21:00:12', '2018-12-05 21:00:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(596, '2018-12-05 21:00:12', '2018-12-05 21:00:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(597, '2018-12-05 21:01:11', '2018-12-05 21:01:11', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(598, '2018-12-05 21:01:11', '2018-12-05 21:01:11', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(599, '2018-12-05 21:02:12', '2018-12-05 21:02:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(600, '2018-12-05 21:02:12', '2018-12-05 21:02:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(601, '2018-12-05 21:03:12', '2018-12-05 21:03:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(602, '2018-12-05 21:03:13', '2018-12-05 21:03:13', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(603, '2018-12-05 21:04:12', '2018-12-05 21:04:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(604, '2018-12-05 21:04:12', '2018-12-05 21:04:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(605, '2018-12-05 21:05:12', '2018-12-05 21:05:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(606, '2018-12-05 21:05:12', '2018-12-05 21:05:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(607, '2018-12-05 21:06:12', '2018-12-05 21:06:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(608, '2018-12-05 21:06:12', '2018-12-05 21:06:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(609, '2018-12-05 21:07:12', '2018-12-05 21:07:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(610, '2018-12-05 21:07:12', '2018-12-05 21:07:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(611, '2018-12-05 21:08:12', '2018-12-05 21:08:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(612, '2018-12-05 21:08:12', '2018-12-05 21:08:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(613, '2018-12-05 21:09:12', '2018-12-05 21:09:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(614, '2018-12-05 21:09:12', '2018-12-05 21:09:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(615, '2018-12-05 21:10:12', '2018-12-05 21:10:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(616, '2018-12-05 21:10:12', '2018-12-05 21:10:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(617, '2018-12-05 21:11:12', '2018-12-05 21:11:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(618, '2018-12-05 21:11:12', '2018-12-05 21:11:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(619, '2018-12-05 21:12:12', '2018-12-05 21:12:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(620, '2018-12-05 21:12:12', '2018-12-05 21:12:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(621, '2018-12-05 21:13:12', '2018-12-05 21:13:12', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(622, '2018-12-05 21:13:12', '2018-12-05 21:13:12', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(623, '2018-12-05 21:14:13', '2018-12-05 21:14:13', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(624, '2018-12-05 21:14:13', '2018-12-05 21:14:13', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(625, '2018-12-05 21:15:14', '2018-12-05 21:15:14', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(626, '2018-12-05 21:15:15', '2018-12-05 21:15:15', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(627, '2018-12-05 21:16:13', '2018-12-05 21:16:13', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(628, '2018-12-05 21:16:13', '2018-12-05 21:16:13', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(629, '2018-12-05 21:17:21', '2018-12-05 21:17:21', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(630, '2018-12-05 21:17:21', '2018-12-05 21:17:21', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(631, '2018-12-05 21:18:15', '2018-12-05 21:18:15', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(632, '2018-12-05 21:18:15', '2018-12-05 21:18:15', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(633, '2018-12-05 21:19:13', '2018-12-05 21:19:13', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(634, '2018-12-05 21:19:14', '2018-12-05 21:19:14', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(635, '2018-12-05 21:20:57', '2018-12-05 21:20:57', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(636, '2018-12-05 21:20:57', '2018-12-05 21:20:57', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(637, '2018-12-05 21:21:57', '2018-12-05 21:21:57', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(638, '2018-12-05 21:21:57', '2018-12-05 21:21:57', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(639, '2018-12-05 21:22:59', '2018-12-05 21:22:59', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(640, '2018-12-05 21:22:59', '2018-12-05 21:22:59', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(641, '2018-12-05 21:23:59', '2018-12-05 21:23:59', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(642, '2018-12-05 21:23:59', '2018-12-05 21:23:59', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(643, '2018-12-05 21:24:58', '2018-12-05 21:24:58', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(644, '2018-12-05 21:24:58', '2018-12-05 21:24:58', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(645, '2018-12-05 21:25:59', '2018-12-05 21:25:59', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(646, '2018-12-05 21:25:59', '2018-12-05 21:25:59', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(647, '2018-12-05 21:26:58', '2018-12-05 21:26:58', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(648, '2018-12-05 21:26:59', '2018-12-05 21:26:59', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(649, '2018-12-05 21:27:59', '2018-12-05 21:27:59', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(650, '2018-12-05 21:27:59', '2018-12-05 21:27:59', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(651, '2018-12-05 21:28:59', '2018-12-05 21:28:59', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(652, '2018-12-05 21:28:59', '2018-12-05 21:28:59', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL),
(653, '2018-12-05 21:30:48', '2018-12-05 21:30:48', 'Dear NAKAFEERO we are reminding you that you return to the health center Tomorrow  12-06-2018 | 256701283414', '+256701283414', 'InsufficientBalance', '0', NULL, 105),
(654, '2018-12-05 21:30:48', '2018-12-05 21:30:48', 'Dear Kavakule Pascal your client NAKAFEERO has been reminded to return to the health center Tomorrow.', '256758282268', 'InsufficientBalance', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `created_at`, `updated_at`, `name`, `description`) VALUES
(2, '2018-04-16 13:31:56', '2018-04-16 13:31:56', 'Mukono', 'Mukono'),
(3, '2018-04-23 12:13:02', '2018-04-23 12:13:02', 'Buikwe distt', NULL),
(4, '2018-04-23 12:14:13', '2018-04-23 12:14:13', 'BUIKWE DISTRICT', 'NONE'),
(5, '2018-05-01 12:49:43', '2018-05-01 12:49:43', 'BUIKWE DISTRICT', NULL),
(6, '2018-07-17 11:03:49', '2018-07-17 11:03:49', 'BUIKWE DISTRICT', 'NONE'),
(7, '2018-08-06 08:56:34', '2018-08-06 08:56:34', 'BUIKWE', 'none');

-- --------------------------------------------------------

--
-- Table structure for table `district_clinitians`
--

CREATE TABLE `district_clinitians` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exposed_infant_cares`
--

CREATE TABLE `exposed_infant_cares` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `DNA_test_results` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DNA_test_date` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DNA_test_month` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DNA_test_year` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `falimly_suport_group_register_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exposed_infant_followups`
--

CREATE TABLE `exposed_infant_followups` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feeding_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CTP` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_first_PCR` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unique_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HivCareArtCard_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exposed_infant_followups`
--

INSERT INTO `exposed_infant_followups` (`id`, `created_at`, `updated_at`, `name`, `dob`, `feeding_status`, `CTP`, `date_of_first_PCR`, `final_status`, `unique_id`, `HivCareArtCard_id`) VALUES
(1, '2018-04-25 12:20:11', '2018-04-25 12:20:11', 'MUGOYA ERIA', '04-29-2009', 'Exclussive Breast Feeding', NULL, '', NULL, NULL, 24),
(2, '2018-04-25 12:20:15', '2018-04-25 12:20:15', 'MUGOYA ERIA', '04-29-2009', 'Exclussive Breast Feeding', NULL, '', NULL, NULL, 24),
(3, '2018-04-25 12:20:16', '2018-04-25 12:20:16', 'MUGOYA ERIA', '04-29-2009', 'Exclussive Breast Feeding', NULL, '', NULL, NULL, 24),
(4, '2018-04-25 12:20:17', '2018-04-25 12:20:17', 'MUGOYA ERIA', '04-29-2009', 'Exclussive Breast Feeding', NULL, '', NULL, NULL, 24),
(5, '2018-04-25 12:20:17', '2018-04-25 12:20:17', 'MUGOYA ERIA', '04-29-2009', 'Exclussive Breast Feeding', NULL, '', NULL, NULL, 24),
(6, '2018-04-25 12:20:18', '2018-04-25 12:20:18', 'MUGOYA ERIA', '04-29-2009', 'Exclussive Breast Feeding', NULL, '', NULL, NULL, 24),
(7, '2018-04-25 12:21:23', '2018-04-25 12:21:23', 'MUGOYA ERIA', '04-29-2009', 'Exclussive Breast Feeding', NULL, '', NULL, NULL, 24),
(8, '2018-04-25 12:21:28', '2018-04-25 12:21:28', 'MUGOYA ERIA', '04-29-2009', 'Exclussive Breast Feeding', NULL, '', NULL, NULL, 24),
(9, '2018-04-25 12:51:41', '2018-04-25 12:51:41', NULL, '', NULL, NULL, '', NULL, NULL, 25),
(10, '2018-04-25 12:52:00', '2018-04-25 12:52:00', NULL, '', NULL, NULL, '', NULL, NULL, 25),
(11, '2018-04-25 12:52:02', '2018-04-25 12:52:02', NULL, '', NULL, NULL, '', NULL, NULL, 25),
(12, '2018-04-25 14:49:59', '2018-04-25 14:49:59', 'SEMATIMBA AKRAM', '04-23-2013', 'Exclussive Breast Feeding', 'NO', '', NULL, NULL, 26),
(13, '2018-04-26 07:01:03', '2018-04-26 07:01:03', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(14, '2018-04-26 07:01:04', '2018-04-26 07:01:04', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(15, '2018-04-26 07:01:06', '2018-04-26 07:01:06', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(16, '2018-04-26 07:01:06', '2018-04-26 07:01:06', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(17, '2018-04-26 07:01:07', '2018-04-26 07:01:07', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(18, '2018-04-26 07:01:08', '2018-04-26 07:01:08', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(19, '2018-04-26 07:01:08', '2018-04-26 07:01:08', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(20, '2018-04-26 07:01:16', '2018-04-26 07:01:16', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(21, '2018-04-26 07:01:17', '2018-04-26 07:01:17', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(22, '2018-04-26 07:01:17', '2018-04-26 07:01:17', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(23, '2018-04-26 07:01:18', '2018-04-26 07:01:18', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(24, '2018-04-26 07:01:21', '2018-04-26 07:01:21', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(25, '2018-04-26 07:01:22', '2018-04-26 07:01:22', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(26, '2018-04-26 07:01:36', '2018-04-26 07:01:36', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(27, '2018-04-26 07:01:37', '2018-04-26 07:01:37', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(28, '2018-04-26 07:01:38', '2018-04-26 07:01:38', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(29, '2018-04-26 07:01:40', '2018-04-26 07:01:40', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(30, '2018-04-26 07:01:42', '2018-04-26 07:01:42', NULL, '', NULL, NULL, '', NULL, NULL, 30),
(31, '2018-04-27 13:01:05', '2018-04-27 13:01:05', 'NAKATYABA RESTY', '', NULL, 'YES', '', '+ve', NULL, 50),
(32, '2018-04-27 13:04:48', '2018-04-27 13:04:48', 'NAIGA GRACE', '', NULL, 'YES', '', '+ve', NULL, 50),
(33, '2018-04-28 09:51:55', '2018-04-28 09:51:55', NULL, '', NULL, NULL, '', NULL, NULL, 58),
(34, '2018-04-28 10:05:39', '2018-04-28 10:05:39', NULL, '', NULL, NULL, '', NULL, NULL, 61),
(35, '2018-04-28 10:12:55', '2018-04-28 10:12:55', NULL, '', NULL, NULL, '', NULL, NULL, 58),
(36, '2018-04-28 10:36:54', '2018-04-28 10:36:54', 'MOSES KAGOSA', '', NULL, NULL, '', NULL, NULL, 68),
(37, '2018-04-28 10:41:29', '2018-04-28 10:41:29', NULL, '', NULL, NULL, '', NULL, NULL, 70),
(38, '2018-04-28 11:25:14', '2018-04-28 11:25:14', 'NANGENDO RESTY', '07-25-2014', NULL, 'YES', '', NULL, NULL, 72),
(39, '2018-04-28 11:48:27', '2018-04-28 11:48:27', 'WASWA KABUGO', '', NULL, NULL, '', NULL, NULL, 71),
(40, '2018-04-28 11:55:14', '2018-04-28 11:55:14', 'KISAKYE', '09-25-2017', NULL, NULL, '', NULL, NULL, 74),
(41, '2018-04-29 10:21:32', '2018-04-29 10:21:32', 'NAKAZIBWE ELIZABETH', '01-27-2018', 'Exclussive Breast Feeding', NULL, '', NULL, NULL, 123),
(42, '2018-04-29 11:11:41', '2018-04-29 11:11:41', 'NAMUYOMBA', '03-27-2017', 'Exclussive Breast Feeding', NULL, '05-04-2017', 'NEG', NULL, 137),
(43, '2018-04-29 11:18:40', '2018-04-29 11:18:40', 'NSUBUGA KIZZA', '04-29-2018', NULL, NULL, '', NULL, NULL, 138),
(44, '2018-05-01 14:37:10', '2018-05-01 14:37:10', NULL, '', NULL, NULL, '', NULL, NULL, 79),
(45, '2018-05-01 14:41:33', '2018-05-01 14:41:33', NULL, '', NULL, NULL, '', NULL, NULL, 83),
(46, '2018-05-01 14:51:45', '2018-05-01 14:51:45', NULL, '', NULL, NULL, '', NULL, NULL, 100),
(47, '2018-05-01 14:59:18', '2018-05-01 14:59:18', NULL, '', NULL, NULL, '', NULL, NULL, 113),
(48, '2018-05-01 14:59:59', '2018-05-01 14:59:59', NULL, '', NULL, NULL, '', NULL, NULL, 115),
(49, '2018-05-02 10:11:16', '2018-05-02 10:11:16', 'AMIKURU KEZIA', '10-08-2013', 'Exclussive Breast Feeding', 'YES', '', 'NEG', NULL, 216),
(50, '2018-06-26 17:26:53', '2018-06-26 17:26:53', 'MALE WILLY', '02-15-2018', 'Exclussive Breast Feeding', 'NO', '06-12-2018', NULL, NULL, 238),
(51, '2018-06-26 18:10:27', '2018-06-26 18:10:27', 'FALE ENOCK', '03-08-2018', 'Exclussive Breast Feeding', 'NO', '06-09-2018', NULL, NULL, 239),
(52, '2018-07-18 07:53:05', '2018-07-18 07:53:05', 'KIGANDA DISAN', '05-14-2018', 'Exclussive Breast Feeding', NULL, '06-27-2018', NULL, NULL, 252),
(53, '2018-08-20 11:45:53', '2018-08-20 11:45:53', 'KIZZA ROBINAH', '06-01-2018', 'Exclussive Breast Feeding', 'YES', '07-24-2018', NULL, NULL, 267),
(54, '2018-08-20 11:45:55', '2018-08-20 11:45:55', 'KIZZA ROBINAH', '06-01-2018', 'Exclussive Breast Feeding', 'YES', '07-24-2018', NULL, NULL, 267);

-- --------------------------------------------------------

--
-- Table structure for table `falimly_suport_group_registers`
--

CREATE TABLE `falimly_suport_group_registers` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_of_enrolement` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_of_enrolement` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_of_enrolement` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship_to_index_client` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_time_or_reEnrollemt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiv_status_at_enrolment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disclousure_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_planning_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maternal_care` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prophylaxis_treatment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED NOT NULL,
  `fsg_service_id` int(10) UNSIGNED DEFAULT NULL,
  `family_suport_group_id` int(10) UNSIGNED NOT NULL,
  `prior_art` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `art` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `art_regimen_at_enrolment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Receiving_OI_Prophylaxis` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Most_recent_CD4_Count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Most_recent_CD4_Count_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Most_recent_WHO_Clinical_Stage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tested_by_DNA_PCR` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Date_of_DNA_PCR_Test` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Result_of_DNA_PCR_Test` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fsg_service_id_medical` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fsg_service_id_community` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `falimly_suport_group_registers`
--

INSERT INTO `falimly_suport_group_registers` (`id`, `created_at`, `updated_at`, `date_of_enrolement`, `month_of_enrolement`, `year_of_enrolement`, `relationship_to_index_client`, `first_time_or_reEnrollemt`, `hiv_status_at_enrolment`, `disclousure_status`, `entry_point`, `family_planning_method`, `maternal_care`, `prophylaxis_treatment`, `hiv_care_art_card_id`, `fsg_service_id`, `family_suport_group_id`, `prior_art`, `art`, `art_regimen_at_enrolment`, `Receiving_OI_Prophylaxis`, `Most_recent_CD4_Count`, `Most_recent_CD4_Count_date`, `Most_recent_WHO_Clinical_Stage`, `Tested_by_DNA_PCR`, `Date_of_DNA_PCR_Test`, `exp`, `Result_of_DNA_PCR_Test`, `fsg_service_id_medical`, `fsg_service_id_community`) VALUES
(7, '2018-05-19 06:31:55', '2018-05-19 06:31:55', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 20, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(8, '2018-05-19 06:32:27', '2018-05-19 06:32:27', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 25, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(9, '2018-05-19 06:33:01', '2018-05-19 06:33:01', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 27, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(10, '2018-05-19 06:33:31', '2018-05-19 06:33:31', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 28, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(11, '2018-05-19 06:33:57', '2018-05-19 06:33:57', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 30, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(12, '2018-05-19 06:34:29', '2018-05-19 06:34:29', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 43, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(13, '2018-05-19 06:35:11', '2018-05-19 06:35:11', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 44, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(14, '2018-05-19 06:35:55', '2018-05-19 06:35:55', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 55, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(15, '2018-05-19 06:37:39', '2018-05-19 06:37:39', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 57, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(16, '2018-05-19 06:38:12', '2018-05-19 06:38:12', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 61, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(17, '2018-05-19 06:38:41', '2018-05-19 06:38:41', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 72, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(18, '2018-05-19 06:43:09', '2018-05-19 06:43:09', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 81, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(19, '2018-05-19 06:43:47', '2018-05-19 06:43:47', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 93, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(20, '2018-05-19 06:44:17', '2018-05-19 06:44:17', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 94, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(21, '2018-05-19 06:44:42', '2018-05-19 06:44:42', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 97, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(22, '2018-05-19 06:45:10', '2018-05-19 06:45:10', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 100, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(23, '2018-05-19 06:45:37', '2018-05-19 06:45:37', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 103, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(24, '2018-05-19 06:46:09', '2018-05-19 06:46:09', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 105, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(25, '2018-05-19 06:46:59', '2018-05-19 06:46:59', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 162, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(26, '2018-05-19 06:47:51', '2018-05-19 06:47:51', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 13, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(27, '2018-05-19 06:48:33', '2018-05-19 06:48:33', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 74, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(28, '2018-05-19 06:49:10', '2018-05-19 06:49:10', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 86, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(29, '2018-05-19 06:50:46', '2018-05-19 06:50:46', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 87, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(30, '2018-05-19 06:51:33', '2018-05-19 06:51:33', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 139, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(31, '2018-05-19 06:52:01', '2018-05-19 06:52:01', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 143, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(32, '2018-05-19 06:52:31', '2018-05-19 06:52:31', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 150, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(33, '2018-05-19 06:53:13', '2018-05-19 06:53:13', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 177, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(34, '2018-05-19 06:55:09', '2018-05-19 06:55:09', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 168, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(35, '2018-05-19 06:56:33', '2018-05-19 06:56:33', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 167, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(36, '2018-05-19 06:59:20', '2018-05-19 06:59:20', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 166, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(37, '2018-05-19 07:03:55', '2018-05-19 07:03:55', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 187, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(38, '2018-05-19 07:05:52', '2018-05-19 07:05:52', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 186, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(39, '2018-05-19 07:06:14', '2018-05-19 07:06:14', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 184, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(40, '2018-05-19 07:06:36', '2018-05-19 07:06:36', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 183, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(41, '2018-05-19 07:06:58', '2018-05-19 07:06:58', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 180, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(42, '2018-05-19 07:07:26', '2018-05-19 07:07:26', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 178, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(43, '2018-05-19 07:07:59', '2018-05-19 07:07:59', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 198, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(44, '2018-05-19 07:08:25', '2018-05-19 07:08:25', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 196, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(45, '2018-05-19 07:09:41', '2018-05-19 07:09:41', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 26, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(46, '2018-05-19 07:10:24', '2018-05-19 07:10:24', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 38, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(47, '2018-05-19 07:10:57', '2018-05-19 07:10:57', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 62, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(48, '2018-05-19 07:11:40', '2018-05-19 07:11:40', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 73, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(49, '2018-05-19 07:12:24', '2018-05-19 07:12:24', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 88, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(50, '2018-05-19 07:13:20', '2018-05-19 07:13:20', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 96, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(51, '2018-05-19 07:14:19', '2018-05-19 07:14:19', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 99, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(52, '2018-05-19 07:15:18', '2018-05-19 07:15:18', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 140, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(53, '2018-05-19 07:15:53', '2018-05-19 07:15:53', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 151, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(54, '2018-05-19 07:16:31', '2018-05-19 07:16:31', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 176, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(55, '2018-05-19 07:22:02', '2018-05-19 07:22:02', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 185, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(56, '2018-05-19 07:26:32', '2018-05-19 07:26:32', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 71, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(57, '2018-05-19 07:27:52', '2018-05-19 07:27:52', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 179, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(58, '2018-05-19 07:28:35', '2018-05-19 07:28:35', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 197, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(59, '2018-05-19 07:29:55', '2018-05-19 07:29:55', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 190, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(60, '2018-05-19 07:30:33', '2018-05-19 07:30:33', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 214, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(61, '2018-05-19 07:30:59', '2018-05-19 07:30:59', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 211, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(62, '2018-05-19 07:31:40', '2018-05-19 07:31:40', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 206, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(63, '2018-05-19 07:32:09', '2018-05-19 07:32:09', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 190, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(64, '2018-05-19 07:33:01', '2018-05-19 07:33:01', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 17, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(65, '2018-05-19 07:33:51', '2018-05-19 07:33:51', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 85, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(66, '2018-05-19 07:34:22', '2018-05-19 07:34:22', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 109, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(67, '2018-05-19 07:35:43', '2018-05-19 07:35:43', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 141, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(68, '2018-05-19 07:36:18', '2018-05-19 07:36:18', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 152, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(69, '2018-05-19 07:37:03', '2018-05-19 07:37:03', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 195, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(70, '2018-05-19 07:37:24', '2018-05-19 07:37:24', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 194, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(71, '2018-05-19 07:38:15', '2018-05-19 07:38:15', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 191, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(72, '2018-05-19 07:38:35', '2018-05-19 07:38:35', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 189, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(73, '2018-05-19 07:38:58', '2018-05-19 07:38:58', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 188, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(74, '2018-05-19 07:39:33', '2018-05-19 07:39:33', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 210, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(75, '2018-05-19 07:39:54', '2018-05-19 07:39:54', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 208, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(76, '2018-05-19 07:40:15', '2018-05-19 07:40:15', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 207, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(77, '2018-05-19 07:40:53', '2018-05-19 07:40:53', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 199, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(78, '2018-05-19 07:41:21', '2018-05-19 07:41:21', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 201, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(79, '2018-05-19 07:41:50', '2018-05-19 07:41:50', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 203, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(80, '2018-05-19 07:42:14', '2018-05-19 07:42:14', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 204, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(81, '2018-05-19 07:44:03', '2018-05-19 07:44:03', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 50, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(82, '2018-05-19 07:44:32', '2018-05-19 07:44:32', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 52, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(83, '2018-05-19 07:45:37', '2018-05-19 07:45:37', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 182, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(84, '2018-05-19 07:46:55', '2018-05-19 07:46:55', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 79, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(85, '2018-05-19 07:47:28', '2018-05-19 07:47:28', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 90, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(86, '2018-05-19 07:49:27', '2018-05-19 07:49:27', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 101, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(87, '2018-05-19 07:49:53', '2018-05-19 07:49:53', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 107, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(88, '2018-05-19 07:50:31', '2018-05-19 07:50:31', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 119, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(89, '2018-05-19 07:51:03', '2018-05-19 07:51:03', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 127, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(90, '2018-05-19 07:52:31', '2018-05-19 07:52:31', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 147, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(91, '2018-05-19 07:53:15', '2018-05-19 07:53:15', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 165, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(92, '2018-05-19 07:53:35', '2018-05-19 07:53:35', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 165, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(93, '2018-05-19 07:53:59', '2018-05-19 07:53:59', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 164, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(94, '2018-05-19 07:54:29', '2018-05-19 07:54:29', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 169, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(95, '2018-05-19 07:55:10', '2018-05-19 07:55:10', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 206, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(96, '2018-05-19 07:55:46', '2018-05-19 07:55:46', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 219, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(97, '2018-05-19 07:56:06', '2018-05-19 07:56:06', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 216, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(98, '2018-05-19 07:56:37', '2018-05-19 07:56:37', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 217, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(99, '2018-05-19 07:57:05', '2018-05-19 07:57:05', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 218, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(100, '2018-05-19 07:58:20', '2018-05-19 07:58:20', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 19, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(101, '2018-05-19 07:58:52', '2018-05-19 07:58:52', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 48, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(102, '2018-05-19 07:59:23', '2018-05-19 07:59:23', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 54, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(103, '2018-05-19 07:59:54', '2018-05-19 07:59:54', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 67, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(104, '2018-05-19 08:00:32', '2018-05-19 08:00:32', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 83, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(105, '2018-05-19 08:00:59', '2018-05-19 08:00:59', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 89, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(106, '2018-05-19 08:01:27', '2018-05-19 08:01:27', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 102, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(107, '2018-05-19 08:02:01', '2018-05-19 08:02:01', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 106, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(108, '2018-05-19 08:02:29', '2018-05-19 08:02:29', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 113, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(109, '2018-05-19 08:02:56', '2018-05-19 08:02:56', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 115, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(110, '2018-05-19 08:03:29', '2018-05-19 08:03:29', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 116, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(111, '2018-05-19 08:03:56', '2018-05-19 08:03:56', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 117, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(112, '2018-05-19 08:04:21', '2018-05-19 08:04:21', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 120, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(113, '2018-05-19 08:04:48', '2018-05-19 08:04:48', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 122, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(114, '2018-05-19 08:05:11', '2018-05-19 08:05:11', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 123, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(115, '2018-05-19 08:05:35', '2018-05-19 08:05:35', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 126, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(116, '2018-05-19 08:06:01', '2018-05-19 08:06:01', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 134, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(117, '2018-05-19 08:14:51', '2018-05-19 08:14:51', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 171, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(118, '2018-05-19 08:15:22', '2018-05-19 08:15:22', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 170, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(119, '2018-05-19 08:15:32', '2018-05-19 08:15:32', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 170, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(120, '2018-05-19 08:16:48', '2018-05-19 08:16:48', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 41, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(121, '2018-05-19 08:17:16', '2018-05-19 08:17:16', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 42, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(122, '2018-05-19 08:17:41', '2018-05-19 08:17:41', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 46, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(123, '2018-05-19 08:18:06', '2018-05-19 08:18:06', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 47, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(124, '2018-05-19 08:18:47', '2018-05-19 08:18:47', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 84, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(125, '2018-05-19 08:19:22', '2018-05-19 08:19:22', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 91, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(126, '2018-05-19 08:20:06', '2018-05-19 08:20:06', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 111, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(127, '2018-05-19 08:27:29', '2018-05-19 08:27:29', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 112, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(128, '2018-05-19 08:28:09', '2018-05-19 08:28:09', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 135, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(129, '2018-05-19 08:28:34', '2018-05-19 08:28:34', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 144, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(130, '2018-05-19 08:29:03', '2018-05-19 08:29:03', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 146, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(131, '2018-05-19 08:31:22', '2018-05-19 08:31:22', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 153, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(132, '2018-05-19 08:31:55', '2018-05-19 08:31:55', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 162, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(133, '2018-05-19 08:33:47', '2018-05-19 08:33:47', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 159, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(134, '2018-05-19 08:35:58', '2018-05-19 08:35:58', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 181, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(135, '2018-05-19 08:36:49', '2018-05-19 08:36:49', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 221, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(136, '2018-05-19 08:37:17', '2018-05-19 08:37:17', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 220, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(137, '2018-05-19 08:37:26', '2018-05-19 08:37:26', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 220, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(138, '2018-05-19 08:37:53', '2018-05-19 08:37:53', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 219, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(140, '2018-05-19 10:53:54', '2018-05-19 10:53:54', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 12, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(141, '2018-05-19 10:54:16', '2018-05-19 10:54:16', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 53, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(142, '2018-05-19 10:55:06', '2018-05-19 10:55:06', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 114, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(143, '2018-05-19 10:55:43', '2018-05-19 10:55:43', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 131, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(144, '2018-05-19 10:56:10', '2018-05-19 10:56:10', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 132, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(145, '2018-05-19 10:56:46', '2018-05-19 10:56:46', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 133, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(146, '2018-05-19 10:57:11', '2018-05-19 10:57:11', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 137, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(147, '2018-05-19 10:57:35', '2018-05-19 10:57:35', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 138, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(148, '2018-05-19 10:58:01', '2018-05-19 10:58:01', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 145, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(149, '2018-05-19 10:58:36', '2018-05-19 10:58:36', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 163, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(150, '2018-05-19 11:00:02', '2018-05-19 11:00:02', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 156, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(151, '2018-05-19 11:00:28', '2018-05-19 11:00:28', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 157, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(152, '2018-05-19 11:00:55', '2018-05-19 11:00:55', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 158, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(153, '2018-05-19 11:01:29', '2018-05-19 11:01:29', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 160, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(154, '2018-05-19 11:01:55', '2018-05-19 11:01:55', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 160, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(155, '2018-05-19 11:02:23', '2018-05-19 11:02:23', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 161, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(156, '2018-05-19 11:02:57', '2018-05-19 11:02:57', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 172, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(157, '2018-05-19 11:05:27', '2018-05-19 11:05:27', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 136, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(158, '2018-05-19 11:06:52', '2018-05-19 11:06:52', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 11, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(159, '2018-05-19 11:07:42', '2018-05-19 11:07:42', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 18, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(160, '2018-05-19 11:08:18', '2018-05-19 11:08:18', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 68, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(161, '2018-05-19 11:15:43', '2018-05-19 11:15:43', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 39, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(162, '2018-05-19 11:16:06', '2018-05-19 11:16:06', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 40, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(163, '2018-05-19 11:16:33', '2018-05-19 11:16:33', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 45, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(164, '2018-05-19 11:17:01', '2018-05-19 11:17:01', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 58, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(165, '2018-05-19 11:17:26', '2018-05-19 11:17:26', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 59, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(166, '2018-05-19 11:23:07', '2018-05-19 11:23:07', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 69, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(167, '2018-05-19 11:24:09', '2018-05-19 11:24:09', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 70, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(168, '2018-05-19 11:25:12', '2018-05-19 11:25:12', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 74, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(169, '2018-05-19 11:25:39', '2018-05-19 11:25:39', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 75, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(170, '2018-05-19 11:26:06', '2018-05-19 11:26:06', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 76, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(171, '2018-05-19 11:42:05', '2018-05-19 11:42:05', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 78, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(172, '2018-05-19 11:42:23', '2018-05-19 11:42:23', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 78, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(173, '2018-05-19 11:42:50', '2018-05-19 11:42:50', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 77, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(174, '2018-05-19 11:43:18', '2018-05-19 11:43:18', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 80, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(175, '2018-05-19 11:43:47', '2018-05-19 11:43:47', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 82, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(176, '2018-05-19 12:56:52', '2018-05-19 12:56:52', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 121, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(177, '2018-05-19 12:58:11', '2018-05-19 12:58:11', '05-19-2018', '05', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 175, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(178, '2018-06-25 18:18:16', '2018-06-25 18:18:16', '06-25-2018', '06', '2018', 'Self', 'First-time', 'HIV-Positive', 'Yes, to other', '16', '[[\"Condoms\"]]', NULL, NULL, 233, NULL, 10, NULL, '387', 'TDF/3TC/EFV', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '[\"1\",\"5\",\"7\",\"8\",\"10\"]', '[\"1\",\"5\",\"7\",\"10\"]'),
(179, '2018-06-25 18:26:29', '2018-06-25 18:26:29', '06-25-2018', '06', '2018', 'Self', 'First-time', 'HIV-Positive', 'Yes, to other', '11', '[null]', NULL, NULL, 223, NULL, 4, NULL, '297', 'TDF/3TC/EFV', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '[\"1\",\"4\",\"5\",\"7\",\"10\"]', '[\"1\",\"4\",\"5\",\"7\",\"9\",\"10\"]'),
(180, '2018-06-25 18:32:26', '2018-06-25 18:32:26', '06-25-2018', '06', '2018', 'Self', 'First-time', 'HIV-Positive', NULL, NULL, '[null]', NULL, NULL, 225, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(181, '2018-06-25 18:37:14', '2018-06-25 18:37:14', '06-25-2018', '06', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 224, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(182, '2018-06-26 18:21:21', '2018-06-26 18:21:21', '06-26-2018', '06', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 239, NULL, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(183, '2018-06-26 18:26:34', '2018-06-26 18:26:34', '06-26-2018', '06', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 238, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(184, '2018-09-13 17:53:49', '2018-09-13 17:53:49', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 263, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(185, '2018-09-13 17:56:03', '2018-09-13 17:56:03', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 268, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(186, '2018-09-13 17:57:12', '2018-09-13 17:57:12', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 241, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(187, '2018-09-13 18:02:58', '2018-09-13 18:02:58', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 260, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(188, '2018-09-13 18:05:10', '2018-09-13 18:05:10', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 248, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(189, '2018-09-13 18:06:58', '2018-09-13 18:06:58', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 256, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(190, '2018-09-13 18:11:19', '2018-09-13 18:11:19', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 258, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(191, '2018-09-13 18:14:52', '2018-09-13 18:14:52', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 249, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(192, '2018-09-13 18:16:22', '2018-09-13 18:16:22', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 249, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(193, '2018-09-13 18:17:25', '2018-09-13 18:17:25', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 258, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(194, '2018-09-13 18:18:49', '2018-09-13 18:18:49', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 256, NULL, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(195, '2018-09-13 18:24:40', '2018-09-13 18:24:40', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 250, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(196, '2018-09-13 18:33:33', '2018-09-13 18:33:33', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 222, NULL, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(197, '2018-09-13 18:35:39', '2018-09-13 18:35:39', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 247, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(198, '2018-09-13 18:37:48', '2018-09-13 18:37:48', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 251, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(199, '2018-09-13 18:40:25', '2018-09-13 18:40:25', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 267, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(200, '2018-09-13 18:41:27', '2018-09-13 18:41:27', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 246, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(201, '2018-09-13 18:42:43', '2018-09-13 18:42:43', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 253, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(202, '2018-09-13 18:44:30', '2018-09-13 18:44:30', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 242, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(203, '2018-09-13 18:46:57', '2018-09-13 18:46:57', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 259, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(204, '2018-09-13 18:51:49', '2018-09-13 18:51:49', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 240, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(205, '2018-09-13 18:52:47', '2018-09-13 18:52:47', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 265, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(206, '2018-09-13 18:54:41', '2018-09-13 18:54:41', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 252, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(207, '2018-09-13 18:57:10', '2018-09-13 18:57:10', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 264, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(208, '2018-09-13 18:59:10', '2018-09-13 18:59:10', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 266, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(209, '2018-09-13 19:00:13', '2018-09-13 19:00:13', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 243, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null'),
(210, '2018-09-13 19:09:48', '2018-09-13 19:09:48', '09-13-2018', '09', '2018', 'Self', 'First-time', NULL, NULL, NULL, '[null]', NULL, NULL, 262, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `family_suport_groups`
--

CREATE TABLE `family_suport_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_suport_groups`
--

INSERT INTO `family_suport_groups` (`id`, `created_at`, `updated_at`, `name`, `description`) VALUES
(4, '2018-05-18 10:38:15', '2018-05-18 10:38:15', 'Kavakule', 'none'),
(5, '2018-05-18 10:39:03', '2018-05-18 10:39:03', 'Nabweteme', 'none'),
(6, '2018-05-18 10:39:39', '2018-05-18 10:39:39', 'Nakimera', 'none'),
(7, '2018-05-18 10:40:26', '2018-05-18 10:40:26', 'Naluyinda', 'none'),
(9, '2018-05-18 10:41:28', '2018-05-18 10:41:28', 'Mukandekezi', 'none'),
(10, '2018-05-18 10:42:34', '2018-05-18 10:42:34', 'Kyobe', 'none'),
(11, '2018-05-18 10:43:51', '2018-05-18 10:43:51', 'Logoose', 'none'),
(12, '2018-05-18 10:44:24', '2018-05-18 10:44:24', 'Namande', 'none'),
(13, '2018-05-18 10:45:36', '2018-05-18 10:45:36', 'Nantongo', 'none'),
(14, '2018-07-29 08:58:13', '2018-07-29 09:34:53', 'LAST WEDNESDAY APPOINT', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `family_suport_group_link_facilitators`
--

CREATE TABLE `family_suport_group_link_facilitators` (
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fs_group_id` int(10) UNSIGNED NOT NULL,
  `lf_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `family_suport_group_link_facilitators`
--

INSERT INTO `family_suport_group_link_facilitators` (`created_at`, `updated_at`, `fs_group_id`, `lf_id`) VALUES
('2018-05-18 11:37:06', '2018-05-18 11:37:06', 4, 5),
('2018-05-18 11:42:11', '2018-05-18 11:42:11', 5, 11),
('2018-05-18 11:39:51', '2018-05-18 11:39:51', 6, 8),
('2018-05-18 11:38:50', '2018-05-18 11:38:50', 7, 7),
('2018-05-18 10:48:52', '2018-05-18 10:48:52', 9, 4),
('2018-05-18 11:42:47', '2018-05-18 11:42:47', 10, 12),
('2018-05-18 11:38:21', '2018-05-18 11:38:21', 11, 6),
('2018-05-18 11:41:29', '2018-05-18 11:41:29', 12, 10),
('2018-05-18 11:39:26', '2018-05-18 11:39:26', 13, 9);

-- --------------------------------------------------------

--
-- Table structure for table `family_support_group_register_followups`
--

CREATE TABLE `family_support_group_register_followups` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fsg_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appoint_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiv_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medical_services_accessed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `community_services_accessed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_planning_methods` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coments` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fsgr_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follow_up_items`
--

CREATE TABLE `follow_up_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follow_up_item_records`
--

CREATE TABLE `follow_up_item_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_recorded` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_recorded` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_recorded` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `follow_up_item_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fsg_services`
--

CREATE TABLE `fsg_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fsg_services`
--

INSERT INTO `fsg_services` (`id`, `created_at`, `updated_at`, `name`, `short_name`) VALUES
(1, '2018-04-16 12:08:10', '2018-04-16 12:08:10', 'Counselling', 'Counselling'),
(2, '2018-04-26 15:55:57', '2018-04-26 15:55:57', 'Delivery and DoD', 'Delivery and DoD'),
(3, '2018-04-26 15:56:20', '2018-04-26 15:56:20', 'PNC', 'PNC'),
(4, '2018-04-26 15:56:41', '2018-04-26 15:56:41', 'Family Planning', 'Family Planning'),
(5, '2018-04-26 15:57:02', '2018-04-26 15:57:02', 'ARVs', 'ARVs'),
(6, '2018-04-26 15:57:24', '2018-04-26 15:57:24', 'CD4 test', 'CD4 test'),
(7, '2018-04-26 15:57:49', '2018-04-26 15:57:49', 'Adherence Count', 'Adherence Count'),
(8, '2018-04-26 15:58:01', '2018-04-26 15:58:01', 'Nutrition Support', 'Nutrition Support'),
(9, '2018-04-26 15:58:27', '2018-04-26 15:58:27', 'TB Screening', 'TB Screening'),
(10, '2018-04-26 15:58:38', '2018-04-26 15:58:38', 'HCT', 'HCT'),
(11, '2018-04-26 15:58:55', '2018-04-26 15:58:55', 'Material Support', 'Material Support'),
(12, '2018-04-26 15:59:10', '2018-04-26 15:59:10', 'GA', 'GA'),
(13, '2018-04-26 16:00:00', '2018-04-26 16:00:00', 'Spiritual Care', 'Spiritual Care'),
(14, '2018-04-26 16:00:15', '2018-04-26 16:00:15', 'Food Supplements', 'Food Supplements'),
(15, '2018-04-26 16:00:33', '2018-04-26 16:00:33', 'Legal Services', 'Legal Services'),
(16, '2018-04-26 16:00:47', '2018-04-26 16:00:47', 'None', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `hiv_card_rrecords`
--

CREATE TABLE `hiv_card_rrecords` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `date_checked_in` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_checked_in` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_checked_in` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_up_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_up_month` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_up_year` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_since_start_regimen` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_since_start_art` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Wt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method_hieght` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `function_work` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WHO_clinic_stage` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TB_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `potential_side_effects` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_problems` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cotrimoxole_Adhere` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cotrimoxole_Dose` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cotrimoxole_days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INH_of_pills` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `INH_of_days` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Other_methods_dispensed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ARV_adhere` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ARV_regimen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CD4_count` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_for_pooradherence` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `muac_oedema` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fp_nofp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ARV_regimen_of_pills` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ARV_regimen_of_dispensed` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `infant_ab_pcr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edd_emtct` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TB_rx` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_tb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `functional_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hiv_card_rrecords`
--

INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(3, '2018-04-24 10:29:05', '2018-04-24 10:29:05', '03-15-2013', '03', '2013', '04-19-2013', '04', '2013', NULL, NULL, '57', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '32', NULL, NULL, NULL, NULL, '', NULL, NULL, 11, 1),
(4, '2018-04-24 11:11:22', '2018-04-24 11:11:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 12, 1),
(5, '2018-04-24 11:11:32', '2018-04-24 11:11:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 12, 1),
(6, '2018-04-24 11:22:53', '2018-04-24 11:22:53', '02-25-2013', '02', '2013', '03-12-2013', '03', '2013', NULL, NULL, NULL, NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '27', '30', '30', NULL, NULL, '', NULL, NULL, 12, 1),
(8, '2018-04-24 12:41:13', '2018-04-24 12:41:13', '02-13-2013', '02', '2013', '03-12-2013', '03', '2013', NULL, NULL, NULL, NULL, 'WORK', NULL, NULL, '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '22', '30', NULL, NULL, NULL, '', NULL, 'WORK', 17, 1),
(9, '2018-04-24 12:41:13', '2018-04-24 12:41:13', '02-13-2013', '02', '2013', '03-12-2013', '03', '2013', NULL, NULL, NULL, NULL, 'WORK', NULL, NULL, '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '22', '30', NULL, NULL, NULL, '', NULL, 'WORK', 17, 1),
(10, '2018-04-25 08:59:59', '2018-04-25 08:59:59', '02-27-2013', '02', '2013', '03-15-2013', '03', '2013', NULL, NULL, '77.7', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, 'Good', NULL, NULL, NULL, '[null]', NULL, NULL, '34', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 19, 1),
(11, '2018-04-25 09:30:34', '2018-04-25 09:30:34', '03-04-2013', '03', '2013', '04-12-2013', '04', '2013', NULL, NULL, '63.3', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '21', '30', '30', NULL, '7/21/2013', '', NULL, 'WORK', 20, 1),
(12, '2018-04-25 11:39:21', '2018-04-25 11:39:21', '03-15-2013', '03', '2013', '04-19-2013', '04', '2013', NULL, NULL, NULL, NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '15', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '1', NULL, NULL, 'CD4', NULL, '', NULL, 'PLAYING', 18, 1),
(13, '2018-04-25 12:26:02', '2018-04-25 12:26:02', '11-06-2013', '11', '2013', '04-25-2018', '04', '2018', NULL, NULL, '58', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '32', '30', '30', NULL, NULL, '', NULL, 'WORK', 24, 1),
(14, '2018-04-25 12:26:03', '2018-04-25 12:26:03', '11-06-2013', '11', '2013', '04-25-2018', '04', '2018', NULL, NULL, '58', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '32', '30', '30', NULL, NULL, '', NULL, 'WORK', 24, 1),
(15, '2018-04-25 12:50:38', '2018-04-25 12:50:38', '01-08-2014', '01', '2014', '01-10-2014', '01', '2014', NULL, NULL, '42', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[[\"Thrush-oral\\/Vaginal\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '38', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 25, 1),
(16, '2018-04-25 14:55:15', '2018-04-25 14:55:15', '12-05-2013', '12', '2013', '01-04-2013', '01', '2013', NULL, NULL, '63', NULL, 'WORK', NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '21', NULL, NULL, NULL, '4/19/2013', '', NULL, NULL, 26, 1),
(17, '2018-04-25 15:36:21', '2018-04-25 15:36:21', '04-01-2014', '04', '2014', '04-19-2014', '04', '2014', '132', '132', '47', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '38', '60', '30', NULL, NULL, '', NULL, 'WORK', 27, 1),
(18, '2018-04-25 15:36:23', '2018-04-25 15:36:23', '04-01-2014', '04', '2014', '04-19-2014', '04', '2014', '132', '132', '47', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '38', '60', '30', NULL, NULL, '', NULL, 'WORK', 27, 1),
(19, '2018-04-25 15:36:27', '2018-04-25 15:36:27', '04-01-2014', '04', '2014', '04-19-2014', '04', '2014', '132', '132', '47', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '38', '60', '30', NULL, NULL, '', NULL, 'WORK', 27, 1),
(20, '2018-04-25 15:36:32', '2018-04-25 15:36:32', '04-01-2014', '04', '2014', '04-19-2014', '04', '2014', '132', '132', '47', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '38', '60', '30', NULL, NULL, '', NULL, 'WORK', 27, 1),
(21, '2018-04-25 15:36:38', '2018-04-25 15:36:38', '04-01-2014', '04', '2014', '04-19-2014', '04', '2014', '132', '132', '47', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '38', '60', '30', NULL, NULL, '', NULL, 'WORK', 27, 1),
(22, '2018-04-25 16:07:14', '2018-04-25 16:07:14', '05-09-2013', '05', '2013', '05-17-2013', '05', '2013', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '42', '21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '33', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 28, 1),
(23, '2018-04-26 07:00:35', '2018-04-26 07:00:35', '06-01-2013', '06', '2013', '06-14-2013', '06', '2013', NULL, NULL, NULL, NULL, NULL, NULL, 'Suspect', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFFV', NULL, NULL, '[null]', NULL, NULL, '29', '30', NULL, NULL, NULL, '', NULL, 'WORK', 30, 1),
(24, '2018-04-26 07:00:37', '2018-04-26 07:00:37', '06-01-2013', '06', '2013', '06-14-2013', '06', '2013', NULL, NULL, NULL, NULL, NULL, NULL, 'Suspect', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFFV', NULL, NULL, '[null]', NULL, NULL, '29', '30', NULL, NULL, NULL, '', NULL, 'WORK', 30, 1),
(25, '2018-04-26 07:00:37', '2018-04-26 07:00:37', '06-01-2013', '06', '2013', '06-14-2013', '06', '2013', NULL, NULL, NULL, NULL, NULL, NULL, 'Suspect', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFFV', NULL, NULL, '[null]', NULL, NULL, '29', '30', NULL, NULL, NULL, '', NULL, 'WORK', 30, 1),
(26, '2018-04-26 07:05:41', '2018-04-26 07:05:41', '06-14-2013', '06', '2013', '07-12-2013', '07', '2013', NULL, NULL, NULL, NULL, NULL, NULL, 'No signs or Symptoms of TB', '[null]', '[null]', '60', '30', '30', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(27, '2018-04-26 07:05:56', '2018-04-26 07:05:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 30, 1),
(28, '2018-04-26 07:05:57', '2018-04-26 07:05:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 30, 1),
(29, '2018-04-26 07:05:59', '2018-04-26 07:05:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 30, 1),
(30, '2018-04-26 07:09:34', '2018-04-26 07:09:34', '07-12-2013', '07', '2013', '08-09-2013', '08', '2013', NULL, '3', NULL, NULL, NULL, '1', NULL, '[null]', '[null]', '45.9', '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '3O', '30', NULL, NULL, '', NULL, NULL, 30, 1),
(31, '2018-04-26 07:09:35', '2018-04-26 07:09:35', '07-12-2013', '07', '2013', '08-09-2013', '08', '2013', NULL, '3', NULL, NULL, NULL, '1', NULL, '[null]', '[null]', '45.9', '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '3O', '30', NULL, NULL, '', NULL, NULL, 30, 1),
(32, '2018-04-26 07:09:38', '2018-04-26 07:09:38', '07-12-2013', '07', '2013', '08-09-2013', '08', '2013', NULL, '3', NULL, NULL, NULL, '1', NULL, '[null]', '[null]', '45.9', '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '3O', '30', NULL, NULL, '', NULL, NULL, 30, 1),
(33, '2018-04-26 07:12:08', '2018-04-26 07:12:08', '08-09-2013', '08', '2013', '10-04-2013', '10', '2013', NULL, '4', '46', NULL, NULL, '1', NULL, '[null]', '[null]', '120', '60', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(34, '2018-04-26 07:12:09', '2018-04-26 07:12:09', '08-09-2013', '08', '2013', '10-04-2013', '10', '2013', NULL, '4', '46', NULL, NULL, '1', NULL, '[null]', '[null]', '120', '60', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(35, '2018-04-26 08:52:45', '2018-04-26 08:52:45', '06-01-2013', '06', '2013', '06-14-2013', '06', '2013', NULL, NULL, NULL, NULL, NULL, NULL, 'Suspect', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '29', '30', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(36, '2018-04-26 08:53:32', '2018-04-26 08:53:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 30, 1),
(37, '2018-04-26 08:56:25', '2018-04-26 08:56:25', '06-14-2013', '06', '2013', '07-12-2013', '07', '2013', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Fair', NULL, NULL, NULL, '[null]', NULL, NULL, NULL, 'TDF/3TC/EFV', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(38, '2018-04-26 08:59:34', '2018-04-26 08:59:34', '07-12-2013', '07', '2013', '08-09-2013', '08', '2013', NULL, '3', '45.9', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', NULL, NULL, NULL, '', NULL, 'WORK', 30, 1),
(39, '2018-04-26 09:06:12', '2018-04-26 09:06:12', '08-09-2013', '08', '2013', '10-04-2013', '10', '2013', NULL, '4', '46', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '120', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TUBE LIGATION', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(40, '2018-04-26 09:10:16', '2018-04-26 09:10:16', '10-04-2013', '10', '2013', '11-13-2013', '11', '2013', NULL, '6', '45.6', NULL, NULL, '1', 'Suspect', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, 'TDF/3TC/EFV', '28', NULL, NULL, '', NULL, 'WORK', 30, 1),
(41, '2018-04-26 09:14:01', '2018-04-26 09:14:01', '11-13-2013', '11', '2013', '01-10-2014', '01', '2014', NULL, '7', '45.7', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(42, '2018-04-26 09:17:28', '2018-04-26 09:17:28', '01-10-2014', '01', '2014', '02-07-2014', '02', '2014', NULL, '8', NULL, NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', NULL, '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(43, '2018-04-26 09:22:26', '2018-04-26 09:22:26', '02-24-2014', '02', '2014', '03-02-2014', '03', '2014', NULL, '9', '49.8', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '37', '37', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '37', '37', NULL, NULL, '', NULL, 'WORK', 30, 1),
(44, '2018-04-26 09:26:10', '2018-04-26 09:26:10', '05-07-2014', '05', '2014', '06-04-2014', '06', '2014', NULL, '10', '49.5', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TLTDF', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(45, '2018-04-26 09:29:38', '2018-04-26 09:29:38', '06-04-2014', '06', '2014', '07-02-2014', '07', '2014', NULL, '11', '50.9', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, NULL, '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(46, '2018-04-26 09:33:07', '2018-04-26 09:33:07', '07-02-2014', '07', '2014', '08-06-2014', '08', '2014', NULL, '12', '51', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, 'TDF/3TC/EFV', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(47, '2018-04-26 09:35:34', '2018-04-26 09:35:34', '08-11-2014', '08', '2014', '09-12-2014', '09', '2014', NULL, '13', NULL, NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '3O', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, 'TL', NULL, 'TDF/3TC/EFV', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(48, '2018-04-26 09:37:50', '2018-04-26 09:37:50', '09-11-2014', '09', '2014', '10-01-2014', '10', '2014', NULL, '14', '53', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '30', NULL, NULL, NULL, '', NULL, 'WORK', 30, 1),
(49, '2018-04-26 09:37:50', '2018-04-26 09:37:50', '09-11-2014', '09', '2014', '10-01-2014', '10', '2014', NULL, '14', '53', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '30', NULL, NULL, NULL, '', NULL, 'WORK', 30, 1),
(50, '2018-04-26 09:41:08', '2018-04-26 09:41:08', '10-13-2014', '10', '2014', '11-05-2014', '11', '2014', NULL, '13', '53', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(51, '2018-04-26 09:44:53', '2018-04-26 09:44:53', '11-05-2014', '11', '2014', '01-14-2015', '01', '2015', NULL, '14', '54', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(52, '2018-04-26 09:44:54', '2018-04-26 09:44:54', '11-05-2014', '11', '2014', '01-14-2015', '01', '2015', NULL, '14', '54', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(53, '2018-04-26 09:52:03', '2018-04-26 09:52:03', '01-19-2015', '01', '2015', '02-04-2015', '02', '2015', NULL, '15', '52', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(54, '2018-04-26 09:54:06', '2018-04-26 09:54:06', '02-18-2015', '02', '2015', '03-18-2015', '03', '2015', NULL, '16', NULL, NULL, NULL, '1', NULL, '[null]', '[null]', 'FAIR', '30', '3O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, NULL, '30', NULL, NULL, '', NULL, 'WORK', 30, 1),
(55, '2018-04-26 10:01:25', '2018-04-26 10:01:25', '03-18-2015', '03', '2015', '05-27-2015', '05', '2015', NULL, '17', NULL, NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(56, '2018-04-26 10:05:55', '2018-04-26 10:05:55', '05-27-2015', '05', '2015', '08-26-2015', '08', '2015', NULL, NULL, '51.9', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(57, '2018-04-26 10:07:56', '2018-04-26 10:07:56', '08-26-2015', '08', '2015', '10-28-2015', '10', '2015', NULL, NULL, '52.2', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(58, '2018-04-26 10:10:14', '2018-04-26 10:10:14', '10-28-2015', '10', '2015', '12-30-2015', '12', '2015', NULL, NULL, '52', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(59, '2018-04-26 10:12:25', '2018-04-26 10:12:25', '01-14-2016', '01', '2016', '02-24-2016', '02', '2016', NULL, NULL, '52', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(60, '2018-04-26 10:14:41', '2018-04-26 10:14:41', '02-24-2016', '02', '2016', '04-27-2016', '04', '2016', NULL, NULL, '52.2', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(61, '2018-04-26 10:18:01', '2018-04-26 10:18:01', '04-27-2016', '04', '2016', '06-29-2016', '06', '2016', NULL, NULL, '51.4', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(62, '2018-04-26 10:20:38', '2018-04-26 10:20:38', '06-29-2016', '06', '2016', '08-31-2016', '08', '2016', NULL, NULL, '52', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(63, '2018-04-26 10:24:35', '2018-04-26 10:24:35', '09-28-2016', '09', '2016', '11-23-2016', '11', '2016', NULL, NULL, '51', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(64, '2018-04-26 10:26:37', '2018-04-26 10:26:37', '11-23-2016', '11', '2016', '01-25-2017', '01', '2017', NULL, NULL, '52', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(65, '2018-04-26 10:31:17', '2018-04-26 10:31:17', '01-18-207', '01', '207', '03-29-2017', '03', '2017', NULL, NULL, '53', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(66, '2018-04-26 10:35:03', '2018-04-26 10:35:03', '03-29-2017', '03', '2017', '05-24-2017', '05', '2017', NULL, NULL, '54', '170', NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '60', '60', NULL, NULL, '', NULL, 'WOOR', 30, 1),
(67, '2018-04-26 10:37:53', '2018-04-26 10:37:53', '05-26-2017', '05', '2017', '07-26-2017', '07', '2017', NULL, NULL, '54', '170', NULL, NULL, NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(68, '2018-04-26 10:44:21', '2018-04-26 10:44:21', '07-26-2017', '07', '2017', '07-26-2017', '07', '2017', NULL, NULL, '52', '170', NULL, '1', NULL, '[null]', '[null]', 'GOOD', NULL, '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(69, '2018-04-26 10:47:04', '2018-04-26 10:47:04', '10-04-2017', '10', '2017', '12-06-2017', '12', '2017', NULL, NULL, NULL, NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '6O', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'TL', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(70, '2018-04-26 10:50:49', '2018-04-26 10:50:49', '12-06-2017', '12', '2017', '03-07-2018', '03', '2018', NULL, NULL, '51', NULL, NULL, '2', NULL, '[null]', '[null]', 'GOOD', '90', '90', NULL, NULL, NULL, NULL, 'TDF/3TCEFV', NULL, NULL, '[null]', NULL, 'TL', NULL, '90', '90', NULL, NULL, '', NULL, 'WORK', 30, 1),
(71, '2018-04-27 08:29:26', '2018-04-27 08:29:26', '12-19-2012', '12', '2012', '01-12-2013', '01', '2013', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '28', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 6, 1),
(72, '2018-04-27 08:53:30', '2018-04-27 08:53:30', '07-19-2013', '07', '2013', '08-09-2013', '08', '2013', NULL, NULL, '58', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '21', '30', '30', NULL, '3/14', '', NULL, 'WORK', 37, 1),
(73, '2018-04-27 09:12:25', '2018-04-27 09:12:25', '08-09-2013', '08', '2013', '09-06-2013', '09', '2013', NULL, NULL, '59.3', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[[\"FEVER*\"]]', NULL, '90', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '20', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 38, 1),
(74, '2018-04-27 09:31:39', '2018-04-27 09:31:39', '08-12-2013', '08', '2013', '09-11-2013', '09', '2013', NULL, NULL, '43', NULL, NULL, '2', 'Suspect', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '55', NULL, NULL, 'SPUTUMS', NULL, '', NULL, 'WORK', 39, 1),
(75, '2018-04-27 10:04:33', '2018-04-27 10:04:33', '09-19-2013', '09', '2013', '10-16-2013', '10', '2013', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '25', '30', '30', NULL, NULL, '', NULL, 'WORK', 40, 1),
(76, '2018-04-27 10:04:33', '2018-04-27 10:04:33', '09-19-2013', '09', '2013', '10-16-2013', '10', '2013', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '25', '30', '30', NULL, NULL, '', NULL, 'WORK', 40, 1),
(77, '2018-04-27 10:26:10', '2018-04-27 10:26:10', '10-16-2013', '10', '2013', '11-13-2013', '11', '2013', NULL, NULL, '67.4', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '37', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 41, 1),
(78, '2018-04-27 10:46:46', '2018-04-27 10:46:46', '11-08-2013', '11', '2013', '12-06-2013', '12', '2013', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '18', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 42, 1),
(79, '2018-04-27 11:05:38', '2018-04-27 11:05:38', '11-19-2013', '11', '2013', '12-18-2013', '12', '2013', '72', '72', '63.7', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '39', '60', '30', NULL, NULL, '', NULL, 'WORK', 43, 1),
(80, '2018-04-27 11:21:00', '2018-04-27 11:21:00', '11-22-2013', '11', '2013', '12-20-2013', '12', '2013', NULL, NULL, '49', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '27', '30', '30', '10.7gm', NULL, '', NULL, 'WORK', 44, 1),
(81, '2018-04-27 11:34:49', '2018-04-27 11:34:49', '11-02-2013', '11', '2013', '04-27-2018', '04', '2018', '7', '7', '54', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '281', NULL, '[null]', NULL, NULL, '55', '30', '30', NULL, NULL, '', NULL, 'WORK', 45, 1),
(82, '2018-04-27 12:00:01', '2018-04-27 12:00:01', '12-09-2013', '12', '2013', '01-08-2014', '01', '2014', NULL, NULL, '52', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\",\"FEVER*\",\"DB difficult in breathing\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 46, 1),
(83, '2018-04-27 12:00:01', '2018-04-27 12:00:01', '12-09-2013', '12', '2013', '01-08-2014', '01', '2014', NULL, NULL, '52', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\",\"FEVER*\",\"DB difficult in breathing\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 46, 1),
(84, '2018-04-27 12:17:01', '2018-04-27 12:17:01', '01-07-2014', '01', '2014', '02-05-2014', '02', '2014', NULL, NULL, '56', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '41', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 47, 1),
(85, '2018-04-27 12:33:04', '2018-04-27 12:33:04', '01-10-2014', '01', '2014', '02-07-2014', '02', '2014', NULL, NULL, '15', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '5', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 48, 1),
(86, '2018-04-27 12:46:57', '2018-04-27 12:46:57', '02-17-2014', '02', '2014', '03-07-2014', '03', '2014', NULL, NULL, '48', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[[\"FEVER*\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'WORK', 49, 1),
(87, '2018-04-27 13:07:18', '2018-04-27 13:07:18', '02-03-2014', '02', '2014', '04-10-2014', '04', '2014', NULL, NULL, '59.8', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, '668', NULL, '[null]', 'MUAC|+', NULL, '25', NULL, NULL, NULL, NULL, '', NULL, 'work', 50, 1),
(88, '2018-04-27 13:39:38', '2018-04-27 13:39:38', '03-10-2014', '03', '2014', '04-02-2014', '04', '2014', NULL, NULL, '5.8', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[[\"Weight Loss*\"]]', NULL, '8', '30', NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '1', '30', '30', NULL, NULL, '', NULL, 'PLAYING', 52, 1),
(89, '2018-04-27 13:39:39', '2018-04-27 13:39:39', '03-10-2014', '03', '2014', '04-02-2014', '04', '2014', NULL, NULL, '5.8', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[[\"Weight Loss*\"]]', NULL, '8', '30', NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '1', '30', '30', NULL, NULL, '', NULL, 'PLAYING', 52, 1),
(90, '2018-04-27 13:39:43', '2018-04-27 13:39:43', '03-10-2014', '03', '2014', '04-02-2014', '04', '2014', NULL, NULL, '5.8', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[[\"Weight Loss*\"]]', NULL, '8', '30', NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '1', '30', '30', NULL, NULL, '', NULL, 'PLAYING', 52, 1),
(91, '2018-04-28 09:05:44', '2018-04-28 09:05:44', '05-28-2014', '05', '2014', '02-28-2014', '02', '2014', NULL, NULL, '60.9', NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '40', NULL, NULL, NULL, NULL, '', NULL, NULL, 55, 1),
(92, '2018-04-28 09:17:09', '2018-04-28 09:17:09', '12-28-2018', '12', '2018', '03-28-2018', '03', '2018', '13.5', '13.5', '63', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, 'NO', '', NULL, 'WORK', 55, 1),
(93, '2018-04-28 09:51:10', '2018-04-28 09:51:10', '05-22-2015', '05', '2015', '06-30-2015', '06', '2015', NULL, NULL, '55.4', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '23', '30', '30', NULL, '393', '', NULL, 'W', 59, 1),
(94, '2018-04-28 10:03:04', '2018-04-28 10:03:04', '06-28-2016', '06', '2016', '04-28-2016', '04', '2016', NULL, NULL, '61.4', NULL, 'WORK', NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '31', '30', '30', NULL, '2/JUN/2016', '', NULL, 'WORK', 62, 1),
(95, '2018-04-28 10:04:54', '2018-04-28 10:04:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 62, 1),
(96, '2018-04-28 10:04:54', '2018-04-28 10:04:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 62, 1),
(97, '2018-04-28 10:04:55', '2018-04-28 10:04:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 62, 1),
(98, '2018-04-28 10:04:55', '2018-04-28 10:04:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 62, 1),
(99, '2018-04-28 10:04:56', '2018-04-28 10:04:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 62, 1),
(100, '2018-04-28 10:05:03', '2018-04-28 10:05:03', '06-08-2014', '06', '2014', '12-09-2012', '12', '2012', '4', '4', NULL, NULL, NULL, 'I', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '28', '30', '30', NULL, NULL, '', NULL, 'WORK', 61, 1),
(101, '2018-04-28 10:05:54', '2018-04-28 10:05:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 61, 1),
(102, '2018-04-28 10:12:07', '2018-04-28 10:12:07', '12-22-2016', '12', '2016', '01-25-2018', '01', '2018', '12', '12', '48', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'F', '30', '30', NULL, 'NIL', 'NIL', 'Fair', 'TDF/3TC/CFV', 'SUPPRESSED', NULL, '[[\"Forgot\"],null]', NULL, 'NIL', NULL, '30', '30', NULL, NULL, '', NULL, NULL, 59, 1),
(103, '2018-04-28 10:12:47', '2018-04-28 10:12:47', '02-07-2014', '02', '2014', '06-08-2014', '06', '2014', NULL, NULL, '58', NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '30', '30', '0', '0', '0', NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '53', NULL, NULL, NULL, NULL, '', NULL, NULL, 58, 1),
(104, '2018-04-28 10:17:32', '2018-04-28 10:17:32', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', '14', '14', '60', '145', 'WORK', NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', NULL, NULL, NULL, '[null]', 'MUAC|+', NULL, '31', '60', '60', NULL, '2', '', NULL, 'WORK', 62, 1),
(105, '2018-04-28 10:47:23', '2018-04-28 10:47:23', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(106, '2018-04-28 10:47:24', '2018-04-28 10:47:24', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(107, '2018-04-28 10:47:24', '2018-04-28 10:47:24', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(108, '2018-04-28 10:47:24', '2018-04-28 10:47:24', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(109, '2018-04-28 10:47:25', '2018-04-28 10:47:25', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(110, '2018-04-28 10:47:25', '2018-04-28 10:47:25', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(111, '2018-04-28 10:47:59', '2018-04-28 10:47:59', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(112, '2018-04-28 10:48:00', '2018-04-28 10:48:00', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(113, '2018-04-28 10:48:00', '2018-04-28 10:48:00', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(114, '2018-04-28 10:48:00', '2018-04-28 10:48:00', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(115, '2018-04-28 10:48:45', '2018-04-28 10:48:45', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(116, '2018-04-28 10:48:46', '2018-04-28 10:48:46', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(117, '2018-04-28 10:48:46', '2018-04-28 10:48:46', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(118, '2018-04-28 10:48:46', '2018-04-28 10:48:46', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(119, '2018-04-28 10:48:47', '2018-04-28 10:48:47', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(120, '2018-04-28 10:48:47', '2018-04-28 10:48:47', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(121, '2018-04-28 10:48:47', '2018-04-28 10:48:47', '10-09-2014', '10', '2014', '01-10-2014', '01', '2014', '36', '36', '56', NULL, 'PREGNANT', 'I', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', '637', NULL, '[null]', NULL, NULL, '30', '30', '30', 'PCR for child', NULL, '', NULL, NULL, 68, 1),
(122, '2018-04-28 10:48:47', '2018-04-28 10:48:47', '10-09-2014', '10', '2014', '01-10-2014', '01', '2014', '36', '36', '56', NULL, 'PREGNANT', 'I', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', '637', NULL, '[null]', NULL, NULL, '30', '30', '30', 'PCR for child', NULL, '', NULL, NULL, 68, 1),
(123, '2018-04-28 10:48:51', '2018-04-28 10:48:51', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(124, '2018-04-28 10:49:02', '2018-04-28 10:49:02', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(125, '2018-04-28 10:49:02', '2018-04-28 10:49:02', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(126, '2018-04-28 10:49:04', '2018-04-28 10:49:04', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(127, '2018-04-28 10:49:08', '2018-04-28 10:49:08', '10-12-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '474', NULL, '[null]', NULL, NULL, '37', '30', '30', NULL, 'OCTOBER/37WKS/37', '', NULL, 'WORK', 54, 1),
(128, '2018-04-28 10:49:59', '2018-04-28 10:49:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '36', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 68, 1),
(129, '2018-04-28 10:58:20', '2018-04-28 10:58:20', '01-07-201', '01', '201', '06-08-2014', '06', '2014', NULL, NULL, NULL, NULL, NULL, NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '58', NULL, NULL, NULL, NULL, '', NULL, 'Work', 70, 1),
(130, '2018-04-28 11:01:24', '2018-04-28 11:01:24', '02-22-2018', '02', '2018', '05-24-2018', '05', '2018', '14.5', '14.5', '52', '156', NULL, '1', NULL, '[null]', '[null]', 'GOOD', NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 54, 1),
(131, '2018-04-28 11:01:25', '2018-04-28 11:01:25', '02-22-2018', '02', '2018', '05-24-2018', '05', '2018', '14.5', '14.5', '52', '156', NULL, '1', NULL, '[null]', '[null]', 'GOOD', NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 54, 1),
(132, '2018-04-28 11:01:26', '2018-04-28 11:01:26', '02-22-2018', '02', '2018', '05-24-2018', '05', '2018', '14.5', '14.5', '52', '156', NULL, '1', NULL, '[null]', '[null]', 'GOOD', NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 54, 1),
(133, '2018-04-28 11:09:08', '2018-04-28 11:09:08', '08-18-2015', '08', '2015', '09-09-2015', '09', '2015', '1', NULL, '54.4', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', 'OUT OF STOCK', NULL, 'NIL', 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '21', '30', NULL, NULL, '12/2015', '', NULL, NULL, 69, 1),
(134, '2018-04-28 11:09:13', '2018-04-28 11:09:13', '01-07-2018', '01', '2018', '02-14-2018', '02', '2018', '3', '31', '47', NULL, NULL, 'WORK', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '15', '15', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', 'DONE', NULL, '[null]', NULL, NULL, NULL, '15', '15', NULL, NULL, '', '1', NULL, 68, 1),
(135, '2018-04-28 11:16:48', '2018-04-28 11:16:48', '04-25-2015', '04', '2015', '12-02-2105', '12', '2105', NULL, NULL, '72', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '27', '30', '30', NULL, '34', '', NULL, 'WORK', 67, 1),
(136, '2018-04-28 11:21:17', '2018-04-28 11:21:17', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', '19', '19', '81', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, '3', '', NULL, 'WORK', 67, 1),
(137, '2018-04-28 11:21:21', '2018-04-28 11:21:21', '07-29-2017', '07', '2017', '07-27-2017', '07', '2017', NULL, NULL, '62', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', 'OUT OF STOCK', 'NIL', NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, '1', NULL, '', NULL, NULL, 69, 1),
(138, '2018-04-28 11:39:56', '2018-04-28 11:39:56', '09-18-2014', '09', '2014', '10-01-2014', '10', '2014', NULL, NULL, '50', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '35', '30', '30', NULL, NULL, '', NULL, 'WORK', 72, 1),
(139, '2018-04-28 11:44:51', '2018-04-28 11:44:51', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '41.5', '41.5', '47', NULL, NULL, '2', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 72, 1),
(140, '2018-04-28 11:50:26', '2018-04-28 11:50:26', '11-23-2014', '11', '2014', '01-09-2015', '01', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '18', '30', '30', NULL, NULL, '', NULL, NULL, 73, 1),
(141, '2018-04-28 11:58:26', '2018-04-28 11:58:26', '04-04-2018', '04', '2018', '06-06-2018', '06', '2018', '21.5', '21.5', '71', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '120', NULL, NULL, NULL, 'Good', NULL, NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 73, 1),
(142, '2018-04-28 11:59:12', '2018-04-28 11:59:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '21.5', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '120', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 73, 1),
(143, '2018-04-28 12:01:40', '2018-04-28 12:01:40', '02-10-2014', '02', '2014', '05-11-201', '05', '201', NULL, NULL, '57', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '33', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 71, 1),
(144, '2018-04-28 12:01:40', '2018-04-28 12:01:40', '02-10-2014', '02', '2014', '05-11-201', '05', '201', NULL, NULL, '57', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '33', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 71, 1),
(145, '2018-04-28 12:01:40', '2018-04-28 12:01:40', '02-10-2014', '02', '2014', '05-11-201', '05', '201', NULL, NULL, '57', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '33', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 71, 1),
(146, '2018-04-28 12:02:54', '2018-04-28 12:02:54', '10-03-2017', '10', '2017', '10-26-2017', '10', '2017', NULL, NULL, NULL, NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF3TCEFV', NULL, NULL, '[null]', NULL, NULL, '28', '30', '30', NULL, NULL, '', NULL, NULL, 74, 1),
(147, '2018-04-28 12:12:33', '2018-04-28 12:12:33', '05-09-2017', '05', '2017', '06-07-2017', '06', '2017', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '22', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 75, 1),
(148, '2018-04-28 12:20:39', '2018-04-28 12:20:39', '12-05-2017', '12', '2017', '02-22-2018', '02', '2018', '4', '4', '63.3', NULL, 'PREGNANT', '1', NULL, '[null]', '[null]', 'FAIR', '90', '90', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '90', '90', NULL, NULL, '', NULL, 'WORK', 75, 1),
(149, '2018-04-28 12:23:38', '2018-04-28 12:23:38', '11-21-2017', '11', '2017', '05-29-2018', '05', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', 'FAIR', '90', '90', NULL, NULL, NULL, 'Fair', 'TDF3TCEFV', NULL, NULL, '[null]', NULL, NULL, NULL, '90', '90', NULL, NULL, '', NULL, 'W', 74, 1),
(150, '2018-04-28 12:37:41', '2018-04-28 12:37:41', '01-05-2016', '01', '2016', '01-27-2016', '01', '2016', NULL, NULL, NULL, NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '22', '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, 'CONDOM', '45', NULL, NULL, NULL, NULL, '', NULL, NULL, 77, 1),
(151, '2018-04-28 12:43:49', '2018-04-28 12:43:49', '04-05-2018', '04', '2018', '05-02-2018', '05', '2018', '25', '25', '86.3', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'GOOD', 'TESTED', NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 77, 1),
(152, '2018-04-28 12:50:52', '2018-04-28 12:50:52', '04-09-2017', '04', '2017', '04-07-2017', '04', '2017', NULL, NULL, '55', NULL, NULL, '3', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '40', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 76, 1),
(153, '2018-04-28 12:50:56', '2018-04-28 12:50:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1);
INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(154, '2018-04-28 12:51:04', '2018-04-28 12:51:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(155, '2018-04-28 12:51:05', '2018-04-28 12:51:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(156, '2018-04-28 12:51:05', '2018-04-28 12:51:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(157, '2018-04-28 12:51:05', '2018-04-28 12:51:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(158, '2018-04-28 12:51:08', '2018-04-28 12:51:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(159, '2018-04-28 12:52:16', '2018-04-28 12:52:16', '04-11-2018', '04', '2018', '04-25-2018', '04', '2018', NULL, NULL, '58', NULL, 'BREESTFEEDING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 79, 1),
(160, '2018-04-28 12:52:17', '2018-04-28 12:52:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(161, '2018-04-28 12:52:21', '2018-04-28 12:52:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(162, '2018-04-28 12:52:21', '2018-04-28 12:52:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(163, '2018-04-28 12:52:28', '2018-04-28 12:52:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(164, '2018-04-28 12:52:29', '2018-04-28 12:52:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(165, '2018-04-28 12:52:29', '2018-04-28 12:52:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(166, '2018-04-28 12:52:30', '2018-04-28 12:52:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(167, '2018-04-28 12:52:30', '2018-04-28 12:52:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(168, '2018-04-28 12:52:30', '2018-04-28 12:52:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(169, '2018-04-28 12:52:31', '2018-04-28 12:52:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(170, '2018-04-28 12:52:36', '2018-04-28 12:52:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(171, '2018-04-28 12:52:36', '2018-04-28 12:52:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(172, '2018-04-28 12:52:36', '2018-04-28 12:52:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(173, '2018-04-28 12:52:36', '2018-04-28 12:52:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(174, '2018-04-28 12:52:40', '2018-04-28 12:52:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(175, '2018-04-28 12:52:55', '2018-04-28 12:52:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(176, '2018-04-28 12:52:55', '2018-04-28 12:52:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(177, '2018-04-28 12:52:55', '2018-04-28 12:52:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(178, '2018-04-28 12:52:55', '2018-04-28 12:52:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(179, '2018-04-28 12:53:16', '2018-04-28 12:53:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(180, '2018-04-28 12:53:17', '2018-04-28 12:53:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(181, '2018-04-28 12:53:17', '2018-04-28 12:53:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(182, '2018-04-28 12:53:17', '2018-04-28 12:53:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(183, '2018-04-28 12:53:17', '2018-04-28 12:53:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(184, '2018-04-28 12:53:24', '2018-04-28 12:53:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(185, '2018-04-28 12:53:24', '2018-04-28 12:53:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(186, '2018-04-28 12:53:24', '2018-04-28 12:53:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(187, '2018-04-28 12:54:15', '2018-04-28 12:54:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(188, '2018-04-28 12:54:45', '2018-04-28 12:54:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(189, '2018-04-28 12:54:45', '2018-04-28 12:54:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(190, '2018-04-28 12:54:46', '2018-04-28 12:54:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(191, '2018-04-28 12:54:47', '2018-04-28 12:54:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(192, '2018-04-28 12:55:35', '2018-04-28 12:55:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(193, '2018-04-28 12:55:36', '2018-04-28 12:55:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(194, '2018-04-28 12:55:36', '2018-04-28 12:55:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(195, '2018-04-28 12:55:36', '2018-04-28 12:55:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(196, '2018-04-28 12:55:37', '2018-04-28 12:55:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(197, '2018-04-28 12:55:37', '2018-04-28 12:55:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(198, '2018-04-28 12:55:38', '2018-04-28 12:55:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(199, '2018-04-28 12:55:38', '2018-04-28 12:55:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(200, '2018-04-28 12:55:38', '2018-04-28 12:55:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(201, '2018-04-28 12:55:40', '2018-04-28 12:55:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(202, '2018-04-28 12:58:39', '2018-04-28 12:58:39', '02-05-2015', '02', '2015', '12-06-2015', '12', '2015', NULL, NULL, '65.5', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF3TCEFU', NULL, NULL, '[null]', NULL, NULL, '28', NULL, NULL, NULL, 'EDD8/15', '', NULL, 'WORK', 78, 1),
(203, '2018-04-28 13:06:41', '2018-04-28 13:06:41', '02-14-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '42', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '45', '30', '30', NULL, NULL, '', NULL, NULL, 81, 1),
(204, '2018-04-28 13:08:02', '2018-04-28 13:08:02', '03-31-2018', '03', '2018', '02-05-2018', '02', '2018', '22', '22', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', 'P', '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EW', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 78, 1),
(205, '2018-04-28 13:10:32', '2018-04-28 13:10:32', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', '1', '1', NULL, NULL, 'LOW CD4', '1', NULL, '[null]', '[null]', 'GOOD', NULL, '30', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 81, 1),
(206, '2018-04-28 13:12:14', '2018-04-28 13:12:14', '05-09-2017', '05', '2017', '06-07-2017', '06', '2017', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '25', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 83, 1),
(207, '2018-04-28 13:13:38', '2018-04-28 13:13:38', '05-25-2016', '05', '2016', '06-30-2016', '06', '2016', NULL, NULL, '49', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '24', '30', '30', NULL, NULL, '', NULL, 'W', 80, 1),
(208, '2018-04-28 13:16:12', '2018-04-28 13:16:12', '03-08-2018', '03', '2018', '01-04-2018', '01', '2018', '2', '2', '55', NULL, NULL, NULL, NULL, '[null]', '[null]', 'GOOD', '30', '30', '56', '56', NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'WORK', 83, 1),
(209, '2018-04-28 13:18:53', '2018-04-28 13:18:53', '01-27-2016', '01', '2016', '02-24-2016', '02', '2016', NULL, NULL, '56', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '28', '30', '30', NULL, NULL, '', NULL, 'WORK', 82, 1),
(210, '2018-04-28 13:24:37', '2018-04-28 13:24:37', '04-11-2018', '04', '2018', '05-31-2018', '05', '2018', '13', '13', '49', NULL, 'W', '1', NULL, '[null]', '[null]', 'G', '120', '60', NULL, NULL, 'NIL', NULL, 'TDF3TCEFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', 'NIL', NULL, '', NULL, NULL, 80, 1),
(211, '2018-04-28 13:25:49', '2018-04-28 13:25:49', '04-04-2018', '04', '2018', '04-26-2018', '04', '2018', '21', '21', '55', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '28', '30', '30', 'VL SUPRESING', NULL, '', NULL, 'WORK', 82, 1),
(212, '2018-04-28 14:09:44', '2018-04-28 14:09:44', '11-06-2014', '11', '2014', '12-03-2018', '12', '2018', NULL, NULL, '62', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '22', '30', '30', NULL, NULL, '', NULL, 'WORKING', 85, 1),
(213, '2018-04-28 14:15:43', '2018-04-28 14:15:43', '04-13-2017', '04', '2017', '05-25-2017', '05', '2017', NULL, NULL, '63', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(214, '2018-04-28 14:17:59', '2018-04-28 14:17:59', '02-18-2018', '02', '2018', '03-18-2018', '03', '2018', NULL, NULL, '60', NULL, NULL, '1', NULL, '[null]', '[null]', 'G', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '22', '30', '30', NULL, '3', '', NULL, NULL, 86, 1),
(215, '2018-04-28 14:19:09', '2018-04-28 14:19:09', '04-05-2018', '04', '2018', '05-04-2018', '05', '2018', '26.5', '26.5', '67', NULL, 'PREGNANT', '1', NULL, '[null]', '[null]', 'GOOD', '15', '15', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, 'IUD', NULL, '15', '15', NULL, NULL, '', NULL, NULL, 85, 1),
(216, '2018-04-28 14:25:00', '2018-04-28 14:25:00', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(217, '2018-04-28 14:25:01', '2018-04-28 14:25:01', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(218, '2018-04-28 14:25:02', '2018-04-28 14:25:02', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(219, '2018-04-28 14:25:02', '2018-04-28 14:25:02', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(220, '2018-04-28 14:25:04', '2018-04-28 14:25:04', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(221, '2018-04-28 14:25:04', '2018-04-28 14:25:04', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(222, '2018-04-28 14:25:05', '2018-04-28 14:25:05', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(223, '2018-04-28 14:25:05', '2018-04-28 14:25:05', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(224, '2018-04-28 14:25:05', '2018-04-28 14:25:05', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(225, '2018-04-28 14:25:06', '2018-04-28 14:25:06', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(226, '2018-04-28 14:25:06', '2018-04-28 14:25:06', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(227, '2018-04-28 14:25:06', '2018-04-28 14:25:06', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(228, '2018-04-28 14:25:07', '2018-04-28 14:25:07', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(229, '2018-04-28 14:25:07', '2018-04-28 14:25:07', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(230, '2018-04-28 14:25:07', '2018-04-28 14:25:07', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(231, '2018-04-28 14:25:07', '2018-04-28 14:25:07', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(232, '2018-04-28 14:25:07', '2018-04-28 14:25:07', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(233, '2018-04-28 14:25:08', '2018-04-28 14:25:08', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(234, '2018-04-28 14:25:08', '2018-04-28 14:25:08', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(235, '2018-04-28 14:25:08', '2018-04-28 14:25:08', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(236, '2018-04-28 14:25:08', '2018-04-28 14:25:08', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(237, '2018-04-28 14:25:09', '2018-04-28 14:25:09', '02-16-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(238, '2018-04-28 14:39:49', '2018-04-28 14:39:49', '07-27-2017', '07', '2017', '08-31-2017', '08', '2017', NULL, NULL, '61', '26.5', 'W', '1', NULL, '[null]', '[null]', 'Good', '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 86, 1),
(239, '2018-04-28 14:42:38', '2018-04-28 14:42:38', '08-17-2016', '08', '2016', '08-25-2016', '08', '2016', NULL, NULL, '73', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '19', '30', '30', NULL, 'DEC 2016,ANC 35', '', NULL, 'WORK', 90, 1),
(240, '2018-04-28 14:51:39', '2018-04-28 14:51:39', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '11', '11', NULL, NULL, 'LOW CD4', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'CONDOM', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 90, 1),
(241, '2018-04-28 14:51:40', '2018-04-28 14:51:40', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '11', '11', NULL, NULL, 'LOW CD4', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'CONDOM', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 90, 1),
(242, '2018-04-28 14:55:33', '2018-04-28 14:55:33', '04-06-2017', '04', '2017', '06-08-2017', '06', '2017', NULL, NULL, '25', NULL, 'LOW CD4', 'T2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', 'G', '60', '60', NULL, NULL, NULL, NULL, 'ABC/3Td', NULL, NULL, '[null]', 'MUAC|+', NULL, '8', '4X2', '80', NULL, NULL, '04-28-2018', NULL, 'P', 89, 1),
(243, '2018-04-28 14:58:57', '2018-04-28 14:58:57', '02-14-2018', '02', '2018', '03-07-2018', '03', '2018', NULL, NULL, '56.8', NULL, 'LOW CD4', '111', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '34', '30', '30', NULL, NULL, '', NULL, NULL, 91, 1),
(244, '2018-04-28 15:11:00', '2018-04-28 15:11:00', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', '1.5', '1.5', '58.9', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', NULL, NULL, '28', '28', NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORKING', 91, 1),
(245, '2018-04-28 15:11:39', '2018-04-28 15:11:39', NULL, NULL, NULL, '04-04-2018', '04', '2018', NULL, NULL, '27', NULL, NULL, NULL, NULL, '[null]', '[null]', 'F', '60', '60', '96', NULL, NULL, 'Good', 'ABC/3T/EFB', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '4X2', NULL, NULL, 'CHILD', '04-28-2018', NULL, 'PLAYING', 89, 1),
(246, '2018-04-28 15:12:15', '2018-04-28 15:12:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '60', '96', NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 89, 1),
(247, '2018-04-28 15:16:45', '2018-04-28 15:16:45', '11-27-2016', '11', '2016', '04-26-2016', '04', '2016', NULL, NULL, '64', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '180', '90', '90', '90', NULL, 'Good', 'TDF/3TC/EFV', 'CD4', NULL, '[null]', NULL, NULL, '21', '90', '90', 'TODAY', '28WEEKS', '', NULL, 'W', 92, 1),
(248, '2018-04-28 15:21:32', '2018-04-28 15:21:32', '10-10-2015', '10', '2015', '12-30-2015', '12', '2015', '28', '28', '41', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 93, 1),
(249, '2018-04-28 15:29:52', '2018-04-28 15:29:52', '01-14-2015', '01', '2015', '02-04-2015', '02', '2015', NULL, NULL, '46', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '63', NULL, NULL, NULL, NULL, '', NULL, NULL, 94, 1),
(250, '2018-04-28 15:29:52', '2018-04-28 15:29:52', '01-14-2015', '01', '2015', '02-04-2015', '02', '2015', NULL, NULL, '46', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '63', NULL, NULL, NULL, NULL, '', NULL, NULL, 94, 1),
(251, '2018-04-29 07:53:54', '2018-04-29 07:53:54', '05-31-2017', '05', '2017', '06-28-2017', '06', '2017', NULL, NULL, '56', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '52', NULL, NULL, NULL, NULL, '', NULL, 'work', 88, 1),
(252, '2018-04-29 07:53:55', '2018-04-29 07:53:55', '05-31-2017', '05', '2017', '06-28-2017', '06', '2017', NULL, NULL, '56', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '52', NULL, NULL, NULL, NULL, '', NULL, 'work', 88, 1),
(253, '2018-04-29 07:58:28', '2018-04-29 07:58:28', '04-04-2018', '04', '2018', '04-02-2018', '04', '2018', '9.5', '9.5', '57.5', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 88, 1),
(254, '2018-04-29 08:00:04', '2018-04-29 08:00:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9.5', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 88, 1),
(255, '2018-04-29 08:00:05', '2018-04-29 08:00:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9.5', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 88, 1),
(256, '2018-04-29 08:07:55', '2018-04-29 08:07:55', '08-08-2016', '08', '2016', '08-08-2016', '08', '2016', NULL, NULL, '64', NULL, 'W', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF//3FD/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, '30/40', '', NULL, NULL, 99, 1),
(257, '2018-04-29 08:17:26', '2018-04-29 08:17:26', '05-10-2017', '05', '2017', '06-29-2017', '06', '2017', NULL, NULL, '60', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '22', '30', '30', NULL, 'JULY 2017', '', NULL, 'WORK', 98, 1),
(258, '2018-04-29 08:20:05', '2018-04-29 08:20:05', '04-04-2018', '04', '2018', '07-02-2018', '07', '2018', '11.5', '11.5', '55', NULL, NULL, NULL, NULL, '[null]', '[null]', 'G', 'G', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/CFV', 'DUE MAY 2018', NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 99, 1),
(259, '2018-04-29 08:20:13', '2018-04-29 08:20:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 101, 1),
(260, '2018-04-29 08:21:36', '2018-04-29 08:21:36', '07-27-2017', '07', '2017', '08-03-2017', '08', '2017', NULL, NULL, NULL, NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', NULL, '30', NULL, NULL, NULL, 'Good', NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'WORK', 98, 1),
(261, '2018-04-29 08:23:44', '2018-04-29 08:23:44', '07-31-2017', '07', '2017', '08-30-2017', '08', '2017', NULL, NULL, '54', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '30', '30', NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '18', '30', '30', NULL, NULL, '', NULL, 'WORK', 100, 1),
(262, '2018-04-29 08:26:18', '2018-04-29 08:26:18', '04-04-2018', '04', '2018', '06-06-2018', '06', '2018', NULL, NULL, '57', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'WORK', 100, 1),
(263, '2018-04-29 08:32:14', '2018-04-29 08:32:14', '06-08-2017', '06', '2017', '03-09-2017', '03', '2017', '00', '00', NULL, NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFU', NULL, NULL, '[null]', 'MUAC|+', NULL, '48', '30', '30', NULL, NULL, '', NULL, 'WORK', 97, 1),
(264, '2018-04-29 08:35:50', '2018-04-29 08:35:50', NULL, NULL, NULL, '02-05-2018', '02', '2018', '5', '5', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 97, 1),
(265, '2018-04-29 08:37:40', '2018-04-29 08:37:40', '07-31-2018', '07', '2018', '08-30-2017', '08', '2017', NULL, NULL, NULL, NULL, 'LOWCD4', NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '52', '30', '30', NULL, NULL, '', NULL, 'WORKING', 103, 1),
(266, '2018-04-29 08:37:46', '2018-04-29 08:37:46', '07-31-2018', '07', '2018', '08-30-2017', '08', '2017', NULL, NULL, NULL, NULL, 'LOWCD4', NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '52', '30', '30', NULL, NULL, '', NULL, 'WORKING', 103, 1),
(267, '2018-04-29 08:37:46', '2018-04-29 08:37:46', '07-31-2018', '07', '2018', '08-30-2017', '08', '2017', NULL, NULL, NULL, NULL, 'LOWCD4', NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '52', '30', '30', NULL, NULL, '', NULL, 'WORKING', 103, 1),
(268, '2018-04-29 08:37:47', '2018-04-29 08:37:47', '07-31-2018', '07', '2018', '08-30-2017', '08', '2017', NULL, NULL, NULL, NULL, 'LOWCD4', NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '52', '30', '30', NULL, NULL, '', NULL, 'WORKING', 103, 1),
(269, '2018-04-29 08:40:58', '2018-04-29 08:40:58', '12-13-2017', '12', '2017', '03-01-2018', '03', '2018', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '32', '30', '30', NULL, NULL, '', NULL, 'WORK', 105, 1),
(270, '2018-04-29 08:40:58', '2018-04-29 08:40:58', '12-13-2017', '12', '2017', '03-01-2018', '03', '2018', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '32', '30', '30', NULL, NULL, '', NULL, 'WORK', 105, 1),
(271, '2018-04-29 08:43:39', '2018-04-29 08:43:39', '02-26-2018', '02', '2018', '03-28-2018', '03', '2018', NULL, NULL, NULL, NULL, 'LOW CD4', NULL, 'No signs or Symptoms of TB', '[null]', '[null]', 'POOR', '60', '60', NULL, NULL, NULL, 'Poor', 'TDF 3TC EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 103, 1),
(272, '2018-04-29 08:43:39', '2018-04-29 08:43:39', '04-06-2018', '04', '2018', '05-24-2018', '05', '2018', '1', '01', '58', NULL, 'PREGNANT', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 105, 1),
(273, '2018-04-29 08:44:16', '2018-04-29 08:44:16', '06-07-2017', '06', '2017', '08-02-2017', '08', '2017', '24', '24', '51', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'G', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFV', 'DO VL TODAY', NULL, '[null]', 'MUAC|+', NULL, '39', '30', '30', 'NIL', NULL, '', NULL, NULL, 102, 1),
(274, '2018-04-29 08:50:35', '2018-04-29 08:50:35', '08-02-2017', '08', '2017', '09-06-2017', '09', '2017', '26', '26', '51', NULL, 'W', '1', NULL, '[null]', '[null]', 'G', '30', '30', NULL, NULL, 'AMPIDIX', NULL, 'TDF/3TC/CFV', 'AWAIT RESULTS', NULL, '[null]', NULL, NULL, NULL, '30', '30', 'NIL', NULL, '', NULL, NULL, 102, 1),
(275, '2018-04-29 08:56:31', '2018-04-29 08:56:31', '05-09-2017', '05', '2017', '04-29-2018', '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '26', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 107, 1),
(276, '2018-04-29 08:58:25', '2018-04-29 08:58:25', '02-01-2018', '02', '2018', '02-08-2018', '02', '2018', NULL, NULL, '52', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '15', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '20', '15', '15', NULL, 'APRIL 2018,20WKS,ANC 169', '', NULL, 'WORK', 109, 1),
(277, '2018-04-29 08:59:51', '2018-04-29 08:59:51', NULL, NULL, NULL, '10-05-2018', '10', '2018', '4.5', '4.5', '40', NULL, NULL, NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TCD/EFU', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORMKING', 107, 1),
(278, '2018-04-29 09:01:01', '2018-04-29 09:01:01', '03-16-2018', '03', '2018', '03-29-2018', '03', '2018', '1', '01', '54.4', NULL, NULL, '1', NULL, '[null]', '[null]', 'G', NULL, '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '15', '15', NULL, NULL, '', NULL, 'WORK', 109, 1),
(279, '2018-04-29 09:01:39', '2018-04-29 09:01:39', '10-28-2015', '10', '2015', '11-25-2015', '11', '2015', NULL, NULL, '59.5', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '67', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 106, 1),
(280, '2018-04-29 09:04:11', '2018-04-29 09:04:11', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '19.5', '19.5', '68', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 106, 1),
(281, '2018-04-29 09:04:15', '2018-04-29 09:04:15', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '19.5', '19.5', '68', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 106, 1),
(282, '2018-04-29 09:04:16', '2018-04-29 09:04:16', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '19.5', '19.5', '68', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 106, 1),
(283, '2018-04-29 09:04:19', '2018-04-29 09:04:19', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '19.5', '19.5', '68', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 106, 1),
(284, '2018-04-29 09:04:21', '2018-04-29 09:04:21', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '19.5', '19.5', '68', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 106, 1),
(285, '2018-04-29 09:04:23', '2018-04-29 09:04:23', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '19.5', '19.5', '68', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 106, 1),
(286, '2018-04-29 09:04:25', '2018-04-29 09:04:25', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '19.5', '19.5', '68', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 106, 1),
(287, '2018-04-29 09:04:42', '2018-04-29 09:04:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '19.5', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 106, 1),
(288, '2018-04-29 09:18:54', '2018-04-29 09:18:54', '11-04-2016', '11', '2016', '01-26-2017', '01', '2017', NULL, NULL, '65', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '60', '60', NULL, 'JAN 2017,ANC 263', '', NULL, 'WORK', 113, 1),
(289, '2018-04-29 09:21:34', '2018-04-29 09:21:34', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '12.5', '12.5', '53', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 113, 1),
(290, '2018-04-29 09:23:19', '2018-04-29 09:23:19', '03-10-2017', '03', '2017', '05-10-2017', '05', '2017', NULL, NULL, '10', NULL, 'LOW CD4', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '30', '30', 'COUGH', NULL, NULL, NULL, NULL, '[null]', 'MUAC|+', NULL, '2', '20', '30', NULL, NULL, '', NULL, 'PLAYING', 112, 1),
(291, '2018-04-29 09:24:55', '2018-04-29 09:24:55', '01-17-2018', '01', '2018', '01-25-2018', '01', '2018', NULL, NULL, '69', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'G', '10', '10', NULL, NULL, 'NIL', 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '22', '10', '10', NULL, '20', '', NULL, NULL, 111, 1),
(293, '2018-04-29 09:28:17', '2018-04-29 09:28:17', '01-21-2018', '01', '2018', '02-08-2018', '02', '2018', NULL, NULL, NULL, NULL, 'W', '1', NULL, '[null]', '[null]', NULL, NULL, '10', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '15', '15', NULL, NULL, '', NULL, NULL, 111, 1),
(295, '2018-04-29 09:30:17', '2018-04-29 09:30:17', '11-04-2018', '11', '2018', '06-06-2017', '06', '2017', '05', '05', '10', NULL, NULL, '2', NULL, '[null]', '[null]', NULL, NULL, '30', '30', '30', NULL, NULL, 'AZT/3TC/NUP', NULL, NULL, '[null]', NULL, NULL, NULL, '60', NULL, NULL, NULL, '', NULL, 'PLAYING', 112, 1),
(296, '2018-04-29 09:32:47', '2018-04-29 09:32:47', '03-15-2018', '03', '2018', '03-29-2018', '03', '2018', NULL, NULL, NULL, NULL, 'W', '1', NULL, '[null]', '[null]', NULL, NULL, '10', NULL, NULL, 'NIL', NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '15', '15', NULL, NULL, '', NULL, NULL, 111, 1),
(297, '2018-04-29 09:34:17', '2018-04-29 09:34:17', '04-27-2016', '04', '2016', '05-25-2016', '05', '2016', NULL, NULL, '45', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '50', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 114, 1),
(298, '2018-04-29 09:36:21', '2018-04-29 09:36:21', '02-16-2018', '02', '2018', '03-28-2018', '03', '2018', NULL, NULL, '64', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '42', '42', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '18', '60', '60', NULL, 'JULY 2018,24WKS', '', NULL, 'WORK', 115, 1),
(299, '2018-04-29 09:37:47', '2018-04-29 09:37:47', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '6', '6', '42', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 114, 1),
(300, '2018-04-29 09:39:12', '2018-04-29 09:39:12', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', '2', '2', '65', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, 'OS', 'OS', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 115, 1),
(301, '2018-04-29 09:51:51', '2018-04-29 09:51:51', '11-07-2017', '11', '2017', '12-06-2017', '12', '2017', NULL, NULL, NULL, NULL, 'PREGNANT', '11', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 116, 1),
(302, '2018-04-29 09:54:38', '2018-04-29 09:54:38', '12-05-2017', '12', '2017', '01-31-2018', '01', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 116, 1),
(303, '2018-04-29 09:54:38', '2018-04-29 09:54:38', '01-22-2018', '01', '2018', '02-22-2018', '02', '2018', NULL, NULL, '62', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '20', '30', '30', NULL, 'EDD APRIL 2018,ANC160', '', NULL, 'WORK', 120, 1),
(304, '2018-04-29 09:55:35', '2018-04-29 09:55:35', '01-31-2018', '01', '2018', '02-14-2018', '02', '2018', NULL, NULL, '43', NULL, 'W', '1', NULL, '[null]', '[null]', 'G', '15', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '24', '15', '15', NULL, NULL, '', NULL, NULL, 119, 1),
(305, '2018-04-29 09:56:36', '2018-04-29 09:56:36', '05-11-2017', '05', '2017', '07-01-2018', '07', '2018', NULL, NULL, '44', NULL, NULL, 'T1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '64', '64', NULL, NULL, NULL, NULL, 'TDF/3TC/CFU', NULL, NULL, '[null]', 'MUAC|+', NULL, '37', '64', '64', NULL, NULL, '', NULL, 'WORK', 117, 1),
(306, '2018-04-29 09:58:07', '2018-04-29 09:58:07', '03-07-2018', '03', '2018', '03-29-2018', '03', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '30', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '15', '15', NULL, NULL, '', NULL, NULL, 119, 1),
(307, '2018-04-29 09:58:52', '2018-04-29 09:58:52', '03-29-2018', '03', '2018', '02-22-2018', '02', '2018', '02', '02', '67', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 120, 1),
(308, '2018-04-29 10:01:51', '2018-04-29 10:01:51', '05-11-2017', '05', '2017', '02-05-2018', '02', '2018', '4.5', '4.5', '46', NULL, 'LOW CD4', NULL, NULL, '[null]', '[null]', NULL, NULL, '64', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'WORK', 117, 1),
(309, '2018-04-29 10:13:04', '2018-04-29 10:13:04', '07-12-2017', '07', '2017', '08-02-2017', '08', '2017', NULL, NULL, '53', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '30', '14', 'RDT-M', NULL, '', NULL, 'WORK', 121, 1);
INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(310, '2018-04-29 10:13:04', '2018-04-29 10:13:04', '07-12-2017', '07', '2017', '08-02-2017', '08', '2017', NULL, NULL, '53', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '30', '14', 'RDT-M', NULL, '', NULL, 'WORK', 121, 1),
(311, '2018-04-29 10:13:04', '2018-04-29 10:13:04', '07-12-2017', '07', '2017', '08-02-2017', '08', '2017', NULL, NULL, '53', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '30', '14', 'RDT-M', NULL, '', NULL, 'WORK', 121, 1),
(312, '2018-04-29 10:13:04', '2018-04-29 10:13:04', '07-12-2017', '07', '2017', '08-02-2017', '08', '2017', NULL, NULL, '53', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '30', '14', 'RDT-M', NULL, '', NULL, 'WORK', 121, 1),
(313, '2018-04-29 10:13:04', '2018-04-29 10:13:04', '07-12-2017', '07', '2017', '08-02-2017', '08', '2017', NULL, NULL, '53', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '30', '14', 'RDT-M', NULL, '', NULL, 'WORK', 121, 1),
(314, '2018-04-29 10:13:06', '2018-04-29 10:13:06', '07-12-2017', '07', '2017', '08-02-2017', '08', '2017', NULL, NULL, '53', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '30', '14', 'RDT-M', NULL, '', NULL, 'WORK', 121, 1),
(315, '2018-04-29 10:13:06', '2018-04-29 10:13:06', '07-12-2017', '07', '2017', '08-02-2017', '08', '2017', NULL, NULL, '53', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '30', '14', 'RDT-M', NULL, '', NULL, 'WORK', 121, 1),
(316, '2018-04-29 10:13:06', '2018-04-29 10:13:06', '07-12-2017', '07', '2017', '08-02-2017', '08', '2017', NULL, NULL, '53', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '30', '14', 'RDT-M', NULL, '', NULL, 'WORK', 121, 1),
(317, '2018-04-29 10:16:45', '2018-04-29 10:16:45', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '9.5', '9.5', '50', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'WORK', 121, 1),
(318, '2018-04-29 10:21:41', '2018-04-29 10:21:41', '04-08-2015', '04', '2015', '05-27-2015', '05', '2015', NULL, NULL, '69.7', NULL, NULL, '111', 'Suspect', '[null]', '[[\"FEVER*\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '22', '30', '30', 'SPUTUM', NULL, '', NULL, NULL, 122, 1),
(319, '2018-04-29 10:24:57', '2018-04-29 10:24:57', '02-26-2018', '02', '2018', '03-12-2018', '03', '2018', NULL, NULL, NULL, NULL, 'LACTATING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '15', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '21', '15', '15', NULL, NULL, '', NULL, 'WORK', 123, 1),
(320, '2018-04-29 10:29:56', '2018-04-29 10:29:56', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '2', '02', NULL, NULL, 'LACTATING', '1', NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 123, 1),
(321, '2018-04-29 10:32:30', '2018-04-29 10:32:30', '02-10-2017', '02', '2017', '05-11-2017', '05', '2017', NULL, NULL, NULL, NULL, 'LOW CD4', '4', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', 'MUAC|+', NULL, '30', '30', '30', NULL, NULL, '', NULL, NULL, 126, 1),
(322, '2018-04-29 10:40:13', '2018-04-29 10:40:13', '06-28-2017', '06', '2017', '07-26-2017', '07', '2017', NULL, NULL, '80', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '45', '30', '30', NULL, NULL, '', NULL, 'WORK', 127, 1),
(323, '2018-04-29 10:40:13', '2018-04-29 10:40:13', '06-28-2017', '06', '2017', '07-26-2017', '07', '2017', NULL, NULL, '80', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '45', '30', '30', NULL, NULL, '', NULL, 'WORK', 127, 1),
(324, '2018-04-29 10:42:44', '2018-04-29 10:42:44', '04-04-2018', '04', '2018', '06-06-2018', '06', '2018', '8', '8', '81', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, NULL, '28', '28', NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 127, 1),
(325, '2018-04-29 10:48:12', '2018-04-29 10:48:12', '08-31-2016', '08', '2016', '09-29-2016', '09', '2016', NULL, NULL, '62', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 131, 1),
(326, '2018-04-29 10:54:03', '2018-04-29 10:54:03', '04-04-2018', '04', '2018', '06-06-2018', '06', '2018', NULL, NULL, '52', NULL, 'PREGNANT', '1', NULL, '[null]', '[null]', 'GOOD', 'OS', 'OS', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 131, 1),
(327, '2018-04-29 10:57:09', '2018-04-29 10:57:09', '02-09-2018', '02', '2018', '03-29-2018', '03', '2018', NULL, NULL, '68', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '24', '30', '30', NULL, NULL, '', NULL, NULL, 119, 1),
(328, '2018-04-29 10:57:15', '2018-04-29 10:57:15', '10-25-2017', '10', '2017', '11-29-2017', '11', '2017', NULL, NULL, NULL, NULL, 'LOW CD4', '111', 'Suspect', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '50', '14', '14', NULL, NULL, '', NULL, NULL, 132, 1),
(329, '2018-04-29 11:01:40', '2018-04-29 11:01:40', '03-28-2018', '03', '2018', '11-29-2017', '11', '2017', NULL, NULL, '47', NULL, 'LOW CD4', '11', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'OS', 'OS', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 132, 1),
(330, '2018-04-29 11:07:44', '2018-04-29 11:07:44', '06-01-2017', '06', '2017', '06-28-2017', '06', '2017', '36', '36', '52', NULL, NULL, '2', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', NULL, NULL, NULL, '[null]', 'MUAC|+', NULL, '38', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 134, 1),
(331, '2018-04-29 11:07:50', '2018-04-29 11:07:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '36', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 134, 1),
(332, '2018-04-29 11:10:27', '2018-04-29 11:10:27', '12-14-2016', '12', '2016', '01-26-2017', '01', '2017', NULL, NULL, '57', NULL, 'PREGNANT', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, 'TF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '29', '60', '60', NULL, 'EDD APRIL/2017,GEST 22,ANC 125', '', NULL, 'WORK', 136, 1),
(333, '2018-04-29 11:10:41', '2018-04-29 11:10:41', '03-29-2018', '03', '2018', '04-29-2018', '04', '2018', '38', '38', '60', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, 'AZT/3TC/NWP', NULL, NULL, '[null]', NULL, NULL, NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 134, 1),
(334, '2018-04-29 11:10:41', '2018-04-29 11:10:41', '03-29-2018', '03', '2018', '04-29-2018', '04', '2018', '38', '38', '60', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, 'AZT/3TC/NWP', NULL, NULL, '[null]', NULL, NULL, NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 134, 1),
(335, '2018-04-29 11:16:17', '2018-04-29 11:16:17', '05-11-2017', '05', '2017', '07-01-2017', '07', '2017', NULL, NULL, '55', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '64', '64', NULL, NULL, NULL, NULL, 'TDF/3TC/CFU', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '64', '64', NULL, NULL, '', NULL, 'WORK', 135, 1),
(336, '2018-04-29 11:16:18', '2018-04-29 11:16:18', '04-05-2018', '04', '2018', '05-02-2018', '05', '2018', '9.5', '9.5', '61.5', NULL, NULL, NULL, NULL, '[null]', '[null]', 'GOOD', 'OS', 'OS', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 136, 1),
(337, '2018-04-29 11:19:30', '2018-04-29 11:19:30', '05-11-2017', '05', '2017', '06-05-2018', '06', '2018', '2', '2', NULL, NULL, 'LOW CD4', '1', NULL, '[null]', '[null]', NULL, NULL, '64', NULL, NULL, NULL, NULL, 'TDF/3TC/CFU', NULL, NULL, '[null]', NULL, NULL, NULL, '64', '64', NULL, NULL, '', NULL, 'WORK', 135, 1),
(338, '2018-04-29 11:20:34', '2018-04-29 11:20:34', '08-31-2017', '08', '2017', '09-28-2017', '09', '2017', NULL, NULL, '47', NULL, 'W', '1', 'Suspect', '[[\"Nausea\"]]', '[[\"COUGH*\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'AZT/3TC/NIP', NULL, NULL, '[null]', NULL, NULL, '20', '30', '30', NULL, NULL, '', NULL, 'W', 137, 1),
(339, '2018-04-29 11:25:00', '2018-04-29 11:25:00', '09-04-2014', '09', '2014', '10-01-2014', '10', '2014', NULL, NULL, '70', NULL, 'STAGE 111', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '36', '00', '00', NULL, NULL, '', NULL, NULL, 138, 1),
(340, '2018-04-29 11:25:03', '2018-04-29 11:25:03', '09-04-2014', '09', '2014', '10-01-2014', '10', '2014', NULL, NULL, '70', NULL, 'STAGE 111', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '36', '00', '00', NULL, NULL, '', NULL, NULL, 138, 1),
(341, '2018-04-29 11:25:09', '2018-04-29 11:25:09', '09-04-2014', '09', '2014', '10-01-2014', '10', '2014', NULL, NULL, '70', NULL, 'STAGE 111', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '36', '00', '00', NULL, NULL, '', NULL, NULL, 138, 1),
(342, '2018-04-29 11:25:13', '2018-04-29 11:25:13', '09-04-2014', '09', '2014', '10-01-2014', '10', '2014', NULL, NULL, '70', NULL, 'STAGE 111', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '36', '00', '00', NULL, NULL, '', NULL, NULL, 138, 1),
(343, '2018-04-29 11:26:48', '2018-04-29 11:26:48', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', NULL, NULL, '50', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'G', 'OS', '30', NULL, NULL, 'NIL', 'Good', 'AZT/3TC/NVP', 'DUE 12/2017', NULL, '[null]', 'MUAC|+', NULL, NULL, '120', '60', NULL, '3', '', NULL, NULL, 137, 1),
(344, '2018-04-29 11:30:12', '2018-04-29 11:30:12', '02-22-2018', '02', '2018', '03-23-2018', '03', '2018', '20', '20', NULL, NULL, 'LOWCD4', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 138, 1),
(345, '2018-04-29 11:34:09', '2018-04-29 11:34:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 139, 1),
(346, '2018-04-29 11:38:17', '2018-04-29 11:38:17', '05-01-2018', '05', '2018', '07-01-2018', '07', '2018', NULL, NULL, '5.6', NULL, 'LOW CD4', '4', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', NULL, NULL, NULL, 'TDF/3TD/CFU', NULL, NULL, '[null]', NULL, NULL, '36', '30', '30', NULL, NULL, '', NULL, 'WORK', 140, 1),
(347, '2018-04-29 11:38:17', '2018-04-29 11:38:17', '05-01-2018', '05', '2018', '07-01-2018', '07', '2018', NULL, NULL, '5.6', NULL, 'LOW CD4', '4', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', NULL, NULL, NULL, 'TDF/3TD/CFU', NULL, NULL, '[null]', NULL, NULL, '36', '30', '30', NULL, NULL, '', NULL, 'WORK', 140, 1),
(348, '2018-04-29 11:38:18', '2018-04-29 11:38:18', '05-01-2018', '05', '2018', '07-01-2018', '07', '2018', NULL, NULL, '5.6', NULL, 'LOW CD4', '4', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', NULL, NULL, NULL, 'TDF/3TD/CFU', NULL, NULL, '[null]', NULL, NULL, '36', '30', '30', NULL, NULL, '', NULL, 'WORK', 140, 1),
(349, '2018-04-29 11:43:42', '2018-04-29 11:43:42', '05-01-2018', '05', '2018', '06-05-2018', '06', '2018', '2.5', '2.2', '62.4', NULL, 'LOW CD4', '2', NULL, '[null]', '[null]', NULL, '05', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 140, 1),
(350, '2018-04-29 11:46:48', '2018-04-29 11:46:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2.2', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 140, 1),
(351, '2018-04-29 11:47:30', '2018-04-29 11:47:30', '12-20-2017', '12', '2017', '01-25-2018', '01', '2018', NULL, NULL, '58', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'P', '60', '60', NULL, NULL, 'NIL', 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '17', '60', '60', 'NIL', 'ANC 138, TCT 26, 7/18', '', NULL, 'W', 143, 1),
(352, '2018-04-29 11:49:50', '2018-04-29 11:49:50', '08-20-2014', '08', '2014', '09-12-2014', '09', '2014', NULL, NULL, '54.8', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 144, 1),
(353, '2018-04-29 11:49:51', '2018-04-29 11:49:51', '10-25-2015', '10', '2015', '11-25-2015', '11', '2015', NULL, NULL, '57', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '33', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 141, 1),
(354, '2018-04-29 11:49:51', '2018-04-29 11:49:51', '08-20-2014', '08', '2014', '09-12-2014', '09', '2014', NULL, NULL, '54.8', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 144, 1),
(355, '2018-04-29 11:49:51', '2018-04-29 11:49:51', '08-20-2014', '08', '2014', '09-12-2014', '09', '2014', NULL, NULL, '54.8', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 144, 1),
(356, '2018-04-29 11:49:51', '2018-04-29 11:49:51', '08-20-2014', '08', '2014', '09-12-2014', '09', '2014', NULL, NULL, '54.8', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 144, 1),
(357, '2018-04-29 11:49:51', '2018-04-29 11:49:51', '08-20-2014', '08', '2014', '09-12-2014', '09', '2014', NULL, NULL, '54.8', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 144, 1),
(358, '2018-04-29 11:49:51', '2018-04-29 11:49:51', '08-20-2014', '08', '2014', '09-12-2014', '09', '2014', NULL, NULL, '54.8', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 144, 1),
(359, '2018-04-29 11:49:52', '2018-04-29 11:49:52', '08-20-2014', '08', '2014', '09-12-2014', '09', '2014', NULL, NULL, '54.8', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 144, 1),
(360, '2018-04-29 11:49:52', '2018-04-29 11:49:52', '10-25-2015', '10', '2015', '11-25-2015', '11', '2015', NULL, NULL, '57', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '33', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 141, 1),
(361, '2018-04-29 11:51:22', '2018-04-29 11:51:22', '04-13-2018', '04', '2018', '05-24-2018', '05', '2018', '2', '2', '43', NULL, 'W', '1', NULL, '[null]', '[null]', 'P', '120', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '30', NULL, NULL, '', NULL, NULL, 143, 1),
(362, '2018-04-29 11:55:27', '2018-04-29 11:55:27', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '26.5', '26.5', '60.1', NULL, NULL, '11', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, 'PCM', 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 144, 1),
(363, '2018-04-29 11:55:28', '2018-04-29 11:55:28', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '26.5', '26.5', '60.1', NULL, NULL, '11', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, 'PCM', 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 144, 1),
(364, '2018-04-29 11:55:30', '2018-04-29 11:55:30', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '26.5', '26.5', '60.1', NULL, NULL, '11', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, 'PCM', 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 144, 1),
(365, '2018-04-29 11:58:57', '2018-04-29 11:58:57', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(366, '2018-04-29 11:58:57', '2018-04-29 11:58:57', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(367, '2018-04-29 11:58:58', '2018-04-29 11:58:58', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(368, '2018-04-29 11:58:58', '2018-04-29 11:58:58', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(369, '2018-04-29 11:59:05', '2018-04-29 11:59:05', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(370, '2018-04-29 11:59:05', '2018-04-29 11:59:05', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(371, '2018-04-29 11:59:18', '2018-04-29 11:59:18', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(372, '2018-04-29 11:59:18', '2018-04-29 11:59:18', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(373, '2018-04-29 11:59:19', '2018-04-29 11:59:19', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(374, '2018-04-29 11:59:19', '2018-04-29 11:59:19', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(375, '2018-04-29 11:59:23', '2018-04-29 11:59:23', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(376, '2018-04-29 11:59:24', '2018-04-29 11:59:24', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(377, '2018-04-29 11:59:32', '2018-04-29 11:59:32', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(378, '2018-04-29 11:59:33', '2018-04-29 11:59:33', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(379, '2018-04-29 11:59:33', '2018-04-29 11:59:33', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(380, '2018-04-29 11:59:34', '2018-04-29 11:59:34', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(381, '2018-04-29 11:59:38', '2018-04-29 11:59:38', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(382, '2018-04-29 11:59:39', '2018-04-29 11:59:39', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(383, '2018-04-29 11:59:45', '2018-04-29 11:59:45', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(384, '2018-04-29 11:59:46', '2018-04-29 11:59:46', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(385, '2018-04-29 11:59:48', '2018-04-29 11:59:48', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(386, '2018-04-29 11:59:48', '2018-04-29 11:59:48', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(387, '2018-04-29 11:59:49', '2018-04-29 11:59:49', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(388, '2018-04-29 11:59:50', '2018-04-29 11:59:50', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(389, '2018-04-29 12:00:11', '2018-04-29 12:00:11', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(390, '2018-04-29 12:00:15', '2018-04-29 12:00:15', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(391, '2018-04-29 12:00:15', '2018-04-29 12:00:15', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(392, '2018-04-29 12:00:17', '2018-04-29 12:00:17', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(393, '2018-04-29 12:00:18', '2018-04-29 12:00:18', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(394, '2018-04-29 12:00:19', '2018-04-29 12:00:19', '03-29-2018', '03', '2018', '05-24-2018', '05', '2018', '21', '21', '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, NULL, 141, 1),
(395, '2018-04-29 12:42:04', '2018-04-29 12:42:04', '05-03-2017', '05', '2017', '06-04-2017', '06', '2017', NULL, NULL, '53', '173', NULL, NULL, NULL, '[null]', '[null]', NULL, '960', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '27', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 145, 1),
(396, '2018-04-29 12:44:45', '2018-04-29 12:44:45', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '5', '5', '55', NULL, NULL, NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 145, 1),
(397, '2018-04-29 12:53:45', '2018-04-29 12:53:45', '04-04-2018', '04', '2018', '02-04-2018', '02', '2018', NULL, NULL, '55.6', NULL, 'LOW CD4', '2', 'Suspect', '[null]', '[[\"COUGH*\"]]', NULL, '28', '14', NULL, NULL, NULL, NULL, 'TDF/3TC/CFU', NULL, NULL, '[null]', NULL, NULL, '29', '14', '14', NULL, 'PREGNANT', '', NULL, 'WORK', 146, 1),
(398, '2018-04-29 12:56:12', '2018-04-29 12:56:12', '07-29-2015', '07', '2015', '08-26-2015', '08', '2015', NULL, NULL, '55.5', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '45', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 151, 1),
(399, '2018-04-29 12:58:32', '2018-04-29 12:58:32', '11-14-2014', '11', '2014', '12-03-2014', '12', '2014', NULL, NULL, '41', NULL, 'STAGE 111', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 150, 1),
(400, '2018-04-29 12:58:35', '2018-04-29 12:58:35', '11-14-2014', '11', '2014', '12-03-2014', '12', '2014', NULL, NULL, '41', NULL, 'STAGE 111', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 150, 1),
(401, '2018-04-29 12:58:35', '2018-04-29 12:58:35', '11-14-2014', '11', '2014', '12-03-2014', '12', '2014', NULL, NULL, '41', NULL, 'STAGE 111', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 150, 1),
(402, '2018-04-29 13:02:57', '2018-04-29 13:02:57', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '24', '24', '50', NULL, 'LOW CD4', '11', NULL, '[null]', '[null]', 'FAIR', '30', '30', NULL, NULL, NULL, 'Fair', 'TDF 3TC EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 150, 1),
(403, '2018-04-29 13:03:01', '2018-04-29 13:03:01', '04-04-2018', '04', '2018', '04-29-2018', '04', '2018', '23', '23', '52', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 151, 1),
(404, '2018-04-29 13:03:40', '2018-04-29 13:03:40', '05-25-2016', '05', '2016', '07-27-2016', '07', '2016', NULL, NULL, '87.8', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '62', '62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '56', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 153, 1),
(405, '2018-04-29 13:07:48', '2018-04-29 13:07:48', '02-14-2018', '02', '2018', '04-04-2108', '04', '2108', '6', '6', '93', NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '62', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 153, 1),
(406, '2018-04-29 13:15:36', '2018-04-29 13:15:36', '09-29-2015', '09', '2015', '08-26-2015', '08', '2015', NULL, NULL, '57.1', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '55', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 157, 1),
(407, '2018-04-29 13:15:36', '2018-04-29 13:15:36', '09-29-2015', '09', '2015', '08-26-2015', '08', '2015', NULL, NULL, '57.1', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '55', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 157, 1),
(408, '2018-04-29 13:17:57', '2018-04-29 13:17:57', '09-01-2018', '09', '2018', '07-02-2018', '07', '2018', NULL, NULL, '48', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFU', NULL, NULL, '[null]', 'MUAC|+', NULL, '45', '30', '30', NULL, NULL, '', NULL, 'WORK', 155, 1),
(409, '2018-04-29 13:18:06', '2018-04-29 13:18:06', '04-30-2015', '04', '2015', '05-27-2015', '05', '2015', NULL, NULL, '61.6', NULL, 'LOW CD4', '1', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, '28', '30', '30', NULL, '06/2015 26WKS 377', '', NULL, 'WORKING', 156, 1),
(410, '2018-04-29 13:22:54', '2018-04-29 13:22:54', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 156, 1),
(411, '2018-04-29 13:25:15', '2018-04-29 13:25:15', '02-14-2018', '02', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 156, 1),
(412, '2018-04-29 13:25:20', '2018-04-29 13:25:20', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '27.5', '27.5', '74.7', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 157, 1),
(413, '2018-04-29 13:31:58', '2018-04-29 13:31:58', '10-27-2016', '10', '2016', '11-24-2016', '11', '2016', NULL, NULL, NULL, '9.5', '1', 'P', 'No signs or Symptoms of TB', '[null]', '[null]', 'G', '60', '60', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', 'DO CD COUNT', NULL, '[null]', NULL, NULL, '2', '1.5*2', '14', NULL, NULL, '', 'A', NULL, 152, 1),
(414, '2018-04-29 13:32:23', '2018-04-29 13:32:23', '09-01-2018', '09', '2018', '06-05-2018', '06', '2018', '4.5', '4.5', '48.8', '49', NULL, NULL, NULL, '[null]', '[null]', NULL, '120', '60', NULL, NULL, NULL, NULL, 'TDF/3TD/EFU', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 155, 1),
(415, '2018-04-29 13:34:36', '2018-04-29 13:34:36', '03-29-2018', '03', '2018', '04-25-2018', '04', '2018', '13', '13', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '60', NULL, NULL, NULL, NULL, 'ABC/3TC/NVP', 'DO VL', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 152, 1),
(416, '2018-04-29 13:38:52', '2018-04-29 13:38:52', '08-12-2014', '08', '2014', '09-12-2014', '09', '2014', NULL, NULL, '51', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '33', NULL, NULL, NULL, NULL, '', NULL, NULL, 159, 1),
(417, '2018-04-29 13:42:07', '2018-04-29 13:42:07', '07-29-2015', '07', '2015', '08-26-2015', '08', '2015', NULL, NULL, '56', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '32', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 160, 1),
(418, '2018-04-29 13:43:30', '2018-04-29 13:43:30', '06-29-2016', '06', '2016', '07-27-2016', '07', '2016', NULL, NULL, '50.9', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '28', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 158, 1),
(419, '2018-04-29 13:44:20', '2018-04-29 13:44:20', '08-12-2014', '08', '2014', '07-04-2018', '07', '2018', '25', '25', NULL, NULL, 'LOW CD4', '11', NULL, '[null]', '[null]', 'GOOD', '90', '90', NULL, NULL, NULL, 'Good', 'AZT 3TC NVP', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '180', '90', NULL, NULL, '', NULL, NULL, 159, 1),
(420, '2018-04-29 13:46:43', '2018-04-29 13:46:43', '03-29-2018', '03', '2018', '05-30-2018', '05', '2018', '6', '6', '52.5', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 158, 1),
(421, '2018-04-29 13:48:08', '2018-04-29 13:48:08', '03-29-2018', '03', '2018', '05-27-2018', '05', '2018', '19', '19', '55', NULL, NULL, '1', NULL, '[null]', '[null]', 'FAIR', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 160, 1),
(422, '2018-04-29 14:00:49', '2018-04-29 14:00:49', '10-09-2015', '10', '2015', '07-10-2015', '07', '2015', NULL, NULL, '44', NULL, NULL, NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFU', NULL, NULL, '[null]', NULL, NULL, '17', NULL, NULL, NULL, NULL, '', NULL, NULL, 161, 1),
(423, '2018-04-29 14:00:49', '2018-04-29 14:00:49', '10-09-2015', '10', '2015', '07-10-2015', '07', '2015', NULL, NULL, '44', NULL, NULL, NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFU', NULL, NULL, '[null]', NULL, NULL, '17', NULL, NULL, NULL, NULL, '', NULL, NULL, 161, 1),
(424, '2018-04-29 14:01:30', '2018-04-29 14:01:30', '05-25-2016', '05', '2016', '05-29-2016', '05', '2016', NULL, NULL, '75.9', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '46', NULL, NULL, 'DO CD4 COUNT', NULL, '', NULL, NULL, 162, 1),
(425, '2018-04-29 14:04:27', '2018-04-29 14:04:27', NULL, NULL, NULL, '04-04-2018', '04', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFU', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 161, 1),
(426, '2018-04-29 14:06:08', '2018-04-29 14:06:08', '03-21-2018', '03', '2018', '04-04-2018', '04', '2018', '7.5', '7.5', '80', NULL, NULL, NULL, NULL, '[null]', '[null]', 'P', '15', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '15', '15', NULL, NULL, '', NULL, NULL, 162, 1),
(427, '2018-04-29 14:07:48', '2018-04-29 14:07:48', '06-09-2016', '06', '2016', '06-30-2016', '06', '2016', NULL, NULL, '60.3', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, 'DEPO', '31', '60', '30', NULL, NULL, '', NULL, 'WORK', 165, 1),
(428, '2018-04-29 14:07:50', '2018-04-29 14:07:50', '06-09-2016', '06', '2016', '06-30-2016', '06', '2016', NULL, NULL, '60.3', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, 'DEPO', '31', '60', '30', NULL, NULL, '', NULL, 'WORK', 165, 1),
(429, '2018-04-29 14:12:20', '2018-04-29 14:12:20', '04-25-2018', '04', '2018', '05-27-2018', '05', '2018', NULL, NULL, '58', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 165, 1),
(430, '2018-04-29 14:12:50', '2018-04-29 14:12:50', '01-07-2014', '01', '2014', '02-04-2015', '02', '2015', NULL, NULL, NULL, NULL, 'LOW CD4', '1', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '52', NULL, NULL, NULL, NULL, '', NULL, NULL, 163, 1),
(431, '2018-04-29 14:17:44', '2018-04-29 14:17:44', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '14', '14', '51', NULL, 'LOW CD4', '11', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', NULL, 'WORKING', '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 163, 1),
(432, '2018-04-29 14:20:54', '2018-04-29 14:20:54', '06-29-16', '06', '16', '07-27-2016', '07', '2016', NULL, NULL, '59', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 164, 1),
(433, '2018-04-29 14:23:53', '2018-04-29 14:23:53', '12-13-2018', '12', '2018', '02-07-2018', '02', '2018', '14', '14', '62', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 164, 1),
(434, '2018-04-29 14:23:56', '2018-04-29 14:23:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '14', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 164, 1),
(435, '2018-04-29 14:24:21', '2018-04-29 14:24:21', '05-06-2016', '05', '2016', '05-06-2016', '05', '2016', NULL, NULL, '59.6', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/CFV', NULL, NULL, '[null]', NULL, NULL, '26', '30', '30', NULL, NULL, '', NULL, NULL, 167, 1),
(436, '2018-04-29 14:26:58', '2018-04-29 14:26:58', '04-18-2018', '04', '2018', '05-24-2018', '05', '2018', '18', '18', '50', NULL, 'W', '1', NULL, '[null]', '[null]', 'G', '90', '90', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '80', '80', NULL, NULL, '', NULL, NULL, 167, 1),
(437, '2018-04-29 14:32:58', '2018-04-29 14:32:58', '03-01-2017', '03', '2017', '07-02-2017', '07', '2017', NULL, NULL, NULL, NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/CFU', NULL, NULL, '[null]', NULL, NULL, '43', '30', '30', NULL, NULL, '', NULL, 'WORK', 166, 1),
(438, '2018-04-29 14:33:36', '2018-04-29 14:33:36', '01-07-2015', '01', '2015', '02-04-2015', '02', '2015', NULL, NULL, '53.5', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '70', NULL, NULL, NULL, NULL, '', NULL, NULL, 169, 1),
(439, '2018-04-29 14:36:03', '2018-04-29 14:36:03', '11-14-2018', '11', '2018', NULL, NULL, NULL, '1.5', '1.5', '65', NULL, 'LOW CD4', '1', NULL, '[null]', '[null]', NULL, '60', '30', '28', '28', NULL, NULL, 'TDF/3TD/EFU', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 166, 1),
(440, '2018-04-29 14:37:32', '2018-04-29 14:37:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.5', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', '28', '28', NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 166, 1),
(441, '2018-04-29 14:41:26', '2018-04-29 14:41:26', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', NULL, NULL, '57.3', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOG', 'OS', '30', 'OS', NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORKING', 169, 1),
(442, '2018-04-29 14:50:37', '2018-04-29 14:50:37', '06-10-2016', '06', '2016', '06-30-2016', '06', '2016', NULL, NULL, '58', NULL, NULL, '3', 'Currently on TB Treatment', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '22', '30', '30', NULL, NULL, '', NULL, 'WORK', 171, 1),
(443, '2018-04-29 14:55:26', '2018-04-29 14:55:26', '01-07-2015', '01', '2015', '02-04-2015', '02', '2015', NULL, NULL, '56', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '55', NULL, NULL, NULL, NULL, '', NULL, NULL, 175, 1),
(444, '2018-04-29 14:55:35', '2018-04-29 14:55:35', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '22', '22', '69', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 171, 1),
(445, '2018-04-29 15:02:45', '2018-04-29 15:02:45', '04-04-2018', '04', '2018', '05-30-2018', '05', '2018', '33.5', '33.5', '68', NULL, 'LOW CD4', '11', NULL, '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, NULL, 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 175, 1),
(446, '2018-04-29 15:05:48', '2018-04-29 15:05:48', '06-01-2016', '06', '2016', '07-27-2016', '07', '2016', '24', '24', '59.2', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '21', '120', '60', NULL, NULL, '', NULL, 'WORK', 170, 1),
(447, '2018-04-29 15:05:49', '2018-04-29 15:05:49', '06-01-2016', '06', '2016', '07-27-2016', '07', '2016', '24', '24', '59.2', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '21', '120', '60', NULL, NULL, '', NULL, 'WORK', 170, 1),
(448, '2018-04-30 06:42:34', '2018-04-30 06:42:34', '10-02-2015', '10', '2015', '11-21-2015', '11', '2015', '12', '12', '61.2', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '23', '30', '30', NULL, NULL, '', NULL, 'WORK', 176, 1),
(449, '2018-04-30 06:45:50', '2018-04-30 06:45:50', '04-04-2018', '04', '2018', '04-26-2018', '04', '2018', '30', '30', '56', NULL, 'LACTATING', '1', NULL, '[null]', '[null]', 'GOOD', 'O/S', '30', NULL, NULL, NULL, NULL, 'DTF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', NULL, NULL, NULL, '', NULL, 'WORK', 176, 1),
(450, '2018-04-30 06:57:50', '2018-04-30 06:57:50', '10-25-2015', '10', '2015', '11-25-2015', '11', '2015', NULL, NULL, '57', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '38', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 177, 1),
(451, '2018-04-30 07:01:12', '2018-04-30 07:01:12', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '16', '16', '55', NULL, NULL, '1', NULL, '[null]', '[null]', 'FAIR', '60', '60', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 177, 1),
(452, '2018-04-30 07:15:15', '2018-04-30 07:15:15', '10-01-2015', '10', '2015', '10-28-2015', '10', '2015', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '44', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 178, 1),
(453, '2018-04-30 07:18:57', '2018-04-30 07:18:57', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '24', '24', '44.4', '180', 'VL SUPRESING', '1', NULL, '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 178, 1),
(454, '2018-04-30 07:33:53', '2018-04-30 07:33:53', '09-30-2015', '09', '2015', '10-28-2015', '10', '2015', NULL, NULL, '60.3', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 'WORK', 179, 1),
(455, '2018-04-30 07:37:47', '2018-04-30 07:37:47', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '16.5', '16.5', '56', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 179, 1),
(456, '2018-04-30 07:56:03', '2018-04-30 07:56:03', '09-30-2015', '09', '2015', '10-23-2015', '10', '2015', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 180, 1);
INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(457, '2018-04-30 08:00:11', '2018-04-30 08:00:11', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', '15.5', '15.5', '62', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPRESING', NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 180, 1),
(458, '2018-04-30 08:14:46', '2018-04-30 08:14:46', '06-24-2015', '06', '2015', '07-29-2015', '07', '2015', NULL, NULL, '42.6', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '29', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 181, 1),
(459, '2018-04-30 08:17:17', '2018-04-30 08:17:17', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '18', '18', '49', NULL, NULL, '2', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 181, 1),
(460, '2018-04-30 08:35:12', '2018-04-30 08:35:12', '03-04-2015', '03', '2015', '04-01-2015', '04', '2015', NULL, NULL, '54', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[[\"PID (Pelvic inflammatory Disease)\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '25', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 182, 1),
(461, '2018-04-30 08:38:39', '2018-04-30 08:38:39', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '9', '9', '51', NULL, NULL, '2', NULL, '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 182, 1),
(462, '2018-04-30 08:56:37', '2018-04-30 08:56:37', '05-27-2015', '05', '2015', '06-24-2015', '06', '2015', NULL, NULL, '45.9', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '36', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 183, 1),
(463, '2018-04-30 09:00:07', '2018-04-30 09:00:07', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '32', '32', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 183, 1),
(464, '2018-04-30 09:12:51', '2018-04-30 09:12:51', '05-27-2015', '05', '2015', '06-24-2015', '06', '2015', NULL, NULL, '49.2', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '68', '30', '30', NULL, NULL, '', NULL, 'WORK', 184, 1),
(465, '2018-04-30 09:12:51', '2018-04-30 09:12:51', '05-27-2015', '05', '2015', '06-24-2015', '06', '2015', NULL, NULL, '49.2', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '68', '30', '30', NULL, NULL, '', NULL, 'WORK', 184, 1),
(466, '2018-04-30 09:18:21', '2018-04-30 09:18:21', '04-25-2018', '04', '2018', '06-27-2018', '06', '2018', NULL, NULL, '43.6', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOG', '120', '120', NULL, NULL, NULL, NULL, 'AZT/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '120', '120', NULL, NULL, '', NULL, 'WORK', 184, 1),
(467, '2018-04-30 10:20:36', '2018-04-30 10:20:36', '05-27-2015', '05', '2015', '06-24-2015', '06', '2015', NULL, NULL, NULL, NULL, NULL, '2', 'No signs or Symptoms of TB', '[[\"Rash\"]]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '39', NULL, NULL, NULL, NULL, '', NULL, 'W0RK', 185, 1),
(468, '2018-04-30 10:27:12', '2018-04-30 10:27:12', '03-29-2018', '03', '2018', '05-30-2018', '05', '2018', '26', '26', '55', NULL, NULL, '2', NULL, '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPRESSING', NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 185, 1),
(469, '2018-04-30 10:47:27', '2018-04-30 10:47:27', '11-05-2014', '11', '2014', '01-07-2015', '01', '2015', NULL, NULL, '62', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '120', '120', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 186, 1),
(470, '2018-04-30 10:53:44', '2018-04-30 10:53:44', '12-06-2018', '12', '2018', '02-07-2018', '02', '2018', '32', '32', NULL, NULL, NULL, '2', NULL, '[null]', '[null]', NULL, '15', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', NULL, '15', '15', NULL, NULL, '', NULL, 'WORK', 186, 1),
(471, '2018-04-30 11:15:48', '2018-04-30 11:15:48', '10-22-2015', '10', '2015', '11-25-2015', '11', '2015', NULL, NULL, '68', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 187, 1),
(472, '2018-04-30 11:48:42', '2018-04-30 11:48:42', '01-25-2017', '01', '2017', '02-22-2017', '02', '2017', NULL, NULL, '35', '158', NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 188, 1),
(473, '2018-04-30 11:51:43', '2018-04-30 11:51:43', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', '13.5', '13.5', '48', NULL, NULL, '2', NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'IUD', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 188, 1),
(474, '2018-04-30 12:06:27', '2018-04-30 12:06:27', '01-10-2015', '01', '2015', '01-11-2015', '01', '2015', NULL, NULL, '38', NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 189, 1),
(475, '2018-04-30 12:06:28', '2018-04-30 12:06:28', '01-10-2015', '01', '2015', '01-11-2015', '01', '2015', NULL, NULL, '38', NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 189, 1),
(476, '2018-04-30 12:10:41', '2018-04-30 12:10:41', NULL, NULL, NULL, '01-05-2015', '01', '2015', '22.5', '22.5', '39.4', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, 'TDH/3TL/EFU', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 189, 1),
(477, '2018-04-30 12:23:54', '2018-04-30 12:23:54', '10-26-2016', '10', '2016', '01-28-2017', '01', '2017', NULL, NULL, '56', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '180', '90', '90', '90', NULL, NULL, 'AZT/3TC/VP', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '240', '60', NULL, NULL, '', NULL, 'WORK', 190, 1),
(478, '2018-04-30 12:27:03', '2018-04-30 12:27:03', '04-18-2018', '04', '2018', '05-25-2018', '05', '2018', '90', '90', '60', NULL, NULL, '2', NULL, '[null]', '[null]', 'FAIR', '90', '90', '90', '90', NULL, 'Fair', 'AZT/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 190, 1),
(479, '2018-04-30 12:50:04', '2018-04-30 12:50:04', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(480, '2018-04-30 12:50:05', '2018-04-30 12:50:05', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(481, '2018-04-30 12:50:05', '2018-04-30 12:50:05', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(482, '2018-04-30 12:50:05', '2018-04-30 12:50:05', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(483, '2018-04-30 12:50:05', '2018-04-30 12:50:05', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(484, '2018-04-30 12:50:05', '2018-04-30 12:50:05', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(485, '2018-04-30 12:50:06', '2018-04-30 12:50:06', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(486, '2018-04-30 12:50:06', '2018-04-30 12:50:06', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(487, '2018-04-30 12:50:07', '2018-04-30 12:50:07', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(488, '2018-04-30 12:50:10', '2018-04-30 12:50:10', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(489, '2018-04-30 12:50:10', '2018-04-30 12:50:10', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(490, '2018-04-30 12:50:10', '2018-04-30 12:50:10', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(491, '2018-04-30 12:50:10', '2018-04-30 12:50:10', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(492, '2018-04-30 12:50:10', '2018-04-30 12:50:10', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(493, '2018-04-30 12:50:10', '2018-04-30 12:50:10', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(494, '2018-04-30 12:50:10', '2018-04-30 12:50:10', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(495, '2018-04-30 12:50:11', '2018-04-30 12:50:11', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(496, '2018-04-30 12:50:12', '2018-04-30 12:50:12', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(497, '2018-04-30 12:50:12', '2018-04-30 12:50:12', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(498, '2018-04-30 12:50:12', '2018-04-30 12:50:12', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(499, '2018-04-30 12:50:12', '2018-04-30 12:50:12', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(500, '2018-04-30 12:50:12', '2018-04-30 12:50:12', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(501, '2018-04-30 12:50:12', '2018-04-30 12:50:12', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(502, '2018-04-30 12:50:13', '2018-04-30 12:50:13', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(503, '2018-04-30 12:50:13', '2018-04-30 12:50:13', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(504, '2018-04-30 12:50:13', '2018-04-30 12:50:13', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(505, '2018-04-30 12:50:13', '2018-04-30 12:50:13', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(506, '2018-04-30 12:50:13', '2018-04-30 12:50:13', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(507, '2018-04-30 12:50:13', '2018-04-30 12:50:13', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(508, '2018-04-30 12:50:13', '2018-04-30 12:50:13', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(509, '2018-04-30 12:50:13', '2018-04-30 12:50:13', '06-06-2016', '06', '2016', '07-08-2016', '07', '2016', NULL, NULL, '59.4', NULL, 'CD4 323', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFU', '778', NULL, '[null]', NULL, NULL, '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(510, '2018-04-30 12:57:30', '2018-04-30 12:57:30', '10-06-2016', '10', '2016', '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'DEPO', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 192, 1),
(511, '2018-04-30 13:00:39', '2018-04-30 13:00:39', '04-11-2018', '04', '2018', '05-30-2018', '05', '2018', '11', '11', '41', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 192, 1),
(512, '2018-04-30 13:18:09', '2018-04-30 13:18:09', '03-01-2016', '03', '2016', '12-02-2016', '12', '2016', NULL, NULL, '52', NULL, 'CD4 368', NULL, NULL, '[null]', '[null]', NULL, '30', '30WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '38', NULL, NULL, NULL, NULL, '', '1', 'WORK', 194, 1),
(513, '2018-04-30 13:18:09', '2018-04-30 13:18:09', '03-01-2016', '03', '2016', '12-02-2016', '12', '2016', NULL, NULL, '52', NULL, 'CD4 368', NULL, NULL, '[null]', '[null]', NULL, '30', '30WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '38', NULL, NULL, NULL, NULL, '', '1', 'WORK', 194, 1),
(514, '2018-04-30 13:18:59', '2018-04-30 13:18:59', '09-28-2016', '09', '2016', '10-26-2016', '10', '2016', '2', '2', '11.2', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'ABC/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '2', '120', '30', NULL, NULL, '', NULL, 'PLAYING', 195, 1),
(515, '2018-04-30 13:21:25', '2018-04-30 13:21:25', '12-01-2018', '12', '2018', '09-01-2018', '09', '2018', NULL, NULL, '44.9', NULL, NULL, '3', 'Suspect', '[null]', '[null]', 'P', '30', '30', NULL, NULL, NULL, NULL, 'P', NULL, NULL, '[null]', NULL, NULL, NULL, 'TDF/3TC/CFU', NULL, NULL, NULL, '', NULL, 'WORK', 194, 1),
(516, '2018-04-30 13:25:46', '2018-04-30 13:25:46', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '20', '20', '13', NULL, NULL, '2', NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'ABC/3TC/EFV', 'VL SUPRESSING', NULL, '[null]', 'MUAC|+', NULL, NULL, '120', '30', NULL, NULL, '', NULL, 'PLAYING', 195, 1),
(517, '2018-04-30 13:46:25', '2018-04-30 13:46:25', '09-07-2016', '09', '2016', '10-26-2016', '10', '2016', NULL, NULL, '52.5', NULL, NULL, '2', 'Suspect', '[null]', '[[\"COUGH*\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '50', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 197, 1),
(518, '2018-04-30 13:49:55', '2018-04-30 13:49:55', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', '4', '4', '1', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'O/S', NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 197, 1),
(519, '2018-04-30 14:03:52', '2018-04-30 14:03:52', '03-22-2017', '03', '2017', '05-25-2017', '05', '2017', NULL, NULL, '7', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '240', '60', NULL, NULL, NULL, NULL, 'AZT/3TC/NCF', NULL, NULL, '[null]', 'MUAC|+', NULL, '2', '90', '60', NULL, NULL, '', NULL, 'PLAYING', 196, 1),
(520, '2018-04-30 14:08:07', '2018-04-30 14:08:07', NULL, NULL, NULL, '04-03-2018', '04', '2018', '10', '10', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'AZT/3TZ/NUP', NULL, NULL, '[null]', NULL, NULL, NULL, '1.5X2', NULL, NULL, NULL, '', NULL, NULL, 196, 1),
(521, '2018-05-01 07:14:44', '2018-05-01 07:14:44', '02-24-2016', '02', '2016', '04-27-2016', '04', '2016', NULL, NULL, '60', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '51', NULL, NULL, NULL, NULL, '', NULL, 'WORKING', 198, 1),
(522, '2018-05-01 07:14:44', '2018-05-01 07:14:44', '02-24-2016', '02', '2016', '04-27-2016', '04', '2016', NULL, NULL, '60', NULL, 'LOW CD4', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '51', NULL, NULL, NULL, NULL, '', NULL, 'WORKING', 198, 1),
(523, '2018-05-01 07:25:20', '2018-05-01 07:25:20', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', NULL, NULL, '60.3', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', 'O/S', 'O/S', NULL, NULL, NULL, 'Good', 'TDF 3TC EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 198, 1),
(524, '2018-05-01 08:51:19', '2018-05-01 08:51:19', '02-24-2016', '02', '2016', '03-30-2016', '03', '2016', NULL, NULL, '42.7', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null,\"CHEST PAIN\"]', 'P', '30', '30', NULL, NULL, NULL, NULL, 'NOT', NULL, NULL, '[null]', NULL, NULL, '50', 'NOT LIGIBLE', 'FOR CD4 COUNT', NULL, NULL, '', NULL, 'W', 199, 1),
(525, '2018-05-01 08:55:33', '2018-05-01 08:55:33', '11-29-2017', '11', '2017', '01-31-2018', '01', '2018', '15', '15', '53', NULL, 'W', '1', NULL, '[null]', '[null,\"CHEST PAIN\"]', 'G', '64', '64', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFV', NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 199, 1),
(526, '2018-05-01 08:55:34', '2018-05-01 08:55:34', '03-15-2013', '03', '2013', '04-19-2013', '04', '2013', NULL, NULL, NULL, NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '15', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '1', NULL, NULL, NULL, NULL, '', NULL, 'PLAYING', 18, 1),
(527, '2018-05-01 09:00:03', '2018-05-01 09:00:03', '03-07-2018', '03', '2018', '04-07-2018', '04', '2018', NULL, NULL, NULL, NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', NULL, '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, NULL, '180', '30', NULL, NULL, '', NULL, 'PLAYING', 18, 1),
(528, '2018-05-01 09:12:49', '2018-05-01 09:12:49', '03-22-2017', '03', '2017', '04-26-2017', '04', '2017', '26', '26', '61', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'G', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFV', NULL, NULL, '[null]', NULL, NULL, '37', '60', NULL, NULL, NULL, '', NULL, NULL, 201, 1),
(529, '2018-05-01 09:17:09', '2018-05-01 09:17:09', '04-04-2018', '04', '2018', '06-02-2018', '06', '2018', '37', '37', NULL, NULL, 'W', '1', NULL, '[null]', '[null]', 'G', 'OS', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'DUE 10/2018', NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 201, 1),
(530, '2018-05-01 09:23:01', '2018-05-01 09:23:01', '02-28-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '50', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, '15', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '20', '15', '15', NULL, NULL, '', NULL, 'WORK', 172, 1),
(531, '2018-05-01 09:26:40', '2018-05-01 09:26:40', '03-21-2018', '03', '2018', '04-04-2018', '04', '2018', '1', '1', '50', NULL, NULL, '1', NULL, '[null]', '[null]', 'POOR', '15', '15', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[[\"Forgot\"],null]', 'MUAC|+', NULL, NULL, '15', '15', NULL, NULL, '', NULL, 'WORK', 172, 1),
(532, '2018-05-01 09:40:49', '2018-05-01 09:40:49', '06-01-2016', '06', '2016', '06-29-2016', '06', '2016', NULL, NULL, '50', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'G', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'TO BE DONE', NULL, '[null]', NULL, NULL, '35', '30', NULL, NULL, NULL, '', NULL, NULL, 203, 1),
(533, '2018-05-01 09:44:07', '2018-05-01 09:44:07', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', '18', '18', '50', NULL, 'W', '1', NULL, '[null]', '[null]', 'OS', NULL, '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'NOT DETECTED', NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 203, 1),
(534, '2018-05-01 09:58:50', '2018-05-01 09:58:50', '04-13-2018', '04', '2018', '06-06-2016', '06', '2016', NULL, NULL, '44', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '12O', '12O', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '38', '60', '60', NULL, NULL, '', NULL, 'WORK', 25, 1),
(535, '2018-05-01 10:00:31', '2018-05-01 10:00:31', '07-27-2016', '07', '2016', '08-31-2017', '08', '2017', NULL, NULL, '52.3', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null,\"FLU\"]', 'G', '60', '30', NULL, NULL, NULL, NULL, NULL, 'DO CD4 COUNT', NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 204, 1),
(536, '2018-05-01 10:04:14', '2018-05-01 10:04:14', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', NULL, NULL, '53', NULL, 'W', '1', NULL, '[null]', '[null,\"FLU\"]', 'G', 'OS', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', 'NOT DETECTED', NULL, '', NULL, NULL, 204, 1),
(537, '2018-05-01 10:21:17', '2018-05-01 10:21:17', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', NULL, NULL, '49', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, 'O/S', 'O/S', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '55', '30', '30', NULL, NULL, '', NULL, 'WORK', 147, 1),
(538, '2018-05-01 10:21:46', '2018-05-01 10:21:46', '09-07-2016', '09', '2016', '10-26-2016', '10', '2016', NULL, NULL, '41', NULL, 'W', '2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', 'G', '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '25', NULL, NULL, NULL, NULL, '', NULL, NULL, 206, 1),
(539, '2018-05-01 10:22:06', '2018-05-01 10:22:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Suspect', '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 206, 1),
(540, '2018-05-01 10:25:31', '2018-05-01 10:25:31', '03-28-2018', '03', '2018', '05-03-2018', '05', '2018', '3.5', '3.5', NULL, NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'OS', NULL, '30', NULL, NULL, NULL, 'Fair', 'TDF/3TC/CFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 206, 1),
(541, '2018-05-01 10:49:36', '2018-05-01 10:49:36', '04-23-2016', '04', '2016', '05-25-2016', '05', '2016', NULL, NULL, '55', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'G', '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '39', '30', '30', NULL, NULL, '', NULL, NULL, 207, 1),
(542, '2018-05-01 10:53:11', '2018-05-01 10:53:11', '04-04-2018', '04', '2018', '06-04-2018', '06', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', 'OS', NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/CFV', 'NOT DETECTED (5/2//2018)', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 207, 1),
(543, '2018-05-01 10:53:11', '2018-05-01 10:53:11', '03-07-2013', '03', '2013', '03-15-2013', '03', '2013', NULL, NULL, '54.6', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[[\"FEVER*\"]]', 'GOOD', '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '57', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 13, 1),
(544, '2018-05-01 10:58:29', '2018-05-01 10:58:29', '03-28-2018', '03', '2018', '05-30-2018', '05', '2018', '31.5', '31.5', '58', NULL, NULL, '1', NULL, '[null]', '[null]', NULL, '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '15', '15', NULL, NULL, '', NULL, 'WORK', 13, 1),
(545, '2018-05-01 11:09:21', '2018-05-01 11:09:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '18', NULL, NULL, NULL, NULL, '', NULL, NULL, 42, 1),
(546, '2018-05-01 11:14:11', '2018-05-01 11:14:11', '01-26-2017', '01', '2017', '02-23-2017', '02', '2017', NULL, NULL, '52', '15.8', 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'G', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 208, 1),
(547, '2018-05-01 11:16:13', '2018-05-01 11:16:13', '01-03-2018', '01', '2018', '03-28-2018', '03', '2018', '22', '22', NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'DEPO', '18', '60', '60', NULL, NULL, '', NULL, 'WORK', 42, 1),
(548, '2018-05-01 11:17:07', '2018-05-01 11:17:07', '04-19-2018', '04', '2018', '05-02-2018', '05', '2018', NULL, NULL, '60', NULL, 'W', '1', NULL, '[null]', '[null]', 'G', '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|-', NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 208, 1),
(549, '2018-05-01 11:35:09', '2018-05-01 11:35:09', '07-13-2017', '07', '2017', '08-02-2017', '08', '2017', '2', '2', NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '19', '30', '30', NULL, NULL, '', NULL, 'WORK', 53, 1),
(550, '2018-05-01 11:35:39', '2018-05-01 11:35:39', '02-23-2017', '02', '2017', '03-29-2017', '03', '2017', NULL, NULL, '63', NULL, 'W', '2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', 'G', '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', 'MUAC|-', NULL, '25', NULL, NULL, NULL, NULL, '', NULL, NULL, 210, 1),
(551, '2018-05-01 11:37:54', '2018-05-01 11:37:54', '02-07-2018', '02', '2018', '04-25-2018', '04', '2018', '8', '8', '43', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '90', '90', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '90', '90', NULL, NULL, '', NULL, 'WORK', 53, 1),
(552, '2018-05-01 11:37:55', '2018-05-01 11:37:55', '02-07-2018', '02', '2018', '04-25-2018', '04', '2018', '8', '8', '43', NULL, NULL, '1', NULL, '[null]', '[null]', 'GOOD', '90', '90', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '90', '90', NULL, NULL, '', NULL, 'WORK', 53, 1),
(553, '2018-05-01 11:41:40', '2018-05-01 11:41:40', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', NULL, NULL, '68', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'OS', NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/CFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 210, 1),
(554, '2018-05-01 12:48:29', '2018-05-01 12:48:29', '05-25-2016', '05', '2016', '06-29-2016', '06', '2016', NULL, NULL, '66', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'G', '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', 'MUAC|+', NULL, '25', NULL, NULL, 'DO CD4 COUNT', NULL, '', NULL, NULL, 211, 1),
(555, '2018-05-01 12:48:58', '2018-05-01 12:48:58', '05-25-2016', '05', '2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 211, 1),
(556, '2018-05-01 12:52:30', '2018-05-01 12:52:30', '03-28-2018', '03', '2018', '05-02-2018', '05', '2018', '15.5', '15.5', '76.1', NULL, 'W', '1', NULL, '[null]', '[null]', 'G', 'OS', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, NULL, 211, 1),
(557, '2018-05-01 14:29:23', '2018-05-01 14:29:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '28', NULL, NULL, NULL, NULL, '', NULL, NULL, 6, 1),
(558, '2018-05-01 14:31:26', '2018-05-01 14:31:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '28', NULL, NULL, NULL, NULL, '', NULL, NULL, 74, 1),
(559, '2018-05-01 14:32:33', '2018-05-01 14:32:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '22', NULL, NULL, NULL, NULL, '', NULL, NULL, 75, 1),
(560, '2018-05-01 14:33:35', '2018-05-01 14:33:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '40', NULL, NULL, NULL, NULL, '', NULL, NULL, 76, 1),
(561, '2018-05-01 14:39:06', '2018-05-01 14:39:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '25', NULL, NULL, NULL, NULL, '', NULL, NULL, 83, 1),
(562, '2018-05-01 14:41:19', '2018-05-01 14:41:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '45', NULL, NULL, NULL, NULL, '', NULL, NULL, 81, 1),
(563, '2018-05-01 14:43:02', '2018-05-01 14:43:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '35', NULL, NULL, NULL, NULL, '', NULL, NULL, 96, 1),
(564, '2018-05-01 14:43:23', '2018-05-01 14:43:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '48', NULL, NULL, NULL, NULL, '', NULL, NULL, 97, 1),
(565, '2018-05-01 14:43:41', '2018-05-01 14:43:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '22', NULL, NULL, NULL, NULL, '', NULL, NULL, 98, 1),
(566, '2018-05-01 14:44:03', '2018-05-01 14:44:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 83, 1),
(567, '2018-05-01 14:45:17', '2018-05-01 14:45:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '39', NULL, NULL, NULL, NULL, '', NULL, NULL, 102, 1),
(568, '2018-05-01 14:45:49', '2018-05-01 14:45:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 102, 1),
(569, '2018-05-01 14:46:42', '2018-05-01 14:46:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '63', NULL, NULL, NULL, NULL, '', NULL, NULL, 94, 1),
(570, '2018-05-01 14:47:31', '2018-05-01 14:47:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '27', NULL, NULL, NULL, NULL, '', NULL, NULL, 99, 1),
(571, '2018-05-01 14:47:50', '2018-05-01 14:47:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '18', NULL, NULL, NULL, NULL, '', NULL, NULL, 101, 1),
(572, '2018-05-01 14:48:05', '2018-05-01 14:48:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '39', NULL, NULL, NULL, NULL, '', NULL, NULL, 102, 1),
(573, '2018-05-01 14:48:27', '2018-05-01 14:48:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '32', NULL, NULL, NULL, NULL, '', NULL, NULL, 105, 1),
(574, '2018-05-01 14:49:29', '2018-05-01 14:49:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '52', NULL, NULL, NULL, NULL, '', NULL, NULL, 103, 1),
(575, '2018-05-01 14:50:22', '2018-05-01 14:50:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 103, 1),
(576, '2018-05-01 14:51:04', '2018-05-01 14:51:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '18', NULL, NULL, NULL, NULL, '', NULL, NULL, 100, 1),
(577, '2018-05-01 14:51:17', '2018-05-01 14:51:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '52', NULL, NULL, NULL, NULL, '', NULL, NULL, 103, 1),
(578, '2018-05-01 14:53:50', '2018-05-01 14:53:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '20', NULL, NULL, NULL, NULL, '', NULL, NULL, 109, 1),
(579, '2018-05-01 14:54:01', '2018-05-01 14:54:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '26', NULL, NULL, NULL, NULL, '', NULL, NULL, 107, 1),
(580, '2018-05-01 14:57:32', '2018-05-01 14:57:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '22', NULL, NULL, NULL, NULL, '', NULL, NULL, 111, 1),
(581, '2018-05-01 14:57:33', '2018-05-01 14:57:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '22', NULL, NULL, NULL, NULL, '', NULL, NULL, 111, 1),
(582, '2018-05-01 14:57:53', '2018-05-01 14:57:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '2', NULL, NULL, NULL, NULL, '', NULL, NULL, 112, 1),
(583, '2018-05-01 15:00:33', '2018-05-01 15:00:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '50', NULL, NULL, NULL, NULL, '', NULL, NULL, 114, 1),
(584, '2018-05-01 15:00:52', '2018-05-01 15:00:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, '', NULL, NULL, 113, 1),
(585, '2018-05-01 15:01:31', '2018-05-01 15:01:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 116, 1),
(586, '2018-05-01 15:03:26', '2018-05-01 15:03:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '36', NULL, NULL, NULL, NULL, '', NULL, NULL, 140, 1),
(587, '2018-05-01 15:04:01', '2018-05-01 15:04:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 143, 1),
(588, '2018-05-01 15:04:20', '2018-05-01 15:04:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 139, 1),
(589, '2018-05-01 15:05:59', '2018-05-01 15:05:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 133, 1),
(590, '2018-05-01 15:06:15', '2018-05-01 15:06:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '36', NULL, NULL, NULL, NULL, '', NULL, NULL, 138, 1),
(591, '2018-05-01 15:06:49', '2018-05-01 15:06:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 135, 1),
(592, '2018-05-01 15:07:32', '2018-05-01 15:07:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '38', NULL, NULL, NULL, NULL, '', NULL, NULL, 134, 1),
(593, '2018-05-01 15:08:28', '2018-05-01 15:08:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 126, 1),
(594, '2018-05-01 15:08:39', '2018-05-01 15:08:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '45', NULL, NULL, NULL, NULL, '', NULL, NULL, 127, 1),
(595, '2018-05-01 15:09:29', '2018-05-01 15:09:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '50', NULL, NULL, NULL, NULL, '', NULL, NULL, 132, 1),
(596, '2018-05-01 15:10:08', '2018-05-01 15:10:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '32', NULL, NULL, NULL, NULL, '', NULL, NULL, 131, 1),
(597, '2018-05-01 15:11:08', '2018-05-01 15:11:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '65', NULL, NULL, NULL, NULL, '', NULL, NULL, 144, 1),
(598, '2018-05-01 15:11:22', '2018-05-01 15:11:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '27', NULL, NULL, NULL, NULL, '', NULL, NULL, 145, 1),
(599, '2018-05-01 15:11:48', '2018-05-01 15:11:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '55', NULL, NULL, NULL, NULL, '', NULL, NULL, 147, 1),
(600, '2018-05-01 15:12:26', '2018-05-01 15:12:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '29', NULL, NULL, NULL, NULL, '', NULL, NULL, 146, 1),
(601, '2018-05-01 15:13:29', '2018-05-01 15:13:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '45', NULL, NULL, NULL, NULL, '', NULL, NULL, 155, 1),
(602, '2018-05-01 15:13:43', '2018-05-01 15:13:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '56', NULL, NULL, NULL, NULL, '', NULL, NULL, 153, 1),
(603, '2018-05-01 15:13:59', '2018-05-01 15:13:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '2', NULL, NULL, NULL, NULL, '', NULL, NULL, 152, 1),
(604, '2018-05-01 15:14:13', '2018-05-01 15:14:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '45', NULL, NULL, NULL, NULL, '', NULL, NULL, 151, 1),
(605, '2018-05-01 15:14:41', '2018-05-01 15:14:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 150, 1),
(606, '2018-05-01 15:16:43', '2018-05-01 15:16:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '26', NULL, NULL, NULL, NULL, '', NULL, NULL, 167, 1),
(607, '2018-05-01 15:16:55', '2018-05-01 15:16:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '43', NULL, NULL, NULL, NULL, '', NULL, NULL, 166, 1),
(608, '2018-05-01 15:18:01', '2018-05-01 15:18:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 166, 1),
(609, '2018-05-01 15:18:11', '2018-05-01 15:18:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '23', NULL, NULL, NULL, NULL, '', NULL, NULL, 176, 1),
(610, '2018-05-01 15:18:23', '2018-05-01 15:18:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '55', NULL, NULL, NULL, NULL, '', NULL, NULL, 175, 1);
INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(611, '2018-05-01 15:18:40', '2018-05-01 15:18:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '20', NULL, NULL, NULL, NULL, '', NULL, NULL, 172, 1),
(612, '2018-05-01 15:18:52', '2018-05-01 15:18:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '22', NULL, NULL, NULL, NULL, '', NULL, NULL, 171, 1),
(613, '2018-05-01 15:19:20', '2018-05-01 15:19:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '21', NULL, NULL, NULL, NULL, '', NULL, NULL, 170, 1),
(614, '2018-05-01 15:19:34', '2018-05-01 15:19:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '70', NULL, NULL, NULL, NULL, '', NULL, NULL, 169, 1),
(615, '2018-05-01 15:19:48', '2018-05-01 15:19:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '17', NULL, NULL, NULL, NULL, '', NULL, NULL, 168, 1),
(616, '2018-05-01 15:20:03', '2018-05-01 15:20:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '43', NULL, NULL, NULL, NULL, '', NULL, NULL, 166, 1),
(617, '2018-05-01 15:20:15', '2018-05-01 15:20:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '26', NULL, NULL, NULL, NULL, '', NULL, NULL, 167, 1),
(618, '2018-05-01 15:21:18', '2018-05-01 15:21:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '43', NULL, NULL, NULL, NULL, '', NULL, NULL, 166, 1),
(619, '2018-05-01 15:21:38', '2018-05-01 15:21:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '26', NULL, NULL, NULL, NULL, '', NULL, NULL, 167, 1),
(620, '2018-05-01 15:21:53', '2018-05-01 15:21:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '17', NULL, NULL, NULL, NULL, '', NULL, NULL, 168, 1),
(621, '2018-05-01 15:22:07', '2018-05-01 15:22:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '70', NULL, NULL, NULL, NULL, '', NULL, NULL, 169, 1),
(622, '2018-05-01 15:22:19', '2018-05-01 15:22:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '21', NULL, NULL, NULL, NULL, '', NULL, NULL, 170, 1),
(623, '2018-05-01 15:22:39', '2018-05-01 15:22:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '20', NULL, NULL, NULL, NULL, '', NULL, NULL, 172, 1),
(624, '2018-05-01 15:22:54', '2018-05-01 15:22:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '21', NULL, NULL, NULL, NULL, '', NULL, NULL, 170, 1),
(625, '2018-05-01 15:23:13', '2018-05-01 15:23:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '55', NULL, NULL, NULL, NULL, '', NULL, NULL, 175, 1),
(626, '2018-05-01 15:23:24', '2018-05-01 15:23:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '23', NULL, NULL, NULL, NULL, '', NULL, NULL, 176, 1),
(627, '2018-05-01 15:24:55', '2018-05-01 15:24:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '39', NULL, NULL, NULL, NULL, '', NULL, NULL, 185, 1),
(628, '2018-05-01 15:25:08', '2018-05-01 15:25:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '68', NULL, NULL, NULL, NULL, '', NULL, NULL, 184, 1),
(629, '2018-05-01 15:25:37', '2018-05-01 15:25:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, '', NULL, NULL, 187, 1),
(630, '2018-05-01 15:25:53', '2018-05-01 15:25:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '36', NULL, NULL, NULL, NULL, '', NULL, NULL, 183, 1),
(631, '2018-05-01 15:26:18', '2018-05-01 15:26:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '25', NULL, NULL, NULL, NULL, '', NULL, NULL, 182, 1),
(632, '2018-05-01 15:27:09', '2018-05-01 15:27:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '29', NULL, NULL, NULL, NULL, '', NULL, NULL, 181, 1),
(633, '2018-05-01 15:27:30', '2018-05-01 15:27:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 180, 1),
(634, '2018-05-01 15:27:41', '2018-05-01 15:27:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 179, 1),
(635, '2018-05-01 15:27:52', '2018-05-01 15:27:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '44', NULL, NULL, NULL, NULL, '', NULL, NULL, 178, 1),
(636, '2018-05-01 15:28:39', '2018-05-01 15:28:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '44', NULL, NULL, NULL, NULL, '', NULL, NULL, 178, 1),
(637, '2018-05-01 15:29:56', '2018-05-01 15:29:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '44', NULL, NULL, NULL, NULL, '', NULL, NULL, 178, 1),
(638, '2018-05-01 15:30:06', '2018-05-01 15:30:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 179, 1),
(639, '2018-05-01 15:30:26', '2018-05-01 15:30:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '42', NULL, NULL, NULL, NULL, '', NULL, NULL, 180, 1),
(640, '2018-05-01 15:30:39', '2018-05-01 15:30:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '29', NULL, NULL, NULL, NULL, '', NULL, NULL, 181, 1),
(641, '2018-05-01 15:30:46', '2018-05-01 15:30:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 181, 1),
(642, '2018-05-01 15:31:02', '2018-05-01 15:31:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, '', NULL, NULL, 187, 1),
(643, '2018-05-01 15:31:18', '2018-05-01 15:31:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '39', NULL, NULL, NULL, NULL, '', NULL, NULL, 185, 1),
(644, '2018-05-01 15:31:37', '2018-05-01 15:31:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '68', NULL, NULL, NULL, NULL, '', NULL, NULL, 184, 1),
(645, '2018-05-01 15:31:55', '2018-05-01 15:31:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '36', NULL, NULL, NULL, NULL, '', NULL, NULL, 183, 1),
(646, '2018-05-02 06:23:39', '2018-05-02 06:23:39', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '32.5', '32.5', '60', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, 'WORK', 71, 1),
(647, '2018-05-02 06:27:12', '2018-05-02 06:27:12', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '5', '5', '46', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', '56', '56', NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 126, 1),
(648, '2018-05-02 06:32:22', '2018-05-02 06:32:22', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '45', '45', '49', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 57, 1),
(649, '2018-05-02 06:40:44', '2018-05-02 06:40:44', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '27.5', '27.5', '60', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPRESSING', NULL, '[null]', 'MUAC|+', 'NO FP', '65', '60', '60', NULL, NULL, '', NULL, 'WORK', 144, 1),
(650, '2018-05-02 07:02:21', '2018-05-02 07:02:21', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '19', '19', '56', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'G00D', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '35', '60', '60', NULL, NULL, '', NULL, 'WORK', 203, 1),
(651, '2018-05-02 07:05:50', '2018-05-02 07:05:50', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '15', '15', '53', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '52', '60', '60', NULL, NULL, '', NULL, 'WORK', 163, 1),
(652, '2018-05-02 07:10:05', '2018-05-02 07:10:05', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', NULL, NULL, '67', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '55', '60', '60', NULL, NULL, '', NULL, 'WORK', 175, 1),
(653, '2018-05-02 07:28:23', '2018-05-02 07:28:23', '07-27-2016', '07', '2016', '09-28-2016', '09', '2016', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '120', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', '40', '30', '30', NULL, NULL, '', NULL, 'WORK', 214, 1),
(654, '2018-05-02 07:52:18', '2018-05-02 07:52:18', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', NULL, NULL, '56', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'good', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'no fp', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 179, 1),
(655, '2018-05-02 08:01:59', '2018-05-02 08:01:59', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '6.5', '6.5', '40', NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', '56', '56', NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'DEPO', '26', '60', '60', NULL, NULL, '', NULL, 'WORK', 107, 1),
(656, '2018-05-02 08:14:30', '2018-05-02 08:14:30', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '43.5', '43.5', '47.7', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPRESSING', NULL, '[null]', 'MUAC|+', 'NO FP', '35', '60', '60', NULL, NULL, '', NULL, 'WORK', 72, 1),
(657, '2018-05-02 08:20:17', '2018-05-02 08:20:17', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', NULL, NULL, '49', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 37, 1),
(658, '2018-05-02 08:24:59', '2018-05-02 08:24:59', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '11.5', '11.5', '56.8', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '52', '60', '60', NULL, NULL, '', NULL, 'WORK', 88, 1),
(659, '2018-05-02 08:32:05', '2018-05-02 08:32:05', '05-02-2018', '05', '2018', '06-27-2018', '06', '2018', '7', '7', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', 'POOR', '60', '60', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', 'MUAC|+', NULL, '56', '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 153, 1),
(660, '2018-05-02 08:36:10', '2018-05-02 08:36:10', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', NULL, NULL, NULL, NULL, NULL, '2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '55', '60', '60', NULL, NULL, '', NULL, 'WORK', 147, 1),
(661, '2018-05-02 08:43:22', '2018-05-02 08:43:22', '05-02-2018', '05', '2018', '06-28-2018', '06', '2018', '3', '3', '66', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '18', '60', '60', NULL, NULL, '', NULL, 'WORK', 115, 1),
(662, '2018-05-02 08:48:03', '2018-05-02 08:48:03', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '2', '2', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '120', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '20', '60', NULL, NULL, NULL, '', NULL, 'REPRESENTED', 172, 1),
(663, '2018-05-02 08:53:29', '2018-05-02 08:53:29', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '50', '50', '45', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '30', '60', '60', NULL, NULL, '', NULL, 'WORK', 46, 1),
(664, '2018-05-02 08:57:47', '2018-05-02 08:57:47', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', NULL, NULL, '60', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 6, 1),
(665, '2018-05-02 09:03:25', '2018-05-02 09:03:25', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '7', '7', '59', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '48', '60', '60', NULL, NULL, '', NULL, 'WORK', 97, 1),
(666, '2018-05-02 09:10:04', '2018-05-02 09:10:04', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', NULL, NULL, '61', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '51', '60', '60', NULL, NULL, '', NULL, 'WORK', 198, 1),
(667, '2018-05-02 09:18:04', '2018-05-02 09:18:04', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '8.5', '8.5', '50', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 58, 1),
(668, '2018-05-02 09:30:07', '2018-05-02 09:30:07', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '24', '24', '49', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '58', '60', '60', NULL, NULL, '', NULL, 'WORK', 70, 1),
(669, '2018-05-02 09:30:07', '2018-05-02 09:30:07', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '24', '24', '49', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '58', '60', '60', NULL, NULL, '', NULL, 'WORK', 70, 1),
(670, '2018-05-02 09:34:40', '2018-05-02 09:34:40', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '29.5', '29.5', '48', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'IUD', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 61, 1),
(671, '2018-05-02 09:39:43', '2018-05-02 09:39:43', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '11', '11', '50', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 182, 1),
(672, '2018-05-02 09:47:57', '2018-05-02 09:47:57', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '25', '25', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '120', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '45', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 151, 1),
(673, '2018-05-02 09:54:06', '2018-05-02 09:54:06', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '24', '24', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '120', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '18', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 42, 1),
(674, '2018-05-02 10:16:35', '2018-05-02 10:16:35', '12-02-2015', '12', '2015', '01-28-2016', '01', '2016', '23', '23', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 216, 1),
(675, '2018-05-02 10:22:20', '2018-05-02 10:22:20', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '10.5', '10.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '120', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '30', '60', '60', NULL, NULL, '', NULL, NULL, 121, 1),
(676, '2018-05-02 10:30:18', '2018-05-02 10:30:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '26', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 150, 1),
(677, '2018-05-02 10:50:57', '2018-05-02 10:50:57', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '24.5', '24.5', NULL, NULL, NULL, 'REPRESENTED', NULL, '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '65', '60', '60', NULL, NULL, '', NULL, NULL, 189, 1),
(678, '2018-05-02 11:03:10', '2018-05-02 11:03:10', '05-02-2018', '05', '2018', '07-04-2018', '07', '2018', '6.5', '6.5', '47', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '37', '60', '60', NULL, NULL, '', NULL, 'WORK', 117, 1),
(679, '2018-05-02 11:08:28', '2018-05-02 11:08:28', '05-02-2016', '05', '2016', '07-04-2018', '07', '2018', '39', '39', '65', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '37', '60', '60', NULL, NULL, '', NULL, 'WORK', 201, 1),
(680, '2018-05-03 08:32:10', '2018-05-03 08:32:10', '03-05-2018', '03', '2018', '06-27-2018', '06', '2018', '13.5', '13.5', '55', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'good', '60', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 99, 1),
(681, '2018-05-03 08:39:46', '2018-05-03 08:39:46', '05-03-2018', '05', '2018', '05-31-2018', '05', '2018', '14', '14', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'ABC/3TC NVP', NULL, NULL, '[null]', NULL, NULL, '2', '90', '30', NULL, NULL, '', NULL, NULL, 152, 1),
(682, '2018-05-03 08:52:33', '2018-05-03 08:52:33', '05-03-2018', '05', '2018', '06-06-2018', '06', '2018', NULL, NULL, '75', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'fair', '30', '15', NULL, NULL, NULL, 'Fair', 'ABC/3TC/ATV/R', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '34', '30', '30', NULL, NULL, '', NULL, 'WORK', 19, 1),
(683, '2018-05-03 09:05:28', '2018-05-03 09:05:28', '03-15-2013', '03', '2013', '04-19-2013', '04', '2013', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '26', '3O', '3O', NULL, NULL, '', NULL, 'WORK', 217, 1),
(684, '2018-05-03 09:08:15', '2018-05-03 09:08:15', '03-07-2018', '03', '2018', '05-02-2018', '05', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'AZT/3TC/ATV/R', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 217, 1),
(685, '2018-05-03 09:11:31', '2018-05-03 09:11:31', '05-03-2018', '05', '2018', '07-04-2018', '07', '2018', NULL, NULL, '53', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'AZT/3TC/ATV/R', NULL, NULL, '[null]', 'MUAC|+', 'TUBE LIGATION', NULL, '60/30', '60/30', NULL, NULL, '', NULL, 'WORK', 217, 1),
(686, '2018-05-03 09:17:28', '2018-05-03 09:17:28', '05-03-2018', '05', '2018', '07-04-2018', '07', '2018', '21', '21', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '30', '30', '60', '60', NULL, 'Good', 'ABC/3TC/EFV', 'VL SUPRESSING', NULL, '[null]', NULL, NULL, '2', '60', '60', NULL, NULL, '', NULL, NULL, 195, 1),
(687, '2018-05-07 10:15:07', '2018-05-07 10:15:07', '05-07-2018', '05', '2018', '06-06-2018', '06', '2018', '7', '7', '42', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', 'O/S', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '50', '30', '30', NULL, NULL, '', NULL, 'WORK', 114, 1),
(688, '2018-05-08 08:15:39', '2018-05-08 08:15:39', '05-07-2018', '05', '2018', '06-06-2018', '06', '2018', NULL, NULL, '35', NULL, 'WORK', '3', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, '14', '14', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '59', '30', '30', NULL, NULL, '', NULL, 'WORK', 218, 1),
(689, '2018-05-09 07:57:19', '2018-05-09 07:57:19', '05-09-2018', '05', '2018', '06-06-2018', '06', '2018', '25', '25', '42', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', 'GOOD', 'O/S', 'O/S', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPRESSING', NULL, '[null]', 'MUAC|+', 'NO FP', '44', '30', '30', NULL, NULL, '', NULL, 'WORK', 178, 1),
(690, '2018-05-09 08:06:44', '2018-05-09 08:06:44', '05-09-2018', '05', '2018', '06-06-2018', '06', '2018', '44.5', '44.5', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'O/S', 'O/S', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPRESSING', NULL, '[null]', 'MUAC|+', 'NO FP', '55', '30', '30', NULL, NULL, '', NULL, 'WORK', 45, 1),
(691, '2018-05-09 08:24:58', '2018-05-09 08:24:58', '05-09-2018', '05', '2018', '06-06-2018', '06', '2018', NULL, NULL, '23.4', '126.1', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', 'O/S', NULL, NULL, NULL, NULL, 'ABC/3TC/EFV', 'VL NOT SUPRESSING', NULL, '[null]', 'MUAC|+', 'CHILD', '5', '120/60', '30', NULL, NULL, '', NULL, 'PLAYING', 48, 1),
(692, '2018-05-09 08:35:46', '2018-05-09 08:35:46', '05-09-2018', '05', '2018', '06-06-2018', '06', '2018', NULL, NULL, '17', '104.5', 'PLAYING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', 'O/S', NULL, NULL, NULL, 'Fair', 'ABC/3TC/EFV', 'VL 130,301 COPIES/ML', NULL, '[null]', 'MUAC|+', 'CHILD', '1', '120/60', '30', NULL, NULL, '', NULL, 'PLAYING', 18, 1),
(693, '2018-05-16 08:54:26', '2018-05-16 08:54:26', '02-28-2018', '02', '2018', '03-28-2018', '03', '2018', '15', '15', '12', NULL, 'PLAYING', '2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', 'GOOD', '15', '15', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', 'VL SUPRESSING', NULL, '[null]', 'MUAC|+', 'NO FP', '2', '60', '30', NULL, NULL, '', NULL, 'PLAYING', 220, 1),
(694, '2018-05-16 09:25:01', '2018-05-16 09:25:01', '02-14-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '26', '30', '30', NULL, NULL, '', NULL, 'WORK', 221, 1),
(695, '2018-05-16 09:28:38', '2018-05-16 09:28:38', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', NULL, NULL, '58', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 221, 1),
(696, '2018-05-16 09:28:38', '2018-05-16 09:28:38', '04-04-2018', '04', '2018', '05-02-2018', '05', '2018', NULL, NULL, '58', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 221, 1),
(697, '2018-05-16 09:32:00', '2018-05-16 09:32:00', '05-16-2018', '05', '2018', '06-03-2018', '06', '2018', NULL, NULL, '60', NULL, NULL, NULL, NULL, '[null]', '[null]', 'GOOD', 'O/S', 'O/S', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 221, 1),
(698, '2018-05-16 09:42:26', '2018-05-16 09:42:26', '05-16-2018', '05', '2018', '06-28-2018', '06', '2018', '8', '8', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', 'O/S', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 158, 1),
(699, '2018-05-16 09:55:36', '2018-05-16 09:55:36', '05-16-2018', '05', '2018', '06-28-2018', '06', '2018', NULL, NULL, '40', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, 'O/S', 'O/S', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO/FP', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 93, 1),
(700, '2018-05-16 10:20:15', '2018-05-16 10:20:15', '02-28-2018', '02', '2018', '03-28-2018', '03', '2018', '10', '10', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '30', '30', '30', '30', NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '1', '60', '30', NULL, NULL, '', NULL, NULL, 196, 1),
(701, '2018-05-16 10:30:45', '2018-05-16 10:30:45', '05-16-2018', '05', '2018', '07-04-2018', '07', '2018', '12.5', '12.5', '60', NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'O/S', 'O/S', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'IMPLANT', NULL, '60', '60', NULL, NULL, '', NULL, NULL, 208, 1),
(702, '2018-05-16 10:49:37', '2018-05-16 10:49:37', '05-16-2018', '05', '2018', '06-03-2018', '06', '2018', NULL, NULL, '29', NULL, 'PLAYING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', '15', '15', NULL, NULL, NULL, 'Good', 'ABC/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '8', '120', '60', NULL, NULL, '', NULL, 'PLAYING', 89, 1),
(703, '2018-05-16 12:18:20', '2018-05-16 12:18:20', '05-16-2018', '05', '2018', '06-03-2018', '06', '2018', NULL, NULL, '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', '0/S', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '37', '30', '30', NULL, NULL, '', NULL, 'WORK', 222, 1),
(704, '2018-06-11 10:04:05', '2018-06-11 10:04:05', '05-30-2018', '05', '2018', '06-28-2018', '06', '2018', '3', '3', '66', NULL, 'w', '1', 'No signs or Symptoms of TB', '[null]', '[null]', '30', '30', 'good', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '18', '60', '60', NULL, NULL, '', NULL, 'WORK', 115, 1),
(705, '2018-06-11 10:10:38', '2018-06-11 10:10:38', '5-25-2018', '5', '2018', '08-31-2018', '08', '2018', NULL, NULL, '61', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', '30', '30', 'GOOD', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '22', '30', '30', NULL, NULL, '', NULL, 'work', 86, 1),
(706, '2018-06-11 10:10:42', '2018-06-11 10:10:42', '5-25-2018', '5', '2018', '08-31-2018', '08', '2018', NULL, NULL, '61', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', '30', '30', 'GOOD', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '22', '30', '30', NULL, NULL, '', NULL, 'work', 86, 1),
(707, '2018-06-11 11:41:45', '2018-06-11 11:41:45', '04-13-2017', '04', '2017', '05-25-2017', '05', '2017', NULL, NULL, '63', NULL, 'W', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 223, 1),
(708, '2018-06-11 11:54:09', '2018-06-11 11:54:09', '05-28-2018', '05', '2018', '07-26-2018', '07', '2018', NULL, NULL, '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(709, '2018-06-11 11:54:10', '2018-06-11 11:54:10', '05-28-2018', '05', '2018', '07-26-2018', '07', '2018', NULL, NULL, '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(710, '2018-06-11 11:54:11', '2018-06-11 11:54:11', '05-28-2018', '05', '2018', '07-26-2018', '07', '2018', NULL, NULL, '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(711, '2018-06-11 11:54:12', '2018-06-11 11:54:12', '05-28-2018', '05', '2018', '07-26-2018', '07', '2018', NULL, NULL, '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(712, '2018-06-11 11:54:17', '2018-06-11 11:54:17', '05-28-2018', '05', '2018', '07-26-2018', '07', '2018', NULL, NULL, '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(713, '2018-06-11 11:54:41', '2018-06-11 11:54:41', '05-28-2018', '05', '2018', '07-26-2018', '07', '2018', NULL, NULL, '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(714, '2018-06-11 11:54:42', '2018-06-11 11:54:42', '05-28-2018', '05', '2018', '07-26-2018', '07', '2018', NULL, NULL, '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(715, '2018-06-13 09:15:59', '2018-06-13 09:15:59', '05-24-2018', '05', '2018', '07-25-2018', '07', '2018', NULL, NULL, '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'PILLS', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(716, '2018-06-13 09:29:28', '2018-06-13 09:29:28', '05-24-2018', '05', '2018', '06-20-2018', '06', '2018', '13', '13', '55', NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '21', '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 92, 1),
(717, '2018-06-13 10:55:00', '2018-06-13 10:55:00', '05-21-2018', '05', '2018', '08-30-2018', '08', '2018', '4', '4', '54', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '28', '90', '90', NULL, NULL, '', NULL, 'WORK', 74, 1),
(718, '2018-06-18 12:58:15', '2018-06-18 12:58:15', '10-07-2016', '10', '2016', '10-26-2016', '10', '2016', NULL, NULL, '50', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, '38', '19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', 'MUAC|+', 'NO', '39', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 224, 1),
(719, '2018-06-18 12:58:16', '2018-06-18 12:58:16', '10-07-2016', '10', '2016', '10-26-2016', '10', '2016', NULL, NULL, '50', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[[\"COUGH*\"]]', NULL, '38', '19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', 'MUAC|+', 'NO', '39', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 224, 1),
(720, '2018-06-18 16:31:27', '2018-06-18 16:31:27', '06-18-2018', '06', '2018', '07-04-2018', '07', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '36', '30', '30', NULL, NULL, '', NULL, 'WORK', 233, 1),
(721, '2018-06-26 17:36:52', '2018-06-26 17:36:52', '06-12-2018', '06', '2018', '06-28-2018', '06', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 238, 1),
(722, '2018-06-26 17:36:53', '2018-06-26 17:36:53', '06-12-2018', '06', '2018', '06-28-2018', '06', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 238, 1),
(723, '2018-06-26 17:36:54', '2018-06-26 17:36:54', '06-12-2018', '06', '2018', '06-28-2018', '06', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 238, 1),
(724, '2018-06-26 17:36:54', '2018-06-26 17:36:54', '06-12-2018', '06', '2018', '06-28-2018', '06', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 238, 1),
(725, '2018-06-26 17:36:59', '2018-06-26 17:36:59', '06-12-2018', '06', '2018', '06-28-2018', '06', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 238, 1),
(726, '2018-06-26 18:15:50', '2018-06-26 18:15:50', '6-9-2018', '6', '2018', '06-28-2018', '06', '2018', NULL, NULL, '62', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '6O', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '37', '30', '30', NULL, NULL, '', NULL, 'WORK', 239, 1),
(727, '2018-06-27 07:50:58', '2018-06-27 07:50:58', '06-02-2018', '06', '2018', '06-27-2018', '06', '2018', NULL, NULL, '77', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '30', '30', '30', NULL, NULL, '', NULL, 'WORK', 240, 1),
(728, '2018-06-27 07:50:59', '2018-06-27 07:50:59', '06-02-2018', '06', '2018', '06-27-2018', '06', '2018', NULL, NULL, '77', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '30', '30', '30', NULL, NULL, '', NULL, 'WORK', 240, 1),
(729, '2018-06-27 07:54:32', '2018-06-27 07:54:32', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, '1', '77', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '15', '56', '56', NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 240, 1),
(730, '2018-06-27 08:06:48', '2018-06-27 08:06:48', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '15.5', '15.5', '48', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '40', '60', '60', NULL, NULL, '', NULL, 'WORK', 55, 1),
(731, '2018-06-27 08:07:00', '2018-06-27 08:07:00', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '15.5', '15.5', '48', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '40', '60', '60', NULL, NULL, '', NULL, 'WORK', 55, 1),
(732, '2018-06-27 08:07:16', '2018-06-27 08:07:16', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '15.5', '15.5', '48', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '40', '60', '60', NULL, NULL, '', NULL, 'WORK', 55, 1),
(733, '2018-06-27 09:23:46', '2018-06-27 09:23:46', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '62', '62', '48', NULL, 'work', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'good', '30', '15', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'none', '38', '120', '60', NULL, NULL, '', NULL, 'WORK', 27, 1),
(734, '2018-06-27 09:39:22', '2018-06-27 09:39:22', '02-07-2018', '02', '2018', '03-07-2018', '03', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '25', '30', '30', NULL, NULL, '', NULL, 'WORK', 241, 1),
(735, '2018-06-27 09:43:15', '2018-06-27 09:43:15', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '4.5', '4.5', '64', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '15', '56', '56', NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 241, 1),
(736, '2018-06-27 09:43:15', '2018-06-27 09:43:15', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '4.5', '4.5', '64', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '15', '56', '56', NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 241, 1),
(737, '2018-06-27 09:51:52', '2018-06-27 09:51:52', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '10', '10', '49', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', NULL, '39', '60', '60', NULL, NULL, '', NULL, 'WORK', 224, 1),
(738, '2018-06-27 10:00:03', '2018-06-27 10:00:03', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '44', '44', '46', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/NVP', 'VL SUPRESING', NULL, '[null]', 'MUAC|+', 'NONE', '55', '120/60', '/60', NULL, NULL, '', NULL, 'WORK', 39, 1),
(739, '2018-06-27 10:47:02', '2018-06-27 10:47:02', '07-05-2018', '07', '2018', '06-27-2018', '06', '2018', NULL, NULL, '50', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'CODOMS', '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 242, 1),
(740, '2018-06-27 10:47:03', '2018-06-27 10:47:03', '07-05-2018', '07', '2018', '06-27-2018', '06', '2018', NULL, NULL, '50', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'CODOMS', '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 242, 1),
(741, '2018-06-27 10:47:03', '2018-06-27 10:47:03', '07-05-2018', '07', '2018', '06-27-2018', '06', '2018', NULL, NULL, '50', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'CODOMS', '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 242, 1),
(742, '2018-06-27 10:47:03', '2018-06-27 10:47:03', '07-05-2018', '07', '2018', '06-27-2018', '06', '2018', NULL, NULL, '50', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'CODOMS', '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 242, 1),
(743, '2018-06-27 10:50:49', '2018-06-27 10:50:49', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '1', '1', '50', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'CODOMS', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 242, 1),
(744, '2018-06-27 10:50:50', '2018-06-27 10:50:50', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '1', '1', '50', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'CODOMS', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 242, 1),
(745, '2018-06-27 10:59:31', '2018-06-27 10:59:31', '06-27-2018', '06', '2018', '05-08-2018', '05', '2018', NULL, NULL, '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', 'VL REPEATED', NULL, '[null]', 'MUAC|+', 'NONE', '39', '60', '60', NULL, NULL, '', NULL, 'WORK', 43, 1),
(746, '2018-06-27 11:30:43', '2018-06-27 11:30:43', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '15', '15', '54', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'inplant', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 99, 1),
(747, '2018-06-27 11:30:43', '2018-06-27 11:30:43', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '15', '15', '54', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'inplant', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 99, 1),
(748, '2018-06-27 11:30:43', '2018-06-27 11:30:43', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '15', '15', '54', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'inplant', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 99, 1),
(749, '2018-06-27 11:30:43', '2018-06-27 11:30:43', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '15', '15', '54', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'inplant', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 99, 1),
(750, '2018-06-27 11:36:00', '2018-06-27 11:36:00', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '26', '26', '69', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(751, '2018-06-27 12:00:23', '2018-06-27 12:00:23', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(752, '2018-06-27 12:00:24', '2018-06-27 12:00:24', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(753, '2018-06-27 12:00:25', '2018-06-27 12:00:25', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(754, '2018-06-27 12:00:25', '2018-06-27 12:00:25', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(755, '2018-06-27 12:00:25', '2018-06-27 12:00:25', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(756, '2018-06-27 12:00:26', '2018-06-27 12:00:26', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(757, '2018-06-27 12:00:26', '2018-06-27 12:00:26', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(758, '2018-06-27 12:00:26', '2018-06-27 12:00:26', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1);
INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(759, '2018-06-27 12:00:27', '2018-06-27 12:00:27', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(760, '2018-06-27 12:00:27', '2018-06-27 12:00:27', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(761, '2018-06-27 12:00:27', '2018-06-27 12:00:27', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(762, '2018-06-27 12:00:28', '2018-06-27 12:00:28', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '23', '23', '13', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '17', '60/240', '60', NULL, NULL, '', NULL, 'PLAYING', 168, 1),
(763, '2018-06-27 12:04:38', '2018-06-27 12:04:38', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, '52.5', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPRESSING', NULL, '[null]', 'MUAC|+', 'NO FP', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(764, '2018-06-27 12:09:54', '2018-06-27 12:09:54', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'INJECTABLE', '31', '120', '60', NULL, NULL, '', NULL, 'WORK', 165, 1),
(765, '2018-06-27 12:29:47', '2018-06-27 12:29:47', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '16', '16', '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', NULL, '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 92, 1),
(766, '2018-06-27 12:34:04', '2018-06-27 12:34:04', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'DEPO', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 67, 1),
(767, '2018-06-27 12:38:04', '2018-06-27 12:38:04', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '5.5', '5.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '25', '60', '60', NULL, NULL, '', NULL, NULL, 206, 1),
(768, '2018-06-27 12:43:12', '2018-06-27 12:43:12', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '5.5', '5.5', '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '50', '60', '60', NULL, NULL, '', NULL, 'WORK', 197, 1),
(769, '2018-06-27 12:53:48', '2018-06-27 12:53:48', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, '40', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '68', '120', '60', NULL, NULL, '', NULL, 'WORK', 184, 1),
(770, '2018-06-27 12:59:34', '2018-06-27 12:59:34', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '68', '60', '60', NULL, NULL, '', NULL, 'WORK', 184, 1),
(771, '2018-06-27 13:05:31', '2018-06-27 13:05:31', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '55', '60', '60', NULL, NULL, '', NULL, 'BED', 157, 1),
(772, '2018-06-27 13:05:32', '2018-06-27 13:05:32', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '55', '60', '60', NULL, NULL, '', NULL, 'BED', 157, 1),
(773, '2018-06-27 13:05:32', '2018-06-27 13:05:32', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '55', '60', '60', NULL, NULL, '', NULL, 'BED', 157, 1),
(774, '2018-06-27 13:05:33', '2018-06-27 13:05:33', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '55', '60', '60', NULL, NULL, '', NULL, 'BED', 157, 1),
(775, '2018-06-27 14:39:11', '2018-06-27 14:39:11', '06-27-2018', '06', '2018', '07-25-2018', '07', '2018', NULL, NULL, '44', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'ABST', '20', '30', '30', NULL, NULL, '', NULL, 'WORK', 243, 1),
(776, '2018-06-27 15:11:52', '2018-06-27 15:11:52', '05-31-2018', '05', '2018', '06-27-2018', '06', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'CODOMS', '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 242, 1),
(777, '2018-06-27 15:16:59', '2018-06-27 15:16:59', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', '1', '1', '50', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'CODOMS', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 242, 1),
(778, '2018-06-28 15:25:55', '2018-06-28 15:25:55', '09-06-2013', '09', '2013', '10-04-2014', '10', '2014', NULL, NULL, '45', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[[\"FEVER*\"]]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '60', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 246, 1),
(779, '2018-06-28 15:25:55', '2018-06-28 15:25:55', '09-06-2013', '09', '2013', '10-04-2014', '10', '2014', NULL, NULL, '45', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[[\"FEVER*\"]]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, NULL, '60', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 246, 1),
(780, '2018-06-28 15:34:45', '2018-06-28 15:34:45', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, '46', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 246, 1),
(781, '2018-06-28 16:17:16', '2018-06-28 16:17:16', '12-03-2014', '12', '2014', '01-07-2015', '01', '2015', NULL, NULL, '61.7', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, 'NONE', '47', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 247, 1),
(782, '2018-06-28 16:27:37', '2018-06-28 16:27:37', '06-27-2018', '06', '2018', '08-25-2018', '08', '2018', '36.5', '36.5', '57.5', NULL, 'WORK', '4', 'Currently on TB Treatment', '[null]', '[[\"COUGH*\"]]', NULL, '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/NVP', 'VL DUE OCT', NULL, '[null]', 'MUAC|+', 'NONE', NULL, '30/60', '30', 'TB', NULL, '10-04-2017', NULL, 'WORK', 247, 1),
(783, '2018-06-29 08:25:55', '2018-06-29 08:25:55', '06-28-2018', '06', '2018', '08-30-2018', '08', '2018', NULL, NULL, '62', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 136, 1),
(784, '2018-06-29 09:18:18', '2018-06-29 09:18:18', '06-29-2018', '06', '2018', '07-26-2018', '07', '2018', '1', '1', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'none', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 119, 1),
(785, '2018-06-29 09:18:19', '2018-06-29 09:18:19', '06-29-2018', '06', '2018', '07-26-2018', '07', '2018', '1', '1', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'none', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 119, 1),
(786, '2018-06-29 09:58:37', '2018-06-29 09:58:37', '06-29-2018', '06', '2018', '07-26-2018', '07', '2018', '1', '1', '62', NULL, 'work', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'good', '60', '30', NULL, NULL, NULL, 'Good', 'tdf/3tc/efv', NULL, NULL, '[null]', 'MUAC|+', 'none', '37', '30', '30', NULL, NULL, '', NULL, 'work', 239, 1),
(787, '2018-06-29 10:17:36', '2018-06-29 10:17:36', '06-29-2018', '06', '2018', '08-30-2018', '08', '2018', '9', '9', '63', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 75, 1),
(788, '2018-06-30 13:32:22', '2018-06-30 13:32:22', '06-27-2018', '06', '2018', '07-11-2018', '07', '2018', NULL, NULL, '58.7', NULL, 'WORK', '3', 'Suspect', '[null]', '[[\"COUGH*\"]]', NULL, '30', '15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '38', NULL, NULL, NULL, NULL, '', NULL, 'AMB BED', 248, 1),
(789, '2018-06-30 13:43:30', '2018-06-30 13:43:30', '06-20-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'WORK1', NULL, 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', NULL, '17', '60', '60', NULL, NULL, '', NULL, 'WORK', 161, 1),
(790, '2018-06-30 14:15:12', '2018-06-30 14:15:12', '06-18-2018', '06', '2018', '07-24-2018', '07', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '37', '30', '30', NULL, NULL, '', NULL, 'WORK', 222, 1),
(791, '2018-06-30 14:21:16', '2018-06-30 14:21:16', '06-28-2018', '06', '2018', '08-30-2018', '08', '2018', '10', '10', '55', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NO FP', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 158, 1),
(792, '2018-07-04 08:29:26', '2018-07-04 08:29:26', '07-02-2018', '07', '2018', '08-01-2018', '08', '2018', NULL, NULL, '60.1', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '38', '30', '30', 'SPUTUM DONE NEG', NULL, '', NULL, 'WORK', 248, 1),
(793, '2018-07-04 08:33:52', '2018-07-04 08:33:52', '07-02-2018', '07', '2018', '08-01-2018', '08', '2018', '5', '5', '51.2', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '52', '30', '30', 'TO DO SPUTUM EXAM', NULL, '', NULL, 'WORK', 103, 1),
(794, '2018-07-04 08:40:25', '2018-07-04 08:40:25', '07-02-2018', '07', '2018', '08-01-2018', '08', '2018', '6', '39', '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/ATV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '30', NULL, NULL, '', NULL, 'WORK', 26, 1),
(795, '2018-07-04 08:40:26', '2018-07-04 08:40:26', '07-02-2018', '07', '2018', '08-01-2018', '08', '2018', '6', '39', '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/ATV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '30', NULL, NULL, '', NULL, 'WORK', 26, 1),
(796, '2018-07-04 08:43:48', '2018-07-04 08:43:48', '07-04-2018', '07', '2018', '08-05-2018', '08', '2018', '48', '48', '50.4', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '0/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 57, 1),
(797, '2018-07-04 08:49:54', '2018-07-04 08:49:54', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '10.5', '10.5', '51', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DUE MAY', NULL, '[null]', 'MUAC|+', 'ABS', '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 58, 1),
(798, '2018-07-04 08:53:41', '2018-07-04 08:53:41', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '22', '22', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE MARCH 2019', NULL, '[null]', 'MUAC|+', 'NO/FP', '35', '60', '60', NULL, NULL, '', NULL, 'WORK', 203, 1),
(799, '2018-07-04 09:01:02', '2018-07-04 09:01:02', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '12.5', '12.5', '51', NULL, 'work', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'o/s', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE MARCH 2018', NULL, '[null]', 'MUAC|+', 'NO/FP', '30', '60', '60', NULL, NULL, '', NULL, 'WORK', 121, 1),
(800, '2018-07-04 09:04:17', '2018-07-04 09:04:17', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '7', '7', '44', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL NEXT VISIT', NULL, '[null]', 'MUAC|+', 'NO/FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 126, 1),
(801, '2018-07-04 09:08:10', '2018-07-04 09:08:10', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '26', '26', '40', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'ABS', '58', '60', '60', NULL, NULL, '', NULL, 'WORK', 70, 1),
(802, '2018-07-04 09:11:12', '2018-07-04 09:11:12', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '17', '17', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL NEXT VISIT', NULL, '[null]', 'MUAC|+', 'NO FP', '52', '60', '60', NULL, NULL, '', NULL, 'WORK', 163, 1),
(803, '2018-07-04 09:14:25', '2018-07-04 09:14:25', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', NULL, NULL, '61', NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', NULL, '51', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 198, 1),
(804, '2018-07-04 09:18:25', '2018-07-04 09:18:25', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '33', '33', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/SWORK', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE DEC 2018', NULL, '[null]', 'MUAC|+', 'NO FP', '36', '60', '60', NULL, NULL, '', NULL, 'WORK', 183, 1),
(805, '2018-07-04 09:22:14', '2018-07-04 09:22:14', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', NULL, NULL, '68', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DUE MAY 2018', NULL, '[null]', 'MUAC|+', 'NO/FP', '55', '60', '60', NULL, NULL, '', NULL, 'WORK', 175, 1),
(806, '2018-07-04 09:25:24', '2018-07-04 09:25:24', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '64', '64', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE DEC 2018', NULL, '[null]', NULL, NULL, '40', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 214, 1),
(807, '2018-07-04 09:28:56', '2018-07-04 09:28:56', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '13.5', '13.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDDF/3TC/EFV', 'VL DUE FEB 2019', NULL, '[null]', 'MUAC|+', NULL, '52', '60', '60', NULL, NULL, '', NULL, 'WORK', 88, 1),
(808, '2018-07-04 09:31:50', '2018-07-04 09:31:50', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '20.5', '20.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 179, 1),
(809, '2018-07-04 09:35:35', '2018-07-04 09:35:35', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '22', '22', '49.1', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DEC 2018', NULL, '[null]', 'MUAC|+', 'NO/FP', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 181, 1),
(810, '2018-07-04 09:38:33', '2018-07-04 09:38:33', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', NULL, '29.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NO/FP', '65', '60', '60', NULL, NULL, '', NULL, 'WORK', 144, 1),
(811, '2018-07-04 09:43:10', '2018-07-04 09:43:10', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '34.5', '34.5', '61', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'NOT DETECTED', NULL, '[null]', 'MUAC|+', 'NO FP', '33', '60', '60', NULL, NULL, '', NULL, 'WORK', 71, 1),
(812, '2018-07-04 09:46:57', '2018-07-04 09:46:57', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING 14/3/2018', NULL, '[null]', NULL, NULL, '21', '60', '60', NULL, NULL, '', NULL, NULL, 37, 1),
(813, '2018-07-04 09:50:15', '2018-07-04 09:50:15', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '27', '27', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE SEPT', NULL, '[null]', 'MUAC|+', 'NO FP', '45', '60', '60', NULL, NULL, '', NULL, 'WORK', 151, 1),
(814, '2018-07-04 09:58:07', '2018-07-04 09:58:07', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', '20', '20', 'REPRESENTED', NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DUE NOV 2018', NULL, '[null]', NULL, NULL, '63', '60', '60', NULL, NULL, '', NULL, NULL, 94, 1),
(815, '2018-07-04 10:17:32', '2018-07-04 10:17:32', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', NULL, NULL, '74', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/NVP', 'VL NEXT VISIT', NULL, '[null]', 'MUAC|+', 'NO/FP', '52', '120', '60', NULL, NULL, '', NULL, 'WORK', 249, 1),
(816, '2018-07-18 06:41:08', '2018-07-18 06:41:08', '08-31-2016', '08', '2016', '09-28-2016', '09', '2016', NULL, NULL, '43.6', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '49', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 250, 1),
(817, '2018-07-18 06:52:46', '2018-07-18 06:52:46', '07-09-2018', '07', '2018', '07-25-2018', '07', '2018', NULL, NULL, '42', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'POOR', NULL, 'O/S', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 250, 1),
(818, '2018-07-18 07:06:02', '2018-07-18 07:06:02', '07-04-2018', '07', '2018', '08-01-2018', '08', '2018', NULL, NULL, '34', NULL, 'WORK', '4', 'Suspect', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|-', 'NO FP', '22', '30', '30', NULL, NULL, '', NULL, 'WORK', 251, 1),
(819, '2018-07-18 07:53:13', '2018-07-18 07:53:13', '06-27-2018', '06', '2018', '07-26-2018', '07', '2018', NULL, NULL, '56', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '30', '30', '30', NULL, NULL, '', NULL, 'WORK', 252, 1),
(820, '2018-07-18 08:08:39', '2018-07-18 08:08:39', '07-16-2018', '07', '2018', '08-01-2018', '08', '2018', NULL, NULL, '75', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '58', '30', '30', NULL, NULL, '', NULL, 'WORK', 253, 1),
(821, '2018-07-23 07:34:11', '2018-07-23 07:34:11', '07-20-2018', '07', '2018', '08-15-2018', '08', '2018', '15', '15', '72', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 164, 1),
(822, '2018-07-23 07:58:15', '2018-07-23 07:58:15', '07-19-2018', '07', '2018', '09-19-2018', '09', '2018', NULL, NULL, '10', NULL, 'PLAYING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '1', '60', '60', NULL, NULL, '', NULL, 'PLAYING', 196, 1),
(823, '2018-07-23 08:04:50', '2018-07-23 08:04:50', '07-20-2018', '07', '2018', '10-05-2018', '10', '2018', '90', '91', '61', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', 'O/S', NULL, NULL, NULL, NULL, 'Fair', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '19', '120', '60', NULL, NULL, '', NULL, 'WORK', 190, 1),
(824, '2018-07-23 08:13:34', '2018-07-23 08:13:34', '07-19-2018', '07', '2018', '09-19-2018', '09', '2018', '13.5', '13.5', '63', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[null]', 'MUAC|+', 'IMPLANT', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 208, 1),
(825, '2018-07-23 08:33:27', '2018-07-23 08:33:27', '05-27-2015', '05', '2015', '06-24-2015', '06', '2015', NULL, NULL, '26.5', NULL, 'PLAYING', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'AZT/3TC/EFV', 'DONE TODAY', NULL, '[null]', 'MUAC|+', 'NO', '11', '60/60', '30', NULL, NULL, '', NULL, 'PLAYING', 256, 1),
(826, '2018-07-23 08:40:07', '2018-07-23 08:40:07', '07-19-2018', '07', '2018', '09-05-2018', '09', '2018', '33', '33', NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, 'AZT/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '120', '60', NULL, NULL, '', NULL, 'REPRESENTED', 256, 1),
(827, '2018-07-23 09:12:41', '2018-07-23 09:12:41', '07-19-2018', '07', '2018', '09-05-2018', '09', '2018', '28', '28', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', 'O/S', NULL, NULL, NULL, NULL, 'Fair', 'ABC/3TC/ATV', 'VL 4864(NON SUPPRESSING)', NULL, '[null]', 'MUAC|+', 'NO FP', '33', '60', '60', NULL, NULL, '', NULL, 'WORK', 159, 1),
(828, '2018-07-23 09:12:42', '2018-07-23 09:12:42', '07-19-2018', '07', '2018', '09-05-2018', '09', '2018', '28', '28', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', 'O/S', NULL, NULL, NULL, NULL, 'Fair', 'ABC/3TC/ATV', 'VL 4864(NON SUPPRESSING)', NULL, '[null]', 'MUAC|+', 'NO FP', '33', '60', '60', NULL, NULL, '', NULL, 'WORK', 159, 1),
(829, '2018-07-23 10:08:06', '2018-07-23 10:08:06', '07-19-2018', '07', '2018', '09-05-2018', '09', '2018', '53', '53', '78', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[null]', 'MUAC|+', 'IUD', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 216, 1),
(830, '2018-07-23 10:08:07', '2018-07-23 10:08:07', '07-19-2018', '07', '2018', '09-05-2018', '09', '2018', '53', '53', '78', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[null]', 'MUAC|+', 'IUD', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 216, 1),
(831, '2018-07-23 17:54:36', '2018-07-23 17:54:36', '06-27-2018', '06', '2018', '07-27-2018', '07', '2018', '3', '3', NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 143, 1),
(832, '2018-07-23 17:58:47', '2018-07-23 17:58:47', '05-28-2018', '05', '2018', '07-26-2018', '07', '2018', NULL, NULL, '64', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 87, 1),
(833, '2018-07-23 17:58:48', '2018-07-23 17:58:48', '05-28-2018', '05', '2018', '07-26-2018', '07', '2018', NULL, NULL, '64', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 87, 1),
(834, '2018-07-23 18:07:15', '2018-07-23 18:07:15', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', NULL, NULL, NULL, NULL, NULL, NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 150, 1),
(835, '2018-07-23 18:07:16', '2018-07-23 18:07:16', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', NULL, NULL, NULL, NULL, NULL, NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 150, 1),
(836, '2018-07-23 18:07:19', '2018-07-23 18:07:19', '07-04-2018', '07', '2018', '09-05-2018', '09', '2018', NULL, NULL, NULL, NULL, NULL, NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 150, 1),
(837, '2018-07-23 18:22:09', '2018-07-23 18:22:09', '05-30-2018', '05', '2018', '07-25-2018', '07', '2018', NULL, NULL, NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 139, 1),
(838, '2018-07-23 18:28:17', '2018-07-23 18:28:17', '06-27-2018', '06', '2018', '08-29-2018', '08', '2018', NULL, NULL, '60', NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '26', '60', '60', NULL, NULL, '', NULL, 'WORK', 167, 1),
(839, '2018-07-23 18:32:36', '2018-07-23 18:32:36', '05-30-2018', '05', '2018', '07-25-2018', '07', '2018', NULL, NULL, '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '57', '60', '60', NULL, NULL, '', NULL, 'WORK', 13, 1),
(840, '2018-07-23 18:35:53', '2018-07-23 18:35:53', '05-30-2018', '05', '2018', '07-25-2018', '07', '2018', NULL, NULL, '68', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '30', '60', '60', NULL, NULL, '', NULL, 'WORK', 187, 1),
(841, '2018-07-23 18:39:02', '2018-07-23 18:39:02', '06-06-2018', '06', '2018', '08-01-2018', '08', '2018', NULL, NULL, '45', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO', '44', '60', '60', NULL, NULL, '', NULL, 'WORK', 178, 1),
(842, '2018-07-24 07:29:49', '2018-07-24 07:29:49', '05-03-2018', '05', '2018', '07-04-2018', '07', '2018', '2.5', '2.5', '65', NULL, 'work', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', 'O/S', NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '43', '60', '60', NULL, NULL, '', NULL, 'work', 166, 1),
(843, '2018-07-27 10:55:36', '2018-07-27 10:55:36', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(844, '2018-07-27 10:55:36', '2018-07-27 10:55:36', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(845, '2018-07-27 10:55:49', '2018-07-27 10:55:49', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(846, '2018-07-27 10:55:49', '2018-07-27 10:55:49', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(847, '2018-07-27 10:55:49', '2018-07-27 10:55:49', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(848, '2018-07-27 10:55:49', '2018-07-27 10:55:49', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(849, '2018-07-27 10:55:49', '2018-07-27 10:55:49', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(850, '2018-07-27 10:55:50', '2018-07-27 10:55:50', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(851, '2018-07-27 10:55:50', '2018-07-27 10:55:50', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(852, '2018-07-27 10:55:50', '2018-07-27 10:55:50', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(853, '2018-07-27 10:55:50', '2018-07-27 10:55:50', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '84', '84', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 24, 1),
(854, '2018-07-27 10:59:17', '2018-07-27 10:59:17', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '4.5', '4.5', '65', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '43', '60', '60', NULL, NULL, '', NULL, 'WORK', 166, 1),
(855, '2018-07-27 11:04:14', '2018-07-27 11:04:14', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '42', '42', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '38', '120', '60', NULL, NULL, '', NULL, 'WORK', 134, 1),
(856, '2018-07-27 11:07:51', '2018-07-27 11:07:51', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE MARCH 2019', NULL, '[null]', NULL, 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 204, 1),
(857, '2018-07-27 11:11:28', '2018-07-27 11:11:28', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '28', '28', '55', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'ABS', '39', '60', '60', NULL, NULL, '', NULL, 'WORK', 185, 1),
(858, '2018-07-27 11:16:41', '2018-07-27 11:16:41', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '32', '32', '17.5', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, '60', '60', NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO', NULL, '300', '60', NULL, NULL, '', NULL, 'WORK', 52, 1),
(859, '2018-07-27 11:16:42', '2018-07-27 11:16:42', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '32', '32', '17.5', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, '60', '60', NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO', NULL, '300', '60', NULL, NULL, '', NULL, 'WORK', 52, 1),
(860, '2018-07-27 11:21:12', '2018-07-27 11:21:12', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '56', '56', '78.7', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 29, 1),
(861, '2018-07-27 11:28:45', '2018-07-27 11:28:45', '07-25-2018', '07', '2018', NULL, NULL, NULL, '19.5', '19.5', '77.4', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 211, 1),
(862, '2018-07-27 11:28:55', '2018-07-27 11:28:55', '07-25-2018', '07', '2018', NULL, NULL, NULL, '19.5', '19.5', '77.4', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 211, 1),
(863, '2018-07-27 11:28:55', '2018-07-27 11:28:55', '07-25-2018', '07', '2018', NULL, NULL, NULL, '19.5', '19.5', '77.4', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 211, 1),
(864, '2018-07-27 11:33:10', '2018-07-27 11:33:10', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '28', '28', '58.4', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE MARCH 2019', NULL, '[null]', 'MUAC|+', 'IMPLANT', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 50, 1),
(865, '2018-07-27 11:37:20', '2018-07-27 11:37:20', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '47', '47', '22.5', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', 'VL DUE OCT 2019', NULL, '[null]', 'MUAC|+', 'CHILD', '4', '360', '60', NULL, NULL, '', NULL, 'WORK', 51, 1),
(866, '2018-07-27 11:43:39', '2018-07-27 11:43:39', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '35.5', '35.5', '58.9', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', 'MUAC|+', 'NO FP', '57', '60', '60', NULL, NULL, '', NULL, 'WORK', 13, 1),
(867, '2018-07-27 11:47:21', '2018-07-27 11:47:21', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '1', '1', '43', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'ABS', '20', '60', '60', NULL, NULL, '', NULL, 'WORK', 243, 1),
(868, '2018-07-27 11:54:27', '2018-07-27 11:54:27', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '22', '22', '55', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL OVER DUE', NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 160, 1),
(869, '2018-07-27 12:01:18', '2018-07-27 12:01:18', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', NULL, NULL, '60.9', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '42', '120', '60', NULL, NULL, '', NULL, 'WORK', 139, 1),
(870, '2018-07-27 12:01:30', '2018-07-27 12:01:30', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', NULL, NULL, '60.9', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '42', '120', '60', NULL, NULL, '', NULL, 'WORK', 139, 1),
(871, '2018-07-27 12:01:30', '2018-07-27 12:01:30', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', NULL, NULL, '60.9', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '42', '120', '60', NULL, NULL, '', NULL, 'WORK', 139, 1),
(872, '2018-07-27 12:08:06', '2018-07-27 12:08:06', '07-25-2018', '07', '2018', '08-29-2018', '08', '2018', '12', '12', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '25', '30', '30', NULL, NULL, '', NULL, NULL, 210, 1),
(873, '2018-07-27 12:08:07', '2018-07-27 12:08:07', '07-25-2018', '07', '2018', '08-29-2018', '08', '2018', '12', '12', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '25', '30', '30', NULL, NULL, '', NULL, NULL, 210, 1),
(874, '2018-07-27 12:22:36', '2018-07-27 12:22:36', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '17.5', '17.5', '48.6', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE SEPT', NULL, '[null]', 'MUAC|+', 'IUD', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 188, 1),
(875, '2018-07-27 12:27:26', '2018-07-27 12:27:26', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '18.5', '18.5', '59.6', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE FEB 2019', NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 180, 1),
(876, '2018-07-27 12:27:26', '2018-07-27 12:27:26', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '18.5', '18.5', '59.6', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE FEB 2019', NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 180, 1),
(877, '2018-07-27 12:43:02', '2018-07-27 12:43:02', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '59.5', '59.5', '50.5', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', 'MUAC|+', NULL, '33', '60', '60', NULL, NULL, '', NULL, 'WORK', 28, 1),
(878, '2018-07-27 12:45:49', '2018-07-27 12:45:49', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', NULL, NULL, '54', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DEC', NULL, '[null]', 'MUAC|+', 'NO FP', '53', '60', '60', NULL, NULL, '', NULL, NULL, 191, 1),
(879, '2018-07-27 12:56:01', '2018-07-27 12:56:01', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '49', '49', '76', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 20, 1),
(880, '2018-07-27 12:56:18', '2018-07-27 12:56:18', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '49', '49', '76', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 20, 1),
(881, '2018-07-27 12:56:19', '2018-07-27 12:56:19', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '49', '49', '76', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 20, 1),
(882, '2018-07-27 12:56:19', '2018-07-27 12:56:19', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '49', '49', '76', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 20, 1),
(883, '2018-07-27 12:56:20', '2018-07-27 12:56:20', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '49', '49', '76', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 20, 1),
(884, '2018-07-27 12:56:21', '2018-07-27 12:56:21', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '49', '49', '76', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 20, 1),
(885, '2018-07-27 12:56:21', '2018-07-27 12:56:21', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '49', '49', '76', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 20, 1),
(886, '2018-07-27 13:00:28', '2018-07-27 13:00:28', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 40, 1),
(887, '2018-07-27 13:05:26', '2018-07-27 13:05:26', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '32', '32', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NO FP', '23', '60', '60', NULL, NULL, '', NULL, 'WORK', 176, 1),
(888, '2018-07-27 13:13:44', '2018-07-27 13:13:44', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '51', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 131, 1),
(889, '2018-07-27 13:18:31', '2018-07-27 13:18:31', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', 'VL DONE', NULL, '[null]', 'MUAC|+', 'PREGNANT', '20', '120', '60', NULL, NULL, '', NULL, 'WORK', 137, 1),
(890, '2018-07-27 13:23:45', '2018-07-27 13:23:45', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '6', '6', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 123, 1),
(891, '2018-07-27 13:36:48', '2018-07-27 13:36:48', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '84', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 17, 1),
(892, '2018-07-27 13:37:00', '2018-07-27 13:37:00', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '84', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 17, 1),
(893, '2018-07-27 13:37:01', '2018-07-27 13:37:01', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '84', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 17, 1),
(894, '2018-07-27 13:37:03', '2018-07-27 13:37:03', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '84', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 17, 1),
(895, '2018-07-27 14:46:39', '2018-07-27 14:46:39', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 111, 1),
(896, '2018-07-27 14:46:41', '2018-07-27 14:46:41', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 111, 1),
(897, '2018-07-27 14:50:28', '2018-07-27 14:50:28', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '8', '8', '62', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 146, 1);
INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(898, '2018-07-27 14:55:42', '2018-07-27 14:55:42', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '5', '5', '69', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '18', '60', '60', NULL, 'PREG/7/19/2018', '', NULL, 'WORK', 115, 1),
(899, '2018-07-27 14:56:00', '2018-07-27 14:56:00', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '5', '5', '69', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '18', '60', '60', NULL, 'PREG/7/19/2018', '', NULL, 'WORK', 115, 1),
(900, '2018-07-27 14:56:10', '2018-07-27 14:56:10', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '5', '5', '69', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '18', '60', '60', NULL, 'PREG/7/19/2018', '', NULL, 'WORK', 115, 1),
(901, '2018-07-27 15:19:56', '2018-07-27 15:19:56', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '3', '3', '62', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '37', '60', '60', NULL, NULL, '', NULL, 'WORK', 239, 1),
(902, '2018-07-27 15:29:01', '2018-07-27 15:29:01', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '55', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 87, 1),
(903, '2018-07-27 15:34:15', '2018-07-27 15:34:15', '07-26-2018', '07', '2018', '09-26-2018', '09', '2018', '18.5', '18.5', '53', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '37', '60', '60', NULL, NULL, '', NULL, 'WORK', 54, 1),
(904, '2018-07-27 15:51:10', '2018-07-27 15:51:10', '07-26-2018', '07', '2018', '09-26-2018', '09', '2018', '18', '18', 'REPRESENTED', NULL, NULL, NULL, NULL, '[null]', '[null]', 'GOOD', '10', '10', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '2', '60', '60', NULL, NULL, '', NULL, NULL, 152, 1),
(905, '2018-07-27 15:51:10', '2018-07-27 15:51:10', '07-26-2018', '07', '2018', '09-26-2018', '09', '2018', '18', '18', 'REPRESENTED', NULL, NULL, NULL, NULL, '[null]', '[null]', 'GOOD', '10', '10', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, '2', '60', '60', NULL, NULL, '', NULL, NULL, 152, 1),
(906, '2018-07-27 15:59:09', '2018-07-27 15:59:09', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '5', '5', '59', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 105, 1),
(907, '2018-07-27 15:59:12', '2018-07-27 15:59:12', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '5', '5', '59', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 105, 1),
(908, '2018-07-28 10:58:18', '2018-07-28 10:58:18', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '2', '2', '69', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '24', '60', '60', NULL, NULL, '', NULL, 'WORK', 119, 1),
(909, '2018-07-28 11:02:31', '2018-07-28 11:02:31', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '16', '16', '55', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '24', '60', '60', NULL, '38/3/2018', '', NULL, 'WORK', 80, 1),
(910, '2018-07-30 12:18:11', '2018-07-30 12:18:11', '06-29-2017', '06', '2017', '07-27-2017', '07', '2017', NULL, NULL, '30', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 223, 1),
(911, '2018-07-30 12:41:08', '2018-07-30 12:41:08', '03-19-2013', '03', '2013', '04-19-2013', '04', '2013', NULL, NULL, '44', NULL, 'WORK', '1', 'Suspect', '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', 'MUAC|+', 'NONE', '35', NULL, NULL, NULL, NULL, '', NULL, 'WORK', 258, 1),
(912, '2018-07-30 14:44:15', '2018-07-30 14:44:15', '07-25-2018', '07', '2018', '08-29-2018', '08', '2018', NULL, NULL, '41', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '33', '30', '30', NULL, NULL, '', NULL, 'WORK', 259, 1),
(913, '2018-07-30 15:19:53', '2018-07-30 15:19:53', '02-23-2018', '02', '2018', '03-28-2018', '03', '2018', NULL, NULL, '53', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', '38', '30', '30', NULL, NULL, '', NULL, 'WORK', 260, 1),
(914, '2018-07-30 15:22:16', '2018-07-30 15:22:16', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '55', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, 'O/S', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'BF', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 260, 1),
(915, '2018-07-30 15:47:56', '2018-07-30 15:47:56', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'DTF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 111, 1),
(916, '2018-07-30 15:47:57', '2018-07-30 15:47:57', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'DTF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 111, 1),
(917, '2018-07-30 15:47:57', '2018-07-30 15:47:57', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'DTF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 111, 1),
(918, '2018-07-30 15:53:18', '2018-07-30 15:53:18', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '6', '6', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', '24', '60', '60', NULL, NULL, '', NULL, 'WORK', 238, 1),
(919, '2018-07-30 15:57:18', '2018-07-30 15:57:18', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '24', '24', '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 82, 1),
(920, '2018-07-30 16:03:14', '2018-07-30 16:03:14', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '1', '1', '56', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', '30', '60', '60', NULL, NULL, '', NULL, 'WORK', 252, 1),
(921, '2018-07-30 16:03:15', '2018-07-30 16:03:15', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '1', '1', '56', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', '30', '60', '60', NULL, NULL, '', NULL, 'WORK', 252, 1),
(922, '2018-07-30 16:17:26', '2018-07-30 16:17:26', '07-28-2018', '07', '2018', '09-27-2018', '09', '2018', '17', '17', '63', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL NEXT VISIT', NULL, '[null]', 'MUAC|+', 'PILLS', '31', '60', '60', NULL, NULL, '', NULL, 'WORK', 62, 1),
(923, '2018-07-30 16:20:40', '2018-07-30 16:20:40', '07-27-2018', '07', '2018', '10-24-2018', '10', '2018', '18', '18', '72.9', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '30', '90', '90', NULL, NULL, '', NULL, 'WORK', 187, 1),
(924, '2018-07-30 16:25:19', '2018-07-30 16:25:19', '07-28-2018', '07', '2018', '09-26-2018', '09', '2018', '5.5', '5.5', '57', NULL, 'WORK', '2', 'Suspect', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', 'SPUTUM', NULL, '', NULL, 'WORK', 91, 1),
(925, '2018-07-30 16:25:19', '2018-07-30 16:25:19', '07-28-2018', '07', '2018', '09-26-2018', '09', '2018', '5.5', '5.5', '57', NULL, 'WORK', '2', 'Suspect', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', 'SPUTUM', NULL, '', NULL, 'WORK', 91, 1),
(926, '2018-07-30 16:29:58', '2018-07-30 16:29:58', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '8.5', '8.5', '50.1', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', 'MUAC|+', 'NONE', '45', '60', '60', NULL, NULL, '', NULL, 'WORK', 155, 1),
(927, '2018-07-30 16:33:06', '2018-07-30 16:33:06', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '6', '6', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 135, 1),
(928, '2018-07-30 16:33:06', '2018-07-30 16:33:06', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '6', '6', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 135, 1),
(929, '2018-07-30 16:33:07', '2018-07-30 16:33:07', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '6', '6', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 135, 1),
(930, '2018-07-30 16:35:27', '2018-07-30 16:35:27', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '36', '60', '60', NULL, NULL, '', NULL, NULL, 138, 1),
(931, '2018-07-30 16:35:27', '2018-07-30 16:35:27', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '36', '60', '60', NULL, NULL, '', NULL, NULL, 138, 1),
(932, '2018-07-30 16:35:28', '2018-07-30 16:35:28', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '36', '60', '60', NULL, NULL, '', NULL, NULL, 138, 1),
(933, '2018-07-30 17:31:53', '2018-07-30 17:31:53', '07-26-2018', '07', '2018', '09-26-2018', '09', '2018', NULL, NULL, NULL, NULL, 'represented', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '28', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 156, 1),
(934, '2018-07-30 17:31:54', '2018-07-30 17:31:54', '07-26-2018', '07', '2018', '09-26-2018', '09', '2018', NULL, NULL, NULL, NULL, 'represented', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '28', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 156, 1),
(935, '2018-07-30 17:36:01', '2018-07-30 17:36:01', '07-26-2018', '07', '2018', '09-26-2018', '09', '2018', NULL, NULL, '58', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 11, 1),
(936, '2018-07-30 17:41:24', '2018-07-30 17:41:24', '07-27-2018', '07', '2018', '08-30-2018', '08', '2018', '4', '4', '42.9', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 143, 1),
(937, '2018-07-30 17:41:25', '2018-07-30 17:41:25', '07-27-2018', '07', '2018', '08-30-2018', '08', '2018', '4', '4', '42.9', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 143, 1),
(938, '2018-07-30 17:41:26', '2018-07-30 17:41:26', '07-27-2018', '07', '2018', '08-30-2018', '08', '2018', '4', '4', '42.9', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'BF', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 143, 1),
(939, '2018-07-30 17:47:43', '2018-07-30 17:47:43', '07-26-2018', '07', '2018', '09-26-2018', '09', '2018', '14.5', '14.5', '54', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE AUG', NULL, '[null]', 'MUAC|+', 'DEPO', '30', '60', '60', NULL, NULL, '', NULL, 'WORK', 113, 1),
(940, '2018-07-31 09:50:56', '2018-07-31 09:50:56', '04-11-2018', '04', '2018', '07-25-2018', '07', '2018', NULL, NULL, '55', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '15', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '25', '15', '15', NULL, 'PREG,ANC 280,EDD JULY 2018', '', NULL, 'WORK', 262, 1),
(941, '2018-07-31 09:54:59', '2018-07-31 09:54:59', '07-04-2018', '07', '2018', '07-30-2018', '07', '2018', '1.5', '1.5', '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'POOR', NULL, '15', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, 'SHE HAS RX', NULL, NULL, NULL, '', NULL, 'WORK', 262, 1),
(942, '2018-07-31 09:59:41', '2018-07-31 09:59:41', '07-30-2018', '07', '2018', '08-30-2018', '08', '2018', '2.5', '2.5', '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'POOR', NULL, 'O/S', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'BF', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 262, 1),
(943, '2018-07-31 10:00:01', '2018-07-31 10:00:01', '07-30-2018', '07', '2018', '08-30-2018', '08', '2018', '2.5', '2.5', '56', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'POOR', NULL, 'O/S', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'BF', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 262, 1),
(944, '2018-08-02 09:35:54', '2018-08-02 09:35:54', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '8', '8', '11.5', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '10', '10', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'none', '2', '120', '60', NULL, NULL, '', NULL, 'PLAYING', 112, 1),
(945, '2018-08-02 09:36:07', '2018-08-02 09:36:07', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '8', '8', '11.5', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '10', '10', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'none', '2', '120', '60', NULL, NULL, '', NULL, 'PLAYING', 112, 1),
(946, '2018-08-02 09:52:24', '2018-08-02 09:52:24', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '18', '18', '15', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '10', '10', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '2', '120', '60', NULL, NULL, '', NULL, 'PLAYING', 220, 1),
(947, '2018-08-02 10:10:04', '2018-08-02 10:10:04', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '27', '27', '45', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '44', '60', '60', NULL, NULL, '', NULL, 'WORK', 178, 1),
(948, '2018-08-02 10:10:16', '2018-08-02 10:10:16', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '27', '27', '45', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '44', '60', '60', NULL, NULL, '', NULL, 'WORK', 178, 1),
(949, '2018-08-02 10:13:45', '2018-08-02 10:13:45', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '23', '23', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '50', '60', '60', NULL, NULL, '', NULL, 'WORK', 199, 1),
(950, '2018-08-02 10:13:59', '2018-08-02 10:13:59', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '23', '23', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '50', '60', '60', NULL, NULL, '', NULL, 'WORK', 199, 1),
(951, '2018-08-02 10:42:43', '2018-08-02 10:42:43', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '2', '2', NULL, NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'none', '59', '60', '60', NULL, NULL, '', NULL, 'WORK', 218, 1),
(952, '2018-08-02 10:42:45', '2018-08-02 10:42:45', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '2', '2', NULL, NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'none', '59', '60', '60', NULL, NULL, '', NULL, 'WORK', 218, 1),
(953, '2018-08-02 10:46:57', '2018-08-02 10:46:57', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', NULL, NULL, '61', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'JADELLE', '26', '60', '60', NULL, NULL, '', NULL, 'WORK', 221, 1),
(954, '2018-08-02 10:52:22', '2018-08-02 10:52:22', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '1', '1', '73', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[[\"CNS: Dizzy, anxiety, nightmare,depression\",\"Rash\"]]', '[null]', 'NA', 'O/S', 'O/S', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '58', '60', '60', NULL, NULL, '', NULL, 'WORK', 253, 1),
(955, '2018-08-02 10:52:27', '2018-08-02 10:52:27', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '1', '1', '73', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[[\"CNS: Dizzy, anxiety, nightmare,depression\",\"Rash\"]]', '[null]', 'NA', 'O/S', 'O/S', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '58', '60', '60', NULL, NULL, '', NULL, 'WORK', 253, 1),
(956, '2018-08-02 10:56:43', '2018-08-02 10:56:43', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '48.5', '48.5', '53', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL NEXT VISIT', NULL, '[null]', 'MUAC|+', 'NONE', '55', '60', '60', NULL, NULL, '', NULL, 'WORK', 45, 1),
(957, '2018-08-02 11:00:32', '2018-08-02 11:00:32', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '5', '5', '51.2', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '52', '60', '60', 'SPUTUM RESULTS NEGATIVE', NULL, '', NULL, 'WORK', 103, 1),
(958, '2018-08-02 11:05:29', '2018-08-02 11:05:29', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '1', '1', '48.3', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Fair', 'AZT/3TC/EFV', 'VL DUE AUG 2018', NULL, '[null]', 'MUAC|+', 'NONE', '60', '120/60', '60', NULL, NULL, '', NULL, 'WORK', 219, 1),
(959, '2018-08-02 11:09:53', '2018-08-02 11:09:53', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '1', '1', '35', NULL, 'WORK', NULL, 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|-', 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 251, 1),
(960, '2018-08-02 11:21:56', '2018-08-02 11:21:56', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '25', '25', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'OVER DUE  FOR VL', NULL, '[null]', 'MUAC|+', 'NONE', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 78, 1),
(961, '2018-08-02 13:12:35', '2018-08-02 13:12:35', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '12', '12', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'none', '46', '60', '60', NULL, NULL, '', NULL, 'WORK', 162, 1),
(962, '2018-08-02 13:23:54', '2018-08-02 13:23:54', '08-01-2018', '08', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '10', '10', NULL, NULL, NULL, NULL, 'ABC/3TC/LPV/R', 'VL NONE SURPPRESSING', NULL, '[null]', NULL, NULL, '5', '75/120', '30', NULL, NULL, '', NULL, 'REPRESENTED', 48, 1),
(963, '2018-08-02 13:29:22', '2018-08-02 13:29:22', '08-01-2018', '08', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '10', '10', NULL, NULL, NULL, NULL, 'ABC/3TC/LPV/R', NULL, NULL, '[null]', NULL, NULL, '1', '75/120', '30', NULL, NULL, '', NULL, 'REPRESENTED', 18, 1),
(964, '2018-08-02 13:34:40', '2018-08-02 13:34:40', '08-01-2018', '08', '2018', '08-29-2018', '08', '2018', NULL, NULL, '77', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', 'O/S', 'NA', NULL, NULL, NULL, 'Fair', 'ABC/3TC/ATV/R', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '34', '30', '30', NULL, NULL, '', NULL, 'WORK', 19, 1),
(965, '2018-08-02 13:38:06', '2018-08-02 13:38:06', '08-01-2018', '08', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '10', '10', NULL, NULL, NULL, NULL, 'ABC/3TC/EFV', 'VL DUE AUG 2018', NULL, '[null]', NULL, NULL, '2', '75/90', '30', NULL, NULL, '', NULL, 'REPRESENTED', 195, 1),
(966, '2018-08-02 13:38:09', '2018-08-02 13:38:09', '08-01-2018', '08', '2018', '08-29-2018', '08', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '10', '10', NULL, NULL, NULL, NULL, 'ABC/3TC/EFV', 'VL DUE AUG 2018', NULL, '[null]', NULL, NULL, '2', '75/90', '30', NULL, NULL, '', NULL, 'REPRESENTED', 195, 1),
(967, '2018-08-02 13:48:01', '2018-08-02 13:48:01', '08-01-2018', '08', '2018', '08-29-2018', '08', '2018', '10.5', '10.5', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', 'O/S', 'NA', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL NONE SURPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '40', '30', '30', NULL, NULL, '', NULL, 'WORK', 76, 1),
(968, '2018-08-08 15:15:25', '2018-08-08 15:15:25', '08-08-2018', '08', '2018', '10-03-2018', '10', '2018', NULL, NULL, NULL, NULL, 'represented', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DUE FEB 2019', NULL, '[null]', NULL, NULL, '39', '60', '60', NULL, NULL, '', NULL, 'represented', 207, 1),
(969, '2018-08-08 15:19:33', '2018-08-08 15:19:33', '08-08-2018', '08', '2018', '10-03-2018', '10', '2018', '5.5', '5.5', '59', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', 'MUAC|+', 'NONE', '36', '60', '60', NULL, NULL, '', NULL, 'WORK', 140, 1),
(970, '2018-08-08 15:23:06', '2018-08-08 15:23:06', '08-08-2018', '08', '2018', '10-03-2018', '10', '2018', NULL, NULL, '45', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', 'O/S', NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', 'MUAC|+', 'ABS', '38', '60', '60', NULL, NULL, '', NULL, 'WORK', 25, 1),
(971, '2018-08-08 15:26:20', '2018-08-08 15:26:20', '08-08-2018', '08', '2018', '10-03-2018', '10', '2018', '9.5', '9.5', '48', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', 'O/S', NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', 'VL NONE SUPPRESSING', NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', 'MUAC|+', NULL, '50', '60', '60', NULL, NULL, '', NULL, 'WORK', 132, 1),
(972, '2018-08-08 15:30:54', '2018-08-08 15:30:54', '08-08-2018', '08', '2018', '10-03-2018', '10', '2018', '33.5', '33.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '55', '60', '60', NULL, NULL, '', NULL, 'Amb Bed', 157, 1),
(973, '2018-08-08 15:42:18', '2018-08-08 15:42:18', '08-08-2018', '08', '2018', '10-03-2018', '10', '2018', '25.5', '25.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '67', '60', '60', NULL, NULL, '', NULL, 'Amb Bed', 106, 1),
(974, '2018-08-08 15:48:48', '2018-08-08 15:48:48', '08-08-2018', '08', '2018', '10-03-2018', '10', '2018', '11', '11', '49', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'none', '39', '60', '60', NULL, NULL, '', NULL, 'WORK', 224, 1),
(975, '2018-08-08 15:48:48', '2018-08-08 15:48:48', '08-08-2018', '08', '2018', '10-03-2018', '10', '2018', '11', '11', '49', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'none', '39', '60', '60', NULL, NULL, '', NULL, 'WORK', 224, 1),
(976, '2018-08-08 15:54:27', '2018-08-08 15:54:27', '08-08-2018', '08', '2018', '10-29-2018', '10', '2018', '10', '10', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DUE APRIL 2019', NULL, '[null]', 'MUAC|+', 'NONE', '50', '60', '60', NULL, NULL, '', NULL, 'WORK', 114, 1),
(977, '2018-08-13 09:16:56', '2018-08-13 09:16:56', '08-09-2018', '08', '2018', '09-05-2018', '09', '2018', NULL, NULL, '55', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/ATR/r', 'DUE FOR VL', NULL, '[null]', 'MUAC|+', 'TL', '26', '30', '30', NULL, NULL, '', NULL, 'WORK', 217, 1),
(978, '2018-08-13 09:42:49', '2018-08-13 09:42:49', '02-14-2018', '02', '2018', '03-07-2018', '03', '2018', NULL, NULL, '46', NULL, 'WORK', '3', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '43', '30', '30', NULL, NULL, '', NULL, 'WORK', 263, 1),
(979, '2018-08-13 09:42:50', '2018-08-13 09:42:50', '02-14-2018', '02', '2018', '03-07-2018', '03', '2018', NULL, NULL, '46', NULL, 'WORK', '3', 'No signs or Symptoms of TB', '[null]', '[null]', 'NA', '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '43', '30', '30', NULL, NULL, '', NULL, 'WORK', 263, 1),
(980, '2018-08-13 09:47:52', '2018-08-13 09:47:52', '06-13-2018', '06', '2018', '08-01-2018', '08', '2018', '4', '4', '48', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'POOR', '120', '60', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 263, 1),
(981, '2018-08-13 10:56:54', '2018-08-13 10:56:54', '08-09-2018', '08', '2018', '09-27-2018', '09', '2018', '33', '33', '70', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '15', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'implant', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 26, 1),
(982, '2018-08-13 10:56:56', '2018-08-13 10:56:56', '08-09-2018', '08', '2018', '09-27-2018', '09', '2018', '33', '33', '70', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '15', '15', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'implant', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 26, 1),
(983, '2018-08-15 10:43:51', '2018-08-15 10:43:51', '02-14-2018', '02', '2018', '04-04-2018', '04', '2018', '8', '8', '59', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '120', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 264, 1),
(984, '2018-08-15 10:47:27', '2018-08-15 10:47:27', '05-30-2018', '05', '2018', '07-25-2018', '07', '2018', '11', '11', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE MARCH 2019', NULL, '[null]', 'MUAC|+', 'NONE', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 264, 1),
(985, '2018-08-15 10:47:28', '2018-08-15 10:47:28', '05-30-2018', '05', '2018', '07-25-2018', '07', '2018', '11', '11', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE MARCH 2019', NULL, '[null]', 'MUAC|+', 'NONE', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 264, 1),
(986, '2018-08-15 11:00:02', '2018-08-15 11:00:02', '06-06-2018', '06', '2018', '08-01-2018', '08', '2018', '4', '4', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', '60', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'CONDOMS', '43', '60', '60', NULL, NULL, '', NULL, 'WORK', 265, 1),
(987, '2018-08-15 11:02:08', '2018-08-15 11:02:08', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '5', '5', '57', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'FAIR', 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 265, 1),
(988, '2018-08-20 11:30:48', '2018-08-20 11:30:48', '02-14-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '63', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[[\"Zoster\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '44', '30', '30', NULL, NULL, '', NULL, 'WORK', 266, 1),
(989, '2018-08-20 11:34:23', '2018-08-20 11:34:23', '07-25-2018', '07', '2018', '10-24-2018', '10', '2018', '4.5', '4.5', '69.4', NULL, 'WORK', '2', NULL, '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '90', '90', NULL, NULL, '', NULL, 'WORK', 266, 1),
(990, '2018-08-20 11:56:34', '2018-08-20 11:56:34', '07-05-2018', '07', '2018', '08-30-2018', '08', '2018', NULL, NULL, '56', '168', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 267, 1),
(991, '2018-08-20 11:56:36', '2018-08-20 11:56:36', '07-05-2018', '07', '2018', '08-30-2018', '08', '2018', NULL, NULL, '56', '168', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'O/S', NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 267, 1),
(992, '2018-08-21 07:24:28', '2018-08-21 07:24:28', '05-24-2018', '05', '2018', '06-30-2018', '06', '2018', NULL, NULL, '60', '152', 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '37', '30', '30', NULL, NULL, '', NULL, 'WORK', 268, 1),
(993, '2018-08-21 07:24:36', '2018-08-21 07:24:36', '05-24-2018', '05', '2018', '06-30-2018', '06', '2018', NULL, NULL, '60', '152', 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', '28', '28', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '37', '30', '30', NULL, NULL, '', NULL, 'WORK', 268, 1),
(994, '2018-08-21 07:28:59', '2018-08-21 07:28:59', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '3', '3', '59', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', 'O/S', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 268, 1),
(995, '2018-08-21 08:52:11', '2018-08-21 08:52:11', '11-29-2017', '11', '2017', '01-31-2018', '01', '2018', NULL, NULL, '33', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '64', '64', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '13', '128', '64', NULL, NULL, '', NULL, 'WORK', 271, 1),
(996, '2018-08-21 08:53:03', '2018-08-21 08:53:03', '11-29-2017', '11', '2017', '01-31-2018', '01', '2018', NULL, NULL, '33', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '64', '64', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '13', '128', '64', NULL, NULL, '', NULL, 'WORK', 271, 1),
(997, '2018-08-21 08:53:06', '2018-08-21 08:53:06', '11-29-2017', '11', '2017', '01-31-2018', '01', '2018', NULL, NULL, '33', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '64', '64', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '13', '128', '64', NULL, NULL, '', NULL, 'WORK', 271, 1),
(998, '2018-08-21 08:56:05', '2018-08-21 08:56:05', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '7', '7', '33.6', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', 'DUE FOR VL', NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 271, 1),
(999, '2018-08-21 08:56:05', '2018-08-21 08:56:05', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '7', '7', '33.6', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', 'DUE FOR VL', NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 271, 1),
(1000, '2018-08-21 08:56:05', '2018-08-21 08:56:05', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '7', '7', '33.6', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', 'DUE FOR VL', NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 271, 1),
(1001, '2018-08-23 10:58:22', '2018-08-23 10:58:22', '06-11-2018', '06', '2018', '07-26-2018', '07', '2018', NULL, NULL, '53', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '120', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '24', '60', '60', NULL, '22/40 ANC 334', '', NULL, 'WORK', 277, 1),
(1002, '2018-08-23 11:02:26', '2018-08-23 11:02:26', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '2', '2', '54', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, 'ANC 334  EDD 24/40', '', NULL, 'WORK', 277, 1),
(1003, '2018-08-24 12:23:55', '2018-08-24 12:23:55', '02-14-2018', '02', '2018', '03-14-2018', '03', '2018', NULL, NULL, '56.8', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'none', '56', '30', '30', NULL, NULL, '', NULL, 'WORK', 278, 1),
(1004, '2018-08-24 12:27:06', '2018-08-24 12:27:06', '07-25-2018', '07', '2018', '09-26-2018', '09', '2018', '5.5', '5.5', '58', NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 278, 1),
(1005, '2018-08-24 12:31:08', '2018-08-24 12:31:08', '08-15-2018', '08', '2018', '10-03-2018', '10', '2018', '31.5', '31.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '22', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 85, 1),
(1006, '2018-08-24 12:33:41', '2018-08-24 12:33:41', '08-15-2018', '08', '2018', '10-03-2018', '10', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '28', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 186, 1),
(1007, '2018-08-28 13:22:08', '2018-08-28 13:22:08', '08-22-2018', '08', '2018', '09-26-2018', '09', '2018', NULL, NULL, '47', NULL, 'work', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'good', '30', '30', NULL, NULL, NULL, 'Good', 'tdf/3tc/efv', 'vl aug', NULL, '[null]', 'MUAC|+', 'none', '60', '30', '30', NULL, NULL, '', NULL, 'work', 246, 1),
(1008, '2018-09-04 08:01:47', '2018-09-04 08:01:47', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', '1', NULL, '[null]', '[null]', 'POOR', '60', '60', NULL, NULL, NULL, 'Good', 'ABC/3TC/LPV/R', NULL, NULL, '[null]', NULL, NULL, '1', '120', '60', NULL, NULL, '', NULL, NULL, 18, 1),
(1009, '2018-09-04 08:20:53', '2018-09-04 08:20:53', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', NULL, NULL, '52', '164.2', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', 'DONE', NULL, '[null]', 'MUAC|+', 'DEPO', '31', '120', '60', NULL, NULL, '', NULL, 'WORK', 165, 1),
(1010, '2018-09-04 08:28:19', '2018-09-04 08:28:19', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', '32', '32', '47', '155.1', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '37', '60', '60', NULL, NULL, '', NULL, 'WORK', 222, 1),
(1011, '2018-09-04 08:38:43', '2018-09-04 08:38:43', '06-03-2018', '06', '2018', '08-07-2018', '08', '2018', NULL, NULL, '31', NULL, 'PLAYING', '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'POOR', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'ABC/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '8', '120', '60', NULL, NULL, '', NULL, 'PLAYING', 89, 1),
(1012, '2018-09-04 08:38:43', '2018-09-04 08:38:43', '06-03-2018', '06', '2018', '08-07-2018', '08', '2018', NULL, NULL, '31', NULL, 'PLAYING', '2', 'No signs or Symptoms of TB', '[null]', '[null]', 'POOR', 'O/S', NULL, NULL, NULL, NULL, 'Good', 'ABC/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', NULL, '8', '120', '60', NULL, NULL, '', NULL, 'PLAYING', 89, 1),
(1013, '2018-09-04 08:46:10', '2018-09-04 08:46:10', '08-29-2018', '08', '2018', '09-27-2018', '09', '2018', '2.5', '2.5', '50', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '25', '30', '30', NULL, NULL, '', NULL, 'WORK', 262, 1),
(1014, '2018-09-04 08:46:13', '2018-09-04 08:46:13', '08-29-2018', '08', '2018', '09-27-2018', '09', '2018', '2.5', '2.5', '50', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '25', '30', '30', NULL, NULL, '', NULL, 'WORK', 262, 1),
(1015, '2018-09-04 08:50:35', '2018-09-04 08:50:35', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', '31.5', '31.5', '48', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'IUD', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 61, 1),
(1016, '2018-09-04 09:03:45', '2018-09-04 09:03:45', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', NULL, NULL, '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '35', '30', '30', NULL, NULL, '', NULL, 'WORK', 280, 1),
(1017, '2018-09-04 09:17:43', '2018-09-04 09:17:43', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 281, 1),
(1018, '2018-09-04 09:22:18', '2018-09-04 09:22:18', '08-29-2018', '08', '2018', '11-28-2018', '11', '2018', NULL, NULL, '40', NULL, 'REPRESENTED', NULL, 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', 'VL DUE FEB 2019', NULL, '[null]', 'MUAC|+', NULL, '68', '180', '90', NULL, NULL, '', NULL, 'WORK', 184, 1),
(1019, '2018-09-04 09:26:16', '2018-09-04 09:26:16', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', '3', '3', '78', NULL, 'WORK', '2', 'Suspect', '[null]', '[[\"COUGH*\"]]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', 'SPUTUM E', NULL, '', NULL, 'WORK', 240, 1),
(1020, '2018-09-04 09:30:46', '2018-09-04 09:30:46', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', NULL, NULL, '60', '149.1', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', '60', '30', NULL, NULL, NULL, 'Fair', 'AZT/3TC/NVP', 'VL DUE OCT 2018', NULL, '[null]', 'MUAC|+', 'NONE', '39', '30', '30', NULL, NULL, '', NULL, 'WPRK', 43, 1),
(1021, '2018-09-04 09:36:58', '2018-09-04 09:36:58', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', '46', '46', '47', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '55', '60/120', '60', NULL, NULL, '', NULL, 'WORK', 39, 1),
(1022, '2018-09-04 09:43:40', '2018-09-04 09:43:40', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', '14', '14', '40.2', '166.2', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL IN DEC 2018', NULL, '[null]', 'MUAC|+', 'DEPO', '24', '60', '60', NULL, NULL, '', NULL, 'WORK', 192, 1),
(1023, '2018-09-04 09:48:31', '2018-09-04 09:48:31', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', '26', '26', '14', '95.9', 'PLAYING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '2', '60', '60', NULL, NULL, '', NULL, 'PLAYING', 195, 1),
(1024, '2018-09-04 09:53:30', '2018-09-04 09:53:30', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', '17.5', '17.5', '56', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL  <839', NULL, '[null]', 'MUAC|+', 'DEPO', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 99, 1),
(1025, '2018-09-04 09:56:25', '2018-09-04 09:56:25', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', '17.5', '17.5', '62', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '40', '60', '60', NULL, NULL, '', NULL, 'WORK', 55, 1),
(1026, '2018-09-04 10:02:18', '2018-09-04 10:02:18', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', '16', '16', '70', '174.2', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NILL', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '42', '30', '30', NULL, NULL, '', NULL, 'WORK', 164, 1),
(1027, '2018-09-04 10:06:15', '2018-09-04 10:06:15', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', '56', '56', '56', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'DEPO', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 44, 1),
(1028, '2018-09-04 10:12:13', '2018-09-04 10:12:13', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/LPV/r', NULL, NULL, '[null]', NULL, NULL, '5', '240', '60', NULL, NULL, '', NULL, 'PLAYING', 48, 1),
(1029, '2018-09-04 10:15:40', '2018-09-04 10:15:40', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', NULL, NULL, '77', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/ATV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '34', '30', '30', NULL, NULL, '', NULL, 'WORK', 19, 1),
(1030, '2018-09-04 10:15:55', '2018-09-04 10:15:55', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', NULL, NULL, '77', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'ABC/3TC/ATV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '34', '30', '30', NULL, NULL, '', NULL, 'WORK', 19, 1),
(1031, '2018-09-04 10:49:03', '2018-09-04 10:49:03', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', '21', '21', '56', '165.5', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '38', '60', '60', NULL, NULL, '', NULL, 'WORK', 177, 1),
(1032, '2018-09-04 10:51:49', '2018-09-04 10:51:49', '08-30-2018', '08', '2018', '09-26-2018', '09', '2018', '35.5', '35.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '55', '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 157, 1),
(1033, '2018-09-04 10:55:28', '2018-09-04 10:55:28', '08-30-2018', '08', '2018', '10-24-2018', '10', '2018', NULL, NULL, '58', '152.6', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '17', '60', '60', NULL, NULL, '', NULL, 'WORK', 161, 1),
(1034, '2018-09-04 10:59:48', '2018-09-04 10:59:48', '08-30-2018', '08', '2018', '11-01-2018', '11', '2018', '10', '10', '63', '166.5', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL JAN 2019', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 75, 1),
(1035, '2018-09-04 11:03:30', '2018-09-04 11:03:30', '08-30-2018', '08', '2018', '09-26-2018', '09', '2018', '7', '40', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'ABC/3TC/ATV', NULL, NULL, '[null]', NULL, NULL, '20', '60', '30', NULL, NULL, '', NULL, 'WORK', 38, 1),
(1036, '2018-09-04 11:07:23', '2018-09-04 11:07:23', '08-30-2018', '08', '2018', '10-24-2018', '10', '2018', '34', '34', '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 26, 1),
(1037, '2018-09-04 13:27:44', '2018-09-04 13:27:44', '09-04-2018', '09', '2018', '11-07-2018', '11', '2018', '3', '3', '50', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', 'MUAC|+', 'condoms', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 242, 1);
INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(1038, '2018-09-04 13:31:53', '2018-09-04 13:31:53', '08-30-2018', '08', '2018', '10-25-2018', '10', '2018', '6', '6', '40', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 98, 1),
(1039, '2018-09-04 13:35:25', '2018-09-04 13:35:25', '08-30-2018', '08', '2018', '10-25-2018', '10', '2018', NULL, NULL, '69', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '18', '60', '60', NULL, NULL, '', NULL, 'WORK', 100, 1),
(1040, '2018-09-04 13:39:15', '2018-09-04 13:39:15', '08-30-2018', '08', '2018', '10-25-2018', '10', '2018', '12', '12', '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '19', '60', '60', NULL, 'ANC NO 008 EDD 9/2018', '', NULL, 'WORK', 90, 1),
(1041, '2018-09-04 13:39:15', '2018-09-04 13:39:15', '08-30-2018', '08', '2018', '10-25-2018', '10', '2018', '12', '12', '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '19', '60', '60', NULL, 'ANC NO 008 EDD 9/2018', '', NULL, 'WORK', 90, 1),
(1042, '2018-09-04 13:39:15', '2018-09-04 13:39:15', '08-30-2018', '08', '2018', '10-25-2018', '10', '2018', '12', '12', '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '19', '60', '60', NULL, 'ANC NO 008 EDD 9/2018', '', NULL, 'WORK', 90, 1),
(1043, '2018-09-04 13:46:30', '2018-09-04 13:46:30', '08-30-2018', '08', '2018', '10-25-2018', '10', '2018', NULL, NULL, '41', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 93, 1),
(1044, '2018-09-04 13:49:27', '2018-09-04 13:49:27', '08-30-2018', '08', '2018', '10-25-2018', '10', '2018', NULL, NULL, '61', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 136, 1),
(1045, '2018-09-04 13:52:47', '2018-09-04 13:52:47', '08-30-2018', '08', '2018', '10-25-2018', '10', '2018', NULL, NULL, 'REPRESENTED', NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '28', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 158, 1),
(1046, '2018-09-04 13:57:36', '2018-09-04 13:57:36', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', '55', '55', '78', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'IUD', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 216, 1),
(1047, '2018-09-10 07:47:45', '2018-09-10 07:47:45', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '24', '24', NULL, NULL, 'REPRESENTED', '1', NULL, '[null]', '[null]', NULL, '240', '60', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', 'VL DUE DEC 2018', NULL, '[null]', NULL, 'none', '17', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 168, 1),
(1048, '2018-09-10 07:56:21', '2018-09-10 07:56:21', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1049, '2018-09-10 07:56:21', '2018-09-10 07:56:21', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1050, '2018-09-10 07:56:21', '2018-09-10 07:56:21', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1051, '2018-09-10 07:56:22', '2018-09-10 07:56:22', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1052, '2018-09-10 07:56:22', '2018-09-10 07:56:22', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1053, '2018-09-10 07:56:22', '2018-09-10 07:56:22', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1054, '2018-09-10 07:56:22', '2018-09-10 07:56:22', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1055, '2018-09-10 07:56:22', '2018-09-10 07:56:22', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1056, '2018-09-10 07:56:22', '2018-09-10 07:56:22', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1057, '2018-09-10 07:56:22', '2018-09-10 07:56:22', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1058, '2018-09-10 07:56:22', '2018-09-10 07:56:22', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1059, '2018-09-10 07:56:22', '2018-09-10 07:56:22', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1060, '2018-09-10 07:56:42', '2018-09-10 07:56:42', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1061, '2018-09-10 07:56:42', '2018-09-10 07:56:42', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1062, '2018-09-10 07:56:42', '2018-09-10 07:56:42', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1063, '2018-09-10 07:56:42', '2018-09-10 07:56:42', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1064, '2018-09-10 07:56:42', '2018-09-10 07:56:42', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1065, '2018-09-10 07:56:58', '2018-09-10 07:56:58', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1066, '2018-09-10 07:56:58', '2018-09-10 07:56:58', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1067, '2018-09-10 07:56:58', '2018-09-10 07:56:58', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1068, '2018-09-10 07:56:58', '2018-09-10 07:56:58', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1069, '2018-09-10 07:56:58', '2018-09-10 07:56:58', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1070, '2018-09-10 07:56:58', '2018-09-10 07:56:58', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1071, '2018-09-10 07:56:59', '2018-09-10 07:56:59', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1072, '2018-09-10 07:57:00', '2018-09-10 07:57:00', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1073, '2018-09-10 10:17:33', '2018-09-10 10:17:33', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '27', '27', '68', '158', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'depo', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 171, 1),
(1074, '2018-09-10 10:38:35', '2018-09-10 10:38:35', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '31.5', '31.5', '61', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '65', '60', '60', NULL, NULL, '', NULL, 'WORK', 144, 1),
(1075, '2018-09-10 10:50:17', '2018-09-10 10:50:17', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '35', '35', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE DEC 2018', NULL, '[null]', NULL, NULL, '36', '60', '60', NULL, NULL, '', NULL, 'WORK', 183, 1),
(1076, '2018-09-10 10:50:17', '2018-09-10 10:50:17', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '35', '35', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE DEC 2018', NULL, '[null]', NULL, NULL, '36', '60', '60', NULL, NULL, '', NULL, 'WORK', 183, 1),
(1077, '2018-09-10 12:45:35', '2018-09-10 12:45:35', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', NULL, NULL, '50', '148', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'TL', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 30, 1),
(1078, '2018-09-10 12:50:17', '2018-09-10 12:50:17', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '22', '22', '47', '153.1', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL NOV 2018', NULL, '[null]', 'MUAC|+', NULL, '63', '60', '60', NULL, NULL, '', NULL, 'WORK', 94, 1),
(1079, '2018-09-10 12:54:12', '2018-09-10 12:54:12', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '35', '35', 'REPRESENTED', NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '11', '120/60', '60', NULL, NULL, '', NULL, NULL, 256, 1),
(1080, '2018-09-10 12:58:37', '2018-09-10 12:58:37', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VLSUPPRESSING', NULL, '[null]', NULL, NULL, '28', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 6, 1),
(1081, '2018-09-10 13:02:41', '2018-09-10 13:02:41', '09-05-2018', '09', '2018', '10-03-2018', '10', '2018', '43', '43', '67', '175.5', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE OCT 2018', NULL, '[null]', 'MUAC|+', 'NONE', '37', '30', '30', NULL, NULL, '', NULL, 'WORK', 201, 1),
(1082, '2018-09-10 13:19:37', '2018-09-10 13:19:37', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '41.5', '41.5', '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '55', '60', '60', NULL, NULL, '', NULL, 'WORK', 175, 1),
(1083, '2018-09-10 13:20:01', '2018-09-10 13:20:01', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '41.5', '41.5', '66', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '55', '60', '60', NULL, NULL, '', NULL, 'WORK', 175, 1),
(1084, '2018-09-10 13:23:41', '2018-09-10 13:23:41', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '36.5', '36.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', NULL, NULL, '33', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 71, 1),
(1085, '2018-09-10 13:27:18', '2018-09-10 13:27:18', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '47.5', '47.5', '45', '149.9', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'DEPO', '35', '60', '60', NULL, NULL, '', NULL, 'WORK', 72, 1),
(1086, '2018-09-10 13:32:36', '2018-09-10 13:32:36', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '50', '50', '50', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 57, 1),
(1087, '2018-09-10 13:59:11', '2018-09-10 13:59:11', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '15', '15', '50', '156.7', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL FEB 2018', NULL, '[null]', 'MUAC|+', 'NONE', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 182, 1),
(1088, '2018-09-10 14:03:29', '2018-09-10 14:03:29', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '9', '9', '47', '165.2', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '37', '60', '60', NULL, NULL, '', NULL, 'WORK', 117, 1),
(1089, '2018-09-10 14:08:11', '2018-09-10 14:08:11', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '13', '13', '49', '170.4', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL FEB 2018', NULL, '[null]', 'MUAC|+', 'NONE', '30', '60', '60', NULL, NULL, '', NULL, 'WORK', 121, 1),
(1090, '2018-09-10 14:14:14', '2018-09-10 14:14:14', '09-05-2018', '09', '2018', '10-03-2018', '10', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', NULL, NULL, '37', '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 41, 1),
(1091, '2018-09-10 14:18:02', '2018-09-10 14:18:02', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '26', '26', '38', '164', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE FEB 2018', NULL, '[null]', 'MUAC|+', 'NONE', '58', '60', '60', NULL, NULL, '', NULL, 'WORK', 70, 1),
(1092, '2018-09-10 14:24:33', '2018-09-10 14:24:33', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '23', '23', '48', '170.1', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE DEC 2018', NULL, '[null]', 'MUAC|+', 'NONE', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 181, 1),
(1093, '2018-09-10 14:24:49', '2018-09-10 14:24:49', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '23', '23', '48', '170.1', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE DEC 2018', NULL, '[null]', 'MUAC|+', 'NONE', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 181, 1),
(1094, '2018-09-10 14:28:44', '2018-09-10 14:28:44', '09-05-2018', '09', '2018', '10-03-2018', '10', '2018', '24', '24', '43', '147.2', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE OCT 2018', NULL, '[null]', 'MUAC|+', 'NONE', '30', '30', '30', NULL, NULL, '', NULL, 'WORK', 46, 1),
(1095, '2018-09-10 14:34:02', '2018-09-10 14:34:02', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '6', '6', '47', '139.4', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', '30', '30', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', 'MUAC|+', 'NONE', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 206, 1),
(1096, '2018-09-10 14:40:33', '2018-09-10 14:40:33', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '7.5', '7.5', '56', '168.1', 'WORK', '1', 'Suspect', '[null]', '[[\"COUGH*\"]]', 'FAIR', '30', '30', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '50', '60', '60', 'GENE  XPART', NULL, '', NULL, 'WORK', 197, 1),
(1097, '2018-09-10 14:44:44', '2018-09-10 14:44:44', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '29', '29', '53', '163.3', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VLNDONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '45', '60', '60', NULL, NULL, '', NULL, 'WORK', 151, 1),
(1098, '2018-09-10 14:48:29', '2018-09-10 14:48:29', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', NULL, NULL, '47', '144', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL FEB 2018', NULL, '[null]', 'MUAC|+', 'NONE', '55', '60', '60', NULL, NULL, '', NULL, 'WORK', 147, 1),
(1099, '2018-09-10 14:52:41', '2018-09-10 14:52:41', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '64', '64', '48', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '38', '120', '60', NULL, NULL, '', NULL, 'WORK', 27, 1),
(1100, '2018-09-10 14:58:28', '2018-09-10 14:58:28', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '8', '8', '42', '148.7', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[null]', 'MUAC|+', 'NONE', '35', '60', '60', NULL, NULL, '', NULL, 'WORK', 96, 1),
(1101, '2018-09-10 14:58:38', '2018-09-10 14:58:38', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '8', '8', '42', '148.7', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[null]', 'MUAC|+', 'NONE', '35', '60', '60', NULL, NULL, '', NULL, 'WORK', 96, 1),
(1102, '2018-09-10 15:02:27', '2018-09-10 15:02:27', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '12.5', '12.5', '50.1', '165.5', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'ABS', '53', '60', '60', NULL, NULL, '', NULL, 'WORK', 58, 1),
(1103, '2018-09-10 15:09:00', '2018-09-10 15:09:00', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '18', '18', '55', '172.4', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 179, 1),
(1104, '2018-09-10 15:13:48', '2018-09-10 15:13:48', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '28.5', '28.5', '40', '164', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE 4/2018', NULL, '[null]', 'MUAC|+', 'NONE', '65', '60', '60', NULL, NULL, '', NULL, 'WORK', 189, 1),
(1105, '2018-09-10 15:19:40', '2018-09-10 15:19:40', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', NULL, NULL, '54', '154', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 37, 1),
(1106, '2018-09-10 15:25:02', '2018-09-10 15:25:02', '09-05-2018', '09', '2018', '10-03-2018', '10', '2018', NULL, NULL, '58', '255.6', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', '30', '30', NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '19', '60', '30', NULL, NULL, '', NULL, 'WORK', 190, 1),
(1107, '2018-09-10 15:28:41', '2018-09-10 15:28:41', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '13', '13', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', NULL, NULL, '48', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 97, 1),
(1108, '2018-09-10 15:33:43', '2018-09-10 15:33:43', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '9', '9', '45', NULL, 'WORK', '1', 'Suspect', '[null]', '[null]', NULL, '30', '30', '56', '56', NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 126, 1),
(1109, '2018-09-10 15:38:57', '2018-09-10 15:38:57', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '65', '65', '50', '152', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DEC 2018', NULL, '[null]', 'MUAC|+', 'NONE', '40', '60', '60', NULL, NULL, '', NULL, 'WORK', 214, 1),
(1110, '2018-09-10 15:43:33', '2018-09-10 15:43:33', '09-05-2018', '09', '2018', '10-03-2018', '10', '2018', '2', '2', '36', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '59', '30', '30', NULL, NULL, '', NULL, 'WORK', 218, 1),
(1111, '2018-09-10 15:48:11', '2018-09-10 15:48:11', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '14', '14', '46', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '19', '60', '60', NULL, NULL, '', NULL, 'WORK', 53, 1),
(1112, '2018-09-10 15:54:34', '2018-09-10 15:54:34', '09-10-2018', '09', '2018', '11-07-2018', '11', '2018', '1', '1', '56', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'FAIR', '30', '30', NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', 'MUAC|+', 'NONE', '36', '60', '60', NULL, NULL, '', NULL, 'WORK', 233, 1),
(1113, '2018-09-11 07:39:47', '2018-09-11 07:39:47', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '9', '9', '40', '152', 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null,\"DIARRHOAE\"]', NULL, '30', '30', '56', '56', NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE MAR 2018', NULL, '[null]', 'MUAC|+', 'none', '26', '60', '60', NULL, NULL, '', NULL, 'WORK', 107, 1),
(1114, '2018-09-11 07:44:52', '2018-09-11 07:44:52', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', NULL, NULL, '55', '152', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE MAR 2018', NULL, '[null]', 'MUAC|+', 'ABS', '39', '60', '60', NULL, NULL, '', NULL, 'WORK', 185, 1),
(1115, '2018-09-11 07:56:48', '2018-09-11 07:56:48', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '30', '30', '80', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL FEB 2018', NULL, '[null]', 'MUAC|+', 'NONE', '45', '60', '60', NULL, NULL, '', NULL, 'WORK', 77, 1),
(1116, '2018-09-11 08:03:16', '2018-09-11 08:03:16', '09-05-2018', '09', '2018', '09-28-2018', '09', '2018', '7', '7', '71', '160', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[[\"Patient Lost\\/Ran out of Pills\"],null]', 'MUAC|+', 'NONE', '22', '30', '30', NULL, 'PREG', '', NULL, 'WORK', 122, 1),
(1117, '2018-09-11 08:08:13', '2018-09-11 08:08:13', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', NULL, NULL, '61', '185', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '51', '60', '60', NULL, NULL, '', NULL, 'WORK', 198, 1),
(1118, '2018-09-11 09:06:29', '2018-09-11 09:06:29', '09-06-2018', '09', '2018', '11-07-2018', '11', '2018', '14', '14', '59', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 87, 1),
(1119, '2018-09-11 09:24:23', '2018-09-11 09:24:23', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '14', '14', '56', '164', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE JAN 2018', NULL, '[null]', 'MUAC|+', 'NONE', '52', '60', '60', NULL, NULL, '', NULL, 'WORK', 88, 1),
(1120, '2018-09-11 09:45:55', '2018-09-11 09:45:55', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '6', '6', '52', '166.4', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '20', '60', '60', NULL, NULL, '', NULL, 'WORK', 172, 1),
(1121, '2018-09-11 09:46:01', '2018-09-11 09:46:01', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '6', '6', '52', '166.4', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NONE', '20', '60', '60', NULL, NULL, '', NULL, 'WORK', 172, 1),
(1122, '2018-09-11 09:49:37', '2018-09-11 09:49:37', '09-05-2018', '09', '2018', '11-07-2018', '11', '2018', '23', '23', '51', '162.5', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, 'NOT GIVEN', NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL FEB 2019', NULL, '[null]', 'MUAC|+', 'NONE', '35', '60', '60', NULL, NULL, '', NULL, 'WORK', 203, 1),
(1123, '2018-12-04 12:21:04', '2018-12-04 12:21:04', '10-03-2018', '10', '2018', '11-28-2018', '11', '2018', '30', '30', NULL, NULL, 'work', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'none', '44', '30', '30', NULL, NULL, '', NULL, 'WORK', 178, 1),
(1124, '2018-12-04 12:24:33', '2018-12-04 12:24:33', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '32', '32', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 178, 1),
(1125, '2018-12-04 12:29:49', '2018-12-04 12:29:49', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '19', '19', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', '31', '60', '60', NULL, NULL, '', NULL, 'WORK', 62, 1),
(1126, '2018-12-04 12:32:18', '2018-12-04 12:32:18', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '21', '21', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 62, 1),
(1127, '2018-12-04 12:36:09', '2018-12-04 12:36:09', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 29, 1),
(1128, '2018-12-04 12:39:06', '2018-12-04 12:39:06', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, '60', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 29, 1),
(1129, '2018-12-04 12:46:32', '2018-12-04 12:46:32', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '20', '20', NULL, NULL, 'REPRESENTED', NULL, 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '2', '60', '60', NULL, NULL, '', NULL, 'WORK', 152, 1),
(1130, '2018-12-04 12:49:32', '2018-12-04 12:49:32', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '21', '21', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, '60', NULL, NULL, NULL, NULL, 'ABC/3TC/NVP', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'REPERSENTED', 152, 1),
(1131, '2018-12-04 12:54:25', '2018-12-04 12:54:25', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 204, 1),
(1132, '2018-12-04 12:56:03', '2018-12-04 12:56:03', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 204, 1),
(1133, '2018-12-04 13:05:11', '2018-12-04 13:05:11', '09-05-2018', '09', '2018', '11-28-2018', '11', '2018', '29', '29', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 150, 1),
(1134, '2018-12-04 13:08:14', '2018-12-04 13:08:14', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '31', '31', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 204, 1),
(1135, '2018-12-04 13:12:04', '2018-12-04 13:12:04', '10-31-2018', '10', '2018', '11-28-2018', '11', '2018', '41', '41', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '24', '60', '60', NULL, NULL, '', NULL, 'WORK', 192, 1),
(1136, '2018-12-04 13:14:00', '2018-12-04 13:14:00', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '42', '42', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 192, 1),
(1137, '2018-12-04 13:18:32', '2018-12-04 13:18:32', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WPRK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '35', '60', '60', NULL, NULL, '', NULL, 'WORK', 280, 1),
(1138, '2018-12-04 13:20:03', '2018-12-04 13:20:03', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 280, 1),
(1139, '2018-12-04 13:35:04', '2018-12-04 13:35:04', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '7', '7', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 135, 1),
(1140, '2018-12-04 13:36:52', '2018-12-04 13:36:52', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '9', '9', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 135, 1),
(1141, '2018-12-04 13:40:07', '2018-12-04 13:40:07', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '68', '60', '60', NULL, NULL, '', NULL, 'WORK', 184, 1),
(1142, '2018-12-04 13:42:56', '2018-12-04 13:42:56', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '8.5', '8.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '56', '60', '60', NULL, NULL, '', NULL, 'WORK', 278, 1),
(1143, '2018-12-04 13:45:10', '2018-12-04 13:45:10', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '9.5', '9.5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 278, 1),
(1144, '2018-12-04 13:51:58', '2018-12-04 13:51:58', '11-07-2018', '11', '2018', '11-28-2018', '11', '2018', '4', '4', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 242, 1),
(1145, '2018-12-04 13:53:48', '2018-12-04 13:53:48', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '5', '5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'CONDOMS', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 242, 1),
(1146, '2018-12-04 13:57:05', '2018-12-04 13:57:05', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 160, 1),
(1147, '2018-12-04 13:58:30', '2018-12-04 13:58:30', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 160, 1),
(1148, '2018-12-04 14:04:17', '2018-12-04 14:04:17', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'PLAYING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '13', '60', '60', NULL, NULL, '', NULL, 'PLAYING', 271, 1),
(1149, '2018-12-04 14:05:56', '2018-12-04 14:05:56', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'PLAYING', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT3TCNVP', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 271, 1),
(1150, '2018-12-04 14:10:05', '2018-12-04 14:10:05', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'ABC/3TC/ATVr', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '34', '120', '120', NULL, NULL, '', NULL, 'WORK', 19, 1),
(1151, '2018-12-04 14:11:44', '2018-12-04 14:11:44', '11-28-2018', '11', '2018', '01-21-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', NULL, 'NONE', NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 19, 1),
(1152, '2018-12-04 14:19:22', '2018-12-04 14:19:22', '10-03-2018', '10', '2018', '11-07-2018', '11', '2018', '12.5', '12.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '50', '30', '30', NULL, NULL, '', NULL, 'WORK', 132, 1),
(1153, '2018-12-04 14:21:00', '2018-12-04 14:21:00', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '13.5', '13.5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 132, 1),
(1154, '2018-12-04 16:37:01', '2018-12-04 16:37:01', '09-19-2018', '09', '2018', '11-28-2018', '11', '2018', '13', '13', NULL, NULL, 'PLAYING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'none', '1', '60', '60', NULL, NULL, '', NULL, 'PLAYING', 196, 1),
(1155, '2018-12-04 16:39:24', '2018-12-04 16:39:24', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '15', '15', NULL, NULL, 'PLAYING', '1', NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'N0NE', NULL, '60', '60', NULL, NULL, '', NULL, 'PLAYING', 196, 1),
(1156, '2018-12-04 16:43:24', '2018-12-04 16:43:24', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', '2', '2', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '33', '30', '30', NULL, NULL, '', NULL, 'WORK', 259, 1),
(1157, '2018-12-04 16:46:40', '2018-12-04 16:46:40', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '3', '3', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NONE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 259, 1),
(1158, '2018-12-04 17:03:47', '2018-12-04 17:03:47', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '4', '4', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '33', '60', '60', NULL, NULL, '', NULL, 'WORK', 259, 1),
(1159, '2018-12-04 17:30:18', '2018-12-04 17:30:18', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '17', '17', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 164, 1),
(1160, '2018-12-04 17:32:14', '2018-12-04 17:32:14', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '19', '19', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 164, 1),
(1161, '2018-12-04 17:42:45', '2018-12-04 17:42:45', '08-01-2018', '08', '2018', '09-26-2018', '09', '2018', '3', '3', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '38', '60', '60', NULL, NULL, '', NULL, 'WORK', 248, 1),
(1162, '2018-12-04 17:44:39', '2018-12-04 17:44:39', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '5', '5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 248, 1),
(1163, '2018-12-04 17:47:33', '2018-12-04 17:47:33', '11-28-2018', '11', '2018', '01-09-2019', '01', '2019', '5', '5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '60NO', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL NOT ELIGIBLE', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 248, 1),
(1164, '2018-12-04 17:53:00', '2018-12-04 17:53:00', '10-25-2018', '10', '2018', '11-29-2018', '11', '2018', '6', '6', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', 'GOOD', '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'NO FP', '22', '30', '30', NULL, NULL, '', NULL, 'WORK', 98, 1),
(1165, '2018-12-04 17:55:37', '2018-12-04 17:55:37', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '8', '8', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', 'GOOD', '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPPRESSING', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 98, 1),
(1166, '2018-12-04 18:25:51', '2018-12-04 18:25:51', '10-31-2018', '10', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'rerpresented', '1', NULL, '[null]', '[null]', NULL, '60', '30', NULL, NULL, NULL, NULL, 'ABC/3TC/LPV/r', NULL, NULL, '[null]', NULL, NULL, '1', '60', '30', NULL, NULL, '', NULL, 'REPRESENTED', 18, 1),
(1167, '2018-12-04 18:27:47', '2018-12-04 18:27:47', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[null]', '[null]', NULL, '60/480', '30', NULL, NULL, NULL, NULL, 'ABC/3TC/LPV/r', 'vl not suppressing', NULL, '[null]', NULL, NULL, NULL, '60', '30', NULL, NULL, '', NULL, 'REPRESENTED', 18, 1),
(1168, '2018-12-04 18:32:26', '2018-12-04 18:32:26', '10-31-2018', '10', '2018', '11-28-2018', '11', '2018', '49', '49', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/NVP', 'VL SUPPRESSING', NULL, '[null]', 'MUAC|+', 'no fp', '55', '60', '30', NULL, NULL, '', NULL, 'WORK', 39, 1),
(1169, '2018-12-04 18:34:24', '2018-12-04 18:34:24', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, '49', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/NVP', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 39, 1),
(1170, '2018-12-04 18:39:10', '2018-12-04 18:39:10', '09-27-2018', '09', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, NULL, '21', '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 20, 1),
(1171, '2018-12-04 18:41:23', '2018-12-04 18:41:23', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 20, 1),
(1172, '2018-12-04 18:45:57', '2018-12-04 18:45:57', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 139, 1),
(1173, '2018-12-04 18:48:02', '2018-12-04 18:48:02', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', 'VL SUPP', NULL, '[null]', NULL, NULL, NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 139, 1),
(1174, '2018-12-04 18:53:02', '2018-12-04 18:53:02', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '19', '19', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'CONDOM', '37', '60', '60', NULL, NULL, '', NULL, 'WORK', 54, 1),
(1175, '2018-12-04 18:55:13', '2018-12-04 18:55:13', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '21', '21', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'CONDOMS', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 54, 1);
INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(1176, '2018-12-04 19:00:09', '2018-12-04 19:00:09', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '19.5', '19.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 188, 1),
(1177, '2018-12-04 19:01:59', '2018-12-04 19:01:59', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '21.5', '21.5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 188, 1),
(1178, '2018-12-04 20:21:47', '2018-12-04 20:21:47', '09-19-2018', '09', '2018', '11-28-2018', '11', '2018', '16.5', '16.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', 'MUAC|+', 'no fp', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 208, 1),
(1179, '2018-12-04 20:23:59', '2018-12-04 20:23:59', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '18.5', '18.5', NULL, NULL, 'WOKR', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL AWAITS RESULTS', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 208, 1),
(1180, '2018-12-04 20:29:46', '2018-12-04 20:29:46', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '42', '42', NULL, NULL, 'WORK', '2', 'Suspect', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Fair', 'AZT/3TC/NVP', 'VL DONE', NULL, '[null]', 'MUAC|+', 'NO FP', '38', '120', '60', 'SPUTUM', NULL, '', NULL, 'WORK', 134, 1),
(1181, '2018-12-04 20:32:13', '2018-12-04 20:32:13', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '44', '44', NULL, NULL, 'work', '2', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', 'VL Awaits result', NULL, '[null]', NULL, 'NO FP', NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 134, 1),
(1182, '2018-12-04 20:37:02', '2018-12-04 20:37:02', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '38', '60', '60', NULL, NULL, '', NULL, 'WORK', 260, 1),
(1183, '2018-12-04 20:39:12', '2018-12-04 20:39:12', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 260, 1),
(1184, '2018-12-04 20:43:26', '2018-12-04 20:43:26', '10-25-2018', '10', '2018', '11-28-2018', '11', '2018', '13', '13', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '19', '30', '30', NULL, NULL, '', NULL, 'WORK', 90, 1),
(1185, '2018-12-04 20:45:13', '2018-12-04 20:45:13', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '14', '14', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 90, 1),
(1186, '2018-12-04 20:52:33', '2018-12-04 20:52:33', '10-25-2018', '10', '2018', '11-29-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '29', '30', '30', NULL, NULL, '', NULL, 'WORK', 93, 1),
(1187, '2018-12-04 20:55:20', '2018-12-04 20:55:20', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 93, 1),
(1188, '2018-12-04 21:00:17', '2018-12-04 21:00:17', '11-07-2018', '11', '2018', '11-28-2018', '11', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Poor', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 87, 1),
(1189, '2018-12-04 21:02:59', '2018-12-04 21:02:59', '11-28-2018', '11', '2018', '01-31-2019', '01', '2019', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 87, 1),
(1190, '2018-12-04 21:08:06', '2018-12-04 21:08:06', '11-01-2018', '11', '2018', '11-29-2018', '11', '2018', '11', '11', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '22', '30', '30', NULL, NULL, '', NULL, 'WORK', 75, 1),
(1191, '2018-12-04 21:10:13', '2018-12-04 21:10:13', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '12', '12', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 75, 1),
(1192, '2018-12-04 21:18:36', '2018-12-04 21:18:36', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '5', '5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 146, 1),
(1193, '2018-12-04 21:20:19', '2018-12-04 21:20:19', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '7', '7', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 146, 1),
(1194, '2018-12-04 21:29:52', '2018-12-04 21:29:52', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '7', '7', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 123, 1),
(1195, '2018-12-04 21:31:49', '2018-12-04 21:31:49', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '9', '9', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 123, 1),
(1196, '2018-12-04 21:36:17', '2018-12-04 21:36:17', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '34', '34', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '23', '60', '60', NULL, NULL, '', NULL, 'WORK', 176, 1),
(1197, '2018-12-04 21:38:46', '2018-12-04 21:38:46', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '36', '36', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 176, 1),
(1198, '2018-12-04 21:54:43', '2018-12-04 21:54:43', '10-25-2018', '10', '2018', '11-29-2018', '11', '2018', '12', '12', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '28', '30', '30', NULL, NULL, '', NULL, 'WORK', 158, 1),
(1199, '2018-12-04 21:57:20', '2018-12-04 21:57:20', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '14', '14', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 158, 1),
(1200, '2018-12-05 06:13:20', '2018-12-05 06:13:20', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '4', '4', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '24', '60', '60', NULL, NULL, '', NULL, 'WORK', 119, 1),
(1201, '2018-12-05 06:14:39', '2018-12-05 06:14:39', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '6', '6', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 119, 1),
(1202, '2018-12-05 06:18:27', '2018-12-05 06:18:27', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '5', '5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '32', '60', '60', NULL, NULL, '', NULL, 'WORK', 105, 1),
(1203, '2018-12-05 06:19:57', '2018-12-05 06:19:57', '11-29-2018', '11', '2018', '12-06-2018', '12', '2018', '7', '7', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 105, 1),
(1204, '2018-12-05 06:25:39', '2018-12-05 06:25:39', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '18', '18', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '24', '60', '60', NULL, NULL, '', NULL, 'WORK', 80, 1),
(1205, '2018-12-05 06:27:21', '2018-12-05 06:27:21', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '20', '20', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 80, 1),
(1206, '2018-12-05 06:30:09', '2018-12-05 06:30:09', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '8', '8', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 111, 1),
(1207, '2018-12-05 06:31:20', '2018-12-05 06:31:20', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '10', '10', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 111, 1),
(1208, '2018-12-05 06:36:25', '2018-12-05 06:36:25', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '4', '4', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '37', '60', '60', NULL, NULL, '', NULL, 'WORK', 239, 1),
(1209, '2018-12-05 06:37:42', '2018-12-05 06:37:42', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '6', '6', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 239, 1),
(1210, '2018-12-05 06:40:03', '2018-12-05 06:40:03', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '7', '7', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '18', '60', '60', NULL, NULL, '', NULL, 'WORK', 115, 1),
(1211, '2018-12-05 06:41:33', '2018-12-05 06:41:33', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '9', '9', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 115, 1),
(1212, '2018-12-05 08:17:25', '2018-12-05 08:17:25', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '28', '28', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 82, 1),
(1213, '2018-12-05 08:18:56', '2018-12-05 08:18:56', '09-27-2018', '09', '2018', '01-31-2019', '01', '2019', '30', '30', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 82, 1),
(1214, '2018-12-05 13:49:11', '2018-12-05 13:49:11', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '18', '18', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[null]', 'MUAC|+', 'no fp', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 92, 1),
(1215, '2018-12-05 13:50:48', '2018-12-05 13:50:48', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '20', '20', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 92, 1),
(1216, '2018-12-05 13:57:38', '2018-12-05 13:57:38', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 69, 1),
(1217, '2018-12-05 13:59:33', '2018-12-05 13:59:33', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 69, 1),
(1218, '2018-12-05 14:05:09', '2018-12-05 14:05:09', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '31', '31', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 150, 1),
(1219, '2018-12-05 19:43:25', '2018-12-05 19:43:25', '11-13-2018', '11', '2018', '12-05-2018', '12', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '41', '30', '30', NULL, NULL, '', NULL, 'WORK', 282, 1),
(1220, '2018-12-05 19:45:52', '2018-12-05 19:45:52', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '1', '1', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, '60', '60', '56', '56', NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 282, 1),
(1221, '2018-12-05 19:58:36', '2018-12-05 19:58:36', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '2', 'Suspect', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '26', '60', '60', NULL, NULL, '', NULL, 'WORK', 283, 1),
(1222, '2018-12-05 20:18:34', '2018-12-05 20:18:34', '12-01-2018', '12', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '34', '60', '60', NULL, NULL, '', NULL, 'WORK', 284, 1),
(1223, '2018-12-05 20:29:56', '2018-12-05 20:29:56', '12-05-2018', '12', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'PLAYING', '1', 'No signs or Symptoms of TB', '[null]', '[[\"Zoster\"]]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'ABC/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '11', '240', '60', NULL, NULL, '', NULL, 'PLAYING', 285, 1),
(1224, '2018-12-05 21:18:34', '2018-12-05 21:18:34', '10-17-2018', '10', '2018', '01-30-2019', '01', '2019', '5', '5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '36', '60', '60', NULL, NULL, '', NULL, 'WORK', 287, 1),
(1225, '2018-12-05 21:29:19', '2018-12-05 21:29:19', '11-19-2018', '11', '2018', '12-05-2018', '12', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '17', '30', '30', NULL, NULL, '', NULL, 'WORK', 288, 1),
(1226, '2018-12-07 05:09:54', '2018-12-07 05:09:54', '09-12-2018', '09', '2018', '12-12-2018', '12', '2018', '16', '16', '48', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '19', '60', '60', NULL, NULL, '', NULL, 'WORK', 53, 1),
(1227, '2018-12-07 05:11:36', '2018-12-07 05:11:36', '01-30-2019', '01', '2019', '11-28-2018', '11', '2018', '19', '19', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 53, 1),
(1228, '2018-12-07 05:14:14', '2018-12-07 05:14:14', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '3', '3', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '24', '60', '60', NULL, NULL, '', NULL, 'WORK', 238, 1),
(1229, '2018-12-07 05:19:30', '2018-12-07 05:19:30', '08-27-1920', '08', '1920', '08-29-2018', '08', '2018', NULL, NULL, '57', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL AUG', NULL, '[null]', 'MUAC|+', 'NO FP', '21', '60', '60', NULL, NULL, '', NULL, 'WORK', 92, 1),
(1230, '2018-12-07 05:21:22', '2018-12-07 05:21:22', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', NULL, NULL, '57', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DUE', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 92, 1),
(1231, '2018-12-07 05:23:19', '2018-12-07 05:23:19', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', NULL, NULL, '57', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORKNO', 92, 1),
(1232, '2018-12-07 05:26:34', '2018-12-07 05:26:34', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', '9', '9', '55', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DO VL', NULL, '[null]', 'MUAC|+', 'NO FP', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(1233, '2018-12-07 05:28:54', '2018-12-07 05:28:54', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '11', '11', '55', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DUE', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(1234, '2018-12-07 05:30:46', '2018-12-07 05:30:46', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', '13', '13', '55', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'IUD', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 223, 1),
(1235, '2018-12-07 05:41:48', '2018-12-07 05:41:48', '05-24-2018', '05', '2018', '07-26-2018', '07', '2018', '22.5', '22.5', '61', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '33', '60', '60', NULL, NULL, '', NULL, 'WORK', 141, 1),
(1236, '2018-12-07 05:44:58', '2018-12-07 05:44:58', '07-26-2018', '07', '2018', '09-27-2018', '09', '2018', NULL, '22.5', '61', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 141, 1),
(1237, '2018-12-07 05:47:46', '2018-12-07 05:47:46', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '23.5', '23.5', '61.2', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 141, 1),
(1238, '2018-12-07 05:49:41', '2018-12-07 05:49:41', '11-29-2018', '11', '2018', '01-30-2019', '01', '2019', '26.5', '26.5', '61.2', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 141, 1),
(1239, '2018-12-07 05:53:03', '2018-12-07 05:53:03', '10-25-2018', '10', '2018', '11-08-2018', '11', '2018', '6', '6', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '32', '30', '30', NULL, NULL, '', NULL, 'WORK', 105, 1),
(1240, '2018-12-07 05:54:39', '2018-12-07 05:54:39', '11-08-2018', '11', '2018', '12-06-2018', '12', '2018', '7', '7', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 105, 1),
(1241, '2018-12-07 05:57:56', '2018-12-07 05:57:56', '09-26-2018', '09', '2018', '11-21-2018', '11', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ABC/3TC/LPV/r', NULL, NULL, '[null]', NULL, NULL, '5', '120', '60', NULL, NULL, '', NULL, 'REPRESENTED', 48, 1),
(1242, '2018-12-07 06:00:10', '2018-12-07 06:00:10', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, NULL, 'ABC 3TC LPV/r', NULL, NULL, '[null]', NULL, NULL, NULL, '240', '60', NULL, NULL, '', NULL, 'REPRESENTED', 48, 1),
(1243, '2018-12-07 06:34:24', '2018-12-07 06:34:24', '09-05-2018', '09', '2018', '12-05-2018', '12', '2018', '26', '26', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '52', '60', '60', NULL, NULL, '', NULL, 'WORK', 163, 1),
(1244, '2018-12-07 10:55:45', '2018-12-07 10:55:45', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '28', '28', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'no FP', '52', '60', '60', NULL, NULL, '', NULL, 'WORK', 163, 1),
(1245, '2018-12-07 10:58:54', '2018-12-07 10:58:54', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '51', '51', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', '21', '30', '30', NULL, NULL, '', NULL, 'WORK', 37, 1),
(1246, '2018-12-07 11:00:42', '2018-12-07 11:00:42', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '52', '52', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 37, 1),
(1247, '2018-12-07 11:03:42', '2018-12-07 11:03:42', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '31.5', '31.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '65', '60', '60', NULL, NULL, '', NULL, 'WORK', 144, 1),
(1248, '2018-12-07 19:53:50', '2018-12-07 19:53:50', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '36', '36', NULL, NULL, 'work', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '36', '30', '30', NULL, NULL, '', NULL, 'WORK', 183, 1),
(1249, '2018-12-07 19:55:11', '2018-12-07 19:55:11', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '37', '37', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 183, 1),
(1250, '2018-12-07 19:57:57', '2018-12-07 19:57:57', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '30', '30', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', '51', '30', '30', NULL, NULL, '', NULL, 'WORK', 198, 1),
(1251, '2018-12-07 19:59:41', '2018-12-07 19:59:41', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, NULL, 198, 1),
(1252, '2018-12-07 20:02:42', '2018-12-07 20:02:42', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '8', '8', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '20', '30', '30', NULL, NULL, '', NULL, 'WORK', 172, 1),
(1253, '2018-12-07 20:04:03', '2018-12-07 20:04:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8', NULL, NULL, NULL, '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL>839', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 172, 1),
(1254, '2018-12-07 20:05:44', '2018-12-07 20:05:44', '11-07-2018', '11', '2018', '02-06-2019', '02', '2019', '9', '9', '52', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NOFP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 172, 1),
(1255, '2018-12-07 20:24:03', '2018-12-07 20:24:03', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '14', '14', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '46', '60', '60', NULL, NULL, '', NULL, 'WORK', 162, 1),
(1256, '2018-12-07 20:26:21', '2018-12-07 20:26:21', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '16', '16', '79', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 162, 1),
(1257, '2018-12-07 20:32:17', '2018-12-07 20:32:17', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '3', '3', '72', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TD/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '58', '60', '60', NULL, NULL, '', NULL, 'WORK', 253, 1),
(1258, '2018-12-08 05:22:49', '2018-12-08 05:22:49', '12-05-2018', '12', '2018', '01-31-2019', '01', '2019', '5', '5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', 'MUAC|+', 'no fp', '58', '30', '30', NULL, NULL, '', NULL, 'WORK', 253, 1),
(1259, '2018-12-08 05:26:58', '2018-12-08 05:26:58', '10-31-2018', '10', '2018', '11-29-2018', '11', '2018', '1', '1', '73', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '24', '30', '30', NULL, NULL, '', NULL, 'WORK', 225, 1),
(1260, '2018-12-08 05:29:31', '2018-12-08 05:29:31', '12-05-2018', '12', '2018', '01-31-2019', '01', '2019', '4', '4', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL NOT SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 225, 1),
(1261, '2018-12-08 05:33:08', '2018-12-08 05:33:08', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '36', '36', '60', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '33', '30', '30', NULL, NULL, '', NULL, 'WORK', 71, 1),
(1262, '2018-12-08 05:34:51', '2018-12-08 05:34:51', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '39', '39', NULL, NULL, 'WORKVL SUPP', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 71, 1),
(1263, '2018-12-08 05:37:42', '2018-12-08 05:37:42', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '51', '51', '51', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '28', '30', '30', NULL, NULL, '', NULL, 'WORK', 57, 1),
(1264, '2018-12-08 05:39:44', '2018-12-08 05:39:44', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 57, 1),
(1265, '2018-12-08 05:43:55', '2018-12-08 05:43:55', '09-05-2018', '09', '2018', '10-03-2018', '10', '2018', '27', '27', '51', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '33', '30', '30', NULL, NULL, '', NULL, 'WORK', 159, 1),
(1266, '2018-12-08 05:47:06', '2018-12-08 05:47:06', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '28', '28', '51', NULL, 'work', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ABC/3TC/ATVr', 'VL TODAY', NULL, '[null]', NULL, 'no pf', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 159, 1),
(1267, '2018-12-08 05:49:43', '2018-12-08 05:49:43', '12-05-2018', '12', '2018', '01-04-2019', '01', '2019', '30', '30', '51', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ABC/3TC/ATVr', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '120', '30', NULL, NULL, '', NULL, 'WORK', 159, 1),
(1268, '2018-12-08 05:53:48', '2018-12-08 05:53:48', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '25', '25', '50', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL NEXT VISIT', NULL, '[null]', 'MUAC|+', 'NO FP', '29', '30', '30', NULL, NULL, '', NULL, 'WORK', 181, 1),
(1269, '2018-12-08 05:57:31', '2018-12-08 05:57:31', '12-05-2018', '12', '2018', '02-06-2018', '02', '2018', '27', '27', '50', '170.1', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 181, 1),
(1270, '2018-12-08 06:00:48', '2018-12-08 06:00:48', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '20.5', '20.5', '59', '160CM', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '42', '60', '60', NULL, NULL, '', NULL, 'WORK', 180, 1),
(1271, '2018-12-08 06:03:17', '2018-12-08 06:03:17', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '22.5', '22.5', '59', '160CM', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL FEB 2018', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 180, 1),
(1272, '2018-12-08 06:06:05', '2018-12-08 06:06:05', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '29.5', '29.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '65', '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 189, 1),
(1273, '2018-12-08 06:08:45', '2018-12-08 06:08:45', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '30.5', '30.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL FEB 2018', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 189, 1),
(1274, '2018-12-08 06:12:45', '2018-12-08 06:12:45', '09-26-2018', '09', '2018', '12-05-2018', '12', '2018', '47', '47', '58', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL TODAY', NULL, '[null]', 'MUAC|+', 'NO FP', '60', '60', '60', NULL, NULL, '', NULL, 'WORK', 246, 1),
(1275, '2018-12-08 06:14:59', '2018-12-08 06:14:59', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '49', '49', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60NO', NULL, NULL, '', NULL, 'WORK', 246, 1),
(1276, '2018-12-08 06:19:08', '2018-12-08 06:19:08', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '66', '66', '48', '152CM', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[null]', 'MUAC|+', 'NO FP', '40', '30', '30', NULL, NULL, '', NULL, 'WORK', 214, 1),
(1277, '2018-12-08 06:22:06', '2018-12-08 06:22:06', '05-12-2018', '05', '2018', '02-06-2019', '02', '2019', '68', '68', '48', '152', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 214, 1),
(1278, '2018-12-08 06:31:36', '2018-12-08 06:31:36', '10-31-2018', '10', '2018', '12-05-2018', '12', '2018', '25', '25', '40', '147.2', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', 'MUAC|+', 'NO FP', '30', '60', '60', NULL, NULL, '', NULL, 'WORK', 46, 1),
(1279, '2018-12-08 06:33:10', '2018-12-08 06:33:10', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '27', '27', '44', '147.2', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 46, 1),
(1280, '2018-12-08 06:35:59', '2018-12-08 06:35:59', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '16', '16', '48', '156.7', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '25', '30', '30', NULL, NULL, '', NULL, 'WORK', 182, 1),
(1281, '2018-12-08 06:38:35', '2018-12-08 06:38:35', '12-05-2018', '12', '2018', '01-30-2019', '01', '2019', '17', '17', '49', '156.7', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 182, 1),
(1282, '2018-12-08 06:41:23', '2018-12-08 06:41:23', '12-05-2018', '12', '2018', '01-30-2019', '01', '2019', '17', '17', '49', '156.7', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 182, 1),
(1283, '2018-12-08 06:45:32', '2018-12-08 06:45:32', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '42.5', '42.5', '64', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '55', '30', '30', NULL, NULL, '', NULL, 'WORK', 175, 1),
(1284, '2018-12-08 06:47:45', '2018-12-08 06:47:45', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '44', '44', '64', '153.1', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 175, 1),
(1285, '2018-12-08 06:50:37', '2018-12-08 06:50:37', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', NULL, NULL, NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL FEB', NULL, '[null]', NULL, NULL, '39', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 207, 1),
(1286, '2018-12-08 06:52:38', '2018-12-08 06:52:38', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL FEB 2019', NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 207, 1),
(1287, '2018-12-08 06:55:46', '2018-12-08 06:55:46', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '2', '2', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '53', '60', '60', 'SPUTUM', NULL, '', NULL, 'WORK', 191, 1),
(1288, '2018-12-08 06:57:13', '2018-12-08 06:57:13', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '4', '4', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 191, 1),
(1289, '2018-12-09 18:04:12', '2018-12-09 18:04:12', '08-01-2018', '08', '2018', '10-03-2018', '10', '2018', '25', '25', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '28', '60', '60', NULL, NULL, '', NULL, 'WORK', 78, 1),
(1290, '2018-12-09 18:05:47', '2018-12-09 18:05:47', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '27', '27', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 78, 1),
(1291, '2018-12-09 18:09:01', '2018-12-09 18:09:01', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '48.5', '48.5', '43', '149.4', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '35', '30', '30', NULL, NULL, '', NULL, 'WORK', 72, 1),
(1292, '2018-12-09 18:11:00', '2018-12-09 18:11:00', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', NULL, '48.5', '43.3', '149.4', 'WORK43.3', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'DEPO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 72, 1),
(1293, '2018-12-09 18:21:11', '2018-12-09 18:21:11', '09-26-2018', '09', '2018', '12-05-2018', '12', '2018', '4.5', '4.5', '65', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '43', '60', '60', NULL, NULL, '', NULL, 'WORK', 166, 1),
(1294, '2018-12-09 18:23:00', '2018-12-09 18:23:00', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '6.5', '6.5', '65', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO/FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 166, 1),
(1295, '2018-12-09 19:14:48', '2018-12-09 19:14:48', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '48', '48', NULL, '144', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE JAN 2019', NULL, '[null]', 'MUAC|+', 'no fp', '55', '30', '30', NULL, NULL, '', NULL, 'WORK', 147, 1),
(1296, '2018-12-09 19:16:06', '2018-12-09 19:16:06', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '49', '49', NULL, '144', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 147, 1),
(1297, '2018-12-09 19:45:12', '2018-12-09 19:45:12', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '8', '8', '59', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'A WAITS RESULTS', NULL, '[null]', 'MUAC|+', 'NO FP', '50', '30', '30', NULL, NULL, '', NULL, 'WORK', 197, 1),
(1298, '2018-12-09 19:47:28', '2018-12-09 19:47:28', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '9', '9', '59', '168', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 197, 1),
(1299, '2018-12-09 19:50:51', '2018-12-09 19:50:51', '10-19-2018', '10', '2018', '12-05-2018', '12', '2018', '4', '4', '60', NULL, 'WORK', '2', 'Suspect', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '37', '30', '30', 'SPUTUM', NULL, '', NULL, 'WORK', 268, 1),
(1300, '2018-12-09 19:53:32', '2018-12-09 19:53:32', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '6', '6', '60', '152', 'WORK', '2', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL TODAY', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 268, 1),
(1301, '2018-12-09 20:02:30', '2018-12-09 20:02:30', '10-31-2018', '10', '2018', '11-28-2018', '11', '2018', '33', '33', '47', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'DEPO', '37', '30', '30', NULL, NULL, '', NULL, 'WORK', 222, 1),
(1302, '2018-12-09 20:04:43', '2018-12-09 20:04:43', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '34', '34', '47', NULL, 'WORK', '2', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'DEPO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 222, 1),
(1303, '2018-12-09 21:00:13', '2018-12-09 21:00:13', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '7', '7', '47', '139', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '25', '30', '30', NULL, NULL, '', NULL, 'WORK', 206, 1),
(1304, '2018-12-09 21:04:19', '2018-12-09 21:04:19', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '8', '8', '47', '139', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 206, 1),
(1305, '2018-12-09 21:09:37', '2018-12-09 21:09:37', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '3', '3', '51', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 251, 1),
(1306, '2018-12-09 21:12:30', '2018-12-09 21:12:30', '12-05-2018', '12', '2018', '01-30-2019', '01', '2019', '5', '5', NULL, NULL, 'REPRESENTED', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 251, 1),
(1307, '2018-12-09 21:16:35', '2018-12-09 21:16:35', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '12', '12', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '50', '60', '60', 'SPUTUM', NULL, '', NULL, 'WORK', 114, 1),
(1308, '2018-12-09 21:18:43', '2018-12-09 21:18:43', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '14', '14', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 114, 1),
(1309, '2018-12-09 21:23:03', '2018-12-09 21:23:03', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '11.5', '11.5', '40', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '50', '60', '60', NULL, NULL, '', NULL, 'WORK', 132, 1),
(1310, '2018-12-09 21:26:31', '2018-12-09 21:26:31', '11-28-2018', '11', '2018', '01-30-2019', '01', '2019', '13.5', '13.5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 132, 1),
(1311, '2018-12-09 21:30:35', '2018-12-09 21:30:35', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '8', '8', '48', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EF V', 'VL TODAY', NULL, '[null]', 'MUAC|+', 'NO FP', '43', '60', '60', NULL, NULL, '', NULL, 'WORK', 263, 1),
(1312, '2018-12-09 21:32:43', '2018-12-09 21:32:43', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '10', '10', '48', NULL, 'WORK', '2', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 263, 1),
(1313, '2018-12-09 21:36:01', '2018-12-09 21:36:01', '10-06-2018', '10', '2018', '12-05-2018', '12', '2018', '10.5', '10.5', NULL, NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'A WAITS RESULTS', NULL, '[null]', 'MUAC|+', 'NO FP', '45', '60', '6O', NULL, NULL, '', NULL, 'WORK', 155, 1),
(1314, '2018-12-09 21:38:34', '2018-12-09 21:38:34', '12-05-2018', '12', '2018', '01-30-2019', '01', '2019', '11.5', '11.5', NULL, NULL, 'WORK', '2', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 155, 1),
(1315, '2018-12-09 21:41:31', '2018-12-09 21:41:31', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '18.5', '18.5', '63', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '40', '30', '30', NULL, NULL, '', NULL, 'WORK', 55, 1),
(1316, '2018-12-09 21:46:13', '2018-12-09 21:46:13', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '19.5', '19.5', '63', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'A WAITS RESULTS', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 55, 1),
(1317, '2018-12-09 21:51:29', '2018-12-09 21:51:29', '10-30-2018', '10', '2018', '12-05-2018', '12', '2018', '3', '3', '51', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '60', '120', '60', NULL, NULL, '', NULL, 'WORK', 219, 1),
(1318, '2018-12-09 21:54:06', '2018-12-09 21:54:06', '12-05-2018', '12', '2018', '03-06-2019', '03', '2019', '5', '5', '51', '170.2', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 219, 1),
(1319, '2018-12-09 21:59:14', '2018-12-09 21:59:14', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '10', '10', '45', NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, '28', '28', NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 126, 1);
INSERT INTO `hiv_card_rrecords` (`id`, `created_at`, `updated_at`, `date_checked_in`, `month_checked_in`, `year_checked_in`, `follow_up_date`, `follow_up_month`, `follow_up_year`, `duration_since_start_regimen`, `duration_since_start_art`, `Wt`, `method_hieght`, `function_work`, `WHO_clinic_stage`, `TB_status`, `potential_side_effects`, `other_problems`, `Cotrimoxole_Adhere`, `Cotrimoxole_Dose`, `Cotrimoxole_days`, `INH_of_pills`, `INH_of_days`, `Other_methods_dispensed`, `ARV_adhere`, `ARV_regimen`, `CD4_count`, `link_provider`, `reason_for_pooradherence`, `muac_oedema`, `fp_nofp`, `age`, `ARV_regimen_of_pills`, `ARV_regimen_of_dispensed`, `infant_ab_pcr`, `edd_emtct`, `TB_rx`, `district_tb`, `functional_status`, `hiv_care_art_card_id`, `user_id`) VALUES
(1320, '2018-12-09 22:02:00', '2018-12-09 22:02:00', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '12', '12', '45', NULL, 'WORK', '2', NULL, '[null]', '[null]', NULL, NULL, NULL, '56', '56', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 126, 1),
(1321, '2018-12-10 05:02:42', '2018-12-10 05:02:42', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '50.5', '50.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'A WAITS RESULTS', NULL, '[null]', 'MUAC|+', 'NO FP', '55', '60', '60', NULL, NULL, '', NULL, 'WORK', 45, 1),
(1322, '2018-12-10 05:04:14', '2018-12-10 05:04:14', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '52.5', '52.5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 45, 1),
(1323, '2018-12-10 05:07:20', '2018-12-10 05:07:20', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '8', '8', '58', NULL, 'WORK', '1', 'Suspect', '[null]', '[[\"COUGH*\"]]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NO FP', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 262, 1),
(1324, '2018-12-10 05:12:45', '2018-12-10 05:12:45', '12-05-2018', '12', '2018', '01-30-2019', '01', '2019', '10', '10', '57', NULL, 'WORK', '1', 'Currently on TB Treatment', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DUE FEB 2019', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '12-05-2018', NULL, 'WORK', 262, 1),
(1325, '2018-12-10 05:16:31', '2018-12-10 05:16:31', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', 'VL NONE SUPP DUE FEB 2019', NULL, '[null]', 'MUAC|+', 'NO FP', '39', '120', '60', NULL, NULL, '', NULL, 'WORK', 43, 1),
(1326, '2018-12-10 05:18:41', '2018-12-10 05:18:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '59', '149.1', NULL, '1', NULL, '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Poor', 'AZT/3TC/NVP', 'VL DUE FEB 2019', NULL, '[null]', NULL, NULL, NULL, '120', '60', NULL, NULL, '', NULL, 'WORK', 43, 1),
(1327, '2018-12-10 05:22:45', '2018-12-10 05:22:45', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '14', '14', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '30', '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 121, 1),
(1328, '2018-12-10 05:24:58', '2018-12-10 05:24:58', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '15', '15', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL FEB 2019', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 121, 1),
(1329, '2018-12-10 05:29:48', '2018-12-10 05:29:48', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '4.5', '4.5', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'DUE VL', NULL, '[null]', NULL, NULL, '37', '60', '60', NULL, NULL, '', NULL, 'REPRESENTED', 41, 1),
(1330, '2018-12-10 05:31:58', '2018-12-10 05:31:58', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '5.5', '5.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 41, 1),
(1331, '2018-12-10 05:36:41', '2018-12-10 05:36:41', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '20', '20', '15', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', NULL, NULL, NULL, 'Good', 'ABC/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '2', '240', '60', NULL, NULL, '', NULL, 'PLAYING', 220, 1),
(1332, '2018-12-10 05:40:17', '2018-12-10 05:40:17', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '22', '22', '15', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, '60', '60', '60', '60', NULL, NULL, 'ABC/3TC/NVP', 'VL DONE', NULL, '[null]', NULL, 'NO FP', NULL, '240', '60', NULL, NULL, '', NULL, 'PLAYING', 220, 1),
(1333, '2018-12-10 05:53:38', '2018-12-10 05:53:38', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '10', '10', NULL, NULL, 'PLAYING', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '60', '60', '56', '56', NULL, 'Good', 'AZT/3TC/NVP', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '2', '240', '60', NULL, NULL, '', NULL, 'PLAYING', 112, 1),
(1334, '2018-12-10 05:55:36', '2018-12-10 05:55:36', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '12', '12', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, '60', NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, '[null]', NULL, NULL, NULL, '240', '60', NULL, NULL, '', NULL, 'PLAYING', 112, 1),
(1335, '2018-12-10 06:26:19', '2018-12-10 06:26:19', '08-29-2018', '08', '2018', '09-26-2018', '09', '2018', '20', '20', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '27', '60', '60', NULL, NULL, '', NULL, 'WORK', 67, 1),
(1336, '2018-12-10 06:30:15', '2018-12-10 06:30:15', '09-26-2018', '09', '2018', '11-28-2018', '11', '2018', '22', '22', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 67, 1),
(1337, '2018-12-10 06:33:12', '2018-12-10 06:33:12', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '24', '24', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC /EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 67, 1),
(1338, '2018-12-10 06:36:37', '2018-12-10 06:36:37', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '13', '13', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '39', '60', '60', NULL, NULL, '', NULL, 'WORK', 224, 1),
(1339, '2018-12-10 06:38:33', '2018-12-10 06:38:33', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '15', '15', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 224, 1),
(1340, '2018-12-10 06:44:17', '2018-12-10 06:44:17', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '4', '4', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Fair', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '59', '60', '60', NULL, NULL, '', NULL, 'WORK', 218, 1),
(1341, '2018-12-10 06:50:56', '2018-12-10 06:50:56', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '11', '11', '42', '165', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '37', '30', '30', NULL, NULL, '', NULL, 'WORK', 117, 1),
(1342, '2018-12-10 06:52:37', '2018-12-10 06:52:37', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '12', '12', '42', '165', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 117, 1),
(1343, '2018-12-10 06:56:22', '2018-12-10 06:56:22', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '7', '7', '52', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'CONDOMS', '43', '60', '60', NULL, NULL, '', NULL, 'WORK', 265, 1),
(1344, '2018-12-10 06:58:33', '2018-12-10 06:58:33', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '9', '9', '52', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'CONDOMS', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 265, 1),
(1345, '2018-12-10 07:51:21', '2018-12-10 07:51:21', '09-26-2018', '09', '2018', '10-31-2018', '10', '2018', '55', '55', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'depo', '27', '30', '30', NULL, NULL, '', NULL, 'WORK', 44, 1),
(1346, '2018-12-10 07:52:58', '2018-12-10 07:52:58', '10-31-2018', '10', '2018', '12-05-2018', '12', '2018', '56', '56', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'DEPO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 44, 1),
(1347, '2018-12-10 07:55:42', '2018-12-10 07:55:42', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '58', '58', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VL DONE', NULL, '[null]', NULL, 'DEPO', NULL, '60TDF/3TC/EFV', '60', NULL, NULL, '', NULL, 'WORK', 44, 1),
(1348, '2018-12-10 08:02:11', '2018-12-10 08:02:11', '09-28-2018', '09', '2018', '11-29-2018', '11', '2018', '7', '7', '71', '160', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, '30', '30', NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', 'MUAC|+', 'NO FP', '22', '60', '60', NULL, NULL, '', NULL, 'WORK', 122, 1),
(1349, '2018-12-10 08:04:37', '2018-12-10 08:04:37', '12-05-2018', '12', '2018', '01-31-2019', '01', '2019', '8', '8', NULL, '160', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, '30', NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 122, 1),
(1350, '2018-12-10 08:08:56', '2018-12-10 08:08:56', '09-28-2018', '09', '2018', '11-29-2018', '11', '2018', '1', '1', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NONE', '24', '60', '60', NULL, NULL, '', NULL, 'WORK', 281, 1),
(1351, '2018-12-10 08:10:47', '2018-12-10 08:10:47', '12-05-2018', '12', '2018', '01-31-2019', '01', '2019', '3', '3', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 281, 1),
(1352, '2018-12-10 08:16:28', '2018-12-10 08:16:28', '09-26-2018', '09', '2018', '11-29-2018', '11', '2018', '16.5', '16.5', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE TODAY', NULL, '[null]', 'MUAC|+', 'DEPO', '30', '60', '60', NULL, NULL, '', NULL, 'WORK', 113, 1),
(1353, '2018-12-10 08:18:30', '2018-12-10 08:18:30', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '18.5', '18.5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'DEPO', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 113, 1),
(1354, '2018-12-10 20:30:51', '2018-12-10 20:30:51', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '32', '32', NULL, NULL, 'represented', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF//EFV3TC', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '45', '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 77, 1),
(1355, '2018-12-10 20:33:03', '2018-12-10 20:33:03', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '33', '33', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORKTDF/3TC/EFV', 77, 1),
(1356, '2018-12-10 20:42:16', '2018-12-10 20:42:16', '08-29-2018', '08', '2018', '10-31-2018', '10', '2018', '15', '15', '72', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 210, 1),
(1357, '2018-12-10 20:47:54', '2018-12-10 20:47:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '15', NULL, NULL, NULL, '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 210, 1),
(1358, '2018-12-10 20:50:15', '2018-12-10 20:50:15', '12-05-2018', '12', '2018', '01-30-2019', '01', '2019', '17', '17', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 210, 1),
(1359, '2018-12-10 20:57:58', '2018-12-10 20:57:58', '10-31-2018', '10', '2018', '11-28-2018', '11', '2018', '56', '56', '78', NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', 'MUAC|+', 'IUD', '25', '30', '30', NULL, NULL, '', NULL, 'WORK', 216, 1),
(1360, '2018-12-10 20:59:52', '2018-12-10 20:59:52', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '57', '57', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 216, 1),
(1361, '2018-12-11 06:11:08', '2018-12-11 06:11:08', '09-27-2018', '09', '2018', '10-31-2018', '10', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '22', '30', '30', NULL, NULL, '', NULL, 'WORK', 17, 1),
(1362, '2018-12-11 06:13:07', '2018-12-11 06:13:07', '10-31-2018', '10', '2018', '11-28-2018', '11', '2018', NULL, NULL, '52', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 17, 1),
(1363, '2018-12-11 06:15:08', '2018-12-11 06:15:08', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', NULL, NULL, '52', NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 17, 1),
(1364, '2018-12-11 06:18:37', '2018-12-11 06:18:37', '10-25-2018', '10', '2018', '12-05-2018', '12', '2018', NULL, NULL, '62', '172', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'DUE FOR VL', NULL, '[null]', 'MUAC|+', 'NO FP', '29', '60', '60', NULL, NULL, '', NULL, 'WORK', 136, 1),
(1365, '2018-12-11 06:20:53', '2018-12-11 06:20:53', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', NULL, NULL, '62', '172', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL DONE', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 136, 1),
(1366, '2018-12-11 06:24:18', '2018-12-11 06:24:18', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '15', '15', NULL, NULL, 'REPRESENTED', NULL, NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, NULL, '52', '30', '30', NULL, NULL, '', NULL, 'REPRESENTED', 88, 1),
(1367, '2018-12-11 06:26:49', '2018-12-11 06:26:49', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '17', '17', '56', '166.5', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 88, 1),
(1368, '2018-12-11 06:39:03', '2018-12-11 06:39:03', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '45', '45', '67', '175.5', 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL DUE OCT 2018', NULL, '[null]', 'MUAC|+', 'NO FP', '37', '60', '60', NULL, NULL, '', NULL, 'WORK', 201, 1),
(1369, '2018-12-11 06:42:03', '2018-12-11 06:42:03', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '47', '47', '67', '175.5', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'AWAITS RESULTS', NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 201, 1),
(1370, '2018-12-11 06:45:56', '2018-12-11 06:45:56', '10-20-2018', '10', '2018', '11-29-2018', '11', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'IUD', '21', '30', '30', NULL, NULL, '', NULL, 'WORK', 26, 1),
(1371, '2018-12-11 06:47:46', '2018-12-11 06:47:46', '11-29-2018', '11', '2018', '01-31-2019', '01', '2019', NULL, NULL, NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', NULL, 'IUD', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 26, 1),
(1372, '2018-12-11 06:52:41', '2018-12-11 06:52:41', '10-03-2018', '10', '2018', '12-05-2018', '12', '2018', '25', '25', NULL, NULL, 'WORK', '2', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', 'VL SUPP', NULL, '[null]', 'MUAC|+', 'NO FP', '50', '60', '60', NULL, NULL, '', NULL, 'WORK', 199, 1),
(1373, '2018-12-11 06:55:14', '2018-12-11 06:55:14', '12-06-2018', '12', '2018', '01-30-2019', '01', '2019', '27', '27', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '30', '30', NULL, NULL, '', NULL, 'WORK', 199, 1),
(1374, '2018-12-12 21:31:50', '2018-12-12 21:31:50', '11-10-2018', '11', '2018', '12-05-2018', '12', '2018', NULL, NULL, NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'JADELLE', '30', '15', '15', NULL, NULL, '', NULL, 'WORK', 289, 1),
(1375, '2018-12-12 21:34:18', '2018-12-12 21:34:18', '12-05-2018', '12', '2018', '02-06-2019', '02', '2019', '0.5', '0.5', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, '60', '60', '56', '56', NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'JADELLE', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 289, 1),
(1376, '2018-12-12 21:50:07', '2018-12-12 21:50:07', '09-27-2018', '09', '2018', '11-29-2018', '11', '2018', '54', '54', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '25', '60', '60', NULL, NULL, '', NULL, 'WORK', 40, 1),
(1377, '2018-12-12 21:53:27', '2018-12-12 21:53:27', '12-12-2018', '12', '2018', '02-06-2019', '02', '2019', '56', '56', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 40, 1),
(1378, '2018-12-12 21:58:45', '2018-12-12 21:58:45', '11-07-2018', '11', '2018', '12-12-2018', '12', '2018', '29', '29', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'TDF/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'NO FP', '39', '30', '30', NULL, NULL, '', NULL, 'WORK', 185, 1),
(1379, '2018-12-12 22:01:03', '2018-12-12 22:01:03', '12-12-2018', '12', '2018', '02-06-2019', '02', '2019', '30', '30', NULL, '173', 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '60', '60', NULL, NULL, '', NULL, 'WORK', 185, 1),
(1380, '2018-12-15 20:17:42', '2018-12-15 20:17:42', '11-07-2018', '11', '2018', '12-05-2018', '12', '2018', '38', '38', NULL, NULL, 'WORK', '1', 'No signs or Symptoms of TB', '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, 'Good', 'AZT/3TC/EFV', NULL, NULL, '[null]', 'MUAC|+', 'no fp', '11', '60', '30', NULL, NULL, '', NULL, 'WORK', 256, 1),
(1381, '2018-12-15 20:19:48', '2018-12-15 20:19:48', '12-12-2018', '12', '2018', '02-06-2019', '02', '2019', '39', '39', NULL, NULL, 'WORK', '1', NULL, '[null]', '[null]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/EFV', NULL, NULL, '[null]', NULL, 'NO FP', NULL, '12O', '6O', NULL, NULL, '', NULL, 'WORK', 256, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hiv_care_art_cards`
--

CREATE TABLE `hiv_care_art_cards` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `PatientNumber` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `health_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_of_birth` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_of_birth` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `merital_status` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_owner_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treatmemnt_suporter` text COLLATE utf8mb4_unicode_ci,
  `treatment_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treatment_telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_based_care_provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_allagies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_comfirmed_hiv` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_comfirmed_hiv` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_comfirmed_hiv` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_hive_confirmation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_enrolled_in_HIV` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_enrolled_in_HIV` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_enrolled_in_HIV` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cohort` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_medically_legible` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_medically_legible` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_medically_legible` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clinical_stage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_why_elligible` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_madically_eligible_date_ART` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_madically_eligible_date_ART` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_madically_eligible_date_ART` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_transfered_in` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_transfered_in` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_transfered_in` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfred_in_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_art_started` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_art_started` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_art_started` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `initial_regimen` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_at_ART_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `function_at_ART_start` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_transfred_out` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_transfred_out` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_transfred_out` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_tranfred_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_died` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month_died` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_died` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_live_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preg` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lact` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relevant_medical_conditions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village_id` int(10) UNSIGNED DEFAULT NULL,
  `pt_clinic_id` int(10) UNSIGNED DEFAULT NULL,
  `care_entry_point_id` int(10) UNSIGNED DEFAULT NULL,
  `care_entry_point_specify` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_clinitian_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hiv_care_art_cards`
--

INSERT INTO `hiv_care_art_cards` (`id`, `created_at`, `updated_at`, `PatientNumber`, `health_unit`, `surName`, `firstName`, `sex`, `age`, `date_of_birth`, `month_of_birth`, `year_of_birth`, `merital_status`, `address`, `test_type`, `test_location`, `phone_number`, `phone_owner_name`, `treatmemnt_suporter`, `treatment_address`, `treatment_telephone`, `home_based_care_provider`, `drug_allagies`, `date_comfirmed_hiv`, `month_comfirmed_hiv`, `year_comfirmed_hiv`, `place_of_hive_confirmation`, `date_enrolled_in_HIV`, `month_enrolled_in_HIV`, `year_enrolled_in_HIV`, `cohort`, `date_medically_legible`, `month_medically_legible`, `year_medically_legible`, `clinical_stage`, `reason_why_elligible`, `date_madically_eligible_date_ART`, `month_madically_eligible_date_ART`, `year_madically_eligible_date_ART`, `date_transfered_in`, `month_transfered_in`, `year_transfered_in`, `transfred_in_from`, `date_art_started`, `month_art_started`, `year_art_started`, `initial_regimen`, `weight_at_ART_start`, `function_at_ART_start`, `date_transfred_out`, `month_transfred_out`, `year_transfred_out`, `place_tranfred_to`, `date_died`, `month_died`, `year_died`, `person_live_status`, `preg`, `lact`, `relevant_medical_conditions`, `village_id`, `pt_clinic_id`, `care_entry_point_id`, `care_entry_point_specify`, `district_clinitian_id`, `user_id`) VALUES
(6, '2018-04-23 14:20:38', '2018-04-27 08:25:28', '02', 'KASUBI HEALTH CENTER 3', 'NAMBOZE', 'GRACE', 'Female', '28', NULL, NULL, NULL, 'Divorced', 'KASUBI TOWN', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12-19-2012', '12', '2012', 'KASUBI HEALTH CENETR 3', '12-19-2012', '12', '2012', '6/2015', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '62.7', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 3, 3, 11, NULL, NULL, 1),
(11, '2018-04-24 09:39:27', '2018-04-24 10:13:22', '10', 'KASUBI HEALTH CENTRE 3', 'LUKYAMUZI', 'BAKALI', 'Male', '32', NULL, NULL, NULL, 'Married', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-24-2018', '04', '2018', 'KASUBI HEALTH CENTRE 3', NULL, NULL, NULL, NULL, '05-17-2013', '05', '2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-17-2013', '05', '2013', 'AZT/3TC/NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, 1),
(12, '2018-04-24 10:35:04', '2018-04-24 11:18:49', '14', 'KASUBI HEALTH CENTRE 3', 'NALUBEGA', 'CATE', 'Female', '27', NULL, NULL, NULL, 'Married', 'KASUBI TOWN KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', NULL, NULL, NULL, NULL, 'BAKALI', '3', NULL, 'BAKALI', NULL, '02-21-2013', '02', '2013', '2/21/2013', '02-21-2013', '02', '2013', '2/2013', '02-21-2013', '02', '2013', '1', 'BREASTFEEDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-25-2013', '02', '2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, 3, 3, 1, NULL, NULL, 1),
(13, '2018-04-24 11:02:20', '2018-05-01 13:47:31', '15', 'KASUBI HEALTH CENTER 3', 'KABAKULE', 'PASKALI', 'Male', '57', NULL, NULL, NULL, 'Married', 'NAMALIGA VILLAGE LUWAYO PARISH KAWOLO SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256758282268', 'PERSONEL', 'BABIRYE MARGRET', NULL, NULL, NULL, NULL, '01-05-2013', '01', '2013', 'KASUBI HEALTH CENTER 3', '03-07-2013', '03', '2013', '3/2013', '03-07-2013', '03', '2013', '2', 'CLINICAL STAGE 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-07-2013', '03', '2013', 'TDF/3TC/EFV', '54.6', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 22, 3, 11, NULL, NULL, 1),
(17, '2018-04-24 11:51:41', '2018-04-24 12:31:16', '22', 'KASUBI HEALTH CENTER 3', 'NAMAKULA', 'RUTH', 'Female', '22', NULL, NULL, NULL, 'Married', 'LUWAYO VILLAGE LUWAYO PARISH KAWOLO SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'HUSBAND', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '60', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 1),
(18, '2018-04-24 12:44:51', '2018-05-09 08:29:28', '32', 'KASUBI HEALTH CENTER 3', 'KIBIRANGO', 'JOSEPH', 'Male', '1', '09-04-2012', '09', '2012', 'Child', 'KITAZI VILLAGE KITAZI PARISH BUIKWE SUB COUNTY BUIKWE DISTRICT', 'PCR', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'NABAKOOZA JOSEPHINE', '7', NULL, 'KYOBE RICHARD', NULL, '03-15-2013', '03', '2013', 'KASUBI HEALTH CENTER 3', '03-15-2013', '03', '2013', '5/2013', '05-05-2013', '05', '2013', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-17-2013', '05', '2013', 'D4T/3TC/NVP', '7.2', 'PLAYING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 5, NULL, NULL, 1),
(19, '2018-04-25 08:25:55', '2018-05-01 13:48:19', '26', 'KASUBI HEALTH CENTER 3', 'KYOBE', 'RICHARD', 'Male', '34', '08-19-1979', '08', '1979', 'Married', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'NABAKOOZA JOSEPHINE', NULL, NULL, 'KYOBE RICHARD', NULL, '02-27-2013', '02', '2013', 'KASUBI HEALTH CENTER 3', '02-27-2013', '02', '2013', '10/16/2013', '10-16-2013', '10', '2013', '2', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-16-2013', '10', '2013', 'TDF/3TC/NVP', '79', 'CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(20, '2018-04-25 09:00:57', '2018-05-01 13:56:45', '27', 'KASUBI HEALTH CENTER 3', 'NAMUSISI', 'ROBINAH', 'Female', '21', NULL, NULL, NULL, 'Married', 'KIGALI VILLAGE', 'Ab', 'KASUBI HEALTH CENTER 3', '+256778946858', 'HUSBAND', 'NTEGE ZAKAYO', NULL, '+256776247585', 'NTEGE ZAKAYO', NULL, '02-27-2013', '02', '2013', 'LIVING WATER HEALTH CENTER', '03-04-2013', '03', '2013', '3/2013', '03-04-2013', '03', '2013', '2', 'PREGNANT', NULL, NULL, NULL, '03-04-2013', '03', '2013', 'BUSABAGA HEALTH CENTER 3', '04-03-2018', '04', '2018', 'TDF/3TC/EFV', NULL, 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', 'PREGNANT', 23, 3, 1, NULL, NULL, 1),
(24, '2018-04-25 11:42:45', '2018-05-01 14:01:57', '35', 'KASUBI HEALTH CENTER 3', 'KINAAWA', 'VERONICA', 'Female', '32', '07-20-1978', '07', '1978', 'Married', 'KIKOMA VILLAGE', 'Ab', 'KASUBI HEALTH CENTER 3', '+256750576339', 'PERSONAL', 'AGUTU SCOVIA', NULL, '+256773727927', NULL, NULL, '11-06-2013', '11', '2013', '11/6/2013', '11-06-2013', '11', '2013', '11/2013', '11-06-2013', '11', '2013', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 7, 3, 1, NULL, NULL, 1),
(25, '2018-04-25 12:27:55', '2018-05-01 14:08:58', '39', 'KASUBI HEALTH CENTER 3', 'NAMULI', 'ROSE', 'Female', '38', NULL, NULL, NULL, 'Single', 'LUWAYO VILLAGE LUWAYO PARISH KAWOLO SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'OKOTI BOSCO', NULL, NULL, 'NAMATAKA GETRUDE', NULL, '01-08-2014', '01', '2014', 'KASUBI HEALTH CENTER 3', '01-08-2014', '01', '2014', '2/2014', '01-04-204', '01', '204', '2', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-04-2014', '01', '2014', 'TDF/3TC/EFV', '41.8', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 3, NULL, NULL, NULL, 1),
(26, '2018-04-25 14:25:39', '2018-05-01 14:07:52', '8', 'KASUBI HEALTH CENTER 3', 'NAKIMERA', 'RITAH', 'Female', '21', '11-23-1991', '11', '1991', 'Married', 'MATALE VILLAGE', 'Ab', 'KASUBI HEALTH CENTER 3', '+256753040160', 'PERSONAL', 'MUSOKE YASIN', NULL, '+256779854429', 'HUSBAND', NULL, '12-05-2012', '12', '2012', 'KASUBI HEALTH CENTER 3', '12-05-2012', '12', '2012', '12/2012', '12-05-2012', '12', '2012', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12-05-2012', '12', '2012', 'TDF/3TC/EFV', '65', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 12, 3, 1, NULL, NULL, 1),
(27, '2018-04-25 15:02:41', '2018-06-27 09:18:31', '40', 'KASUBI HEALTH CENTER 3', 'NAKIJOBA', 'JANE', 'Female', '38', NULL, NULL, NULL, 'Single', 'WANANDA VILLAGE', 'Ab', 'NKOKONJERU HOSPITAL', NULL, NULL, 'NAKADU ROBINAH', NULL, NULL, 'NAKIJOBA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-01-2013', '04', '2013', 'NKOKONJERU HOSPITAL', NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 19, 3, NULL, NULL, NULL, 1),
(28, '2018-04-25 15:41:06', '2018-05-01 14:05:49', '42', 'KASUBI HEALTH CENTER 3', 'BABIRYE', 'MARGRET', 'Female', '33', NULL, NULL, NULL, 'Married', 'NAMALIGA NSENYA', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'KABAKULE PASIKALI', NULL, NULL, 'KABAKULE PASIKALI', NULL, '05-09-2013', '05', '2013', 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, '06-14-2013', '06', '2013', '1', 'BREASTFEEDING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 22, 3, 1, NULL, NULL, 1),
(29, '2018-04-25 16:12:41', '2018-04-25 16:49:17', '49', 'KASUBI HEALTH CENTER 3', 'NAGADYA', 'SARAH', 'Female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KASUBI HEALTH CENTER 3', '+256756439240', 'PERSONAL', NULL, NULL, NULL, NULL, NULL, '07-12-2013', '07', '2013', NULL, '07-12-2013', '07', '2013', '10/2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1),
(30, '2018-04-26 06:32:55', '2018-05-01 14:02:41', '46', 'KASUBI HEALTH  CENTER 3', 'NAKANWAGI', 'MADELENA', 'Female', '29', NULL, NULL, NULL, 'Single', 'BUVUMA LUWAYO', 'Ab', 'MITYANA', '+256700731267', NULL, 'SEBYALA', NULL, NULL, 'SEBYALA', NULL, NULL, NULL, NULL, 'MITYANA', NULL, NULL, NULL, '3/2013', '06-01-2013', '06', '2013', '1', NULL, NULL, NULL, NULL, '06-01-2013', '06', '2013', 'MITYANA', '06-01-2013', '06', '2013', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 24, 3, NULL, NULL, NULL, 1),
(37, '2018-04-27 08:39:31', '2018-04-27 08:49:11', '51', 'KASUBI HEALTH CENTER 3', 'MWAMULA', 'AGATHA', 'Female', '21', '06-15-1994', '06', '1994', 'Married', 'KASUBI KITAZI', 'Ab', 'KASUBI HEALTH CENTER 3', '+256704747200', 'PERSONEL', NULL, NULL, NULL, NULL, NULL, '07-11-2013', '07', '2013', 'KASUBI HEALTH CENTER 3', '07-19-2013', '07', '2013', '7/2013', '07-19-2013', '07', '2013', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '58', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 4, 3, 1, NULL, NULL, 1),
(38, '2018-04-27 08:54:48', '2018-05-01 13:58:33', '53', 'KASUBI HEALTH CENTER 3', 'KIWANUKA', 'JIMMY', 'Male', '20', '08-09-2003', '08', '2003', 'Single', 'SSUUGU', 'Ab', 'KASUBI HEALTH CENTER 3', '+256774577586', 'PERSONEL', 'MBANZE', NULL, NULL, 'MBANZE (FATHER)', NULL, '08-09-2013', '08', '2013', 'KASUBI HEALTH CENTER 3', '08-09-2013', '08', '2013', '12/2013', '08-09-2013', '08', '2013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', '53.8', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(39, '2018-04-27 09:16:36', '2018-04-27 09:28:38', '56', 'KASUBI HEALTH CENTER 3', 'KIRONDE', 'RICHARD', 'Male', '55', NULL, NULL, NULL, 'Married', 'KASUBI VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-15-2013', '01', '2013', 'KASUBI', '08-12-2013', '08', '2013', '1/10/2014', '01-10-2014', '01', '2014', '1', NULL, NULL, NULL, NULL, '08-12-2013', '08', '2013', 'BUIKWE HOSPITAL', '01-10-2014', '01', '2014', 'AZT/3TC/NVP', '44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 16, NULL, NULL, 1),
(40, '2018-04-27 09:46:13', '2018-04-27 10:01:21', '63', 'KASUBI HEALTH CENTER 3', 'NAMBOOZE', 'FLORENCE', 'Female', '25', NULL, NULL, NULL, 'Married', 'KASUBI VILLAE KITAZI PARISH', 'Ab', NULL, '+256783004898', 'PERSONEL', 'BUKASI JESCA', NULL, '+256783394970', NULL, NULL, '09-16-2013', '09', '2013', 'KASUBI HEALTH CENTER 3', '09-18-2013', '09', '2013', '9/2013', '09-16-2013', '09', '2013', '1', 'LACTATING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '56', 'LACTATING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, 4, 3, NULL, NULL, NULL, 1),
(41, '2018-04-27 10:05:49', '2018-05-01 14:13:05', '65', 'KASUBI HEALTH CENTER 3', 'SSEBADUKA', 'FRED', 'Male', '37', NULL, NULL, NULL, 'Married', 'NAKATYABA VILLAGE SSUUGU PARISH', 'Ab', 'KASUBI HEALTH CENTER 3', '+256750599742', 'PERSONEL', 'NABATANZI FLORENCE', NULL, '+256778020006', 'NABATANZIFLORENCE', NULL, '10-16-2013', '10', '2013', 'KASUBI HEALTH CENTER 3', '10-16-2013', '10', '2013', '8/2017', '06-08-2017', '06', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, 'COUGH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 11, 3, 11, NULL, NULL, 1),
(42, '2018-04-27 10:29:43', '2018-05-02 09:51:51', '74', 'KASUBI HEALTH CENTER 3', 'NANSUBUGA', 'BETTY', 'Female', '18', NULL, NULL, NULL, 'Single', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY  BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256773742696', 'SULA EDRINE(HUSBAND)', 'SULA EDRINE', '12', '+256773742696', 'SULA EDRINE(HUSBAND)', NULL, '11-08-2013', '11', '2013', '11/8/2013', '11-08-2013', '11', '2013', '9/2014', '09-24-2014', '09', '2014', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09-24-2014', '09', '2014', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 4, NULL, NULL, 1),
(43, '2018-04-27 10:47:18', '2018-05-01 14:12:24', '77', 'KASUBI HEALTH CENTER 3', 'NABAWANUKA', 'JUSTINE', 'Female', '39', NULL, NULL, NULL, 'Single', 'WANANDA VILLAGE LUWAYO', 'Ab', 'NKOKONJERU HOSPITAL', NULL, NULL, 'NAKYAZE VIOLA', NULL, NULL, 'N ABAWANUKA JUSTINE', NULL, '11-5-2007', '11', '2007', 'NKOKONJERU HOSPITAL', '11-05-2007', '11', '2007', '11/2007', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '11-19-2013', '11', '2013', 'NKOKONJERU HOSPITAL', '11-05-2007', '11', '2007', 'AZT/3TC/NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 19, 3, 6, NULL, NULL, 1),
(44, '2018-04-27 11:06:27', '2018-05-01 14:11:47', '81', 'KASUBI HEALTH CENTER 3', 'NAMUBIRU', 'FAITH', 'Female', '27', '06-21-1986', '06', '1986', 'Married', 'LUWAYO VILLAGE  KAWOLO SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', '+256773745258', 'HUSBAND', 'NALUMU ALICE', NULL, NULL, NULL, NULL, '11-22-2013', '11', '2013', 'KASUBI HEALTH CENTER 3', '11-22-2013', '11', '2013', '11/2013', '11-22-2013', '11', '2013', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-22-2013', '11', '2013', 'TDF/3TC/NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 20, 3, 1, NULL, NULL, 1),
(45, '2018-04-27 11:21:34', '2018-05-09 08:02:10', '83', 'KASUBI HEALTH CENTER 3', 'NAGENDO', 'SCOVIA', 'Female', '55', NULL, NULL, NULL, 'Single', 'KYANJA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'BUIKWE HOSPITAL', NULL, NULL, 'KABENGE VICENT', '5', NULL, NULL, NULL, '04-03-2013', '04', '2013', 'ST CHARLES LWANGA HOSP BUIKWE', '04-03-2013', '04', '2013', '4/2013', '04-03-2013', '04', '2013', '1', 'LOW CD4', NULL, NULL, NULL, '12-02-2013', '12', '2013', 'BUIKWE HOSPITAL', '04-03-2013', '04', '2013', 'TDF/3TC/EFV', '54', 'CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(46, '2018-04-27 11:37:10', '2018-05-01 14:10:43', '84', 'KASUBI HEALTH CENTER 3', 'NAMBOOZE', 'PROSSY', 'Female', '30', NULL, NULL, NULL, 'Married', 'MATALE VILLAAGE SSUUGU PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI  HEALHT CENTER 3', NULL, NULL, 'BUGEMBE JOSEPH', NULL, '+256753133958', 'BUGEMBE JOSEPH', 'NONE', '12-09-2013', '12', '2013', 'KASUBI HEALTH CENTER 3', '12-09-2013', '12', '2013', '5/2015', '05-14-2015', '05', '2015', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-14-2015', '05', '2015', 'TDF/3TC/EFV', '48.8', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', 'NONE', 12, 3, 16, NULL, NULL, 1),
(47, '2018-04-27 12:01:22', '2018-05-01 14:10:11', '88', 'KASUBI HEALTH CENTER 3', 'BWABYE', 'MUHAMED', 'Male', '41', '07-23-1971', '07', '1971', 'Married', 'SUUGU MUTWE VILLAGE SSUUGU PARISH  BUIKWE SUB-COUNTY BUIKEW DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+2567888654391', 'PERSONEL', 'NAMBI RUTH', NULL, '+256777962809', NULL, NULL, NULL, NULL, NULL, 'KASUBI HEALTH CENTER 3', '01-07-2014', '01', '2014', '7/2017', '07-06-2017', '07', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 16, 3, 11, NULL, NULL, 1),
(48, '2018-04-27 12:17:51', '2018-05-09 08:14:23', '89', 'KASUBI HEALTH  CENTER 3', 'NAMPIIMA', 'NORAH', 'Female', '5', NULL, NULL, NULL, 'Child', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'KYOBE RICHARD', '7', NULL, 'KYOBE RICHARD', NULL, '01-10-2014', '01', '2014', 'KASUBI HEALTH CENTER 3', '01-10-2014', '01', '2014', '1/2015', '01-04-2015', '01', '2015', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-04-2015', '01', '2015', 'AZT/3TC/NVP', '20', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(49, '2018-04-27 12:33:45', '2018-04-27 12:43:38', '91', 'KASUBI HEALTH CENTER 3', 'WANYENZE', 'GRACE', 'Female', NULL, '06-20-1963', '06', '1963', NULL, NULL, 'Ab', 'KASUBI HEALTH CENTER 3', '+256787871462', 'PERSONAL', 'NAMALEHA SCOVIA', NULL, NULL, NULL, NULL, '02-17-2014', '02', '2014', 'KASUBI HEALTH CENTER 3', '02-17-2014', '02', '2014', '7/2016', '07-27-2016', '07', '2016', '3', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-27-2016', '07', '2016', 'TDF/3TC/EFV', '46.2', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, NULL, 3, 11, NULL, NULL, 1),
(50, '2018-04-27 12:47:26', '2018-05-01 14:19:47', '98', 'KASUBI  HEALTH CENTER 3', 'MUSUBIKA', 'OLIVIA', 'Female', '25', NULL, NULL, NULL, 'Married', 'MATALE VILLAGE SSUUGU PARISH BUIKWE  SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'BASENA CHRISTOPHER', NULL, NULL, NULL, NULL, '02-03-2014', '02', '2014', 'KASUBI HEALTH CENTER 3', '02-03-2014', '02', '2014', '1/2015', '02-03-2015', '02', '2015', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-07-2015', '01', '2015', 'TDF/3TC/EFV', '56', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 12, 3, 1, NULL, NULL, 1),
(51, '2018-04-27 13:07:51', '2018-05-21 11:44:46', '99', 'KASUBI HEALTH CENTER 3', 'NAKITYABE', 'RESTY', 'Female', '4', '05-05-2008', '05', '2008', 'Child', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, NULL, NULL, NULL, 1),
(52, '2018-04-27 13:25:47', '2018-05-01 14:17:44', '100', 'KASUBI HEALTH CENNTER 3', 'NAIGA', 'GRACE', 'Female', NULL, NULL, NULL, NULL, NULL, 'MATALE VILLAGE SUUGU PRISH  BUIKWE SUB-COUNTY', NULL, 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3/10/2014', NULL, NULL, NULL, '3/2014', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(53, '2018-04-28 07:39:34', '2018-05-01 11:32:42', '300', 'KASUBI HEALTH CENTER 3', 'NAMUTEBI', 'MADINAH', 'Female', '19', NULL, NULL, NULL, 'Never Married', 'KASUBI TOWN KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256751167314', 'PERSONEL', 'NAMUBIRU AIDAH', '3', '+256752875472', NULL, NULL, '05-15-2017', '05', '2017', 'NYAMABUGA(KYENJOJO)', '05-15-2017', '05', '2017', '5/2015', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-15-2017', '05', '2017', 'TDF/3TC/EFV', '45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 3, 3, 11, NULL, NULL, 1),
(54, '2018-04-28 08:01:01', '2018-07-27 15:31:46', '257', 'KASUBI HEALTH CENTER 3', 'NAKUYA', 'JOYCE', 'Female', '37', NULL, NULL, NULL, 'Married', 'NAKIKUNYU VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-12-2016', '10', '2016', 'KASUBI HEALTH CENTER 3', '10-12-2016', '10', '2016', '10/2016', '10-12-2016', '10', '2016', '1', '10/12/2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '61', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'YES', NULL, 10, 3, 1, NULL, NULL, 1),
(55, '2018-04-28 08:02:47', '2018-06-27 08:03:57', '102', 'KASUBI', 'NAKYANZI', 'GETRUDE', 'Female', '40', NULL, NULL, NULL, 'Single', 'WANANDA VILLAGE', 'Ab', 'KASUBI HEALTH CENTRE 3', '+256783178799', '0783178799', 'NASANDE', '19', '+256783178799', NULL, NULL, '03-17-2018', '03', '2018', 'KASUBI HC 3', '03-17-18', '03', '18', 'JAN/2017', '12-25-2016', '12', '2016', '2', '1/25/2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-28-2017', '01', '2017', 'TDF/3TC/EFV', '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 19, 3, 11, NULL, NULL, 1),
(57, '2018-04-28 08:15:53', '2018-05-02 06:12:09', '111', 'KASUBI H/C  III', 'NABALONZI', 'PROSSY', 'Female', '28', NULL, NULL, NULL, 'Married', 'NSENYA', 'Ab', 'KASUBI H/C 3', '+256754447271', 'PERSONEL', 'NAJJUKA (SISTER)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 25, 3, 1, NULL, NULL, 1),
(58, '2018-04-28 08:26:28', '2018-05-02 09:15:24', '112', 'KASUBI HIC 3', 'NAMIREMBE', 'JANE', 'Female', '53', NULL, NULL, NULL, 'Single', 'KASUBI VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'NABISUBI JUSTINE(DAUGTER)', '4', NULL, 'NABISUBI JUSTINE', NULL, '02-05-2017', '02', '2017', 'KASUBI HC 3', '02-05-2017', '02', '2017', '26/5/2017', '02-05-2017', '02', '2017', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-05-2017', '02', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(59, '2018-04-28 08:31:26', '2018-04-28 09:32:04', '171', NULL, 'NAKAYENZE', 'LYDIA', 'Female', '23', NULL, NULL, NULL, 'Married', 'KASUBI VILLAGE', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'GALENDA VIOLET', '4', NULL, 'NALONGO UNIT', NULL, '05-22-2015', '05', '2015', 'KASUBI HEALTH CENTRE 3', '05-22-2015', '05', '2015', '5/2015', '05-22-2015', '05', '2015', '1', NULL, NULL, NULL, NULL, '05-22-2015', '05', '2015', NULL, '05-22-2015', '05', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'YES', NULL, 4, 3, 1, NULL, NULL, 1),
(61, '2018-04-28 08:51:55', '2018-05-02 09:31:54', '116', 'KASUBI H/C 3', 'NAKITYO', 'DONOLANTA', 'Female', '28', NULL, NULL, NULL, 'Married', 'WANANDA-LUWAYO', 'Ab', 'KASUBI H/C III', NULL, NULL, 'DIIKA BUTOSI', '4', NULL, 'GRAND MOTHER', NULL, '10-07-2012', '10', '2012', 'KAWOLO', '10-07-2012', '10', '2012', '07/2012', '10-07-2012', '10', '2012', 'I', 'PREGNANT', NULL, NULL, NULL, '10-07-2012', '10', '2012', 'KAWOLO H', '10-07-2012', '10', '2012', 'TDF/3TC/EFV', '51', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 19, 3, 1, NULL, NULL, 1),
(62, '2018-04-28 09:20:31', '2018-05-01 14:29:26', '223', 'KASUBI HC3', 'NANSUBUGA', 'BEATRICE', 'Female', '31', NULL, NULL, NULL, 'Married', 'MATALE VILLAGE/SSUGU PARISH', 'Ab', NULL, '+256786854394', NULL, 'NANASUBUGA BAKANASA', '3', '+256750412577', 'NASUBUGA BAKANASA', NULL, '06-18-2016', '06', '2016', 'KASUBI HC3', '06-18-2016', '06', '2016', 'APR/2016', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-18-2016', '06', '2016', 'TDF/3TC/EFV', '61.4', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 12, 3, 1, NULL, NULL, 1),
(67, '2018-04-28 10:06:29', '2018-05-01 14:27:24', '214', 'KASUBI HC3', 'NANSAMBA', 'SARAH', 'Female', '27', '03-28-1988', '03', '1988', 'Married', 'KOBBA VILLAGE/KITAZI PARISH', 'Ab', 'KASUBI HC3', NULL, NULL, 'KANTELENGA MOSES', '3', NULL, NULL, NULL, '11-25-2015', '11', '2015', 'KASUBI HC3', '11-25-2015', '11', '2015', 'NOV/2015', '11-25-2015', '11', '2015', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-24-2015', '04', '2015', NULL, '72', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, 6, 3, 1, NULL, NULL, 1),
(68, '2018-04-28 10:08:10', '2018-05-01 14:26:51', '135', 'KASUBI H/C III', 'NANKIINGA', 'REHEMA', 'Female', '30', NULL, NULL, NULL, 'Married', 'KITAZI - KIKOMA', 'Ab', 'KASUBI HEALTH 3', '+256772242753', 'KINTU ISAAC', 'KINTU ISAAC', '4', '+256772242753', 'KINTU ISAAC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08/2011', '11-08-2011', '11', '2011', 'I', NULL, NULL, NULL, NULL, '11-08-2011', '11', '2011', NULL, '11-08-2011', '11', '2011', 'TDF 3TC NVP', '56', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, 7, 3, 1, NULL, NULL, 1),
(69, '2018-04-28 10:14:14', '2018-06-11 12:17:17', '191', 'KASUBI HC 3', 'NASUUNA', 'RESTY', 'Female', '21', '07-07-1992', '07', '1992', 'Married', 'BUIKWE-KITAZI-KASUBI', 'Ab', NULL, '+256788411302', '+256788411302', 'KASIRYE HENRY', '4', '+256788411302', NULL, 'NIL', '08-18-2015', '08', '2015', 'KASUBI h/C 3', '08-18-2015', '08', '2015', '8/2015', '08-18-2015', '08', '2015', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-18-2015', '08', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 4, 3, 1, NULL, NULL, 1),
(70, '2018-04-28 10:14:52', '2018-05-02 09:24:46', '119', 'KASUBI HEALTH CENTRE 3', 'NAGAWA', 'MADINA', 'Female', '58', '03-12-1968', '03', '1968', 'Single', 'KASUBI VILLAGE, BUIKWE DISTRICT', 'Ab', 'KASUBI HC 3', '+256783455827', 'NAGAWA MADINA', 'KANANULA FRANCIS', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-07-2016', '07', '2016', '3//2016', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(71, '2018-04-28 10:59:13', '2018-05-01 14:25:33', '132', 'KASUBI HEALTH CENTER 3', 'SENTONGO', 'RICHARD', 'Male', '33', NULL, NULL, NULL, NULL, 'MATALE VILLAGE, SSUGU PARISH,BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'Ab', NULL, '+256782815851', 'SENTONGO RICHARD', 'DORAH SENTONGO', NULL, NULL, NULL, NULL, '02-09-2014', '02', '2014', 'KASUBI', '02-10-2014', '02', '2014', '4/2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/NUP', '51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(72, '2018-04-28 11:03:50', '2018-05-02 08:09:08', '139', 'KASUBI HEALTH CENTER 3', 'WUJJA', 'SCOVIA', 'Female', '35', NULL, NULL, NULL, 'Single', 'LUWAYO', 'Ab', 'KAWOLO HSP', '+256751326089', 'PERSONAL', 'MUKISA JANE', '20', NULL, NULL, NULL, '09-18-2014', '09', '2014', 'KASUBI HEALTH C3', '09-18-2014', '09', '2014', '9/2014', '09-18-2014', '09', '2014', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '50.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 20, 3, 1, NULL, NULL, 1),
(73, '2018-04-28 11:15:19', '2018-05-01 14:22:11', '146', 'KASUBI H/C 3', 'NABULIME', 'JOAN', 'Female', '18', NULL, NULL, NULL, NULL, 'SSUGU- BUKASA', 'Ab', 'NGOGWE H/C 3', NULL, NULL, 'SSENYONJO MARTIN', NULL, '+256750386390', 'SSENYONJO MARTIN', NULL, '01-09-2015', '01', '2015', 'KASUBI HC 3', '01-09-2018', '01', '2018', '01/2015', '01-09-2015', '01', '2015', NULL, NULL, NULL, NULL, NULL, '11-23-2014', '11', '2014', 'NGOGWE H/C 3', '01-09-2015', '01', '2015', 'TDF 3TC EFV', NULL, 'LACTATING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, 12, 3, 1, NULL, NULL, 1),
(74, '2018-04-28 11:23:25', '2018-05-01 14:31:20', '312', 'KASUBI', 'NALUMU', 'EVA', 'Female', '28', NULL, NULL, NULL, 'Married', 'BUIKWE-KITAZI-KASUBI', 'Ab', 'KASUBI HC 3', NULL, NULL, 'MAKANYA WILLIAM', '4', '+256772344726', NULL, NULL, '10-03-2017', '10', '2017', 'KASUBI HC 3', '10-03-2017', '10', '2017', '10/2017', '10-03-2017', '10', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-03-2017', '10', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 1, NULL, NULL, 1),
(75, '2018-04-28 11:46:29', '2018-04-28 12:06:52', '283', 'KASUBI HEALTH CENTER 2', 'NANSUBUGA', 'ROSE', 'Female', '22', NULL, NULL, NULL, 'Married', 'KASUBI VILLAGE KITAZI VILLAGE', 'Ab', 'KASUBI HEALTH CENTER 3', '+256775036312', 'PERSONEL', 'MUGERWA CHARLES', '4', '+256777272696', NULL, NULL, '05-09-2017', '05', '2017', 'KASUBI HEALTH CENTER 3', '05-09-2017', '05', '2017', '6/2017', '06-07-2017', '06', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6-7-2017', '6', '2017', 'TDF/3TC/EFV', '59', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 4, 3, 1, NULL, NULL, 1),
(76, '2018-04-28 11:48:59', '2018-05-01 14:33:26', '284', NULL, 'NAKAMATE', 'RESTY', 'Female', '40', NULL, NULL, NULL, 'Single', 'KIKOMA VILLAGE/SSUGU PARISH', 'Ab', 'KASUBI HC3', '+256783560775', NULL, 'MAGEZI JACOB', NULL, NULL, 'MAGEZI JACOB', NULL, '05-09-2017', '05', '2017', 'KASUBI HC3', '08-02-2017', '08', '2017', 'AUG/2017', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-02-2017', '08', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, 4, 3, NULL, NULL, NULL, 1),
(77, '2018-04-28 11:59:37', '2018-05-01 14:36:01', '216', 'KASUBI H/C 3', 'NYONGEZA', 'SAMUEL', 'Male', '45', NULL, NULL, NULL, 'Living Together', 'KITAZI - KASUBI', 'Ab', 'KASUBI  H/C 111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-25-2016', '02', '2016', 'KASUBI H/C 3', '01-05-2016', '01', '2016', '02/2016', '02-25-2016', '02', '2016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-25-2016', '02', '2016', 'TDF 3TC EFV', '76', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 11, NULL, NULL, 1),
(78, '2018-04-28 12:09:23', '2018-05-01 14:36:29', '178', 'KASUBI HEALTH CENTER 3', 'NAKALYOWA', 'FARIDAH', 'Female', '28', '06-15-1986', '06', '1986', NULL, 'KIKOMA VILLAGE, SUGU PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'KASUBI', '+25675177370', 'NAKALYOWA FARIDAH', 'NAMAYEYA MADRINE', NULL, '+256754423999', NULL, NULL, NULL, NULL, NULL, 'KASUBI', '07-05-2015', '07', '2015', '5/2015', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF-3TC-6FU', '65.2', '27/05/2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, 4, 3, 1, NULL, NULL, 1),
(79, '2018-04-28 12:22:46', '2018-05-01 14:37:01', '373', 'KASUBI CENTER 3', 'NAKABUGO', 'SHIFAH', 'Female', '24', '03-15-1994', '03', '1994', 'Single', 'MATALE VILLAGE SSUUGU PARISH', 'Ab', 'KASUBI HEALTH CENTER 3', '+256705695952', 'HUSBAND', 'NAKABUGO MASTULA', NULL, '+256704459661', 'NAKIMERA RITAH', NULL, '04-11-2018', '04', '2018', 'KASUBI HEALTH CENTER 3', '04-11-2018', '04', '2018', '4/2018', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(80, '2018-04-28 12:27:55', '2018-07-28 11:01:42', '230', 'Kasubi HC 3', 'KAYAGA', 'CHRISTINE', 'Female', '24', '05-24-2016', '05', '2016', 'Married', 'KASUBI VILLAGE', 'Ab', 'Kasubi HC 3', NULL, NULL, 'NAKAFU MUYANGA', '4', NULL, NULL, NULL, '05-28-2016', '05', '2016', 'Kasubi HC 3', '05-28-2016', '05', '2016', '05/2016', '05-25-2016', '05', '2016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-25-2015', '05', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'YES', NULL, 4, 3, 1, NULL, NULL, 1),
(81, '2018-04-28 12:45:01', '2018-05-01 14:41:04', '159', 'KASUBU H/C 3', 'NAMUKASA', 'FAUSTA', 'Female', '45', '08-10-1973', '08', '1973', NULL, 'LUWAYO KASOKOSO', 'Ab', 'KASUBI H/C 3', '+256754071479', 'NAMUKASA FAUSTA', 'KAJIRI FRED', NULL, '+256701361842', 'KAJIRI FRED', NULL, '02-14-2018', '02', '2018', 'KASUBI H/C 3', '02-14-2018', '02', '2018', '02/2018', '02-14-2018', '02', '2018', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-14-2018', '02', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 3, 11, NULL, NULL, 1),
(82, '2018-04-28 12:54:11', '2018-04-28 13:11:21', '198', 'KASUBI HEALTH CENTER 3', 'KASIRYE', 'HENRY', 'Male', '28', '01-02-1988', '01', '1988', 'Living Together', 'KASUBI VILLAGE KITAZI PARISH', 'Ab', 'KASUBI HEALTH CENTER 3', '+25675998781', 'PERSONAL', NULL, NULL, NULL, NULL, NULL, '09-30-2015', '09', '2015', 'KASUBI HEALTH CENTER 2', '01-27-2016', '01', '2016', '2/2016', '02-24-2016', '02', '2016', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-24-2016', '02', '2016', 'TDF/3TC/EFV', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(83, '2018-04-28 12:57:15', '2018-05-01 14:38:58', '285', 'KASUBI HC3', 'MUGERWA', 'CHARLES', 'Male', '25', '05-09-1992', '05', '1992', 'Married', 'KASUBI VILLAGE/KITAZI  PARISH', 'Ab', 'KASUBI HC3', '+256777272696', NULL, 'NANSUBUGA ROSE', '3', '+256775036312', NULL, NULL, '05-09-2017', '05', '2017', 'KASUBI HC3', '05-09-2017', '05', '2017', '05/09/2017', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-09-2017', '05', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 11, NULL, NULL, 1),
(84, '2018-04-28 13:09:21', '2018-08-28 15:13:13', '281', 'KASUBI HEALTH CENTER 3', 'LUBOWA', 'FRED', 'Male', '42', NULL, NULL, NULL, 'Married', 'SSUGU KIRANGIRA VILLAGE, SSUGU PARISH, BUIKWE DISTRICT', 'Ab', 'KASUBI', '+25675658992', 'LUBOWA FRED', 'NAMANDE PROSSY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-08-2014', '06', '2014', '8/2014', '08-21-2014', '08', '2014', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BUIKWE HOSPITAL', NULL, NULL, NULL, 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, 'SELF TRANFER TO BUIKWE HOSP', NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 13, 3, 6, NULL, NULL, 1),
(85, '2018-04-28 13:11:35', '2018-05-01 14:51:24', '143', 'KASUBI H/C 3', 'NABWETEME', 'PROSSY', 'Female', '22', NULL, NULL, NULL, 'Married', 'KITAZI - KASUBI', 'Ab', 'KASUBI H/C 3', '+256704264026', 'MOTHER', 'NANKYA JOYCE', NULL, NULL, 'NANKYA JOYCE', NULL, '11-06-2014', '11', '2014', 'KASUBI H/C 3', '11-06-2014', '11', '2014', '11/2014', '11-06-2014', '11', '2014', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-06-2014', '11', '2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 3, 3, 1, NULL, NULL, 1),
(86, '2018-04-28 13:25:52', '2018-04-28 14:01:06', '273', 'Kasubi HC 3', 'NASSALI', 'LYDIA', 'Female', '22', '02-18-2018', '02', '2018', 'Married', 'KITAZI-KIKOMA B', 'Ab', 'Kasubi HC 3', '+256778158952', '0778158952', 'KAFEERO WILSON', '4', NULL, NULL, NULL, NULL, NULL, NULL, 'Kasubi HC 3', NULL, NULL, NULL, '03/2017', '02-18-2018', '02', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-18-2018', '02', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 5, NULL, NULL, 1),
(87, '2018-04-28 13:26:35', '2018-07-27 15:26:53', '279', 'KASUBI HEALTH CENTER 3', 'NAKIRYA', 'RESTY', 'Female', '27', NULL, NULL, NULL, 'Married', 'KASUBI VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'NANKYA ANGELA', '4', '+256788819268', 'NALONGO DEBORAH', NULL, '04-13-2017', '04', '2017', 'KASUBI HEALTH CENTER 3', '04-13-2017', '04', '2017', '4/2017', '04-13-2017', '04', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-13-2017', '04', '2017', 'TDF/3TC/EFV', '63', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'YES', NULL, 4, 3, 11, NULL, NULL, 1),
(88, '2018-04-28 13:35:09', '2018-05-01 14:48:58', '289', 'KASUBI', 'NAZZIWA', 'MARY', 'Female', '52', NULL, NULL, NULL, 'Living Together', 'MATALE VILLAGE/ SSUGU PARISH', 'Ab', 'KASUBI HC3', '+256759515507', NULL, 'MALE KENETH', NULL, NULL, NULL, NULL, '05-31-2017', '05', '2017', 'kasubi hc3', '05-31-2017', '05', '2017', 'jun/2017', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-28-2017', '06', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, 12, 3, 11, NULL, NULL, 1),
(89, '2018-04-28 13:55:49', '2018-05-16 10:43:32', '294', 'KASUBI HEALTH CENTRE 3', 'NANEZA', 'SAUYA', 'Female', '8', '02-06-2017', '02', '2017', NULL, 'KIKOMA VILLAGE, KITAZI PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'FAMILY HEALTH CARE (JINJA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-06-2017', '02', '2017', 'FAMILY HEALTH CARE', '02-06-2017', '02', '2017', '2/2017', '02-06-2017', '02', '2017', '2', NULL, NULL, NULL, NULL, '06-28-2017', '06', '2017', 'FAMILY HEALTH CARE', '02-06-2017', '02', '2017', 'ABC/3TC/EFV', '25', 'PLAYING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(90, '2018-04-28 14:26:12', '2018-05-01 14:43:14', '245', 'KASUBI HEALTH CENTER 3', 'NANFUKA', 'BETTY', 'Female', '19', NULL, NULL, NULL, 'Single', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY', 'Ab', NULL, NULL, NULL, 'NAMUSOKE MARGRET', NULL, NULL, NULL, NULL, '08-17-2016', '08', '2016', 'KASUBI HEALTH CENTER 3', '08-17-2016', '08', '2016', '8/2016', '08-17-2016', '08', '2016', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, NULL, NULL, NULL, 1),
(91, '2018-04-28 14:26:37', '2018-05-01 14:44:03', '147', 'KASUBI H/C 3', 'NAMUYIMBA', 'JOHN', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, 'Ab', 'KASUBI H/C 3', NULL, NULL, 'KWAGALA SHARON', NULL, NULL, 'KWAGALA SHARON', NULL, '02-14-2018', '02', '2018', 'KASUBI H/C 3', '02-14-2018', '02', '2018', '02/2018', '02-14-2018', '02', '2018', '111', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-14-2018', '02', '2018', 'TDF 3TC EFV', '56.8', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, 11, NULL, NULL, 1),
(92, '2018-04-28 14:42:36', '2018-05-21 10:57:38', '261', 'KASUBI HC 3', 'Namale', 'Teopista', 'Female', '21', NULL, NULL, NULL, 'Married', 'KYANJA VILLAGE', 'Ab', 'kasubi H/C 3', '+256705517218', 'PERSONEL', NULL, '4', NULL, NULL, NULL, '10-27-2016', '10', '2016', 'kasubi H/C 3', '10-27-2016', '10', '2016', '11/2016', '10-27-2016', '10', '2016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-27-2016', '10', '2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 5, 3, 1, NULL, NULL, 1),
(93, '2018-04-28 15:00:21', '2018-05-16 09:51:40', '201', 'KASUBI HEALTH CENTER 3', 'BIRABWA', 'ROSE', 'Female', '29', '06-15-1986', '06', '1986', 'Divorced', 'KITEZA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'LUWERO', '+256781801717', 'PERSONEL', 'NAKAZI JENIPHER', '26', NULL, NULL, NULL, '06-22-2013', '06', '2013', 'ZIROBWE HC 3', '06-22-2013', '06', '2013', '6/2013', '06-22-2013', '06', '2013', '3', 'PREGNANT', NULL, NULL, NULL, '09-30-2015', '09', '2015', 'ZIROBWE HC3', '06-22-2013', '06', '2013', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 26, 3, 1, NULL, NULL, 1),
(94, '2018-04-28 15:13:27', '2018-05-01 14:46:32', '152', 'KASUBI H/C 3', 'NAMUTEBI', 'JANE', 'Female', '63', '10-08-1952', '10', '1952', 'Single', 'KIGENDA - KIGENDA', 'Ab', 'KASUBI H/C 3', NULL, NULL, 'NSUBUGA HENRY', NULL, NULL, 'NSUBUGA HENRY', NULL, '01-14-2015', '01', '2015', 'KASUBI', '01-14-2015', '01', '2015', '07/2015', '07-29-2015', '07', '2015', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-29-2015', '07', '2015', 'TDF 3TC EFV', '50', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, 28, 3, 11, NULL, NULL, 1),
(96, '2018-04-29 07:35:30', '2018-05-01 14:42:50', '298', 'KASUBI HEALTH CENTER 3', 'NANTONGO', 'FLORENCE', 'Female', '35', NULL, NULL, NULL, 'Single', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY', 'Ab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, NULL, NULL, NULL, 1),
(97, '2018-04-29 07:45:48', '2018-05-02 09:01:07', '306', 'KASUBI HEALTH CENTER 3', 'LUGOMVU', 'VICENT', 'Male', '48', '10-12-1972', '10', '1972', 'Married', 'WANADA VILLAGE, LUWAYO PARISH,KAWOLO SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'KASUBI HC 3', NULL, NULL, NULL, NULL, '+256751131059', 'SSALI HENRY', NULL, '06-08-2017', '06', '2017', 'KASUBI', '06-08-2017', '06', '2017', '8/2017', '06-08-2017', '06', '2017', '1', '30/08/2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-29-2018', '04', '2018', 'TDF/3TC/EFU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 19, 3, 11, NULL, NULL, 1),
(98, '2018-04-29 07:47:32', '2018-09-04 13:32:27', '287', 'KASUBI HEALTH CENTER 3', 'NABIKOLO', 'MADINAH', 'Female', '22', '05-10-2017', '05', '2017', 'Married', 'MATALE VILLAGE SSUUGU PARISH SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256754666604', 'PERSONEL', 'NAMULI RITAH', NULL, NULL, 'SENGENDO ASUMAN', NULL, '05-10-2017', '05', '2017', '5/10/2017', '05-10-2017', '05', '2017', '5/2017', '05-10-2017', '05', '2017', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-10-2017', '05', '2017', 'TDF/3TC/EFV', '60', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'YES', NULL, 12, 3, 1, NULL, NULL, 1),
(99, '2018-04-29 07:50:09', '2018-06-27 11:08:29', '247', 'KASUBI HC 3', 'NABULE', 'PHIONA', 'Female', '27', NULL, NULL, NULL, 'Married', 'SSUGU-MATALE', 'Ab', 'KASUBI HEALTH CENTRE 3', NULL, NULL, 'NTULUME FRED', '12', '+256773361821', NULL, NULL, '08-08-2016', '08', '2016', 'KASUBI HEALTH CENTRE 3', NULL, NULL, NULL, '8/2016', '08-08-2016', '08', '2016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-08-2016', '08', '2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 12, 3, 1, NULL, NULL, 1),
(100, '2018-04-29 08:11:29', '2018-09-04 13:35:57', '296', NULL, 'NAMBOGO', 'HARRIET', 'Female', '18', NULL, NULL, NULL, 'Single', 'NAMUGANGO VILLAGE/LUWAYO PARISH', 'Ab', 'KASUBI HC3', NULL, NULL, 'NAMUKASA JUSTINE', NULL, NULL, 'NAMUKASA JUSTINE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SEPT/2015', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KAWOOLO', '07-14-2015', '07', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, 18, 3, NULL, NULL, NULL, 1),
(101, '2018-04-29 08:14:28', '2018-05-01 14:47:47', '304', 'KASUBI HEALTH CENTER 3', 'SSERWANGA', 'ABAS', 'Female', '18', NULL, NULL, NULL, 'Single', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, NULL, NULL, NULL, 1),
(102, '2018-04-29 08:20:45', '2018-08-28 15:32:21', '292', NULL, 'MBABAZI', 'JUSTINE', 'Female', '39', '07-22-1978', '07', '1978', 'Single', 'KITAZI-KOBA', 'Ab', 'KASUBI HEALTH CENTRE 3', '+256759261817', '+256759261817', NULL, NULL, NULL, NULL, NULL, '04-15-2015', '04', '2015', 'BUIKWE H/C 3', '04-15-2015', '04', '2015', '6/205', '06-01-2015', '06', '2015', '1', NULL, NULL, NULL, NULL, '04-26-2017', '04', '2017', 'BUIKWE H/C 3', '04-26-2017', '04', '2017', NULL, NULL, NULL, NULL, NULL, NULL, 'SELF TRANSFER TO BUIKWE HOSP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 3, 11, NULL, NULL, 1),
(103, '2018-04-29 08:21:13', '2018-05-01 14:49:29', '301', 'KASUBI H/ C 3', 'WALUSIMBI', 'SIMON', 'Male', '52', '07-02-1966', '07', '1966', 'Living Together', 'LUWAYO VILLAGE', 'Ab', 'KASUBI', NULL, NULL, 'NAMUSISI GRACE', '3', NULL, 'NAMUSISI GRACE', NULL, '07-31-2017', '07', '2017', 'KASUBI H/C 3', '07-31-2017', '07', '2017', '07/2017', '07-31-2017', '07', '2017', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-31-2017', '07', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 20, 3, 11, NULL, NULL, 1),
(105, '2018-04-29 08:23:26', '2018-07-27 15:56:40', '346', 'KASUBI HEALTH CENTER 3', 'NAKAFEERO', 'AGNES', 'Female', '32', NULL, NULL, NULL, 'Married', 'LUWAYO VILLAGE', 'Ab', 'KASUBI HEALTH CENTER 3', '+256701283414', 'PERSONEL', 'NAGAWA DOROTHY', NULL, '+256752221753', NULL, NULL, '12-13-2017', '12', '2017', '12/13/2017', '12-13-2017', '12', '2017', '12/2017', '12-13-2017', '12', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12-13-2017', '12', '2017', 'TDF/3TC/EFV', NULL, 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'YES', NULL, 20, 3, 1, NULL, NULL, 1),
(106, '2018-04-29 08:32:19', '2018-04-29 08:56:02', '206', 'KASUBI HEALTH CENTRE 3', 'KKONDE', 'RICHARD', 'Male', '67', NULL, NULL, NULL, 'Living Together', 'KASUBI VILLAGE', 'Ab', 'KASUBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-28-2015', '10', '2015', 'KASUBI HC3', '10-28-2015', '10', '2015', 'FEB/2016', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-24-2014', '02', '2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, 1),
(107, '2018-04-29 08:39:09', '2018-05-02 07:59:00', '311', 'KASUBI HEALTH', 'SANYU', 'MARGARET', 'Female', '26', NULL, NULL, NULL, 'Single', 'MATALE VILLAGE, SSUGU PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'KASUBI', '+256782397804', 'SANYU MARGARET', NULL, NULL, NULL, NULL, NULL, '09-29-2017', '09', '2017', 'KASUBI HC 3', '09-29-2017', '09', '2017', '10/2017', '10-25-2017', '10', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-25-2017', '10', '2017', 'TDF/3TD/CFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(109, '2018-04-29 08:45:13', '2018-05-01 14:53:44', '354', 'KASUBI HEALTH CENTER 3', 'NAKYEMBA', 'RUTH', 'Female', '20', NULL, NULL, NULL, 'Single', 'KYANJA VILLAGE KITAZI PARISH', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-01-2018', '02', '2018', 'KASUBI HEALTH CENTER 3', '02-01-2018', '02', '2018', '2/2018', '02-01-2018', '02', '2018', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFC', '52', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 5, 3, 1, NULL, NULL, 1),
(111, '2018-04-29 08:51:33', '2018-07-30 15:45:44', '351', 'KASUBI H/C 3', 'NABULYA', 'ZULAIKA', 'Female', '22', NULL, NULL, NULL, 'Single', 'SSUGU-SSUGU', 'Ab', 'KASUBI HC 3', NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, 'KASUBI H/C 3', NULL, NULL, NULL, NULL, '01-17-2017', '01', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-17-2017', '01', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 13, 3, NULL, 'ANC', NULL, 1),
(112, '2018-04-29 09:01:03', '2018-08-02 09:32:15', '341', 'KASUBI HEALTH CENTER 3', 'KATONGOLE', 'ASHIM MUSISI', 'Male', '2', NULL, NULL, NULL, 'Child', 'NAKATYABA VILLAGE, SUGU PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'KASUBI', '+256774436495', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 11, 3, 11, NULL, NULL, 1),
(113, '2018-04-29 09:03:09', '2018-05-01 14:59:18', '263', 'KASUBI HEALTH CENTER 3', 'NAMBONGO', 'FLORENCE', 'Female', '30', NULL, NULL, NULL, NULL, 'KIKOMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '65', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, NULL, NULL, NULL, 1),
(114, '2018-04-29 09:13:11', '2018-05-07 10:11:35', '225', 'KASUBI HC3', 'NAMATOVU', 'CONSANSIYO', 'Female', '50', NULL, NULL, NULL, 'Single', 'KYANJA - KITAZI', 'Ab', 'KASUBI HC3', NULL, NULL, 'MUGALULA', '3', NULL, 'MUGALULA', NULL, '04-27-2016', '04', '2016', 'KASUBI HC3', '04-27-2016', '04', '2016', 'AUG/2017', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-30-2017', '08', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 3, 11, NULL, NULL, 1);
INSERT INTO `hiv_care_art_cards` (`id`, `created_at`, `updated_at`, `PatientNumber`, `health_unit`, `surName`, `firstName`, `sex`, `age`, `date_of_birth`, `month_of_birth`, `year_of_birth`, `merital_status`, `address`, `test_type`, `test_location`, `phone_number`, `phone_owner_name`, `treatmemnt_suporter`, `treatment_address`, `treatment_telephone`, `home_based_care_provider`, `drug_allagies`, `date_comfirmed_hiv`, `month_comfirmed_hiv`, `year_comfirmed_hiv`, `place_of_hive_confirmation`, `date_enrolled_in_HIV`, `month_enrolled_in_HIV`, `year_enrolled_in_HIV`, `cohort`, `date_medically_legible`, `month_medically_legible`, `year_medically_legible`, `clinical_stage`, `reason_why_elligible`, `date_madically_eligible_date_ART`, `month_madically_eligible_date_ART`, `year_madically_eligible_date_ART`, `date_transfered_in`, `month_transfered_in`, `year_transfered_in`, `transfred_in_from`, `date_art_started`, `month_art_started`, `year_art_started`, `initial_regimen`, `weight_at_ART_start`, `function_at_ART_start`, `date_transfred_out`, `month_transfred_out`, `year_transfred_out`, `place_tranfred_to`, `date_died`, `month_died`, `year_died`, `person_live_status`, `preg`, `lact`, `relevant_medical_conditions`, `village_id`, `pt_clinic_id`, `care_entry_point_id`, `care_entry_point_specify`, `district_clinitian_id`, `user_id`) VALUES
(115, '2018-04-29 09:22:06', '2018-05-02 08:37:24', '364', 'KASUBI HEALTH CENTER 3', 'NABAYEGO', 'JACKLINE', 'Female', '18', NULL, NULL, NULL, 'Living Together', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', '+256700573929', 'BROTHER', NULL, NULL, NULL, NULL, NULL, '02-16-2018', '02', '2018', 'KASUBI HEALTH CENTER 3', '02-16-2018', '02', '2018', '2/2018', '02-16-2018', '02', '2018', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-16-2018', '02', '2018', 'TDF/3TC/EFV', '64', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 7, 3, 1, NULL, NULL, 1),
(116, '2018-04-29 09:30:25', '2018-05-01 15:01:25', '342', 'KASUBI H/C 3', 'NANTALE', 'ROSE', 'Female', '42', NULL, NULL, NULL, 'Single', 'SSUGU - KIKOMA', 'Ab', 'KASUBI', '+256704211949', NULL, 'MUTEBI GODFREY', NULL, '+256704211949', 'MUTEBI', NULL, '11-07-2017', '11', '2017', 'KASUBI H/C 3', '11-07-2017', '11', '2017', '11/2017', '11-07-2017', '11', '2017', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-07-2017', '11', '2017', '11/7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 3, 11, NULL, NULL, 1),
(117, '2018-04-29 09:31:28', '2018-05-02 11:00:04', '343', 'KASUBI HEALTH CENTER 3', 'BAKINA', 'MALIKO', 'Male', '37', NULL, NULL, NULL, 'Married', 'KIKOMA VILLAGE, KITAZI PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'KASUBI HCC 3', NULL, NULL, 'MUWANUZI ERIA', '4', NULL, NULL, NULL, '11-21-2017', '11', '2017', 'KASUBI HC 3', '11-29-2017', '11', '2017', '11/2017', '11-29-2017', '11', '2017', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-29-2017', '11', '2017', 'TDDF/3TC/CFU', '44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 1, NULL, NULL, 1),
(119, '2018-04-29 09:34:00', '2018-07-28 10:54:17', '353', '357', 'BABILYE', 'JALIA', 'Female', '24', '07-15-1992', '07', '1992', 'Married', 'ssugu matale', 'Ab', NULL, '+256772258253', NULL, 'NASUBUGA HARRIET', '4', '+256758282268', NULL, 'KABAKULE', '01-31-2018', '01', '2018', 'KASUBI HEALTH CENTRE 3', '01-31-2018', '01', '2018', '2/2018', '03-09-2018', '03', '2018', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-31-2018', '01', '2018', 'TDF/3TC/EFV', '68', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'YES', NULL, 12, 3, 1, NULL, NULL, 1),
(120, '2018-04-29 09:40:07', '2018-05-01 14:55:44', '352', 'KASUBI HEALTH CENTER 3', 'ABBA', 'HADIJAH', 'Female', '20', NULL, NULL, NULL, 'Married', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-22-2018', '01', '2018', '1/22/2018', '01-22-2018', '01', '2018', '1/2018', '01-22-2018', '01', '2018', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-22-2018', '01', '2018', 'TDF/3TC/EFV', '62', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 7, 3, 1, NULL, NULL, 1),
(121, '2018-04-29 09:46:42', '2018-05-02 10:20:16', '299', 'KASUBI HC3', 'LUBEGA', 'CHARLES', 'Male', '30', NULL, NULL, NULL, 'Living Together', 'LUWAYO VILLAGE', 'Ab', 'KASUBI HC3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-12-2017', '07', '2017', 'KASUBI HEALTH CENTER 3', '07-12-2017', '07', '2017', 'SEPT/2017', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-12-2017', '07', '2017', 'TDF/3TC/EFV', '53', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 20, 3, 11, NULL, NULL, 1),
(122, '2018-04-29 09:57:02', '2018-05-01 14:57:32', '163', 'KASUBI H/C 3', 'NAKYAZZE', 'AISHA', 'Female', '22', NULL, NULL, NULL, 'Married', 'KITAZI -  BUSANSULA', 'Ab', 'KASUBI', NULL, NULL, 'NAMUTEGI  JULIET', NULL, NULL, 'NAMUTEBI JULIET', NULL, '04-08-2015', '04', '2015', 'KASUBI H/C 3', '04-08-2015', '04', '2015', '10/2017', '10-04-2017', '10', '2017', '111', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-04-2017', '10', '2017', 'TDF 3TC EFV', '69.7', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, 11, NULL, NULL, 1),
(123, '2018-04-29 10:00:12', '2018-05-01 14:58:13', '366', 'KASUBI HEALTH CENTER 3', 'NALWEYISO', 'JANE', 'Female', '21', NULL, NULL, NULL, 'Married', 'NAKIKUNYU VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-26-2018', '02', '2018', '2/26/2018', '02-26-2018', '02', '2018', '2/2018', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-26-2018', '02', '2018', 'TDF/3TC/EFV', NULL, 'PERGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 10, 3, 1, NULL, NULL, 1),
(126, '2018-04-29 10:07:15', '2018-05-02 06:18:30', '340', NULL, 'NAKIMULI', 'IRENE', NULL, NULL, NULL, NULL, NULL, NULL, 'MALONGWE', NULL, NULL, '+256', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-10-2017', '02', '2017', '10/2017', NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-10-2017', '02', '2017', 'TDF/3TC/CFU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, NULL, 11, NULL, NULL, 1),
(127, '2018-04-29 10:25:26', '2018-05-01 15:06:16', '295', 'KASUBI HC3', 'BUKENYA', 'JUSTINE', 'Female', '45', NULL, NULL, NULL, 'Married', 'MATALE VILLAGE/SSUGU PARISH', 'Ab', 'KASUBI HC3', '+256777522156', NULL, 'NAKANYAGI BETTY', NULL, '+256706656067', 'BUKENYA JAMIR', NULL, '06-28-2017', '06', '2017', 'KASUBI HC3', '06-28-2017', '06', '2017', 'JUN/2017', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-28-2017', '06', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, NULL, NULL, NULL, 1),
(131, '2018-04-29 10:37:06', '2018-05-01 15:08:01', '249', 'KASUBI HEALTH CENTER 3', 'NAMATA', 'LYDIA', 'Female', '32', NULL, NULL, NULL, 'Married', 'KIKOMA VILLAGE KITAZI PARISH BUIKE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'SAMANYA ANNET', NULL, NULL, 'SAMANYA ANNET', NULL, '08-31-2016', '08', '2016', 'KASUBI HEALTH CENTER 3', '08-31-2016', '08', '2016', '8/2016', '08-31-2016', '08', '2016', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-31-2016', '08', '2016', 'TDF/3TC/EFV', '62', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 7, 3, 1, NULL, NULL, 1),
(132, '2018-04-29 10:40:24', '2018-05-01 15:08:32', '339', NULL, 'NAKONDE', 'CHRISTINE', 'Female', '50', NULL, NULL, NULL, 'Divorced', 'KITAZI - KIKOMA', 'Ab', 'KASUBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-25-2017', '10', '2017', 'KASUBI', '10-25-2018', '10', '2018', '10/2017', '10-25-2017', '10', '2017', '111', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-25-2017', '10', '2017', '10/25/2017', NULL, 'STAGE 111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(133, '2018-04-29 10:43:18', '2018-05-01 15:05:59', '128', 'KASUBI CENTER 3', 'WASSWA', 'JOHN', 'Male', NULL, NULL, NULL, NULL, NULL, 'WANANDA VILLAGE, LUWAYO, BUIKWE DISTRICT', 'Ab', NULL, NULL, NULL, 'MUKWAYA JOHN', NULL, NULL, 'MAKUMBI ROBERT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 19, 3, 11, NULL, NULL, 1),
(134, '2018-04-29 10:43:46', '2018-05-01 15:07:24', '291', 'HEALTH HC3', 'NADUNGA', 'MADINA', 'Female', '38', '06-05-1979', '06', '1979', 'Single', 'KYAMBOGO VILLAGE/', 'Ab', 'KASUBI HEALTH CENTRE 3', NULL, NULL, 'BANGA TWAHA', NULL, NULL, NULL, NULL, '05-20-2014', '05', '2014', 'KASUBI HC3', '05-20-2014', '05', '2014', 'MAY/2014', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-20-2014', '05', '2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 3, 11, NULL, NULL, 1),
(135, '2018-04-29 10:51:36', '2018-05-01 15:06:42', '344', 'KASUBI CENTER 3', 'NABASIRYE', 'DEBORAH', 'Female', NULL, NULL, NULL, NULL, NULL, 'MATALE VILLAGE, SSUGU PARISH, BUIKWE SUB-COUNTY, BUIKWE', 'Ab', 'KASUBI', '+256757065184', NULL, 'SAJABI SAMUEL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11/2017', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-11-2017', '05', '2017', 'TDF/3TC/CFU', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(136, '2018-04-29 10:54:56', '2018-05-01 15:11:57', '265', 'KASUBIHEALTH CENTER 3', 'NANTONGO', 'ANNET', 'Female', '29', NULL, NULL, NULL, 'Married', 'KYAMBONGO VILLAGE MALONGWE PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'BUUNJO WILLIAM', NULL, '+256777207655', NULL, NULL, '12-14-2016', '12', '2016', '12/14/2016', '12-14-2016', '12', '2016', '12/2016', '12-14-2016', '12', '2016', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12-14-2016', '12', '2016', 'TDF/3TC/EFV', '57', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 30, 3, 1, NULL, NULL, 1),
(137, '2018-04-29 10:58:05', '2018-07-28 11:15:58', '308', NULL, 'NAKONDE', 'ESHTER', 'Female', '20', NULL, NULL, NULL, NULL, NULL, 'Ab', 'LUWAYO-WANANDA', NULL, NULL, 'BABIRYE SARAH', NULL, NULL, NULL, NULL, '04-27-2011', '04', '2011', 'KAWOLO HOSPITAL', '04-27-2011', '04', '2011', '04/11', '04-27-2011', '04', '2011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KAWOLO HOSPITAL', '04-27-2011', '04', '2011', NULL, '43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, 19, 3, NULL, 'TRANSFER IN', NULL, 1),
(138, '2018-04-29 11:02:45', '2018-05-01 15:06:08', '129', 'KASUBI H/C 3', 'NSUBUGA', 'VICENT', 'Male', '36', NULL, NULL, NULL, 'Married', 'KITAZI - KASUBI', 'Ab', 'KASUBI H/C 3', NULL, NULL, 'NAMULI REBECCA', NULL, NULL, 'NAMULI REBECCA', NULL, '09-04-2014', '09', '2014', 'KASUBI H/C 3', '09-04-2014', '09', '2014', '10/2015', '10-28-2015', '10', '2015', '111', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-28-2015', '10', '2015', 'TDF 3TC EFV', NULL, 'STAGE 111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 3, 11, NULL, NULL, 1),
(139, '2018-04-29 11:11:47', '2018-05-01 15:04:16', '278', 'KASUBI HEALTH 3', 'NAMULONDO', 'JULIET', 'Female', '42', NULL, NULL, NULL, 'Single', 'KASUBI VILLAGE/KITAZI PARISH', 'Ab', 'KASUBI HC3', '+256785780117', NULL, 'LUBANGA ARON', NULL, '+256775292406', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, 11, NULL, NULL, 1),
(140, '2018-04-29 11:20:58', '2018-08-08 15:16:13', '349', 'KASUBI HEALTH CENTER 3', 'SSALI', 'ROBERT', 'Male', '36', NULL, NULL, NULL, 'Married', 'MATALE VILLAGE, SSUGU PARISH , BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'KASUBI', '+256778578217', 'WIFE', 'BYOGERO ZAHARA', NULL, '+256778578217', NULL, NULL, NULL, NULL, NULL, NULL, '05-01-2018', '05', '2018', '1/2018', NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-01-2018', '05', '2018', 'TDF/3TC/CFU', '54.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(141, '2018-04-29 11:25:30', '2018-04-29 11:53:37', '207', 'KASUBI HEALTH CENTER 3', 'KYOMUKAMA', 'PHI0NA', 'Female', '33', NULL, NULL, NULL, 'Living Together', 'KASUBI VILLAGE KITAZI PARISH', 'Ab', 'KASUBI HEALTH CENTER 3', '+256786213553', 'PERSONEL', 'KALUMBA RONALD', '4', '+', NULL, NULL, '10-19-2015', '10', '2015', 'KASUBI HEALTH CENTER 3', '10-28-2015', '10', '2015', '6/2016', '06-29-2016', '06', '2016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-29-2016', '06', '2016', 'TDF/3TC/EFV', '62', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(143, '2018-04-29 11:29:12', '2018-05-01 15:04:01', '347', NULL, 'NAKALUMBA', 'ESEZA', 'Female', NULL, NULL, NULL, NULL, NULL, 'LUWAYO-LUWAYO', 'Ab', 'KASUBI H/C 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12-20-2017', '12', '2017', 'KASUBI H/C 3', '12-20-2017', '12', '2017', '12/2017', '12-20-2017', '12', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 3, 1, NULL, NULL, 1),
(144, '2018-04-29 11:31:27', '2018-05-02 06:37:04', '121', 'KASUBI H/C 3', 'BUKIRWA', 'CHRISTINE', 'Female', '65', NULL, NULL, NULL, 'Single', 'SSUGU - NAKATYABA', 'Ab', 'KASUBI H/C 111', '+256754632903', 'PERSONEL', 'NAKILYOWA ANGEL', '11', '+256754632903', 'NAKINTU ROBINAH', NULL, '08-20-2014', '08', '2014', '8/20/2014', '08-20-2014', '08', '2014', '06/2015', '04-03-2018', '04', '2018', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-24-2015', '06', '2015', 'TDF 3TC EFV', '54.8', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 11, 3, 11, NULL, NULL, 1),
(145, '2018-04-29 11:34:58', '2018-05-01 15:11:19', '276', 'KASUBI HC3', 'NAKATE', 'GORET', 'Female', '27', NULL, NULL, NULL, 'Single', 'NAMUGANGO VILLAGE/LUWAYO PARISH', 'Ab', 'KASUBI HC3', NULL, NULL, 'NALWADDA ROSE', NULL, NULL, 'NALWADDA ROSE', NULL, '08-28-2017', '08', '2017', 'KASUBI HC3', '08-28-2017', '08', '2017', 'AUG/2017', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-28-2017', '08', '2017', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 3, 11, NULL, NULL, 1),
(146, '2018-04-29 11:50:50', '2018-07-27 14:50:17', '375', 'KASUBI HEALTH CENTRE 3', 'NAIGA', 'ZILIYA', 'Female', '29', '06-15-1989', '06', '1989', 'Living Together', NULL, NULL, NULL, '+25678655551', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-04-2018', '04', '2018', NULL, NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'YES', NULL, 12, 3, 1, NULL, NULL, 1),
(147, '2018-04-29 11:56:44', '2018-05-01 15:11:44', '371', 'KASUBI HEALTH CENTER 3', 'NANYANZI', 'GETRUDE', 'Female', '55', NULL, NULL, NULL, 'Single', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256781110040', 'PERSONEL', 'KIWANUKA HENERY', NULL, NULL, NULL, NULL, '06-14-2013', '06', '2013', 'KASUBI HEALTH CENTER 3', '06-14-2013', '06', '2013', '6/2013', '06-14-2013', '06', '2013', '2', 'LOW CD4', NULL, NULL, NULL, '04-04-2018', '04', '2018', 'ST.FRACIS HEALTH CARE SERVICES', '06-14-2013', '06', '2013', 'TDF/3TC/EFV', '45', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(150, '2018-04-29 12:33:18', '2018-05-02 10:26:19', '144', 'KASUBI H/C 3', 'WANDEGA', 'RICHARD', 'Male', '42', NULL, NULL, NULL, 'Married', 'KITAZI - KASUBI', 'Ab', 'KKASUBI H/C 3', '+25675674614O', 'PERSONEL', 'NAMBOZO GRACE', '3', '+256772061581', NULL, NULL, '11-14-2014', '11', '2014', 'KASUBI HC 3', '11-14-2014', '11', '2014', '11/2015', '11-25-2015', '11', '2015', '3', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-25-2015', '11', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 3, 3, 11, NULL, NULL, 1),
(151, '2018-04-29 12:35:47', '2018-05-02 09:44:17', '182', 'KASUBI HEALTH CENTER 3', 'MUSISI', 'KIBUUKA SALIM', 'Male', '45', NULL, NULL, NULL, 'Single', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', '+256774169904', 'PERSONEL', 'LOGOSE SARAH', '12', '+256783866274', 'LOGOSE', NULL, '07-22-2015', '07', '2015', '7/22/2015', '07-29-2015', '07', '2015', '2/2016', '02-24-2016', '02', '2016', '2', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-24-2016', '02', '2016', 'TDF/3TC/EFV', '53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(152, '2018-04-29 12:44:08', '2018-05-03 08:36:57', '259', 'KASUBI HC 3', 'NAMPINGA', 'PAULINE', 'Female', '2', NULL, NULL, NULL, 'Child', 'KITEZI-NAKIKUNYU', 'Ab', 'KASUBI H/C 3', '+256754630670', 'FATHER', 'KAMIRA ERIAS', '10', '+256754630670', NULL, NULL, '10-27-2016', '10', '2016', '10/27/2016', '10-27-2016', '10', '2016', '10/2016', '10-27-2016', '10', '2016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-27-2016', '10', '2016', NULL, '9.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 10, 3, 11, NULL, NULL, 1),
(153, '2018-04-29 12:47:10', '2018-05-01 15:13:42', '228', 'KASUBI HC3', 'NAKYEYUNE', 'SARAH', 'Female', '56', NULL, NULL, NULL, NULL, 'NAKATYABA VILLAGE/SSUGU PARISH', 'Ab', 'KASUBI HC3', NULL, NULL, 'MUSOKE GODFREY', NULL, NULL, NULL, NULL, '05-17-2016', '05', '2016', 'KASUBI HC3', '05-25-2016', '05', '2016', 'NOV/2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-23-2016', '04', '2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 3, 11, NULL, NULL, 1),
(155, '2018-04-29 12:55:48', '2018-05-01 15:13:24', '350', 'KASUBI HEALTH CENTER 3', 'KOKUTONA', 'AGNES', 'Female', '45', '01-09-2018', '01', '2018', 'Single', 'KIKOMA VILLAGE, KITAZI PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'KASUBI', '+256789612521', NULL, 'NAMIREMBE JANE', '4', '+256788408983', NULL, NULL, NULL, NULL, NULL, NULL, '09-01-2018', '09', '2018', '1/2018', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09-01-2018', '09', '2018', 'TDF/3TC/CFU', '48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, NULL, NULL, NULL, 1),
(156, '2018-04-29 13:04:02', '2018-05-01 15:18:57', '168', 'KASUBI H/C 3', 'NAMUTEBI', 'FLORENCE', 'Female', '28', '07-15-1987', '07', '1987', 'Married', 'KITAZI - KASUBI', 'Ab', 'KASUBI H/C 3', NULL, NULL, 'NALONGO BUKENYA', '3', NULL, 'NALONGO BUKENYA', NULL, '04-30-2015', '04', '2015', 'KASUBI', '04-30-2015', '04', '2015', '04/2015', '04-30-2015', '04', '2015', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-30-2015', '04', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, 4, 3, 1, NULL, NULL, 1),
(157, '2018-04-29 13:04:24', '2018-05-01 15:18:17', '185', 'KASUBI HEALTH CENTER 3', 'NAKYANZI', 'EVA', 'Female', '55', '03-07-1956', '03', '1956', 'Single', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-24-2015', '07', '2015', 'KASUBI HEALTH CENTER 3', '07-29-2015', '07', '2015', '10/2015', '10-28-2015', '10', '2015', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-28-2015', '10', '2015', 'TDF/3TC/EFV', '55', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(158, '2018-04-29 13:09:32', '2018-05-16 09:38:37', '239', 'KASUBI HC3', 'KASOLO', 'FRED', 'Male', '28', '05-11-1988', '05', '1988', 'Married', 'KITEZA VILLAGE/KITEZA PARISH', 'Ab', 'KASUBI HC3', '+256779438807', 'PERSONEL', 'BIRABWA ROSE', '26', NULL, NULL, NULL, '07-27-2017', '07', '2017', 'KASUBI HEALTH CENTER 3', '06-29-2016', '06', '2016', 'SEPT/2017', '07-27-2017', '07', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-27-2017', '07', '2017', 'TDF/3TC/EFV', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 26, 3, 11, NULL, NULL, 1),
(159, '2018-04-29 13:26:28', '2018-05-01 15:16:54', '131', 'KASUBI H/C 3', 'NALWANGA', 'BETTY', 'Female', '33', NULL, NULL, NULL, NULL, 'SSUGU - MATALE', 'Ab', 'KASUBI', NULL, NULL, 'NAZZIWA CAROL', '3', NULL, 'PAUL SSEKABANJA', NULL, '08-12-2014', '08', '2014', 'KASUBI', '08-12-2014', '08', '2014', '01/2015', '01-14-2015', '01', '2015', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-14-2015', '01', '2015', 'TDF 3TC EFV', '69', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, 11, NULL, NULL, 1),
(160, '2018-04-29 13:26:56', '2018-04-29 13:38:10', '183', 'KASUBI HEALTH CENTER 3', 'BYALUGABA', 'NESTOLE', 'Male', '32', '12-16-1973', '12', '1973', 'Single', 'KASUBI VILLAGE KITAZI PARISH', 'Ab', 'KASUBI HEALTH CENTER 3', '+256786880332', 'PERSONEL', NULL, NULL, NULL, NULL, NULL, '07-07-2015', '07', '2015', 'KASUBI HEALTH CENTER 3', '07-07-2015', '07', '2015', '1/2016', '01-27-2016', '01', '2016', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-27-2016', '01', '2016', 'TDF/3TC/EFV', '57', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(161, '2018-04-29 13:35:33', '2018-05-01 15:16:16', '196', 'KASUBI HEALTH CENTER 3', 'NABISUBI', 'PROSSY', 'Female', '17', '10-01-1999', '10', '1999', 'Married', 'KASUBI VILLAGE, KITAZI PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'Ab', NULL, NULL, NULL, NULL, NULL, NULL, 'MAGERA BRIAN(HUSBAND)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9/2015', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-09-2015', '10', '2015', 'TDF/3TC/EFU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, 4, 3, 1, NULL, NULL, 1),
(162, '2018-04-29 13:37:45', '2018-05-01 15:15:46', '229', 'KASUBI H/C 3', 'NAMAYANJA', 'SARAH', 'Female', '46', NULL, NULL, NULL, NULL, 'SSUGU-MATALE', 'Ab', NULL, NULL, NULL, 'NAMUTEBI FLORENCE', '4', NULL, NULL, NULL, '05-25-2015', '05', '2015', 'KASUBI H/C 3', '05-25-2016', '05', '2016', '6/2017', '06-28-2017', '06', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-28-2017', '06', '2017', 'TDF/3TC/CFV', '84', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, 11, NULL, NULL, 1),
(163, '2018-04-29 13:44:43', '2018-05-01 15:14:26', '148', 'KASUBI H/C 3', 'LULE', 'PETER', 'Male', '52', NULL, NULL, NULL, NULL, 'KITAZI KITAZI', 'Ab', 'KASUBI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-07-2015', '01', '2015', 'KASUBI', '01-07-2015', '01', '2015', '08/2016', '08-31-2016', '08', '2016', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-31-2016', '08', '2016', 'TDF 3TC EFV', '55', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, 11, NULL, NULL, 1),
(164, '2018-04-29 13:48:50', '2018-05-01 15:13:44', '237', 'KASUBI HC3', 'KAMANGALI', 'JUMA', 'Male', '42', NULL, NULL, NULL, 'Married', 'MATALE VILLAGE/SSUGU PARISH', 'Ab', 'KASUBI HC3', '+256753406660', NULL, 'NAMUTEBI IRENE', NULL, '+25675340660', NULL, NULL, '09-28-2016', '09', '2016', 'KASUBI HC3', '09-28-2016', '09', '2016', 'NOV/2016', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09-28-2016', '09', '2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, NULL, NULL, NULL, 1),
(165, '2018-04-29 13:48:51', '2018-05-01 15:13:01', '234', 'KASUBI HEALTH CENTER 3', 'NSUBUGA', 'IRENE', 'Male', '31', '12-15-1985', '12', '1985', 'Single', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY', 'Ab', 'ENTEBE', '+256755984849', 'MOTHER', 'EDISA', NULL, NULL, NULL, NULL, '10-07-2014', '10', '2014', 'ENTEBE', '10-07-2014', '10', '2014', '10/2014', '10-07-2014', '10', '2014', '1', 'LACTATING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 12, 3, 1, NULL, NULL, 1),
(166, '2018-04-29 14:07:59', '2018-05-01 15:16:54', '348', 'KASUBI HEALTH CENTER 3', 'MUWONGE', 'DEO', 'Male', '43', '11-15-1974', '11', '1974', 'Living Together', 'KIGALI VILLAGE, LUWAYO PARISH, KAWOLO SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'KASUBI', '+256779806321', NULL, 'NALONGO NANKWANGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-01-2018', '03', '2018', '1/2018', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-01-2018', '03', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, 23, 3, NULL, NULL, NULL, 1),
(167, '2018-04-29 14:08:05', '2018-05-01 15:16:43', '226', '226', 'NANYANZI', 'SARAH', 'Female', '26', NULL, NULL, NULL, NULL, 'KIKOMA - KITAZI', 'Ab', NULL, '+25677809621', NULL, NULL, NULL, NULL, NULL, NULL, '05-06-2016', '05', '2016', NULL, '05-06-2016', '05', '2016', '5/2015', '05-06-2016', '05', '2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-06-2016', '05', '2016', 'TDF/3TC/EFV', '59.6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, 1, NULL, NULL, 1),
(168, '2018-04-29 14:13:33', '2018-05-01 15:19:44', '236', 'KASUBI HEALTH CENTER 3', 'MALE', 'EMMA', 'Male', '17', '12-25-2016', '12', '2016', 'Child', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', NULL, 'KASUBI HEALTH CENTER 3', NULL, NULL, 'NAKAJJA JOSEPHINE', NULL, NULL, NULL, NULL, '06-22-2016', '06', '2016', 'KASUBI HEALTH CENTER 3', '06-22-2016', '06', '2016', '6/2016', '06-22-2016', '06', '2016', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-22-2016', '06', '2016', 'TDF/3TC/EFV', '58', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(169, '2018-04-29 14:19:20', '2018-05-01 15:19:34', '136', 'KASUBI H/C 3', 'KAMONYO', 'JAMES', 'Male', '70', NULL, NULL, NULL, 'Single', 'SSUGU MATALE', 'Ab', 'KASUBI', NULL, NULL, 'MUKWAYA KASIAH', '3', NULL, NULL, NULL, '08-11-2014', '08', '2014', 'KASUBI', '08-11-2014', '08', '2014', '04/2015', '04-17-2015', '04', '2015', '111', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-17-2015', '04', '2015', 'AZT 3TC NVP', '51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 3, 11, NULL, NULL, 1),
(170, '2018-04-29 14:27:07', '2018-05-01 15:19:12', '232', NULL, 'KIZITO', 'PHILLY', 'Male', '21', NULL, NULL, NULL, 'Child', 'MAKONGE', NULL, NULL, '+256778565326', NULL, 'SEMAKULA EDWARD', NULL, '+256778565326', NULL, NULL, '06-23-2014', '06', '2014', 'KASUBI HC3', '06-23-2014', '06', '2014', 'JUN/2014', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-23-2014', '06', '2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, 1),
(171, '2018-04-29 14:28:21', '2018-05-01 15:18:48', '235', 'KASUBI HEALTH CENTER 3', 'NAKAJJA', 'JOSEPHINE', 'Female', '22', '07-15-1994', '07', '1994', 'Divorced', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', '+256788002256', 'PERSONEL', 'NAKIYINGI FLORENCE', NULL, NULL, NULL, NULL, '06-10-2016', '06', '2016', '6/10/2016', '06-10-2016', '06', '2016', '6/2016', '06-10-2016', '06', '2016', '3', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '58', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(172, '2018-04-29 14:38:47', '2018-05-02 08:46:02', '368', 'KASUBI HEALTH CENTER 3', 'MULINDE', 'SIMON', 'Male', '20', NULL, NULL, NULL, 'Single', 'KYANJA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256781654056', 'PERSONAL', 'MUBIRU JULIUS', '5', NULL, 'MUBIRU JULIUS', NULL, '02-12-2018', '02', '2018', 'KASUBI HC 3', '02-28-2018', '02', '2018', '2/2018', '02-28-2018', '02', '2018', '12/28/2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-28-2018', '02', '2018', 'TDF/3TC/EFV', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 5, 3, 11, NULL, NULL, 1),
(175, '2018-04-29 14:42:05', '2018-05-02 07:08:12', '154', 'KASUBI H/C 3', 'NAMANDE', 'PROSSY', 'Female', '55', '04-29-2018', '04', '2018', 'Divorced', 'SSUGU - KIRANGIRA', 'Ab', 'KASUBI', '+256750826306', 'PERSONEL', 'NALEKA MOSES', '3', NULL, NULL, NULL, '01-07-2015', '01', '2015', 'OUTREACH', '01-07-2015', '01', '2015', '04/2015', '04-01-2015', '04', '2015', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-01-2015', '04', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 13, 3, 16, NULL, NULL, 1),
(176, '2018-04-30 06:23:58', '2018-05-01 15:18:09', '205', 'KASUBI HEALTH CENTER 3', 'NAKIBIRANGO', 'LOVISA', 'Female', '23', '04-09-1992', '04', '1992', 'Married', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY', 'Ab', NULL, '+256772965016', 'HUSBAND', 'BWIRE MARK', NULL, '+256772965016', 'BWIRE MARK', NULL, '05-20-2014', '05', '2014', NULL, '05-20-2014', '05', '2014', '5/2014', '05-20-2014', '05', '2014', '1', NULL, NULL, NULL, NULL, '10-02-2015', '10', '2015', NULL, '05-20-2014', '05', '2014', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(177, '2018-04-30 06:46:45', '2018-04-30 06:54:43', '208', 'KASUBI HEALTH CENTER 3', 'SAFARI', 'MOSES', 'Male', '38', NULL, NULL, NULL, 'Separated', 'KASUBI TOWN KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', '+256782026922', 'PERSONEL', 'KATONGOLE MICHEAL', '3', NULL, NULL, NULL, '08-31-2015', '08', '2015', 'KASUBI HEALTH CENTER 3', '10-28-2015', '10', '2015', '6/2016', '06-29-2016', '06', '2016', '2', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-29-2016', '06', '2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 3, 3, 11, NULL, NULL, 1),
(178, '2018-04-30 07:01:43', '2018-05-09 07:52:46', '203', 'KASUBI HEALTH CENTER 3', 'SENKUBUGE', 'SIMON', 'Male', '44', '06-15-1991', '06', '1991', 'Married', 'NSENYA VILLAGE LUWAYO', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-31-2015', '08', '2015', 'KASUBI HEALTH CENTER 3', '10-11-2015', '10', '2015', '3/2016', '03-30-2016', '03', '2016', '1', 'CLINICAL STAGE 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-30-2016', '03', '2016', 'TDF/3TC/EFV', '43', 'CLINICAL STAGE 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 25, 3, 11, NULL, NULL, 1),
(179, '2018-04-30 07:19:22', '2018-05-02 07:34:34', '202', 'KASUBI HEALTH CENTER 3', 'SEMWALO', 'JOHN', 'Male', NULL, '01-02-1981', '01', '1981', 'Separated', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', '+256774935916', 'PERSONEL', 'KAGWA(NEIGHBOUR)', NULL, NULL, NULL, NULL, '08-31-2015', '08', '2015', 'KASUBI HEALTH CENTER 3', '08-31-2015', '08', '2015', '7/2016', '07-31-2016', '07', '2016', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-31-2016', '07', '2016', 'TDF/3TC/EFV', '57', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(180, '2018-04-30 07:38:08', '2018-05-01 15:27:26', '200', 'KASUBI HEALTH CENTER 3', 'KAWUNGAIRE', 'GRACE', 'Female', '42', NULL, NULL, NULL, 'Married', 'KIGENDA VILLAGE KAWOLO SUB COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, 'NAKALIWA RASHIDA', 'NAKALIWA RASHIDA', NULL, '+256752485043', 'NAKALIWA RASHIDA(DAUGHTER)', NULL, '09-30-2015', '09', '2015', 'KASUBI HEALTH CENTER 3', '09-30-2015', '09', '2015', '7/2016', '07-13-2016', '07', '2016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-13-2016', '07', '2016', 'TDF/3TC/EFV', '62.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 28, 3, 11, NULL, NULL, 1),
(181, '2018-04-30 08:01:07', '2018-05-01 15:27:08', '181', 'KASUBI HELTH CENTER 3', 'KIYIMBA', 'BOSCO', 'Male', '29', '02-25-1986', '02', '1986', 'Living Together', 'SSUUGU KIRANGIRASSUUGU PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', '+256758448314', 'PERSONAL', NULL, NULL, NULL, NULL, NULL, '06-08-2015', '06', '2015', 'KASUBI HEALTH CENTER 3', '06-24-2015', '06', '2015', '7/2015', '07-29-2015', '07', '2015', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-29-2015', '07', '2015', 'TDF/3TC/EFV', '43.8', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 13, 3, 11, NULL, NULL, 1),
(182, '2018-04-30 08:17:53', '2018-05-02 09:37:37', '179', 'KASUBI HEALTH CENTER 3', 'LOGOSE', 'SARAH', 'Female', '25', NULL, NULL, NULL, 'Single', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256783866274', 'PERSONEL', 'MUSISI SALIM', NULL, '+256778947669', 'MUSISI SALIM', NULL, '03-04-2015', '03', '2015', 'KASUBI HEALTH CENTER 3', '03-04-2015', '03', '2015', '6/2017', '06-28-2017', '06', '2017', '2', 'CLINICAL STAGE 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-28-2017', '06', '2017', 'TDF/3TC/EFV', '31', 'CLINICAL STAGE 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(183, '2018-04-30 08:39:24', '2018-05-01 15:31:52', '177', 'KASUBI HEALTH CENTER 3', 'NALUGOTI', 'SOPHIA', 'Female', '36', '06-15-1977', '06', '1977', 'Living Together', 'LUWAYO VILLAGE LUWAYO PARISH KAWOLO SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'NANDEJJE SYLIVIA', NULL, NULL, NULL, NULL, '03-31-2015', '03', '2015', 'KASUBI HEALTH CENTER 3', '05-27-2015', '05', '2015', '8/2015', NULL, NULL, NULL, '2', 'LOW CD48/26/2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-26-2015', '08', '2015', 'TDF/3TC/EFV', '45.7', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 20, 3, 11, NULL, NULL, 1),
(184, '2018-04-30 09:01:03', '2018-05-01 15:25:05', '176', 'KASUBI HEALTH CENTER 3', 'NASOZI', 'AIDAH', 'Female', '68', NULL, NULL, NULL, 'Single', 'KYANJA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-27-2015', '05', '2015', '5/27/2015', '05-27-2015', '05', '2015', '5/2015', '05-27-2015', '05', '2015', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', NULL, NULL, 5, 3, NULL, NULL, NULL, 1),
(185, '2018-04-30 09:28:24', '2018-05-01 15:24:54', '173', 'KASUBI HEALTH CENTER 3', 'NAKAYANJA', 'JOSEPHINE', 'Female', '39', '05-28-1976', '05', '1976', 'Divorced', 'NAKATYABA VILLAGE SSUUGU PARISH BUIKWE SUB- COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256773907878', 'PERSONEL', 'ZAMZAM', NULL, NULL, NULL, NULL, '05-04-2015', '05', '2015', NULL, '05-27-2015', '05', '2015', '2/2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-26-2016', '02', '2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 11, NULL, 11, NULL, NULL, 1),
(186, '2018-04-30 10:29:29', '2018-04-30 10:43:55', '125', 'KASUBI HEALTH CENTER 3', 'NABIBUBBU', 'ESTHER', 'Female', '28', '06-12-1986', '06', '1986', 'Married', 'KASUBI TOWN KITAZI PARISH BUIKWE SUB-COUNTY', 'Ab', 'KASUBI HEALTH CENTER 3', '+256783098800', 'PERSONEL', 'NAGITTA ALLEN(SISTER)', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-05-2014', '11', '2014', '1', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '62', 'PREGNANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 3, 3, 1, NULL, NULL, 1),
(187, '2018-04-30 10:55:19', '2018-05-01 15:25:37', '211', NULL, 'NANSUBUGA', 'AISHA', 'Female', '30', NULL, NULL, NULL, 'Married', 'KASUBI-TOWN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '68', 'LOW/CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, 1),
(188, '2018-04-30 11:28:09', '2018-04-30 11:44:59', '266', 'KASUBI HEALTH CENTRE 3', 'MWABULA', 'MARGRET', 'Female', '27', '04-17-1989', '04', '1989', 'Single', 'KASUBI TOWN KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256754377475', 'PERSONEL', 'NAMUSISI MARGRET', '3', NULL, NULL, NULL, '01-01-2016', '01', '2016', 'KASUBI HEALTH CENTER 3', '01-25-2016', '01', '2016', '1/2017', '01-25-2017', '01', '2017', '3', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-25-2017', '01', '2017', 'TDF/3TC/EFV', '35', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 3, 3, 11, NULL, NULL, 1),
(189, '2018-04-30 11:42:17', '2018-05-01 15:25:18', '209', 'KASUBI HEALYH CENTER 3', 'MUWANUUZI', 'ELIA', 'Male', '65', NULL, NULL, NULL, NULL, 'KIKOMA VILLAGE, KITAZI PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', NULL, NULL, NULL, NULL, 'NZOLUBALA JOHN', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-10-2015', '04', '2015', '5/2016', '01-05-2016', '01', '2016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-25-2016', '05', '2016', NULL, '39.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, NULL, NULL, NULL, NULL, 1),
(190, '2018-04-30 11:52:29', '2018-05-01 15:24:37', '258', 'KASUBI HEALTH CENTER 3', 'SEKITOLEKO', 'EVANS', 'Male', '19', '06-13-1997', '06', '1997', 'Married', 'MATALE VILLAGE SSUUGU PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'HEALTH CENTER 3KASUBI', NULL, NULL, 'NAGAWA SELISTA', NULL, NULL, NULL, NULL, '03-25-2008', '03', '2008', 'MUKONO HEALTH CENTER 4', '03-25-2008', '03', '2008', '6/2010', '04-30-2018', '04', '2018', '2', NULL, NULL, NULL, NULL, '09-21-2016', '09', '2016', 'MUKONO HCVI', '04-30-2010', '04', '2010', 'AZT/3TC/NVP', NULL, 'CLINICAL STAGE 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 16, NULL, NULL, 1),
(191, '2018-04-30 12:19:06', '2018-05-01 15:23:50', '240', 'KASUBI HEALTH CENTER 3', 'NAMUSISI', 'HARRIET', 'Female', '53', NULL, NULL, NULL, 'Divorced', 'LUWAYO VILLAGE, LUWAYO PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', NULL, NULL, NULL, NULL, 'NALUMANSI MIRIAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BUWAMA', NULL, NULL, NULL, NULL, '07-02-2015', '07', '2015', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'BUWAMA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 20, NULL, NULL, NULL, NULL, 1),
(192, '2018-04-30 12:39:28', '2018-05-21 11:43:36', '255', 'KASUBI HC 3', 'NABAWEESI', 'ROBINAH', 'Female', '24', '06-15-1982', '06', '1982', 'Living Together', 'KASUBI TOWN KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HC 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01-05-2016', '01', '2016', 'KASUBI HC 3', '01-06-2016', '01', '2016', '10/2016', '10-06-2016', '10', '2016', '1', 'LACTATING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-06-2016', '10', '2016', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 3, 3, 1, NULL, NULL, 1),
(194, '2018-04-30 13:01:23', '2018-05-01 15:23:12', '217', 'KASUBI HEALTH CENTER 3', 'KALYANGO', 'PETER', 'Male', '38', '10-18-1977', '10', '1977', 'Divorced', 'NAMUGONGO VILLAGE, NAMUGONGO PARISH, KAWOOLO SUB-COUNTY, BUIKWE DISTRICT', 'Ab', 'KASUBI', NULL, NULL, 'BOGERE', NULL, '+256777015252', NULL, NULL, NULL, NULL, NULL, NULL, '01-27-2016', '01', '2016', '2/2016', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2/24/2016', '02-24-2016', '02', '2016', 'TDF/3TC/EFU', '51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 18, NULL, 11, NULL, NULL, 1),
(195, '2018-04-30 13:02:04', '2018-05-01 15:22:37', '254', 'KASUBI HEALTH CENTER 3', 'NAKABO NAMUGAMBE', 'RITAH', 'Female', '2', '08-02-2014', '08', '2014', 'Child', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'PCR', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'NABAKOOZA JOSEPHINK E', NULL, NULL, 'KYOBE RICHARD', NULL, '07-27-2016', '07', '2016', 'KASUBI HEALTH CENTER 3', '09-24-2016', '09', '2016', '9/2016', '09-24-2016', '09', '2016', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09-24-2016', '09', '2016', 'ABC/3TC/EFV', '11.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(196, '2018-04-30 13:22:44', '2018-05-16 10:10:41', '271', 'KASUBI HEALTH CENTER 3', 'NASSALI', 'ZEPHARANI', 'Female', '1', '07-23-2016', '07', '2016', 'Child', 'KISSU VILLAGE, KITAZI PARISH, BUIKWE SUB-COUNTY, BUIKWE DISTRICT', 'PCR', 'KASUBI', '+256773709026', 'NAMAYE FATUMA', 'NAMAYE FATUMA', '31', '+256773709026', NULL, NULL, NULL, NULL, NULL, 'KASUBI HEALTH CENTER 3', '02-10-2017', '02', '2017', '3/2017', '03-22-2017', '03', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-22-2017', '03', '2017', 'AZT/3TC/NVP', '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 31, 3, 5, NULL, NULL, 1),
(197, '2018-04-30 13:26:23', '2018-05-01 15:20:18', '251', 'KASUBI HEALTH CENTER 3', 'MUSISI KIRAAGA', 'YAKOBO', 'Male', '50', '02-24-1966', '02', '1966', 'Living Together', 'MATALE- BUKASA VILLAGE SUUGU PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HEALTH CENTER 3', '+256758197537', 'PERSONEL', 'NANYONGA JESCA', NULL, '+256750733889', NULL, NULL, '09-07-2016', '09', '2016', 'KASUBI HEALTH CENTER 3', '09-07-2016', '09', '2016', '11/2017', '11-29-2017', '11', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-29-2017', '11', '2017', 'TDF/3TC/EFV', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(198, '2018-05-01 07:01:32', '2018-05-02 09:08:16', '219', 'KASUBI H/C 3', 'MUKASA', 'DAVID', 'Male', '51', '01-24-1965', '01', '1965', 'Living Together', 'LUWAYO LUWAYO', 'Ab', 'KASUBI HC 3', '+256772085241', 'PERSONAL', 'NALUGOTI SOPHIA', '3', NULL, NULL, NULL, '02-12-2016', '02', '2016', 'KASUBI HEALTH CENTER 3', '02-24-2016', '02', '2016', '08/2017', '08-30-2017', '08', '2017', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-30-2017', '08', '2017', 'TDF 3TC EFV', NULL, 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 20, 3, 11, NULL, NULL, 1),
(199, '2018-05-01 08:34:11', '2018-05-01 15:30:40', '220', NULL, 'NAMUDDU', 'RUTH', 'Female', '50', NULL, NULL, NULL, 'Single', 'KITAZI-KIKOMA', 'Ab', 'KASUBI', NULL, NULL, 'MUKANDEKEZI', '4', NULL, NULL, NULL, '04-27-2016', '04', '2016', NULL, '04-27-2016', '04', '2016', '4/2016', '04-27-2016', '04', '2016', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-27-2016', '04', '2016', 'TDF/3TC/EFV', '44.8', 'W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, NULL, NULL, NULL, 1),
(201, '2018-05-01 08:56:34', '2018-05-02 11:05:47', '272', NULL, 'KASAJJA', 'ALEX', 'Male', '37', '06-15-1980', '06', '1980', 'Married', 'KITAZI-KOBA NAMUWONGO', 'PCR', 'KISIIZI HOSP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-27-2015', '02', '2015', NULL, '02-27-2017', '02', '2017', '2/2015', '02-27-2017', '02', '2017', '1', NULL, NULL, NULL, NULL, '02-27-2017', '02', '2017', 'KISIIZI', '02-27-2015', '02', '2015', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 3, 11, NULL, NULL, 1),
(203, '2018-05-01 09:19:06', '2018-05-02 06:59:26', '233', 'KASUBI', 'KAVULE', 'MUSITAF', 'Male', '35', '06-15-1978', '06', '1978', 'Single', 'NSENYA LUWAYO', 'Ab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-27-2016', '05', '2016', NULL, '06-01-2016', '06', '2016', '6/2016', NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-01-2016', '06', '2016', 'TDF/3TC/CFV', '50', 'W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 3, 11, NULL, NULL, 1),
(204, '2018-05-01 09:44:43', '2018-05-01 09:55:17', '243', 'KASUBI H/C 3', 'NABIRYE', 'ROSE', 'Female', '42', NULL, NULL, NULL, 'Married', 'KASUBI', 'Ab', 'KASUBI', NULL, NULL, 'SSEMULA ISMAIL', '4', NULL, NULL, NULL, '07-27-2016', '07', '2016', 'KASUBI H/C 3', '07-27-2016', '07', '2016', '7/2017', '07-06-2017', '07', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-06-2017', '07', '2017', 'TDF/3TC/CFV', '54', 'W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(206, '2018-05-01 10:04:37', '2018-05-01 15:28:57', '250', 'KASUBI H/C 3', 'NANYONGA', 'JESCA', 'Female', '25', '06-15-1989', '06', '1989', 'Married', 'SSUGU-MATALE', 'Ab', 'KASUBI', '+256750733889', 'SSU', 'MUSIS KIRAAGA YAKOBO', NULL, '+256758197537', NULL, NULL, '09-07-2016', '09', '2016', 'KASUBI', '09-07-2016', '09', '2016', '11/2017', '11-29-2017', '11', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-29-2017', '11', '2017', 'TDF/3TC/CFV', '49', 'W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, NULL, 11, NULL, NULL, 1),
(207, '2018-05-01 10:26:05', '2018-05-01 15:28:31', '224', 'KASUBI H/C 3', 'KAMBEJJA', 'REBECCA', 'Female', '39', NULL, NULL, NULL, 'Married', 'KASOKOSO-NSENYA', 'Ab', 'KASUBI', '+256780234525', NULL, 'NABIRYE SCOVIA', NULL, NULL, NULL, NULL, '03-04-2014', '03', '2014', 'KASUBI H/C 3', '03-04-2016', '03', '2016', '3/2014', '03-04-2014', '03', '2014', '1', NULL, NULL, NULL, NULL, '03-04-2014', '03', '2014', 'MMC HC4 (MBARARA)', '03-04-2014', '03', '2014', 'TDF/3TC/EFV', '55', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 27, 3, 1, NULL, NULL, 1),
(208, '2018-05-01 10:54:18', '2018-05-16 10:27:38', '267', 'KASUBI HEALTH CENTER 3', 'NAMAYE', 'FATUMA', 'Female', NULL, NULL, NULL, NULL, 'Married', 'LUWAYO-MUKISU', 'Ab', 'KASUBI', '+256773709026', 'PERSONEL', 'NAMPIIMA HADIJAH', '31', '+256781760884', NULL, NULL, '01-26-2017', '01', '2017', 'KASUBI HC 3', '01-26-2017', '01', '2017', '1/2017', '01-26-2017', '01', '2017', '1', NULL, NULL, NULL, NULL, '01-26-2017', '01', '2017', NULL, '01-26-2017', '01', '2017', 'TDF/3TC/EFV', '51', 'W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 31, 3, 1, NULL, NULL, 1),
(210, '2018-05-01 11:20:29', '2018-05-01 15:27:24', '269', NULL, 'NABISUBI', 'JUSTINE', 'Female', '25', '06-15-1992', '06', '1992', 'Single', 'KITAZI-KASUBI', 'Ab', 'KASUBI H/C 3', NULL, NULL, 'NAMIREMBE JANE', '4', NULL, NULL, NULL, '02-23-2017', '02', '2017', 'KASUBI H/C 3', '02-23-2017', '02', '2017', '7/2017', '07-31-2017', '07', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-31-2017', '07', '2017', 'TDF/3TC/EFV', '63', 'W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 3, 3, 1, NULL, NULL, 1),
(211, '2018-05-01 11:42:09', '2018-07-27 11:27:45', '231', NULL, 'NAKAZI', 'MARGRET', 'Female', '25', NULL, NULL, NULL, 'Married', 'SSUGU-MATALE', 'Ab', NULL, NULL, NULL, 'NSANYI TEOPISTA', NULL, NULL, NULL, NULL, '05-04-2016', '05', '2016', NULL, NULL, NULL, NULL, '10/2016', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-25-2018', '07', '2018', 'MITYANA', NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(214, '2018-05-02 07:11:25', '2018-05-02 07:25:59', '242', 'KASUBI HEALTH CENTER 3', 'KEMIREMBE', 'MIRIA', 'Female', '40', NULL, NULL, NULL, 'Married', 'MATALE SSUUGU', 'Ab', 'KASUBI HC3', '+256777907704', 'PERSONEL', 'KAGOWA JOHN', '12', NULL, NULL, NULL, '01-17-2011', '01', '2011', 'KAWOLO HSP', '01-17-2011', '01', '2011', '1/2013', '01-21-2013', '01', '2013', '2', 'LOW CD4', NULL, NULL, NULL, '05-02-2018', '05', '2018', '7/27/2016', '01-21-2013', '01', '2013', 'TDF/3TC/EFV', '45', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(216, '2018-05-02 09:56:41', '2018-05-02 10:09:03', '90', 'KASUBI HEALTH CENTER 3', 'NABISUBI', 'CHRISTINE', 'Female', '25', NULL, NULL, NULL, 'Married', 'KASUBI TOWN KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KASUBI HC 3', '+256777970521', 'PERSONEL', 'ADIKIN FEDERESI', NULL, '+256784992218', 'BUKENYA DEB0RAH', NULL, '10-02-2011', '10', '2011', 'KAWOLO HOSP', '10-02-2011', '10', '2011', '5/2013', '05-23-2013', '05', '2013', '1', 'PREGNANT', NULL, NULL, NULL, '02-15-2014', '02', '2014', 'KAWOLO HOSP', '05-23-2013', '05', '2013', 'TDF/3TC/EFV', '80', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 3, 3, 1, NULL, NULL, 1),
(217, '2018-05-03 08:54:51', '2018-05-03 09:02:11', '031', 'KASUBI HEALTH CENTER 3', 'NABAKOOZA', 'JOSEPHINE', 'Female', '26', '03-15-2013', '03', '2013', 'Married', 'KIKOMA KITAZI', 'Ab', 'KASUBI HEALTH CENTER 3', NULL, NULL, 'KYOBE RICHARD', '7', NULL, 'KYOBE RICHARD', NULL, '03-15-2013', '03', '2013', 'KASUBI HC 3', '03-15-2013', '03', '2013', '3/2013', '03-15-2013', '03', '2013', '1', 'LOW CD4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-15-2013', '03', '2013', 'TDF/3TC/EFV', NULL, 'LACTATING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 7, 3, 1, NULL, NULL, 1);
INSERT INTO `hiv_care_art_cards` (`id`, `created_at`, `updated_at`, `PatientNumber`, `health_unit`, `surName`, `firstName`, `sex`, `age`, `date_of_birth`, `month_of_birth`, `year_of_birth`, `merital_status`, `address`, `test_type`, `test_location`, `phone_number`, `phone_owner_name`, `treatmemnt_suporter`, `treatment_address`, `treatment_telephone`, `home_based_care_provider`, `drug_allagies`, `date_comfirmed_hiv`, `month_comfirmed_hiv`, `year_comfirmed_hiv`, `place_of_hive_confirmation`, `date_enrolled_in_HIV`, `month_enrolled_in_HIV`, `year_enrolled_in_HIV`, `cohort`, `date_medically_legible`, `month_medically_legible`, `year_medically_legible`, `clinical_stage`, `reason_why_elligible`, `date_madically_eligible_date_ART`, `month_madically_eligible_date_ART`, `year_madically_eligible_date_ART`, `date_transfered_in`, `month_transfered_in`, `year_transfered_in`, `transfred_in_from`, `date_art_started`, `month_art_started`, `year_art_started`, `initial_regimen`, `weight_at_ART_start`, `function_at_ART_start`, `date_transfred_out`, `month_transfred_out`, `year_transfred_out`, `place_tranfred_to`, `date_died`, `month_died`, `year_died`, `person_live_status`, `preg`, `lact`, `relevant_medical_conditions`, `village_id`, `pt_clinic_id`, `care_entry_point_id`, `care_entry_point_specify`, `district_clinitian_id`, `user_id`) VALUES
(218, '2018-05-08 07:57:32', '2018-05-08 08:09:01', '376', 'KASUBI HEALTH CENTER 3', 'NANTALE', 'JOSEPHINE', 'Female', '59', NULL, NULL, NULL, 'Widowed', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KAWOLO HOSPITAL', '+256780240745', 'DAUGHTER', 'NAMUGGA ROSE', '5', '+256780991121', 'NAKITO JUSTINE', NULL, '04-03-2018', '04', '2018', 'KAWOLO HOSP', '05-07-2018', '05', '2018', '5/2018', '05-07-2018', '05', '2018', '3', NULL, NULL, NULL, NULL, '05-07-2018', '05', '2018', 'KAWOLO HOSP', '05-07-2018', '05', '2018', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(219, '2018-05-16 08:14:52', '2018-05-16 08:31:29', '377', 'KASUBI HEALTH CENTER 3', 'WADADA', 'TONNY', 'Male', '60', NULL, NULL, NULL, 'Single', 'KISU LUWAYO VILLAGE LUWAYO PARISH KAWOLO SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'KAWOLO HOSPITAL', '+256782968899', 'PERSONEL', 'NAMUSISI HARRIET', '20', '+256751422009', NULL, NULL, '06-24-2008', '06', '2008', 'KAWOLO HOSPITAL', '06-24-2008', '06', '2008', '7/2008', '07-24-2008', '07', '2008', '1', NULL, NULL, NULL, NULL, '05-10-2018', '05', '2018', 'KAWOLO HOSPITAL', '07-24-2018', '07', '2018', 'AZT/3TC EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 20, 3, 11, NULL, NULL, 1),
(220, '2018-05-16 08:36:23', '2018-05-16 08:49:13', '357', 'KASUBI HEALTH CENTER 3', 'SSALI', 'MUKISA', 'Male', '2', '01-01-2016', '01', '2016', 'Child', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'PCR', 'MBARARA', NULL, NULL, 'NAKASI PROSSY', '7', NULL, NULL, NULL, '11-10-2016', '11', '2016', 'MBARARA', '11-10-2016', '11', '2016', '11/2016', '11-10-2018', '11', '2018', '2', NULL, NULL, NULL, NULL, '02-28-2018', '02', '2018', 'MBARARA', '11-10-2018', '11', '2018', 'ABC/3TC/NVP', '12', 'PLAYING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 5, NULL, NULL, 1),
(221, '2018-05-16 09:06:16', '2018-05-16 09:20:13', '362', 'KASUBI HEALTH CENTER 3', 'NAKASI', 'PROSSY', 'Female', '26', NULL, NULL, NULL, 'Single', 'KIKOMA VILLAGE KITAZI PARISH BUIKWE SUB-COUNTY BUIKWE DISTRICT', 'Ab', 'MBARARA', '+256759908832', 'PERSONAL', 'NAKATO MARGRET', '7', NULL, 'NAKATO MARGRET', NULL, '04-14-2018', '04', '2018', 'MBARARA', '04-14-2018', '04', '2018', '4/2018', '04-14-2018', '04', '2018', '1', NULL, NULL, NULL, NULL, '02-15-2018', '02', '2018', 'MBARARA', '04-14-2018', '04', '2018', 'TDF/3TC/EFV', '57', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', '4/4/2018', 7, 3, 11, NULL, NULL, 1),
(222, '2018-05-16 12:04:02', '2018-06-30 14:11:25', '378', 'KASUBI HC 3', 'NAMUKWAYA', 'BEATRICE', 'Female', '37', NULL, NULL, NULL, 'Single', 'LUWOMBO', 'Ab', 'KAWOLO HOSP', NULL, NULL, 'AJAMBO MARY', '8', NULL, NULL, NULL, '02-11-2015', '02', '2015', 'KAWOLO HOSP', '02-11-2015', '02', '2015', '2/2015', '02-11-2015', '02', '2015', '1', NULL, NULL, NULL, NULL, '05-16-2018', '05', '2018', 'KAWOLO HOSPITAL', '02-11-2015', '02', '2015', 'TDF/3TC/EFV', '51', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 9, NULL, 11, NULL, NULL, 1),
(223, '2018-06-11 10:49:38', '2018-07-30 12:10:08', '297', 'KASUBI HC3', 'NEWAVINE', 'VERARI', 'Female', '27', NULL, NULL, NULL, 'Married', 'NAKATYABA', 'Ab', 'KASUBI HC3', '+256788819268', 'NANKYA ANGELA', 'TUMUYIMBISE ROGERS', '11', NULL, 'NALONGO DEBRAH', NULL, '06-29-2017', '06', '2017', 'KASUBI HC 3', '06-29-2017', '06', '2017', '6/2017', '06-29-2017', '06', '2017', '1', 'PREG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-29-2017', '06', '2017', 'TDF/3TC', '63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 11, 3, 1, NULL, NULL, 1),
(224, '2018-06-11 11:24:49', '2018-06-18 12:48:03', '256', 'KASUBI HC3', 'NSUBUGA', 'SAMUEL', 'Male', '39', '03-12-1977', '03', '1977', 'Single', NULL, 'Ab', 'KASUBI HC3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-07-2016', '10', '2016', 'KASUBI HC3', '10-07-2016', '10', '2016', '6/2016', NULL, NULL, NULL, '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '50', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 3, 3, NULL, NULL, NULL, 1),
(225, '2018-06-13 10:20:16', '2018-06-13 10:28:46', '383', 'KASUBI HC3', 'NAMUSISI', 'BETTY', 'Female', '24', NULL, NULL, NULL, 'Divorced', 'KASUBI TOWN KITAZI PARISH', 'Ab', 'KASUBI HC3', NULL, NULL, 'NAMBOZE GRACE', '3', NULL, NULL, NULL, '5-28-2018', '5', '2018', 'KASUBI HC3', '06-06-2018', '06', '2018', '6/2018', '06-06-2018', '06', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-06-2018', '06', '2018', 'TDF/3TC/EFV', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 3, 3, 11, NULL, NULL, 1),
(233, '2018-06-18 10:41:03', '2018-06-18 16:26:33', '387', 'KASUBI HC3', 'KAWUKI', 'DEO', 'Male', '36', NULL, NULL, NULL, 'Widowed', 'KISAALA VILLAGE MALONGWE PARISH', 'Ab', 'OUTREACH', '+256758269492', 'PERSONEL', 'NASANGA JUSTINE', '32', '+256789312429', NULL, NULL, '06-17-2018', '06', '2018', 'OUTREACH', '06-18-2018', '06', '2018', '6/2018', '06-18-2017', '06', '2017', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-18-2018', '06', '2018', 'TDF/3TC/EFV', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 32, 3, 16, NULL, NULL, 1),
(238, '2018-06-26 17:08:20', '2018-07-18 18:49:05', '386', 'KASUBI HC 3', 'NABUKEERA', 'JOYCE', 'Female', '24', NULL, NULL, NULL, NULL, 'BUKASA SSUUGU', 'Ab', 'KASUBI HC 3', '+2567775942', 'PERSONEL', 'NONE', NULL, NULL, 'NONE', NULL, '06-12-2018', '06', '2018', 'KASUBI HC 3', '06-12-2018', '06', '2018', '6/2018', '06-12-2018', '06', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-12-2018', '06', '2018', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 12, 3, 5, NULL, NULL, 1),
(239, '2018-06-26 17:40:33', '2018-06-26 18:06:29', '384', 'KASUBI HC 3', 'BABIRYE', 'MONICA', 'Female', '37', '05-06-1981', '05', '1981', 'Married', 'MAKONGE VILLAGE', 'Ab', 'OUTREACH', '+256750428275', 'PERSONEL', 'NAMBOZO FLORENCE', '17', '=256780281168', 'NAMBOZO FLORENCE', NULL, '06-08-2018', '06', '2018', 'MAKONGE OUTREACH', '06-09-2018', '06', '2018', '6/2018', '06-09-2018', '06', '2018', '1', 'TEEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-09-2018', '06', '2018', 'TDF/3TC/EFV', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 17, 3, 5, NULL, NULL, 1),
(240, '2018-06-27 07:34:08', '2018-06-27 07:45:32', '381', 'KASUBI HC 3', 'NAKAKANDE', 'HARRIET', 'Female', NULL, NULL, NULL, NULL, 'Divorced', 'KASUBI VILLAGE', 'Ab', NULL, '+256752187790', NULL, 'NANKYA JALIA', '4', '+256758344768', 'NANKYA JALIA', NULL, '06-02-2018', '06', '2018', NULL, '06-02-2018', '06', '2018', '6/2018', NULL, NULL, NULL, NULL, 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-02-2018', '06', '2018', 'TDF/3TC/EFV', '77', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, NULL, NULL, NULL, 1),
(241, '2018-06-27 09:26:46', '2018-06-27 09:39:52', '356', 'KASUBI HC 3', 'SSERUBBO', 'DAN', 'Male', '25', '02-07-2018', '02', '2018', 'Single', 'KIGALI LUWAYO', 'PCR', 'KASUBI HC 3', '+256752890405', 'PERSONEL', NULL, '23', NULL, NULL, NULL, '02-07-2018', '02', '2018', 'KASUBI HC 3', '02-07-2018', '02', '2018', '2/2018', '02-07-2018', '02', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-07-2018', '02', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 23, 3, 11, NULL, NULL, 1),
(242, '2018-06-27 10:00:53', '2018-06-27 15:04:48', '380', 'KASUBI HC 3', 'AWOLI', 'AGNES', 'Female', '27', NULL, NULL, NULL, 'Separated', 'BUZIKA,NYENGA', 'Ab', 'OUTREACH MALONGWE', '+256758250713', 'PERSONEL', NULL, NULL, NULL, NULL, NULL, '05-31-2018', '05', '2018', 'OUTREACH', '05-31-2018', '05', '2018', '5/2018', NULL, NULL, NULL, '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-31-2018', '05', '2018', 'TDF/3TC/EFV', '50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 29, 3, 16, NULL, NULL, 1),
(243, '2018-06-27 14:15:30', '2018-06-27 15:47:55', '388', 'KASUBI HC 3', 'NAKIBERU', 'PROSSY', 'Female', '20', '12-31-2008', '12', '2008', 'Never Married', 'KIKOMA-KITAZI', 'Ab', 'KASUBI HC 3', '+256759745190', 'MOTHER', 'KASAMBA ISAH', '23', '+256752890405', 'NAMULI ROBINAH', NULL, '06-27-2018', '06', '2018', 'KASUBI HC 3', '02-07-2018', '02', '2018', '2/2018', NULL, NULL, NULL, '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-07-2018', '02', '2018', 'TDF/3TC/EFV', '44', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(246, '2018-06-28 14:53:03', '2018-06-28 15:19:06', '58', 'KASUBI HC 3', 'NAMASOBO', 'JENIPHER', 'Female', '60', NULL, NULL, NULL, NULL, NULL, 'Ab', 'KASUBI H C3', NULL, NULL, 'KIRONDE RICHARD', '7', NULL, 'KIRONDE RICHARD', NULL, '08-15-2013', '08', '2013', 'KASUBI HC 3', '09-06-2013', '09', '2013', '9/2014', '09-12-2014', '09', '2014', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '09-12-2014', '09', '2014', 'TDF/3TC/EFV', '47', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, 11, NULL, NULL, 1),
(247, '2018-06-28 15:36:42', '2018-06-28 16:09:53', '180', 'KASUBI HC 3', 'KAYONDO', 'AMOS', 'Male', '47', NULL, NULL, NULL, NULL, 'KYANJA-KITAZI', 'Ab', 'KASUBI HC 3', NULL, NULL, 'SSEKIBUULE PATRICK', '5', NULL, NULL, NULL, '12-03-2014', '12', '2014', 'KASUBI HC 3', '12-03-2014', '12', '2014', NULL, '04-01-2015', '04', '2015', '1', 'CLINICAL STAGE 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-27-2015', '05', '2015', 'TDF/3TC/NVP', '58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 5, 3, 11, NULL, NULL, 1),
(248, '2018-06-30 13:15:04', '2018-07-04 08:25:56', '390', 'KASUBI HC 3', 'MUWONGE', 'VICENT', 'Male', '38', NULL, NULL, NULL, 'Widowed', 'KIKOMA-KITAZI', 'Ab', 'KASUBI HC 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-27-2018', '06', '2018', 'KASUBI HC 3', '06-27-2018', '06', '2018', '7/2018', '07-02-2018', '07', '2018', '2', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-02-2018', '07', '2018', 'TDF/3TC/EFV', '58/7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(249, '2018-07-04 09:59:59', '2018-07-04 10:13:54', '392', 'KASUBI HC 3', 'NABAKUUMA', 'SANYU', 'Female', '52', NULL, NULL, NULL, 'Divorced', 'MATALE SUUGU', 'Ab', 'ST.FRANCIS NJERU', '+256788640903', 'PERSONEL', 'NAZZIWA MARY', '12', '+256759515507', NULL, NULL, '05-20-2012', '05', '2012', 'ST.FRANCIS NJERU', '05-20-2012', '05', '2012', '3/2013', '03-12-2013', '03', '2013', NULL, NULL, NULL, NULL, NULL, '07-04-2018', '07', '2018', 'ST.FRACIS NJERU', '03-12-2013', '03', '2013', 'TDF/3TC/NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(250, '2018-07-18 06:31:23', '2018-07-18 06:38:48', '248', 'KASUBI HC 3', 'NAKAZIBWE', 'FLORENCE', 'Female', '49', '06-15-1969', '06', '1969', NULL, 'KOBA KITAZI', 'Ab', 'KASUBI HC 3', NULL, NULL, 'NDAWULA RONALD', '6', NULL, NULL, NULL, '06-22-2016', '06', '2016', 'KASUBI HC 3', '08-31-2016', '08', '2016', '8/2017', '08-02-2017', '08', '2017', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-02-2017', '08', '2017', 'TDF/3TC/EFV', '42', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 6, 3, 11, NULL, NULL, 1),
(251, '2018-07-18 06:53:59', '2018-07-18 07:03:31', '393', 'KASUBI HC 3', 'NAKABUUBI', 'JAMIRAH', NULL, NULL, NULL, NULL, NULL, 'Widowed', 'KIKOMA KITAZI', 'Ab', 'KASUBI HC 3', '+256754721296', 'PERSONEL', 'NAKAWOOYA HASIFAH', '7', NULL, NULL, NULL, '07-02-2018', '07', '2018', 'KASUBI HC 3', '7-4-2018', '7', '2018', '7/2018', '07-04-2018', '07', '2018', NULL, 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '34', 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 3, 11, NULL, NULL, 1),
(252, '2018-07-18 07:07:14', '2018-07-18 07:13:04', '391', 'KASUBI HC 3', 'NABANKEMA', 'DOROTHY', 'Female', '30', NULL, NULL, NULL, 'Married', 'KOBA KITAZI', 'Ab', 'KASUBI HC 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KASUBI HC 3', '06-27-2018', '06', '2018', '6/2018', '06-27-2018', '06', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-27-2018', '06', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, NULL, 3, 1, NULL, NULL, 1),
(253, '2018-07-18 07:54:38', '2018-07-18 08:06:25', '394', 'KASUBI HC 3', 'SENYONJO MUSOKE', 'CHRISTOPHER', 'Male', '58', NULL, NULL, NULL, 'Single', 'KAWUNA DUNGI', 'Ab', 'KASUBI HC 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10-13-2017', '10', '2017', 'KASUBI HC 3', '07-16-2018', '07', '2018', '7/2018', '07-16-2018', '07', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 33, 3, 11, NULL, NULL, 1),
(256, '2018-07-23 08:16:25', '2018-07-23 08:29:15', '175', NULL, 'NASIMU', 'ZAMZAM', 'Female', '11', '10-15-2003', '10', '2003', 'Child', 'NAKATYABA', 'Ab', 'KASUBI HC 3', '+256773907878', 'NAKAYANJA JOSEPHINE(MOTHER)', 'NAKAYANJA JOSEPHINE', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'AZT/3TC/EFV', '26.5', 'PLAYING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 11, 3, 11, NULL, NULL, 1),
(258, '2018-07-30 12:19:07', '2018-07-30 12:32:27', '37', 'KASUBI HC 3', 'NAIGULU', 'FLORENCE', 'Female', '35', NULL, NULL, NULL, 'Single', 'MATALE', 'Ab', 'KASUBI HC 3', NULL, NULL, 'KAFUKO NONSTAT', '12', NULL, 'KAFUKO', NULL, '03-19-2013', '03', '2013', 'KASUBI HC 3', '03-19-2013', '03', '2013', NULL, '03-19-2013', '03', '2013', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '03-19-2013', '03', '2013', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(259, '2018-07-30 14:04:11', '2018-07-30 14:41:12', '396', 'KASUBI HC 3', 'BULYABA', 'GORRET', 'Female', '33', '01-01-1985', '01', '1985', 'Divorced', 'KASUBI KITAZI', 'Ab', 'KASUBI HC3', '+25675203334', 'AUNT', 'ZAALA SCOVIA', '4', '+256752103334', NULL, NULL, '07-25-2018', '07', '2018', 'KASUBI HC 3', '07-25-2018', '07', '2018', '7/2018', '07-25-2018', '07', '2018', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '07-25-2018', '07', '2018', 'TDF/3TC/EFV', '41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, 11, NULL, NULL, 1),
(260, '2018-07-30 14:46:07', '2018-07-30 15:16:51', '365', 'KASUBI HC 3', 'NABULYA', 'MADINA', 'Female', '38', '04-24-1984', '04', '1984', 'Married', 'KIKOMA-KITAZI', 'Ab', 'KAWOLO HSP', '+256774035265', '+256774035265-SEBADUUKA SUBI', NULL, NULL, '+256774035265', NULL, NULL, NULL, NULL, NULL, 'KAWOLO HSP', '10-24-2012', '10', '2012', '10/2012', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '02-15-2018', '02', '2018', 'KAWOLO HSP', '10-24-2012', '10', '2012', 'TDF/3TC/EFV', '53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, 3, NULL, NULL, NULL, 1),
(262, '2018-07-31 09:24:54', '2018-07-31 09:45:58', '372', 'KASUBI HC 3', 'AMONGO', 'JACKLINE', 'Female', '25', NULL, NULL, NULL, 'Married', 'MAKONGE MALONGWE PARISH', 'Ab', 'KASUBI HC 3', NULL, NULL, 'NAMONGO MARTIN', '17', NULL, NULL, NULL, '04-11-2018', '04', '2018', 'KASUBI HC 3', '04-11-2018', '04', '2018', '4/2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '04-11-2018', '04', '2018', 'TDF/3TC/EFV', '54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 17, 3, 1, NULL, NULL, 1),
(263, '2018-08-13 09:26:21', '2018-08-13 09:37:22', '360', 'KASUBI HC 3', 'KAGIRI', 'FRED', 'Male', '43', NULL, NULL, NULL, 'Married', 'KASOKOSO-NSENYA', NULL, 'KASUBI HC 3', NULL, 'PERSONEL', 'NAMUKASA FAUSTA', '27', '+256754071479', 'NAMUKASS FAUSTA', NULL, NULL, NULL, NULL, 'KASUBI HC 3', '02-14-2018', '02', '2018', 'FEB 2018', '02-14-2018', '02', '2018', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 27, 3, 11, NULL, NULL, 1),
(264, '2018-08-15 10:26:47', '2018-08-15 10:40:43', '358', 'KASUBI HC 3', 'WASAKANA', 'PATRICK', 'Male', '42', NULL, NULL, NULL, 'Living Together', 'NAKATYABA', NULL, 'KIBUKU HC 3', '+256786042675', 'PERSONEL', NULL, NULL, NULL, NULL, NULL, '04-20-2018', '04', '2018', 'KIBUKU HC 3', '04-20-2018', '04', '2018', '4/2018', '04-20-2018', '04', '2018', '1', NULL, NULL, NULL, NULL, '02-14-2018', '02', '2018', NULL, '04-20-2018', '04', '2018', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 11, NULL, NULL, NULL, NULL, 1),
(265, '2018-08-15 10:48:50', '2018-08-15 10:57:01', '382', 'KASUBI HC 3', 'NAMAGANDA', 'AISHA', 'Female', '43', NULL, NULL, NULL, 'Married', 'KASUBI VILLAGE', 'Ab', NULL, '+256758724939', 'PERSONEL', 'WASWA HASAN', '4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12-07-2013', '12', '2013', NULL, NULL, NULL, NULL, NULL, '06-06-2018', '06', '2018', 'BUIKWE HOSP', '12-07-2013', '12', '2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 4, 3, NULL, NULL, NULL, 1),
(266, '2018-08-20 11:18:30', '2018-08-20 11:27:12', '363', 'KASUBI HC 3', 'KONDE', 'JULIUS', 'Male', '44', '10-08-1975', '10', '1975', 'Married', 'MATALE -SUUGU', 'Ab', 'KASUBI HC 3', '+256777907521', 'PERSONEL', 'MUKAMANA SYLIVIA', '12', NULL, NULL, NULL, '02-14-2018', '02', '2018', 'KASUBI HC 3', '02-14-2018', '02', '2018', 'FEB 2018', '02-14-2018', '02', '2018', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-14-2018', '02', '2018', 'TDF/3TC/EFV', '63', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 12, 3, 11, NULL, NULL, 1),
(267, '2018-08-20 11:34:47', '2018-08-20 11:43:53', '397', 'KASUBI HC 3', 'NAKATO', 'REHEMA', 'Female', NULL, NULL, NULL, NULL, 'Married', 'KYAMBOGO', 'Ab', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TDF/3TC/EFV', '56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, 1),
(268, '2018-08-20 11:57:49', '2018-08-21 07:20:49', '379', 'KASUBI HC 3', 'NALUGO', 'KEVIN', 'Female', '37', NULL, NULL, NULL, 'Widowed', 'LUWAYO-KISU', 'Ab', 'KASUBI HC 3', '+256788133137', 'PERSONEL', NULL, NULL, NULL, NULL, NULL, '05-23-2018', '05', '2018', 'KASUBI HC 3', '05-24-2018', '05', '2018', '5/2018', '05-23-2018', '05', '2018', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '05-24-2018', '05', '2018', 'TDF/3TC/EFV', '60', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 19, 3, 11, NULL, NULL, 1),
(271, '2018-08-21 07:51:06', '2018-08-21 08:49:01', '345', 'KASUBI HC 3', 'TUJUNGE', 'YOKANA', 'Male', '13', NULL, NULL, NULL, 'Child', 'BUSANSULA -KITAZI', 'Ab', NULL, NULL, 'MOTHER', 'NALWEYISO AIDA', '7', '+256750398154', NULL, NULL, '02-26-2014', '02', '2014', NULL, '02-26-2014', '02', '2014', '2/2014', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-29-2017', '11', '2017', NULL, NULL, NULL, NULL, 'AZT/3TC/NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 3, NULL, NULL, NULL, 1),
(277, '2018-08-23 10:46:11', '2018-08-23 10:54:51', '385', 'KASUBI HC 3', 'NABWIRE', 'ANNET', 'Female', '24', NULL, NULL, NULL, 'Married', 'LUWOMBO', 'Ab', 'KASUBI HC 3', NULL, NULL, 'NAKKU DESILANTA', '8', NULL, NULL, NULL, '06-11-2018', '06', '2018', 'KASUBI HC 3', '06-11-2018', '06', '2018', '6/2018', '06-11-2018', '06', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '06-11-2018', '06', '2018', 'TDF/3TC/EFV', '53', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', 'NO', NULL, 8, 3, 1, NULL, NULL, 1),
(278, '2018-08-23 11:03:11', '2018-08-24 12:21:37', '361', 'KASUBI HC 3', 'KIWANUKA', 'JOHN', 'Male', '56', '09-10-1962', '09', '1962', 'Living Together', 'KIKOMA -KITANZI', 'Ab', 'KASUBI HC 3', '+256777130476', 'PERSONEL', 'NAKIBILANGO MAGADELENA', '7', NULL, NULL, NULL, '02-14-2018', '02', '2018', 'KASUBI HC 3', '02-14-2018', '02', '2018', '2/2018', NULL, NULL, NULL, '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '02-14-2018', '02', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 7, NULL, 11, NULL, NULL, 1),
(279, '2018-09-04 07:35:44', '2018-09-04 07:48:38', '404', 'KASUI', 'NAGADYA', 'SCOVIA', 'Female', NULL, NULL, NULL, NULL, 'Single', 'SSUGU KIRANGIRA', 'Ab', 'NKOKONJERU HOSP', '+256757264101', 'WALONZE GODFREY', 'NDIBOGEZA CLEMENT', NULL, NULL, NULL, NULL, '06-20-2013', '06', '2013', NULL, NULL, NULL, NULL, '6/2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-01-2018', '08', '2018', 'NKOKONJERU HOSP', '06-20-2013', '06', '2013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 13, 3, 11, NULL, NULL, 1),
(280, '2018-09-04 08:52:07', '2018-09-04 09:01:56', '402', 'KASUBI HC 3', 'KANAMWANJI', 'MOSES', 'Male', '35', '09-04-2018', '09', '2018', 'Married', 'KISAALA MALONGWE', 'Ab', 'AJIIJA', '+256758239694', 'PERSONEL', 'NAKANAABI EVA', NULL, '+256777203797', NULL, NULL, '08-30-2018', '08', '2018', 'KASUBI HC 3', '08-30-2018', '08', '2018', '8/2018', '08-30-2018', '08', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-30-2018', '08', '2018', 'TDF/3TC/EFV', '66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 32, 3, 16, NULL, NULL, 1),
(281, '2018-09-04 09:06:09', '2018-09-04 09:16:15', '403', 'KASUBI HC 3', 'NAMUKOSE', 'ESEZA', 'Female', '24', NULL, NULL, NULL, 'Married', 'SSUGU KIRANGIRA', 'Ab', 'KASUBI HC 3', '+256752298355', 'PERSONEL', 'SSEBANDEKE STEVEN', '13', '+256774941948', NULL, NULL, '08-29-2018', '08', '2018', 'KASUBI HC 3', NULL, NULL, NULL, '8/2018', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '08-29-2018', '08', '2018', 'TDF/3TC/EFV', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'YES', NULL, 13, 3, 1, NULL, NULL, 1),
(282, '2018-12-05 19:33:34', '2018-12-05 19:41:27', '408', 'KASUBI H C 3', 'OMANSI', 'ANTHONY', 'Male', '41', NULL, NULL, NULL, 'Single', 'KOBA', 'Ab', 'KASUBI H C 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11/13/2018', '11-13-2018', '11', '2018', '11/2018', '11-13-2018', '11', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-13-2018', '11', '2018', 'TDF/3TC/EFV', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 6, 3, 11, NULL, NULL, 1),
(283, '2018-12-05 19:47:05', '2018-12-05 19:55:49', '410', 'KASUBI HC 3', 'NAKAZIBWE', 'SYLIVIA', 'Female', '26', NULL, NULL, NULL, 'Divorced', 'KIGENDA', 'Ab', 'KASUBI H C 3', NULL, NULL, 'SEWANYANA BADRU', '21', NULL, NULL, NULL, '11-28-2018', '11', '2018', 'KASUBI HC 3', '11-28-2018', '11', '2018', '11/2018', '11-28-2018', '11', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-28-2018', '11', '2018', 'TDF/3TC/EFV', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 28, 3, 11, NULL, NULL, 1),
(284, '2018-12-05 19:59:35', '2018-12-05 20:17:00', '411', 'KASUBI HC 3', 'NAMYALO', 'TEOPISTA', 'Female', '34', NULL, NULL, NULL, 'Married', 'KIGUGO-SSI', 'Ab', 'KASUBI HC 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12-01-2018', '12', '2018', 'KASUBI HC 3', '12-01-2018', '12', '2018', '12/2018', '12-01-2018', '12', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12-01-2018', '12', '2018', 'TDF/3TC/EFV', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 16, 3, 11, NULL, NULL, 1),
(285, '2018-12-05 20:19:45', '2018-12-05 20:25:50', '412', 'KASUBI HC 3', 'ZALWANGO', 'JACKLINE', 'Female', '11', NULL, NULL, NULL, 'Child', 'NAKATYABA', 'Ab', 'KASUBI HC 3', '256755873088', 'LUWAGA SAMUEL', 'LUWAGA SAMUEL', '11', NULL, 'LUWAGA SAMUEL', NULL, '12-05-2018', '12', '2018', 'KASUBI HC 3', '12-05-2018', '12', '2018', '12/2018', '12-05-2018', '12', '2018', '2', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12-05-2018', '12', '2018', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 11, 3, 11, NULL, NULL, 1),
(287, '2018-12-05 20:57:06', '2018-12-05 21:16:35', '398', 'KASUBI HC 3', 'NAFULA', 'ANNET', 'Female', '36', NULL, NULL, NULL, 'Married', 'KIGALI', 'Ab', 'KASUBI HC 3', NULL, NULL, 'IREN', '20', NULL, NULL, NULL, '06-11-2018', '06', '2018', 'NGOGWE HC 3', '06-11-2018', '06', '2018', '6/2018', '06-12-2018', '06', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, '10-17-2018', '10', '2018', 'NGOGWE HC 3', '06-12-2018', '06', '2018', 'TDF/3TC/EFV', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 23, 3, 11, NULL, NULL, 1),
(288, '2018-12-05 21:19:52', '2018-12-05 21:27:31', '409', 'KASUBI HC 3', 'NAKABUGO', 'ANNET', 'Female', '17', NULL, NULL, NULL, 'Single', 'MAKONGE', NULL, 'MAKONGE OUTREACH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-19-2018', '11', '2018', 'KASUBI HC 3', '11-19-2018', '11', '2018', '11/2018', '11-19-2018', '11', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-19-2018', '11', '2018', 'TDF/3TC/EFV', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 17, 3, 16, NULL, NULL, 1),
(289, '2018-12-12 21:18:13', '2018-12-12 21:26:20', '407', 'KASUBI HC 3', 'NALUBOOWA', 'BARBRA', 'Female', '30', NULL, NULL, NULL, 'Single', 'LUWAYO', 'Ab', 'KASUBI HC 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-10-2018', '11', '2018', 'KASUBI H C 3', '11-10-2018', '11', '2018', '11/2018', '11-10-2018', '11', '2018', '1', 'TEST AND TREAT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11-10-2018', '11', '2018', 'TDF/3TC/EF V', NULL, 'WORK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'NO', NULL, 20, 3, 11, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hiv_care_art_cart_family_members`
--

CREATE TABLE `hiv_care_art_cart_family_members` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `surName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstName` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HIV_status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hive_Care` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_members_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hiv_care_art_cart_family_members`
--

INSERT INTO `hiv_care_art_cart_family_members` (`id`, `created_at`, `updated_at`, `surName`, `firstName`, `age`, `HIV_status`, `Hive_Care`, `family_members_number`, `hiv_care_art_card_id`) VALUES
(7, '2018-04-25 08:48:33', '2018-04-25 08:48:33', 'NABAKOOZA', 'JOSEPHINE', '28', 'U', '2', NULL, 19),
(8, '2018-04-25 08:49:27', '2018-04-25 08:49:27', 'NAKILYOWA', 'JANE', '8', 'U', NULL, NULL, 19),
(9, '2018-04-25 08:50:06', '2018-04-25 08:50:06', 'KITE', 'CHARLES', '5', NULL, NULL, NULL, 19),
(10, '2018-04-25 08:51:01', '2018-04-25 08:51:01', 'KIBIRANGO', 'JOSEPH', '1', 'U', NULL, NULL, 19),
(11, '2018-04-25 09:22:48', '2018-04-25 09:22:48', 'NTEGE', 'ZAKAYO', '39', 'U', '2', NULL, 20),
(12, '2018-04-25 09:24:16', '2018-04-25 09:24:16', 'KAGUTEMA', 'NEWTON', '1', 'U', NULL, NULL, 20),
(13, '2018-04-25 11:55:05', '2018-04-25 11:55:05', 'KEZAARA', 'ALI', '40', 'U', '2', NULL, 24),
(14, '2018-04-25 11:56:12', '2018-04-25 11:56:12', 'MUGOYA', 'ERIA', '4', 'U', NULL, NULL, 24),
(15, '2018-04-25 14:43:36', '2018-04-25 14:43:36', 'MUSOKE', 'YASIN', NULL, 'U', '2', NULL, 26),
(16, '2018-04-25 15:23:00', '2018-04-25 15:23:00', 'NAKADU', 'ROBINAH', '68', 'N', '2', NULL, 27),
(17, '2018-04-25 15:24:16', '2018-04-25 15:24:16', 'KABEGE', 'SAM', '28', 'U', NULL, NULL, 27),
(18, '2018-04-25 15:24:18', '2018-04-25 15:24:18', 'KABEGE', 'SAM', '28', 'U', NULL, NULL, 27),
(19, '2018-04-25 15:25:14', '2018-04-25 15:25:14', 'LUTU', 'ROBERT', '16', 'U', NULL, NULL, 27),
(20, '2018-04-25 15:25:14', '2018-04-25 15:25:14', 'KABEGE', 'SAM', '28', 'U', NULL, NULL, 27),
(21, '2018-04-25 15:25:14', '2018-04-25 15:25:14', 'KABEGE', 'SAM', '28', 'U', NULL, NULL, 27),
(22, '2018-04-25 15:25:14', '2018-04-25 15:25:14', 'LUTU', 'ROBERT', '16', 'U', NULL, NULL, 27),
(23, '2018-04-25 15:25:16', '2018-04-25 15:25:16', 'LUTU', 'ROBERT', '16', 'U', NULL, NULL, 27),
(24, '2018-04-25 15:25:16', '2018-04-25 15:25:16', 'LUTU', 'ROBERT', '16', 'U', NULL, NULL, 27),
(25, '2018-04-25 15:25:17', '2018-04-25 15:25:17', 'LUTU', 'ROBERT', '16', 'U', NULL, NULL, 27),
(26, '2018-04-25 15:53:13', '2018-04-25 15:53:13', 'KABAKULE', 'PASIKALI', '57', 'P', '1', '15', 28),
(27, '2018-04-25 16:43:37', '2018-04-25 16:43:37', 'NASUBUGA', 'J', '20', 'U', '2', NULL, 29),
(28, '2018-04-25 16:43:48', '2018-04-25 16:43:48', 'NASUBUGA', 'J', '20', 'U', '2', NULL, 29),
(29, '2018-04-25 16:43:57', '2018-04-25 16:43:57', 'NASUBUGA', 'J', '20', 'U', '2', NULL, 29),
(30, '2018-04-25 16:43:57', '2018-04-25 16:43:57', 'NASUBUGA', 'J', '20', 'U', '2', NULL, 29),
(31, '2018-04-25 16:46:52', '2018-04-25 16:46:52', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(32, '2018-04-25 16:46:52', '2018-04-25 16:46:52', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(33, '2018-04-25 16:46:53', '2018-04-25 16:46:53', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(34, '2018-04-25 16:46:53', '2018-04-25 16:46:53', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(35, '2018-04-25 16:46:53', '2018-04-25 16:46:53', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(36, '2018-04-25 16:46:53', '2018-04-25 16:46:53', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(37, '2018-04-25 16:46:53', '2018-04-25 16:46:53', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(38, '2018-04-25 16:46:53', '2018-04-25 16:46:53', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(39, '2018-04-25 16:46:53', '2018-04-25 16:46:53', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(40, '2018-04-25 16:46:53', '2018-04-25 16:46:53', 'BUYUNGO', 'R', '15', 'U', NULL, NULL, 29),
(41, '2018-04-25 16:48:08', '2018-04-25 16:48:08', 'NAMPIJJA', 'PROSSY', '7', 'U', NULL, NULL, 29),
(42, '2018-04-25 16:48:09', '2018-04-25 16:48:09', 'NAMPIJJA', 'PROSSY', '7', 'U', NULL, NULL, 29),
(43, '2018-04-26 06:47:15', '2018-04-26 06:47:15', 'SANYU', 'NASAZI', '16', 'N', '2', NULL, 30),
(44, '2018-04-26 06:49:49', '2018-04-26 06:49:49', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(45, '2018-04-26 06:49:49', '2018-04-26 06:49:49', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(46, '2018-04-26 06:49:49', '2018-04-26 06:49:49', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(47, '2018-04-26 06:49:49', '2018-04-26 06:49:49', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(48, '2018-04-26 06:49:49', '2018-04-26 06:49:49', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(49, '2018-04-26 06:49:50', '2018-04-26 06:49:50', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(50, '2018-04-26 06:49:50', '2018-04-26 06:49:50', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(51, '2018-04-26 06:49:50', '2018-04-26 06:49:50', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(52, '2018-04-26 06:49:50', '2018-04-26 06:49:50', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(53, '2018-04-26 06:51:33', '2018-04-26 06:51:33', 'NAMATA', 'CAROLINE', '12', 'N', NULL, NULL, 30),
(54, '2018-04-26 06:51:33', '2018-04-26 06:51:33', 'NAMATA', 'CAROLINE', '12', 'N', NULL, NULL, 30),
(55, '2018-04-26 06:51:33', '2018-04-26 06:51:33', 'NAMATA', 'CAROLINE', '12', 'N', NULL, NULL, 30),
(56, '2018-04-26 06:51:34', '2018-04-26 06:51:34', 'NAMATA', 'CAROLINE', '12', 'N', NULL, NULL, 30),
(57, '2018-04-26 06:51:34', '2018-04-26 06:51:34', 'NAMATA', 'CAROLINE', '12', 'N', NULL, NULL, 30),
(58, '2018-04-26 06:51:34', '2018-04-26 06:51:34', 'NAMATA', 'CAROLINE', '12', 'N', NULL, NULL, 30),
(59, '2018-04-26 06:51:35', '2018-04-26 06:51:35', 'NAMATA', 'CAROLINE', '12', 'N', NULL, NULL, 30),
(60, '2018-04-26 08:46:48', '2018-04-26 08:46:48', 'SANYU', 'NASAZI', '16', 'N', '2', NULL, 30),
(61, '2018-04-26 08:46:49', '2018-04-26 08:46:49', 'SANYU', 'NASAZI', '16', 'N', '2', NULL, 30),
(62, '2018-04-26 08:47:31', '2018-04-26 08:47:31', 'NAKAKE', 'ROSE', '14', 'N', NULL, NULL, 30),
(63, '2018-04-26 08:48:32', '2018-04-26 08:48:32', 'NAMATA', 'CAROLINE', '12', 'N', NULL, NULL, 30),
(64, '2018-04-27 09:27:33', '2018-04-27 09:27:33', 'NAMASOBO', 'JENIFER', '38', 'U', '2', NULL, 39),
(65, '2018-04-27 09:57:57', '2018-04-27 09:57:57', 'NANTALE', 'PRINCESS', '8', 'U', '2', NULL, 40),
(66, '2018-04-27 10:21:36', '2018-04-27 10:21:36', 'MIREMBE', 'FUTUMA', '22', 'N', '2', NULL, 41),
(67, '2018-04-27 10:43:37', '2018-04-27 10:43:37', 'SULA', 'EDRINE', '20', 'U', '2', NULL, 42),
(68, '2018-04-27 10:44:08', '2018-04-27 10:44:08', 'SHALLOWER', NULL, '3', 'N', NULL, NULL, 42),
(69, '2018-04-27 10:59:02', '2018-04-27 10:59:02', 'NAKYAZZE', 'VIOLA', '12', 'U', '2', NULL, 43),
(70, '2018-04-27 10:59:41', '2018-04-27 10:59:41', 'NABATANZI', NULL, '15', 'U', NULL, NULL, 43),
(71, '2018-04-27 11:00:23', '2018-04-27 11:00:23', 'MUKIBI', NULL, '20', 'U', NULL, NULL, 43),
(72, '2018-04-27 11:01:10', '2018-04-27 11:01:10', 'SEBUKALU', 'JOSEPH', '18', 'U', NULL, NULL, 43),
(73, '2018-04-27 11:15:03', '2018-04-27 11:15:03', 'JINGO', 'GERALD', '9', 'N', '2', NULL, 44),
(74, '2018-04-27 11:15:34', '2018-04-27 11:15:34', 'BAKABULINDI', NULL, '5', 'N', NULL, NULL, 44),
(75, '2018-04-27 11:16:09', '2018-04-27 11:16:09', 'KIRUMIRA', NULL, NULL, NULL, NULL, NULL, 44),
(76, '2018-04-27 11:16:09', '2018-04-27 11:16:09', 'KIRUMIRA', NULL, NULL, NULL, NULL, NULL, 44),
(77, '2018-04-27 11:17:14', '2018-04-27 11:17:14', 'MARTIN', NULL, NULL, 'U', NULL, NULL, 44),
(78, '2018-04-27 11:30:44', '2018-04-27 11:30:44', 'NABUGALASI', 'STEVEN', NULL, 'U', '2', NULL, 45),
(79, '2018-04-27 11:53:55', '2018-04-27 11:53:55', 'KYANZI', 'ANDREW', '3', 'N', '1', NULL, 46),
(80, '2018-04-27 11:54:35', '2018-04-27 11:54:35', 'BUGEMBE', 'JOSEPH', NULL, 'N', NULL, NULL, 46),
(81, '2018-04-27 12:11:35', '2018-04-27 12:11:35', 'NAMBI', 'RUTH', '37', 'P', '1', NULL, 47),
(82, '2018-04-27 12:12:38', '2018-04-27 12:12:38', 'NTABAZI', 'UMAR', '1', 'N', '2', NULL, 47),
(83, '2018-04-27 12:13:16', '2018-04-27 12:13:16', 'KYESWA', 'JUMA', '6', 'U', NULL, NULL, 47),
(84, '2018-04-27 12:13:49', '2018-04-27 12:13:49', 'BWABYE', 'BASHIR', '10', 'U', NULL, NULL, 47),
(85, '2018-04-27 12:27:35', '2018-04-27 12:27:35', 'KYOBE', 'RICHARD', '34', 'P', NULL, NULL, 48),
(86, '2018-04-27 12:28:37', '2018-04-27 12:28:37', 'NABAKOOZA', 'JOSEPHINE', '29', 'P', '1', NULL, 48),
(87, '2018-04-27 12:29:35', '2018-04-27 12:29:35', 'KIBIRANGO', 'JOSEPH', '2', 'P', '2', NULL, 48),
(88, '2018-04-27 12:29:35', '2018-04-27 12:29:35', 'KIBIRANGO', 'JOSEPH', '2', 'P', '2', NULL, 48),
(89, '2018-04-27 12:42:51', '2018-04-27 12:42:51', 'MANANA', 'JOHN', '45', 'U', '2', NULL, 49),
(90, '2018-04-27 12:56:23', '2018-04-27 12:56:23', 'NABUKEERA', 'JOVIA', '5', 'U', '2', NULL, 50),
(91, '2018-04-27 12:56:56', '2018-04-27 12:56:56', 'NAKITYABA', 'RESTY', '3', NULL, NULL, NULL, 50),
(92, '2018-04-27 12:57:47', '2018-04-27 12:57:47', 'NAIGA', 'GRACE', '1', 'P', '1', NULL, 50),
(93, '2018-04-27 12:57:48', '2018-04-27 12:57:48', 'NAIGA', 'GRACE', '1', 'P', '1', NULL, 50),
(94, '2018-04-28 08:34:30', '2018-04-28 08:34:30', 'TENYWA', NULL, '50', 'U', NULL, NULL, 55),
(95, '2018-04-28 08:49:51', '2018-04-28 08:49:51', 'BENGO', 'ALLAN', '3', 'U', NULL, NULL, 54),
(96, '2018-04-28 09:28:21', '2018-04-28 09:28:21', 'KANANURA', 'FRANCIS', '50', 'N', '1', NULL, 58),
(97, '2018-04-28 09:28:28', '2018-04-28 09:28:28', 'BUTOSI', 'DIIKA', NULL, NULL, NULL, NULL, 61),
(98, '2018-04-28 09:28:33', '2018-04-28 09:28:33', 'BUTOSI', 'DIIKA', NULL, NULL, NULL, NULL, 61),
(99, '2018-04-28 09:29:12', '2018-04-28 09:29:12', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(100, '2018-04-28 09:29:13', '2018-04-28 09:29:13', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(101, '2018-04-28 09:29:20', '2018-04-28 09:29:20', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(102, '2018-04-28 09:29:21', '2018-04-28 09:29:21', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(103, '2018-04-28 09:29:26', '2018-04-28 09:29:26', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(104, '2018-04-28 09:29:27', '2018-04-28 09:29:27', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(105, '2018-04-28 09:29:27', '2018-04-28 09:29:27', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(106, '2018-04-28 09:29:27', '2018-04-28 09:29:27', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(107, '2018-04-28 09:29:28', '2018-04-28 09:29:28', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(108, '2018-04-28 09:30:07', '2018-04-28 09:30:07', 'NABISUBI', 'JUSTINE', '20', 'U', '2', NULL, 58),
(109, '2018-04-28 09:30:19', '2018-04-28 09:30:19', 'NABISUBI', 'JUSTINE', '20', 'U', '2', NULL, 58),
(110, '2018-04-28 09:30:20', '2018-04-28 09:30:20', 'NABISUBI', 'JUSTINE', '20', 'U', '2', NULL, 58),
(111, '2018-04-28 09:30:24', '2018-04-28 09:30:24', 'NABISUBI', 'JUSTINE', '20', 'U', '2', NULL, 58),
(112, '2018-04-28 09:30:25', '2018-04-28 09:30:25', 'NABISUBI', 'JUSTINE', '20', 'U', '2', NULL, 58),
(113, '2018-04-28 09:30:26', '2018-04-28 09:30:26', 'NABISUBI', 'JUSTINE', '20', 'U', '2', NULL, 58),
(114, '2018-04-28 09:30:55', '2018-04-28 09:30:55', 'KAZIBWE', 'LAWRENCE', NULL, NULL, NULL, NULL, 61),
(115, '2018-04-28 09:31:01', '2018-04-28 09:31:01', 'NABISUBI', 'JUSTINE', '20', 'U', '2', NULL, 58),
(116, '2018-04-28 09:40:59', '2018-04-28 09:40:59', 'BALINA', 'ABDUH', '38', NULL, NULL, NULL, 62),
(117, '2018-04-28 09:41:32', '2018-04-28 09:41:32', 'TUMUSIIME', 'BRIGTON', '2', NULL, NULL, NULL, 62),
(118, '2018-04-28 09:41:54', '2018-04-28 09:41:54', 'NAKATE', 'JAMILA', '7', NULL, NULL, NULL, 62),
(119, '2018-04-28 09:42:20', '2018-04-28 09:42:20', 'NAMAMBO', 'ZAINAH', '13', NULL, NULL, NULL, 62),
(120, '2018-04-28 09:42:21', '2018-04-28 09:42:21', 'NAMAMBO', 'ZAINAH', '13', NULL, NULL, NULL, 62),
(121, '2018-04-28 09:42:53', '2018-04-28 09:42:53', 'KIKOMEKO', 'ABDUH', '16', NULL, NULL, NULL, 62),
(122, '2018-04-28 10:24:50', '2018-04-28 10:24:50', 'NAMPINGA', 'coroline', '1', 'u', NULL, NULL, 54),
(123, '2018-04-28 10:24:55', '2018-04-28 10:24:55', 'NAMPINGA', 'coroline', '1', 'u', NULL, NULL, 54),
(124, '2018-04-28 10:25:34', '2018-04-28 10:25:34', 'KINTU', 'ISAAC', '32', NULL, NULL, NULL, 68),
(125, '2018-04-28 10:30:01', '2018-04-28 10:30:01', 'KIGOZI', 'CHRISTOPHER', '7', 'U', '2', NULL, 70),
(126, '2018-04-28 10:47:25', '2018-04-28 10:47:25', 'NANSUBUGA', 'JOVIA', '2.5', NULL, '2', NULL, 69),
(127, '2018-04-28 10:47:25', '2018-04-28 10:47:25', 'NANSUBUGA', 'JOVIA', '2.5', NULL, '2', NULL, 69),
(128, '2018-04-28 10:47:26', '2018-04-28 10:47:26', 'NANSUBUGA', 'JOVIA', '2.5', NULL, '2', NULL, 69),
(129, '2018-04-28 10:47:26', '2018-04-28 10:47:26', 'NANSUBUGA', 'JOVIA', '2.5', NULL, '2', NULL, 69),
(130, '2018-04-28 10:47:27', '2018-04-28 10:47:27', 'NANSUBUGA', 'JOVIA', '2.5', NULL, '2', NULL, 69),
(131, '2018-04-28 10:47:27', '2018-04-28 10:47:27', 'NANSUBUGA', 'JOVIA', '2.5', NULL, '2', NULL, 69),
(132, '2018-04-28 10:49:27', '2018-04-28 10:49:27', 'KASIRYE', 'HENRY', '27', 'P', '1', NULL, 69),
(133, '2018-04-28 11:19:58', '2018-04-28 11:19:58', 'NANGENDO', 'RESTY', '18', NULL, NULL, NULL, 72),
(134, '2018-04-28 11:20:43', '2018-04-28 11:20:43', 'NAKABUGO', 'CATHERINE', '6', NULL, NULL, NULL, 72),
(135, '2018-04-28 11:28:15', '2018-04-28 11:28:15', 'SENTONGO', 'DORAH', '22', 'P', '1', 'NGOGWE', 71),
(136, '2018-04-28 11:44:23', '2018-04-28 11:44:23', 'SSENYONJO', 'MARTIN', NULL, NULL, NULL, NULL, 73),
(137, '2018-04-28 11:49:22', '2018-04-28 11:49:22', 'NAKITENDE', 'GLORIA', '10', NULL, '2', NULL, 74),
(138, '2018-04-28 11:54:25', '2018-04-28 11:54:25', 'KISAKYE', NULL, '1', NULL, NULL, NULL, 74),
(139, '2018-04-28 12:02:33', '2018-04-28 12:02:33', 'SALI', 'SENTONGO', '5', 'N', '2', NULL, 75),
(140, '2018-04-28 12:04:13', '2018-04-28 12:04:13', 'KALINDA', 'JOVAN', '4', 'N', NULL, NULL, 75),
(141, '2018-04-28 12:05:33', '2018-04-28 12:05:33', 'GENATASI', 'JUSTINE', '3', 'N', NULL, NULL, 75),
(142, '2018-04-28 12:25:23', '2018-04-28 12:25:23', 'SEBEKA', 'VIOLET', NULL, NULL, NULL, NULL, 77),
(143, '2018-04-28 12:25:24', '2018-04-28 12:25:24', 'SEBEKA', 'VIOLET', NULL, NULL, NULL, NULL, 77),
(144, '2018-04-28 12:28:02', '2018-04-28 12:28:02', 'CCICIRIA', NULL, '6', NULL, NULL, NULL, 77),
(145, '2018-04-28 12:28:27', '2018-04-28 12:28:27', 'WABWIRE', NULL, '15', NULL, NULL, NULL, 77),
(146, '2018-04-28 12:29:10', '2018-04-28 12:29:10', 'NAFULA', 'EMMA', '17', NULL, NULL, NULL, 77),
(147, '2018-04-28 12:29:30', '2018-04-28 12:29:30', 'NIGHT', NULL, '19', NULL, NULL, NULL, 77),
(148, '2018-04-28 12:35:34', '2018-04-28 12:35:34', 'NALUBEGA ROSE', NULL, '13', NULL, NULL, NULL, 78),
(149, '2018-04-28 12:35:58', '2018-04-28 12:35:58', 'SEKAMWA HENRY', NULL, '9', NULL, NULL, NULL, 78),
(150, '2018-04-28 12:36:53', '2018-04-28 12:36:53', 'NABAYILA DAPHINE', NULL, '11', NULL, NULL, NULL, 78),
(151, '2018-04-28 12:41:13', '2018-04-28 12:41:13', 'SENTAMU', 'COLLINE', '6', NULL, NULL, NULL, 79),
(152, '2018-04-28 12:41:48', '2018-04-28 12:41:48', 'WANZALA', 'ELIZMA', '20', NULL, NULL, NULL, 76),
(153, '2018-04-28 12:44:45', '2018-04-28 12:44:45', 'NDAGIRE', 'JOYCE', '5', NULL, NULL, NULL, 76),
(154, '2018-04-28 12:59:38', '2018-04-28 12:59:38', 'KIRYOWA', 'IRAISHA', '7', NULL, NULL, NULL, 81),
(155, '2018-04-28 13:00:16', '2018-04-28 13:00:16', 'NAKIBIRANGO', 'GIFT', '4', NULL, NULL, NULL, 81),
(156, '2018-04-28 13:00:49', '2018-04-28 13:00:49', 'KAJIRI', 'GIVEN', '3', NULL, NULL, NULL, 81),
(157, '2018-04-28 13:00:52', '2018-04-28 13:00:52', 'KAJIRI', 'GIVEN', '3', NULL, NULL, NULL, 81),
(158, '2018-04-28 13:08:28', '2018-04-28 13:08:28', 'NASUNA', 'RESTY', NULL, 'P', '1', NULL, 82),
(159, '2018-04-28 13:09:23', '2018-04-28 13:09:23', 'KASIRYE', 'SOLOMON', '9', 'U', '2', NULL, 82),
(160, '2018-04-28 13:10:30', '2018-04-28 13:10:30', 'KASIRYE', 'ASHIVIRE', '2', 'U', NULL, NULL, 82),
(161, '2018-04-28 13:36:07', '2018-04-28 13:36:07', 'KALOKOLA', 'HERBERT', '5', NULL, NULL, NULL, 85),
(162, '2018-04-28 13:36:52', '2018-04-28 13:36:52', 'ODERI', NULL, NULL, NULL, NULL, NULL, 85),
(163, '2018-04-28 14:06:21', '2018-04-28 14:06:21', 'Kabuseka', 'Monica', '6', NULL, NULL, NULL, 86),
(164, '2018-04-28 14:07:12', '2018-04-28 14:07:12', 'Nalubowa', 'classy', '3.5', NULL, NULL, NULL, 86),
(165, '2018-04-28 14:07:12', '2018-04-28 14:07:12', 'AKUMU', 'DONA', '7', 'N', NULL, NULL, 87),
(166, '2018-04-28 14:07:53', '2018-04-28 14:07:53', 'Galiwesa', 'Livingstone', '2', NULL, NULL, NULL, 86),
(167, '2018-04-28 14:08:01', '2018-04-28 14:08:01', 'LUBEGA', 'REGAN', '5', 'N', NULL, NULL, 87),
(168, '2018-04-28 14:08:23', '2018-04-28 14:08:23', 'Semujju', 'David', NULL, NULL, NULL, NULL, 86),
(169, '2018-04-28 14:08:53', '2018-04-28 14:08:53', 'NANSAMBA', 'PROSSY', '2', 'N', NULL, NULL, 87),
(170, '2018-04-28 14:26:02', '2018-04-28 14:26:02', 'KALYEWA SUDASI', NULL, '10', 'N', NULL, NULL, 89),
(171, '2018-04-28 14:26:45', '2018-04-28 14:26:45', 'KIDDU MUSTAFE', NULL, '8', 'N', NULL, NULL, 89),
(172, '2018-04-28 14:52:11', '2018-04-28 14:52:11', 'ERIANA', NULL, '1', NULL, '2', NULL, 91),
(173, '2018-04-28 15:05:59', '2018-04-28 15:05:59', 'MUBIRU', 'AWIN', '2.5', 'N', NULL, NULL, 92),
(174, '2018-04-28 15:14:11', '2018-04-28 15:14:11', 'FAZIRA', NULL, '18', 'N', '2', NULL, 93),
(175, '2018-04-28 15:14:47', '2018-04-28 15:14:47', 'NANDUDU', 'NULU', '15', 'N', NULL, NULL, 93),
(176, '2018-04-28 15:15:45', '2018-04-28 15:15:45', 'MANUSULA', NULL, '13', 'N', NULL, NULL, 93),
(177, '2018-04-28 15:16:13', '2018-04-28 15:16:13', 'NAKAKAWA', 'RHODA', '15', 'N', NULL, NULL, 88),
(178, '2018-04-28 15:16:20', '2018-04-28 15:16:20', 'FREDRICK', NULL, '10', 'N', NULL, NULL, 93),
(179, '2018-04-28 15:16:44', '2018-04-28 15:16:44', 'MALE', 'KENNETH', '17', 'N', NULL, NULL, 88),
(180, '2018-04-28 15:16:50', '2018-04-28 15:16:50', 'NAKIMULI', NULL, NULL, NULL, NULL, NULL, 93),
(181, '2018-04-28 15:25:14', '2018-04-28 15:25:14', 'NSUBUGA', 'HENRY', '40', NULL, NULL, NULL, 94),
(182, '2018-04-29 08:02:44', '2018-04-29 08:02:44', 'KIBERU', 'ENOCK', '4', 'U', NULL, NULL, 98),
(183, '2018-04-29 08:11:01', '2018-04-29 08:11:01', 'SSALI', 'HENRY', '18', 'N', NULL, NULL, 97),
(184, '2018-04-29 08:12:03', '2018-04-29 08:12:03', 'NAMUDDU', 'VIOLA', '14', 'N', NULL, NULL, 97),
(185, '2018-04-29 08:13:03', '2018-04-29 08:13:03', 'NANTONGO', 'IVIVIAN', '12', 'N', NULL, NULL, 97),
(186, '2018-04-29 08:13:41', '2018-04-29 08:13:41', 'NASSALI', 'VERONICA', '8', 'N', NULL, NULL, 97),
(187, '2018-04-29 08:14:02', '2018-04-29 08:14:02', 'KIBERU', 'ENOCK', '4', 'U', NULL, NULL, 98),
(188, '2018-04-29 08:14:30', '2018-04-29 08:14:30', 'NAKAFEERO', 'VERO', '6', 'N', NULL, NULL, 97),
(189, '2018-04-29 08:34:48', '2018-04-29 08:34:48', 'NAMUSISI', 'GRACE', NULL, NULL, NULL, NULL, 103),
(190, '2018-04-29 08:36:28', '2018-04-29 08:36:28', 'NAKALYANGO', NULL, '5', 'U', '2', NULL, 105),
(191, '2018-04-29 08:37:37', '2018-04-29 08:37:37', 'SELWADA', 'MOSES', '45', 'N', NULL, NULL, 105),
(192, '2018-04-29 08:47:42', '2018-04-29 08:47:42', 'NALUWOOZA', 'CATHY', '5', 'N', NULL, NULL, 107),
(193, '2018-04-29 08:47:43', '2018-04-29 08:47:43', 'NALUWOOZA', 'CATHY', '5', 'N', NULL, NULL, 107),
(194, '2018-04-29 08:57:30', '2018-04-29 08:57:30', 'SEKIZIYIVU', 'JOSEPH', '24', NULL, NULL, NULL, 106),
(196, '2018-04-29 09:17:19', '2018-04-29 09:17:19', 'SSALONGO', 'ASHIRAM', '4', 'N', NULL, NULL, 111),
(198, '2018-04-29 09:29:34', '2018-04-29 09:29:34', 'NABENDE', 'EDDY', '22', 'U', '2', NULL, 115),
(199, '2018-04-29 09:40:41', '2018-04-29 09:40:41', 'MUTEBI', 'GODFREY', '14', NULL, '2', NULL, 116),
(200, '2018-04-29 09:41:15', '2018-04-29 09:41:15', 'BABIRYE', 'IDAH', '10', NULL, NULL, NULL, 116),
(201, '2018-04-29 09:41:53', '2018-04-29 09:41:53', 'NAGADYA', 'MARIAM', '9', NULL, NULL, NULL, 116),
(202, '2018-04-29 09:42:14', '2018-04-29 09:42:14', 'NAKIMULI', 'ERON', '3', NULL, NULL, NULL, 116),
(203, '2018-04-29 09:45:34', '2018-04-29 09:45:34', 'KAMETI', 'TWAYF', '30', 'N', '2', NULL, 119),
(204, '2018-04-29 09:47:49', '2018-04-29 09:47:49', 'NAMUWOGE', NULL, '32', 'N', NULL, NULL, 117),
(205, '2018-04-29 09:48:15', '2018-04-29 09:48:15', 'LAZIYA', NULL, NULL, 'N', NULL, NULL, 117),
(206, '2018-04-29 09:48:48', '2018-04-29 09:48:48', 'NAKINSIGE', 'ZOWENA', '1.5', 'N', '2', NULL, 119),
(207, '2018-04-29 10:13:03', '2018-04-29 10:13:03', 'NAMUTEBI', 'JULIET', NULL, NULL, NULL, NULL, 122),
(208, '2018-04-29 10:13:03', '2018-04-29 10:13:03', 'NAMUTEBI', 'JULIET', NULL, NULL, NULL, NULL, 122),
(209, '2018-04-29 10:13:04', '2018-04-29 10:13:04', 'NAMUTEBI', 'JULIET', NULL, NULL, NULL, NULL, 122),
(210, '2018-04-29 10:13:05', '2018-04-29 10:13:05', 'NAMUTEBI', 'JULIET', NULL, NULL, NULL, NULL, 122),
(211, '2018-04-29 10:13:05', '2018-04-29 10:13:05', 'NAMUTEBI', 'JULIET', NULL, NULL, NULL, NULL, 122),
(212, '2018-04-29 10:13:05', '2018-04-29 10:13:05', 'NAMUTEBI', 'JULIET', NULL, NULL, NULL, NULL, 122),
(213, '2018-04-29 10:13:05', '2018-04-29 10:13:05', 'NAMUTEBI', 'JULIET', NULL, NULL, NULL, NULL, 122),
(214, '2018-04-29 10:13:05', '2018-04-29 10:13:05', 'NAMUTEBI', 'JULIET', NULL, NULL, NULL, NULL, 122),
(215, '2018-04-29 10:13:17', '2018-04-29 10:13:17', 'NANYONJO', 'ELIZABETH', '2', 'N', NULL, NULL, 123),
(216, '2018-04-29 10:13:50', '2018-04-29 10:13:50', 'NYONJO', 'PRECIOUS', '2', NULL, NULL, NULL, 122),
(217, '2018-04-29 10:14:18', '2018-04-29 10:14:18', 'NYONJO', 'HENRY', '32', NULL, NULL, NULL, 122),
(218, '2018-04-29 10:49:18', '2018-04-29 10:49:18', 'KASEMBO', 'WILLIAM', '6', 'U', '2', NULL, 119),
(219, '2018-04-29 10:52:29', '2018-04-29 10:52:29', 'NAJJUKO', 'KULWA', '3', 'U', NULL, NULL, 119),
(220, '2018-04-29 11:02:39', '2018-04-29 11:02:39', 'NAMUTEBI', NULL, '4', 'U', NULL, NULL, 136),
(221, '2018-04-29 11:05:57', '2018-04-29 11:05:57', 'NABASIRYE', 'DEBORAH', NULL, NULL, NULL, NULL, 135),
(222, '2018-04-29 11:08:16', '2018-04-29 11:08:16', 'NAMUYOMBA', NULL, '0', NULL, NULL, NULL, 137),
(223, '2018-04-29 11:14:16', '2018-04-29 11:14:16', 'NAMULI', 'REBECCA', NULL, NULL, NULL, NULL, 138),
(224, '2018-04-29 11:14:41', '2018-04-29 11:14:41', 'NSUBUGA', 'VICENT', '36', NULL, NULL, NULL, 138),
(225, '2018-04-29 11:15:22', '2018-04-29 11:15:22', 'NALIKA', 'FLORENCE', '34', NULL, NULL, NULL, 138),
(226, '2018-04-29 11:15:46', '2018-04-29 11:15:46', 'SSEMBATYA', 'MARVIN', '16', NULL, NULL, NULL, 138),
(227, '2018-04-29 11:16:04', '2018-04-29 11:16:04', 'NAKAZI', 'LYNETTE', '6', NULL, NULL, NULL, 138),
(228, '2018-04-29 11:16:17', '2018-04-29 11:16:17', 'WASSWA', NULL, '5', NULL, NULL, NULL, 138),
(229, '2018-04-29 11:37:48', '2018-04-29 11:37:48', 'BUKENYA', 'SULAIMAN', '2', 'N', '2', NULL, 143),
(230, '2018-04-29 11:41:38', '2018-04-29 11:41:38', 'KALUMBA', 'GEORGE', '10', NULL, NULL, NULL, 141),
(231, '2018-04-29 11:41:39', '2018-04-29 11:41:39', 'KALUMBA', 'GEORGE', '10', NULL, NULL, NULL, 141),
(232, '2018-04-29 11:41:40', '2018-04-29 11:41:40', 'KALUMBA', 'GEORGE', '10', NULL, NULL, NULL, 141),
(233, '2018-04-29 11:41:40', '2018-04-29 11:41:40', 'KALUMBA', 'GEORGE', '10', NULL, NULL, NULL, 141),
(234, '2018-04-29 11:43:18', '2018-04-29 11:43:18', 'NAMUYIMBWA', 'SARAH', '12', NULL, NULL, NULL, 144),
(235, '2018-04-29 11:43:39', '2018-04-29 11:43:39', 'NAKALUMBA', 'BECCA', '14', NULL, NULL, NULL, 141),
(236, '2018-04-29 11:43:58', '2018-04-29 11:43:58', 'BYOGERE', 'ZAHARA', '24', 'N', NULL, NULL, 140),
(237, '2018-04-29 11:45:32', '2018-04-29 11:45:32', 'NASSALI', 'MERSHA', '1.6', 'N', NULL, NULL, 140),
(238, '2018-04-29 11:46:04', '2018-04-29 11:46:04', 'SSALI', 'SAMUEL', '3', 'N', NULL, NULL, 140),
(239, '2018-04-29 11:46:37', '2018-04-29 11:46:37', 'NAGAWA', 'GRACE', '5', 'N', NULL, NULL, 140),
(240, '2018-04-29 12:24:52', '2018-04-29 12:24:52', 'BRUBU', 'ROBERT', '34', 'N', NULL, NULL, 146),
(241, '2018-04-29 12:25:55', '2018-04-29 12:25:55', 'KIZZA', 'JULIET', '7', 'U', NULL, NULL, 146),
(242, '2018-04-29 12:26:40', '2018-04-29 12:26:40', 'MUSUMANI', 'ANMONY', '4', 'U', NULL, NULL, 146),
(243, '2018-04-29 12:49:27', '2018-04-29 12:49:27', 'NAMBOOZO', 'BERNA', '14', NULL, NULL, NULL, 150),
(244, '2018-04-29 12:50:03', '2018-04-29 12:50:03', 'NANSIVU', 'JOYCE', '12', NULL, NULL, NULL, 150),
(245, '2018-04-29 12:51:02', '2018-04-29 12:51:02', 'LOGOSE', 'SARAH', '38', 'P', '1', NULL, 151),
(246, '2018-04-29 12:51:53', '2018-04-29 12:51:53', 'KASANA', 'DINA', '10', 'U', '2', NULL, 151),
(247, '2018-04-29 12:51:54', '2018-04-29 12:51:54', 'WASSWA', 'KYOBA', '8', NULL, NULL, NULL, 150),
(248, '2018-04-29 12:52:56', '2018-04-29 12:52:56', 'KATO', NULL, '8', NULL, NULL, NULL, 150),
(249, '2018-04-29 12:53:14', '2018-04-29 12:53:14', 'NAMATAKA', NULL, '6', NULL, NULL, NULL, 150),
(250, '2018-04-29 13:09:16', '2018-04-29 13:09:16', 'KAKOOZA', 'YASIN', '13', 'N', NULL, NULL, 155),
(251, '2018-04-29 13:10:11', '2018-04-29 13:10:11', 'BABIRYE', 'TEDDY', '6', 'N', NULL, NULL, 155),
(252, '2018-04-29 13:10:40', '2018-04-29 13:10:40', 'KATO', 'JOSEPH', '6', 'N', NULL, NULL, 155),
(253, '2018-04-29 13:10:41', '2018-04-29 13:10:41', 'KARUMIRA', 'ERIAS', '43', 'N', '2', NULL, 152),
(254, '2018-04-29 13:10:52', '2018-04-29 13:10:52', 'ASSIMWE', 'DIANA', '9', NULL, NULL, NULL, 156),
(255, '2018-04-29 13:11:12', '2018-04-29 13:11:12', 'WASSWA', NULL, '6', NULL, NULL, NULL, 156),
(256, '2018-04-29 13:11:28', '2018-04-29 13:11:28', 'NAKUYA', 'JOYCE', '38', 'N', '1', NULL, 152),
(257, '2018-04-29 13:11:29', '2018-04-29 13:11:29', 'NAKATO', NULL, '6', NULL, NULL, NULL, 156),
(258, '2018-04-29 13:12:01', '2018-04-29 13:12:01', 'KIZZA', NULL, '2.6', NULL, NULL, NULL, 156),
(259, '2018-04-29 13:12:40', '2018-04-29 13:12:40', 'NABIRYE', 'LILIAN', '7', NULL, NULL, NULL, 157),
(260, '2018-04-29 13:32:15', '2018-04-29 13:32:15', 'SSEKABANJA', 'IAN', '7', NULL, NULL, NULL, 159),
(261, '2018-04-29 13:32:43', '2018-04-29 13:32:43', 'NAZZIWA', 'CAROL', '10', NULL, NULL, NULL, 159),
(262, '2018-04-29 13:33:28', '2018-04-29 13:33:28', 'NAMANDE', 'D', '8', NULL, '1', NULL, 158),
(263, '2018-04-29 13:33:29', '2018-04-29 13:33:29', 'NAMANDE', 'D', '8', NULL, '1', NULL, 158),
(264, '2018-04-29 13:33:59', '2018-04-29 13:33:59', 'NAKIMULI', 'PRECIOUS', '5', NULL, '2', NULL, 158),
(265, '2018-04-29 13:33:59', '2018-04-29 13:33:59', 'NAKIMULI', 'PRECIOUS', '5', NULL, '2', NULL, 158),
(266, '2018-04-29 13:50:21', '2018-04-29 13:50:21', 'NKONGE', 'MANUEL', '45', 'U', '2', NULL, 162),
(267, '2018-04-29 13:51:02', '2018-04-29 13:51:02', 'MAYANJA', 'RONALD', '6', 'U', NULL, NULL, 162),
(268, '2018-04-29 14:02:07', '2018-04-29 14:02:07', 'NSUBUGA', 'EDRICK', '1', 'N', '1', NULL, 165),
(269, '2018-04-29 14:02:58', '2018-04-29 14:02:58', 'KYANGU', 'HENRY', '3', 'U', '2', NULL, 165),
(270, '2018-04-29 14:02:58', '2018-04-29 14:02:58', 'KYANGU', 'HENRY', '3', 'U', '2', NULL, 165),
(271, '2018-04-29 14:02:58', '2018-04-29 14:02:58', 'KYANGU', 'HENRY', '3', 'U', '2', NULL, 165),
(272, '2018-04-29 14:15:26', '2018-04-29 14:15:26', 'MUGANGA', 'RONNIE', '5', 'N', '2', NULL, 167),
(273, '2018-04-29 14:16:31', '2018-04-29 14:16:31', 'SSENYONGA', 'EDWARD', '3', 'N', '2', NULL, 167),
(274, '2018-04-29 14:17:07', '2018-04-29 14:17:07', 'KALULE', 'JOHN', '30', 'N', '2', NULL, 167),
(275, '2018-04-29 14:22:44', '2018-04-29 14:22:44', 'NAKWANGA', NULL, '45', 'N', NULL, NULL, 166),
(276, '2018-04-29 14:23:14', '2018-04-29 14:23:14', 'KAFFUKO', 'CARE', NULL, NULL, NULL, NULL, 166),
(277, '2018-04-29 14:24:26', '2018-04-29 14:24:26', 'NAKAJJA', 'JOSEPHINE', '22', 'P', '1', NULL, 168),
(278, '2018-04-29 14:44:06', '2018-04-29 14:44:06', 'MALE', 'EMMA', '1', 'U', NULL, NULL, 171),
(279, '2018-04-30 06:38:50', '2018-04-30 06:38:50', 'BWIRE', 'MARK', NULL, 'P', '1', NULL, 176),
(280, '2018-04-30 06:39:21', '2018-04-30 06:39:21', 'NEGESA', 'GLORIA', NULL, NULL, NULL, NULL, 176),
(281, '2018-04-30 06:55:39', '2018-04-30 06:55:39', 'KATONGOLE', 'MICHEAL', '14', NULL, NULL, NULL, 177),
(282, '2018-04-30 07:11:41', '2018-04-30 07:11:41', 'NAMBI', 'ROBINAH', '6', 'U', '2', NULL, 178),
(283, '2018-04-30 07:12:14', '2018-04-30 07:12:14', 'KAGIRI', 'FRED', '8', 'U', NULL, NULL, 178),
(284, '2018-04-30 07:30:32', '2018-04-30 07:30:32', 'NALUMAGA', 'DORAH', '6', 'U', '2', NULL, 179),
(285, '2018-04-30 07:52:52', '2018-04-30 07:52:52', 'KIZZA', 'MOSES', '15', NULL, NULL, NULL, 180),
(286, '2018-04-30 07:53:18', '2018-04-30 07:53:18', 'KAYONDO', 'AMOS', NULL, NULL, NULL, NULL, 180),
(287, '2018-04-30 08:11:00', '2018-04-30 08:11:00', 'NAMPIIMA', 'GETU', NULL, 'U', NULL, NULL, 181),
(288, '2018-04-30 08:11:50', '2018-04-30 08:11:50', 'MUSENERO', 'IRENE', NULL, 'U', NULL, NULL, 181),
(289, '2018-04-30 08:52:01', '2018-04-30 08:52:01', 'SELUNJOGI', NULL, '6', 'N', '2', NULL, 183),
(290, '2018-04-30 08:52:35', '2018-04-30 08:52:35', 'SEMAKULA', NULL, '2', 'U', NULL, NULL, 183),
(291, '2018-04-30 08:53:06', '2018-04-30 08:53:06', 'NAKIWALA', NULL, '5', 'U', NULL, NULL, 183),
(292, '2018-04-30 10:14:09', '2018-04-30 10:14:09', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(293, '2018-04-30 10:14:09', '2018-04-30 10:14:09', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(294, '2018-04-30 10:14:10', '2018-04-30 10:14:10', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(295, '2018-04-30 10:14:10', '2018-04-30 10:14:10', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(296, '2018-04-30 10:14:10', '2018-04-30 10:14:10', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(297, '2018-04-30 10:14:10', '2018-04-30 10:14:10', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(298, '2018-04-30 10:14:11', '2018-04-30 10:14:11', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(299, '2018-04-30 10:14:11', '2018-04-30 10:14:11', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(300, '2018-04-30 10:14:11', '2018-04-30 10:14:11', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(301, '2018-04-30 10:14:12', '2018-04-30 10:14:12', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(302, '2018-04-30 10:14:13', '2018-04-30 10:14:13', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(303, '2018-04-30 10:14:13', '2018-04-30 10:14:13', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(304, '2018-04-30 10:14:14', '2018-04-30 10:14:14', 'ZAMZAM', NULL, '11', 'P', '1', NULL, 185),
(305, '2018-04-30 10:16:04', '2018-04-30 10:16:04', 'NANSUBUGA', 'F', '5', 'N', '2', NULL, 185),
(306, '2018-04-30 10:16:44', '2018-04-30 10:16:44', 'MUTEBI', 'A', '2', 'N', NULL, NULL, 185),
(307, '2018-04-30 10:40:05', '2018-04-30 10:40:05', 'NAKIYANJA', 'PROVIN', '12', 'U', '2', NULL, 186),
(308, '2018-04-30 10:42:25', '2018-04-30 10:42:25', 'NAKIYIMBA', 'TRACY', '10', NULL, NULL, NULL, 186),
(309, '2018-04-30 10:43:13', '2018-04-30 10:43:13', 'NAMPA', 'GRACE', '6', 'U', NULL, NULL, 186),
(310, '2018-04-30 11:05:31', '2018-04-30 11:05:31', 'MASEMBE', 'JOHN', '38', 'U', NULL, NULL, 187),
(311, '2018-04-30 11:42:46', '2018-04-30 11:42:46', 'NAMUSISI', 'MARGRET', NULL, NULL, NULL, NULL, 188),
(312, '2018-04-30 11:43:29', '2018-04-30 11:43:29', 'NALWANGA', NULL, NULL, NULL, NULL, NULL, 188),
(313, '2018-04-30 11:43:56', '2018-04-30 11:43:56', 'NAKAFEERO', NULL, NULL, NULL, NULL, NULL, 188),
(314, '2018-04-30 11:44:18', '2018-04-30 11:44:18', 'WASWA', NULL, NULL, NULL, NULL, NULL, 188),
(315, '2018-04-30 12:17:31', '2018-04-30 12:17:31', 'NAJJUKO', 'BAKER', NULL, NULL, NULL, NULL, 190),
(316, '2018-04-30 12:17:57', '2018-04-30 12:17:57', 'KANDA', NULL, NULL, NULL, NULL, NULL, 190),
(317, '2018-04-30 12:51:09', '2018-04-30 12:51:09', 'MUSOKE', 'EDWARD', '35', 'U', '2', NULL, 192),
(318, '2018-04-30 12:51:57', '2018-04-30 12:51:57', 'TEBESIGWA', 'SHANITAH', '6', 'U', NULL, NULL, 192),
(319, '2018-04-30 12:52:49', '2018-04-30 12:52:49', 'NAKIYINI', 'MERCY', '4', 'U', NULL, NULL, 192),
(320, '2018-04-30 12:53:33', '2018-04-30 12:53:33', 'KIYINI', 'TREVOR', '3', 'N', NULL, NULL, 192),
(321, '2018-04-30 13:11:34', '2018-04-30 13:11:34', 'NAKYEJWE', 'BRENDA', '14', 'U', NULL, NULL, 194),
(322, '2018-04-30 13:12:08', '2018-04-30 13:12:08', 'SSENABULYA', 'TADEO', '5', 'U', NULL, NULL, 194),
(323, '2018-04-30 13:12:39', '2018-04-30 13:12:39', 'NAKINTU', 'FLORENCE', '8', 'U', NULL, NULL, 194),
(324, '2018-04-30 13:13:00', '2018-04-30 13:13:00', 'KIBIRANGO', 'JOSEPH', '3', 'P', '1', NULL, 195),
(325, '2018-04-30 13:13:39', '2018-04-30 13:13:39', 'NAMPIIMA', 'NORAH', '7', 'P', NULL, NULL, 195),
(326, '2018-05-01 07:08:49', '2018-05-01 07:08:49', 'SSEMAKULA', NULL, '4', NULL, NULL, NULL, 198),
(327, '2018-05-01 07:09:06', '2018-05-01 07:09:06', 'NAKIWALA', NULL, '6', NULL, NULL, NULL, 198),
(328, '2018-05-01 07:09:21', '2018-05-01 07:09:21', 'SSERUNJOGI', NULL, '6', NULL, NULL, NULL, 198),
(329, '2018-05-01 07:09:37', '2018-05-01 07:09:37', 'MUKIIBI', NULL, '10', NULL, NULL, NULL, 198),
(330, '2018-05-01 07:10:02', '2018-05-01 07:10:02', 'SSIMWOGERERE', NULL, '14', NULL, NULL, NULL, 198),
(331, '2018-05-01 09:08:15', '2018-05-01 09:08:15', 'KIRABO', 'NISHIRA', '10', 'U', '2', NULL, 201),
(332, '2018-05-01 09:08:51', '2018-05-01 09:08:51', 'ANNET', 'BRENDA', '7', 'U', NULL, NULL, 201),
(333, '2018-05-01 09:52:53', '2018-05-01 09:52:53', 'NAKKU', 'SANDRA', '12', 'N', '2', NULL, 25),
(334, '2018-05-01 09:53:36', '2018-05-01 09:53:36', 'NALWEYISO', 'SHAMINA', '5', 'U', '2', NULL, 204),
(335, '2018-05-01 10:12:16', '2018-05-01 10:12:16', 'SSEMPALA', 'GEOFERY', '23', 'N', '1', NULL, 147),
(336, '2018-05-01 10:12:58', '2018-05-01 10:12:58', 'NANKYA', 'BETTY', '21', 'N', '2', NULL, 147),
(337, '2018-05-01 10:13:44', '2018-05-01 10:13:44', 'NAMITALA', 'SHAMIM', '19', 'N', NULL, NULL, 147),
(338, '2018-05-01 10:41:02', '2018-05-01 10:41:02', 'NSUBUGA', 'JOB', '9', NULL, '2', NULL, 207),
(339, '2018-05-01 10:41:41', '2018-05-01 10:41:41', 'TELEWAYIKA', 'FLAVIA', '11', NULL, NULL, NULL, 207),
(340, '2018-05-01 10:42:09', '2018-05-01 10:42:09', 'NAKIWALA', 'DOREEN', '16', NULL, NULL, NULL, 207),
(341, '2018-05-01 10:42:49', '2018-05-01 10:42:49', 'KAJUKA', 'DANIEL', '22', NULL, NULL, NULL, 207),
(342, '2018-05-01 10:43:09', '2018-05-01 10:43:09', 'NANSUBUGA', 'MARIAM', '20', NULL, NULL, NULL, 207),
(343, '2018-05-01 10:44:31', '2018-05-01 10:44:31', 'BABIRYE', 'MARGRET', '31', 'U', '2', NULL, 13),
(344, '2018-05-01 10:46:01', '2018-05-01 10:46:01', 'KITYO', 'NICHOLAS', '2', 'U', NULL, NULL, 13),
(345, '2018-05-01 11:06:09', '2018-05-01 11:06:09', 'NAMPIMA', 'HADIJJA', '42', NULL, NULL, NULL, 208),
(346, '2018-05-01 11:06:41', '2018-05-01 11:06:41', 'LUTAILA', NULL, '52', NULL, NULL, NULL, 208),
(347, '2018-05-01 11:07:21', '2018-05-01 11:07:21', 'WASSWA', 'YAHAYA', '37', NULL, NULL, NULL, 208),
(348, '2018-05-01 11:08:04', '2018-05-01 11:08:04', 'NABUBAKA', 'AFUA', '18', NULL, NULL, NULL, 208),
(349, '2018-05-01 11:58:46', '2018-05-01 11:58:46', 'NABUMA', 'SUZAN', '9', 'N', '2', NULL, 211),
(350, '2018-05-02 10:07:46', '2018-05-02 10:07:46', 'ANIKUMU', 'KEZIA', NULL, 'U', '2', NULL, 216),
(351, '2018-05-03 09:01:10', '2018-05-03 09:01:10', 'KYOBE', 'RICHARD', NULL, 'P', '1', NULL, 217),
(352, '2018-05-16 08:47:02', '2018-05-16 08:47:02', 'NAKASI', 'PROSSY', '26', 'P', '2', NULL, 220),
(353, '2018-05-16 09:17:34', '2018-05-16 09:17:34', 'KINTU', 'PIUS', '7', 'N', '2', NULL, 221),
(354, '2018-05-16 09:18:08', '2018-05-16 09:18:08', 'NAKIMULI', 'POULINE', '5', 'N', NULL, NULL, 221),
(355, '2018-05-16 09:18:56', '2018-05-16 09:18:56', 'NAKIMULI', 'PATRICIA', NULL, 'N', NULL, NULL, 221),
(356, '2018-05-16 09:19:27', '2018-05-16 09:19:27', 'SSALI', 'PAUL', '2', 'P', '1', NULL, 221),
(357, '2018-05-16 12:13:01', '2018-05-16 12:13:01', 'NDIBOGEZA', 'SHAILAT', '10', 'N', '2', NULL, 222),
(358, '2018-05-16 12:13:35', '2018-05-16 12:13:35', 'WETAKA', 'JAMES', '6', 'N', NULL, NULL, 222),
(359, '2018-05-16 12:14:24', '2018-05-16 12:14:24', 'NABIGUMBA', 'FRIDAY', '2', 'U', NULL, NULL, 222),
(360, '2018-06-11 11:34:56', '2018-06-11 11:34:56', 'AKUMU', 'DONA', '7', 'N', NULL, NULL, 223),
(361, '2018-06-11 11:35:44', '2018-06-11 11:35:44', 'LUBEGA', 'REAGAN', '5', 'N', NULL, NULL, 223),
(362, '2018-06-11 11:36:53', '2018-06-11 11:36:53', 'NANSAMBA', NULL, '2', 'N', NULL, NULL, 223),
(363, '2018-06-11 11:36:54', '2018-06-11 11:36:54', 'NANSAMBA', NULL, '2', 'N', NULL, NULL, 223),
(364, '2018-06-18 12:44:40', '2018-06-18 12:44:40', 'MUBIRU', 'GOD', '11', 'U', '2', NULL, 224),
(365, '2018-06-18 12:46:09', '2018-06-18 12:46:09', 'MUZINDA', 'STEVEN', '9', 'U', NULL, NULL, 224),
(366, '2018-06-18 12:46:49', '2018-06-18 12:46:49', 'MWABULA', 'ANGEL', '8', 'U', NULL, NULL, 224),
(367, '2018-06-26 17:20:57', '2018-06-26 17:20:57', 'MALE', 'WILLY', '3M', 'U', NULL, NULL, 238),
(368, '2018-06-26 17:53:36', '2018-06-26 17:53:36', 'MPANYAO', 'TIMOTHY', '13', 'U', '2', NULL, 239),
(369, '2018-06-26 17:54:38', '2018-06-26 17:54:38', 'NASILUBI', 'BARBRA', '11', 'U', NULL, NULL, 239),
(370, '2018-06-26 17:59:37', '2018-06-26 17:59:37', 'OPIO', 'GRACIOUS', '7', 'U', NULL, NULL, 239),
(371, '2018-06-26 18:00:35', '2018-06-26 18:00:35', 'ODONGO', 'RICHARD', '7', 'U', NULL, NULL, 239),
(372, '2018-06-26 18:03:45', '2018-06-26 18:03:45', 'ETIONO', 'FRANCIS', '2', 'U', NULL, NULL, 239),
(373, '2018-06-27 07:44:15', '2018-06-27 07:44:15', 'SSUNA', 'TREVOR', '16', 'N', '2', NULL, 240),
(374, '2018-06-27 10:14:50', '2018-06-27 10:14:50', 'NAKANJA', 'BRIDGET', '12', 'N', '2', NULL, 242),
(379, '2018-06-27 15:00:21', '2018-06-27 15:00:21', 'SSERUBIDDE', 'VISAN', '7', 'N', NULL, NULL, 242),
(380, '2018-06-27 15:01:56', '2018-06-27 15:01:56', 'NAFULA', 'BRITIN', '4', 'N', NULL, NULL, 242),
(391, '2018-06-28 15:12:59', '2018-06-28 15:12:59', 'NAMUSWE', 'AGNES', '30', 'U', '2', NULL, 246),
(392, '2018-06-28 15:13:45', '2018-06-28 15:13:45', 'MUSOKE', 'JOHN', '35', NULL, NULL, NULL, 246),
(393, '2018-06-28 15:14:58', '2018-06-28 15:14:58', 'WEGOSASA', 'MARGRET', '37', NULL, NULL, NULL, 246),
(394, '2018-06-28 15:14:58', '2018-06-28 15:14:58', 'WEGOSASA', 'MARGRET', '37', NULL, NULL, NULL, 246),
(395, '2018-06-28 15:14:59', '2018-06-28 15:14:59', 'WEGOSASA', 'MARGRET', '37', NULL, NULL, NULL, 246),
(396, '2018-06-28 15:15:56', '2018-06-28 15:15:56', 'WAZANGIRO', 'TIMOTHY', NULL, NULL, NULL, NULL, 246),
(397, '2018-06-28 15:15:56', '2018-06-28 15:15:56', 'WAZANGIRO', 'TIMOTHY', NULL, NULL, NULL, NULL, 246),
(398, '2018-06-28 16:06:01', '2018-06-28 16:06:01', 'SSEKIBUULE', 'PATRICK', '11', 'U', '2', NULL, 247),
(400, '2018-07-18 07:02:40', '2018-07-18 07:02:40', 'NTULUME', 'DISAN', '2', 'N', '2', NULL, 251),
(401, '2018-07-18 07:02:41', '2018-07-18 07:02:41', 'NTULUME', 'DISAN', '2', 'N', '2', NULL, 251),
(402, '2018-07-18 07:52:52', '2018-07-18 07:52:52', 'KIGANDA', 'MOSES', '1.8', 'U', '2', NULL, 252),
(403, '2018-07-23 08:27:58', '2018-07-23 08:27:58', 'NAKAYANJA', 'JOSEPHINE', '39', 'P', '1', NULL, 256),
(404, '2018-07-30 12:11:03', '2018-07-30 12:11:03', 'ASIMWE', 'JUDITH', '3', 'U', '2', NULL, 223),
(405, '2018-07-30 14:40:25', '2018-07-30 14:40:25', 'NANYONJO', 'SYLIVIA', '17', 'U', '2', NULL, 259),
(406, '2018-07-31 09:44:24', '2018-07-31 09:44:24', 'NAMONGO', 'MARTIN', NULL, 'U', '2', NULL, 262),
(407, '2018-07-31 09:44:26', '2018-07-31 09:44:26', 'NAMONGO', 'MARTIN', NULL, 'U', '2', NULL, 262),
(408, '2018-07-31 09:45:03', '2018-07-31 09:45:03', 'DURESINI', 'KEVIN', NULL, 'U', NULL, NULL, 262),
(409, '2018-07-31 09:45:31', '2018-07-31 09:45:31', 'NAMONYO', 'WILSON', NULL, 'U', NULL, NULL, 262),
(410, '2018-08-13 09:35:41', '2018-08-13 09:35:41', 'KARYOWA', 'TRAUSTA', '7', 'N', '2', NULL, 263),
(411, '2018-08-13 09:35:44', '2018-08-13 09:35:44', 'KARYOWA', 'TRAUSTA', '7', 'N', '2', NULL, 263),
(412, '2018-08-13 09:36:27', '2018-08-13 09:36:27', 'NAKIBIRANGO', 'GIFT', '4', 'N', NULL, NULL, 263),
(413, '2018-08-13 09:36:27', '2018-08-13 09:36:27', 'NAKIBIRANGO', 'GIFT', '4', 'N', NULL, NULL, 263),
(414, '2018-08-13 09:37:17', '2018-08-13 09:37:17', 'KAGIRI', 'GIVEN', '3', 'N', NULL, NULL, 263),
(415, '2018-09-04 09:00:23', '2018-09-04 09:00:23', 'SSENYANGE', 'RAYMOND', '9', 'U', '2', NULL, 280),
(416, '2018-09-04 09:01:00', '2018-09-04 09:01:00', 'SSENYANGE', 'NEVIS', '4', 'U', NULL, NULL, 280),
(417, '2018-09-04 09:13:46', '2018-09-04 09:13:46', 'SSUNA', 'TRAVIS', '5', 'U', '2', NULL, 281),
(418, '2018-09-04 09:13:49', '2018-09-04 09:13:49', 'SSUNA', 'TRAVIS', '5', 'U', '2', NULL, 281),
(419, '2018-09-04 09:14:24', '2018-09-04 09:14:24', 'KASAGA', 'LAWRENCE', '3', 'U', NULL, NULL, 281),
(420, '2018-09-04 09:15:25', '2018-09-04 09:15:25', 'SERWADA', 'REDRICK', '2OM', NULL, NULL, NULL, 281),
(421, '2018-12-05 19:40:38', '2018-12-05 19:40:38', 'OKOPA', 'LAWRENCE', '58', 'U', NULL, NULL, 282),
(422, '2018-12-05 19:54:29', '2018-12-05 19:54:29', 'NAKITENDE', 'VIVIAN', '8', 'U', NULL, NULL, 283),
(423, '2018-12-05 19:55:03', '2018-12-05 19:55:03', 'MUTYABA', 'BRIAN', '6', 'U', NULL, NULL, 283),
(424, '2018-12-05 20:26:35', '2018-12-05 20:26:35', 'KAYEMBA', 'RONALD', '15', 'U', NULL, NULL, 285),
(425, '2018-12-05 21:14:08', '2018-12-05 21:14:08', 'KAGIRI', 'TIMOTHY', '3', 'U', NULL, NULL, 287),
(426, '2018-12-05 21:14:45', '2018-12-05 21:14:45', 'NYANDULU', 'ROSE', '5', 'U', NULL, NULL, 287),
(427, '2018-12-05 21:15:12', '2018-12-05 21:15:12', 'KISEKA', 'DAUGLAS', '10', 'U', NULL, NULL, 287),
(428, '2018-12-05 21:15:39', '2018-12-05 21:15:39', 'IRENE', NULL, '26', 'U', NULL, NULL, 287),
(429, '2018-12-05 21:26:57', '2018-12-05 21:26:57', 'NANSUMA', 'SHIYARAH', '1', 'U', NULL, NULL, 288),
(430, '2018-12-12 21:24:25', '2018-12-12 21:24:25', 'NAKAMYA', 'HELLEN', '4', 'U', NULL, NULL, 289),
(431, '2018-12-12 21:25:00', '2018-12-12 21:25:00', 'BABIRYE', 'JOSEPHINE', '6', 'U', NULL, NULL, 289),
(432, '2018-12-12 21:25:40', '2018-12-12 21:25:40', 'SELWADDA', 'WILSON', '12', 'U', '2', NULL, 289);

-- --------------------------------------------------------

--
-- Table structure for table `hiv_exposed_infants`
--

CREATE TABLE `hiv_exposed_infants` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `infant_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_registration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clinic_referred_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_at_nvp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_at_nvp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_at_cotrim` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age_at_cotrim` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surname_of_mother` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mothers_ANC_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mothers_PRE_ART_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname_of_mother` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MotherNewlyTestedDuringBreastFeeding` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MotherNewlyEnrolledARTDuringBreastFeeding` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_antinantal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_delivery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_postnantal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `infants_arvforemtct` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discharged_neg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refferred_for_art` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `died` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clinic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enrolled` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_art_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transferred` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transferred_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_to_art_clinic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enrolled_to_art_clinic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_enrolled_at_art_clinic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_referred_to_art_clinic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_delivery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode_of_delivery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_pmtct` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `art_clinic_option` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `art_clinic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outreachworkers_intro` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relationship` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_disclosure` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relative_phonenumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `care_giver_address_directions` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative_contact_person` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lc_chairman` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lc_one_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_point` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commonname_of_mother` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pt_clinic_id` int(10) UNSIGNED DEFAULT NULL,
  `village_id` int(10) UNSIGNED DEFAULT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hiv_exposed_infants`
--

INSERT INTO `hiv_exposed_infants` (`id`, `created_at`, `updated_at`, `infant_number`, `date_of_registration`, `surname`, `firstname`, `sex`, `date_of_birth`, `age`, `clinic_referred_from`, `date_at_nvp`, `age_at_nvp`, `date_at_cotrim`, `age_at_cotrim`, `surname_of_mother`, `Mothers_ANC_No`, `Mothers_PRE_ART_No`, `firstname_of_mother`, `MotherNewlyTestedDuringBreastFeeding`, `MotherNewlyEnrolledARTDuringBreastFeeding`, `mother_antinantal`, `mother_delivery`, `mother_postnantal`, `infants_arvforemtct`, `discharged_neg`, `lost`, `refferred_for_art`, `died`, `clinic`, `enrolled`, `pre_art_number`, `transferred`, `transferred_to`, `referred_to_art_clinic`, `enrolled_to_art_clinic`, `date_enrolled_at_art_clinic`, `date_referred_to_art_clinic`, `place_of_delivery`, `mode_of_delivery`, `mother_pmtct`, `art_clinic_option`, `art_clinic`, `outreachworkers_intro`, `relationship`, `person_disclosure`, `relative_phonenumber`, `care_giver_address_directions`, `alternative_contact_person`, `lc_chairman`, `lc_one_zone`, `entry_point`, `commonname_of_mother`, `phone_number`, `pt_clinic_id`, `village_id`, `hiv_care_art_card_id`) VALUES
(4, '2018-05-22 08:35:01', '2018-05-22 08:49:03', '1/2018/001', '1518566400', 'NANKUNDA', 'DOREEN', 'Female', '-61568640000', '1.5', NULL, '1515024000', '1.5', '1518566400', '1.5', 'NEWEBINE', '347', NULL, 'VARERI', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KASUBI HC 3', 'SUD', 'Yes', 'Yes', 'KASUBI HC3', 'AS FRIEND', NULL, NULL, NULL, 'NEAR NAKATYABA PLS ASK FOR MR.TUMUYIMBISE ROGERS', NULL, NULL, 'NAKATYABA', 'FSG', 'MAAMA GERALD', NULL, 3, 11, NULL),
(5, '2018-05-22 09:58:34', '2018-06-26 14:41:48', '1/2018/004', NULL, 'NANSUBUGA', 'ROSE', 'Female', '1541548800', NULL, NULL, NULL, NULL, NULL, '4', 'NANSUBUGA', NULL, NULL, 'ROSE', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KASUBI HC 3', 'S.V.D', 'Yes', 'Yes', 'KASUBI HC 3', 'MUKWANO GWE', 'HUSBAND', 'Yes', NULL, 'KASUBI HC TO KASUBI VILLAGE TAKE LUBETE ROUTE TO MUKAME HOME ASK FOR MUKYALA MUGERWA', 'MUGERWA CHARLES', 'MAKANGA', 'KASUBI VILLAGE', 'MATERNITY', 'MUKYALA MUGERWA', NULL, 3, NULL, 75),
(6, '2018-05-22 10:56:23', '2018-07-31 12:13:28', '1/2018/003', '1519603200', 'NAKAZIBWE', 'ESABELLA', 'Female', '1517011200', '1', NULL, '1519171200', '1', NULL, NULL, 'NALYEYISO', 'NO', NULL, 'JANE', NULL, NULL, 'No ART', 'No ART', 'No ART', 'No ARVs taken at birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KOBA(TBA)', NULL, 'No', 'Yes', 'KASUBI HC 3', 'AS A FRIEND', 'MOTHER', NULL, NULL, 'KASUBI HC 3 T0 SERUFUSA MU KIKAJJO ASK FOR TENYWA IS THE FATHER', 'KAYAGA TEOPISTA', 'KAGIRI', 'NAKIKUNYU', 'YCC', 'MAAMA LIZI', NULL, 3, 10, 123),
(7, '2018-05-22 11:31:52', '2018-06-13 10:13:11', '9/2017/002', '1523404800', 'SENTAMU', 'COLLINS', 'Male', '1505692800', NULL, NULL, '1523404800', '7', NULL, NULL, 'NAKABUGO', '3608', NULL, 'SHIFA', NULL, NULL, 'No ART', NULL, 'No ART', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SUD', 'No', 'Yes', 'KASUBI HC3', NULL, 'SISTER', 'Yes', '+2567044459661', 'FROM HC TO SUUGU-KIRANGIRA TO NKOYOYO CH TO NTABWE ASK FOR MR.ABDUNULU THE FATHER', 'NAKABUGO MARIAM', NULL, 'MATALE', 'YCC', 'SIFA', NULL, 3, 12, 79),
(9, '2018-06-11 12:21:49', '2018-06-11 12:29:55', '12/2017/001', '1516838400', 'BABIRYE', 'NAJJUKA', 'Female', '1543795200', '1.5', NULL, '1543795200', NULL, '1543968000', NULL, NULL, NULL, NULL, 'RESTY', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TBA', 'SUD', 'Yes', 'Yes', 'KASUBI HC3', 'HW', NULL, NULL, NULL, 'INFRONT OF HF', 'KASIRYE', NULL, 'KASUBI', 'FSG', 'MAAMA ASHAVIN', NULL, 3, 3, 69),
(10, '2018-06-13 07:46:11', '2018-06-13 07:53:44', '3/2017/001', '1490832000', 'NABAGUMA', 'GLORIA', 'Female', '1488672000', NULL, NULL, '1488758400', NULL, NULL, NULL, 'KYOMUKAMA', NULL, NULL, 'PHIONA', NULL, NULL, 'Life long ART', NULL, 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TBA', 'SUD', 'Yes', 'Yes', NULL, NULL, 'FRIEND', 'Yes', NULL, NULL, 'NALONGO FRIDAY', NULL, 'KASUBI', 'YCC', 'MAAMA KALUMBA/NALONGO', NULL, 3, 4, 141),
(11, '2018-06-13 08:39:14', '2018-06-13 08:52:15', '4/2017/001', '1495929600', 'NSUBUGA', 'BRIGHTON', 'Male', '1491264000', '1.5', NULL, '1491264000', '1.5', '1495670400', '1.5', 'NANTONGO', '125', NULL, 'ANNET', NULL, NULL, 'Life long ART', NULL, 'Life long ART', 'Received NVP within 72 hours of birth until 6 weeks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Yes', 'KASUBI HC3', 'MUSAWO', 'HUSBAND', 'Yes', '+256777207655', 'FROM HC TO KYAMBOGO HC ASK FOR MAAMA PRAISE', 'WILLY', 'KIZITO ROBERT', 'KYAMBOGO', 'FSG', 'MAAMA PRAISE', NULL, 3, NULL, 136),
(12, '2018-06-13 10:56:39', '2018-06-13 10:56:39', '2/2017/002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2018-06-18 09:07:02', '2018-06-18 09:24:43', '03/2017/002', '1535673600', NULL, NULL, NULL, NULL, NULL, NULL, '1489536000', NULL, NULL, NULL, 'NAKONDE', '1697/16', NULL, 'ESTHER', NULL, NULL, 'Life long ART', NULL, NULL, 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KAWOLO HSP', NULL, NULL, 'Yes', 'KASUBI HC3', 'H/W', NULL, NULL, NULL, 'FROM KASUBI HC TO WANANDA PASS THE P/S AFTER THE HILL ASK FOR MAAMA SARAH', NULL, NULL, 'WANANDA', NULL, 'ESTHER', NULL, 3, NULL, NULL),
(15, '2018-06-18 15:06:06', '2018-06-18 16:35:54', '7/2017/001', NULL, 'NALWANGA', 'CATHERINE', 'Female', '1488844800', NULL, NULL, '1488844800', NULL, NULL, NULL, 'BIRABWA', '204', NULL, 'ROSE', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KAWOLO HOSPITAL', 'SUD', 'No', 'Yes', 'KASUBI H/C 3', 'AS HEALTH WORKER', 'HUSBAND', 'Yes', '+256781801717', 'FROM H/C TO KAMENYA NEAR THE KIDAMA ROUTE ASK KASOLO FRED', 'KASOLO FRED', NULL, NULL, 'FSG', 'MAAMA NAKIMULI', NULL, 3, 7, 93),
(16, '2018-06-18 17:04:40', '2018-06-18 17:08:46', '3/2015/001', NULL, 'BISIRIKIRWA', 'RUTH', 'Female', '1438560000', '17', NULL, NULL, NULL, '1438560000', '17', 'NAMATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'OPD', NULL, NULL, 3, NULL, NULL),
(17, '2018-06-18 17:47:58', '2018-08-07 07:56:45', '10/2017/001', '1510790400', 'NAKALUMBA', 'SHARITAH', 'Female', '1506902400', '1.5', NULL, '1506902400', NULL, '1510790400', '1.5', 'NAKAYENZE', '10', NULL, 'LYDIA', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KASUBI HC 3', 'SUD', 'Yes', 'Yes', 'KASUBI HC 3', 'FRIEND', 'SISTER', 'Yes', NULL, 'FROM H/C TO KASUBI TOWN ASK  FOR LANDLORD  TABANJA SHE STAYS THERE', 'MUZAKI IMMACULATE', 'KASUBI', 'KASUBI', 'MAT', 'MAAMA NASIM', NULL, 3, 4, 59),
(18, '2018-06-19 04:50:55', '2018-06-19 05:02:32', '7/2017/003', NULL, 'KIYITA', 'ANDREW', 'Male', NULL, '4', NULL, NULL, NULL, '1496880000', '4', 'NAKIBIRANGO', NULL, NULL, 'LOVISA', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KATOVU HC 3', 'SUD', 'Yes', 'Yes', 'KASUBI HC 3', 'SISTER', 'GRAND MOTHER', 'Yes', NULL, 'FROM HC KATOVU GET BODABODA TO TAKE YOU TO MUKYALA KIYITA', 'MUKYALA TENYWA', 'KATO', 'MATALE/NAKASEKE', 'FSG', 'MAAMA ANDREW/MUKYALA KIYITA', NULL, 3, 12, 176),
(19, '2018-06-19 05:11:12', '2018-06-19 05:11:12', '12/2016/003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2018-06-20 09:59:00', '2018-08-06 08:53:55', '9/2017/001', '1527465600', 'NAMUBIRU', 'TEOPISTA', 'Female', '1504656000', '8', NULL, '1504656000', NULL, '1527465600', '8', 'NAKIRYA', NULL, NULL, 'RESTY', NULL, NULL, NULL, NULL, NULL, 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KASUBI HC 3', 'SUD', 'Yes', 'Yes', 'KASUBI HC 3', NULL, 'AUNTIE', 'Yes', NULL, 'GET ATAX TO KIKAKANYA GET ABODABODA TO KALAMBA IN THE CENTER ASK FOR NAKIRYA', 'NABWETEME PROSSY', NULL, 'BUBIRO', 'EMTCT', 'NAKIRYA', NULL, 3, NULL, 87),
(21, '2018-06-20 10:23:29', '2018-07-30 17:52:26', '1/2018/002', '1519344000', 'NABWETEME', 'SOFIA', 'Female', '1527811200', '6WKS', NULL, '1527811200', NULL, '1519344000', '6WKS', 'NABURYA', '1290', NULL, 'MADINA', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KAWOLO HSP', 'SVD', 'Yes', 'Yes', 'KASUBI HC 3', 'H/W', 'HUSBAND', 'Yes', NULL, 'FROM HC TO KIKOMA MOSQUE ASK FOR MAAMA HASAN/MUKYALA SUDI', 'SEBADUUKA SUDI', NULL, NULL, 'FSG', 'MAAMA HASAN', NULL, 3, 7, 260),
(22, '2018-06-20 10:46:49', '2018-08-06 08:43:41', '4/2018/002', '1528848000', 'KYOBE', 'EDRINE', 'Male', '1525046400', '1.5', NULL, '1525046400', NULL, '1528848000', '1.5', 'NABULYA', '156', NULL, 'ZULAIKA', NULL, NULL, 'Life long ART', 'Life long ART', NULL, 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KATOVU HC 3', 'SUD', 'Yes', 'Yes', 'KASUBI HC 3', 'AS FRIEND', 'MOTHER', 'Yes', '+256756224445', 'FROM HF GO TO SSUUGU KIRANGIRA KATUBA ASK FOR MAAMA MAYI.', 'NALUKWAGO MAYI', 'LUKWAGO MISSI', 'SSUGU KIRANGIRA', 'YCC', 'NABULYA', NULL, 3, 13, 111),
(23, '2018-06-26 12:44:09', '2018-06-26 13:02:47', '3/2018/002', '1536192000', 'FALE', 'ENOCK', 'Male', '1533254400', '3', NULL, NULL, 'NA', '1536192000', '3', 'BABIRYE', '384', NULL, 'MONICA', NULL, NULL, 'No ART', 'No ART', 'Life long ART', 'No ARVs taken at birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ST.TEREZA CLINIC', 'SUD', 'No', 'Yes', 'KASUBI HC 3', 'FRIEND/MUKWANO', 'MOTHER', 'Yes', '+256780281168', 'FROM HF TO MAKONGE VILLAGE ASK FOR MUKYALA NAKAZUGU\'S HOME THEN ASK FOR NALONGO BABIRYE HER DAUGHER.', 'NAMBOZO FLORENCE', 'KYAMBADDE', 'MAKONGE', 'YCC', 'NALONGO BABIRYE', NULL, 3, 17, NULL),
(24, '2018-06-26 13:45:45', '2018-06-26 13:58:10', '3/2018/001', NULL, 'MUBIRU', 'JONATHAN', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, '2', 'NAKAFEERO', '131', NULL, 'AGNES', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KAWOLO HSPSV', 'SVD', 'Yes', 'Yes', 'KASUBI HC 3', 'AS FRIEND(MUKWANO)', 'SISTER', 'Yes', NULL, 'FROM HC TO KIGALI TRADING CENTER THAN ASK FOR NAKAFEERO ON KINENE\"S RENTAL HOUSES.', NULL, 'SENOGA', 'LUWAYO', 'YCC', 'NAKAFEERO', NULL, 3, 20, 105),
(25, '2018-06-26 15:11:43', '2018-08-06 09:32:00', '2/2018/001', '1528761600', 'MALE', 'WILLY', NULL, NULL, NULL, NULL, '1544054400', 'NA', '1544054400', '3', 'NABUKEERA', NULL, NULL, 'JOYCE', NULL, NULL, 'No ART', NULL, 'Life long ART', 'No ARVs taken at birth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TBA', 'SVD', 'No', 'Yes', NULL, 'AS A FRIEND', 'FATHER', 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, 'JOYCE', NULL, 3, 13, NULL),
(26, '2018-06-29 09:19:01', '2018-06-29 09:19:01', '5/2018/001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-06-29 09:26:41', '2018-06-29 09:39:26', '5', '1530230400', 'WELAGA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1.5', NULL, '185', NULL, NULL, NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SVD', 'Yes', 'Yes', 'KASUBI HC 3', NULL, 'FRIEND', NULL, '+256752240930', 'FROM HC TO MATALE AS YOU BRANCH OFF TO SSUGU ASK FOR NALONGO NALUMANSI THEN ASK FOR G.DAUGHTER BABIRYE JALIA', NULL, NULL, NULL, NULL, NULL, NULL, 3, 12, 119),
(29, '2018-07-31 11:46:12', '2018-07-31 11:56:55', '6', NULL, 'NAWAMBWA', NULL, 'Male', NULL, NULL, NULL, '1529107200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HUSBAND', 'Yes', NULL, 'GET A BODA TO MAKONGE KAGUMBA\'S SUGAR PLANTATION ASK FOR MAAMA KEVIN HIS WORKER.', 'NAMONYO MARTIN', NULL, 'MAKONGE', 'FSG', NULL, NULL, 3, NULL, NULL),
(30, '2018-07-31 12:04:02', '2018-07-31 12:31:27', '5/2018/03', '1527638400', 'NALWEYISO', 'BRENDA', 'Female', '1527379200', '1', NULL, '1527638400', NULL, NULL, NULL, NULL, NULL, NULL, 'RUTH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ROAD SIDE', 'SUD', 'Yes', NULL, NULL, NULL, 'SISTER', 'Yes', NULL, 'FROM HC TO MUKULI GOD THEN MUKULI GERALD (NYUMBA ZA NAKITENDE)', 'NAMBI MAGI', NULL, NULL, NULL, 'RUTH', NULL, 3, NULL, NULL),
(31, '2018-08-06 10:05:38', '2018-08-07 08:01:11', '4/2018/001', '1523577600', 'BYAMUKAMA', NULL, 'Male', NULL, NULL, NULL, NULL, NULL, NULL, '1.5', 'NAKALUMBA', '138', NULL, 'ESTHER', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'KASUBI HC 3', 'SUD', 'Yes', 'Yes', 'KASUBI HC 3', 'FREIND', NULL, NULL, NULL, 'FROM HC TO LUWAYO TO SEBUNYA\'S RENTALS ASK FOR MUKYALA MIITI.', NULL, 'SSERUMAGA', NULL, 'MAT', 'MAAMA SULAIMAN', NULL, 3, 20, 143),
(32, '2018-08-07 10:11:16', '2018-08-07 11:00:06', '12/2016/001', '1482796800', 'NAMUSOSA', 'JACKLINE', 'Female', '1482796800', '3', NULL, NULL, NULL, NULL, '3', 'NANFUKA', NULL, NULL, 'JACKLINE', NULL, NULL, 'Life long ART', 'Life long ART', 'Life long ART', 'Daily NVP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HOSP', 'SUD', 'Yes', 'Yes', 'KASUBI HC3', NULL, 'MOTHER', 'Yes', NULL, 'NKOYOYO PLAY GROUND COUNT THE 4th HOUSE ASK FOR NANFUKA/NAMUSOKE', 'NAMUSOKE MARGRET', NULL, 'BUKASA', 'OUTREACH', 'NANFUKA', NULL, 3, 12, 90);

-- --------------------------------------------------------

--
-- Table structure for table `hiv_exposed_infant_followups`
--

CREATE TABLE `hiv_exposed_infant_followups` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attempt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attempt_outcome` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `final_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiv_exposed_infant_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hiv_exposed_infant_followups`
--

INSERT INTO `hiv_exposed_infant_followups` (`id`, `created_at`, `updated_at`, `attempt_name`, `attempt_date`, `attempt_outcome`, `final_status`, `hiv_exposed_infant_id`) VALUES
(3, '2018-08-06 10:30:11', '2018-08-06 10:30:11', NULL, '1533551411', NULL, NULL, 31),
(4, '2018-08-06 10:30:11', '2018-08-06 10:30:11', NULL, '1533551411', NULL, NULL, 31),
(5, '2018-08-06 10:30:11', '2018-08-06 10:30:11', NULL, '1533551411', NULL, NULL, 31),
(6, '2018-08-07 11:05:07', '2018-08-07 11:05:07', NULL, '1533639907', NULL, 'Discharged Nagative', 32),
(7, '2018-08-07 11:05:09', '2018-08-07 11:05:09', NULL, '1533639909', NULL, 'Discharged Nagative', 32);

-- --------------------------------------------------------

--
-- Table structure for table `hiv_exposed_infant_tesing_informations`
--

CREATE TABLE `hiv_exposed_infant_tesing_informations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `testname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `testdate` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_first` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_given_to_caregiver_first` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `infant_feeding_status_first` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hivei_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hiv_exposed_infant_tesing_informations`
--

INSERT INTO `hiv_exposed_infant_tesing_informations` (`id`, `created_at`, `updated_at`, `testname`, `testdate`, `result_first`, `date_given_to_caregiver_first`, `infant_feeding_status_first`, `hivei_id`) VALUES
(2, '2018-05-22 08:55:21', '2018-05-22 08:55:21', NULL, '1518566400', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 4),
(3, '2018-05-22 10:46:01', '2018-05-22 10:46:01', NULL, '1519776000', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 5),
(4, '2018-05-22 11:19:28', '2018-05-22 11:19:28', '1st PCR', '1520812800', 'Negative', '1524009600', 'EBF—Exclusive Breastfeeding', 6),
(7, '2018-06-11 12:32:28', '2018-06-11 12:32:28', '1ST PCR', '1543968000', 'Negative', '1522800000', 'EBF—Exclusive Breastfeeding', 9),
(8, '2018-06-11 12:32:29', '2018-06-11 12:32:29', '1ST PCR', '1543968000', 'Negative', '1522800000', 'EBF—Exclusive Breastfeeding', 9),
(9, '2018-06-13 08:52:15', '2018-06-13 08:52:15', '1ST PCR', '1495670400', 'Negative', '1501113600', 'EBF—Exclusive Breastfeeding', 11),
(10, '2018-06-18 09:24:21', '2018-06-18 09:24:21', '1ST PCR', '1493856000', 'Negative', '1495670400', 'EBF—Exclusive Breastfeeding', 13),
(11, '2018-06-18 16:36:37', '2018-06-18 16:36:37', NULL, NULL, NULL, NULL, NULL, 15),
(12, '2018-06-18 16:36:37', '2018-06-18 16:36:37', NULL, NULL, NULL, NULL, NULL, 15),
(13, '2018-06-18 16:36:38', '2018-06-18 16:36:38', NULL, NULL, NULL, NULL, NULL, 15),
(14, '2018-06-20 10:14:54', '2018-06-20 10:14:54', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(15, '2018-06-20 10:14:54', '2018-06-20 10:14:54', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(16, '2018-06-20 10:14:54', '2018-06-20 10:14:54', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(17, '2018-06-20 10:14:54', '2018-06-20 10:14:54', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(18, '2018-06-20 10:14:55', '2018-06-20 10:14:55', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(19, '2018-06-20 10:14:55', '2018-06-20 10:14:55', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(20, '2018-06-20 10:14:57', '2018-06-20 10:14:57', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(21, '2018-06-20 10:14:57', '2018-06-20 10:14:57', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(22, '2018-06-20 10:14:57', '2018-06-20 10:14:57', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(23, '2018-06-20 10:14:58', '2018-06-20 10:14:58', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(24, '2018-06-20 10:14:58', '2018-06-20 10:14:58', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(25, '2018-06-20 10:14:58', '2018-06-20 10:14:58', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(26, '2018-06-20 10:14:59', '2018-06-20 10:14:59', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(27, '2018-06-20 10:14:59', '2018-06-20 10:14:59', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(28, '2018-06-20 10:14:59', '2018-06-20 10:14:59', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(29, '2018-06-20 10:15:00', '2018-06-20 10:15:00', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(30, '2018-06-20 10:15:00', '2018-06-20 10:15:00', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(31, '2018-06-20 10:15:00', '2018-06-20 10:15:00', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(32, '2018-06-20 10:15:01', '2018-06-20 10:15:01', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(33, '2018-06-20 10:15:01', '2018-06-20 10:15:01', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(34, '2018-06-20 10:15:01', '2018-06-20 10:15:01', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(35, '2018-06-20 10:15:02', '2018-06-20 10:15:02', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(36, '2018-06-20 10:15:03', '2018-06-20 10:15:03', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(37, '2018-06-20 10:15:04', '2018-06-20 10:15:04', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(38, '2018-06-20 10:15:04', '2018-06-20 10:15:04', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(39, '2018-06-20 10:15:05', '2018-06-20 10:15:05', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(40, '2018-06-20 10:15:05', '2018-06-20 10:15:05', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(41, '2018-06-20 10:15:06', '2018-06-20 10:15:06', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(42, '2018-06-20 10:15:06', '2018-06-20 10:15:06', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(43, '2018-06-20 10:15:06', '2018-06-20 10:15:06', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(44, '2018-06-20 10:15:06', '2018-06-20 10:15:06', '1ST PCR', '1527465600', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 20),
(45, '2018-06-20 10:29:49', '2018-06-20 10:29:49', '1ST PCR', '1519344000', 'Negative', NULL, 'EBF—Exclusive Breastfeeding', 21),
(46, '2018-06-26 13:05:33', '2018-06-26 13:05:33', '1ST PCR', '1536192000', NULL, NULL, 'EBF—Exclusive Breastfeeding', 23),
(47, '2018-06-26 13:05:33', '2018-06-26 13:05:33', '1ST PCR', '1536192000', NULL, NULL, 'EBF—Exclusive Breastfeeding', 23),
(48, '2018-06-26 13:05:40', '2018-06-26 13:05:40', '1ST PCR', '1536192000', NULL, NULL, 'EBF—Exclusive Breastfeeding', 23),
(49, '2018-06-26 13:05:41', '2018-06-26 13:05:41', '1ST PCR', '1536192000', NULL, NULL, 'EBF—Exclusive Breastfeeding', 23),
(50, '2018-06-26 13:05:42', '2018-06-26 13:05:42', '1ST PCR', '1536192000', NULL, NULL, 'EBF—Exclusive Breastfeeding', 23),
(51, '2018-06-26 16:03:20', '2018-06-26 16:03:20', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(52, '2018-06-26 16:03:20', '2018-06-26 16:03:20', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(53, '2018-06-26 16:03:22', '2018-06-26 16:03:22', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(54, '2018-06-26 16:03:22', '2018-06-26 16:03:22', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(55, '2018-06-26 16:03:23', '2018-06-26 16:03:23', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(56, '2018-06-26 16:03:24', '2018-06-26 16:03:24', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(57, '2018-06-26 16:03:25', '2018-06-26 16:03:25', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(58, '2018-06-26 16:03:28', '2018-06-26 16:03:28', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(59, '2018-06-26 16:03:29', '2018-06-26 16:03:29', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(60, '2018-06-26 16:03:40', '2018-06-26 16:03:40', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(61, '2018-06-26 16:03:42', '2018-06-26 16:03:42', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(62, '2018-06-26 16:03:42', '2018-06-26 16:03:42', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(63, '2018-06-26 16:03:43', '2018-06-26 16:03:43', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(64, '2018-06-26 16:03:49', '2018-06-26 16:03:49', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(65, '2018-06-26 16:03:52', '2018-06-26 16:03:52', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(66, '2018-06-26 16:04:02', '2018-06-26 16:04:02', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(67, '2018-06-26 16:04:04', '2018-06-26 16:04:04', '1ST PCR', '1544054400', NULL, NULL, 'CF—Complementary Feeding (> 6 months)', 25),
(68, '2018-06-29 09:41:47', '2018-06-29 09:41:47', '1ST PCR', '1530230400', NULL, NULL, 'EBF—Exclusive Breastfeeding', 27),
(69, '2018-06-29 09:41:47', '2018-06-29 09:41:47', '1ST PCR', '1530230400', NULL, NULL, 'EBF—Exclusive Breastfeeding', 27),
(70, '2018-06-29 09:41:48', '2018-06-29 09:41:48', '1ST PCR', '1530230400', NULL, NULL, 'EBF—Exclusive Breastfeeding', 27),
(71, '2018-07-30 09:56:33', '2018-07-30 09:56:33', '1st PCR', '1518566400', 'Negative', '1532563200', 'EBF—Exclusive Breastfeeding', 4),
(72, '2018-07-30 10:32:25', '2018-07-30 10:32:25', '1st PCR', '1518566400', 'Negative', '1532563200', 'EBF—Exclusive Breastfeeding', 4),
(74, '2018-07-31 11:57:26', '2018-07-31 11:57:26', '1stPCR', '1532908800', NULL, NULL, 'EBF—Exclusive Breastfeeding', 29),
(75, '2018-07-31 12:32:04', '2018-07-31 12:32:04', '1stPCR', '1530662400', NULL, NULL, 'EBF—Exclusive Breastfeeding', 30),
(76, '2018-07-31 12:32:18', '2018-07-31 12:32:18', '1stPCR', '1530662400', NULL, NULL, 'EBF—Exclusive Breastfeeding', 30),
(77, '2018-08-06 08:41:55', '2018-08-06 08:41:55', '1stPCR', '1528848000', 'Negative', '1532563200', 'EBF—Exclusive Breastfeeding', 22),
(78, '2018-08-06 09:07:52', '2018-08-06 09:07:52', '1st PCR', '1527465600', 'Negative', '1532563200', 'EBF—Exclusive Breastfeeding', 20),
(79, '2018-08-07 07:50:54', '2018-08-07 07:50:54', '1st  PCR', '1516838400', 'Negative', '1532563200', 'EBF—Exclusive Breastfeeding', 17),
(80, '2018-08-07 11:00:55', '2018-08-07 11:00:55', '1stPCR', '1490745600', 'Negative', '1495670400', 'EBF—Exclusive Breastfeeding', 32),
(81, '2018-08-07 11:02:10', '2018-08-07 11:02:10', '2ndPCR', '1504137600', 'Negative', '1505088000', 'NLB—No Longer Breastfeeding', 32),
(82, '2018-08-07 11:03:47', '2018-08-07 11:03:47', 'rapid test', '1531267200', 'Negative', '1531267200', 'NLB—No Longer Breastfeeding', 32),
(83, '2018-08-07 11:03:49', '2018-08-07 11:03:49', 'rapid test', '1531267200', 'Negative', '1531267200', 'NLB—No Longer Breastfeeding', 32);

-- --------------------------------------------------------

--
-- Table structure for table `hiv_exposed_infant_visits`
--

CREATE TABLE `hiv_exposed_infant_visits` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `hiv_exposed_infant_id` int(10) UNSIGNED NOT NULL,
  `appointment_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hive_test` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `immunisation_codes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clinical_assessment_spec` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctx_nvp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cotrim` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `infant_feeding` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `z_scores` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actions_taken` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_indicators` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `muac` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Pre_ART_No` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_arv` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `development_milestones` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_circumference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hiv_exposed_infant_visits`
--

INSERT INTO `hiv_exposed_infant_visits` (`id`, `created_at`, `updated_at`, `hiv_exposed_infant_id`, `appointment_date`, `visit_date`, `age`, `visit_name`, `hive_test`, `immunisation_codes`, `clinical_assessment_spec`, `height`, `weight`, `ctx_nvp`, `cotrim`, `infant_feeding`, `z_scores`, `actions_taken`, `other_indicators`, `muac`, `Pre_ART_No`, `mother_arv`, `development_milestones`, `head_circumference`) VALUES
(3, '2018-05-22 09:06:47', '2018-05-22 09:06:47', 4, '1526980007', '1518566400', '1.5', NULL, 'first PCR', 'null', '[\"Well\"]', NULL, '2.5', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'CT,BF,andFREQUENTLY', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(4, '2018-05-22 10:50:27', '2018-05-22 10:50:27', 5, '1526986227', '1524441600', '3', NULL, 'FIRST PCR', '[\"DPT-HepB + Hib2\"]', 'null', NULL, '6', NULL, NULL, 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, '24', NULL, NULL, 'null', NULL),
(5, '2018-05-22 10:50:27', '2018-05-22 10:50:27', 5, '1526986227', '1524441600', '3', NULL, 'FIRST PCR', '[\"DPT-HepB + Hib2\"]', 'null', NULL, '6', NULL, NULL, 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, '24', NULL, NULL, 'null', NULL),
(6, '2018-05-22 10:51:52', '2018-05-22 10:51:52', 5, '1526986312', '1524441600', '3', NULL, 'FIRST PCR', '[\"DPT-HepB + Hib2\"]', '[\"Well\"]', NULL, '6', NULL, 'Yes', 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, '24', NULL, NULL, '[\"SMI\"]', NULL),
(7, '2018-05-22 11:23:36', '2018-05-22 11:23:36', 6, '1526988216', '1519603200', '1', 'VISIT 1', NULL, 'null', '[\"Well\"]', NULL, NULL, NULL, NULL, 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(8, '2018-05-22 11:28:02', '2018-05-22 11:28:02', 6, '1520812800', '1520812800', '1.5', 'VISIT 2', '1st PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, NULL, NULL, NULL, '[\"SMI\",\"HEAD\"]', NULL),
(12, '2018-06-11 12:36:28', '2018-06-11 12:36:28', 9, '1528720588', '1543968000', '1.5', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, '4', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'CT,BF', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(13, '2018-06-11 12:39:26', '2018-06-11 12:39:26', 9, '1522281600', '1524268800', NULL, 'VISIT 2', NULL, 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'CT,BF', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(14, '2018-06-13 08:56:05', '2018-06-13 08:56:05', 11, '1528880165', '1495670400', '1.5', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, '6', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(15, '2018-06-13 08:56:08', '2018-06-13 08:56:08', 11, '1528880168', '1495670400', '1.5', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, '6', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(16, '2018-06-13 09:01:16', '2018-06-13 09:01:16', 11, '1516838400', '1519516800', '8', 'VISIT 5', NULL, 'null', 'null', NULL, NULL, 'No', 'Yes', 'CF—Complementary Feeding (> 6 months)', NULL, NULL, NULL, NULL, NULL, NULL, 'null', NULL),
(17, '2018-06-13 09:01:17', '2018-06-13 09:01:17', 11, '1516838400', '1519516800', '8', 'VISIT 5', NULL, 'null', 'null', NULL, NULL, 'No', 'Yes', 'CF—Complementary Feeding (> 6 months)', NULL, NULL, NULL, NULL, NULL, NULL, 'null', NULL),
(18, '2018-06-13 10:15:24', '2018-06-13 10:15:24', 7, '1528884924', '1523404800', '6', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, '10', 'Yes', 'No', 'CF—Complementary Feeding (> 6 months)', NULL, NULL, NULL, NULL, NULL, NULL, '[\"SIT\"]', NULL),
(19, '2018-06-13 10:15:25', '2018-06-13 10:15:25', 7, '1528884925', '1523404800', '6', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, '10', 'Yes', 'No', 'CF—Complementary Feeding (> 6 months)', NULL, NULL, NULL, NULL, NULL, NULL, '[\"SIT\"]', NULL),
(20, '2018-06-18 09:28:32', '2018-06-18 09:28:32', 13, '1529314112', '1508976000', '7', 'VISIT 1', NULL, 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'NLB—No Longer Breastfeeding', NULL, NULL, NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(21, '2018-06-20 10:21:16', '2018-06-20 10:21:16', 20, '1529490076', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(22, '2018-06-20 10:21:16', '2018-06-20 10:21:16', 20, '1529490076', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(23, '2018-06-20 10:21:17', '2018-06-20 10:21:17', 20, '1529490077', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(24, '2018-06-20 10:21:17', '2018-06-20 10:21:17', 20, '1529490077', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(25, '2018-06-20 10:21:17', '2018-06-20 10:21:17', 20, '1529490077', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(26, '2018-06-20 10:21:18', '2018-06-20 10:21:18', 20, '1529490078', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(27, '2018-06-20 10:21:18', '2018-06-20 10:21:18', 20, '1529490078', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(28, '2018-06-20 10:21:18', '2018-06-20 10:21:18', 20, '1529490078', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(29, '2018-06-20 10:21:18', '2018-06-20 10:21:18', 20, '1529490078', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(30, '2018-06-20 10:21:18', '2018-06-20 10:21:18', 20, '1529490078', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(31, '2018-06-20 10:21:19', '2018-06-20 10:21:19', 20, '1529490079', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(32, '2018-06-20 10:21:19', '2018-06-20 10:21:19', 20, '1529490079', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(33, '2018-06-20 10:21:19', '2018-06-20 10:21:19', 20, '1529490079', '1527465600', '8', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(34, '2018-06-20 10:34:29', '2018-06-20 10:34:29', 21, '1529490869', '1519344000', '1', 'VISIT 1', '1ST PCR', 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(35, '2018-06-26 13:09:45', '2018-06-26 13:09:45', 23, '1530018585', '1536192000', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib2\"]', 'null', NULL, '5', NULL, NULL, 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, NULL, NULL, NULL, 'null', NULL),
(36, '2018-06-26 13:11:37', '2018-06-26 13:11:37', 23, '1530018697', '1536192000', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib2\"]', '[\"Well\"]', NULL, '5', 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(37, '2018-06-26 13:11:52', '2018-06-26 13:11:52', 23, '1530018712', '1536192000', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib2\"]', '[\"Well\"]', NULL, '5', 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(38, '2018-06-26 13:11:52', '2018-06-26 13:11:52', 23, '1530018712', '1536192000', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib2\"]', '[\"Well\"]', NULL, '5', 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(39, '2018-06-26 13:12:03', '2018-06-26 13:12:03', 23, '1530018723', '1536192000', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib2\"]', '[\"Well\"]', NULL, '5', 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(40, '2018-06-26 13:12:03', '2018-06-26 13:12:03', 23, '1530018723', '1536192000', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib2\"]', '[\"Well\"]', NULL, '5', 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(41, '2018-06-26 13:12:03', '2018-06-26 13:12:03', 23, '1530018723', '1536192000', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib2\"]', '[\"Well\"]', NULL, '5', 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(42, '2018-06-26 16:07:18', '2018-06-26 16:07:18', 25, '1530029238', '1544054400', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib3\"]', '[\"Well\"]', NULL, NULL, 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(43, '2018-06-26 16:07:19', '2018-06-26 16:07:19', 25, '1530029239', '1544054400', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib3\"]', '[\"Well\"]', NULL, NULL, 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(44, '2018-06-26 16:07:20', '2018-06-26 16:07:20', 25, '1530029240', '1544054400', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib3\"]', '[\"Well\"]', NULL, NULL, 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(45, '2018-06-26 16:07:20', '2018-06-26 16:07:20', 25, '1530029240', '1544054400', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib3\"]', '[\"Well\"]', NULL, NULL, 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(46, '2018-06-26 16:07:21', '2018-06-26 16:07:21', 25, '1530029241', '1544054400', '3', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib3\"]', '[\"Well\"]', NULL, NULL, 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(47, '2018-06-29 08:32:56', '2018-06-29 08:32:56', 11, '1522281600', '1530230400', '14', 'VISIT 6', '2ND PCR', 'null', '[\"Well\"]', NULL, '10', 'No', 'Yes', 'NLB—No Longer Breastfeeding', NULL, 'KEEP APPOINTMENTS', 'NONE', '25', NULL, NULL, '[\"W\"]', NULL),
(48, '2018-06-29 09:12:14', '2018-06-29 09:12:14', 9, '1529971200', '1530230400', '6', 'visit 3', NULL, '[\"Vitamin A\"]', '[\"Well\"]', NULL, '8', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(49, '2018-06-29 09:46:46', '2018-06-29 09:46:46', 27, '1530265606', '1530230400', '1.5', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib1\"]', '[\"Well\"]', NULL, '5', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', 'NONE', '2.4', NULL, NULL, '[\"SMI\"]', NULL),
(50, '2018-06-29 09:46:47', '2018-06-29 09:46:47', 27, '1530265607', '1530230400', '1.5', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib1\"]', '[\"Well\"]', NULL, '5', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', 'NONE', '2.4', NULL, NULL, '[\"SMI\"]', NULL),
(51, '2018-06-29 09:46:48', '2018-06-29 09:46:48', 27, '1530265608', '1530230400', '1.5', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib1\"]', '[\"Well\"]', NULL, '5', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', 'NONE', '2.4', NULL, NULL, '[\"SMI\"]', NULL),
(52, '2018-06-29 09:46:48', '2018-06-29 09:46:48', 27, '1530265608', '1530230400', '1.5', 'VISIT 1', '1ST PCR', '[\"DPT-HepB + Hib1\"]', '[\"Well\"]', NULL, '5', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', 'NONE', '2.4', NULL, NULL, '[\"SMI\"]', NULL),
(53, '2018-06-29 10:03:32', '2018-06-29 10:03:32', 23, '1530230400', '1530230400', '3.5', 'VISIT 2', '1ST PCR', 'null', '[\"Well\"]', NULL, '6', 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', 'NONE', NULL, NULL, NULL, '[\"SMI\"]', NULL),
(54, '2018-06-29 10:20:59', '2018-06-29 10:20:59', 5, '1535587200', '1530230400', NULL, 'VISIT 2', NULL, 'null', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, NULL, NULL, NULL, NULL, NULL, 'null', NULL),
(57, '2018-07-31 12:00:58', '2018-07-31 12:00:58', 29, '1533038458', '1532908800', '1.5', 'VISIT 1', '1st PCR', '[\"DPT-HepB + Hib1\"]', '[\"Well\"]', NULL, '5', 'Yes', 'No', 'EBF—Exclusive Breastfeeding', NULL, 'NONE', NULL, NULL, NULL, NULL, '[\"SMI\"]', NULL),
(58, '2018-07-31 12:21:46', '2018-07-31 12:21:46', 6, '1532563200', '1532563200', '5', 'VISIT 4', 'NEG', '[\"DPT-HepB + Hib3\"]', '[\"Well\"]', NULL, '8', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'CONT BF', NULL, NULL, NULL, NULL, '[\"CRA\"]', NULL),
(59, '2018-07-31 12:35:15', '2018-07-31 12:35:15', 30, '1533040515', '1530662400', '1.5', 'VISIT 1', '1st PCR', '[\"DPT-HepB + Hib1\"]', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'KEEP APPOINTMENTS', 'NILL', NULL, NULL, NULL, '[\"SMI\"]', NULL),
(60, '2018-08-06 08:46:56', '2018-08-06 08:46:56', 22, '1533545216', '1528848000', '1.5', 'VISIT 1', 'NEG', '[\"DPT-HepB + Hib1\"]', '[\"Well\"]', NULL, NULL, 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NILL', 'NILL', NULL, NULL, NULL, '[\"SMI\"]', NULL),
(61, '2018-08-06 08:49:08', '2018-08-06 08:49:08', 22, '1532563200', '1532563200', '3', 'VISIT 2', 'NEG', '[\"DPT-HepB + Hib2\"]', '[\"Well\"]', NULL, '8', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'NILL', 'NILL', NULL, NULL, NULL, '[\"SIT\"]', NULL),
(62, '2018-08-06 09:25:42', '2018-08-06 09:25:42', 20, '1532563200', '1532563200', '9', 'VISIT 1', '1st PCR', 'null', '[\"Well\"]', NULL, '9', 'No', 'Yes', 'CF—Complementary Feeding (> 6 months)', NULL, 'CONT BF', 'NILL', '16', NULL, NULL, '[\"SIT\"]', NULL),
(63, '2018-08-06 09:25:42', '2018-08-06 09:25:42', 20, '1532563200', '1532563200', '9', 'VISIT 1', '1st PCR', 'null', '[\"Well\"]', NULL, '9', 'No', 'Yes', 'CF—Complementary Feeding (> 6 months)', NULL, 'CONT BF', 'NILL', '16', NULL, NULL, '[\"SIT\"]', NULL),
(64, '2018-08-06 09:25:43', '2018-08-06 09:25:43', 20, '1532563200', '1532563200', '9', 'VISIT 1', '1st PCR', 'null', '[\"Well\"]', NULL, '9', 'No', 'Yes', 'CF—Complementary Feeding (> 6 months)', NULL, 'CONT BF', 'NILL', '16', NULL, NULL, '[\"SIT\"]', NULL),
(65, '2018-08-06 09:25:43', '2018-08-06 09:25:43', 20, '1532563200', '1532563200', '9', 'VISIT 1', '1st PCR', 'null', '[\"Well\"]', NULL, '9', 'No', 'Yes', 'CF—Complementary Feeding (> 6 months)', NULL, 'CONT BF', 'NILL', '16', NULL, NULL, '[\"SIT\"]', NULL),
(66, '2018-08-06 09:25:43', '2018-08-06 09:25:43', 20, '1532563200', '1532563200', '9', 'VISIT 1', '1st PCR', 'null', '[\"Well\"]', NULL, '9', 'No', 'Yes', 'CF—Complementary Feeding (> 6 months)', NULL, 'CONT BF', 'NILL', '16', NULL, NULL, '[\"SIT\"]', NULL),
(67, '2018-08-06 09:25:43', '2018-08-06 09:25:43', 20, '1532563200', '1532563200', '9', 'VISIT 1', '1st PCR', 'null', '[\"Well\"]', NULL, '9', 'No', 'Yes', 'CF—Complementary Feeding (> 6 months)', NULL, 'CONT BF', 'NILL', '16', NULL, NULL, '[\"SIT\"]', NULL),
(68, '2018-08-07 07:53:58', '2018-08-07 07:53:58', 17, '1533628438', '1516838400', '3', 'VISIT 1', '1stPCR', '[\"DPT-HepB + Hib3\"]', '[\"Well\"]', NULL, '6', 'No', 'Yes', 'EBF—Exclusive Breastfeeding', NULL, 'CONT BF', 'NILL', NULL, NULL, NULL, '[\"SIT\"]', NULL),
(69, '2018-08-07 07:57:06', '2018-08-07 07:57:06', 17, '1532563200', '1532563200', NULL, 'VISIT 3', 'NEG', 'null', '[\"Well\"]', NULL, '7.5', 'No', 'Yes', 'CF—Complementary Feeding (> 6 months)', NULL, 'CONT BF', 'NILL', NULL, NULL, NULL, '[\"CRA\"]', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `link_facilitators`
--

CREATE TABLE `link_facilitators` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `link_facilitators`
--

INSERT INTO `link_facilitators` (`id`, `created_at`, `updated_at`, `user_id`) VALUES
(4, '2018-05-18 09:49:29', '2018-05-18 09:49:29', 5),
(5, '2018-05-18 10:08:41', '2018-05-18 10:08:41', 6),
(6, '2018-05-18 10:11:11', '2018-05-18 10:11:11', 7),
(7, '2018-05-18 10:13:02', '2018-05-18 10:13:02', 8),
(8, '2018-05-18 10:14:50', '2018-05-18 10:14:50', 9),
(9, '2018-05-18 10:17:10', '2018-05-18 10:17:10', 10),
(10, '2018-05-18 10:18:32', '2018-05-18 10:18:32', 11),
(11, '2018-05-18 10:20:15', '2018-05-18 10:20:15', 12),
(12, '2018-05-18 10:22:08', '2018-05-18 10:22:08', 13);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_03_05_100909_create_clinics_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2017_10_24_105458_entrust_setup_tables', 1),
(5, '2018_03_05_101613_create_districts_table', 1),
(6, '2018_03_05_101614_create_sub_counties_table', 1),
(7, '2018_03_05_101615_create_parishes_table', 1),
(8, '2018_03_05_101616_create_villages_table', 1),
(9, '2018_03_05_101704_create_district_clinitians_table', 1),
(10, '2018_03_05_102003_create_pt_clinics_table', 1),
(11, '2018_03_05_102240_create_care_entry_points_table', 1),
(12, '2018_03_05_102328_create_hiv_care_art_cards_table', 1),
(13, '2018_03_05_113358_create_prior_a_r_ts_table', 1),
(14, '2018_03_05_113842_create_art_card_regimens_table', 1),
(15, '2018_03_05_115046_create_hiv_care_art_cart_family_members_table', 1),
(16, '2018_03_05_115818_create_follow_up_items_table', 1),
(17, '2018_03_05_115939_create_follow_up_item_records_table', 1),
(18, '2018_03_05_120552_create_hiv_card_rrecords_table', 1),
(19, '2018_03_05_121742_create_art_treatment_interaptions_table', 1),
(20, '2018_03_05_122817_create_fsg_services_table', 1),
(21, '2018_03_05_123017_create_link_facilitators_table', 1),
(22, '2018_03_05_123018_create_family_suport_groups_table', 1),
(23, '2018_03_05_123914_create_falimly_suport_group_registers_table', 1),
(24, '2018_03_05_124910_create_exposed_infant_cares_table', 1),
(25, '2018_03_05_125334_create_children_hiv_statuses_table', 1),
(26, '2018_03_05_130157_create_appointments_table', 1),
(27, '2018_03_05_130724_create_apointment_records_table', 1),
(28, '2018_03_05_131025_create_care_types_table', 1),
(29, '2018_03_05_131959_create_appointment_record_care_types_table', 1),
(30, '2018_03_27_082455_create_family_suport_group_link_facilitators_table', 1),
(31, '2018_03_31_082544_create_communications_table', 1),
(32, '2018_04_07_210106_create_exposed_infant_followups_table', 1),
(33, '2018_04_20_110643_create_attendances_table', 2),
(34, '2018_04_26_111804_Add_Coloms_to_falimly_suport_group_registers', 3),
(35, '2018_04_26_145620_create_family_support_group_register_followups_table', 3),
(38, '2018_05_17_060836_create_hiv_exposed_infants_table', 4),
(39, '2018_05_17_063648_create_hiv_exposed_infant_visits_table', 4),
(40, '2018_05_19_094721_create_hiv_exposed_infant_tesing_informations_table', 4),
(41, '2018_05_19_100741_create_hiv_exposed_infant_followups_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `parishes`
--

CREATE TABLE `parishes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_county_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parishes`
--

INSERT INTO `parishes` (`id`, `created_at`, `updated_at`, `name`, `sub_county_id`) VALUES
(2, '2018-04-23 12:16:24', '2018-04-23 12:16:24', 'KITAZI PARISH', 12),
(3, '2018-04-23 12:17:54', '2018-04-23 12:17:54', 'MALONGWE PARISH', 12),
(4, '2018-04-23 12:18:36', '2018-04-23 12:18:36', 'SSUGU PARISH', 12),
(5, '2018-05-01 13:28:01', '2018-05-01 13:28:01', 'LUWAYO PARISH', 13),
(6, '2018-05-01 14:32:21', '2018-05-01 14:32:21', 'KITEZA', 13),
(7, '2018-05-01 14:44:45', '2018-05-01 14:44:45', 'KIGENDA', 13),
(8, '2018-06-18 15:50:42', '2018-06-18 15:50:42', 'KISAALA', 12),
(9, '2018-07-17 11:09:26', '2018-07-17 11:09:26', 'NGOGWE', 15);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prior_a_r_ts`
--

CREATE TABLE `prior_a_r_ts` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ARVs` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hiv_care_art_card_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prior_a_r_ts`
--

INSERT INTO `prior_a_r_ts` (`id`, `created_at`, `updated_at`, `name`, `date`, `location`, `ARVs`, `hiv_care_art_card_id`) VALUES
(5, '2018-04-24 10:04:50', '2018-04-24 10:04:50', 'PEP', '12/13/2012', 'KASUBI HEALTH CENTRE 3', NULL, 11),
(6, '2018-04-24 11:19:05', '2018-04-24 11:19:05', 'None', NULL, NULL, NULL, 12),
(8, '2018-04-25 08:46:40', '2018-04-25 08:46:40', 'None', NULL, NULL, NULL, 19),
(9, '2018-04-25 09:21:12', '2018-04-25 09:21:12', 'None', NULL, NULL, NULL, 20),
(10, '2018-04-25 11:27:16', '2018-04-25 11:27:16', 'Prior ART', '03/16/2013', 'KASUBI HEALTH CENTER 3', 'NVP SYRUP', 18),
(11, '2018-04-25 11:27:16', '2018-04-25 11:27:16', 'Prior ART', '03/16/2013', 'KASUBI HEALTH CENTER 3', 'NVP SYRUP', 18),
(12, '2018-04-25 11:27:18', '2018-04-25 11:27:18', 'Prior ART', '03/16/2013', 'KASUBI HEALTH CENTER 3', 'NVP SYRUP', 18),
(13, '2018-04-25 11:27:18', '2018-04-25 11:27:18', 'Prior ART', '03/16/2013', 'KASUBI HEALTH CENTER 3', 'NVP SYRUP', 18),
(14, '2018-04-25 11:27:18', '2018-04-25 11:27:18', 'Prior ART', '03/16/2013', 'KASUBI HEALTH CENTER 3', 'NVP SYRUP', 18),
(15, '2018-04-25 11:53:58', '2018-04-25 11:53:58', 'None', NULL, NULL, NULL, 24),
(16, '2018-04-25 14:40:43', '2018-04-25 14:40:43', 'None', NULL, NULL, NULL, 26),
(17, '2018-04-25 15:51:41', '2018-04-25 15:51:41', 'None', NULL, NULL, NULL, 28),
(18, '2018-04-25 16:40:41', '2018-04-25 16:40:41', 'None', NULL, NULL, NULL, 29),
(19, '2018-04-26 06:50:10', '2018-04-26 06:50:10', 'None', NULL, NULL, NULL, 30),
(20, '2018-04-26 08:46:03', '2018-04-26 08:46:03', 'None', NULL, NULL, NULL, 30),
(21, '2018-04-26 10:53:29', '2018-04-26 10:53:29', 'None', NULL, NULL, NULL, 30),
(22, '2018-04-27 08:23:41', '2018-04-27 08:23:41', 'None', NULL, NULL, NULL, 6),
(23, '2018-04-27 08:48:06', '2018-04-27 08:48:06', 'None', NULL, NULL, NULL, 37),
(24, '2018-04-27 09:26:16', '2018-04-27 09:26:16', 'None', NULL, NULL, NULL, 39),
(25, '2018-04-27 09:26:16', '2018-04-27 09:26:16', 'None', NULL, NULL, NULL, 39),
(26, '2018-04-27 09:56:36', '2018-04-27 09:56:36', 'None', NULL, NULL, NULL, 40),
(27, '2018-04-27 10:20:39', '2018-04-27 10:20:39', 'None', NULL, NULL, NULL, 41),
(28, '2018-04-27 10:58:04', '2018-04-27 10:58:04', 'None', NULL, NULL, NULL, 43),
(29, '2018-04-27 11:14:12', '2018-04-27 11:14:12', 'None', NULL, NULL, NULL, 44),
(30, '2018-04-27 11:29:58', '2018-04-27 11:29:58', 'None', NULL, NULL, NULL, 45),
(31, '2018-04-27 11:52:22', '2018-04-27 11:52:22', 'None', NULL, NULL, NULL, 46),
(32, '2018-04-27 12:26:29', '2018-04-27 12:26:29', 'None', NULL, NULL, NULL, 48),
(33, '2018-04-27 12:41:56', '2018-04-27 12:41:56', 'None', NULL, NULL, NULL, 49),
(34, '2018-04-27 12:55:29', '2018-04-27 12:55:29', 'None', NULL, NULL, NULL, 50),
(35, '2018-04-27 13:40:19', '2018-04-27 13:40:19', 'None', NULL, NULL, NULL, 52),
(36, '2018-04-28 08:33:07', '2018-04-28 08:33:07', 'None', NULL, NULL, NULL, 55),
(37, '2018-04-28 09:25:29', '2018-04-28 09:25:29', 'None', NULL, NULL, NULL, 58),
(38, '2018-04-28 09:33:52', '2018-04-28 09:33:52', 'None', NULL, NULL, NULL, 59),
(39, '2018-04-28 10:48:46', '2018-04-28 10:48:46', 'None', NULL, NULL, NULL, 69),
(40, '2018-04-28 11:18:46', '2018-04-28 11:18:46', 'None', NULL, NULL, NULL, 72),
(41, '2018-04-28 11:59:02', '2018-04-28 11:59:02', 'None', NULL, NULL, NULL, 75),
(42, '2018-04-28 12:40:02', '2018-04-28 12:40:02', 'None', NULL, NULL, NULL, 79),
(43, '2018-04-28 13:00:56', '2018-04-28 13:00:56', 'None', NULL, NULL, NULL, 80),
(44, '2018-04-28 13:07:14', '2018-04-28 13:07:14', 'None', NULL, NULL, NULL, 82),
(45, '2018-04-28 14:03:11', '2018-04-28 14:03:11', 'None', NULL, NULL, NULL, 86),
(46, '2018-04-28 14:06:25', '2018-04-28 14:06:25', 'None', NULL, NULL, NULL, 87),
(47, '2018-04-28 14:33:35', '2018-04-28 14:33:35', 'None', NULL, NULL, NULL, 90),
(48, '2018-04-28 15:04:38', '2018-04-28 15:04:38', 'None', NULL, NULL, NULL, 92),
(49, '2018-04-28 15:13:21', '2018-04-28 15:13:21', 'None', NULL, NULL, NULL, 93),
(50, '2018-04-29 07:58:05', '2018-04-29 07:58:05', 'None', NULL, NULL, NULL, 98),
(51, '2018-04-29 07:58:48', '2018-04-29 07:58:48', 'None', NULL, NULL, NULL, 99),
(52, '2018-04-29 08:13:11', '2018-04-29 08:13:11', 'None', NULL, NULL, NULL, 98),
(53, '2018-04-29 08:35:45', '2018-04-29 08:35:45', 'None', NULL, NULL, NULL, 105),
(54, '2018-04-29 08:36:28', '2018-04-29 08:36:28', 'None', NULL, NULL, NULL, 102),
(55, '2018-04-29 08:53:44', '2018-04-29 08:53:44', 'None', NULL, NULL, NULL, 109),
(56, '2018-04-29 09:11:56', '2018-04-29 09:11:56', 'None', NULL, NULL, NULL, 113),
(57, '2018-04-29 09:11:57', '2018-04-29 09:11:57', 'None', NULL, NULL, NULL, 113),
(58, '2018-04-29 09:11:57', '2018-04-29 09:11:57', 'None', NULL, NULL, NULL, 113),
(59, '2018-04-29 09:11:57', '2018-04-29 09:11:57', 'None', NULL, NULL, NULL, 113),
(60, '2018-04-29 09:16:32', '2018-04-29 09:16:32', 'None', NULL, NULL, NULL, 111),
(61, '2018-04-29 09:28:47', '2018-04-29 09:28:47', 'None', NULL, NULL, NULL, 115),
(62, '2018-04-29 09:44:19', '2018-04-29 09:44:19', 'PMTCT only', NULL, 'NAMUGONGO', NULL, 119),
(63, '2018-04-29 09:49:25', '2018-04-29 09:49:25', 'None', NULL, NULL, NULL, 120),
(64, '2018-04-29 10:13:06', '2018-04-29 10:13:06', 'None', NULL, NULL, NULL, 123),
(65, '2018-04-29 10:13:06', '2018-04-29 10:13:06', 'None', NULL, NULL, NULL, 123),
(66, '2018-04-29 10:13:07', '2018-04-29 10:13:07', 'None', NULL, NULL, NULL, 123),
(67, '2018-04-29 10:44:11', '2018-04-29 10:44:11', 'None', NULL, NULL, NULL, 131),
(68, '2018-04-29 10:47:40', '2018-04-29 10:47:40', 'PMTCT only', '02/02/2018', 'KASUBI HEALTH CENTER 3', 'YES', 119),
(69, '2018-04-29 11:02:06', '2018-04-29 11:02:06', 'None', NULL, NULL, NULL, 136),
(70, '2018-04-29 11:07:54', '2018-04-29 11:07:54', 'None', NULL, NULL, NULL, 137),
(71, '2018-04-29 11:35:39', '2018-04-29 11:35:39', 'None', NULL, NULL, NULL, 143),
(72, '2018-04-29 11:39:23', '2018-04-29 11:39:23', 'None', NULL, NULL, NULL, 141),
(73, '2018-04-29 12:50:00', '2018-04-29 12:50:00', 'None', NULL, NULL, NULL, 151),
(74, '2018-04-29 13:09:13', '2018-04-29 13:09:13', 'None', NULL, NULL, NULL, 152),
(75, '2018-04-29 13:11:59', '2018-04-29 13:11:59', 'None', NULL, NULL, NULL, 157),
(76, '2018-04-29 13:37:13', '2018-04-29 13:37:13', 'None', NULL, NULL, NULL, 160),
(77, '2018-04-29 13:49:32', '2018-04-29 13:49:32', 'None', NULL, NULL, NULL, 162),
(78, '2018-04-29 14:01:05', '2018-04-29 14:01:05', 'None', NULL, NULL, NULL, 165),
(79, '2018-04-29 14:14:42', '2018-04-29 14:14:42', 'None', NULL, NULL, NULL, 167),
(80, '2018-04-29 14:23:15', '2018-04-29 14:23:15', 'None', NULL, NULL, NULL, 168),
(81, '2018-04-30 06:37:43', '2018-04-30 06:37:43', 'None', NULL, NULL, NULL, 176),
(82, '2018-04-30 06:37:44', '2018-04-30 06:37:44', 'None', NULL, NULL, NULL, 176),
(83, '2018-04-30 06:54:52', '2018-04-30 06:54:52', 'None', NULL, NULL, NULL, 177),
(84, '2018-04-30 07:10:55', '2018-04-30 07:10:55', 'None', NULL, NULL, NULL, 178),
(85, '2018-04-30 07:29:38', '2018-04-30 07:29:38', 'None', NULL, NULL, NULL, 179),
(86, '2018-04-30 07:52:18', '2018-04-30 07:52:18', 'None', NULL, NULL, NULL, 180),
(87, '2018-04-30 08:10:03', '2018-04-30 08:10:03', 'None', NULL, NULL, NULL, 181),
(88, '2018-04-30 08:27:41', '2018-04-30 08:27:41', 'None', NULL, NULL, NULL, 182),
(89, '2018-04-30 08:51:04', '2018-04-30 08:51:04', 'None', NULL, NULL, NULL, 183),
(90, '2018-04-30 09:07:57', '2018-04-30 09:07:57', 'None', NULL, NULL, NULL, 184),
(91, '2018-04-30 10:38:49', '2018-04-30 10:38:49', 'None', NULL, NULL, NULL, 186),
(92, '2018-04-30 11:04:16', '2018-04-30 11:04:16', 'None', NULL, NULL, NULL, 187),
(93, '2018-04-30 11:40:36', '2018-04-30 11:40:36', 'None', NULL, NULL, NULL, 188),
(94, '2018-04-30 12:13:39', '2018-04-30 12:13:39', 'None', NULL, NULL, NULL, 190),
(95, '2018-04-30 12:50:17', '2018-04-30 12:50:17', 'None', NULL, NULL, NULL, 192),
(96, '2018-04-30 13:11:58', '2018-04-30 13:11:58', 'None', NULL, NULL, NULL, 195),
(97, '2018-04-30 13:43:31', '2018-04-30 13:43:31', 'None', NULL, NULL, NULL, 197),
(98, '2018-05-01 08:45:38', '2018-05-01 08:45:38', 'None', NULL, NULL, NULL, 199),
(99, '2018-05-01 08:50:34', '2018-05-01 08:50:34', 'None', '03/16/2013', 'KASUBI HC3', NULL, 18),
(100, '2018-05-01 09:07:20', '2018-05-01 09:07:20', 'None', NULL, NULL, NULL, 201),
(101, '2018-05-01 09:19:26', '2018-05-01 09:19:26', 'None', NULL, NULL, NULL, 172),
(102, '2018-05-01 09:30:22', '2018-05-01 09:30:22', 'None', NULL, NULL, NULL, 203),
(103, '2018-05-01 09:33:30', '2018-05-01 09:33:30', 'None', NULL, NULL, NULL, 131),
(104, '2018-05-01 09:33:31', '2018-05-01 09:33:31', 'None', NULL, NULL, NULL, 131),
(105, '2018-05-01 09:47:40', '2018-05-01 09:47:40', 'None', NULL, NULL, NULL, 25),
(106, '2018-05-01 09:52:40', '2018-05-01 09:52:40', 'None', NULL, NULL, NULL, 204),
(107, '2018-05-01 10:11:22', '2018-05-01 10:11:22', 'None', NULL, NULL, NULL, 147),
(108, '2018-05-01 10:17:20', '2018-05-01 10:17:20', 'None', NULL, NULL, NULL, 206),
(109, '2018-05-01 10:39:28', '2018-05-01 10:39:28', 'None', NULL, NULL, NULL, 207),
(110, '2018-05-01 10:43:44', '2018-05-01 10:43:44', 'None', NULL, NULL, NULL, 13),
(111, '2018-05-01 11:05:29', '2018-05-01 11:05:29', 'None', NULL, NULL, NULL, 208),
(112, '2018-05-01 11:12:58', '2018-05-01 11:12:58', 'None', NULL, NULL, NULL, 42),
(113, '2018-05-01 11:30:44', '2018-05-01 11:30:44', 'None', NULL, NULL, NULL, 210),
(114, '2018-05-01 11:31:16', '2018-05-01 11:31:16', 'None', NULL, NULL, NULL, 53),
(115, '2018-05-02 07:22:35', '2018-05-02 07:22:35', 'None', NULL, NULL, NULL, 214),
(116, '2018-05-02 08:10:57', '2018-05-02 08:10:57', 'None', NULL, NULL, NULL, 72),
(117, '2018-05-02 10:05:26', '2018-05-02 10:05:26', 'None', NULL, NULL, NULL, 216),
(118, '2018-05-03 08:59:59', '2018-05-03 08:59:59', 'None', NULL, NULL, NULL, 217),
(119, '2018-05-08 08:08:19', '2018-05-08 08:08:19', 'None', NULL, NULL, NULL, 218),
(120, '2018-05-08 08:08:20', '2018-05-08 08:08:20', 'None', NULL, NULL, NULL, 218),
(121, '2018-05-09 07:52:52', '2018-05-09 07:52:52', 'None', NULL, NULL, NULL, 178),
(122, '2018-05-16 08:30:29', '2018-05-16 08:30:29', 'None', NULL, NULL, NULL, 219),
(123, '2018-05-16 08:46:17', '2018-05-16 08:46:17', 'None', NULL, NULL, NULL, 220),
(124, '2018-05-16 09:16:48', '2018-05-16 09:16:48', 'None', NULL, NULL, NULL, 221),
(125, '2018-05-16 09:36:48', '2018-05-16 09:36:48', 'None', NULL, NULL, NULL, 158),
(126, '2018-05-16 09:36:48', '2018-05-16 09:36:48', 'None', NULL, NULL, NULL, 158),
(127, '2018-05-16 09:51:42', '2018-05-16 09:51:42', 'None', NULL, NULL, NULL, 93),
(128, '2018-05-16 10:06:02', '2018-05-16 10:06:02', 'None', NULL, NULL, NULL, 196),
(129, '2018-05-16 10:28:03', '2018-05-16 10:28:03', 'None', NULL, NULL, NULL, 208),
(130, '2018-05-16 12:12:08', '2018-05-16 12:12:08', 'None', NULL, NULL, NULL, 222),
(131, '2018-05-21 10:59:18', '2018-05-21 10:59:18', 'None', NULL, NULL, NULL, 92),
(132, '2018-05-21 11:34:16', '2018-05-21 11:34:16', 'None', NULL, NULL, NULL, 192),
(133, '2018-05-21 11:38:39', '2018-05-21 11:38:39', 'None', NULL, NULL, NULL, 192),
(134, '2018-06-11 11:34:02', '2018-06-11 11:34:02', 'None', NULL, NULL, NULL, 223),
(135, '2018-06-13 10:27:37', '2018-06-13 10:27:37', 'None', NULL, NULL, NULL, 225),
(136, '2018-06-18 16:25:05', '2018-06-18 16:25:05', 'None', NULL, NULL, NULL, 233),
(137, '2018-06-18 16:25:06', '2018-06-18 16:25:06', 'None', NULL, NULL, NULL, 233),
(138, '2018-06-18 16:25:06', '2018-06-18 16:25:06', 'None', NULL, NULL, NULL, 233),
(139, '2018-06-26 17:19:42', '2018-06-26 17:19:42', 'None', NULL, NULL, NULL, 238),
(140, '2018-06-26 17:51:38', '2018-06-26 17:51:38', 'None', NULL, NULL, NULL, 239),
(141, '2018-06-26 17:51:40', '2018-06-26 17:51:40', 'None', NULL, NULL, NULL, 239),
(142, '2018-06-27 07:43:13', '2018-06-27 07:43:13', 'None', NULL, NULL, NULL, 240),
(143, '2018-06-27 08:03:54', '2018-06-27 08:03:54', 'None', NULL, NULL, NULL, 55),
(144, '2018-06-27 08:03:54', '2018-06-27 08:03:54', 'None', NULL, NULL, NULL, 55),
(145, '2018-06-27 08:03:55', '2018-06-27 08:03:55', 'None', NULL, NULL, NULL, 55),
(146, '2018-06-27 09:33:56', '2018-06-27 09:33:56', 'None', NULL, NULL, NULL, 241),
(147, '2018-06-27 10:13:45', '2018-06-27 10:13:45', 'None', NULL, NULL, NULL, 242),
(148, '2018-06-27 14:28:40', '2018-06-27 14:28:40', 'None', NULL, NULL, NULL, 243),
(153, '2018-06-27 15:48:21', '2018-06-27 15:48:21', 'None', NULL, NULL, NULL, 243),
(154, '2018-06-27 15:48:22', '2018-06-27 15:48:22', 'None', NULL, NULL, NULL, 243),
(156, '2018-06-28 15:11:27', '2018-06-28 15:11:27', 'None', NULL, NULL, NULL, 246),
(157, '2018-06-28 15:11:27', '2018-06-28 15:11:27', 'None', NULL, NULL, NULL, 246),
(158, '2018-06-28 15:56:29', '2018-06-28 15:56:29', 'None', NULL, NULL, NULL, 247),
(159, '2018-06-30 13:21:35', '2018-06-30 13:21:35', 'None', NULL, NULL, NULL, 248),
(160, '2018-07-04 10:12:18', '2018-07-04 10:12:18', 'Transfer in with records', NULL, NULL, NULL, 249),
(161, '2018-07-18 06:37:47', '2018-07-18 06:37:47', 'None', NULL, NULL, NULL, 250),
(162, '2018-07-18 07:01:55', '2018-07-18 07:01:55', 'None', NULL, NULL, NULL, 251),
(163, '2018-07-18 07:13:15', '2018-07-18 07:13:15', 'None', NULL, NULL, NULL, 252),
(164, '2018-07-18 08:04:29', '2018-07-18 08:04:29', 'None', NULL, NULL, NULL, 253),
(165, '2018-07-23 08:27:01', '2018-07-23 08:27:01', 'None', NULL, NULL, NULL, 256),
(166, '2018-07-30 12:10:14', '2018-07-30 12:10:14', 'None', NULL, NULL, NULL, 223),
(167, '2018-07-30 12:24:31', '2018-07-30 12:24:31', 'None', NULL, NULL, NULL, 258),
(168, '2018-07-30 14:38:15', '2018-07-30 14:38:15', 'None', NULL, NULL, NULL, 259),
(169, '2018-07-30 15:16:01', '2018-07-30 15:16:01', 'None', NULL, NULL, NULL, 260),
(170, '2018-07-31 09:43:41', '2018-07-31 09:43:41', 'None', NULL, NULL, NULL, 262),
(171, '2018-07-31 09:43:45', '2018-07-31 09:43:45', 'None', NULL, NULL, NULL, 262),
(172, '2018-07-31 09:43:45', '2018-07-31 09:43:45', 'None', NULL, NULL, NULL, 262),
(173, '2018-07-31 09:43:45', '2018-07-31 09:43:45', 'None', NULL, NULL, NULL, 262),
(174, '2018-08-13 09:34:19', '2018-08-13 09:34:19', 'None', NULL, NULL, NULL, 263),
(175, '2018-08-15 10:39:16', '2018-08-15 10:39:16', 'None', NULL, NULL, NULL, 264),
(176, '2018-08-15 10:57:11', '2018-08-15 10:57:11', 'None', NULL, NULL, NULL, 265),
(177, '2018-08-20 11:26:41', '2018-08-20 11:26:41', 'None', NULL, NULL, NULL, 266),
(178, '2018-08-20 11:43:18', '2018-08-20 11:43:18', 'None', NULL, NULL, NULL, 267),
(179, '2018-08-21 07:20:00', '2018-08-21 07:20:00', 'None', NULL, NULL, NULL, 268),
(180, '2018-08-21 08:26:27', '2018-08-21 08:26:27', 'None', NULL, NULL, NULL, 271),
(181, '2018-08-23 10:53:51', '2018-08-23 10:53:51', 'None', NULL, NULL, NULL, 277),
(182, '2018-08-23 11:15:51', '2018-08-23 11:15:51', 'None', NULL, NULL, NULL, 278),
(192, '2018-09-04 08:59:09', '2018-09-04 08:59:09', 'None', NULL, NULL, NULL, 280),
(193, '2018-09-04 09:12:54', '2018-09-04 09:12:54', 'None', NULL, NULL, NULL, 281),
(194, '2018-12-05 19:39:55', '2018-12-05 19:39:55', 'None', NULL, NULL, NULL, 282),
(195, '2018-12-05 19:53:42', '2018-12-05 19:53:42', 'None', NULL, NULL, NULL, 283),
(196, '2018-12-05 20:16:11', '2018-12-05 20:16:11', 'None', NULL, NULL, NULL, 284),
(197, '2018-12-05 20:25:58', '2018-12-05 20:25:58', 'None', NULL, NULL, NULL, 285),
(198, '2018-12-05 21:13:03', '2018-12-05 21:13:03', 'None', NULL, NULL, NULL, 287),
(199, '2018-12-05 21:25:58', '2018-12-05 21:25:58', 'None', NULL, NULL, NULL, 288),
(200, '2018-12-12 21:23:39', '2018-12-12 21:23:39', 'None', NULL, NULL, NULL, 289);

-- --------------------------------------------------------

--
-- Table structure for table `pt_clinics`
--

CREATE TABLE `pt_clinics` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pt_clinics`
--

INSERT INTO `pt_clinics` (`id`, `created_at`, `updated_at`, `name`, `number`, `description`, `district_id`) VALUES
(3, '2018-04-23 12:23:18', '2018-04-23 12:23:18', 'KASUBI HEALTH CENTRE 3', 'NONE', 'NONE', 4);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(4, 'main_admin', 'Main Administrator', 'Has supper accessibility to the entire system', '2018-04-16 06:45:39', '2018-04-16 06:45:39'),
(5, 'link_facilitator', 'Link facilitator', 'This is a village person that cordinates the other HIV patients', '2018-04-16 06:45:39', '2018-04-16 06:45:39'),
(6, 'user', 'Normal User', 'This is a general User', '2018-04-16 06:45:39', '2018-04-16 06:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 4),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sub_counties`
--

CREATE TABLE `sub_counties` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_counties`
--

INSERT INTO `sub_counties` (`id`, `created_at`, `updated_at`, `name`, `district_id`) VALUES
(12, '2018-04-23 12:15:15', '2018-04-23 12:15:15', 'BUIKWE SUB-COUNTY', 4),
(13, '2018-05-01 13:20:42', '2018-05-01 13:20:42', 'KAWOLO SUB-COUNTY', 4),
(14, '2018-05-01 13:20:42', '2018-05-01 13:20:42', 'KAWOLO SUB-COUNTY', 4),
(15, '2018-07-17 11:07:42', '2018-07-17 11:07:42', 'NGOGWE SUB-COUNTY', 4),
(16, '2018-08-06 08:57:47', '2018-08-06 08:57:47', 'NGOGWE', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clinic_id` int(10) UNSIGNED DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile_password`, `phone_number`, `address`, `picture`, `clinic_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'M-Appoint Admin', 'mappoint@admin.com', '$2y$10$.8M.qK142gOicPMIvEsaIelMRu8M1WXEwZYuK348sxfcJs8I/hQHu', '98676', NULL, NULL, NULL, NULL, '4CJbPDALGW7bhjGQuRl4wiEOYqisv8FHL4MIhUmcihNysEeAub8A9Bb16k8u', '2018-04-16 06:45:39', '2019-01-01 07:17:40'),
(2, 'Samson Tusiime', 'tusiimesam@gmail.com', '$2y$10$1E3HB7DN90.tLf8kgq1jjuGLVtNmjFOrGpjktL7iKmJ51n.f9Yw96', 'agxnm', '+256775926572', '1', NULL, NULL, NULL, '2018-04-16 11:49:25', '2018-04-19 10:03:59'),
(3, 'BUKENYA DEBORAH', 'bukenyadeb2018@gmail.com', '$2y$10$I3tZ9HHVCtombNY.xRZoiuoGjTnV5o0mEp.SjxJt80TAAIZwscnmC', '63286', '256778283353', '3', NULL, NULL, 'xafxpr9KY6q1syjxMKUVDM30ezIIhaTAqErZ4iyGthsPD5HlnnfH9TavOOeW', '2018-04-23 13:33:56', '2018-05-15 06:11:18'),
(4, 'Some User Name', 'some@user.co', '$2y$10$QoYilDnbxKrb6dzLuY8AS.fDDg9CD0U9aldMt1eWezVr8BMF7THzi', '14545', '256787444081', '4', NULL, NULL, NULL, '2018-05-15 06:13:28', '2018-05-15 06:13:28'),
(5, 'Mukandekezi Harriet', 'mukandekezi@gmail.com', '$2y$10$BjO1nczWkgQAyyZpflODgeNOqijqDvfJntLMN5WiKq/1.IrydXUEm', '93894', '256771898532', '3', NULL, NULL, NULL, '2018-05-18 09:49:29', '2018-05-18 09:49:29'),
(6, 'Kavakule Pascal', 'kavakule@gmail.com', '$2y$10$VCIeSWzGruRkfvcRDXMQSuZdhFNmKvBZmNULcIGNYQcSfeVLLls0q', '92496', '256758282268', '22', NULL, NULL, NULL, '2018-05-18 10:08:41', '2018-10-23 13:03:59'),
(7, 'Logoose Sarah', 'logoosesarah@gmail.com', '$2y$10$IWsQXmWeCYBl2aiZTuzgGeEjyrbJMHP/AgkC5.3vBTcMw2nuTphZm', '25723', '256783866274', '12', NULL, NULL, NULL, '2018-05-18 10:11:11', '2018-10-23 12:57:29'),
(8, 'Naluyinda Jesca', 'naluyinda@gmail.com', '$2y$10$AJCi6Wn4AR6bKiprVqtbB.o1jx9cU0Ty3ryV9oJY5EJUAn55Hu0ci', '33644', '256786373581', '3', NULL, NULL, NULL, '2018-05-18 10:13:02', '2018-05-18 10:13:02'),
(9, 'Nakimera Ritah', 'nakimera@gmail.com', '$2y$10$vTsE.qmJnPkWdulA/cn.sudUWWBIV7mYUwyGqfYf6tWUfJBDwY/Ly', '36655', '256783861530', '12', NULL, NULL, NULL, '2018-05-18 10:14:50', '2018-10-23 13:07:04'),
(10, 'Nantongo Annet', 'nantongo@gmail.com', '$2y$10$5ugh2BdCrflmkRZmOU8DE.lMi473sFgd8oHxFsB2mJMp5n7/MgfF2', '13144', '256774180753', '15', NULL, NULL, NULL, '2018-05-18 10:17:10', '2018-05-18 10:17:10'),
(11, 'Namande Prossy', 'namande@gmail.com', '$2y$10$7xqMTPWfr.3VWg6x0iZtHuhnf3hGEt.xzmDJQEoPtR7HeECTb7HxC', '38685', '256759706732', '13', NULL, NULL, NULL, '2018-05-18 10:18:32', '2018-05-18 10:18:32'),
(12, 'Nabweteme Prossy', 'nabweteme@gmail.com', '$2y$10$HrMDMJotak0qH50mlM53fuNt1Tw1XzwRyC7JCejCEKAGEooJKPpL.', '13995', '256756321552', '3', NULL, NULL, NULL, '2018-05-18 10:20:15', '2018-05-18 10:20:15'),
(13, 'Kyobe Richard', 'kyoberichard@gmail.com', '$2y$10$ZqOpsLeUSGw.XUs/7c5uR.SP.Ay11OfXKOzISfBg/Kv77ZDSxORIO', '34899', '256774254806', '7', NULL, NULL, NULL, '2018-05-18 10:22:08', '2018-05-18 10:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `villages`
--

CREATE TABLE `villages` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parish_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villages`
--

INSERT INTO `villages` (`id`, `created_at`, `updated_at`, `name`, `parish_id`) VALUES
(3, '2018-04-23 12:19:50', '2018-04-23 12:19:50', 'KASUBI TOWN', 2),
(4, '2018-04-23 12:20:48', '2018-04-23 12:20:48', 'KASUBI VILLAGE', 2),
(5, '2018-05-01 12:53:47', '2018-05-01 12:53:47', 'KYANJA', 2),
(6, '2018-05-01 12:55:02', '2018-05-01 12:55:02', 'KOBA', 2),
(7, '2018-05-01 12:55:49', '2018-05-01 12:55:49', 'KIKOMA-KITAZI', 2),
(8, '2018-05-01 12:56:32', '2018-05-01 12:56:32', 'LUWOMBO', 2),
(9, '2018-05-01 12:56:33', '2018-05-01 12:56:33', 'LUWOMBO', 2),
(10, '2018-05-01 12:57:14', '2018-05-01 12:57:14', 'NAKIKUNYU', 2),
(11, '2018-05-01 13:00:05', '2018-05-01 13:00:05', 'NAKATYABA', 4),
(12, '2018-05-01 13:00:36', '2018-05-01 13:00:36', 'MATALE', 4),
(13, '2018-05-01 13:02:18', '2018-05-01 13:02:18', 'SSUGU KIRANGIRA', 4),
(14, '2018-05-01 13:02:54', '2018-05-01 13:02:54', 'KIKOMA A', 4),
(15, '2018-05-01 13:03:31', '2018-05-01 13:03:31', 'KIKOMA B', 4),
(16, '2018-05-01 13:15:42', '2018-05-01 13:15:42', 'SSUGU MUTWE', 4),
(17, '2018-05-01 13:16:49', '2018-05-01 13:16:49', 'MAKONGE', 3),
(18, '2018-05-01 13:28:37', '2018-05-01 13:28:37', 'NAMUGONGO', 5),
(19, '2018-05-01 13:29:07', '2018-05-01 13:29:07', 'WANANDA', 5),
(20, '2018-05-01 13:29:41', '2018-05-01 13:29:41', 'LUWAYO', 5),
(21, '2018-05-01 13:30:15', '2018-05-01 13:30:15', 'KIGENDA', 5),
(22, '2018-05-01 13:38:31', '2018-05-01 13:38:31', 'NAMALIGA', 5),
(23, '2018-05-01 13:53:26', '2018-05-01 13:53:26', 'KIGALI', 5),
(24, '2018-05-01 14:01:10', '2018-05-01 14:01:10', 'BUVUMA', 5),
(25, '2018-05-01 14:14:29', '2018-05-01 14:14:29', 'NSENYA', 5),
(26, '2018-05-01 14:32:47', '2018-05-01 14:32:47', 'KITEZA', 6),
(27, '2018-05-01 14:39:57', '2018-05-01 14:39:57', 'KASOKOSO', 5),
(28, '2018-05-01 14:45:14', '2018-05-01 14:45:14', 'KIGENDA', 7),
(29, '2018-05-01 15:04:38', '2018-05-01 15:04:38', 'MALONGWE', 3),
(30, '2018-05-01 15:07:08', '2018-05-01 15:07:08', 'KYAMBOGO', 3),
(31, '2018-05-01 15:21:31', '2018-05-01 15:21:31', 'KISU', 5),
(32, '2018-06-18 10:42:33', '2018-06-18 10:42:33', 'KISAALA', 3),
(33, '2018-07-17 11:11:17', '2018-07-17 11:11:17', 'KAWUNA', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apointment_records`
--
ALTER TABLE `apointment_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apointment_records_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`),
  ADD KEY `apointment_records_appointment_id_foreign` (`appointment_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_family_suport_group_id_foreign` (`family_suport_group_id`);

--
-- Indexes for table `appointment_record_care_types`
--
ALTER TABLE `appointment_record_care_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointment_record_care_types_care_type_id_foreign` (`care_type_id`),
  ADD KEY `appointment_record_care_types_apointment_record_id_foreign` (`apointment_record_id`);

--
-- Indexes for table `art_card_regimens`
--
ALTER TABLE `art_card_regimens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `art_card_regimens_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`);

--
-- Indexes for table `art_treatment_interaptions`
--
ALTER TABLE `art_treatment_interaptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `art_treatment_interaptions_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`),
  ADD KEY `attendances_appointment_id_foreign` (`appointment_id`);

--
-- Indexes for table `care_entry_points`
--
ALTER TABLE `care_entry_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `care_types`
--
ALTER TABLE `care_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `children_hiv_statuses`
--
ALTER TABLE `children_hiv_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `children_hiv_statuses_falimly_suport_group_register_id_foreign` (`falimly_suport_group_register_id`);

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communications`
--
ALTER TABLE `communications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `communications_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`),
  ADD KEY `communications_appointment_id_foreign` (`appointment_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district_clinitians`
--
ALTER TABLE `district_clinitians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_clinitians_district_id_foreign` (`district_id`);

--
-- Indexes for table `exposed_infant_cares`
--
ALTER TABLE `exposed_infant_cares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exposed_infant_cares_falimly_suport_group_register_id_foreign` (`falimly_suport_group_register_id`);

--
-- Indexes for table `exposed_infant_followups`
--
ALTER TABLE `exposed_infant_followups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `exposed_infant_followups_unique_id_unique` (`unique_id`),
  ADD KEY `exposed_infant_followups_hivcareartcard_id_foreign` (`HivCareArtCard_id`);

--
-- Indexes for table `falimly_suport_group_registers`
--
ALTER TABLE `falimly_suport_group_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `falimly_suport_group_registers_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`),
  ADD KEY `falimly_suport_group_registers_fsg_service_id_foreign` (`fsg_service_id`),
  ADD KEY `falimly_suport_group_registers_family_suport_group_id_foreign` (`family_suport_group_id`);

--
-- Indexes for table `family_suport_groups`
--
ALTER TABLE `family_suport_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family_suport_group_link_facilitators`
--
ALTER TABLE `family_suport_group_link_facilitators`
  ADD PRIMARY KEY (`fs_group_id`,`lf_id`),
  ADD KEY `family_suport_group_link_facilitators_lf_id_foreign` (`lf_id`);

--
-- Indexes for table `family_support_group_register_followups`
--
ALTER TABLE `family_support_group_register_followups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `family_support_group_register_followups_fsgr_id_foreign` (`fsgr_id`);

--
-- Indexes for table `follow_up_items`
--
ALTER TABLE `follow_up_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follow_up_items_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`);

--
-- Indexes for table `follow_up_item_records`
--
ALTER TABLE `follow_up_item_records`
  ADD PRIMARY KEY (`id`),
  ADD KEY `follow_up_item_records_follow_up_item_id_foreign` (`follow_up_item_id`);

--
-- Indexes for table `fsg_services`
--
ALTER TABLE `fsg_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hiv_card_rrecords`
--
ALTER TABLE `hiv_card_rrecords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hiv_card_rrecords_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`),
  ADD KEY `hiv_card_rrecords_user_id_foreign` (`user_id`);

--
-- Indexes for table `hiv_care_art_cards`
--
ALTER TABLE `hiv_care_art_cards`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hiv_care_art_cards_patientnumber_unique` (`PatientNumber`),
  ADD KEY `hiv_care_art_cards_village_id_foreign` (`village_id`),
  ADD KEY `hiv_care_art_cards_pt_clinic_id_foreign` (`pt_clinic_id`),
  ADD KEY `hiv_care_art_cards_care_entry_point_id_foreign` (`care_entry_point_id`),
  ADD KEY `hiv_care_art_cards_district_clinitian_id_foreign` (`district_clinitian_id`);

--
-- Indexes for table `hiv_care_art_cart_family_members`
--
ALTER TABLE `hiv_care_art_cart_family_members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hiv_care_art_cart_family_members_family_members_number_unique` (`family_members_number`),
  ADD KEY `hiv_care_art_cart_family_members_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`);

--
-- Indexes for table `hiv_exposed_infants`
--
ALTER TABLE `hiv_exposed_infants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hiv_exposed_infants_infant_number_unique` (`infant_number`),
  ADD KEY `hiv_exposed_infants_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`),
  ADD KEY `hiv_exposed_infants_pt_clinic_id_foreign` (`pt_clinic_id`),
  ADD KEY `hiv_exposed_infants_village_id_foreign` (`village_id`);

--
-- Indexes for table `hiv_exposed_infant_followups`
--
ALTER TABLE `hiv_exposed_infant_followups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hiv_exposed_infant_followups_hiv_exposed_infant_id_foreign` (`hiv_exposed_infant_id`);

--
-- Indexes for table `hiv_exposed_infant_tesing_informations`
--
ALTER TABLE `hiv_exposed_infant_tesing_informations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hiv_exposed_infant_tesing_informations_hivei_id_foreign` (`hivei_id`);

--
-- Indexes for table `hiv_exposed_infant_visits`
--
ALTER TABLE `hiv_exposed_infant_visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hiv_exposed_infant_visits_hiv_exposed_infant_id_foreign` (`hiv_exposed_infant_id`);

--
-- Indexes for table `link_facilitators`
--
ALTER TABLE `link_facilitators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_facilitators_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parishes`
--
ALTER TABLE `parishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parishes_sub_county_id_foreign` (`sub_county_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `prior_a_r_ts`
--
ALTER TABLE `prior_a_r_ts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prior_a_r_ts_hiv_care_art_card_id_foreign` (`hiv_care_art_card_id`);

--
-- Indexes for table `pt_clinics`
--
ALTER TABLE `pt_clinics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pt_clinics_district_id_foreign` (`district_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sub_counties`
--
ALTER TABLE `sub_counties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_counties_district_id_foreign` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `phone_number` (`phone_number`),
  ADD KEY `users_clinic_id_foreign` (`clinic_id`);

--
-- Indexes for table `villages`
--
ALTER TABLE `villages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `villages_parish_id_foreign` (`parish_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apointment_records`
--
ALTER TABLE `apointment_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `appointment_record_care_types`
--
ALTER TABLE `appointment_record_care_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `art_card_regimens`
--
ALTER TABLE `art_card_regimens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `art_treatment_interaptions`
--
ALTER TABLE `art_treatment_interaptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `care_entry_points`
--
ALTER TABLE `care_entry_points`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `care_types`
--
ALTER TABLE `care_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `children_hiv_statuses`
--
ALTER TABLE `children_hiv_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `communications`
--
ALTER TABLE `communications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=655;
--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `district_clinitians`
--
ALTER TABLE `district_clinitians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exposed_infant_cares`
--
ALTER TABLE `exposed_infant_cares`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exposed_infant_followups`
--
ALTER TABLE `exposed_infant_followups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `falimly_suport_group_registers`
--
ALTER TABLE `falimly_suport_group_registers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT for table `family_suport_groups`
--
ALTER TABLE `family_suport_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `family_support_group_register_followups`
--
ALTER TABLE `family_support_group_register_followups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `follow_up_items`
--
ALTER TABLE `follow_up_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `follow_up_item_records`
--
ALTER TABLE `follow_up_item_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fsg_services`
--
ALTER TABLE `fsg_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `hiv_card_rrecords`
--
ALTER TABLE `hiv_card_rrecords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1382;
--
-- AUTO_INCREMENT for table `hiv_care_art_cards`
--
ALTER TABLE `hiv_care_art_cards`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;
--
-- AUTO_INCREMENT for table `hiv_care_art_cart_family_members`
--
ALTER TABLE `hiv_care_art_cart_family_members`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;
--
-- AUTO_INCREMENT for table `hiv_exposed_infants`
--
ALTER TABLE `hiv_exposed_infants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `hiv_exposed_infant_followups`
--
ALTER TABLE `hiv_exposed_infant_followups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `hiv_exposed_infant_tesing_informations`
--
ALTER TABLE `hiv_exposed_infant_tesing_informations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `hiv_exposed_infant_visits`
--
ALTER TABLE `hiv_exposed_infant_visits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `link_facilitators`
--
ALTER TABLE `link_facilitators`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `parishes`
--
ALTER TABLE `parishes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prior_a_r_ts`
--
ALTER TABLE `prior_a_r_ts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `pt_clinics`
--
ALTER TABLE `pt_clinics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sub_counties`
--
ALTER TABLE `sub_counties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `villages`
--
ALTER TABLE `villages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `apointment_records`
--
ALTER TABLE `apointment_records`
  ADD CONSTRAINT `apointment_records_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apointment_records_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_family_suport_group_id_foreign` FOREIGN KEY (`family_suport_group_id`) REFERENCES `family_suport_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `appointment_record_care_types`
--
ALTER TABLE `appointment_record_care_types`
  ADD CONSTRAINT `appointment_record_care_types_apointment_record_id_foreign` FOREIGN KEY (`apointment_record_id`) REFERENCES `apointment_records` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appointment_record_care_types_care_type_id_foreign` FOREIGN KEY (`care_type_id`) REFERENCES `care_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `art_card_regimens`
--
ALTER TABLE `art_card_regimens`
  ADD CONSTRAINT `art_card_regimens_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `art_treatment_interaptions`
--
ALTER TABLE `art_treatment_interaptions`
  ADD CONSTRAINT `art_treatment_interaptions_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendances_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `children_hiv_statuses`
--
ALTER TABLE `children_hiv_statuses`
  ADD CONSTRAINT `children_hiv_statuses_falimly_suport_group_register_id_foreign` FOREIGN KEY (`falimly_suport_group_register_id`) REFERENCES `falimly_suport_group_registers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `communications`
--
ALTER TABLE `communications`
  ADD CONSTRAINT `communications_appointment_id_foreign` FOREIGN KEY (`appointment_id`) REFERENCES `appointments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `communications_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `district_clinitians`
--
ALTER TABLE `district_clinitians`
  ADD CONSTRAINT `district_clinitians_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exposed_infant_cares`
--
ALTER TABLE `exposed_infant_cares`
  ADD CONSTRAINT `exposed_infant_cares_falimly_suport_group_register_id_foreign` FOREIGN KEY (`falimly_suport_group_register_id`) REFERENCES `falimly_suport_group_registers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `exposed_infant_followups`
--
ALTER TABLE `exposed_infant_followups`
  ADD CONSTRAINT `exposed_infant_followups_hivcareartcard_id_foreign` FOREIGN KEY (`HivCareArtCard_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `falimly_suport_group_registers`
--
ALTER TABLE `falimly_suport_group_registers`
  ADD CONSTRAINT `falimly_suport_group_registers_family_suport_group_id_foreign` FOREIGN KEY (`family_suport_group_id`) REFERENCES `family_suport_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `falimly_suport_group_registers_fsg_service_id_foreign` FOREIGN KEY (`fsg_service_id`) REFERENCES `fsg_services` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `falimly_suport_group_registers_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `family_suport_group_link_facilitators`
--
ALTER TABLE `family_suport_group_link_facilitators`
  ADD CONSTRAINT `family_suport_group_link_facilitators_fs_group_id_foreign` FOREIGN KEY (`fs_group_id`) REFERENCES `family_suport_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `family_suport_group_link_facilitators_lf_id_foreign` FOREIGN KEY (`lf_id`) REFERENCES `link_facilitators` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `family_support_group_register_followups`
--
ALTER TABLE `family_support_group_register_followups`
  ADD CONSTRAINT `family_support_group_register_followups_fsgr_id_foreign` FOREIGN KEY (`fsgr_id`) REFERENCES `falimly_suport_group_registers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follow_up_items`
--
ALTER TABLE `follow_up_items`
  ADD CONSTRAINT `follow_up_items_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `follow_up_item_records`
--
ALTER TABLE `follow_up_item_records`
  ADD CONSTRAINT `follow_up_item_records_follow_up_item_id_foreign` FOREIGN KEY (`follow_up_item_id`) REFERENCES `follow_up_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hiv_card_rrecords`
--
ALTER TABLE `hiv_card_rrecords`
  ADD CONSTRAINT `hiv_card_rrecords_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hiv_card_rrecords_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hiv_care_art_cards`
--
ALTER TABLE `hiv_care_art_cards`
  ADD CONSTRAINT `hiv_care_art_cards_care_entry_point_id_foreign` FOREIGN KEY (`care_entry_point_id`) REFERENCES `care_entry_points` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hiv_care_art_cards_district_clinitian_id_foreign` FOREIGN KEY (`district_clinitian_id`) REFERENCES `district_clinitians` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hiv_care_art_cards_pt_clinic_id_foreign` FOREIGN KEY (`pt_clinic_id`) REFERENCES `pt_clinics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hiv_care_art_cards_village_id_foreign` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hiv_care_art_cart_family_members`
--
ALTER TABLE `hiv_care_art_cart_family_members`
  ADD CONSTRAINT `hiv_care_art_cart_family_members_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hiv_exposed_infants`
--
ALTER TABLE `hiv_exposed_infants`
  ADD CONSTRAINT `hiv_exposed_infants_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hiv_exposed_infants_pt_clinic_id_foreign` FOREIGN KEY (`pt_clinic_id`) REFERENCES `pt_clinics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hiv_exposed_infants_village_id_foreign` FOREIGN KEY (`village_id`) REFERENCES `villages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hiv_exposed_infant_followups`
--
ALTER TABLE `hiv_exposed_infant_followups`
  ADD CONSTRAINT `hiv_exposed_infant_followups_hiv_exposed_infant_id_foreign` FOREIGN KEY (`hiv_exposed_infant_id`) REFERENCES `hiv_exposed_infants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hiv_exposed_infant_tesing_informations`
--
ALTER TABLE `hiv_exposed_infant_tesing_informations`
  ADD CONSTRAINT `hiv_exposed_infant_tesing_informations_hivei_id_foreign` FOREIGN KEY (`hivei_id`) REFERENCES `hiv_exposed_infants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hiv_exposed_infant_visits`
--
ALTER TABLE `hiv_exposed_infant_visits`
  ADD CONSTRAINT `hiv_exposed_infant_visits_hiv_exposed_infant_id_foreign` FOREIGN KEY (`hiv_exposed_infant_id`) REFERENCES `hiv_exposed_infants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `link_facilitators`
--
ALTER TABLE `link_facilitators`
  ADD CONSTRAINT `link_facilitators_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `parishes`
--
ALTER TABLE `parishes`
  ADD CONSTRAINT `parishes_sub_county_id_foreign` FOREIGN KEY (`sub_county_id`) REFERENCES `sub_counties` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prior_a_r_ts`
--
ALTER TABLE `prior_a_r_ts`
  ADD CONSTRAINT `prior_a_r_ts_hiv_care_art_card_id_foreign` FOREIGN KEY (`hiv_care_art_card_id`) REFERENCES `hiv_care_art_cards` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pt_clinics`
--
ALTER TABLE `pt_clinics`
  ADD CONSTRAINT `pt_clinics_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_counties`
--
ALTER TABLE `sub_counties`
  ADD CONSTRAINT `sub_counties_district_id_foreign` FOREIGN KEY (`district_id`) REFERENCES `districts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_clinic_id_foreign` FOREIGN KEY (`clinic_id`) REFERENCES `clinics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `villages`
--
ALTER TABLE `villages`
  ADD CONSTRAINT `villages_parish_id_foreign` FOREIGN KEY (`parish_id`) REFERENCES `parishes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
