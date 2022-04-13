-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Kwi 2022, 12:22
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `event_company`
--
CREATE DATABASE IF NOT EXISTS `event_company` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `event_company`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220409135655', '2022-04-09 15:58:32', 1102);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_nb` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `events`
--

INSERT INTO `events` (`id`, `event_name`, `event_date`, `description`, `picture`, `capacity`, `email`, `address`, `phone_nb`, `url`, `type`, `zip`, `city`) VALUES
(2, 'Opener Festival', '2022-04-12 07:38:28', 'The bigest music Festival in the East Europe. Our Bands and artists: Dua Lipa, Maneskin, The Chemical Brothers, The smile, Royal Blood, Years&Years, Desroyer, Flohio, Iceage, Inhaler. Opener Festival it\'s a big 3 days festival with the live music.', 'https://cdn.pixabay.com/photo/2016/11/23/15/48/audience-1853662__340.jpg', 10000, 'openerfestival@mail.com', 'Airport Gdynia Poland', 254213232, 'www.opener.pl', 'Music', '220014', 'Gdynia'),
(3, 'Music and food', '2022-04-12 07:51:10', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum expedita non sed accusantium rem voluptate perferendis dolor doloribus maxime cumque?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, hic!', 'https://cdn.pixabay.com/photo/2018/10/09/19/56/music-3735836__340.jpg', 10000, 'mfood@mail.com', 'Bug Street 15', 2147483647, 'londonfood.com', 'Music', '12487', 'London'),
(4, 'Swan Lake', '2022-04-12 07:57:54', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum expedita non sed accusantium rem voluptate perferendis dolor doloribus maxime cumque?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, hic!', 'https://cdn.pixabay.com/photo/2016/11/29/09/24/swan-1868697__340.jpg', 2000, 'swanlake@royaloper.com', 'Opera Street 20', 231478569, 'royalopera.com', 'Theather', '17855', 'London'),
(5, 'Open Dance Festival', '2022-04-12 08:12:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum expedita non sed accusantium rem voluptate perferendis dolor doloribus maxime cumque?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, hic!', 'https://cdn.pixabay.com/photo/2017/11/15/13/53/hands-2952054__340.jpg', 2000, 'dance@festival.com', 'Sun Street 15', 124455889, 'www.dancedance.com', 'Music', '124877', 'Liverpool'),
(6, 'Movie Festival', '2022-04-12 08:15:20', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum expedita non sed accusantium rem voluptate perferendis dolor doloribus maxime cumque?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, hic!', 'https://cdn.pixabay.com/photo/2017/07/13/23/11/cinema-2502213__340.jpg', 1000, 'moviefestival.com', 'Main Street 20', 879544103, 'movie.com', 'Theather', '7854412', 'London'),
(7, 'Football England - Poland', '2022-04-12 08:26:38', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum expedita non sed accusantium rem voluptate perferendis dolor doloribus maxime cumque?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, hic!', 'https://cdn.pixabay.com/photo/2014/10/14/20/24/soccer-488700__340.jpg', 12000, 'football@uk.com', 'Sport Street 15', 2147483647, 'www.footbal.com', 'Sport', '248779', 'Manchester'),
(8, 'Color Run Festival', '2022-04-12 08:32:07', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum expedita non sed accusantium rem voluptate perferendis dolor doloribus maxime cumque?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, hic!', 'https://cdn.pixabay.com/photo/2015/11/15/16/25/friends-1044457__340.jpg', 5000, 'run@rn.com', 'Run Street', 2147483647, 'run.rn.com', 'Sport', '1247895', 'London'),
(9, 'Easter Music again', '2022-04-13 11:29:34', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum expedita non sed accusantium rem voluptate perferendis dolor doloribus maxime cumque?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, hic!', 'https://cdn.pixabay.com/photo/2022/04/02/13/43/music-7107045__340.jpg', 10000, 'easter@easter.com', 'Eggstreeet 30', 87423699, 'egg-festival.com', 'Music', '12887', 'Liverpool'),
(10, 'Romeo and Juliet', '2022-04-12 08:39:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsum expedita non sed accusantium rem voluptate perferendis dolor doloribus maxime cumque?Lorem ipsum dolor sit, amet consectetur adipisicing elit. Deleniti, hic!', 'https://cdn.pixabay.com/photo/2013/02/26/01/10/auditorium-86197__340.jpg', 4000, 'romeoandjuliet@teather.com', 'Teater Street 20', 557456963, 'romeoandjuliet.com', 'Theather', '658741123', 'London');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indeksy dla tabeli `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
