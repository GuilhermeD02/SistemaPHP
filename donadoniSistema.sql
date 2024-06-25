-- phpMyAdmin SQL Dump
-- version 5.0.4deb2+deb11u1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 11/06/2024 às 19:41
-- Versão do servidor: 10.5.23-MariaDB-0+deb11u1
-- Versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `donadoniSistema`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`id`, `user_id`, `group`, `created_at`) VALUES
(3, 3, 'user', '2024-04-16 22:07:31'),
(4, 4, 'admin', '2024-04-16 22:13:08'),
(8, 8, 'user', '2024-05-24 23:03:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_identities`
--

CREATE TABLE `auth_identities` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `secret` varchar(255) NOT NULL,
  `secret2` varchar(255) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `extra` text DEFAULT NULL,
  `force_reset` tinyint(1) NOT NULL DEFAULT 0,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `auth_identities`
--

INSERT INTO `auth_identities` (`id`, `user_id`, `type`, `name`, `secret`, `secret2`, `expires`, `extra`, `force_reset`, `last_used_at`, `created_at`, `updated_at`) VALUES
(3, 3, 'email_password', NULL, 'GuilhermeDonadoni@gmail.com', '$2y$12$BWh90YYXp8jh2DsEbziHbulsBq08qZdlqwbyGfU03EvTS6ZMGfB1.', NULL, NULL, 0, NULL, '2024-04-16 22:07:30', '2024-04-16 22:07:31'),
(4, 4, 'email_password', NULL, 'Guilhermevd@gmail.com', '$2y$12$b4Vi6HG4znrI5GZu7Rj6cOsrRz2v44LiCUlXrHzQLVGl8mPGjYjC.', NULL, NULL, 0, '2024-06-07 22:40:48', '2024-04-16 22:13:08', '2024-06-07 22:40:48'),
(8, 8, 'email_password', NULL, 'GuilhermeDV@gmail.com', '$2y$12$ne3.kKG6gFDKWI5.8VlqTuVSVvmgyEjqXf5BrLqn4JppR3uuJDEPy', NULL, NULL, 0, '2024-06-07 22:41:13', '2024-05-24 23:03:07', '2024-06-07 22:41:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `user_agent`, `id_type`, `identifier`, `user_id`, `date`, `success`) VALUES
(1, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'guiguiddfvieira@gmail.com', 1, '2024-04-05 22:45:11', 1),
(2, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'GuilhermeDonadoni@gmail.com', NULL, '2024-04-05 23:05:13', 0),
(3, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'GuilhermeDonadoni@gmail.com', NULL, '2024-04-09 22:17:32', 0),
(4, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'GuilhermeDonadoni@gmail.com', NULL, '2024-04-09 22:21:11', 0),
(5, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'guilhermev@gmail.com', 2, '2024-04-09 22:30:33', 1),
(6, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'GuilhermeDonadoni@gmail.com', NULL, '2024-04-16 22:05:56', 0),
(7, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'GuilhermeDonadoni@gmail.com', NULL, '2024-04-16 22:06:04', 0),
(8, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'guilhermevd@gmail.com', NULL, '2024-04-16 22:12:02', 0),
(9, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'guilhermev@gmail.com', NULL, '2024-04-16 22:12:19', 0),
(10, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'guilhermev@gmail.com', NULL, '2024-04-16 22:12:32', 0),
(11, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-16 22:13:19', 1),
(12, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-16 22:13:43', 1),
(13, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-16 22:24:43', 1),
(14, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-16 22:36:56', 1),
(15, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-16 23:15:38', 1),
(16, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-23 22:06:21', 1),
(17, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-23 22:10:14', 1),
(18, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/118.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-23 22:45:36', 1),
(19, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-23 23:05:27', 1),
(20, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-26 22:08:05', 1),
(21, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-26 22:31:07', 1),
(22, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-26 23:01:39', 1),
(23, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-30 22:16:13', 1),
(24, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-30 22:17:15', 1),
(25, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-30 22:19:14', 1),
(26, '192.168.1.100', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-30 22:25:24', 1),
(27, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-30 22:31:34', 1),
(28, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-30 22:47:47', 1),
(29, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-30 22:59:42', 1),
(30, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-30 23:07:53', 1),
(31, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-04-30 23:08:14', 1),
(32, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-03 22:06:42', 1),
(33, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-10 22:02:16', 1),
(34, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', NULL, '2024-05-10 22:04:12', 0),
(35, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-10 22:04:18', 1),
(36, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 5, '2024-05-10 22:09:39', 1),
(37, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 5, '2024-05-10 22:10:24', 1),
(38, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-10 22:13:57', 1),
(39, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-10 22:15:44', 1),
(40, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-10 22:31:07', 1),
(41, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 5, '2024-05-10 22:31:44', 1),
(42, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-10 22:31:53', 1),
(43, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', NULL, '2024-05-10 22:37:05', 0),
(44, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-10 22:37:10', 1),
(45, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-10 22:42:31', 1),
(46, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-10 22:51:29', 1),
(47, '192.168.1.107', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-14 22:20:54', 1),
(48, '192.168.1.109', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-17 22:14:37', 1),
(49, '192.168.1.104', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'maria@univicosa.com.br', 6, '2024-05-19 18:47:51', 1),
(50, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'maria@univicosa.com.br', 6, '2024-05-20 11:38:00', 1),
(51, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'hermes@univicosa.com.br', NULL, '2024-05-20 11:38:29', 0),
(52, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'hermes@univicosa.com.br', 7, '2024-05-20 11:39:12', 1),
(53, '::1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'hermes@univicosa.com.br', 7, '2024-05-20 11:41:09', 1),
(54, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-21 22:12:12', 1),
(55, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-21 22:15:24', 1),
(56, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-21 22:56:37', 1),
(57, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-24 22:31:30', 1),
(58, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-24 22:55:45', 1),
(59, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'guilhermed@gmail.com', NULL, '2024-05-24 22:56:13', 0),
(60, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermed@gmail.com', NULL, '2024-05-24 22:56:25', 0),
(61, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-24 22:57:02', 1),
(62, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-24 22:58:28', 1),
(63, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-24 22:58:54', 1),
(64, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-24 22:59:57', 1),
(65, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', NULL, '2024-05-24 23:00:46', 0),
(66, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-24 23:00:51', 1),
(67, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-24 23:01:33', 1),
(68, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'GuilhermeDV@gmail.com', 8, '2024-05-24 23:03:30', 1),
(69, '192.168.50.158', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:125.0) Gecko/20100101 Firefox/125.0', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-05-24 23:17:48', 1),
(70, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', NULL, '2024-06-04 22:12:14', 0),
(71, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 22:12:28', 1),
(72, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 22:14:25', 1),
(73, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'GuilhermeDv@gmail.com', 8, '2024-06-04 22:19:59', 1),
(74, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-04 22:20:26', 1),
(75, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', NULL, '2024-06-04 22:22:55', 0),
(76, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 22:23:04', 1),
(77, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 22:30:28', 1),
(78, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-04 22:35:44', 1),
(79, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-04 22:40:38', 1),
(80, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-04 22:43:29', 1),
(81, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-04 22:48:57', 1),
(82, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-04 22:49:53', 1),
(83, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-04 22:55:17', 1),
(84, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 22:58:18', 1),
(85, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', NULL, '2024-06-04 22:59:08', 0),
(86, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-04 22:59:12', 1),
(87, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:00:23', 1),
(88, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:00:49', 1),
(89, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:04:54', 1),
(90, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:05:38', 1),
(91, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:06:13', 1),
(92, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:06:43', 1),
(93, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:07:40', 1),
(94, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:07:57', 1),
(95, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:08:16', 1),
(96, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-04 23:10:07', 1),
(97, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-04 23:10:28', 1),
(98, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-07 22:36:56', 1),
(99, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', NULL, '2024-06-07 22:37:42', 0),
(100, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-07 22:37:46', 1),
(101, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-07 22:40:26', 1),
(102, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'Guilhermevd@gmail.com', 4, '2024-06-07 22:40:48', 1),
(103, '192.168.1.122', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'email_password', 'guilhermedv@gmail.com', 8, '2024-06-07 22:41:13', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_permissions_users`
--

CREATE TABLE `auth_permissions_users` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `permission` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_remember_tokens`
--

CREATE TABLE `auth_remember_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_token_logins`
--

CREATE TABLE `auth_token_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `id_type` varchar(255) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `Avaliacao`
--

CREATE TABLE `Avaliacao` (
  `id` int(11) NOT NULL,
  `idAluno` int(11) DEFAULT NULL,
  `idAvaliador` int(11) DEFAULT NULL,
  `introducao` int(11) NOT NULL,
  `organizacao` int(11) NOT NULL,
  `repeticoes` int(11) NOT NULL,
  `apresentacao` int(11) NOT NULL,
  `conclusao` int(11) NOT NULL,
  `tempo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `Avaliacao`
--

INSERT INTO `Avaliacao` (`id`, `idAluno`, `idAvaliador`, `introducao`, `organizacao`, `repeticoes`, `apresentacao`, `conclusao`, `tempo`) VALUES
(37, NULL, NULL, 10, 2, 10, 3, 1, 10),
(38, NULL, NULL, 10, 2, 10, 3, 1, 10),
(39, NULL, NULL, 10, 2, 10, 3, 1, 10),
(40, NULL, NULL, 10, 2, 10, 3, 10, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2020-12-28-223112', 'CodeIgniter\\Shield\\Database\\Migrations\\CreateAuthTables', 'default', 'CodeIgniter\\Shield', 1712356036, 1),
(2, '2021-07-04-041948', 'CodeIgniter\\Settings\\Database\\Migrations\\CreateSettingsTable', 'default', 'CodeIgniter\\Settings', 1712356036, 1),
(3, '2021-11-14-143905', 'CodeIgniter\\Settings\\Database\\Migrations\\AddContextColumn', 'default', 'CodeIgniter\\Settings', 1712356036, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(9) NOT NULL,
  `class` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `type` varchar(31) NOT NULL DEFAULT 'string',
  `context` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `TabSubmissao`
--

CREATE TABLE `TabSubmissao` (
  `id` int(11) NOT NULL,
  `nometrab` varchar(50) DEFAULT NULL,
  `curso` varchar(50) DEFAULT NULL,
  `autor` varchar(50) DEFAULT NULL,
  `situacao` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `TabSubmissao`
--

INSERT INTO `TabSubmissao` (`id`, `nometrab`, `curso`, `autor`, `situacao`) VALUES
(35, 'Artigo sobre IA nas industrias.', 'Ads2023', 'Guilherme Donadoni', 0),
(36, 'bora ver isso ai ', 'ADS', 'eu mesmo', 0),
(37, 'bora ver isso ai ', 'ADS', 'eu mesmo', 0),
(38, 'bora ver isso ai ', 'ADS', 'eu mesmo', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `last_active` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `username`, `status`, `status_message`, `active`, `last_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Guilhermevd', NULL, NULL, 1, '2024-04-16 22:10:45', '2024-04-16 22:07:30', '2024-04-16 22:07:31', NULL),
(4, 'Guilhermed', NULL, NULL, 1, '2024-06-07 22:41:06', '2024-04-16 22:13:07', '2024-04-16 22:13:08', NULL),
(8, 'GuilhermeDV', NULL, NULL, 1, '2024-06-07 22:41:28', '2024-05-24 23:03:07', '2024-05-24 23:03:08', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`);

--
-- Índices de tabela `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type_secret` (`type`,`secret`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_permissions_users_user_id_foreign` (`user_id`);

--
-- Índices de tabela `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `selector` (`selector`),
  ADD KEY `auth_remember_tokens_user_id_foreign` (`user_id`);

--
-- Índices de tabela `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type_identifier` (`id_type`,`identifier`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices de tabela `Avaliacao`
--
ALTER TABLE `Avaliacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `TabSubmissao`
--
ALTER TABLE `TabSubmissao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `auth_identities`
--
ALTER TABLE `auth_identities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de tabela `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `auth_token_logins`
--
ALTER TABLE `auth_token_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `Avaliacao`
--
ALTER TABLE `Avaliacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `TabSubmissao`
--
ALTER TABLE `TabSubmissao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `auth_identities`
--
ALTER TABLE `auth_identities`
  ADD CONSTRAINT `auth_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `auth_permissions_users`
--
ALTER TABLE `auth_permissions_users`
  ADD CONSTRAINT `auth_permissions_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Restrições para tabelas `auth_remember_tokens`
--
ALTER TABLE `auth_remember_tokens`
  ADD CONSTRAINT `auth_remember_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
