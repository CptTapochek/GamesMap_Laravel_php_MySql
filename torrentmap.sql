-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 28, 2021 at 04:30 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `torrentmap`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(12, 'Games', 'games', '2021-07-29 13:04:22', '2021-07-29 13:04:22'),
(13, 'Software', 'software', '2021-07-29 13:04:39', '2021-07-29 13:04:39'),
(15, 'Cheats', 'cheats', '2021-08-01 09:06:04', '2021-08-01 09:06:04'),
(16, 'News', 'news', '2021-09-15 20:54:55', '2021-09-15 20:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `report` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_id`, `body`, `report`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 11, 48, NULL, 'frewgergergreg', NULL, '2021-08-10 21:31:33', '2021-08-10 21:31:33', NULL),
(2, 11, 48, 1, 'Hey, What is wrong with you?', NULL, '2021-08-10 21:33:27', '2021-08-10 21:33:27', NULL),
(3, 11, 44, NULL, 'Urum dum dum!!', NULL, '2021-08-10 21:34:35', '2021-08-10 21:34:35', NULL),
(4, 12, 48, 2, 'Ti cevo ciort?', NULL, '2021-08-10 21:44:36', '2021-08-10 21:44:36', NULL),
(5, 11, 48, 1, 'Ebati copati rabotaet', NULL, '2021-08-11 09:50:07', '2021-08-11 09:50:07', NULL),
(6, 11, 48, NULL, 'Opa reioferiferiofkeroifkwroif', NULL, '2021-08-11 11:17:13', '2021-08-11 11:17:13', NULL),
(7, 11, 48, NULL, 'ttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt', NULL, '2021-08-11 12:04:08', '2021-08-11 12:04:08', NULL),
(8, 11, 48, NULL, 'Дата выхода: 2020\r\nЖанр: Симуляторы\r\nРазработчик: Saber Interactive\r\nИздатель: Focus Home Interactive\r\nТип издания: Repack\r\nЯзык интерфейса: Русский, Английский\r\nЯзык озвучки: Отсутствует\r\nТаблетка: Вшита (nEOS emu)\r\n\r\nСистемные требования:\r\nОС: Windows 7 / 8 / 10 (64-bit)\r\nПроцессор: i3-4130 3.4 GHz / Ryzen 3 2200U или лучше\r\nОперативная память: 8 GB\r\nВидеокарта: 2 GB, GTX 660 / R9 270 или лучше\r\nМесто на диске: 25 GB', NULL, '2021-08-11 12:08:05', '2021-08-11 12:08:05', NULL),
(9, 11, 48, 1, 'fsdfadgvgtrmgutr tmug\r\neoihge hrghnutegvht mgu rtmh guht hmgeuetrvget\r\negmuhtr ugmithg uitrmhg erguoiemuimtrhvhrt8h498ety4hb89yt24 h72 yt98h498t4y2hy7et841bh82t h74y t28h4e872 y', NULL, '2021-08-11 12:09:48', '2021-08-11 12:09:48', NULL),
(10, 11, 48, 1, 'duawhidmhwa', NULL, '2021-08-11 12:10:39', '2021-08-11 12:10:39', NULL),
(11, 11, 48, 1, 'dghbdghbgf', NULL, '2021-08-11 12:10:56', '2021-08-11 12:10:56', NULL),
(12, 11, 48, 1, 'Еще одной интересной стороной игры станет разнообразие различных задач. Поначалу вам просто предстоит выезжать на вызовы от местных жителей, которые застряли в грязи и не могут вызволить свой транспорт. Затем можно приступать к обычной транспортировке строительных материалов и крупногабаритных грузов.', NULL, '2021-08-11 12:11:49', '2021-08-11 12:11:49', NULL),
(13, 11, 48, 1, 'asdasdadsa', NULL, '2021-08-11 12:40:43', '2021-08-11 12:40:43', NULL),
(14, 11, 48, 4, 'MrDrew168, loh ebanii', NULL, '2021-08-11 13:53:18', '2021-08-11 13:53:18', NULL),
(15, 11, 47, NULL, 'sadsadadsad', NULL, '2021-08-11 13:56:52', '2021-08-11 13:56:52', NULL),
(16, 11, 48, 5, 'Bozy(Admin), dfwfewfwefewf', NULL, '2021-08-11 14:30:09', '2021-08-11 14:30:09', NULL),
(17, 11, 47, NULL, 'coment2', NULL, '2021-08-11 17:38:08', '2021-08-11 17:38:08', NULL),
(18, 11, 47, NULL, 'Coment 3', NULL, '2021-08-11 17:38:18', '2021-08-11 17:38:18', NULL),
(19, 11, 47, NULL, 'coment4', NULL, '2021-08-11 17:38:30', '2021-08-11 17:38:30', NULL),
(20, 11, 47, NULL, 'а основу взят релиз от FLT\r\n- Ничего не вырезано / ничего не перекодировано\r\n- Версия игры: 1.02 (BUILDID 6932234)\r\n- Смена языка озвучки в настройках игры\r\n- Время установки ~ 5 минут', NULL, '2021-08-11 17:38:39', '2021-08-11 17:38:39', NULL),
(21, 11, 47, NULL, 'т продумывать свои действия, стараться искать слабые места своих соперников и даже комбинировать атаки, чтобы своевременно уворачиваться и наносить ответные удары. Возможно, это звучит сложно, но на деле выглядит зрелищно', NULL, '2021-08-11 17:38:46', '2021-08-11 17:38:46', NULL),
(22, 11, 47, NULL, ', чтобы своевременно уворачиваться и наносить ответные удары. Возможно, это звучит сложно, но на деле выглядит зрелищно и как минимум любопытно. А чтоб', NULL, '2021-08-11 17:38:53', '2021-08-11 17:38:53', NULL),
(23, 11, 47, NULL, 'гинальным вселенным в стиле аниме, то спешим порадовать вас тем, чтобы теперь у вас есть возможность достичь благоприятного результата в плане впечатлений. На этот раз вам предстоит отправиться в довольно оригинальный мир, в который вторглись странные агрессивные создания. С виду они напоминают смесь людей и неодушевленных предметов, при этом быстро перемещаются и агрессивно реагируют на живых людей. Они долгое время т', NULL, '2021-08-11 17:39:01', '2021-08-11 17:39:01', NULL),
(24, 11, 47, NULL, 'С: Windows 10 (64-bit)\r\nПроцессор: Intel Core i5-3470 / AMD FX-8350\r\nОперативная память: 6 GB ОЗУ\r\nВидеокарта: Nvidia GeForce GTX 760 / AMD Radeon HD 7970\r\nМесто на диске: 16.7 GB', NULL, '2021-08-11 17:39:16', '2021-08-11 17:39:16', NULL),
(25, 11, 47, NULL, 'Год выпуска: 25 июня 2021\r\nЖанр: Action / Adventure / RPG / Sci-fi\r\nРазработчик: BANDAI NAMCO\r\nИздательство: BANDAI NAMCO\r\nПлатформа: PC\r\nТип издания: Repack\r\nЯзык интерфейса: Русский, английский, MULTi12\r\nЯзык озвучки: Английский, Японский\r\nТаблeтка: Вшита (FAIRLIGHT)', NULL, '2021-08-11 17:39:24', '2021-08-11 17:39:24', NULL),
(26, 11, 47, NULL, 'торый обладает небольшой долей мутации разума. Благодаря этому он обрел большую скорость перемещения, силу и возможность управлять своим мечом на расстоянии. Сюда стоит добавить выносливость и умение видеть сокрытое. Благодаря таким навыкам он может смело противостоять своим врагам и даже вовремя уворачиваться от их неожиданных атак. При этом он далеко не единственный такой герой, порой ему пре', NULL, '2021-08-11 17:39:29', '2021-08-11 17:39:29', NULL),
(27, 11, 47, NULL, 'гоприятного результата в плане впечатлений. На этот раз вам предстоит отправиться в довольно оригинальный мир, в котор', NULL, '2021-08-11 17:39:35', '2021-08-11 17:39:35', NULL),
(28, 11, 47, NULL, 'реагируют на живых людей. Они долгое время терроризировали обычное население и теперь появился специальный отряд героев, которые смогли бросить вызов этим существам и даже уничтожить целое их гнездо. Теперь они стали народными героями, которым предстоит очистить мир от этой скверны.', NULL, '2021-08-11 17:39:41', '2021-08-11 17:39:41', NULL),
(29, 11, 47, NULL, 'ьшую скорость перемещения, силу и возможность управлять своим мечом на расстоянии. Сюда стоит добавить выносливость и умение видеть сокрытое. Благодаря таким навыкам он может смело противостоять своим врагам и даже вовремя уворачиваться от их неожиданных атак. При этом он далеко не единственный такой герой, порой ему предстоит объединять свои усилия с другими и выполнять особо сложные зада', NULL, '2021-08-11 17:39:46', '2021-08-11 17:39:46', NULL),
(30, 11, 47, NULL, 'ость достичь благоприятного результата в плане впечатлений. На этот раз вам предстоит отправиться в довольно оригинальный мир, в который вторглись странные агрессивные создания. С виду они напоминают смесь людей и неодушевленных предметов, при этом быстро перемещаются и агрессивно реагируют на жив', NULL, '2021-08-11 17:39:52', '2021-08-11 17:39:52', NULL),
(31, 11, 47, 15, 'Bozy(Admin), 6jtujntyukntyuk', NULL, '2021-08-11 17:41:01', '2021-08-11 17:41:01', NULL),
(32, 11, 47, 31, 'Bozy(Admin), тоит отправиться в довольно оригинальный мир, в который вторглись странные агрессивные создания. С виду они напоминают смесь людей и неодушевленных предметов, при этом быстро перемещаются и агрессивно реагируют на живых людей', NULL, '2021-08-11 17:53:19', '2021-08-11 17:53:19', NULL),
(33, 11, 46, NULL, 'Crysis ahuena', NULL, '2021-08-11 19:10:44', '2021-08-11 19:10:44', NULL),
(34, 12, 46, 33, 'Bozy(Admin), Ti cio dalbaiob? Eto remaster', NULL, '2021-08-11 19:11:35', '2021-08-11 19:11:35', NULL),
(35, 15, 46, 34, 'MrDrew168, Eto ti dalbaiob, govna cusok, tut ahuenaia grafica', NULL, '2021-08-11 19:12:49', '2021-08-21 12:41:02', '2021-08-21 12:41:02'),
(36, 15, 46, NULL, 'Oi duraki', NULL, '2021-08-11 19:15:13', '2021-08-11 19:15:13', NULL),
(37, 15, 48, NULL, 'Vi cevo bliadi delaete?', NULL, '2021-08-11 19:16:12', '2021-08-11 19:16:12', NULL),
(38, 11, 47, 24, 'Bozy(Admin), Hey, man', NULL, '2021-08-11 19:57:00', '2021-08-11 19:57:00', NULL),
(39, 11, 39, NULL, 'Gavno cacoeto', NULL, '2021-08-11 20:00:00', '2021-08-11 20:00:00', NULL),
(40, 22, 46, NULL, 'Ebati privet)', NULL, '2021-08-11 21:51:07', '2021-08-11 21:51:07', NULL),
(41, 21, 28, NULL, 'o--=0oou99809---------------------/=p=', NULL, '2021-08-19 13:29:24', '2021-08-19 13:29:24', NULL),
(42, 1, 45, NULL, 'Zdarova ebati', NULL, '2021-08-20 19:02:38', '2021-08-20 19:02:38', NULL),
(43, 11, 43, NULL, 'comment_1', NULL, '2021-08-21 05:15:56', '2021-08-21 05:15:56', NULL),
(44, 11, 43, 43, 'Bozy(Admin), Comment_1_replay', NULL, '2021-08-21 05:16:24', '2021-08-21 05:16:24', NULL),
(45, 12, 43, NULL, 'Days gone hovno', NULL, '2021-08-21 05:22:57', '2021-08-21 07:07:31', '2021-08-21 07:07:31'),
(46, 19, 43, 45, 'MrDrew168, Sam hovno', NULL, '2021-08-21 05:24:13', '2021-08-21 05:24:13', NULL),
(47, 19, 43, NULL, 'Tut horosii grafon', NULL, '2021-08-21 05:24:27', '2021-08-21 05:24:27', NULL),
(48, 16, 43, NULL, 'Privet pridurki', NULL, '2021-08-21 05:25:13', '2021-08-21 05:25:13', NULL),
(49, 5, 43, NULL, 'so za sraci?', NULL, '2021-08-21 05:26:19', '2021-08-21 05:26:19', NULL),
(50, 5, 43, 47, 'User_11, +', NULL, '2021-08-21 05:26:41', '2021-08-21 05:26:41', NULL),
(51, 5, 43, 45, 'MrDrew168, gavno nijnevo interneta scazalo', NULL, '2021-08-21 05:27:16', '2021-08-21 07:05:36', '2021-08-21 07:05:36'),
(52, 22, 43, 47, 'User_11, neplohoi', NULL, '2021-08-21 05:28:32', '2021-08-21 05:28:32', NULL),
(53, 22, 43, 45, 'MrDrew168, cio sriomsea?', NULL, '2021-08-21 05:28:54', '2021-08-21 05:28:54', NULL),
(54, 11, 43, NULL, 'Isio raz ktoto plohoi comment napiset, zabaniu nahui', NULL, '2021-08-21 05:29:47', '2021-08-21 05:29:47', NULL),
(55, 12, 48, NULL, 'comment', NULL, '2021-08-22 17:54:11', '2021-08-22 17:54:11', NULL),
(56, 5, 46, NULL, 'Hey!', NULL, '2021-09-10 14:44:52', '2021-09-10 14:44:52', NULL),
(57, 11, 48, NULL, 'Дата выхода: 2020 Жанр: Симуляторы Разработчик: Saber Interactive Издатель: Focus Home Interactive Тип издания: Repack Язык интерфейса: Русский, Английский Язык озвучки: Отсутствует Таблетка: Вшита (nEOS emu) Системные требования: ОС: Windows 7 / 8 / 10 (64-bit) Процессор: i3-4130 3.4 GHz / Ryzen 3 2200U или лучше Оперативная память: 8 GB Видеокарта: 2 GB, GTX 660 / R9 270 или лучше Место на диске: 25 GB', NULL, '2021-09-10 14:57:29', '2021-09-10 14:57:29', NULL),
(58, 11, 47, NULL, 'New comment bla bla bla......', NULL, '2021-09-12 12:28:35', '2021-09-12 12:28:35', NULL),
(59, 11, 47, 25, 'Bozy(Admin), loh, bliati', NULL, '2021-09-12 12:51:01', '2021-09-12 12:51:01', NULL),
(60, 11, 57, NULL, 'comment1', NULL, '2021-09-19 13:25:02', '2021-09-19 13:25:02', NULL),
(61, 11, 57, NULL, 'Желаете чего-то невероятного? Чего-то масштабного? Тогда игру No Man\'s Sky скачать торрент нужно именно Вам. Это научно-фантастический проект, разработчиком выступила британская студия Hello Games, более всего знаменитая своей серией Joe Danger о забавном трюкаче. Но No Man\'s Sky нечто совсем другое, что ли, более высокое.', NULL, '2021-09-19 13:25:10', '2021-09-19 13:25:10', NULL),
(62, 11, 57, NULL, 'Да, так оно и есть. При этом и в буквальном и в переносном смысле. Мир игры процедурно-генерируем. При этом мир представляет собой не какую-то отдельную страну, планету или даже систему. Это целая вселенная! Каждое небесное тело уникально и неповторимо. Каждая планета имеет свою экосистему. Формы жизни поразительны. Как вам, например, с высотный дом плотоядные черви?', NULL, '2021-09-19 13:25:18', '2021-09-19 13:25:18', NULL),
(63, 11, 57, NULL, 'онечно, тут вселенная интересного! Так, все начнется на планете, так похожей на нашу родную, но расположенную в неизв', NULL, '2021-09-19 13:25:24', '2021-09-19 13:25:24', NULL),
(64, 11, 57, NULL, 'За основу взят релиз от GOG\r\n- Ничего не вырезано / ничего не перекодировано\r\n- Игровые архивы не вскрыты\r\n- Версия игры - 3.66 frontiers 77964 (49985)\r\n- Выведен ярлык для смены языка на рабочий стол\r\n- Время установки ~5 минут на H', NULL, '2021-09-19 13:25:32', '2021-09-19 13:25:32', NULL),
(65, 11, 57, NULL, 'ые требования:\r\nОС: Windows 7/8.1/10 (64-bit)\r\nПроцессор: Intel Core i3 или лучше\r\nОперативная память: 8 GB\r\nВидеокарта: GTX 480, Radeon 7870 или лучше\r\nМесто на диске: 10 GB', NULL, '2021-09-19 13:25:38', '2021-09-19 13:25:38', NULL),
(66, 11, 57, 65, 'Bozy(Admin), reply1', NULL, '2021-09-19 13:25:51', '2021-09-19 13:25:51', NULL),
(67, 11, 57, 66, 'Bozy(Admin), replay2', NULL, '2021-09-19 13:26:10', '2021-09-19 13:26:10', NULL),
(68, 11, 57, 67, 'Bozy(Admin), replay3', NULL, '2021-09-19 13:40:59', '2021-09-19 13:40:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `seen`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(2, 1, 'Drew', 'andrei.bozu16@gmail.com', 'Problem with registration', 'sadefweftrvhegnthogemugtuih487gh8 ghuitrvghc875h 4 m785g847gh mh87hr8w7gh0erm gh8em hhr8hw8rhfwm8 her8fh muerhfmu wh8fmhmre8hwf8wh r8 hf8e7 hfw87 nerh 87fwh8 er7h8 7', '2021-08-07 12:26:49', '2021-09-17 20:31:12'),
(3, 1, 'Drew', 'user.tree@gmail.com', 'Problem with registration', 'sdfsrevgsergbsergbserg', '2021-08-07 12:34:07', '2021-09-17 20:31:12'),
(4, 1, 'Drew(Admin)', 'andrei.bozu16@gmail.com', 'Testare', 'Testarea saitului dupa o pierdere mare de failuri', '2021-08-07 18:07:38', '2021-09-17 20:31:12'),
(5, 1, 'Bozy(Admin)', 'andrei.bozu16@gmail.com', 'Problem with registration', 'hgeruivgnurhguievh', '2021-08-23 10:38:53', '2021-09-15 20:52:34'),
(8, 1, 'Drew', 'user.tree@gmail.com', 'Tema #1', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look lik', '2021-09-15 19:48:01', '2021-09-15 20:52:34'),
(10, 1, 'MrDrew168', 'bozu168@gmail.com', 'Tema #3', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '2021-09-15 19:49:56', '2021-09-15 20:52:34'),
(11, 1, 'User_7', 'user.tree@gmail.com', 'Tema #4', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '2021-09-15 19:50:27', '2021-09-15 20:52:34'),
(12, 1, 'Bozy(Admin)', 'andrei.bozu16@gmail.com', 'Tema #6', 'dsdfsdfdskfa,cdfaicfdoi jsfmi sdjmfjds u,ajfu jauim judsf', '2021-09-17 20:50:35', '2021-09-17 20:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_one` int(11) NOT NULL,
  `user_two` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `user_one`, `user_two`, `status`, `created_at`, `updated_at`) VALUES
(14, 21, 11, 1, '2021-08-20 08:46:33', '2021-08-20 08:53:11'),
(15, 22, 11, 1, NULL, '2021-08-20 08:57:32'),
(17, 11, 15, 1, NULL, '2021-08-20 09:04:52'),
(20, 5, 11, 1, NULL, '2021-09-14 10:40:53'),
(23, 10, 11, 1, NULL, NULL),
(24, 11, 16, 1, NULL, '2021-09-13 21:47:09'),
(25, 22, 16, 1, '2021-08-20 11:32:06', '2021-08-20 11:32:06'),
(26, 12, 16, 1, '2021-08-20 11:57:28', '2021-08-20 18:22:53'),
(27, 11, 11, 1, '2021-08-20 12:21:09', '2021-08-20 12:21:09'),
(28, 16, 16, 1, '2021-08-20 14:13:15', '2021-08-20 14:13:15'),
(29, 12, 19, 1, '2021-08-20 14:29:04', '2021-08-20 14:29:14'),
(30, 12, 12, 1, '2021-08-20 14:29:40', '2021-08-20 14:29:40'),
(31, 12, 11, 1, '2021-08-20 18:00:30', '2021-09-18 17:59:10'),
(32, 12, 1, 1, '2021-08-20 18:02:40', '2021-09-12 17:40:53'),
(34, 8, 8, 1, '2021-08-20 18:08:40', '2021-08-20 18:08:40'),
(35, 12, 8, 1, '2021-08-20 18:08:56', '2021-08-20 18:33:37'),
(36, 1, 1, 1, '2021-08-20 18:41:14', '2021-08-20 18:41:14'),
(37, 11, 1, 1, '2021-08-20 18:47:20', '2021-08-20 18:47:45'),
(38, 22, 15, 1, '2021-08-20 19:00:24', '2021-08-20 19:02:03'),
(39, 22, 1, 1, '2021-08-20 19:03:23', '2021-09-12 17:43:27'),
(40, 17, 17, 1, '2021-08-20 19:04:14', '2021-08-20 19:04:14'),
(41, 22, 17, 1, '2021-08-20 19:04:25', '2021-08-20 19:04:42'),
(42, 22, 22, 1, '2021-08-20 19:06:07', '2021-08-20 19:06:07'),
(43, 12, 22, 1, '2021-08-20 19:08:20', '2021-08-20 19:09:40'),
(44, 5, 5, 1, '2021-08-20 19:10:21', '2021-08-20 19:10:21'),
(45, 22, 5, 1, '2021-08-20 19:10:33', '2021-08-20 19:11:04'),
(46, 4, 11, 1, '2021-08-26 16:49:41', '2021-09-22 17:35:15'),
(47, 15, 1, 1, '2021-09-12 17:45:35', '2021-09-13 13:58:07'),
(48, 15, 15, 1, '2021-09-12 17:46:36', '2021-09-12 17:46:36'),
(49, 5, 1, 1, '2021-09-13 13:59:09', '2021-09-13 14:05:36'),
(50, 5, 15, 1, '2021-09-13 14:06:07', '2021-09-13 14:08:07'),
(52, 15, 16, 1, '2021-09-13 19:40:54', '2021-09-13 19:40:54'),
(53, 11, 28, 1, '2021-09-19 13:00:31', '2021-09-19 13:00:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `friend_id`, `accepted`, `created_at`, `updated_at`) VALUES
(1, 11, 4, 1, NULL, NULL),
(2, 11, 5, 1, NULL, NULL),
(3, 11, 14, 1, NULL, NULL),
(6, 11, 10, 1, NULL, NULL),
(7, 11, 1, 1, NULL, NULL),
(9, 11, 13, 1, NULL, NULL),
(10, 10, 4, 1, NULL, NULL),
(11, 13, 11, 1, NULL, NULL),
(12, 12, 11, 1, NULL, NULL),
(13, 6, 11, 1, NULL, NULL),
(16, 11, 16, 1, NULL, NULL),
(17, 11, 17, 1, NULL, NULL),
(18, 11, 18, 1, NULL, NULL),
(19, 11, 19, 1, NULL, NULL),
(20, 11, 20, 1, NULL, NULL),
(21, 11, 21, 1, NULL, NULL),
(22, 11, 22, 1, NULL, NULL),
(25, 12, 11, 1, NULL, NULL),
(26, 12, 1, 1, NULL, NULL),
(27, 12, 6, 1, NULL, NULL),
(28, 1, 6, 0, NULL, NULL),
(29, 13, 6, 0, NULL, NULL),
(34, 4, 12, 0, NULL, NULL),
(35, 19, 12, 0, NULL, NULL),
(37, 11, 28, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `comment_id`, `post_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(178, 11, 18, 47, '2021-09-12 12:14:26', '2021-09-12 12:14:26', NULL),
(179, 11, 19, 47, '2021-09-12 12:14:30', '2021-09-12 12:14:30', NULL),
(180, 11, 17, 47, '2021-09-12 12:14:34', '2021-09-12 12:14:34', NULL),
(181, 11, 15, 47, '2021-09-12 12:14:36', '2021-09-12 12:14:36', NULL),
(182, 11, 15, 47, '2021-09-12 12:14:36', '2021-09-12 12:14:36', NULL),
(183, 11, 31, 47, '2021-09-12 12:14:38', '2021-09-12 12:14:38', NULL),
(184, 11, 31, 47, '2021-09-12 12:14:38', '2021-09-12 12:14:38', NULL),
(185, 11, 32, 47, '2021-09-12 12:16:05', '2021-09-12 12:16:05', NULL),
(186, 11, 30, 47, '2021-09-12 12:16:15', '2021-09-12 12:16:15', NULL),
(187, 11, 30, 47, '2021-09-12 12:16:15', '2021-09-12 12:16:15', NULL),
(188, 11, 29, 47, '2021-09-12 12:16:21', '2021-09-12 12:16:21', NULL),
(189, 11, 28, 47, '2021-09-12 12:16:25', '2021-09-12 12:16:25', NULL),
(190, 11, 28, 47, '2021-09-12 12:16:25', '2021-09-12 12:16:25', NULL),
(191, 11, 27, 47, '2021-09-12 12:16:27', '2021-09-12 12:16:27', NULL),
(192, 11, 26, 47, '2021-09-12 12:16:29', '2021-09-12 12:16:29', NULL),
(193, 11, 26, 47, '2021-09-12 12:16:29', '2021-09-12 12:16:29', NULL),
(194, 11, 26, 47, '2021-09-12 12:16:30', '2021-09-12 12:16:30', NULL),
(195, 12, 29, 47, '2021-09-12 12:19:51', '2021-09-12 12:19:51', NULL),
(196, 12, 28, 47, '2021-09-12 12:19:56', '2021-09-12 12:19:56', NULL),
(197, 12, 27, 47, '2021-09-12 12:20:01', '2021-09-12 12:20:01', NULL),
(198, 12, 26, 47, '2021-09-12 12:20:02', '2021-09-12 12:20:02', NULL),
(199, 12, 30, 47, '2021-09-12 12:20:12', '2021-09-12 12:20:12', NULL),
(200, 12, 25, 47, '2021-09-12 12:20:23', '2021-09-12 12:20:23', NULL),
(201, 12, 25, 47, '2021-09-12 12:20:23', '2021-09-12 12:20:23', NULL),
(202, 12, 25, 47, '2021-09-12 12:20:23', '2021-09-12 12:20:23', NULL),
(203, 12, 24, 47, '2021-09-12 12:20:26', '2021-09-12 12:20:26', NULL),
(204, 12, 24, 47, '2021-09-12 12:20:26', '2021-09-12 12:20:26', NULL),
(205, 12, 38, 47, '2021-09-12 12:20:29', '2021-09-12 12:20:29', NULL),
(206, 12, 38, 47, '2021-09-12 12:20:29', '2021-09-12 12:20:29', NULL),
(207, 12, 23, 47, '2021-09-12 12:20:34', '2021-09-12 12:20:34', NULL),
(208, 12, 23, 47, '2021-09-12 12:20:34', '2021-09-12 12:20:34', NULL),
(209, 12, 22, 47, '2021-09-12 12:20:36', '2021-09-12 12:20:36', NULL),
(210, 12, 22, 47, '2021-09-12 12:20:36', '2021-09-12 12:20:36', NULL),
(211, 12, 21, 47, '2021-09-12 12:20:38', '2021-09-12 12:20:38', NULL),
(212, 12, 21, 47, '2021-09-12 12:20:38', '2021-09-12 12:20:38', NULL),
(213, 11, 58, 47, '2021-09-12 12:42:40', '2021-09-12 12:42:40', NULL),
(214, 12, 58, 47, '2021-09-12 12:43:46', '2021-09-12 12:43:46', NULL),
(215, 11, 25, 47, '2021-09-12 12:44:34', '2021-09-12 12:44:34', NULL),
(216, 11, 24, 47, '2021-09-12 12:45:02', '2021-09-12 12:45:02', NULL),
(217, 12, 20, 47, '2021-09-12 12:49:17', '2021-09-12 12:49:17', NULL),
(218, 12, 19, 47, '2021-09-12 12:49:18', '2021-09-12 12:49:18', NULL),
(219, 1, 58, 47, '2021-09-12 13:08:51', '2021-09-12 13:08:51', NULL),
(220, 1, 30, 47, '2021-09-12 13:08:53', '2021-09-12 13:08:53', NULL),
(221, 1, 28, 47, '2021-09-12 13:08:55', '2021-09-12 13:08:55', NULL),
(222, 1, 29, 47, '2021-09-12 18:13:58', '2021-09-12 18:13:58', NULL),
(223, 1, 27, 47, '2021-09-12 18:14:08', '2021-09-12 18:14:08', NULL),
(224, 1, 57, 48, '2021-09-13 15:37:19', '2021-09-13 15:37:19', NULL),
(225, 11, 55, 48, '2021-09-13 21:46:42', '2021-09-13 21:46:42', NULL),
(226, 11, 67, 57, '2021-09-20 01:30:37', '2021-09-20 01:30:37', NULL),
(227, 11, 37, 48, '2021-09-23 16:45:02', '2021-09-23 16:45:02', NULL),
(228, 11, 4, 48, '2021-09-25 18:34:46', '2021-09-25 18:34:46', NULL),
(229, 11, 14, 48, '2021-09-25 18:37:43', '2021-09-25 18:37:43', NULL),
(230, 11, 5, 48, '2021-09-25 18:38:12', '2021-09-25 18:38:12', NULL),
(231, 11, 16, 48, '2021-09-25 18:38:40', '2021-09-25 18:38:40', NULL),
(232, 11, 9, 48, '2021-09-25 18:38:51', '2021-09-25 18:38:51', NULL),
(233, 11, 6, 48, '2021-09-26 12:47:18', '2021-09-26 12:47:18', NULL),
(234, 22, 57, 48, '2021-09-26 13:06:56', '2021-09-26 13:06:56', NULL),
(235, 11, 68, 57, '2021-09-26 20:43:16', '2021-09-26 20:43:16', NULL),
(236, 11, 66, 57, '2021-09-26 20:43:19', '2021-09-26 20:43:19', NULL),
(237, 11, 64, 57, '2021-09-26 21:01:27', '2021-09-26 21:01:27', NULL),
(238, 16, 68, 57, '2021-09-26 21:09:35', '2021-09-26 21:09:35', NULL),
(239, 16, 64, 57, '2021-09-26 21:09:39', '2021-09-26 21:09:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_sender` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_from_receiver` tinyint(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `is_seen`, `deleted_from_sender`, `deleted_from_receiver`, `user_id`, `conversation_id`, `created_at`, `updated_at`) VALUES
(75, 'Hi', 1, 0, 0, 1, 37, '2021-08-20 18:47:45', '2021-09-13 19:38:59'),
(76, 'Hello', 1, 0, 0, 12, 32, '2021-08-20 18:48:19', '2021-08-20 18:48:28'),
(77, 'Privet ebati', 1, 0, 0, 1, 32, '2021-08-20 18:49:20', '2021-08-20 18:49:27'),
(78, 'Privet loh', 1, 0, 0, 12, 31, '2021-08-20 18:50:19', '2021-08-26 16:50:16'),
(79, 'Privet', 1, 0, 0, 15, 38, '2021-08-20 19:02:03', '2021-08-20 19:06:17'),
(80, 'Privet duracioc', 1, 0, 0, 1, 39, '2021-08-20 19:03:32', '2021-08-20 19:06:15'),
(81, 'Privet, sto u tebea gorit?', 1, 0, 0, 17, 41, '2021-08-20 19:04:42', '2021-08-20 19:06:13'),
(82, 'ti cevo durac?', 1, 0, 0, 22, 43, '2021-08-20 19:08:35', '2021-08-20 19:08:46'),
(85, 'sam idi', 1, 0, 0, 12, 43, '2021-08-20 19:09:40', '2021-08-20 19:09:44'),
(86, 'ti cevo ei?', 0, 0, 0, 5, 45, '2021-08-20 19:11:04', '2021-08-20 19:11:04'),
(87, 'disbfuhfusd', 0, 0, 0, 11, 31, '2021-08-26 16:50:38', '2021-08-26 16:50:38'),
(88, 'privet bro!', 1, 0, 0, 5, 20, '2021-09-10 13:25:19', '2021-09-13 19:38:35'),
(89, 'privet bratan!', 1, 0, 0, 12, 32, '2021-09-12 13:04:36', '2021-09-12 13:04:45'),
(90, 'privet ciort', 1, 0, 0, 1, 32, '2021-09-12 13:23:44', '2021-09-12 13:25:27'),
(91, 'sto delaes?', 1, 0, 0, 12, 32, '2021-09-12 13:25:36', '2021-09-12 13:25:56'),
(93, 'toiest sada maza)', 1, 0, 0, 1, 32, '2021-09-12 13:55:10', '2021-09-12 13:58:44'),
(94, 'aaa, poneal, normalino)', 1, 0, 0, 12, 32, '2021-09-12 13:58:58', '2021-09-12 17:05:52'),
(95, 'cac dela?', 1, 0, 0, 1, 32, '2021-09-12 17:10:29', '2021-09-12 17:10:43'),
(96, 'normalino', 1, 0, 0, 12, 32, '2021-09-12 17:12:46', '2021-09-12 17:16:27'),
(97, 'cac sam?', 1, 0, 0, 12, 32, '2021-09-12 17:13:21', '2021-09-12 17:16:27'),
(99, 'ahuena', 1, 0, 0, 1, 32, '2021-09-12 17:16:55', '2021-09-12 17:23:18'),
(102, 'cevo ne otveciaesi?', 1, 0, 0, 12, 32, '2021-09-12 17:20:13', '2021-09-12 17:31:38'),
(103, 'cio za bred?', 0, 0, 0, 12, 32, '2021-09-12 17:22:04', '2021-09-12 17:22:04'),
(104, 'cacoita bred tut', 0, 0, 0, 12, 32, '2021-09-12 17:25:20', '2021-09-12 17:25:20'),
(106, 'sadadad', 0, 0, 0, 12, 32, '2021-09-12 17:40:53', '2021-09-12 17:40:53'),
(107, 'privet ebati', 1, 0, 0, 22, 39, '2021-09-12 17:43:27', '2021-09-13 12:37:30'),
(108, 'privet user_7', 1, 0, 0, 1, 47, '2021-09-12 17:45:47', '2021-09-13 13:52:50'),
(109, 'privet ciort', 1, 0, 0, 1, 47, '2021-09-12 18:00:07', '2021-09-13 13:52:50'),
(110, 'privet ciort', 1, 0, 0, 1, 47, '2021-09-12 18:00:25', '2021-09-13 13:52:50'),
(111, 'hvhfuid', 1, 0, 0, 15, 47, '2021-09-12 18:00:54', '2021-09-13 12:37:11'),
(112, 'odsos', 1, 0, 0, 1, 47, '2021-09-12 18:11:43', '2021-09-13 13:52:50'),
(113, 'privet', 1, 0, 0, 1, 47, '2021-09-13 13:09:23', '2021-09-13 13:52:50'),
(114, 'privet Bozy', 1, 0, 0, 15, 47, '2021-09-13 13:58:07', '2021-09-13 13:58:16'),
(115, 'HEllo User_1', 1, 0, 0, 1, 49, '2021-09-13 14:05:36', '2021-09-13 14:07:34'),
(116, 'Hello User_1', 1, 0, 0, 15, 50, '2021-09-13 14:06:57', '2021-09-13 14:07:28'),
(117, 'I\'m User_7', 1, 0, 0, 15, 50, '2021-09-13 14:07:09', '2021-09-13 14:07:28'),
(118, 'Hi User_7', 1, 0, 0, 5, 50, '2021-09-13 14:07:51', '2021-09-13 14:08:27'),
(119, 'What\'s up?!', 1, 0, 0, 5, 50, '2021-09-13 14:08:07', '2021-09-13 14:08:27'),
(120, 'privet ciort)', 1, 0, 0, 11, 24, '2021-09-13 19:38:26', '2021-09-13 21:46:51'),
(121, 'Hi', 1, 0, 0, 11, 20, '2021-09-13 19:38:43', '2021-09-13 19:39:33'),
(122, 'What\'s Up?!', 1, 0, 0, 11, 20, '2021-09-13 19:38:51', '2021-09-13 19:39:33'),
(123, 'Norm bro)', 1, 0, 0, 5, 20, '2021-09-13 19:39:47', '2021-09-13 21:36:50'),
(124, 'u?', 1, 0, 0, 5, 20, '2021-09-13 19:39:56', '2021-09-13 21:36:50'),
(125, 'HI men!', 0, 0, 0, 16, 52, '2021-09-13 19:40:54', '2021-09-13 19:40:54'),
(126, 'ahuena', 0, 0, 0, 11, 20, '2021-09-13 21:37:12', '2021-09-13 21:37:12'),
(127, 'hi man!', 0, 0, 0, 16, 24, '2021-09-13 21:46:59', '2021-09-13 21:46:59'),
(128, 'what\'s up?!', 0, 0, 0, 16, 24, '2021-09-13 21:47:09', '2021-09-13 21:47:09'),
(129, 'zdarova ciort', 0, 0, 0, 11, 20, '2021-09-14 10:40:53', '2021-09-14 10:40:53'),
(130, 'hui', 0, 0, 0, 11, 31, '2021-09-18 17:59:10', '2021-09-18 17:59:10'),
(131, 'Hey man!', 0, 0, 0, 11, 53, '2021-09-19 13:00:31', '2021-09-19 13:00:31'),
(132, 'What\'s up?!', 0, 0, 0, 11, 53, '2021-09-19 13:00:39', '2021-09-19 13:00:39'),
(133, 'frefrf', 0, 0, 0, 11, 46, '2021-09-22 17:35:15', '2021-09-22 17:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2021_07_20_163420_alter_table_users_add_avatar', 3),
(7, '2021_07_22_140827_alter_table_users_add_baned', 4),
(12, '2014_10_12_000000_create_users_table', 5),
(13, '2014_10_12_100000_create_password_resets_table', 5),
(14, '2019_08_19_000000_create_failed_jobs_table', 5),
(15, '2021_07_14_051815_create_contacts_table', 5),
(16, '2021_07_20_145651_alter_table_users', 5),
(17, '2021_07_26_224839_create_categories_table', 5),
(18, '2021_07_26_225004_create_tags_table', 5),
(19, '2021_07_26_225100_create_posts_table', 5),
(20, '2021_07_26_225314_create_post_tag_table', 5),
(21, '2021_08_05_214758_alter_table_posts_add_title_index', 6),
(22, '2021_08_09_120003_create_friend_table', 7),
(23, '2021_08_09_120003_create_friends_table', 8),
(24, '2021_08_10_234747_create_posts_comments_table', 9),
(25, '2015_10_05_110608_create_messages_table', 10),
(26, '2015_10_05_110622_create_conversations_table', 10),
(27, '2021_08_21_101319_create_comment-likes_table', 11),
(28, '2021_08_21_104250_create_likeable_table', 12),
(35, '2021_08_21_144954_create_likes_table', 13),
(44, '2021_08_22_221148_create_randomers_table', 14),
(47, '2021_09_14_144023_create_statistics_table', 15),
(49, '2021_09_16_143806_create_ratings_table', 16),
(50, '2021_09_17_210650_create_reports_table', 17);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('andrew.bozu16@gmail.com', '$2y$10$rqHMOIVAtnF3/2lrj1w3dO/51MrX93XBxJiEBgT6p0Dl9ySqm84jG', '2021-08-09 07:45:03'),
('andrei.bozu16@gmail.com', '$2y$10$EC6ErjB.z9RrDqSM9PluseGWNjPvR0OBjl2sZcqpODdl42b.OebXW', '2021-09-27 19:40:24');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `features` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `screen_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `screen_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trailer_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trailer_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dlc_list` text COLLATE utf8mb4_unicode_ci,
  `torr_specification` text COLLATE utf8mb4_unicode_ci,
  `torr_problems` text COLLATE utf8mb4_unicode_ci,
  `torr_link_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `torr_link_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `torr_size_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `torr_size_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `torr_name_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `torr_name_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `count_comment` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `downloads` int(9) NOT NULL DEFAULT '0',
  `rating` int(10) NOT NULL DEFAULT '0',
  `key_words` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `cover`, `features`, `description`, `screen_1`, `screen_2`, `screen_3`, `screen_4`, `screen_5`, `screen_6`, `trailer_1`, `trailer_2`, `dlc_list`, `torr_specification`, `torr_problems`, `torr_link_1`, `torr_link_2`, `torr_size_1`, `torr_size_2`, `torr_name_1`, `torr_name_2`, `views`, `count_comment`, `downloads`, `rating`, `key_words`, `created_at`, `updated_at`) VALUES
(2, 12, 'Battlefield 4', 'battlefield-4', 'covers/2021-07-30/uA1veaBgp8Ee2uvxzYlAZBjoedwJnPLHeUWVjYuZ.jpg', 'uthnivgeoigtngervgutg', 'uthnivgeoigtngervgutg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, NULL, '2021-07-30 12:02:39', '2021-08-06 10:40:49'),
(4, 12, 'Battlefield Hardline', 'battlefield-hardline', 'covers/2021-07-30/R53qGGC4v4ytPKx0CpPlh86ARFoNs10YaOqL02ax.jpg', 'ewiufmcqiefmewuoifchoquw efh', 'ewiufmcqiefmewuoifchoquw dasdasdadsdasdsda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2021-07-30 12:32:28', '2021-07-30 12:32:28'),
(5, 12, 'Battlefield 5', 'battlefield-5', 'covers/2021-07-30/Z0KXvV2ivjAHAe5a8LUfNQ4ThQdt9hXvxxVih54i.jpg', 'куьсцшщашусаукрац', 'ушмепгшермпгшукермгпшуремргуекьрмуегрп', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2021-07-30 13:23:10', '2021-07-30 13:23:10'),
(6, 12, 'Pray', 'rainbow-six-siedge', 'covers/2021-07-30/GyDvSHy2kjqDBK7VHvUxq9scwclHvAV4KzPpP2Vo.jpg', 'jfuiewjcfiwrejcfowjeroicfw', 'jfuiewjcfiwrejcfowjeroicfw', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2021-07-30 13:24:48', '2021-07-30 13:43:15'),
(7, 12, 'Fallout 4', 'fallout-4', 'covers/2021-07-30/5XLegNYvnxrk4m9EwCqj7DXJnCkOPhsa3pHnCD4p.jpg', 'hnreihirhvheguewrhnoighewnhv', 'revgreuiwvthuierht', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2021-07-30 14:19:59', '2021-07-30 14:19:59'),
(8, 12, 'Fallout New Vegas', 'fallout-new-vegas', 'covers/2021-07-30/LBGKeXZw83fG3RLOlgv9vD1yFdjCaZnUFa2rAM48.jpg', 'g', 'g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2021-07-30 14:54:51', '2021-07-30 14:54:51'),
(9, 12, 'Metro Exodus', 'metro-exodus', 'covers/2021-07-30/deYIC4GfaR5mhRk8oituURf3529dxTsedcsUFkBy.jpg', 'd', 'd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 0, 0, 0, NULL, '2021-07-30 14:56:50', '2021-08-04 12:39:55'),
(10, 12, 'Warface', 'warface', 'covers/2021-07-30/Xyg4RbZSDrO9ah7k2jr669eLAEr84AjozDDmE9lr.jpg', 'd', 'd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, NULL, '2021-07-30 14:59:08', '2021-08-04 12:52:00'),
(11, 12, 'Resident Evil Biohazard', 'resident-evil-biohazard', 'covers/2021-07-30/r8iBl4qlv5zKptHjqWQtaE5lS3Vwf5mhPKV1haxk.jpg', 'd', 'd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, NULL, '2021-07-30 15:00:44', '2021-08-04 12:51:52'),
(12, 12, 'Resident Evil 2 Remake', 'resident-evil-2-remake', 'covers/2021-07-30/Wx7nrcHofiQvSkQX43WJLMtMoruSk1j7uQb4nfwD.jpg', 't', 't', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL, '2021-07-30 15:03:29', '2021-07-30 15:03:29'),
(17, 12, 'Battlefield 2', 'battlefield-2', 'covers/2021-07-31/2KhfOmvrpR19ttVYFfn3mMGFzIXPLva9ANbbZvR5.jpg', 'авыы', 'ваывав', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, NULL, '2021-07-31 08:18:41', '2021-08-06 09:34:57'),
(20, 12, 'Battlefield 3', 'battlefield-3', 'covers/2021-07-31/3toRlnyOMq8fyMyM8ju3qLgCVeNG15DYpWUeglOq.jpg', 'Дата выхода: 2011\r\nЖанр: Adventure, 3D, 3rd Person\r\nРазработчик: EA Digital Illusions Creative Entertainment\r\nИздатель: Electronic Arts\r\nПлатформа: PC\r\nТип издания: Repack\r\nЯзык интерфейса: Русский\r\nЯзык озвучки: Русский\r\nТаблетка: Вшита (DWORD)\r\n\r\nСИСТЕМНЫЕ ТРЕБОВАНИЯ:\r\nОперационная система: Windows 7, 8, 10\r\nПроцессор: Core 2 Duo 2.4 ГГц или Athlon X2 2.7 ГГц\r\nОперативная память: 2 GB RAM\r\nВидеокарта: совместимые с DirectX 10.1 с 512 МБ ОЗУ\r\nЗвуковая карта DirectX® 11\r\nСвободное место на жёстком диске: 20 GB', 'Основное отличие игры Battlefield 3 лежит в ее качественной графике, благодаря которой она оставляет позади всех своих конкурентов. Возможности графики дает Frostbite™ - движок от DICE. Графика, которая имеется в виду – это не просто качество картинки, это детальная проработка огромных локаций, независимо от динамики происходящего, будь то разрушение или анимация героев. Сама же игра выполнена в жанре сражений, когда пользователь становится участником элитного подразделения морской пехоты, и сражаться по всему миру – Париж, Нью-Йорк, Тегеран и множество других мест. На выбор предоставляется многопользовательский и одиночный режимы, но если вы хотите скачать торрент Battlefield 3, то поиграть в мультиплеер не получиться, так как он работает только на лицензии, так что покупайте если есть возможность.\r\n\r\nЗа что любят игру:\r\n- Многопользовательский режим доступен на PC, он включает в себя одновременное участие до 64 игроков, с использованием различной техники – тяжеловесных танков, реактивных самолетов и много другого. Многопользовательский режим более популярен, чем одиночный, так как отличается большей динамичностью событий. Но и одиночная кампания не даст вам заскучать, вы станете американским пехотинцем в составе команды из тренированных и опытных бойцов.\r\n- Реальность превыше всего – решили разработчики, поэтому если речь идет о разрушении здания, например, то анимация происходящего выполнена на высоком уровне, со всеми особенностями освещения и прочих эффектов, от взрыва у вас заложит уши, так что не делайте звук слишком громко. Вы сможете разрушить практически все что угодно, главное не сильно увлекайтесь, чтобы при взрыве и самому не погибнуть.\r\n- В качестве военных действий выбрано множество мест – это и Европа и Ближний Восток и США, причем локации отличаются по особенностям для ведения боя – где-то узкие улицы, когда просмотр ведется через окна, а где-то полностью открытые пространства, без наличия укрытий – тут качественно поможет бронетранспортер, который и едет быстро, но главное от огня противника спасет. В игре реализовано множество транспорта – воздушного, наземного и морского.', 'Screens/2021-07-31/diK56BhqKwfXORwXYElHWc4Qm47iYWq0V4WeoI3m.jpg', 'Screens/2021-07-31/6rTTjwt9zHQeBWoXHTp1MyHJgdljOmyHyTe8E62A.jpg', 'Screens/2021-07-31/jEse72xN83SdsqseQKHlEoT6qrrKCnPnvWHNcV5Z.jpg', 'Screens/2021-07-31/oTey9cSVFSEbxEuR4xDrjUBjac699s3SZ1rO7OiO.jpg', 'Screens/2021-07-31/sgA3IhYaSGC3dfUOYpgX75KVQiiFsdkeKV2VinWc.jpg', 'Screens/2021-07-31/eSSI3NoOaZ6HauP9dtMDf0Pme4AzBPYHKVWU1D5W.jpg', 'https://www.youtube.com/watch?v=9DM7NsxOS0Q', 'https://www.youtube.com/watch?v=FRqfFfuVuNE', '- Back to Karkand\r\n- Close Quarters\r\n- Armored Kill\r\n- Aftermath\r\n- End Game\r\n- Добавлен 34H Launcher\r\n- Добавлен ZloGUILauncher\r\n- Добавлен эмулятор ZloEmu\r\n- Добавлена утилита смены языка', '- За основу взят Origin-Rip от DWORD\r\n- Ничего не вырезано / Ничего не перекодировано\r\n- Игровые архивы не вскрыты\r\n- Версия игры 1.6.0\r\n- Время установки 5 минут (Зависит от компьютера)', NULL, NULL, NULL, '10.6 GB | RePack от Igruha', '23.59 GB | RePack от Canek77', NULL, NULL, 11, 0, 0, 0, 'Battlefield3, battlefield 3, bf3, bf3 repack, bf3 пиратка, battlefield 3 скачать бесплатно', '2021-07-31 09:07:31', '2021-08-06 10:40:52'),
(21, 12, 'Doom Eternal', 'doom-eternal', 'covers/2021-07-31/VnnkULTzQloknGPKq8XcfR0LdE3Je9nHFVldMls8.jpg', 'Год выпуска: 2020\r\nЖанр: Action / Shooter / 1st Person\r\nРазработчик: id Software\r\nИздатель: Bethesda Softworks\r\nТип издания: RePack\r\nЯзык интерфейса: Русский / Английский / MULTi\r\nЯзык озвучки: Русский / Английский\r\nТаблетка: Вшита (CODEX)\r\n\r\nСистемные требования:\r\nОС: Windows 7, 8, 10 (64 bits)\r\nПроцессор: Intel Core i5 @ 3.3 GHz / AMD Ryzen 3 @ 3.1 GHz\r\nОперативная память: 8 GB ОЗУ\r\nВидеокарта: NVIDIA GeForce GTX 1050Ti (4GB) / AMD Radeon R9 280 (3GB)\r\nМесто на диске: 50 GB', 'Bethesda не прекращает радовать поклонников новыми анонсами. Дело в том, что недавно прошла конференция Е3 и компания представила массу новых игровых анонсов. Одним из них стал долгожданное продолжение игровой серии DOOM, которая теперь станет ужаснее, более кровавой и сложной. Пока компания представила только интересный и насыщенный трейлер, который показал, что теперь АД настигнет Землю и теперь главному герою предстоит биться на родной территории. Пока проект находится в разработке и разработчики не готовы показать игровой процесс, но по их заверению ждать осталось не так долго. Сразу после релиза вы сможете скачать торрент DOOM: Eternal и насладиться новым приключением.\r\n\r\nНовая часть приключения, несомненно, радует и наверняка удивит во время релиза. Первая обновленная часть грандиозной игровой серии получила массу положительных отзывов и продолжение наверняка станет отличным поводом вновь окунуться в кровавое развлечение. Предлагаем просто набраться терпения и ждать релиза. Наверняка в новой части нас будут ждать сильные враги, новое вооружение и масса разнообразны фичей. А чтобы лично насладиться всеми прелестями игрового приключения, достаточно дождаться релиза и скачать DOOM: Eternal через торрент на русском языке с помощью нашего сайта репак от механиков или хатаба.', 'Screens/2021-07-31/79yjuaAWVP7ycoW5ENf0yQs83USOv2MPohJlzGdn.jpg', 'Screens/2021-07-31/lJoiJXmoHvcK3jbEWyxgfmxYxXjN89srlWiFL1iB.jpg', 'Screens/2021-07-31/aj2w1oAB6oam0OZpAtZSAqQNsvHqy5ieBEPHbLak.jpg', 'Screens/2021-07-31/ntLmG3OLkSy3kZrEYz4jfcAS9tXC0kXoi6UBOPGP.jpg', 'Screens/2021-07-31/Ht8l1K2VEzMVkqadPdtuW9Ekuhqp33SDyMp4FPSK.jpg', 'Screens/2021-07-31/RdKH5ywZ4C2qEQCFd4Qv4qtaLRKmKGPucQ94myqT.jpg', 'https://www.youtube.com/watch?v=2HOClc6Svg4', NULL, NULL, '- За основу взят релиз CODEX Deluxe Edition\r\n- Вырезаны все озвучки кроме русской и английской / Ничего не перекодировано\r\n- Кто хочет играть с англ. озвучкой - удалите/переместите файлы vo_russian.pck и vo_Russian.snd из папки DOOM Eternal/base/sound/soundbanks/pc\r\n- Активировано дополнение Tear Pack DLC\r\n- Версия игры Build 4776612\r\n- Время установки 5 минут (Зависит от компьютера)', NULL, NULL, NULL, 'Размер: 31.0 GB | RePack от Igruha', 'Размер: 31.9 GB | RePack от xatab', NULL, NULL, 0, 0, 0, 0, 'Doom eternal, doom eternal repack', '2021-07-31 10:22:20', '2021-07-31 10:25:36'),
(22, 12, 'Red Dead Redemption 2', 'red-dead-redemption-2', 'covers/2021-07-31/zHQeVcMBXyGRYNTTiDfWkeL4j40bRStwd0jBGHKg.jpg', 'Дата релиза: 5 ноября 2019 г.\r\nЖанр: Action (Shooter) / Adventure / Western / Open World\r\nРазработчик: Rockstar Studios\r\nИздатель: Rockstar Games\r\nПлатформа: PC\r\nТип издания: Repack\r\nЯзык интерфейса: Русский / Английский / MULTi13\r\nЯзык озвучки: Английский\r\nТаблетка: Вшита (EMPRESS+Mr_Goldberg)\r\n\r\nСистемные требования:\r\nОС: Windows 7, 8, 10 (64-bit)\r\nПроцессор: i5-2500K / FX-6300 или лучше\r\nОперативная память: 8 GB\r\nВидеокарта: GTX 770 2 GB / Radeon R9 280 3 GB\r\nЗвуковая карта: Совместимость с DirectX\r\nМесто на жестком диске: 150 GB', 'Наконец-то свершилось, разработчики из Rockstar Games обрадовали фанатов тем, что готовы выпустить в свет PC-версию легендарной Red Dead Redemption 2. Такое событие нельзя упускать из виду и обязательно нужно постараться поддержать разработчиков, так как они готовы пойти на это и обрадовать еще большую аудиторию игроков. Мы тоже не спешим упускать такую возможность, поэтому заранее предлагаем следить за нашими анонсами, так как уже можно Red Dead Redemption 2 скачать торрент от механиков или хатаба. Думаете, что мы шутим? Нет, ведь достаточно воспользоваться ссылкой и через несколько минут вы будете наслаждаться атмосферой Дикого Запада, где вам предстоит взять на себя роль главы банды.\r\n\r\nНелегкая задача\r\nГлавный герой игры – Артур Морган – профессиональный бандит, который ранее занимался грабежами, налетами и вымогательством. Но делал он это не для того, чтобы обогатиться, а чтобы выжить и помочь близким построить нормальную жизнь. В игре идут события 1899 года, в которые жизнь человека ничего не стоит. Только тот, кто обладает хорошим орудием и готов рисковать могут выжить. Не стоит забывать, что в мире есть своя иерархия бандитских группировок, среди которых есть очень могущественные люди. И единственным способом избавиться от них является плата золотом.\r\n\r\nНачало с самого нуля\r\nНачало игры происходит во время очередного налета банды, который протекает не так удачно. В итоге золото улетает с горы, бандитские группировки жаждут вашей смерти, а все, кто с вами остался – это всего лишь несколько человек. Поначалу вам предстоит спрятаться в горах, пережить бурю и потом постепенно возрождаться. Сделать все это будет кране непросто, так как постоянная охота, отсутствие пищи и нормального вооружения, все будет сказываться на общей эффективности. Но постепенно вы будете выбираться из сложившейся ситуации и будете наращивать мощь, которая вам наверняка пригодится.\r\n\r\nБезграничные возможности\r\nДанная команда разработчиков славится тем, что предлагает пользователя практически безграничные возможности. К примеру, в игре можно будет охотиться, заниматься стрельбой, участвовать в дуэлях, ходить в баню, грабить, охотиться на преступников, грабить поезда, захватывать банки, сражаться с другими бандами, выбирать внешний вид, повышать навык езды на лошади и даже искать клады. Что самое удивительное, все перечисленное, это всего лишь маленькая часть всех возможностей, которые есть в игре, поэтому времени понадобится крайне много. А учитывая, что в игре будет онлайн, то интерес и затраты времени возрастут в десятки раз.\r\n\r\nТеперь вам осталось только скачать Red Dead Redemption 2 через торрент на русском языке жаль что без русской озвучки и можно отправляться в приключение. Игра является легендарной, как в свое время была GTA V, поэтому упускать возможности нельзя. Играйте, улучшайте банду и становитесь самой настоящей грозой Дикого Запада.\r\n\r\nОсобенности игры\r\n- невероятно большой открытый мир;\r\n- богатый ассортимент контента;\r\n- наличие онлайн режима;\r\n- проработанная система кармы;\r\n- красивая графика;\r\n- полная свобода действий.', 'Screens/2021-07-31/CO5VIhPEzUmtZNXqMc88zFRrTm0plqgtEsKgTqD2.jpg', 'Screens/2021-07-31/Vs0qU3SfbOMDn39IapkiTp13KFuSVlzXZoJ04R2D.jpg', 'Screens/2021-07-31/cLN7BKBNx6XVJOhRstgnuACSROq3ipol9WEkifzb.jpg', 'Screens/2021-07-31/3AVUVior4ir87xthHmyVJ5Xui5zqIAk35zp4FDAb.jpg', 'Screens/2021-07-31/IZqp1Rs4afvaNywVCH9qXF2G2XenilPHSn2CXO7d.jpg', 'Screens/2021-07-31/4oqo4LKGhwNUnhDuuizx3MHzuPMqg0jKHkr9oT2S.jpg', 'https://www.youtube.com/watch?v=eaW0tYpxyp0', NULL, NULL, '- За основу взят релиз от EMPRESS - Ultimate Edition\r\n- Вшит Crackfix V2 от вылетов\r\n- Ничего не вырезано / Ничего не перекодировано\r\n- Игровые архивы не вскрыты\r\n- Версия игры: 1.0.1311.23\r\n- Язык определяется игрой автоматически на основе системной локали\r\n- Время установки 30 минут (Зависит от компьютера)', NULL, 'TorrentFiles/2021-07-31/G4uxOG0zj16sbzpPgP0e7nwCOeHXDW79bsFwCSb8.torrent', 'TorrentFiles/2021-07-31/SufCcTjQ4RapNMDi9EJp37BKOwfbHyOzVCUCOejq.torrent', '77 GB | Xatab', '117 GB | RGL-Rip', NULL, NULL, 2, 0, 0, 0, NULL, '2021-07-31 10:49:11', '2021-08-04 12:40:08'),
(28, 12, 'Forza Horizon 4 Ultimate Edition', 'forza-horizon-4-ultimate-edition', 'covers/2021-08-01/heRAOeGXO8GtGsVDNGFGmGuPNzAgnQLBXEMfNaVj.jpg', 'Дата выпуска в Steam: 9 марта 2021 г.\r\nЖанр: Racing / 3D / 3rd Person\r\nРазработчик: Playground Games\r\nИздатель: Microsoft Studios\r\nПлатформа: PC\r\nТип издания: RePack\r\nЯзык интерфейса: Русский / Английский / MULTi\r\nЯзык озвучки: Английский / MULTi5\r\nТаблетка: Вшита (Mr.Goldberg XLive emu.)\r\n\r\nCистемные требования:\r\nОС Windows 10 (64-bit)\r\nПроцессор: Intel i3-4170 @ 3.7Ghz OR Intel i5 750 @ 2.67Ghz\r\nОперативная память: 8 GB\r\nВидеокарта: GTX 650TI / AMD R7 250x / 2 GB\r\nВерсия DirectX: 12\r\nМесто на жестком диске: 90 GB', 'Forza Horizon 4 – аркадный симулятор управления автомобилем, который ориентируется исключительно на возможность соревноваться между игроками, собирать большое количество автомобилей в коллекцию и просто наслаждаться невероятным уровнем графики окружения. На этот раз разработчики наверняка нас порадуют многочисленными изменениями, улучшениями и прочими увлекательными игровыми режимами. Главное дождаться релиза игры и скачать торрент Forza Horizon 4 с нашего сайта репак от механиков или хатаба. Выход игры запланирован на 2 октября 2018 года, ждать осталось не так уж и много.\r\n\r\nПокоряем новые просторы\r\nПо сравнению с прошлыми частями, игровое приключение не особо изменилось, но приобрело несколько интересных моментов:\r\n1. Появился уникальный режим под названием Open World Freedom. Это специальный режим, который предлагает пользователям прокатиться по открытому миру и создать свои личные маршруты. Затем ими можно поделиться с другими игроками и даже получить оценки. Ограничений в плане составления маршрута нет.\r\n2. Теперь разработчики реализовали симуляцию вождения под названием Seasons Change Everything. Благодаря новой системе, автомобилем придется управлять с учетом окружения. Прошел дождь, началась засуха или дорога покрылась мерзлотой, в каждом случае транспорт будет вести себя по-новому и требовать дополнительных усилий для плавного управления.\r\n3. У игроков появится новая планка в плане коллекционирования автомобилей. Теперь ассортимент будет включать в себя около 450 различных транспортных средств от более чем 100 лицензированных производителей.\r\n4. Появится еще один дополнительный режим под названием Go it Alone or Team Up. Благодаря ему у вас будет выбор, играть в одиночку или присоединиться к совершенно случайной команде. Подобные изменения положительно сказываются на общей картине игры и обеспечивают гарантированную компанию других игроков.\r\n\r\nОсталось только дождаться релиза гоночного приключения и скачать Forza Horizon 4 через торрент бесплатно на русском языке. Новые приключения обеспечат приятный процесс времяпрепровождения и просто подарят незабываемые эмоции.\r\n\r\nОсобенности игры\r\n- просторный и красивый мир с новым уровнем графического оформления;\r\n- на выбор будет доступно огромное количество разнообразных автомобилей;\r\n- реалистичная физика управления автомобилем.', 'Screens/2021-08-01/JKzN2FG7fkKos1ai1dGddjowkUANv6E8iaIlWyTM.jpg', 'Screens/2021-08-01/GhmgrDNWU1QFSRxnJoiIoyd4qcA92GE8YP88wAWz.jpg', 'Screens/2021-08-01/pmVRlM1ORtdV1vhWuIKBJ0scyBRqgIWMMFMttTVP.jpg', 'Screens/2021-08-01/Ns8O3eF67dBB50JUiJIIxn3LbUWm23rDzMXEoy7f.jpg', 'Screens/2021-08-01/Y6y7SE5Obg4CqnXCNhK0FjUzdpKu4zdn5q2t4frG.jpg', 'Screens/2021-08-01/gObTRaI0BWxjs7Qd1lSYBjeAQqGramuQK1HiuvGy.jpg', 'https://www.youtube.com/watch?v=q26wna24F50', NULL, 'Treasure Map\r\nFormula Drift Car Pack\r\nMitsubishi Car Pack\r\nBest of Bond Car Pack\r\nBarrett-Jackson Car Pack\r\nIcons Car Pack\r\nPerformance Car Pack\r\nAny Terrain Car Pack\r\nBritish Sports Car Car Pack\r\nWelcome Pack\r\nVIP\r\nFortune Island\r\nLEGO® Speed Champions\r\nCar Pass\r\nJapanese Heroes Car Pack\r\nOpen Top Car Pack\r\nHot Wheels™ Legends Car Pack\r\n1979 Talbot Sunbeam Lotus\r\n1967 Sunbeam Tiger\r\n1938 MG TA Midget\r\n2017 Koenigsegg Agera RS\r\n2016 Honda Civic Coupe GRC\r\n2018 Ford Deberti Design Mustang Fastback\r\n2019 Porsche 911 Carrera S\r\n1993 Porsche 968 Turbo S\r\n2005 Honda NSX-R GT\r\n1966 Hillman Imp\r\n1968 Ford Mustang GT 2+2 Fastback\r\nFord Transit\r\n1959 Cadillac Eldorado Biarritz Convertible\r\n2018 TVR Griffith\r\n2019 BMW i8 Roadster\r\n2002 Mazda RX-7 Spirit R Type-A\r\n1962 Triumph TR3B\r\n2010 Vauxhall Insignia VXR\r\n2014 McLaren 650 Super Sport Spyder\r\n1953 Jaguar C-Type\r\n1974 Honda CivicRS\r\n2018 Chevrolet Deberti Design DriftTruck\r\n2018 Aston Martin Vantage\r\n1965 Peel Trident\r\n2018 Chevrolet Camaro ZL1 1LE\r\n2019 Chevrolet Corvette ZR1\r\n2018 Morgan Aero GT\r\n1970 Triumph TR6 PI\r\n2017 Ferrari GTC4Lusso\r\n1972 Lamborghini Jarama S\r\n1966 Volkswagen Double Cab Pick-Up\r\n2018 Can-Am Maverick X3 X RS Turbo R\r\n1929 Mercedes-Benz SSK\r\n1985 Porsche #186 959 Paris-Dakar\r\n2018 Nissan SentraNismo\r\n2018 Alfa Romeo Stelvio Quadrifoglio\r\n2005 Ferrari FXX\r\n2004 Vauxhall VX220\r\n1993 Hoonigan Ford Escort Cosworth Group A\r\nLamborghini Gallardo LP570-4 Spyder Performante\r\n1959 Porsche 356A Coupe\r\n1963 Opel Kadett A\r\n1977 Hoonigan Ford Gymkhana 10 F-150\r\n2003 Honda S2000', '- За основу взят релиз от InsaneRamZes\r\n- Ничего не вырезано / ничего не перекодировано\r\n- Версия игры: 1.473.944.0\r\n- Время установки ~ 12 минут на SDD (Зависит от компьютера)', NULL, 'TorrentFiles/2021-08-01/Forza Horizon 4 Ultimate Edition-by-TorrentMap.torrent', NULL, '74.23 GB | Igruha', NULL, NULL, NULL, 11, 1, 0, 0, 'forza horizon 4 скачать бесплатно, forza horizon 4 repack, forza horizon 4 InsaneRamZes, fh4 repack, forza horizaon 4 пиратка', '2021-08-01 11:18:39', '2021-08-19 13:29:25'),
(29, 12, 'Resident Evil 8 Village', 'resident-evil-8-village', 'covers/2021-08-01/eLKNIQ2bUNU61f2hvKBnGl6hFYHLwhFQpoaFzDSQ.jpg', 'Год выпуска: 7 мая 2021\r\nЖанр: Survival Horror / Sexual Content / Horror / Action\r\nРазработчик: CAPCOM Co., Ltd.\r\nИздательство: CAPCOM Co., Ltd.\r\nПлатформа: PC\r\nТип издания: Repack\r\nЯзык интерфейса: Русский, Английский, MULTi13\r\nЯзык озвучки: Русский, Английский, MULTi9\r\nТаблeтка: Вшита (EMPRESS+Animation Fix)\r\n\r\nСистемные требования:\r\nОС: Windows 10 (64-bit)\r\nПроцессор: AMD Ryzen 3 1200 ／ Intel Core i5-7500\r\nОперативная память: 8 GB ОЗУ\r\nВидеокарта: AMD Radeon RX 560 / NVIDIA GeForce GTX 1050 Ti\r\nМесто на диске: 28,2 GB', 'Серия Resident Evil славится своим качественным сюжетом, необычным подходом к приключениям и просто является чуть ли не самым лучшим хоррором. И что самое приятное, разработчики не намереваются сдавать серию и продолжают ее совершенствовать. К примеру, совсем недавно стало известно, что компания Capcom намерена выпустить продолжение культового игрового приключении и теперь все смогут скачать Resident Evil 8 через торрент бесплатно. На этот раз разработчики пообещали сохранить концепцию приключения и добавить новые технологии. Что касается сюжета, то у данной серии с ним никогда не было проблем.\r\n\r\nResident Evil 8 – вновь станет приключением от первого лица, которое расскажет новую историю и позволит насладиться хоррором в полном расцвете сил. Пока что разработчики не раскрывают никаких подробностей, но не стоит расстраиваться, так как они знают свое дело и обязательно дадут возможность насладиться приятным развлечением.\r\n\r\nСкорее всего нас ждет возвращение полюбившихся героев, посещение уже знакомых локаций и не стоит забывать про нововведения, которые наверняка не дадут вам возможность заскучать. Если приводить сравнение, то новая часть приключения будет похожа на Resident Evil 7 с интересными нововведениями. А какими именно они будут, разработчики намерены раскрывать в дальнейшем. Желаем вам приятной игры!', 'Screens/2021-08-01/76ClmmaRW8bHjvPmrNGKCCGfC4TSoIvKCgPoTgOt.jpg', 'Screens/2021-08-01/HIMI84U7KdmwfDnaRABTHNJu72KEhWEIdAILPPss.jpg', 'Screens/2021-08-01/EzMNo4JYGkwggzqvfHfVHNJZ0GB2GMqZmiscnEC1.jpg', 'Screens/2021-08-01/6N7FtRFbDLnX4xdtCh3OxPaWVuynqMyuJhleiewl.jpg', 'Screens/2021-08-01/3xCYD08GVCXMQp959rqjerb9nadniA56Me2u3NMi.jpg', 'Screens/2021-08-01/Ys7QHOxVnurpLsArtNeegKHqcV8ICTH6hlBSWOsQ.jpg', 'https://www.youtube.com/watch?v=26tay8lMZW4', 'https://www.youtube.com/watch?v=26tay8lMZW4', '- Trauma Pack\r\n- Mr. Raccoon Weapon Charm\r\n- Survival Resources Pack', '- За основу взят релиз от EMPRESS\r\n- Ничего не вырезано / ничего не перекодировано\r\n- Версия игры: build 6587890\r\n- Вшит Animation Fix от EMPRESS\r\n- Смена языка в настройках игры\r\n- Время установки ~ 10 минут (Зависит от компьютера)', NULL, 'TorrentFiles/2021-08-01/Resident Evil 8 Village-by-TorrentMap.torrent', 'TorrentFiles/2021-08-01/Resident Evil 8 Village-by-TorrentMap.torrent', '20.09 GB | Igruha', '386 MB | Animation.Fix-EMPRESS (Отдельно)', NULL, NULL, 10, 0, 0, 0, 'Resident Evil Village repack, RE Village скачать бесплатно', '2021-08-01 11:26:55', '2021-08-05 12:47:51'),
(30, 12, 'Euro Truck Simulator 2', 'euro-truck-simulator-2', 'covers/2021-08-01/8FjxGDWTwKF5QGSQDAgMhTkiB3MwNV7Qvf9qqQMo.jpg', 'Год выпуска: 2013\r\nЖанр: Simulator\r\nРазработчик: SCS Software\r\nИздатель: Excalibur Publishing\r\nПлатформа: PC\r\nТип издания: Repack\r\nЯзык интерфейса: Русский, Английский\r\nЯзык озвучки: отсутствует\r\nТаблетка: Вшита (CODEX | FTS)\r\n\r\nCистемные требования:\r\nОС: Windows Vista 7, 8, 10 (32-64-bit)\r\nПроцессор: Intel Core 2 Duo at 2Ghz, or AMD Athlon 64 x2 2Ghz\r\nОперативная память: 4 ГБ\r\nВидеокарта: Видеокарта NVIDIA GeForce 7800 GT с 512 Мб\r\nвидеопамяти или аналогичная ATI\r\nЗвуковое устройство: совместимое с DirectX 9.0с\r\nСвободное место на жестком диске: 12 GB + 2 GB для установки', 'Euro Truck Simulator 2 предлагает отправиться в путешествие по дорогам Европы, пользователю предстоит стать королем дороги – настоящим дальнобойщиком, который перевозит разнообразные грузы, порой очень ценные и на большие расстояния. Карта маршрута охватывает множество стран – Бельгию, Нидерланды, Италию, Великобританию и множество других. В новом дополнении к ним всем представлена Скандинавия. Помимо новой локации, есть и другие добавления – новые грузы, к уже имеющимся в игре, будет введено еще примерно 80 наименований товаров. Не забыты и полуприцепы – модификации к ним так же входят в дополнение.\r\n\r\nОсобенности:\r\n- Транспортировка товаров, относящихся к разнообразным промышленным группам, это может быть техническое оборудование (части ветряков), животные и даже грузовики.\r\nЕсть небольшое ограничение по группам товаров, например, ветряки будут доступны лишь тем, кто владеет DLC «Scandinavia», а вот остальные каждому игроку, когда запустится обновление.\r\n- Замысел разработчиков потрясает своим размахом – они воссоздают DLC Scandinavia с практически полным соответствием всех ключевых и красивейших мест Скандинавии, если судить только по изображениям к игре – качество будет на высшем уровне.\r\n- Карта для нового обновления заняла у разработчиков немало времени, но результат стоит того, пусть и пришлось ждать долгий период – создания, затем тестирования, исправления, настраивания и конечной оптимизации.\r\n- Километры дорог Скандинавии, все дорожные сети с популярными зданиями и ориентирами – были воссозданы практически с идентичностью аналогам, такая детализация увлечет любого пользователя, особенно тех, кто знает эти места не понаслышке. Была сохранена особая самобытность этой страны со всей ее уникальностью.\r\n- Новая карта, но цели те же – развитие парка грузовиков, где нужно заниматься многими вещами, нанимать первоклассных и опытных водителей, покупать новые гаражи для автофургонов, следить за качеством перевозок и т.д.\r\n- Усовершенствуйте свои грузовики, качественный тюнинг, как технических сторон, так и внешнего вида – доступен каждому, создайте свой уникальный автомобиль.\r\n\r\nВперед, пробуйте скачать торрент Euro Truck Simulator 2 Scandinavia и в путь, дорога ждет! Сумеете ли вы разобраться в маршруте и доехать вовремя? Не отвлечет вас окружающая красота страны от нужного поворота?', 'Screens/2021-08-01/nKPZaHo6SY3opT67p7SB1IHQrGHUngRab43IfjK2.jpg', 'Screens/2021-08-01/vTl6vEzP2qanzX9AO0d20Uil8neJWm3UC3UsXL4l.jpg', 'Screens/2021-08-01/pwnUaMKaV7MNFk3eTmDI8IDngUlXYOE4yBctzAF3.jpg', 'Screens/2021-08-01/hTMxwfDCZKo7nXxpQRXfX3YcL1YMGtDKFtv7WooK.jpg', NULL, NULL, 'https://www.youtube.com/watch?v=FkklG9MA0vM', 'https://www.youtube.com/watch?v=26tay8lMZW4', '- Going East!\r\n- Halloween Paint Jobs Pack\r\n- Ice Cold Paint Jobs Pack\r\n- Prehistoric Paint Jobs Pack\r\n- Force of Nature Paint Jobs Pack\r\n- Metallic Paint Jobs Pack\r\n- UK Paint Jobs Pack\r\n- Irish Paint Jobs Pack\r\n- Scottish Paint Jobs Pack\r\n- Flip Paint Designs\r\n- Polish Paint Jobs Pack\r\n- Brazilian Paint Jobs Pack\r\n- Fantasy Paint Jobs Pack\r\n- USA Paint Jobs Pack\r\n- Scandinavia\r\n- Canadian Paint Jobs Pack\r\n- High Power Cargo Pack\r\n- German Paint Jobs Pack\r\n- French Paint Jobs Pack\r\n- Czech Paint Jobs Pack\r\n- Christmas Paint Jobs Pack\r\n- Raven Truck Design Pack\r\n- Norwegian Paint Jobs Pack\r\n- Danish Paint Jobs Pack\r\n- Swedish Paint Jobs Pack\r\n- Viking Legends\r\n- Russian Paint Jobs Pack\r\n- Cabin Accessories\r\n- Michelin Fan Pack\r\n- Japanese Paint Jobs Pack\r\n- PC Gamer DLC\r\n- Turkish Paint Jobs Pack\r\n- Wheel Tuning Pack\r\n- Italian Paint Jobs Pack\r\n- Schwarzmuller Trailer Pack\r\n- Rocket League Promo\r\n- Hungarian Paint Jobs Pack\r\n- Slovak Paint Jobs Pack\r\n- Spanish Paint Jobs Pack\r\n- Window Flags\r\n- Austrian Paint Jobs Pack\r\n- Mighty Griffin Tuning Pack\r\n- South Korean Paint Jobs Pack\r\n- Swiss Paint Jobs Pack\r\n- Chinese Paint Jobs Pack\r\n- Pirate Paint Jobs Pack\r\n- XF Tuning Pack\r\n- Lunar New Year Pack\r\n- Vive la France !\r\n- Heavy Cargo Pack\r\n- Finnish Paint Jobs Pack\r\n- Belgian Paint Jobs Pack\r\n- Dragon Truck Design Pack\r\n- Romanian Paint Jobs Pack\r\n- Australian Paint Jobs Pack\r\n- Valentine\'s Paint Jobs Pack\r\n- Italia\r\n- Special Transport\r\n- Portuguese Paint Jobs Pack\r\n- Dutch Paint Jobs Pack\r\n- Beyond the Baltic Sea\r\n- Space Paint Jobs Pack\r\n- Krone Trailer Pack\r\n- Estonian Paint Jobs Pack\r\n- Latvian Paint Jobs Pack\r\n- Lithuanian Paint Jobs Pack\r\n- Road to the Black Sea\r\n- Actros Tuning Pack\r\n- Pink Ribbon Charity Pack\r\n- Goodyear Tyres Pack\r\n- Bulgarian Paint Jobs Pack\r\n- Iberia\r\n- HS-Schoch Tuning Pack\r\n- FH Tuning Pack\r\n- Super Stripes Paint Jobs Pack\r\n- DAF XG/XG+', '- За основу взята релиз от CODEX\r\n- Ничего не вырезано / Не перекодировано\r\n- Версия игры - 1.41.1.5s\r\n- Присутствуют все вышедшие DLC\r\n- Установка ~ 10 мин на HDD (Зависит от компьютера)', 'Как играть онлайн:\r\n1. Запускаем Steam, заходим в свой профиль.\r\n2. Запускаем игру.\r\n\r\nПодключение:\r\nESC - Конвой - Подключаемся к серверу друга.\r\n\r\nСоздание сервера:\r\nESC - Конвой - Создать конвой - Подтвердить - Ожидаем подключения других игроков.\r\n\r\n**При создании профиля обязательно снимите галочку \"Использовать профиль Steam\" Иначе повторно игра не запустится', 'TorrentFiles/2021-08-01/Euro Truck Simulator 2-by-TorrentMap.torrent', 'TorrentFiles/2021-08-01/Euro Truck Simulator 2-by-TorrentMap.torrent', '6.42 GB | Igruha', '6.43 GB | Igruha (Online)', NULL, NULL, 71, 0, 0, 0, NULL, '2021-08-01 11:31:37', '2021-09-16 10:10:31'),
(31, 12, 'Alaskan Truck Simulator', 'alaskan-truck-simulator', 'covers/2021-08-01/DMMheDnM9djjEbucMCZvMP9wyaRNSu9RuoNIPcPr.jpg', NULL, 'В игре Alaskan Truck Simulator, скачать торрент которой можно на сайте, вам предстоит вжиться в роль дальнобойщика на Аляске, сесть за руль огромного грузовика и отправиться в путь по опасным заснеженным дорогам.\r\n\r\nИспытайте на себе все, с чем сталкиваются реальные водители на дорогах и шоссе Аляски, выполняйте различные задания, старайтесь приспособиться под постоянно меняющуюся погоду, следите за запасом ресурсов, охотьтесь на диких зверей, исследуйте гигантские территории и заслужите признание в сообществе.\r\n\r\nСумеете ли вы выжить и оценить суровую и необузданную красоту дикой природы Аляски?\r\n\r\nНекоторые особенности:\r\n- Динамическая смена погоды, а также дня и ночи\r\n- Огромный интерактивный мир\r\n- Живая экосистема\r\n- Уникальная экономика\r\n- Система выживания\r\n- Фракции и система репутации\r\n- Множество различных секретов\r\n- Система крафта, ремонта, а также разнообразные апгрейды!\r\n- ДИКАЯ природа\r\n- И последняя причина скачать Alaskan Truck Simulator торрент от механиков или хатаба на русском языке – это обширная сеть дорог и шоссе\r\n\r\n*Рейтинг игры – РИ (реальное испытание)', 'Screens/2021-08-01/LDqxaDrxxwan9QCxkRKpnMU1Vjr7E5W8LlMtO44j.jpg', 'Screens/2021-08-01/A2BTKV5hBtHcx6iknbSkNUBKLRoUwOAQvHrwvFH9.jpg', 'Screens/2021-08-01/Boz38C2feiI3yXEtZxyJQ0bufk4n0vQF5RPXfvEs.jpg', 'Screens/2021-08-01/JEIgVYpSaUr4IIyqIrPaaFHuJjCue3koB2HRPRRL.jpg', 'Screens/2021-08-01/rksuhhxZNvQtQuz8GRteSsqpn9dqmoulkFIYgO5r.jpg', 'Screens/2021-08-01/1xvQPmjuXE7rpiCvaRse4DavyM81CwQ00QOb4oVz.jpg', 'https://www.youtube.com/watch?v=DjF3IJ71KvI&t=2s', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 0, 0, 0, NULL, '2021-08-01 11:46:14', '2021-09-16 10:10:00'),
(32, 12, 'Cyberpunk 2077', 'cyberpunk-2077', 'covers/2021-08-07/M8lFZMSMBNSvcVI5dSm4YEiIhykcCo4Vdb6Yc1ym.jpg', '<p>Дата выпуска: 10 декабря 2020 г. Жанр: RPG / 3D / 1st Person / 3rd Person Разработчик: CD Projekt RED Издательство: CD Projekt RED Платформа: PC Тип издания: Repack Язык интерфейса: Русский / Английский / MULTI 18 Язык озвучки: Русский / Английский Таблетка: Не требуется (DRM-Free) Системные требования: ОС: Windows 7, 8, 10 (64-bit) Процессор: Core i5-3570K / FX-8310 или лучше Оперативная память: 8 GB Видеокарта: GTX 780 / Radeon RX 470 или лучше Место на жестком диске: 70 GB (рекомендуется SSD)</p>', '<p>Тематика киберпанка всегда будет востребована со стороны простых игроков. И что самое приятное, теперь на эту вселенную обратили свое внимание создатели легендарного Ведьмака. Они решили взять все в свои руки и создать поистине уникальный и большой мир, который можно будет исследовать и наслаждаться многочисленными возможностями. При этом вы сможете редактировать внешность главного героя, не ограничивать свои действия на просторах этой игры и делать все, чтобы отыскать специальный препарат, который может сделать своего владельца бессмертным. Сделать это будет сложно, так как миром, в котором вам предстоит жить, поделен влиянием различных банд, и они точно не захотят, чтобы такой любопытный персонаж ходил и искал сокровище. <strong>Проработанный мир</strong> Мы крайне рекомендуем вам скачать Cyberpunk 2077 через торрент бесплатно на русском языке, так как игра как минимум достойна вашего внимания. Ведь над ней работали разработчики, которые являются экспертами в области создания больших миров. Вы сможете прогуливаться по городу реальных масштабов, взаимодействовать с окружением и просто наслаждаться благоприятными возможностями. Не стоит волноваться, каждый NPC, каждое место в игре, все это имеет свой вес и влияние. Что касается мира, то таковым станет Найт-Сити, город, который погряз в грязных желаниях, беззаконии и технологиях. Не стоит сомневаться в том, что вы получите максимум удовольствия от игры и сможете добиться успеха. <strong>Нищета и роскошь</strong> Стоит понимать, что все происходящее будет далеко не таким простым, ведь вам предстоит увидеть город, который одновременно предлагает массу возможностей, а также может все у вас забрать. Остается только полагаться на личную сноровку и имплантаты. Бедный здесь погибает быстрее всех, богатый же наслаждается каждым мгновением жизни. Один щелчок, одно неверное действие и личности тут же меняются местами. Непредсказуемость, вот девиз этого города, поэтому рекомендуем быть крайне осторожным в своих решениях, постараться примкнуть к одной из банды и сделать все, чтобы достичь благоприятного результата. А к какой касте нищих или богатых будете относиться вы, покажет время. <strong>Единственная жизнь</strong> Одно неверное действие или решение может стать причиной тотального проигрыша. Поэтому каждая битва, каждое столкновение может оказаться довольно жестким в плане результативности. Вам предстоит проявить сноровку, постараться оценивать все происходящее и ни в коем случае не допустить личного проигрыша. Не стоит надеяться, что все ваши битвы будут победными, некоторые из них окажутся проигрышными и повлияют на дальнейшую вашу активность. Поэтому следует быть предельно внимательным и понапрасну не рисковать. Вам остается только скачать торрент Cyberpunk 2077 на ПК от группи механики или хатаба и можно отправляться в путь. Эта игра вполне достойно может быть признана лучшей среди всех остальных аналогов и это вполне достойно. Возможно, игра повторит успех Witcher 3, а возможно и превзойдет его, но пока следует только готовиться к приключению и попытаться выполнить все поставленные задачи. <strong>Особенности игры</strong> проработанный редактор персонажа позволит хорошо поработать над внешностью и сделать ее уникальной; обратите внимание на внешний вид главного героя, в большинстве случаев NPC будут реагировать на это и соответственно относиться, поэтому над этим вопросом точно следует хорошо поработать, иначе печальные последствия вас точно не порадуют; нелинейность тоже является главной фишкой игры, ведь благодаря ей можно свободно действовать и добиваться успеха, при этом весь мир будет открыт для вашего внимательного исследования, а дополнительные квесты будут подкреплять ваше желание добиться успеха; обильное количество имплантатов позволит вам модифицировать главного героя по разным направлениям, начиная с мастера ближнего боя, заканчивая уникальным стрелком и даже хакером; никто не мешает вам обзавестись личным отрядом, в который войдут лучшие бойцы или самые настоящие психи, никто не будет ограничивать вас в действиях, и вы наверняка получите возможность добиться успеха, пользуясь их поддержкой.</p>', 'Screens/2021-08-01/2ySz7EKiCCnSRJqNpvekJXJqE8N29AgxvX07AcVX.jpg', 'Screens/2021-08-01/7ELL1NDkz1GqsWQ9VYQE20K8RKIwvOUnbtol1peq.jpg', 'Screens/2021-08-01/ixUzxkeCAX8oxvk27EoLzN62JbeahXE5sjF9e3T0.jpg', 'Screens/2021-08-01/w8jsUUsPJsjbcQMNAHC7494q8gf5hvyCwCoq4tSe.jpg', 'Screens/2021-08-01/vndKe6u6Q0fJFI4Hj7TBXmRI5OYzR0BqZa2ECnzR.jpg', 'Screens/2021-08-01/ucRkz2p6A6Lm8fw9cZZleztlKcqqyp3CYX4WVYx7.jpg', 'https://www.youtube.com/embed/hh5HV4iic1Y', 'https://www.youtube.com/embed/jfpgA6V_F5I', NULL, '<p>- За основу взят релиз от GOG - Вырезаны все озвучки, кроме русской и английской / ничего не перекодировано - Сохранены все пути реестра игры - Версия игры: 1.23 - Смена языка в настройках игры - Время установки ~ 5 минут на HDD (Зависит от компьютера) Установка: 1. Скопировать содержимое раздачи в любое место на диске (установка не требуется) 2. Запустить игру с файла Cyberpunk2077.exe по пути Cyberpunk 2077\\bin\\x64 3. Играть</p>', '<p>У кого слетает язык (касается только раздачи | GOG) скачиваем файл реестра и запускаем от имени администратора. Добавляются данные в реестр. Скачать фикс Только предварительно измените пути до *.exe файла игры и до папки с игрой на свои. Кому не помог файл реестра делаем следующее: Отредактируйте goggame-1423049311.info в папке с игрой чтобы в строках было написано так \"language\": \"Russian\", \"languages\": [ \"ru-RU\" Лечение вылетов при отсутствии AVX https://www50.zippyshare.com/v/c4guBguQ/file.html 1. Скачать архив, распаковать содержимое в Cyberpunk 2077/bin/x64 2. Переименовать Cyberpunk2077.exe в Cyberpunk2077.exe.bak 3. Переименовать файл мода (avxfixmod-34-1-0-1607633788.exe) в Cyberpunk2077.exe 4. Играть AVX fix для Cyberpunk 2077 https://dtf.ru/u/212847-olegosya/283930-avx-fix-dlya-cyberpunk-2077</p>', 'TorrentFiles/2021-08-01/Cyberpunk 2077-by-TorrentMap.torrent', 'TorrentFiles/2021-08-01/Cyberpunk 2077-by-TorrentMap.torrent', '49.6 GB | Igruhav', '63.87 GB v1.23 | GOG', NULL, NULL, 391, 0, 0, 0, NULL, '2021-08-01 11:58:04', '2021-09-19 11:10:11'),
(33, 12, 'ГТА 5 (GTA 5)', 'gta-5-gta-5', 'covers/2021-08-01/xrztUYinBLNDZFFsg8AAsAf8BmDJIq89OKvM7gJB.jpg', 'Год выпуска: 2015\r\nЖанр: Action, Racing, 3D\r\nРазработчик: Rockstar North\r\nИздатель: Rockstar Games\r\nПлатформа: PC\r\nТип издания: Repack\r\nЯзык интерфейса: Русский, Английский, MULTi11\r\nЯзык озвучки: Английский\r\nТаблетка: Вшита (Goldberg)\r\n\r\nCистемные требования:\r\nОС: Windows Vista, 7, 8, 8.1, 10 (64-bit)\r\nПроцессор: Intel Core 2 Q6600 @ 2.40 Ггц / AMD Phenom 9850 2.5 Ггц\r\nОперативная память: 4 GB ОЗУ\r\nВидеокарта: 1 GB DX10, NVIDIA 9800 GT / AMD HD 4870\r\nМесто на диске: 100 GB', 'Лос-Сантос – город солнца, процветания, настоящая гордость западного мира. Ой, простите, так было в прошлом. Сегодня это пристанище уже никому не нужных звезд и совершенно неперспективных реалити-шоу. К тому же город погряз в экономических проблемах. В общем, далеко не самое завидное место для жизни. И уж тем более совершенно неподходящее место для достойного честного заработка.\r\n\r\nПосле долгих ожиданий скачать гта 5 через торрент полностью бесплатно теперь можно и компьютер. Сюжет ГТА 5 рассказывает истории сразу трех колоритных персонажей: Майкл – бывший грабитель банков, пытающийся начать нормальную жизнь и найти общий язык с детьми; Франклин – молодой афроамериканец, член уличной банды, стремящийся оставить все в прошлом и начать новую жизнь; Тревор – бывший летчик и грабитель, подсевший на запрещенные препараты и ставший совершенно неуравновешенным, метается от дельца к дельцу, желая сорвать куш.\r\n\r\nСудьба сводит вместе ребят, не удовлетворенных жизнью, ни старой, ни новой, и они решают провернуть большое рискованное дело. Это дело либо позволит им обрести надежду на лучшую жизнь, либо... В общем, сюжет невероятно интригующий и захватывающий. Игра до краев наполнена фирменным черным юмором, высмеиванием поп-культуры и харизматичностью героев. И все это в огромном, детализированном, красочном, до мелочей проработанном мире ГТА 5.\r\n\r\nОсобенности проекта:\r\n- Впервые за всю историю серии GTA разработчики предлагают нам огромный мир с более четкими текстурами и высокой детальностью прорисовки, с высоким разрешением и более живым разнообразным окружением.\r\n- GTA 5 обогатилась новыми видами животного мира, были улучшены погодные условия, поток машин на дороге стал плотнее, а модель повреждений была доработана. И, опять-таки, все вокруг стало красочнее и реалистичнее.\r\n- Игру gta 5 скачать торрент полностью на русском можно теперь и на pc, так как после долгих раздумывать разработчики решили выпустить эту игру не только на приставках а и на персональных компьютерах.\r\n- Необычный сюжет, объединяющий сразу три жизненных истории главных персонажей, не может не интриговать. Приятелям, между которыми будет переключаться игрок, предстоит организовать серию серьезных ограблений с вековым налетом дерзости.\r\n- Вместе с GTA 5 студия Rockstar Games представила геймерам проект Grand Theft Auto Online, где пользователям предоставляется полная свобода действия в построении своей криминальной карьеры. Изначально онлайн-версия была доступна только владельцам консолей Xbox 360 и PlayStation 3, однако теперь проявить себя могут и держатели платформ нового поколения.', 'Screens/2021-08-01/pb5bZNvJsAF8VdGIAONrLi5Ni4Rj6hZabc7ynnxi.jpg', 'Screens/2021-08-01/2U2EY2P4RIg99UY5NudxUHZYBV4qjwXGCuKExvcU.jpg', 'Screens/2021-08-01/YZuoasNWvGwPf68iIX6qHtExBR3r2eyNaGiabqd4.jpg', 'Screens/2021-08-01/X133x9F9hG9tlJtMQUoOGashpZmRVbmi4O39YJ09.jpg', 'Screens/2021-08-01/gIawhRxptvxfWay4UDVaS8c8Zei4gzrmkIsn8vSw.jpg', 'Screens/2021-08-01/xdlUnXznVuliEzJSo7Xi36NhPasBbMU9j54ffVAS.jpg', 'https://www.youtube.com/watch?v=2HOClc6Svg4', 'https://www.youtube.com/watch?v=26tay8lMZW4', NULL, 'Особенности репака: (Igruha)\r\n- За основу взят релиз Rockstar-Rip от =nemos=\r\n- Игра загружена 23.03.2021 и полностью идентична активированной лицензионной копии игры в Rockstar Games\r\n- Ничего не вырезано | Не перекодировано\r\n- Версия игры: 1.0.2245/1.54\r\n- Выведен ярлык для смены языка на рабочий стол\r\n- Время установки ~10 минут (Зависит от компьютера, на слабых будет дольше)\r\n\r\nОсобенности репака: (Рабочий онлайн)\r\n- Версия игры: 1.0.2245/1.54\r\n- Ничего не вырезано\r\n- Все DLC присутствуют\r\n- Добавлен Language Tool (смена языка)\r\n- Отдельно установка сетевого клиента V-MP\r\n- Дата сборки: 28.03.21\r\n\r\nОтдельно установка трейнеров и скриптов:\r\n- Enhanced Native Trainer Update 47.4\r\n- Menyoo PC [trainer mod] до v.1.4.0\r\n- Add-On Vehicle Spawner v.1.4.4\r\n- ScripТHookVDotNet v.3.1.0\r\n- ScripТHookV v.1.0.2245.0\r\n- Rampage v.1.2.6 + Ru\r\n- GTA5 CooP v.0.9.3.7\r\n\r\nВидео обзоры на сборку:\r\nЧтобы исключить лишние вопросы рекомендую ознакомиться:\r\n- Полный обзор сборки - https://www.youtube.com/watch?v=hp7gmu_Zq4M\r\nОстальную информацию можно найти в папке F.A.Q.\r\n\r\nСейвы хранятся в папке:\r\nC:Users/имя пользователя/AppData/Roaming/Goldberg SocialClub Emu Saves/GTA V-0F74F4C4', 'Важно:\r\nИмя пользователя в ОС не должно содержать кириллицу, иначе будет требование активации игры!\r\n\r\nУ вас появляется ошибка активации:\r\nМеняем дату на 18.04.15\r\n\r\nRockstar Games Social Club запрашивает вход:\r\nПуть к сохранениям должен быль на латинице, ПК должен иметь латинское имя.\r\n\r\nЗапускаю Launcher.exe и выдает ошибку ERR_NO_LAUNCHER с иероглифами:\r\nАнтивирус удалил файл 3dmgame.dll, распознав его как вирус. Его нужно заново скачать и внести в исключения антивируса.\r\n\r\nУ кого не русский язык в игре:\r\nПуск - в поиске \"regedit\", запустится редактор реестра, далее:\r\n1. Открыть HKEY_LOCAL_MACHINE\r\n2. Открыть SOFTWARE\r\n3. Открыть Wow6432Node\r\n4. Открыть Rockstar Games\r\n5. Выбрать Grand Theft Auto V\r\n6. Двойной клик на правой стороне \"Language\" и укажите ru-RU\r\n7. Играть\r\n\r\nИгра работала, но потом начала требовать активацию:\r\nПопробуйте перевести дату на пару дней назад на своем компьютере. Или выключайте интернет на время игры/или запретите файлу GTA5.exe выход в интернет, по средствам брандмауэра', 'TorrentFiles/2021-08-01/ГТА 5 (GTA 5)-by-TorrentMap.torrent', 'TorrentFiles/2021-08-01/ГТА 5 (GTA 5)-by-TorrentMap.torrent', '95.42 GB | Рабочий онлайн', '90.0 GB | Igruha', NULL, NULL, 12, 0, 0, 0, 'гта 5 скачать бесплатно, gta5 repack, gta 5 пиратка, скачать gta5 пиратка, download gta5 repack, grand theft auto 5 repack, grand theft auto 5 пиратка, скачать grand theft auto 5 пиратка, download grand theft auto 5 repack', '2021-08-01 12:09:55', '2021-09-16 19:33:05'),
(34, 13, 'IObit Driver Booster PRO', 'iobit-driver-booster-pro', 'covers/2021-08-01/sbLuIDVdejoMWuWKHdCxcQ6NCwMFx7CQPcbhpjlJ.jpg', 'Версия программы: 8.4.0.420\r\nОфициальный сайт: Открыть сайт\r\nЯзык интерфейса: English / Russian\r\nЛечение: Не требуется (инсталлятор уже пролечен)\r\nТип лекарства: Патч\r\nАвтор сборке: elchupacabra', 'Driver Booster сканирует и определяет устаревшие драйверы автоматически, загружает и устанавливает обновления одним щелчком мыши, экономя Ваше время. Более того, он специально разработан для настройки драйверов для лучшей производительности в играх. Это правильный инструмент для защиты ПК от сбоев оборудования, конфликтов и сбоев системы.\r\n\r\n• Автоматически определяет устаревшие драйверы.\r\n• Обновление в 1 клик для максимальной производительности оборудования.\r\n• Тюнинг драйверов для быстродействия игр.\r\n• Быстро, безопасно и просто в использовании.\r\n\r\nV8.4:\r\nУвеличенная база данных для обновления драйверов нового оборудования, включая Radeon RX 6700 Graphics\r\nПовышена безопасность обновления\r\nОптимизирован процесс установки\r\nУлучшена режим Ускорение игр для повышения игровой производительности\r\nНекоторые улучшения пользовательского интерфейса\r\nИсправлены известные ошибки', 'Screens/2021-08-01/ZHLSwa3VXdKXjHDSVDGYyV8ZAMyg7UlWxwohN21B.jpg', 'Screens/2021-08-01/CK31sGNIXtDK9nTqE02aL3HT2Mi32swlxjSVgY4o.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Внимание! Не доверяйте программе полное автоматическое обновление драйверов, чтобы потом не жаловаться, что программа убила вашу систему. Обновляйте только то, что нужно и не забывайте про предварительное резервное копирование.\r\n\r\n1. Совмещённые в одном дистрибутиве установка программы или распаковка портативной (portable app формат) версии\r\n2. Не требует регистрации (патч pawel97)\r\n3. Мультиязычный интерфейс (включая русский /модифицированный lrepacks/)\r\n4. Удалены реклама и adware модули, компоненты автообновления (которые могут нанести вред системе) и прочий\r\n\"мусор\", позволяющий жить программе своей жизнью\r\n5. Подхватывает пользовательский файл настроек Config.ini (если находятся рядом с инсталлятором)\r\n\r\n\r\n\"Тихая\" установка с ключами /SILENT или /VERYSILENT (или файлом \"Silent Install.cmd\")\r\nДля \"Тихой\" установки портативной версии дополнительный ключ /PORTABLE=1 (или файлом \"Unpack Portable.cmd\")\r\n\r\nПримечание!!! Во время установки будет предложено посетить сайт автора репака. Снимаем галочку по желанию.', NULL, 'TorrentFiles/2021-08-01/IObit Driver Booster PRO-by-TorrentMap.torrent', NULL, '20.13 MB | elchupacabra', NULL, NULL, NULL, 14, 0, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-01 12:18:34', '2021-08-05 11:17:28');
INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `cover`, `features`, `description`, `screen_1`, `screen_2`, `screen_3`, `screen_4`, `screen_5`, `screen_6`, `trailer_1`, `trailer_2`, `dlc_list`, `torr_specification`, `torr_problems`, `torr_link_1`, `torr_link_2`, `torr_size_1`, `torr_size_2`, `torr_name_1`, `torr_name_2`, `views`, `count_comment`, `downloads`, `rating`, `key_words`, `created_at`, `updated_at`) VALUES
(35, 13, 'Adobe Photoshop 2021', 'adobe-photoshop-2021', 'covers/2021-08-01/dFJlZh4AaCllkHFA1nYjCcQbYRVx059Ka9hzLAwm.jpg', 'Год: 2020\r\nВерсия программы: 2021 22.3.0.49\r\nОфициальный сайт: Открыть сайт\r\nЯзык интерфейса: Multi Language / English / Russian\r\nЛечение: Не требуется (инсталлятор уже пролечен)\r\nАвтор сборке: KpoJIuK\r\n\r\nCистемные требования:\r\nОС: Microsoft Windows 10 (x64)\r\nПроцессор: Intel Pentium 4 или AMD Athlon 64 (с частотой 2 ГГц или более мощный)\r\nОперативная память: 2 ГБ\r\nМесто на диске: 1,3 ГБ', 'Adobe Photoshop 2021 - новая версия программы для обработки растровой графики. Поддерживается множество графических форматов. Adobe Photoshop позволяет как создавать новые изображения, так и редактировать их. Фотошоп применяют для создания фотореалистических изображений, для работы с цветными отсканированными изображениями, для ретуширования, цветокоррекции, коллажирования, трансформации графики, цветоделения и т.д. Adobe Photoshop располагает всеми методами работы с точечными изображениями, при этом имеет возможность работы со слоями и использует контуры. Программа, которую бесплатно можно скачать на , является безусловным лидером среди профессиональных графических редакторов за счет своих широчайших возможностей, высокой эффективности и скорости работы. Adobe Photoshop предоставляет все необходимые средства для коррекции, монтажа, подготовки изображений к печати и высококачественного вывода.', 'Screens/2021-08-01/NWDfmLw692G3PpVti9sKOw0RBT1fP5EQGoSnOupA.jpg', 'Screens/2021-08-01/50xvGLzCAe95yRk356cL6iYlbdLy7cHH0ZvDHqJx.jpg', 'Screens/2021-08-01/SNR9IngUbNzbdzQTRRVePRpEXsTNDhJgv3w8H00Z.jpg', 'Screens/2021-08-01/G4llMQ6y1jIKuy8Bp8zIbGz9bKaKRVvdrvA6Xm2A.jpg', NULL, NULL, NULL, NULL, NULL, 'Автор сборке: KpoJIuK\r\n\r\n1. Установка в два клика, требуется лишь отключить Интернет-соединение (вручную или автоматически)\r\n2. Приложение Creative Cloud не мусорит в системе - от него остался необходимый минимум\r\n3. Все локализации в комплекте, выбираются во время установки (de-DE, en-US, ru-RU, uk-UA предустановлены)\r\n4. Используется оригинальный установщик, проблемы с другими продуктами исключены\r\n\r\nПараметры командной строки:\r\n-S или -S1 - скрыть окно с прогрессом распаковки временных файлов\r\n-S2 - показать окно с прогрессом распаковки временных файлов\r\n-S или -S1 или -S2 - обязательный параметр\r\n\r\n/XPATH=\"ПУТЬ\" - указать место установки.\r\nПо умолчанию: C:Program FilesAdobeAdobe Photoshop 2020\r\n\r\n/XVCR - установить Visual C++ Redistributable Package (необходимы для работы программы)\r\n\r\nПример: INSTALL.EXE -S /XPATH=\"C:Program FilesAdobeAdobe Photoshop 2020\"\r\n\r\nКонтрольные суммы:\r\nCRC32: 5F84F8C6\r\nMD5: CF8CDF4CDED09F82874B2D651987E770\r\nSHA-1: 533FCC43D57893D5DC27A77AA2A317F93F372FF4\r\n\r\nПримечание!!! При установке, на первой странице установщика, будет предложено изменить домашнюю страницу браузера. Не забудьте снять галочку.', 'При установке, на первой странице установщика, будет предложено изменить домашнюю страницу браузера. Не забудьте снять галочку.', 'TorrentFiles/2021-08-01/Adobe Photoshop 2021-by-TorrentMap.torrent', NULL, NULL, '1.55 GB | KpoJIuK', NULL, NULL, 12, 0, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-01 12:31:27', '2021-08-05 10:14:34'),
(36, 13, 'Windows 10 Enterprise', 'windows-10-enterprise', 'covers/2021-08-01/EkpNjSXS87RXY7TWVLsHcp2o9S22sHSipHBqXlaa.png', 'ВЕРСИЯ:Windows 10 Enterprise LTSC (x86/x64) +/- Office 2019 [Ru/En]\r\nРАЗРАБОТЧИК:Microsoft\r\nЯЗЫК ИНТЕРФЕЙСА:Русский\r\nРАЗРЯДНОСТЬ:64 - 32 bit\r\nЛЕЧЕНИЕ:Активатор вшит в установщик\r\nРАЗМЕР: 4.91 GB\r\n\r\nCистемные требования:\r\nОС: Windows Vista, 7, 8, 8.1, 10 (64-bit)\r\nПроцессор: Частота процессора не менее 1 ГГц\r\nОперативная память: 1 Гб для 32-битных систем, 2 Гб для 64-битных.\r\nВидеокарта: с поддержкой драйвера WDDM 1.0 и DirectX 9\r\nМесто на диске: 14 Гб для 32-битных систем, 18 Гб для 64-битных.', 'Во время инсталляции ОС доступен выбор следующих дополнительных параметров:\r\n\r\n· Отключение шпионских компонентов.\r\n· Возврат меню Пуск от Виндовс 7.\r\n· Группировка дисков в проводнике.\r\n· Отключение брандмауэра.\r\n· Автоматическая активация Windows 10 Enterprise LTSC x86_x64 1809.\r\n· Добавление Smartfix в среду восстановления.\r\n· Автоматическое применение всех твиков реестра.\r\n· Отключение автоматического обновления системы.\r\n· Полное отключение контроля учётных записей.\r\n· Возврат калькулятора старого формата.\r\n· Отключение Windows Defender.\r\n\r\nНа этапе выбора данных параметров можно сразу же указать имя пользователя, пользовательской папки, название рабочей группы и часовой пояс. Если же вас не устраивает ни один из вышеперечисленных вариантов, просто нажмите Установку без опций. Для создание установочной флешки первым делом необходимо скачать торрент образ Windows 10 x64 с Office 2019 Enterprise LTSC на русском.', 'Screens/2021-08-01/61FsS8SePcwFjyyoZ17xv6uyuFo4yZLJmEfzoGHB.png', 'Screens/2021-08-01/6Sqsl3CLUftxSQI3eSRlCL5et4jnIWJ2q9V8RzwE.jpg', 'Screens/2021-08-01/RdmszR0G5ifdiu1nz78Wusa84fmiLDkOWIzsOjk3.png', 'Screens/2021-08-01/y6xdkbaKuMT1wrk56YNRbgJerFuGq9KZMWIBt6WT.png', NULL, NULL, NULL, NULL, NULL, NULL, '<b>Запись на установочный USB-носитель</b>\r\n\r\nАвтор не рекомендует использовать для переноса образа Windows 10 Enterprise LTSC x86_x64 iso на флешку утилиту Rufus. С её помощью можно создать загрузочный носитель, для установки в UEFI режиме, но для Legacy данный способ не подходит. Оптимальным вариантом станет программа Записать на флешку:\r\n\r\n· Обязательно отключите не только антивирус, Защитник Виндовс и Смарт Скрин, но также чистильщики и оптимизаторы. Это связано с наличием в образе активатора, а также некоторых компонентов, созданных при помощи Autolit и упакованных upx. Большинство антивирусов и оптимизаторов считают подобные компоненты потенциально опасными и могут удалять или блокировать их, в результате чего запись образа Windows 10 Enterprise LTSC x64 может пройти некорректно.\r\n· При помощи утилиты UltraISO смонтируйте образ в виртуальный привод. Откройте Мой компьютер и найдите JINNLIVEUSB с назначенной буквой.\r\n· Откройте смонтированный образ, найдите исполняемый файл JINN/Записать на флешку и запустите его.\r\n· Укажите флешку, которую будете использовать в качестве загрузочного устройства. Если устройство не отображается или появляется сообщение Съёмные устройства не найдены – убедитесь, что пункт Показать все диски активен.\r\n· Нажмите кнопку запись и дождитесь окончания процесса.', NULL, NULL, '4.91 GB', NULL, NULL, NULL, 9, 0, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-01 12:39:45', '2021-09-15 21:34:59'),
(37, 15, 'Skyrim - Special Edition(Save)', 'the-elder-scrolls-5-skyrim-special-edition', 'covers/2021-08-01/r8UR3Zg6tCl5AyUNZzH4DvdtgPH0IthiBAgmBgsn.jpg', NULL, 'Высокий эльф 50 уровня, навыки 100, изучены все способности, изучены все ту\'умы (кроме DLC), но открыты не все.\r\n\r\nОткрыта вся карта (в том числе и DLC).\r\n\r\nПройден основной сюжет, в гражданской войне поддерживается НЕЙТРАЛИТЕТ;\r\n\r\nТан в каждом из крупных городов (кроме Виндхельма) и владениях, также приобретены все дома и земли (ДОМА ПОСТРОЕНЫ)... НО, т.к. поддерживается НЕЙТРАЛИТЕТ покупка ХЬЕРИМА невозможна.\r\n\r\nПройдены задания Даэдра\r\nПройден DAWNGUARD\r\nПройден сюжет Темного Братства (ВО Славу СИТИСА)\r\nНовоиспеченный Соловей\r\nИ Глава Гильдии Воров\r\nВ сундуке главы \"НЕБОЛЬШОЕ\" вложение в будущее гильдии в размере 100к септимов разных самоцветов и отмычек.\r\nПолучен статус Архимага Коллегии\r\nВ поместье Озерном, а именно в подвале если пошарить то можно понять что ДОВА садист с синдромом зависимости ( КОМУ ИНТЕРЕСНО ОТЫЩИТЕ )', 'Screens/2021-08-01/GcyqzemriTLCJewWGNT6gNKpktuQEDHDF4APeyBq.jpg', 'Screens/2021-08-01/MGjZBsvqEiQIZ7CqBTRJNWQVzpUQyz2YkD2i773q.jpg', 'Screens/2021-08-01/pe8EInraVEflaN7NeEQtM1mcKRHIWEp9FMehWZwy.jpg', 'Screens/2021-08-01/SYHvtUZ8f0SrWC8zuJucrDBzEnIWAt5s2c9izVo6.jpg', 'Screens/2021-08-01/hEHpuz7zwdzxYRh44dXp3L3osEUBeS6Kf1LIMl75.jpg', 'Screens/2021-08-01/fDeWweYjCpLT8m00ZNW5ZuvKjbEaWJMpepYSCANT.jpg', NULL, NULL, NULL, NULL, NULL, 'TorrentFiles/2021-08-01/The Elder Scrolls 5 Skyrim - Special Edition-by-TorrentMap.torrent', NULL, '5.25 Мб', NULL, NULL, NULL, 23, 0, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-01 12:52:05', '2021-09-18 16:53:24'),
(38, 15, 'Skyrim - Special Edition (Трейнер/Trainer)(+35)', 'the-elder-scrolls-5-skyrim-special-edition-treyner-trainer-35', 'covers/2021-08-01/cIEvfioTdcTBUIGpJ4Ra2ixgdgnGe0VyJdCr8Url.jpg', 'Автор:>iNvIcTUs oRCuS / HoG\r\nИздание: Steam\r\nВерсия Игры: 1.5.97.0.8\r\nЯзык Трейнера: Английский\r\nКоличество Функций: 35\r\nДата Создания Трейнера: 16.05.2020', 'Функции:\r\n\r\nNumpad 0-Inf. Health-Бессмертие\r\nNumpad 1-Inf. Mana-Беск. Мана\r\nNumpad 2-Inf. Stamina-Беск. Выносливость\r\nNumpad 3-One Hit Kill-Мгновенные Убийства\r\nNumpad 4-Magic Weapons-Магическое Оружие\r\nNumpad 5-Inf. Arrows-Беск. Стрелы\r\nNumpad 6-Zero Weight-Нулевой Вес\r\nNumpad 7-Super Jump-Супер Прыжки\r\nNumpad 8-Add Gold-Добавить Золото\r\nNumpad 9-Add TP-Добавить Очки Таланта\r\nNumpad /-Instant Dragon Shout-Мгн. Крики\r\nNumpad *-Add Dragon Souls-Добавить Души Драконов\r\nNumpad --Collisions-Режим Полёта\r\nNumpad +-God Mode-Режим \"Бога\"\r\nLCTRL+Num 0-Vampire TP-Вампирские Очки Таланта\r\nRCTRL+Num 0-Inf. Inventory-Беск. Инвентарь\r\nLCTRL+Num 1-Sneek-Скрытность\r\nLCTRL+Num 2-Lockpicking-Взлом\r\nLCTRL+Num 3-Pickpocket-Кража\r\nLCTRL+Num 4-Speech-Красноречие\r\nLCTRL+Num 5-Alchemy-Алхимия\r\nLCTRL+Num 6-Illusion-Иллюзия\r\nLCTRL+Num 7-Conjuration-Заклинания\r\nLCTRL+Num 8-Destruction-Разрушение\r\nLCTRL+Num 9-Restoration-Восстановление\r\nRCTRL+Num 1-Alteration-Изменение\r\nRCTRL+Num 2-Enchanting-Наложение\r\nRCTRL+Num 3-Smithing-Кузнечное Дело\r\nRCTRL+Num 4-Heavy Armor-Тяжелая Броня\r\nRCTRL+Num 5-Block-Блокирование\r\nRCTRL+Num 6-Two Handed-Двуручное\r\nRCTRL+Num 7-One Handed-Одноручное\r\nRCTRL+Num 8-Archery-Стрелковое\r\nRCTRL+Num 9-Light Armor-Лёгкая Броня', 'Screens/2021-08-01/pZPYV5RWyaqePMEOzKiHqNr6Qvs89A7SnZOhgODI.png', 'Screens/2021-08-01/ytGSOZz5UdCenI8VB5t6o2AA7GGoxlPLhxaBK4DF.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Инструкция:\r\nСкопировать все файлы из архива в корень установленной игры.\r\nЗапустить сначала трейнер, потом игру.\r\nВо время игры нажимайте на клавиши указанные в трейнере.', NULL, 'TorrentFiles/2021-08-01/The Elder Scrolls 5 Skyrim - Special Edition (Трейнер/Trainer)(+35)-by-TorrentMap.torrent', NULL, '2.63 Мб', NULL, NULL, NULL, 19, 0, 0, -1, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-01 15:53:54', '2021-09-26 12:08:19'),
(39, 15, 'Resident Evil Village Фотореалистичная графика', 'resident-evil-village-fotorealistichnaya-grafika', 'covers/2021-08-01/DBmL9NOOrDpXL3NtPVTUnB3aG6DMCgn8QFW6PsTI.jpg', NULL, 'Пользовательский пресет графический настроек для Resident Evil: Village изменить оригинальный визуальный дизайн на более реалистичный. Решейд направлен на удаление \"коричневого фильтра\" и создания максимально реалистичного изображения.\r\n\r\nИспользуемые шейдеры:\r\n\r\nClarity.fx\r\nEyeAdaptation.fx\r\nqUINT_lightroom.fx\r\nAdaptativeTonemapper.fx\r\nMagicHDR.fx\r\nОпционально:\r\n\r\nRGTI (RAY TRACING MOD) by mcflypg\r\nChromaticAberration.fx\r\nCA.fx', 'Screens/2021-08-01/Far5VPt04KrzjdjKc6voZbYRrZftQTj874yi5DHc.jpg', 'Screens/2021-08-01/SQcg76VeQh7svZdarR1m8pDuM8CqMgXOfUijaXTd.jpg', 'Screens/2021-08-01/RTDLDhyWptZSlDodwOLSBLTbvd4ZCKqogqJr8qgt.jpg', 'Screens/2021-08-01/ehBifz0gPHilN1zQOz040jgfcYlUKVUsU4sKj7Q4.jpg', 'Screens/2021-08-01/qKI7o4bhRjJ7hcu4dSNW0Cd6TjPEkWiYDdfivo2Q.jpg', 'Screens/2021-08-01/WQsqcj7Ng64o67VtuZhtTU41SxaZwDIcQN2GM01R.jpg', NULL, NULL, NULL, 'Установка:\r\n\r\nПереместите пресет в папку с игрой\r\nЗапустите Reshade и выберете вашу игру\r\nВ игре и нажмите клавишу \"Home\", в правом верхнем углу нажмите «+» и выберите установленный пресет\r\n\r\nАвтор: Sublime', NULL, 'TorrentFiles/2021-08-01/Resident Evil Village Фотореалистичная графика-by-TorrentMap.torrent', NULL, '64.9 Мб', NULL, NULL, NULL, 91, 1, 0, 1, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-01 16:16:35', '2021-09-26 12:21:10'),
(40, 12, 'Fortnite', 'fortnite', 'covers/2021-08-03/RbIfzxCJkXO76f3Eg3hpGxixwYq9PPtktBhL9pqN.jpg', '<p><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Год выпуска обновления: 2021</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жанр: MMO, Action, Shooter, 3rd person, Adventure</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Разработчик: Epic Games</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Издательство: Epic Games</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Тип издания: Лицензия</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Платформа: PC</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык интерфейса: <strong>Русский, Английский</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык озвучки: <strong>Русский, Английский</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Лекарство: <strong>Не требуется</strong></span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Системные требования</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Операционная система: Windows 7, 8, 8.1, 10</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Процессор: Core i3 2,4 ГГц</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Видеокарта: Intel HD 4000</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Оперативная память: 4 ГБ</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Свободного места на диске: 12 ГБ</span></p>', '<p><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Скачать игру <u>Fortnite Battle Royale</u> через торрент нужно еще потому, что она хороша своей идеей, реализация таких проектов редко происходит, в основном, все выпускающиеся новинки – это шутеры, космические игры, гонки и военные стратегии…скучно и однообразно. А давайте смешаем стратегию и экшен в одной игре, решили разработчики… И без всяких войн!</span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Смешали! И вот что получилось:</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- интереснейший геймплей – необходимо защитить свое жилище от всякой нечисти, отчаянно пытающейся туда проникнуть, для этого нужно расставлять различные хитроумные ловушки;</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- ночью – охраняем, днем собираем – вся ночь проходит неусыпном бдении, а вот днем необходимо искать новые детали для создания ловушек;</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">-<s> вид от третьего лица;</s></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- для создания игры использовался Unreal engine 3, существенно влияющий на графику.</span></p>', 'Screens/2021-08-03/FcyAiZWXQTofq68IE1L3JSp8HC14bgGnzUmAdW7p.jpg', 'Screens/2021-08-03/wziAuAFQE00jAVo9jEnbmJixnXDqoDD9zobyvQN5.jpg', 'Screens/2021-08-03/YvxRtgTHFW57vjLEIWl71pKNiqNOD8MDJvbH8NhN.jpg', 'Screens/2021-08-03/vC8VgE6ByvLlW3mUXmiWDNmWuXyebk8Jv2ef4WC7.jpg', 'Screens/2021-08-03/BtU1DMXomdn16LkxpGF9q56iAznGSshDvLQVn05X.jpg', 'Screens/2021-08-03/O0plUjov9fXBWVtliD6InOUlUpcoXyPSI3Rez0pE.jpg', 'https://www.youtube.com/embed/OP2JjgXjiDY', 'https://www.youtube.com/embed/jfpgA6V_F5I', NULL, '<p><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- За основу взят релиз Rockstar-Rip от =nemos=</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Игра загружена 20.07.2021 и полностью идентична активированной лицензионной копии игры в Rockstar Games</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Ничего не вырезано | Не перекодировано</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры: 1.0.2372.0/1.57</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Выведен ярлык для смены языка на рабочий стол</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Время установки </span><span style=\"color:hsl(0, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">~<strong>10 минут</strong></span><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"> (Зависит от компьютера, на слабых будет дольше)</span><br><br><span style=\"color:hsl(0, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Сейвы хранятся в папке:</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">C:Users/имя пользователя/AppData/Roaming/Goldberg SocialClub Emu Saves/GTA V-0F74F4C4</span></p>', '<p><span style=\"color:hsl(0, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Важно:</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Имя пользователя в ОС не должно содержать кириллицу, иначе будет требование активации игры!</span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>У вас появляется ошибка активации:</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Меняем дату на 18.04.15</span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Rockstar Games Social Club запрашивает вход:</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Путь к сохранениям должен быль на латинице, ПК должен иметь латинское имя.</span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Запускаю Launcher.exe и выдает ошибку ERR_NO_LAUNCHER с иероглифами:</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Антивирус удалил файл 3dmgame.dll, распознав его как вирус. Его нужно заново скачать и внести в исключения антивируса.</span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>У кого не русский язык в игре:</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Пуск - в поиске \"regedit\", запустится редактор реестра, далее:</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">1. Открыть HKEY_LOCAL_MACHINE</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">2. Открыть SOFTWARE</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">3. Открыть Wow6432Node</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">4. Открыть Rockstar Games</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">5. Выбрать Grand Theft Auto V</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">6. Двойной клик на правой стороне \"Language\" и укажите ru-RU</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">7. Играть</span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Игра работала, но потом начала требовать активацию:</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Попробуйте перевести дату на пару дней назад на своем компьютере. Или выключайте интернет на время игры/или запретите файлу GTA5.exe выход в интернет, по средствам брандмауэра</span></p>', 'TorrentFiles/2021-08-03/Fortnite-by-TorrentMap.torrent', NULL, '6.14 GB | Актуальная версия', NULL, NULL, NULL, 60, 0, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-03 09:47:58', '2021-09-26 21:14:18'),
(41, 12, 'GTA San Andreas', 'gta-san-andreas', 'covers/2021-08-03/2caSICKCJc4MKmp4yPi4XTY4sDmx6WO4RATj0LYs.jpg', '<p><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Год выпуска: 6 июня 2005</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жанр: Action (Shooter), Arcade, Racing, 3D, 3rd Person</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Разработчик: Rockstar North</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Издательство: Rockstar Games</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Платформа: PC</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Тип издания: Repack</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык интерфейса: <strong>Русский</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык озвучки: <strong>Английский</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Таблетка: <strong>Вшита</strong></span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Системные требования:</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Операционная система: XP / Vista / 7 / 8 / 10 (32-64-bit)</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Процессор: Intel Pentium 4 или AMD Athlon XP</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Оперативная память: 384 МБ (больше — лучше!)</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Видеокарта: со 128 и более МБ видеопамяти</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Звуковое устройство: совместимое с DirectX</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Места на жестком диске: 5 Гб</span></p>', '<p><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Команда Rockstar North привлекла большое количество талантливых сотрудников, которые приложили максимум усилий для создания уникальных миров. И на этот раз они создали Гта Сан Андреас скачать торрент которой можно у нас, а это возможность вновь прикоснуться к уникальному виртуальному миру, который станет не только в разы больше, но еще и порадует довольно интересным сюжетом. Вас здесь ждут бандиты, разборки и обилие возможностей.</span></p><p>&nbsp;</p><h2><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Главный герой</span></h2><p><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">А что касается истории, то вам предстоит на этот раз взять на себя роль Карла Джонсона. Ровно пять лет назад он сбежал из родных краев, так как тут процветал бандитизм, наркотики и преступная власть. Правда, когда он узнал, что его мать погибла в результате перестрелок местных группировок, он возвращается в родные края. Он намеревается наказать виновных, постараться снять с себя обвинение в убийстве и постараться навести порядок. Получится ли у него это, сказать сложно, все зависит от ваших действий и умения активно все анализировать. Поэтому мы сразу предлагаем вам не терять времени и просто скачать GTA San Andreas через торрент бесплатно на русском языке. После этого мир игры будет полностью вам доступен.</span></p><p>&nbsp;</p><h2><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Особенности игры</span></h2><p>&nbsp;</p><ul><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Вас ждет незабываемое приключение в штат Сан-Андреса, который порадует не только размерами, но и возможностью реализовать себя, вы сможете посещать достопримечательности, прокладывать новые пути для своей карьеры и даже сможете посетить военную базу.</span></li><li>&nbsp;</li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">В этой части приключения появится уникальная система ролевой прокачки, можно будет лично выбирать некоторые части внешнего вида и форму тела, никто не мешает менять этот показатели во время игры, к примеру, можно стать толстым, постоянно питаясь бургерами или начать привлекать внимание окружающих своим мускулистым телом, есть даже навыки вождения и стрельбы, которые вам пригодятся.</span></li><li>&nbsp;</li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Обратите внимание на арсенал вооружения, которое порадует не только обилием разнообразия, но и наличием таких видов вооружения: ракетницы, гранаты, кастеты, катана и многое другое.</span></li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Не стоит забывать и про автопарк, который включает в себя несколько сотен транспортных средств: мотоциклы, квадроциклы, вертолеты, самолеты, даже можно сесть за комбайн и т.д.</span></li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Если основные приключения будут наскучивать, то можно немного расслабиться и отдохнуть, играя в мини-игры: бильярд, покер, баскетбол и многое другое.</span></li><li>&nbsp;</li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Из экстремальных видов времяпрепровождения можно отметить возможность заняться бейс-джампингом, можно прыгать с парашюта или даже осуществлять восхождение в горы.</span></li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Есть возможность примерить на себя профессию: дальнобойщик, машиниста, вора и многие другие направления.</span></li><li>&nbsp;</li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Вас порадует музыкальное сопровождение, которое порадует уникальными треками, позволяющие получить заряд эмоций и наслаждаться благоприятной атмосферой.</span></li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Вас порадует уникальное графическое оформление, которое точно вам понравится, разработчики даже сделали уникальную механику, которая позволит наблюдать, как меняется внешний вид автомобиля, даже покрываются грязью.</span></li><li>&nbsp;</li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">В игре реализована механика здорового питания, которая будет напрямую влиять на характеристики главного героя, чем лучше и здоровее питание, тем лучше показатели эффективности.</span></li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Не стоит забывать про гангстеров, с которыми вам предстоит считаться, дойдет даже до того, что вам предстоит возглавить одну из них и постараться привести ее к процветанию.</span></li><li>&nbsp;</li><li><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">А скачать Гта Сане Андреас торрент чистую русскую версию на ваш компьютер можно можно по ссылкам ниже.</span></li></ul><p>&nbsp;</p>', 'Screens/2021-08-03/OcFGoPmnx9FiUkG89PbP6oktgTASnisnXz6BXvgH.jpg', 'Screens/2021-08-03/VbVsnEv7h57muhRRuRqQNsXTFOD6TKZ0J7YiQ4Hz.jpg', 'Screens/2021-08-03/6cwkETPFLPUd04KyhOzulNQPzHFh7uGR5GfENmwW.jpg', 'Screens/2021-08-03/QsXGXhMYLBoBZznCSD4eiBk32GtrZJ1s48a59k5W.jpg', 'Screens/2021-08-03/7U8sLKLMe2NHjjdlgfF769gmtnYb5scYmgLqio7U.jpg', 'Screens/2021-08-03/3kKAOL6NHCQgIAvdlyKqHVjHiOWun5GjOVjabr39.jpg', 'https://www.youtube.com/embed/daw8xhaGj2s', NULL, NULL, '<p><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- За основу взята чистая оригинальная версия San Andreas</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры 1.01</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Вшит фикс, устраняющий проблемы с мышкой в игре</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Проверено работу на Win 10 (64-bit)</span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Время установки ~ 2 минуты (Зависит от компьютера)</span></p>', NULL, 'TorrentFiles/2021-08-03/GTA San Andreas-by-TorrentMap.torrent', NULL, '3.32 GB | Igruha', NULL, NULL, NULL, 30, 0, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-03 15:29:28', '2021-09-26 21:14:10'),
(42, 12, 'Uncharted 4', 'uncharted-4', 'covers/2021-08-05/HX5uqyPBFQ6a9YnEpW53VprzXY6dbF1n1mR1L8mf.jpg', NULL, '<p><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Uncharted 4 – увлекательная компьютерная игра в жанре экшен и приключения рассказывающая нам о цене сокровища. Вас ожидает яркое приключение, в джунглях, заснеженных вершинах и в самых прекрасных уголках земли. Советуем вам скачать Uncharted 4 через торрент на компьютер бесплатно на русском языке и провести с интересом свой досуг.</span></p><p>&nbsp;</p><h2><span style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>В поисках клада</strong></span></h2><p><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Присоединившись к Натану Дрейку, его брату Сэму, супруге Елене и лучшему приятелю и наставнику Салли игроки смогут отправиться грандиозное приключении по всему миру, чтобы найти потерянное сокровища.</span></p><h2><span style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Соблазн велик</strong></span></h2><p><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Главные события, разворачиваются спустя 3 года после событий Uncharted 3, когда снова на пороге появляется брат главного героя - Сэм, прося его о помощи в котором Дрейк не в состоянии отказать. Браться, решают отправиться в интересное путешествие, за давно потерянным сокровищем знаменитого капитана Генри Эйвери и найти пиратскую утопию - Либерталию, в лесах Мадагаскара. Попав в рискованный мир преступности, Натану Дрейку предстоит принять решение, на какие жертвы он готов пойти, чтобы спасти своих любимых. Рекомендуем вам скачать торрент Uncharted 4 A Thief\'s Endна пк и погрузиться в невероятно захватывающую авантюру.</span><br>&nbsp;</p><h2><span style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Беспокойная жизнь</strong></span></h2><p><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Главному герою, придется отыскать загадочное государство пиратов, с манящим кладом. Прежде всего, ему необходимо исколесить почти весь мир, и сразиться с опасными наемниками. Натан Дрейк повзрослел, но ничуть не потерял свой способности. Он ловко управляется с оружием и прыгает по обрывам, скрываясь от толпы врагов. Его сопровождают надежные друзья, старина Салли и бодрая духом жена Елена.</span><br>&nbsp;</p>', 'Screens/2021-08-05/BifAEUklY4tQ1eYguITraW8lLY3iuJejT76JVCSO.jpg', 'Screens/2021-08-05/5thZAsQmQ349MbMhUXI3kgNe1sxwS5K0xkRT7zoL.jpg', 'Screens/2021-08-05/lKWbzsdUTrzjzOdwDodkPKsunBmt34qPgCM9eH6U.jpg', 'Screens/2021-08-05/1KODo7kwOBpiE37wmkLU7pzDlyRaoQedp5plbKuD.jpg', 'Screens/2021-08-05/CnZchnybIBt5Uslay87wf6Cc5pvomjayCb33lq3D.jpg', 'Screens/2021-08-05/d5loXmobpTVOoYeN61zRicol33ejDMbpvajElx2P.jpg', 'https://www.youtube.com/embed/hh5HV4iic1Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 0, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-05 09:19:42', '2021-09-26 21:13:41'),
(43, 12, 'Days Gone', 'days-gone', 'covers/2021-08-05/3GL2ehQ4DSSlJ7rQwsm8pRcnoFnw3ff5WF3pG2pZ.jpg', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Год выпуска: 18 мая 2021</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жанр: Open World / Post-apocalyptic / Action / Zombies</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Разработчик: Bend Studio</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Издательство: PlayStation Mobile, Inc.</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Платформа: PC</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Тип издания: Repack</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык интерфейса: <strong>Русский, английский, MULTi23</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык озвучки: <strong>Русский, английский</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Таблeтка: <strong>Вшита (FAIRLIGHT)</strong></span><br><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Системные требования:</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">ОС: Windows 10 (64-bit)</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Процессор: Core i5-2500K 3.3GHz / FX 6300 3.5GHz</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Оперативная память: 8 GB</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Видеокарта: GTX 780 (3 GB) / Radeon R9 290 (4 GB), DirectX 11</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Место на диске: 45 GB</span></p>', '<p><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Days Gone является игрой для PC в жанре приключенческий и шутер. События разворачиваются после двух лет всемирной пандемии, вследствие чего люди превратились в зомби, так называемыми фрикерами. Игрок возьмет на себя роль бывшего бандита по имени Дикон Сейнт-Джон и будет блуждать в поисках приключений по всей земле.</span><br><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Зомби-апокалипсис – самая распространенная теория о гибели человечества. Уже было создано десятки разных произведений, которые рассказывают о разных исходах появления зомби. И сегодня у вас будет отличная возможность скачать торрент Days Gone (Жизнь После) pc версию и вновь поближе познакомиться с новой теорией, которая рассказывает о том, как люди приноровились к выживанию в самых жестоких условиях, полному окружению зомби и исследованию мира. Но правда ли зомби стали главной проблемой? Или на фоне всеобщего хаоса люди начали демонстрировать свою истинную натуру? Все это предстоит выяснить вам, поэтому стоит быть предельно внимательным и осторожным.</span><br>&nbsp;</p><h2><span style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Главные преимущества игры</strong></span></h2><p><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Вы повстречаете на своем пути немало выживших и будете взаимодействовать с некоторыми фрикерами, осматривать заброшенные города и опустевшие покинутые здания, в поисках необходимых запасов. У вас будет прекрасная возможность объехать всю землю, в которой не осталось прежней жизни, из-за смертельного вируса. У главного героя байкера и охотника за головами будет крутой мотоцикл, на котором он будет колесить по опасной дороге, кишащей ордой жутких людей и кровожадных зомби.</span><br>&nbsp;</p><h2><span style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Путешествие и сражения</strong></span></h2><p><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Вам предстоит взять на себя роль обычного байкера, который отправился противостоять зомби и искать убежище, куда он отправил свою жену и ребенка во имя спасения. Он уже не видел их долгое время, но не теряет надежды найти их вновь. Путешествует по миру он на своем байке, сражается с зомби и мародёрам, ищет полезные ресурсы и банально выживает. Кстати, зомби в этой игре представлены более чем жестокими, у них есть свои улья, они чуют врага издалека и хорошо выдерживают выстрелы с огнестрельного оружия. Поэтому, когда вы решите скачать Days Gone через торрент на ПК на русском, то стоит запастись терпением и внимательностью, выживать в таких условиях будет крайне сложно.</span><br><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Зомби стали самой настоящей проблемой, так как превратили людей не только в опасных существ, но еще и раскрыли их истинную сущность. Поэтому придется быть крайне внимательным и стараться не поддаваться на провокации, ведь люди порой могут быть опаснее любого монстра.</span></p>', 'Screens/2021-08-05/GdFLM9exjSwasw2AyLFgI4klmhBrVEz0Dq5LIMGp.jpg', 'Screens/2021-08-05/ZaP8phhOgTneFLjS9yOt8XqO6kA6VEvVQsK5AIEE.jpg', NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/hh5HV4iic1Y', NULL, NULL, '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- За основу взят релиз от FAIRLIGHT</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Вырезаны все озвучки кроме русской и английской / ничего не перекодировано</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры: 1.06</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Смена языка в настройках игры</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Время установки ~ 10 минут (Зависит от компьютера)</span></p>', NULL, 'TorrentFiles/2021-08-05/Days Gone-by-TorrentMap.torrent', NULL, '25.64 GB | Igruha', NULL, NULL, NULL, 182, 10, 0, -1, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-05 09:25:22', '2021-09-26 21:13:58'),
(44, 12, 'Need for Speed Most Wanted 2005', 'need-for-speed-most-wanted-2005', 'covers/2021-08-05/BP2KIxzn9MUWCOTtwQSg5kHL5uNFVARg6veztnCq.jpg', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Дата выхода: 2005</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жанр: Arcade, Racing, Cars, 3D</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Разработчик: EA Black Box</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Издатель: Electronic Arts</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Платформа: РС</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Тип издания: RePack</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык интерфейса:<strong> RUS</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык озвучки:<strong> RUS</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Таблетка: <strong>Вшито</strong></span><br><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>СИСТЕМНЫЕ ТРЕБОВАНИЯ:</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Операционная система: XP, Vista, 7, 8, 10 (32-64-bit)</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Процессор: 2.5 GHz</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Оперативная память: 256 Мб</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Видеокарта: 512 МБ, совместимая с DirectX 9</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Звуковая карта: Звуковое устройство</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Свободное место на жестком диске: 3 ГБ</span></p>', '<p><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Две части Need for Speed Underground настолько восторженно были приняты геймерами, что их энтузиазм перерос из виртуального мира в реальный. Привыкнув к неоновым подсветкам, реву мотора и бешеной скорости в игре, разъезжать по настоящему городу в обычном автомобиле уже становится скучно. Поэтому стритрейсеры переехали из-за своих компьютерных столов на улицы ночного города, превратив свои автомобили в пародии крутых тачек, представленных в Underground. Конечно, роскошь истинных виртуальных автомобилей не сравнима ни с чем, поэтому знаменитая серия NFS по-прежнему занимает высокие позиции в списке досуговых занятий множества геймеров.</span><br><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Вслед за второй частью Underground разработчики выпустили игру Need for Speed: Most Wanted, которая открыла новые грани виртуальной реальности. Теперь перед стритрейсерами стоят две задачи: стать лучшим и унести колеса подальше от разъяренных копов. А в помощь им предоставляется открытый город с множеством главных трасс и всяческих закоулков, а также крутые, мощные и, само собой, дорогие тачки! Мир Most Wanted сочетает в себе роскошь, скорость, криминал и риск. Наслаждайтесь!</span><br><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Почему геймеры до сих пор хотят скачать торрент Need for Speed Most Wanted 2005 года?</strong></span><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Открытый мир, позволяющий свободно перемещаться по городу, заезжая то в спальные, то в промышленные районы.</span><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Город большой и бурный, поэтому на дороге вполне можно попасть в пробку. Но когда на хвосте висит полиция, прохлаждаться некогда — нужно рвать когти! Удрать помогут закоулки и мастерские навыки стритрейсера.</span><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Теперь одной реакции будет недостаточно — чтобы оторваться от преследователей, придется выдать какой-нибудь эффектный трюк. В Most Wanted некогда будет скучать!</span><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Разумеется, тюнинг по-прежнему стоит особняком. Война войной, как говорится, а обед по расписанию. Так что отправляйтесь в гараж и проявите себя в дизайнерском и инженерном искусстве! Кстати, где еще как ни в Most Wanted очень важно иметь мощнейший двигатель? Здесь все для этого есть. Вперед!</span><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Цель каждого геймера — пробиться из разряда новичка на вершину гоночной элиты, то есть стать первым в «Черном списке». Только помните, что чем выше вы продвигаетесь по этому списку, тем более желанными оказываетесь для местной полиции...</span><br><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Need for Speed Most Wanted Black Edition:</strong></span><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Какой бы крутой ни была игра, ее всегда оказывается мало, особенно когда речь о супергонках. Поэтому специально для тех, кому мало, было выпущено расширенное издание — Black Edition. Разумеется, оно предлагает несколько новых эксклюзивных автомобилей, среди которых особо оттюнингованный BMW M3 и классический Chevrolet ’67 Camaro. Также предусмотрено несколько новых соревнований. Например, весьма увлекателен режим преследования, где разъяренные до предела копы гонятся за геймером на мощных внедорожниках. Не обошлось в Black Edition и без новых трасс — три трека были созданы специально для этого издания. Еще в игре представлены уникальные виниловые наклейки, которые помогут подчеркнуть крутость авто, разозлить копов или устрашить соперников. Помимо прочего, в набор входит DVD с кадрами, демонстрирующими закулисье Most Wanted.</span></p>', 'Screens/2021-08-05/anFw3Pv2HiRL9uTf9EqoDDBBFkBqP4iqdoATxcei.jpg', 'Screens/2021-08-05/8HOCa3TOfNQlGWROhXf9EidSfEvgbWJ2pD5uLYxY.jpg', NULL, NULL, NULL, NULL, 'https://www.youtube.com/embed/JdkZaxGD4tY', NULL, '-Black Edition', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры - 1.3</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Ничего не вырезано/перекодировано</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Опциональная установка Widescreen Fix для широкоформатных мониторов.</span></p>', NULL, NULL, NULL, '1.87 GB | Igruha', NULL, NULL, NULL, 17, 1, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-05 09:32:08', '2021-09-26 21:13:12');
INSERT INTO `posts` (`id`, `category_id`, `title`, `slug`, `cover`, `features`, `description`, `screen_1`, `screen_2`, `screen_3`, `screen_4`, `screen_5`, `screen_6`, `trailer_1`, `trailer_2`, `dlc_list`, `torr_specification`, `torr_problems`, `torr_link_1`, `torr_link_2`, `torr_size_1`, `torr_size_2`, `torr_name_1`, `torr_name_2`, `views`, `count_comment`, `downloads`, `rating`, `key_words`, `created_at`, `updated_at`) VALUES
(45, 12, 'GTA 4', 'gta-4', 'covers/2021-08-05/0hrOLv2LvvWHv29wk1rcispYJJKGCprdOC1vNhCk.jpg', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Год выпуска: 2010</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жанр: Action (Shooter), Racing, 3D, 3rd Person</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Разработчик: Rockstar North, Rockstar Toronto</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Издатель: Rockstar Games</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Платформа: PC</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Тип издания: Repack</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык интерфейса: <strong>Русский, английский, MULTi</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык озвучки: <strong>Английский</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Лекарство: <strong>Вшито {PROPHET}, (Mr_Goldberg / Christnatcher)</strong></span><br><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Системные требования:</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">ОС: Windows ХР, Vista, 7, 8, 10 (32-64-bit)</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Процессор: Intel Core 2 Duo с тактовой частотой 1,8 ГГц, AMD</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Оперативная память: 1,5 ГБ для XP / 1,5 ГБ для Vista</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Видеокарта: с 256 МБ видеопамяти, Nvidia 7900 / ATI X1900</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Версия DirectX: DirectX 9.0c</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жесткий диск: 16 ГБ свободного места</span></p>', '<p><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Рады сообщить что теперь и пользователи сайта торрент игруха могут без проблем скачать гта 4 торрент бесплатно на свой компьютер когда угодно. И вновь студия Rockstar отправляет нас в Нью-Йорк, точнее, в Либерти-Сити – прототип «Большого яблока». Стоит ли рассказывать, что здесь правит власть, основанная на деньгах. Нередко, очень нередко дело доходит и до преступлений... Но полиция не спит, и герой Grand Theft Auto IV Никко об этом узнает быстро. Мужчина приехал из Восточной Европы, конечно, он ищет лучшую жизнь. Он думает, что живущий здесь двоюродный брат Роман реально крут. Однако родственник быстро его разочаровывает, зато быстро открываются дороги криминального мира, которыми и пойдет Никко на свой страх и риск...</span><br><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Особенности GTA 4:</strong></span><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Восточное побережье США к услугам игроков! Скачав гта 4 через торрент ваш персонаж попадает в огромный мегаполис Либерти-Сити, созданный по подобию Нью-Йорка. Здесь четыре острова, на которых расположились районы Алгонквин, Брокер, Бохан, Олдерни, Дюкс. В них он узнает Манхэттен, Бруклин и другие знаменитые уголки Нью-Йорка.</span><br><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жить криминальной жизнью теперь сложнее. Если в предыдущих частях можно было запросто подойти к машине и сесть в нее, то теперь придется или с замком повозиться, или стекло разбить. С уже упомянутыми полицейскими тоже непросто, они стали буквально опаснее – даже одинокий страж закона опасен. И все это великолепно передает современная графика.</span><br><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Истинный мегаполис... Чтобы доехать от края до края Либерти-Сити понадобится часок времени. Хорошо еще, что знаменитых пробок тут нет, но все же порой удобнее и на общественном транспорте прокатиться. Город не только широк, но и очень высок. В небоскребах есть торговые, деловые центры, по которым Никко может с удовольствием пройтись.</span><br><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Идеально передан ритм современной жизни. Все в Либерти-Сити пользуются сотовыми телефонами, компьютером, решают деловые вопросы. Вот и Никко придется этим плотно заняться. Окружающие стали умнее, поэтому сильно издеваться над собой не позволят, парень в любой момент может оказаться в розыске.</span></p>', 'Screens/2021-08-05/FvE85TD4YuVzreCpLCZUHpJ0pq4RUtNDpuVKCDUo.jpg', 'Screens/2021-08-05/alhkRhZ8PxkTYmCac5qp5qw2pU4PlYVSeVoS2Ph1.jpg', 'Screens/2021-08-05/ITwFZLO7KM9okjoNSFJk4NovS8TjHNR8A3YKOgdB.jpg', 'Screens/2021-08-05/E0GQOMvJwLSqwpkxfdVopiK1gPgfCGVKyvn9ccD9.jpg', 'Screens/2021-08-05/oZceKGZUqUAjVcBWhoAp3nz0Dso3Z2lAIQtRhpuz.jpg', 'Screens/2021-08-05/rp4ucGN2ZIxmAy3l099PjLuxzoNlE24rtwC3oY67.jpg', 'https://www.youtube.com/embed/hh5HV4iic1Y', NULL, NULL, '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Grand Theft Auto IV:</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- За основу взят релиз от PROPHET</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Ничего не вырезано/Ничего не перекодировано</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Кряк RELOADED заменен на RAZOR1911 (фикс от DZ87) вместе с Xliveless 0.999b7</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры: 1.0.8.0</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Быстрая установка 2 минуты (Зависит от компьютера)</span><br><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Grand Theft Auto: Episodes from Liberty City:</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- За основу взят релиз от PROPHET</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Ничего не вырезано/Ничего не перекодировано</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры: 1.1.3.0</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Быстрая установка 2 минуты (Зависит от компьютера)</span></p>', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">1. У кого ошибка SecuLauncher: failed to start application.[2000] не снимайте галочку с установки дополнительного ПО, потому что игра требует наличие vcredist_x86_2005 и запускайте игру от имени администратора.</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">2. Первый запуск игры долгий, ожидайте.</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">3. Смена языка и включение субтитров производится в настройках игры. (Экран/Display)</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">4. Внимание! Некоторые антивирусы могут реагировать на лекарство. Рекомендуется добавить папку с игрой в исключения вашего антивируса. Это не вирус, а прием взлома игры.</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">5. Релиз проверен на Windows 10 (64-bit)</span></p>', 'TorrentFiles/2021-08-05/GTA 4-by-TorrentMap.torrent', NULL, 'Размер: 18.24 GB | xatab', NULL, NULL, NULL, 24, 1, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-05 09:41:20', '2021-09-26 21:11:29'),
(46, 12, 'Crysis Remastered', 'crysis-remastered', 'covers/2021-08-05/qp9ujL7SUTqBfwvicoz7yTVGkKKBNQ12q6tZgYZH.jpg', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Дата выпуска: 18 сентября 2020</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жанр: Action (Shooter) / 3D / 1st Person</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Разработчик: Crytek</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Издательство: Crytek</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Платформа: PC</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Тип издания: Repack</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык интерфейса: <strong>Русский / Английский, MULTi12</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык озвучки:<strong> Русский / Английский</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Таблeтка: <strong>Вшита (CPY-CrackFIX)</strong></span><br><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Системные требования:</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">ОС: Windows 10 (64 bit)</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Процессор: i5-3450 / Ryzen 3</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Оперативная память: 8 GB ОЗУ</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Видеокарта: (4GB) GTX 1050 TI / Radeon 470, DirectX 11</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Место на диске: 21 GB</span></p>', '<p><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Crysis 1 Remastered - это знак что что легендарная компания Crytek нашла в себе силы и снова заявит о себе на весь мир. Если взглянуть на послужной список разработчиков, то можно обнаружить большое количество разнообразных и узнаваемых игр. Но наиболее любопытным является конечно же серия Crysis. Эта игра в свое время наделала много шума и стала чуть ли не эталоном качества. Теперь об этой игре вспоминают с теплом в сердце, но только не разработчики. Они показали тизер и уже готовы представить саму игру, которая готова вновь внести много шума в сферу современных технологий и опять поставить «на колени» производительные мощности ПК. Думаете, что это невозможно? Тогда следует просто попробовать и убедиться в этом лично.</span></p><p>&nbsp;</p><h2><span style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Старая история, новая обертка</strong></span></h2><p><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Несмотря на то, что это всего лишь ремастер, мы рекомендуем скачать Crysis Remastered через торрент на PC просто бесплатно на русском языке у нас. В этой истории вам предстоит стать универсальным солдатом, который способен в одиночку выполнять сложнейшие задачи. В основном это достигается благодаря универсальному костюму, который наделяет героя невероятными способностями и предлагает массу возможностей в плане реализация потенциала. Функции костюма могут делать героя невероятно сильным, быстрым и даже невидимым. Правда, любая функция требует энергии, которая подается небольшим и порциями и часто требует зарядки. Поэтому пользоваться всеми доступными функциями бесконечно не получится. Придется четко рассчитывать свои возможности и стараться не допускать ошибок. Местом действия станут отдаленные острова, на которые упал подозрительный метеорит. Самое интересное то, что сразу прибыли корейские войска и ученые, которые попытались вскрыть оболочку и посмотреть, что именно там скрывается. Именно это и было их ошибкой, так как они пробудили страшную инопланетную силу, которая теперь грозит уничтожить все человечество.</span><br>&nbsp;</p><h2><span style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Красивый мир</strong></span></h2><p><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Главным преимуществом игры Кризис 1 Ремастер 2020 года является проработанное окружение и масса уникальных особенностей. Мир прорисован вручную, и вы часто будете с большим удовольствием наблюдать за всем происходящим. Сражения, интерактивное окружение, большой выбор вооружения и ощущение полного погружения в игру, все позволит вам получать удовольствие от этого игрового приключения. Поэтому можете уже заранее искать большой запас времени, ведь вам предстоит познакомиться с игрой и узнать невероятную историю. Кстати, играть мы рекомендуем на максимальном уровне сложности, который вынудит вас пользоваться всеми функциями костюма и простыми тактическими возможностями.</span><br>&nbsp;</p><h2><span style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Новые технологии</strong></span></h2><p><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">А чтобы игра не показалась типичным ремастером, разработчики из Crytek постарались внести в нее ряд технологических изменений. К примеру, в игре будет реализована любопытная система трассировки лучей, которая в несколько раз улучшает картинку и не нагружает оборудование. Речь идет о привязке к ограниченному числу моделей, которые поддерживают такую технологию. Помимо этого, были улучшены эффекты, анимация и текстуры, поэтому вы вновь сможете наслаждаться невероятной графической красотой, главное, чтобы оборудование потянуло все это.</span><br><span style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Теперь вам остается только скачать торрент Crysis Remastered на ПК от группы механики или хатаба и можно лично прогуливаться по этому уникальному миру. Не сомневайтесь, сражаться с инопланетянами вам точно придется, как и с обычными солдатами и даже универсальными наемниками, которые будут обладать таким же костюмом. А как насчет того, чтобы одним ударом переворачивать танк? Даже такое в игре доступно, как и возможность уклоняться от пуль и метать пальмы. Импровизируйте, костюм вам был выдан специально для этого, желаем вам удачи!</span></p>', 'Screens/2021-08-05/YrkaKNuSKKYrBdHhGZQEC2pcF9xOlVKRPsyFEHCj.jpg', 'Screens/2021-08-05/tGr57dgFQWF9o9UMTBHTETuJDEppXQTDytRGZcki.jpg', 'Screens/2021-08-05/cTd5WG17usHCDtjiQZyjej05q2e48GAUsoltBN0h.jpg', 'Screens/2021-08-05/Jvo063KvGdYllfsLsQqaj9in7KmFH4fGfWM6lKSk.jpg', NULL, NULL, 'https://www.youtube.com/embed/hh5HV4iic1Y', NULL, NULL, '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Удалены все озвучки кроме русской и английской</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры 1.2.0</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Время установки 8 минут(Зависит от компьютера)</span></p>', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Многим пользователям, у кого кряк не работает изначально помогает включение (либо выключение) Hyberthreading/SMT в биосе, либо изменение кол-во доступных системе потоков через msconfig (например, с 16 сделать 15).</span><br><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Это баг кряка, но такие танцы с бубном могут вызвать его работоспособность</span></p>', 'TorrentFiles/2021-08-05/Crysis Remastered-by-TorrentMap.torrent', NULL, '12 GB | xatab', NULL, NULL, NULL, 734, 5, 0, 1, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-05 09:46:19', '2021-09-26 21:11:05'),
(47, 12, 'Scarlet Nexus', 'scarlet-nexus', 'covers/2021-08-05/5OnPe4b2eaUKkZlehSoj6WSpvy6rRZ2dw2wGRnTm.jpg', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Год выпуска: 25 июня 2021</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жанр: Action / Adventure / RPG / Sci-fi</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Разработчик: BANDAI NAMCO</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Издательство: BANDAI NAMCO</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Платформа: PC</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Тип издания: Repack</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык интерфейса: <strong>Русский, английский, MULTi12</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык озвучки: <strong>Английский, Японский</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Таблeтка: <strong>Вшита (FAIRLIGHT)</strong></span><br><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Системные требования:</strong></span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">ОС: Windows 10 (64-bit)</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Процессор: Intel Core i5-3470 / AMD FX-8350</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Оперативная память: 6 GB ОЗУ</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Видеокарта: Nvidia GeForce GTX 760 / AMD Radeon HD 7970</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Место на диске: 16.7 GB</span></p>', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Если вы соскучились по оригинальным вселенным в стиле аниме, то спешим порадовать вас тем, чтобы теперь у вас есть возможность достичь благоприятного результата в плане впечатлений. На этот раз вам предстоит отправиться в довольно оригинальный мир, в который вторглись странные агрессивные создания. С виду они напоминают смесь людей и неодушевленных предметов, при этом быстро перемещаются и агрессивно реагируют на живых людей. Они долгое время терроризировали обычное население и теперь появился специальный отряд героев, которые смогли бросить вызов этим существам и даже уничтожить целое их гнездо. Теперь они стали народными героями, которым предстоит очистить мир от этой скверны.</span></p><h2>&nbsp;</h2><h2><span class=\"text-small\" style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Уникальный герой</strong></span></h2><p><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Вам предстоит управлять главным героем, который обладает небольшой долей мутации разума. Благодаря этому он обрел большую скорость перемещения, силу и возможность управлять своим мечом на расстоянии. Сюда стоит добавить выносливость и умение видеть сокрытое. Благодаря таким навыкам он может смело противостоять своим врагам и даже вовремя уворачиваться от их неожиданных атак. При этом он далеко не единственный такой герой, порой ему предстоит объединять свои усилия с другими и выполнять особо сложные задачи. Готовы ли вы к таким приключениям? Тогда вам следует скачать Scarlet Nexus через торрент бесплатно на русском языке.</span><br>&nbsp;</p><h2><span class=\"text-small\" style=\"color:hsl(30, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Опасные мутанты</strong></span></h2><p><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Но не стоит думать, что в игре вам позволят смело крушить все налево и направо. Дело в том, что теперь вам предстоит продумывать свои действия, стараться искать слабые места своих соперников и даже комбинировать атаки, чтобы своевременно уворачиваться и наносить ответные удары. Возможно, это звучит сложно, но на деле выглядит зрелищно и как минимум любопытно. А чтобы испытать эти эмоции, вам достаточно будет просто скачать торрент Scarlet Nexus на ПК и начинать реализовать свой новый потенциал.</span><br><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Эта игра порадует крепким сюжетом и приятным визуальным оформлением, большой склонностью к пафосу аниме и простым приятным музыкальным сопровождением. Пришла пора спасти мир от новой опасности и стать героем.</span><br>&nbsp;</p>', 'Screens/2021-08-05/wM4EKMFHa9IdCcsDC8cxN5CSt8c4tREQeMSqaoeJ.png', 'Screens/2021-08-05/XYGseQmDbMJ8Ig5d6QvKeHlHFkt545roP4HX3lk8.jpg', 'Screens/2021-08-05/9gog0fSAqtOgCAqk6ijn8c9ZgkIkRKWBuOYmvYRj.jpg', 'Screens/2021-08-05/UD2UvtpxVL11jUvPvazv9nkvfIHbAGKb8Ey6zBeI.jpg', 'Screens/2021-08-05/QGySDgWXYbwodbsPvDlLFiuQvpHP04WJHqNpf0Jf.jpg', 'Screens/2021-08-05/PaR1DaRD5wSnp5VRmuCohovISuWbXS7ppcHXiul6.jpg', 'https://www.youtube.com/embed/hh5HV4iic1Y', NULL, '- Special Battle Attire Set -Red-\r\n- Pre-Order Bundle\r\n- Additional Attachment \"The Other\"\r\n- Ep!c Weapons Bundle\r\n- Brain Punk Bundle', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- За основу взят релиз от FLT</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Ничего не вырезано / ничего не перекодировано</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры: 1.02 (BUILDID 6932234)</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Смена языка озвучки в настройках игры</span><br><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Время установки ~ 5 минут (Зависит от компьютера)</span></p>', '<p><span class=\"text-small\" style=\"color:hsl(0, 0%, 0%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Если не удается загрузить данные системы, то у вас имя пользователя или путь к нему на русском языке, должен быть на английском, проще всего создать вторую учетную запись без русский букв.</span></p>', 'TorrentFiles/2021-08-05/Scarlet Nexus-by-TorrentMap.torrent', NULL, '15.20 GB | Igruha', NULL, NULL, NULL, 452, 20, 0, 2, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-05 09:51:06', '2021-09-26 21:10:56'),
(48, 12, 'SnowRunner', 'snowrunner', 'covers/2021-08-06/mywiPSePlQsVB29ELAL2fr0alAMr38X9bIgrIkhy.jpg', '<p><span style=\"color:rgb(53,53,53);\">Дата выхода: 2020</span><br><span style=\"color:rgb(53,53,53);\">Жанр: Симуляторы</span><br><span style=\"color:rgb(53,53,53);\">Разработчик: Saber Interactive</span><br><span style=\"color:rgb(53,53,53);\">Издатель: Focus Home Interactive</span><br><span style=\"color:rgb(53,53,53);\">Тип издания: Repack</span><br><span style=\"color:rgb(53,53,53);\">Язык интерфейса: </span><strong>Русский, Английский</strong><br><span style=\"color:rgb(53,53,53);\">Язык озвучки: </span><strong>Отсутствует</strong><br><span style=\"color:rgb(53,53,53);\">Таблетка: </span><strong>Вшита (nEOS emu)</strong><br><br><strong>Системные требования:</strong><br><span style=\"color:rgb(53,53,53);\">ОС: Windows 7 / 8 / 10 (64-bit)</span><br><span style=\"color:rgb(53,53,53);\">Процессор: i3-4130 3.4 GHz / Ryzen 3 2200U или лучше</span><br><span style=\"color:rgb(53,53,53);\">Оперативная память: 8 GB</span><br><span style=\"color:rgb(53,53,53);\">Видеокарта: 2 GB, GTX 660 / R9 270 или лучше</span><br><span style=\"color:rgb(53,53,53);\">Место на диске: 25 GB</span></p>', '<p><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Симуляторы вождения в экстремальных условиях получили признание по всему миру, поэтому многие разработчики начали активно развивать этот жанр. Сегодня у вас будет возможность скачать SnowRunner через торрент на русском языке и отправиться в новое приключение. На этот раз вам вновь предстоит посетить труднодоступные территории, на которых придется организовать транспортные перевозки и выполнение прочих задач. Проблемой является то, что территория практически не имеет дорог. Представляет собой сгусток грязи и воды, а учитывая, что действовать предстоит в условиях зимнего покрова, задача усложняется в несколько раз.</span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Стальные монстры</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">На этот раз разработчики решили порадовать игроков целым автопарком разной техники. Всего в него входит около 40 моделей самых разных автомобилей, начиная от пикапов, заканчивая БТР и транспортными гигантами. Вы сможете прокатиться на каждом из них в зависимости от задачи. При этом предусмотрена возможность кастомизации и добавления новых элементов. К примеру, можно перекрасить кузов, изменить бампера и даже поставить улучшенные версии колес.</span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Обилие задач</strong></span><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Еще одной интересной стороной игры станет разнообразие различных задач. Поначалу вам просто предстоит выезжать на вызовы от местных жителей, которые застряли в грязи и не могут вызволить свой транспорт. Затем можно приступать к обычной транспортировке строительных материалов и крупногабаритных грузов. Иногда предстоит перемещаться в составе колонны, что потребует высокого уровня профессиональной езды. При этом все ваши действия будут влиять на окружение. К примеру, довезли стройматериалы, значит скоро появится мост через реку. Довезли оборудование, значит скоро будет развернуто предприятие и т.д. Это добавляет атмосферности игре и позволяет полностью в нее погрузиться.</span><br><br><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Вам остается только скачать торрент SnowRunner A MudRunner Game на ПК 2020 года и можно отправляться в путь. Вас ждет много поручений, которые предстоит тщательно выполнять и стараться делать это максимально результативно. Помните, что от успеха зависит доступ к новому виду транспорта и более сложным поручениям.</span></p>', 'Screens/2021-08-06/9KPfHPDEeyxgtcV2QEIk0xO39xmJuEWXPNuFloDS.jpg', 'Screens/2021-08-06/OzqUwiqIzzCcb15xriPQP4zxBMOhvrM4MECXwq2P.jpg', 'Screens/2021-08-06/2nT37ZStQq0jM82Y0a4fEoi0ZvBDhuzZwiLIgD4W.jpg', 'Screens/2021-08-06/WmoHmadeh1UqvnznDY6CfsoUBydp6boM8meEnFGI.jpg', 'Screens/2021-08-06/336lnKXnUSVxmQZuTw46vBcXxnZyQKf0eveZ5Y3e.jpg', 'Screens/2021-08-06/Thk92zpxG8lScka6K7XMlTRUCQyv349s5qzSLpvv.jpg', 'hcFSFjJ2b6o', 'P1_ty7esAnI', '- Sabertooth Livery\r\n- Navistar 5000-MV Tractor\r\n- High Roller Pack\r\n- Loaded Dice Vinyl Wrap\r\n- Scorched Vinyl Wrap\r\n- True Colors Vinyl Wrap\r\n- Season 1: Search and Recover\r\n- Season 2: Explore and Expand\r\n- Season 3: Locate & Deliver\r\n- Season 4: New Frontiers\r\n- Western Star 49X\r\n- Clasico Pack\r\n- Anniversary DLC\r\n- GMC Brigadier\r\n- Burning Bright Vinyl Wrap Pack\r\n- TATRA Dual Pack', '<p><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- За основу взят релиз EGS-Rip</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Ничего не вырезано/ Ничего не перекодировано</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Игровые архивы не вскрыты</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры - 14.2</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Выбор языка в меню настроек игры</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Время установки 10 минут (Зависит от компьютера)</span></p>', '<p><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">У кого слетает язык (касается только раздачи | GOG) скачиваем файл реестра и запускаем от имени администратора. Добавляются данные в реестр.</span><br><a href=\"https://s13.torents-igruha.org/engine/go.php?url=aHR0cHM6Ly90b3JyZW50cy1pZ3J1aGEub3JnL2VuZ2luZS9kb3dubG9hZC5waHA%2FaWQ9MjM1MTA%3D\"><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong><u>Скачать фикс</u></strong></span></a><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Только предварительно измените пути до *.exe файла игры и до папки с игрой на свои.</span><br><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Кому не помог файл реестра делаем следующее:</strong></span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Отредактируйте goggame-1423049311.info в папке с игрой чтобы в строках было написано так</span><br><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">\"language\": \"Russian\",</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">\"languages\": [</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">\"ru-RU\"</span><br><br><span class=\"text-small\" style=\"color:hsl(0, 75%, 60%);font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Лечение вылетов при отсутствии AVX</strong></span><br><a href=\"https://s13.torents-igruha.org/engine/go.php?url=aHR0cHM6Ly93d3c1MC56aXBweXNoYXJlLmNvbS92L2M0Z3VCZ3VRL2ZpbGUuaHRtbA%3D%3D\"><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">https://www50.zippyshare.com/v/c4guBguQ/file.html</span></a><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">1. Скачать архив, распаковать содержимое в Cyberpunk 2077/bin/x64</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">2. Переименовать Cyberpunk2077.exe в Cyberpunk2077.exe.bak</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">3. Переименовать файл мода (avxfixmod-34-1-0-1607633788.exe) в Cyberpunk2077.exe</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">4. Играть</span><br><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">AVX fix для Cyberpunk 2077</span><br><a href=\"https://s13.torents-igruha.org/engine/go.php?url=aHR0cHM6Ly9kdGYucnUvdS8yMTI4NDctb2xlZ29zeWEvMjgzOTMwLWF2eC1maXgtZGx5YS1jeWJlcnB1bmstMjA3Nw%3D%3D\"><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">https://dtf.ru/u/212847-olegosya/283930-avx-fix-dlya-cyberpunk-2077</span></a></p>', 'TorrentFiles/2021-08-06/SnowRunner-by-TorrentMap.torrent', 'TorrentFiles/2021-08-06/SnowRunner-by-TorrentMap.torrent', '16.21 GB | Igruha', '16.90 GB | Igruha (Public Test)', NULL, NULL, 1222, 17, 7, 1, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-06 18:12:04', '2021-09-28 11:30:41'),
(49, 13, 'UltraISO Premium Edition', 'ultraiso-premium-edition', 'covers/2021-08-07/cr8HFAcbJdvnq761o0tyT3nOOWgLdsiYvX7tGhdI.jpg', '<ul><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Название:</strong> UltraISO Premium Edition</span></li><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Раздел:</strong> </span><a href=\"https://cimislia.net/torrents/software/\"><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Софт</span></a><br>&nbsp;</li><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Категория:</strong> CD DVD</span></li><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Год:</strong> 30 / </span><a href=\"https://cimislia.net/xfsearch/month/July/\"><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">July</span></a><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"> / 2020</span></li><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Версия программы:</strong> 9.7.5.3716</span></li><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Официальный сайт:</strong> Открыть сайт</span></li><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Язык интерфейса:</strong> Multi Language / English / Russian</span></li><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Лечение:</strong> не требуется</span></li><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Тип лекарства:</strong> готовый серийник</span></li><li><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Автор сборке:</strong> KpoJIuK</span></li></ul>', '<p><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">UltraISO - одна из лучших программ для работы с образами дисков. Позволяет корректировать образы CD и DVD - изменять данные или удалять их часть прямо из образов, не распаковывая их, а также создавать образы и записывать их на носители. Поддерживает работу с ISO, BIN/CUE, IMG/CCD/SUB, MDF/MDS, PDI, GI, C2D, CIF, NRG, BWI/BWT, LCD, CDI, TAO/DAO, CIF, VCD, NCD, GCD/GI, VC4/000, VDI, VaporCD и другими менее популярными форматами. Также вы найдете еще множество других функций полезных для работы с образами дисков. Ultra ISO может работать в паре с Nero Burning Rom и использовать движок этой программы для записи дисков. Интегрируется с популярными виртуальными эмуляторами, например, Daemon-Tools и Alcohol 120%, а также имеет свой собственный виртуальный привод. Интерфейс программы переведен на множество языков, включая русский язык.</span></p>', 'Screens/2021-08-07/2Wa3RA5lE7ZtOnOdUvKFw85lxwMllvhOPGBgrHPs.jpg', 'Screens/2021-08-07/0ihVNlWcja0Q7OOobkYwKkpdAjMtlcrwkCPmrRpx.jpg', 'Screens/2021-08-07/I6kNuNEy9qECSAcFgkVHmoo5GD8DIIpM21d3anQP.jpg', 'Screens/2021-08-07/cqK98OKxeVRDoI1SsZ9A3SwLf5GzjISw7sAn1SLh.jpg', NULL, NULL, NULL, NULL, NULL, '<p><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Автор сборке: <strong>KpoJIuK</strong></span><br><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Тип</strong>: установка, распаковка portable</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Языки</strong>: русский [+ справка], english, украинский, multilanguage</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Активация</strong>: ZWT</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Дополнительно</strong>: импорт Settings.reg / UltraISO.ini</span><br><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong><u>Параметры командной строки</u></strong>:</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Тихая установка</strong>: /S /I</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Распаковка portable</strong>: /S /P</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Ассоциации для .ISO</strong>: /AS</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Добавить в контекстное меню</strong>: /CM</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Добавить виртуальный привод</strong>: /VD</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Не создавать ярлыки в меню Пуск: /NS</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Не создавать ярлыки на рабочем столе: /ND</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Выбор места установки</strong>: /D=ПУТЬ</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Параметр /D=PATH следует указывать самым последним</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Например</strong>: UltraISO.v9.7.2.3561.exe /S /I /D=C:MyProgram</span></p>', NULL, 'TorrentFiles/2021-08-07/UltraISO Premium Edition-by-TorrentMap.torrent', NULL, '3.72 MB | KpoJIuK', NULL, NULL, NULL, 2, 0, 0, 0, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-08-07 18:05:35', '2021-09-15 21:35:04'),
(50, 16, 'First news on TorrentMap', 'first-news-on-torrentmap', 'covers/2021-09-16/WX2v0lxv2Tk3vYSMEw7FIYarwkJ65INoKFFik78o.jpg', NULL, '<p><span style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, 0, 0, 1, 'скачать бесплатно, repack, пиратка, скачать пиратка, download repack', '2021-09-15 21:59:43', '2021-09-26 17:21:42'),
(57, 12, 'No Man\'s Sky', 'no-man-s-sky', 'covers/2021-09-19/qI1oD8vXtZGsC6FTQfkIxgyRFupcrOyMz0SKU3IM.jpg', '<p><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Год выпуска: 24 июля 2018</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Жанр: Action / Adventure / Open World / Simulator / Survive</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Разработчик: Hello Games</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Издатель: Hello Games</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Платформа: РС</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Тип издания: Repack</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык интерфейса: <strong>Русский / Английский</strong></span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Язык озвучки: <strong>Русский / Английский</strong></span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Таблетка: <strong>Не требуется</strong></span><br><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Системные требования:</strong></span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">ОС: Windows 7/8.1/10 (64-bit)</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Процессор: Intel Core i3 или лучше</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Оперативная память: 8 GB</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Видеокарта: GTX 480, Radeon 7870 или лучше</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Место на диске: 10 GB</span></p>', '<p><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Желаете чего-то невероятного? Чего-то масштабного? Тогда игру No Man\'s Sky скачать торрент нужно именно Вам. Это научно-фантастический проект, разработчиком выступила британская студия Hello Games, более всего знаменитая своей серией Joe Danger о забавном трюкаче. Но No Man\'s Sky нечто совсем другое, что ли, более высокое.</span><br><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Да, так оно и есть. При этом и в буквальном и в переносном смысле. Мир игры процедурно-генерируем. При этом мир представляет собой не какую-то отдельную страну, планету или даже систему. Это целая вселенная! Каждое небесное тело уникально и неповторимо. Каждая планета имеет свою экосистему. Формы жизни поразительны. Как вам, например, с высотный дом плотоядные черви?</span></p><h2><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Кем играем?</strong></span></h2><p><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Игрок выступает в роли разведчика, путешественника. У него есть свой корабль, который нужно холить и лелеять, а то после его уничтожения придется болтаться неизвестно в какой точке космоса в спасательной капсуле. А уничтожить корабль могут — обитателям космоса позволено сражаться друг с другом. Кстати, еще неизвестно, будет ли предусмотрен мультиплеер, но слухи об этом есть. Сам проект No Man\'s Sky должен выйти в 2015 году. Скорее всего, сначала на PS4, затем на PC.</span></p><h2><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\"><strong>Можно ли добавить что-то еще?</strong></span></h2><p><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">Конечно, тут вселенная интересного! Так, все начнется на планете, так похожей на нашу родную, но расположенную в неизвестном месте. Сначала корабля не будет, потребуется им обзавестись. Потом ждут задания, в которых нужно будет открывать новые планеты, преследовать космических бандитов, участвовать в военных операциях. Сюжет еще покрыт завесой тайны, но уже интригует. Также добавим, что разработчики создали собственный движок, поэтому графика No Man\'s Sky совершенно уникальна. Ах да, на церемонии Game Critics Awards 2014 проект признан самым инновационным.</span></p>', 'Screens/2021-09-19/quZM4a77BsuIMEIfeVrH6BpOuNVnV8XaWxvztUEi.png', 'Screens/2021-09-19/dA8BL5PV1IsZ1X9LfiYL0Z5wnTKRx0djaRDdyteD.png', 'Screens/2021-09-19/OjHhPjDnSiRD2vydesi5vuYbR1ZMRqJZg4OTRvlC.png', 'Screens/2021-09-19/3Un0UmLcooM1iwgr5ksefTtceShXrYWVu1YkVDoe.png', 'Screens/2021-09-19/3ylx4pCfg9q3Vca7d3KI7BSTLInCk8qPZuY08Usz.png', 'Screens/2021-09-19/pOnekeLQx54v7iMtyE6yJ6SOfQBTpRFjPySLIpec.png', 'ifZA6IMeLs8', NULL, '- Pre-order DLC', '<p><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- За основу взят релиз от GOG</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Ничего не вырезано / ничего не перекодировано</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Игровые архивы не вскрыты</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Версия игры - 3.66 frontiers 77964 (49985)</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Выведен ярлык для смены языка на рабочий стол</span><br><span class=\"text-small\" style=\"font-family:\'Trebuchet MS\', Helvetica, sans-serif;\">- Время установки ~5 минут на HDD (зависит от компьютера)</span></p>', NULL, 'TorrentFiles/2021-09-19/No Man\'s Sky-by-TorrentMap.torrent', NULL, '7.47 GB | RePack от Igruha', NULL, NULL, NULL, 254, 9, 0, 2, 'No Man\'s Sky скачать бесплатно, No Man\'s Sky repack, No Man\'s Sky пиратка, No Man\'s Sky скачать пиратка, No Man\'s Sky download repack', '2021-09-19 11:47:09', '2021-09-27 19:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `tag_id`, `post_id`, `created_at`, `updated_at`) VALUES
(3, 21, 4, '2021-07-30 12:32:28', '2021-07-30 12:32:28'),
(4, 23, 4, '2021-07-30 12:32:28', '2021-07-30 12:32:28'),
(5, 21, 5, '2021-07-30 13:23:10', '2021-07-30 13:23:10'),
(6, 23, 5, '2021-07-30 13:23:10', '2021-07-30 13:23:10'),
(7, 25, 5, '2021-07-30 13:23:10', '2021-07-30 13:23:10'),
(10, 14, 6, '2021-07-30 13:47:54', '2021-07-30 13:47:54'),
(11, 23, 6, '2021-07-30 13:47:54', '2021-07-30 13:47:54'),
(12, 9, 7, '2021-07-30 14:19:59', '2021-07-30 14:19:59'),
(13, 21, 7, '2021-07-30 14:19:59', '2021-07-30 14:19:59'),
(14, 23, 7, '2021-07-30 14:19:59', '2021-07-30 14:19:59'),
(15, 26, 7, '2021-07-30 14:19:59', '2021-07-30 14:19:59'),
(16, 16, 8, '2021-07-30 14:54:51', '2021-07-30 14:54:51'),
(17, 23, 8, '2021-07-30 14:54:51', '2021-07-30 14:54:51'),
(18, 20, 9, '2021-07-30 14:56:50', '2021-07-30 14:56:50'),
(19, 21, 9, '2021-07-30 14:56:50', '2021-07-30 14:56:50'),
(20, 23, 9, '2021-07-30 14:56:50', '2021-07-30 14:56:50'),
(21, 24, 9, '2021-07-30 14:56:50', '2021-07-30 14:56:50'),
(22, 25, 9, '2021-07-30 14:56:50', '2021-07-30 14:56:50'),
(23, 12, 10, '2021-07-30 14:59:08', '2021-07-30 14:59:08'),
(24, 22, 10, '2021-07-30 14:59:08', '2021-07-30 14:59:08'),
(25, 23, 10, '2021-07-30 14:59:08', '2021-07-30 14:59:08'),
(26, 14, 11, '2021-07-30 15:00:44', '2021-07-30 15:00:44'),
(27, 23, 11, '2021-07-30 15:00:44', '2021-07-30 15:00:44'),
(28, 25, 11, '2021-07-30 15:00:44', '2021-07-30 15:00:44'),
(29, 31, 11, '2021-07-30 15:00:44', '2021-07-30 15:00:44'),
(30, 14, 12, '2021-07-30 15:03:29', '2021-07-30 15:03:29'),
(31, 20, 12, '2021-07-30 15:03:29', '2021-07-30 15:03:29'),
(32, 21, 12, '2021-07-30 15:03:29', '2021-07-30 15:03:29'),
(33, 23, 12, '2021-07-30 15:03:29', '2021-07-30 15:03:29'),
(34, 25, 12, '2021-07-30 15:03:29', '2021-07-30 15:03:29'),
(35, 22, 13, '2021-07-31 08:01:04', '2021-07-31 08:01:04'),
(36, 23, 13, '2021-07-31 08:01:04', '2021-07-31 08:01:04'),
(41, 22, 17, '2021-07-31 08:18:41', '2021-07-31 08:18:41'),
(42, 23, 17, '2021-07-31 08:18:41', '2021-07-31 08:18:41'),
(47, 23, 20, '2021-07-31 09:07:31', '2021-07-31 09:07:31'),
(48, 25, 20, '2021-07-31 09:07:31', '2021-07-31 09:07:31'),
(49, 20, 21, '2021-07-31 10:22:20', '2021-07-31 10:22:20'),
(50, 21, 21, '2021-07-31 10:22:20', '2021-07-31 10:22:20'),
(51, 23, 21, '2021-07-31 10:22:20', '2021-07-31 10:22:20'),
(52, 9, 22, '2021-07-31 10:49:11', '2021-07-31 10:49:11'),
(53, 20, 22, '2021-07-31 10:49:11', '2021-07-31 10:49:11'),
(54, 21, 22, '2021-07-31 10:49:11', '2021-07-31 10:49:11'),
(55, 23, 22, '2021-07-31 10:49:11', '2021-07-31 10:49:11'),
(56, 24, 22, '2021-07-31 10:49:11', '2021-07-31 10:49:11'),
(57, 25, 22, '2021-07-31 10:49:11', '2021-07-31 10:49:11'),
(58, 9, 28, '2021-08-01 11:18:40', '2021-08-01 11:18:40'),
(59, 10, 28, '2021-08-01 11:18:40', '2021-08-01 11:18:40'),
(60, 20, 28, '2021-08-01 11:18:40', '2021-08-01 11:18:40'),
(61, 25, 28, '2021-08-01 11:18:40', '2021-08-01 11:18:40'),
(62, 9, 29, '2021-08-01 11:26:55', '2021-08-01 11:26:55'),
(63, 14, 29, '2021-08-01 11:26:55', '2021-08-01 11:26:55'),
(64, 23, 29, '2021-08-01 11:26:55', '2021-08-01 11:26:55'),
(65, 24, 29, '2021-08-01 11:26:55', '2021-08-01 11:26:55'),
(66, 25, 29, '2021-08-01 11:26:55', '2021-08-01 11:26:55'),
(67, 32, 29, '2021-08-01 11:26:55', '2021-08-01 11:26:55'),
(68, 9, 30, '2021-08-01 11:31:37', '2021-08-01 11:31:37'),
(69, 22, 30, '2021-08-01 11:31:37', '2021-08-01 11:31:37'),
(70, 27, 30, '2021-08-01 11:31:37', '2021-08-01 11:31:37'),
(71, 19, 31, '2021-08-01 11:46:14', '2021-08-01 11:46:14'),
(72, 9, 32, '2021-08-01 11:58:05', '2021-08-01 11:58:05'),
(73, 20, 32, '2021-08-01 11:58:05', '2021-08-01 11:58:05'),
(74, 21, 32, '2021-08-01 11:58:05', '2021-08-01 11:58:05'),
(75, 23, 32, '2021-08-01 11:58:05', '2021-08-01 11:58:05'),
(76, 25, 32, '2021-08-01 11:58:05', '2021-08-01 11:58:05'),
(77, 26, 32, '2021-08-01 11:58:05', '2021-08-01 11:58:05'),
(78, 9, 33, '2021-08-01 12:09:55', '2021-08-01 12:09:55'),
(79, 10, 33, '2021-08-01 12:09:55', '2021-08-01 12:09:55'),
(80, 12, 33, '2021-08-01 12:09:55', '2021-08-01 12:09:55'),
(81, 21, 33, '2021-08-01 12:09:55', '2021-08-01 12:09:55'),
(82, 23, 33, '2021-08-01 12:09:55', '2021-08-01 12:09:55'),
(83, 24, 33, '2021-08-01 12:09:55', '2021-08-01 12:09:55'),
(84, 25, 33, '2021-08-01 12:09:55', '2021-08-01 12:09:55'),
(85, 39, 34, '2021-08-01 12:18:34', '2021-08-01 12:18:34'),
(86, 33, 35, '2021-08-01 12:31:27', '2021-08-01 12:31:27'),
(87, 37, 36, '2021-08-01 12:39:45', '2021-08-01 12:39:45'),
(88, 42, 37, '2021-08-01 12:52:05', '2021-08-01 12:52:05'),
(89, 43, 38, '2021-08-01 15:53:54', '2021-08-01 15:53:54'),
(90, 45, 39, '2021-08-01 16:16:35', '2021-08-01 16:16:35'),
(91, 10, 40, '2021-08-03 10:18:49', '2021-08-03 10:18:49'),
(92, 11, 40, '2021-08-03 10:18:49', '2021-08-03 10:18:49'),
(93, 13, 40, '2021-08-03 10:18:49', '2021-08-03 10:18:49'),
(94, 9, 41, '2021-08-03 15:29:28', '2021-08-03 15:29:28'),
(95, 10, 41, '2021-08-03 15:29:28', '2021-08-03 15:29:28'),
(96, 22, 41, '2021-08-03 15:29:28', '2021-08-03 15:29:28'),
(97, 23, 41, '2021-08-03 15:29:28', '2021-08-03 15:29:28'),
(98, 19, 42, '2021-08-05 09:19:42', '2021-08-05 09:19:42'),
(99, 9, 43, '2021-08-05 09:25:22', '2021-08-05 09:25:22'),
(100, 13, 43, '2021-08-05 09:25:22', '2021-08-05 09:25:22'),
(101, 21, 43, '2021-08-05 09:25:22', '2021-08-05 09:25:22'),
(102, 32, 43, '2021-08-05 09:25:22', '2021-08-05 09:25:22'),
(103, 9, 44, '2021-08-05 09:32:08', '2021-08-05 09:32:08'),
(104, 10, 44, '2021-08-05 09:32:08', '2021-08-05 09:32:08'),
(105, 18, 44, '2021-08-05 09:32:08', '2021-08-05 09:32:08'),
(106, 9, 45, '2021-08-05 09:41:20', '2021-08-05 09:41:20'),
(107, 21, 45, '2021-08-05 09:41:20', '2021-08-05 09:41:20'),
(108, 23, 45, '2021-08-05 09:41:20', '2021-08-05 09:41:20'),
(109, 9, 46, '2021-08-05 09:46:19', '2021-08-05 09:46:19'),
(110, 21, 46, '2021-08-05 09:46:19', '2021-08-05 09:46:19'),
(111, 23, 46, '2021-08-05 09:46:19', '2021-08-05 09:46:19'),
(112, 21, 47, '2021-08-05 09:51:06', '2021-08-05 09:51:06'),
(113, 26, 47, '2021-08-05 09:51:06', '2021-08-05 09:51:06'),
(114, 28, 47, '2021-08-05 09:51:06', '2021-08-05 09:51:06'),
(115, 32, 47, '2021-08-05 09:51:06', '2021-08-05 09:51:06'),
(116, 9, 48, '2021-08-06 18:12:04', '2021-08-06 18:12:04'),
(117, 20, 48, '2021-08-06 18:12:04', '2021-08-06 18:12:04'),
(118, 27, 48, '2021-08-06 18:12:04', '2021-08-06 18:12:04'),
(119, 39, 49, '2021-08-07 18:05:35', '2021-08-07 18:05:35'),
(122, 9, 57, '2021-09-19 11:47:09', '2021-09-19 11:47:09'),
(123, 28, 57, '2021-09-19 11:47:09', '2021-09-19 11:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `like` tinyint(4) NOT NULL DEFAULT '0',
  `dislike` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `post_id`, `like`, `dislike`, `created_at`, `updated_at`, `deleted_at`) VALUES
(118, 11, 48, 0, 1, '2021-09-16 19:05:07', '2021-09-16 19:05:07', NULL),
(119, 19, 47, 1, 0, '2021-09-16 19:08:20', '2021-09-16 19:08:20', NULL),
(120, 11, 47, 1, 0, '2021-09-16 19:30:50', '2021-09-16 19:30:50', NULL),
(121, 16, 48, 1, 0, '2021-09-16 19:42:46', '2021-09-16 19:42:46', NULL),
(122, 22, 48, 1, 0, '2021-09-16 19:43:02', '2021-09-16 19:43:02', NULL),
(123, 11, 50, 1, 0, '2021-09-16 19:48:35', '2021-09-16 19:48:35', NULL),
(124, 11, 39, 1, 0, '2021-09-17 09:25:02', '2021-09-17 09:25:02', NULL),
(125, 11, 38, 0, 1, '2021-09-17 09:25:10', '2021-09-17 09:25:10', NULL),
(126, 11, 46, 1, 0, '2021-09-17 18:01:26', '2021-09-17 18:01:26', NULL),
(127, 11, 57, 1, 0, '2021-09-19 11:47:30', '2021-09-19 11:47:30', NULL),
(128, 11, 43, 0, 1, '2021-09-25 07:07:47', '2021-09-25 07:07:47', NULL),
(129, 16, 57, 1, 0, '2021-09-26 21:08:28', '2021-09-26 21:08:28', NULL),
(130, 16, 47, 1, 0, '2021-09-26 21:11:01', '2021-09-26 21:11:01', NULL),
(131, 16, 46, 0, 1, '2021-09-26 21:11:08', '2021-09-26 21:11:08', NULL),
(132, 16, 45, 0, 1, '2021-09-26 21:11:31', '2021-09-26 21:11:31', NULL),
(133, 16, 44, 0, 1, '2021-09-26 21:13:14', '2021-09-26 21:13:14', NULL),
(134, 16, 42, 0, 1, '2021-09-26 21:13:43', '2021-09-26 21:13:43', NULL),
(135, 16, 43, 0, 1, '2021-09-26 21:14:00', '2021-09-26 21:14:00', NULL),
(136, 16, 41, 0, 1, '2021-09-26 21:14:12', '2021-09-26 21:14:12', NULL),
(137, 16, 40, 1, 0, '2021-09-26 21:14:19', '2021-09-26 21:14:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seen` tinyint(4) NOT NULL DEFAULT '0',
  `post_id` int(11) NOT NULL DEFAULT '0',
  `comment_id` int(11) NOT NULL DEFAULT '0',
  `user_sender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_reported` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reports`
--

INSERT INTO `reports` (`id`, `seen`, `post_id`, `comment_id`, `user_sender`, `user_reported`, `message`, `created_at`, `updated_at`) VALUES
(1, 1, 46, 40, 'Bozy(Admin)', 'User_14', 'On nopisal plohoe soobsenie, plac, plac(', '2021-09-17 19:27:37', '2021-09-17 20:51:35'),
(2, 1, 0, 0, 'Bozy(Admin)', 'Drew', 'Acest utilizator are nickaname straniu!', '2021-09-17 19:30:07', '2021-09-17 20:51:35'),
(3, 1, 46, 56, 'Bozy(Admin)', 'User_1', 'jaloooooobaaaaa!', '2021-09-17 20:12:26', '2021-09-17 20:51:35'),
(4, 1, 48, 57, 'Bozy(Admin)', 'Bozy(Admin)', 'Дата выхода: 2020 Жанр: Симуляторы Разработчик: Saber Interactive Издатель: Focus Home Interactive Тип издания: Repack Язык интерфейса: Русский, Английский Язык озвучки: Отсутствует Таблетка: Вшита (nEOS emu) Системные требования: ОС: Windows 7 / 8 / 10 (64-bit) Процессор: i3-4130 3.4 GHz / Ryzen 3 2200U или лучше Оперативная память: 8 GB Видеокарта: 2 GB, GTX 660 / R9 270 или лучше Место на диске: 25 GB', '2021-09-17 20:16:12', '2021-09-17 20:51:35'),
(5, 1, 47, 28, 'Bozy(Admin)', 'Bozy(Admin)', 'Spam!!!', '2021-09-17 20:54:31', '2021-09-17 20:55:40'),
(6, 1, 45, 42, 'Bozy(Admin)', 'Bozy', 'Materitsea!', '2021-09-17 20:54:46', '2021-09-17 20:55:40'),
(8, 1, 47, 30, 'Bozy(Admin)', 'Bozy(Admin)', 'Spaaaaammmmm!!!!!', '2021-09-17 20:56:20', '2021-09-17 20:56:26'),
(9, 1, 48, 7, 'Bozy(Admin)', 'Bozy(Admin)', 'Spam!!!!', '2021-09-18 08:07:46', '2021-09-18 08:07:57'),
(10, 1, 57, 67, 'Bozy(Admin)', 'Bozy(Admin)', 'so za spam rebeata?!', '2021-09-22 12:38:59', '2021-09-23 17:55:54');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `user` tinyint(4) NOT NULL DEFAULT '0',
  `moderator` tinyint(4) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id`, `user_id`, `time`, `user`, `moderator`, `admin`, `created_at`, `updated_at`) VALUES
(17, 11, 1632775606, 0, 0, 1, '2021-09-18 17:44:07', '2021-09-18 17:44:07'),
(18, 12, 1631999812, 1, 0, 0, '2021-09-18 18:16:52', '2021-09-18 18:16:52'),
(19, 28, 1632066881, 1, 0, 0, '2021-09-19 12:54:41', '2021-09-19 12:54:41'),
(20, 22, 1632695620, 0, 1, 0, '2021-09-25 18:59:56', '2021-09-25 18:59:56'),
(21, 16, 1632701298, 1, 0, 0, '2021-09-26 21:08:18', '2021-09-26 21:08:18'),
(22, 15, 1632776782, 1, 0, 0, '2021-09-27 18:06:22', '2021-09-27 18:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(9, 'Открытый мир', 'otkrytyy-mir', '2021-07-30 09:15:28', '2021-07-30 09:15:28'),
(10, 'Гонки', 'gonki', '2021-07-30 09:17:13', '2021-07-30 09:17:13'),
(11, 'Стелс', 'stels', '2021-07-30 09:17:24', '2021-07-30 09:17:24'),
(12, 'Игры с онлайном', 'igry-s-onlaynom', '2021-07-30 09:17:33', '2021-07-30 09:17:33'),
(13, 'Зомби', 'zombi', '2021-07-30 09:17:43', '2021-07-30 09:17:43'),
(14, 'Хоррор', 'horror', '2021-07-30 09:17:51', '2021-07-30 09:17:51'),
(15, 'Спортивные', 'sportivnye', '2021-07-30 09:17:58', '2021-07-30 09:17:58'),
(16, 'Выживание', 'vyzhivanie', '2021-07-30 09:18:05', '2021-07-30 09:18:05'),
(17, 'Драки', 'draki', '2021-07-30 09:18:13', '2021-07-30 09:18:13'),
(18, 'Аркады', 'arkady', '2021-07-30 09:18:20', '2021-07-30 09:18:20'),
(19, 'Ожидаемые', 'ozhidaemye', '2021-07-30 09:18:27', '2021-07-30 09:18:27'),
(21, 'Экшен', 'ekshen', '2021-07-30 09:19:59', '2021-07-30 09:19:59'),
(22, 'Для слабых ПК', 'dlya-slabyh-pk', '2021-07-30 09:20:11', '2021-07-30 09:20:11'),
(23, 'Шутеры', 'shutery', '2021-07-30 09:20:19', '2021-07-30 09:20:19'),
(24, 'Хороший сюжет', 'horoshiy-syuzhet', '2021-07-30 09:20:29', '2021-07-30 09:20:29'),
(25, 'Хорошая графика', 'horoshaya-grafika', '2021-07-30 09:21:04', '2021-07-30 09:21:04'),
(26, 'Ролевые (Rpg)', 'rolevye-rpg', '2021-07-30 09:21:16', '2021-07-30 09:21:16'),
(27, 'Симуляторы', 'simulyatory', '2021-07-30 09:21:25', '2021-07-30 09:21:25'),
(28, 'Приключения', 'priklyucheniya', '2021-07-30 09:21:39', '2021-07-30 09:21:39'),
(29, 'VR-игры', 'vr-igry', '2021-07-30 09:21:47', '2021-07-30 09:21:47'),
(30, 'Стратегии', 'strategii', '2021-07-30 09:21:54', '2021-07-30 09:21:54'),
(32, 'Игры 2021', '2021', '2021-07-30 09:22:16', '2021-07-30 09:22:16'),
(33, 'Дизайн', 'dizayn', '2021-07-30 09:22:25', '2021-07-30 09:22:25'),
(34, 'Аудио', 'audio', '2021-07-30 09:22:32', '2021-07-30 09:22:32'),
(35, 'Безопасность', 'bezopasnost', '2021-07-30 09:22:38', '2021-07-30 09:22:38'),
(36, 'Офис', 'ofis', '2021-07-30 09:22:44', '2021-07-30 09:22:44'),
(37, 'Windows', 'windows', '2021-07-30 09:22:50', '2021-07-30 09:22:50'),
(38, 'Программирование', 'programmirovanie', '2021-07-30 09:22:56', '2021-07-30 09:22:56'),
(39, 'Драйверы', 'drayvery', '2021-07-30 09:23:02', '2021-07-30 09:23:02'),
(40, 'Другие', 'drugie', '2021-07-30 09:23:08', '2021-07-30 09:23:08'),
(41, 'Чит-моды', 'chit-mody', '2021-07-30 09:23:27', '2021-07-30 09:23:27'),
(42, 'Сохранения', 'sohraneniya', '2021-07-30 09:23:33', '2021-07-30 09:23:33'),
(43, 'Трейнеры', 'treynery', '2021-07-30 09:23:38', '2021-07-30 09:23:38'),
(45, 'Моды', 'mody', '2021-08-01 09:17:45', '2021-08-01 09:17:45'),
(46, 'От первого лица', 'ot-pervogo-lica', '2021-09-14 16:00:25', '2021-09-14 16:00:25'),
(47, 'От третьего лица', 'ot-tretego-lica', '2021-09-14 16:00:39', '2021-09-14 16:00:39'),
(54, 'Игры 2022', '2022', '2021-09-18 09:39:56', '2021-09-18 09:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `is_moderator` tinyint(4) NOT NULL DEFAULT '0',
  `is_user` tinyint(4) NOT NULL DEFAULT '1',
  `is_baned` tinyint(4) NOT NULL DEFAULT '0',
  `Notify` int(11) DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`, `is_moderator`, `is_user`, `is_baned`, `Notify`, `avatar`, `theme`) VALUES
(1, 'Bozy', 'Bozy@gmail.com', NULL, '$2y$10$NKMhZvcH0DJaGQYdCLJni.h.VYNbQpP3A2No4boOOHPL9NQLjZtHW', NULL, '2021-07-27 14:37:27', '2021-08-07 18:25:51', 0, 0, 1, 0, 0, 'images/2021-07/WWv5okhtYkq8aTWcngJSoHiAbyULDGelk17MTNwO.webp', 0),
(4, 'Drew', 'andrei.bozu16@gmail.com', NULL, '$2y$10$Q8ByJaFNniiGrnIrZwrq8ueDeXIaBaDckQJni6nkfVcfeGihG6VYm', 'mbI5XstWSTSeTPAJGL7Y1z7SuPXxXu1PCicfznPJqcV8ZSe3KRBq3gVtCXgO', '2021-07-30 11:16:12', '2021-08-08 12:06:46', 0, 0, 1, 1, 1, 'images/2021-07/1JGphpEa3rf2kv22peyrNzdXxMIYincPrOG9IfZH.webp', 0),
(5, 'User_1', 'user1@gmail.com', NULL, '$2y$10$WHnvfJl1OUuCmZxcSq0.G.0U84TKZbR7v0xuqxM88x8WcUjYZsScy', NULL, '2021-07-30 11:20:06', '2021-07-30 11:20:06', 0, 0, 1, 0, 1, 'images/2021-07/JHXLtAyYgAjKQO9NB3Mv5mknF0f8Z7xOLbiNLJXC.jpg', 0),
(6, 'User_2', 'user2@gmail.com', NULL, '$2y$10$Mr/XYus1B5Qo7C6NjhM9auPc/yt9pqTUh0D6dUK/MCjS9huYnlHPi', NULL, '2021-07-30 11:26:39', '2021-07-30 11:26:39', 0, 0, 1, 0, NULL, 'images/2021-07/Vu6cyEJHTHtQOrVPFXjFzM3cZma1twfkWPTIfXq7.webp', 0),
(7, 'user4', 'user4@gmail.com', NULL, '$2y$10$AelxgEY3mc8o0KVF/8PDT.uYsgKrno3UC.x0pzNRvKJVfOmRgM8E.', NULL, '2021-08-03 10:30:08', '2021-08-03 10:30:08', 0, 0, 1, 0, NULL, 'images/2021-08/hQs95eA2mxEuZGvhWLxgsIjv4HwJNMFKnMPOAwtN.jpg', 0),
(8, 'User5', 'user5@gmail.com', NULL, '$2y$10$fwXpi1s4AboGgzqmVE5IUe3tL75X47.bHSHw4Pz1sjqjjPxec4g/.', NULL, '2021-08-04 06:57:55', '2021-08-20 18:08:36', 0, 0, 1, 0, 0, NULL, 0),
(10, 'Bozy(Moderator)', 'Bozy.moderator@gmail.com', NULL, '$2y$10$FEe4tJitcmXsFbh6tuVpA.FpKNwwG6v1xGV0bw9lPlmA0kZ7JJZlS', NULL, '2021-08-07 13:36:03', '2021-08-07 13:37:07', 0, 1, 0, 0, NULL, 'images/2021-08/UXRA4T8JsAVmzL0iuiHmddvD3DQGEKGwB7bffIza.jpg', 0),
(11, 'Bozy(Admin)', 'Bozy.admin@gmail.com', NULL, '$2y$10$0G5/oHyt/JLF8.uCWWlo2e9tg/TNui4Ypn9f9nW8hQ3PmOXvnWuvi', 'FPWIo6VNkUPBBkQyulyi6zO33NKoxQ9EStRr42XCxTa7o59WkJtAhxAE7dpF', '2021-08-07 18:26:43', '2021-09-19 13:53:01', 1, 0, 0, 0, 1, 'images/2021-09/mp9Oa3eG6nm9WPkHjR2waHULzmUvnX99so83quIx.jpg', 0),
(12, 'MrDrew168', 'bozu168@gmail.com', NULL, '$2y$10$N2c0iuZ13H.CEdwZWErrKuOVppd9iUMLxRgLHPKLdNcxR0IWH4OgC', '6UbdGUHoadrAxRAKr8eDL3RlrZp4oqOzbejmgErSqoUZwVj99auKzJFzDl1a', '2021-08-08 12:08:39', '2021-09-22 11:51:21', 0, 0, 1, 0, 1, 'images/2021-08/dNvUS9dL9WMJAkLC7YbrcP3lo2qKe2kh89hsSlXi.webp', 0),
(13, 'Ay.Bozu', 'andrew.bozu16@gmail.com', NULL, '$2y$10$y79qaLT9cMQuCPj93FCXOe57HOBFk0l5350q3YGnrL14zXccJH9dS', NULL, '2021-08-08 22:36:56', '2021-08-08 22:36:56', 0, 0, 1, 0, NULL, 'images/2021-08/mAZ8W5Sme52IQUAeaa7osU3r9yMWoAEQ6bQlytqA.jpg', 0),
(14, 'User_6', 'user6@gmail.com', NULL, '$2y$10$JgXCCVCBaT7AeQNgarY7Be6zfhkh2gIvjvEimAt6Ox1QE7qrAocUC', NULL, '2021-08-09 14:42:41', '2021-08-09 14:42:41', 0, 0, 1, 0, NULL, NULL, 0),
(15, 'User_7', 'user7@gmail.com', NULL, '$2y$10$/7uPrds.83wZM3ruIIpuh.e.t/lHWTN8zGBLKkQ0NFtuq2m66Dw7O', '5Cq9rzg2pnTRm0nMJei55VuByOgQX6Sg3lov9gqKmwjxmAtEnakGkwdtSHRD', '2021-08-09 14:47:15', '2021-08-09 14:55:44', 0, 0, 1, 0, 1, NULL, 0),
(16, 'User_8', 'user8@gmail.com', NULL, '$2y$10$rO4J.qizILSH9C7Uxw8n3Ov1Myx9p7dSTVTJIvzQ9fHJ7Hm8ChEPW', NULL, '2021-08-10 13:31:41', '2021-08-10 13:31:41', 0, 0, 1, 0, 0, NULL, 0),
(17, 'User_9', 'user9@gmail.com', NULL, '$2y$10$sO7EMS035m3BQLHKyF7cO.JQisq4./K76S0Ymf.pcQEYLv6GJokl.', NULL, '2021-08-10 13:32:28', '2021-08-10 13:32:28', 0, 0, 1, 0, NULL, NULL, 0),
(18, 'User_10', 'user10@gmail.com', NULL, '$2y$10$Z6E.Hbb3vqURvg4ey2TCnea4rlRmaqTjEbxh107MWkfEb1l6HJsP2', NULL, '2021-08-10 13:36:53', '2021-08-10 13:36:53', 0, 0, 1, 0, NULL, NULL, 0),
(19, 'User_11', 'user11@gmail.com', NULL, '$2y$10$Tv1nFfWc2NsOj222PzVB2OMRMZsQVzQ1lTBBRdETlvnqGmSnXvyaq', NULL, '2021-08-10 13:37:27', '2021-08-10 13:37:27', 0, 0, 1, 0, NULL, NULL, 0),
(20, 'User_12', 'user12@gmail.com', NULL, '$2y$10$nE1PeznngT34IILzGXVhIeJprqPs2.XxjDiQWmOqUcJmJmFRyDv1G', NULL, '2021-08-10 13:38:15', '2021-08-10 13:38:15', 0, 0, 1, 0, NULL, NULL, 0),
(21, 'User_13', 'user13@gmail.com', NULL, '$2y$10$bMHVnyeZR.wt/caj.4NdsO1rwadO3LeuPvRzqtBYMLR//eP6MeOYC', NULL, '2021-08-10 13:38:50', '2021-08-10 13:38:50', 0, 0, 1, 0, NULL, NULL, 0),
(22, 'User_14', 'user14@gmail.com', NULL, '$2y$10$h7zwZE4TCgIlyINVLJu71.0yu5Prly8oPM5mkcE/RgKLIr26QEtWe', 'Q3DX50RI5ITYpeYQVAS7t9r5OL7wJB6fC2uxLJC7RN3NhXfbtl1sH2GRyAzE', '2021-08-11 21:50:20', '2021-08-11 21:50:20', 0, 1, 0, 0, 1, 'images/2021-08/DDgrxHlZHCf3x69EJztwOx3GJQXspFtbGtW1EACj.jpg', 0),
(23, 'User15', 'user15@gmail.com', NULL, '$2y$10$13KUerSq5BrySCUgzs0u9u.nh4Q2sRBwARAsiN8I7LW9emNAfxiki', NULL, '2021-08-23 09:15:06', '2021-08-23 09:15:06', 0, 0, 1, 0, 0, NULL, 0),
(24, 'User16', 'user16@gmail.com', NULL, '$2y$10$F78LMVPT9k2Q5/Al2L4eQOsHnuKw8AjUdNJjZ8AB/Q1h3iNqiZDXu', NULL, '2021-08-23 11:47:11', '2021-08-23 11:47:11', 0, 0, 0, 1, 0, NULL, 0),
(25, 'User17', 'user17@gmail.com', NULL, '$2y$10$1pfkA8It6FpjRA8zeng7NOyF9pSxb.vcQpvX8OoxKw5ELHo6mr8Ji', NULL, '2021-09-13 21:32:19', '2021-09-13 21:32:19', 0, 1, 0, 0, 0, NULL, 0),
(26, 'User_18', 'user18@gmail.com', NULL, '$2y$10$t7uvwwMmKugIeD9f67ZXOeHcSF1pZ93kFgb.NWuswBMADHQubOtIe', NULL, '2021-09-19 12:01:08', '2021-09-19 12:01:56', 0, 0, 1, 0, 0, 'images/2021-09/HGADDpNpTOjOBjGEdwn1eP7cEeDkA6e5pbmBi9uh.jpg', 0),
(27, 'User19', 'user19@gmail.com', NULL, '$2y$10$.Al5ZD0cmC4Q9HYfexLS.OI4rb6GevI6gV/.ikhFY7y38DQ4Hc4Bm', NULL, '2021-09-19 12:09:26', '2021-09-19 12:25:26', 0, 0, 1, 0, 0, 'images/2021-09/bqbqPWZdmig2lSvRslQh3hwv7vT2N36Cbkf1keFL.jpg', 0),
(28, 'User20', 'user20@gmail.com', NULL, '$2y$10$ozam9w6FO7ZnPeaI3yfBdOUPI.UvIBN896aOY/dLT/c6muytAK2uG', NULL, '2021-09-19 12:27:38', '2021-09-19 12:54:06', 0, 0, 1, 0, 1, 'images/2021-09/mYyqOTfxkeg8qZjnrdovNW01RFAnNvQS8UiUGXph.png', 0),
(29, 'User21', 'user21@gmail.com', NULL, '$2y$10$tH9k7JolLfZzSxsC7NMZlufrsTionYjvg1C7Yce/y.0/uRzAA.mAq', NULL, '2021-09-19 12:56:57', '2021-09-19 12:57:22', 0, 0, 1, 0, 0, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `posts_title_index` (`title`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
