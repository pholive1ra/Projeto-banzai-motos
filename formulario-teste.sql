-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Jun-2024 às 02:25
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `formulario-teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `log_atividades`
--

CREATE TABLE `log_atividades` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `nome_usuario` varchar(255) NOT NULL,
  `data_hora` timestamp NOT NULL DEFAULT current_timestamp(),
  `acao` varchar(255) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `detalhes_adicionais` text DEFAULT NULL,
  `pergunta_secreta` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `log_atividades`
--

INSERT INTO `log_atividades` (`id`, `usuario_id`, `nome_usuario`, `data_hora`, `acao`, `cpf`, `detalhes_adicionais`, `pergunta_secreta`) VALUES
(1, 21, 'mano', '2024-06-16 03:49:05', 'Login', '313232', '', ''),
(2, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 03:49:12', 'Login', '0', '', ''),
(3, 2, 'jhuan beliscacu', '2024-06-16 03:53:56', 'Login', '0', '', ''),
(4, 2, 'jhuan beliscacu', '2024-06-16 03:58:53', 'Acesso à página inicial', '0', '', ''),
(5, 2, 'jhuan beliscacu', '2024-06-16 03:58:54', 'Acesso à página inicial', '0', '', ''),
(6, 2, 'jhuan beliscacu', '2024-06-16 03:58:55', 'Acesso à página inicial', '0', '', ''),
(7, 2, 'jhuan beliscacu', '2024-06-16 03:59:16', 'Acesso à página inicial', '0', '', ''),
(8, 2, 'jhuan beliscacu', '2024-06-16 03:59:54', 'Acesso à página inicial', '0', '', ''),
(9, 2, 'jhuan beliscacu', '2024-06-16 04:00:14', 'Acesso à página inicial', '0', '', ''),
(10, 2, 'jhuan beliscacu', '2024-06-16 04:00:30', 'Acesso à página inicial', '0', '', ''),
(11, 2, 'jhuan beliscacu', '2024-06-16 04:00:30', 'Acesso à página inicial', '0', '', ''),
(12, 2, 'jhuan beliscacu', '2024-06-16 04:00:32', 'Equipamentos', '0', '', ''),
(13, 2, 'jhuan beliscacu', '2024-06-16 04:00:41', 'Acesso à página inicial', '0', '', ''),
(14, 2, 'jhuan beliscacu', '2024-06-16 04:00:48', 'Acesso à página inicial', '0', '', ''),
(15, 2, 'jhuan beliscacu', '2024-06-16 04:00:50', 'Equipamentos', '0', '', ''),
(16, 2, 'jhuan beliscacu', '2024-06-16 04:01:19', 'Equipamentos', '0', '', ''),
(17, 2, 'jhuan beliscacu', '2024-06-16 04:01:19', 'Equipamentos', '0', '', ''),
(18, 2, 'jhuan beliscacu', '2024-06-16 04:01:19', 'Equipamentos', '0', '', ''),
(19, 2, 'jhuan beliscacu', '2024-06-16 04:01:20', 'Equipamentos', '0', '', ''),
(20, 2, 'jhuan beliscacu', '2024-06-16 04:01:20', 'Equipamentos', '0', '', ''),
(21, 2, 'jhuan beliscacu', '2024-06-16 04:01:20', 'Equipamentos', '0', '', ''),
(22, 2, 'jhuan beliscacu', '2024-06-16 04:01:20', 'Equipamentos', '0', '', ''),
(23, 2, 'jhuan beliscacu', '2024-06-16 04:01:21', 'Equipamentos', '0', '', ''),
(24, 2, 'jhuan beliscacu', '2024-06-16 04:01:28', 'Equipamentos', '0', '', ''),
(25, 2, 'jhuan beliscacu', '2024-06-16 04:01:28', 'Equipamentos', '0', '', ''),
(26, 2, 'jhuan beliscacu', '2024-06-16 04:01:28', 'Equipamentos', '0', '', ''),
(27, 2, 'jhuan beliscacu', '2024-06-16 04:01:28', 'Equipamentos', '0', '', ''),
(28, 2, 'jhuan beliscacu', '2024-06-16 04:01:29', 'Equipamentos', '0', '', ''),
(29, 2, 'jhuan beliscacu', '2024-06-16 04:01:29', 'Equipamentos', '0', '', ''),
(30, 2, 'jhuan beliscacu', '2024-06-16 04:01:29', 'Equipamentos', '0', '', ''),
(31, 2, 'jhuan beliscacu', '2024-06-16 04:01:29', 'Equipamentos', '0', '', ''),
(32, 2, 'jhuan beliscacu', '2024-06-16 04:01:29', 'Equipamentos', '0', '', ''),
(33, 2, 'jhuan beliscacu', '2024-06-16 04:01:29', 'Equipamentos', '0', '', ''),
(34, 2, 'jhuan beliscacu', '2024-06-16 04:02:12', 'Equipamentos', '0', '', ''),
(35, 2, 'jhuan beliscacu', '2024-06-16 04:02:13', 'Equipamentos', '0', '', ''),
(36, 2, 'jhuan beliscacu', '2024-06-16 04:02:15', 'Equipamentos', '0', '', ''),
(37, 2, 'jhuan beliscacu', '2024-06-16 04:02:29', 'Equipamentos', '0', '', ''),
(38, 2, 'jhuan beliscacu', '2024-06-16 04:02:51', 'Acesso à página inicial', '0', '', ''),
(39, 2, 'jhuan beliscacu', '2024-06-16 04:03:33', 'Acesso à página inicial', '0', '', ''),
(40, 2, 'jhuan beliscacu', '2024-06-16 04:03:48', 'Acesso à página inicial', '0', '', ''),
(41, 2, 'jhuan beliscacu', '2024-06-16 04:03:48', 'Acesso à página inicial', '0', '', ''),
(42, 2, 'jhuan beliscacu', '2024-06-16 04:03:49', 'Acesso à página inicial', '0', '', ''),
(43, 2, 'jhuan beliscacu', '2024-06-16 04:03:50', 'Equipamentos', '0', '', ''),
(44, 2, 'jhuan beliscacu', '2024-06-16 04:05:55', 'Acesso à página inicial', '0', '', ''),
(45, 2, 'jhuan beliscacu', '2024-06-16 04:05:55', 'Acesso à página inicial', '0', '', ''),
(46, 2, 'jhuan beliscacu', '2024-06-16 04:05:56', 'Acesso à página inicial', '0', '', ''),
(47, 2, 'jhuan beliscacu', '2024-06-16 04:06:51', 'Acesso à página inicial', '0', '', ''),
(48, 2, 'jhuan beliscacu', '2024-06-16 04:06:54', 'Tela da BMW', '0', '', ''),
(49, 2, 'jhuan beliscacu', '2024-06-16 04:06:55', 'Acesso à página inicial', '0', '', ''),
(50, 2, 'jhuan beliscacu', '2024-06-16 04:15:20', 'Acesso à página inicial', '0', '', ''),
(51, 2, 'jhuan beliscacu', '2024-06-16 04:29:11', 'Acesso à página inicial', '0', '', ''),
(52, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:29:15', 'Login', '0', '', ''),
(53, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:29:15', 'Acesso à página inicial', '0', '', ''),
(54, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:29:21', 'Login', '0', '', ''),
(55, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:29:21', 'Acesso à página inicial', '0', '', ''),
(56, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:29:41', 'Acesso à página inicial', '0', '', ''),
(57, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:29:41', 'Acesso à página inicial', '0', '', ''),
(58, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:29:41', 'Acesso à página inicial', '0', '', ''),
(59, 2, 'jhuan beliscacu', '2024-06-16 04:29:44', 'Login', '0', '', ''),
(60, 2, 'jhuan beliscacu', '2024-06-16 04:29:45', 'Acesso à página inicial', '0', '', ''),
(61, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:30:16', 'Login', '0', '', ''),
(62, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:30:16', 'Acesso à página inicial', '0', '', ''),
(63, 2, 'jhuan beliscacu', '2024-06-16 04:31:05', 'Login', '0', '', ''),
(64, 2, 'jhuan beliscacu', '2024-06-16 04:31:05', 'Acesso à página inicial', '0', '', ''),
(65, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:31:34', 'Acesso à página inicial', '0', '', ''),
(66, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:32:00', 'Acesso à página inicial', '0', '', ''),
(67, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:32:02', 'Equipamentos', '0', '', ''),
(68, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:32:03', 'Acesso à página inicial', '0', '', ''),
(69, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:32:04', 'Tela da Honda', '0', '', ''),
(70, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:32:08', 'Tela da Honda', '0', '', ''),
(71, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:32:09', 'Acesso à página inicial', '0', '', ''),
(72, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:32:11', 'Tela da Yamaha', '0', '', ''),
(73, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:32:12', 'Acesso à página inicial', '0', '', ''),
(74, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:33:04', 'Acesso à página inicial', '0', '', ''),
(75, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:34:30', 'Acesso à página inicial', '0', '', ''),
(76, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:34:36', 'Tela da Yamaha', '0', '', ''),
(77, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:34:38', 'Acesso à página inicial', '0', '', ''),
(78, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:34:40', 'Tela da Triumph', '0', '', ''),
(79, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:34:41', 'Acesso à página inicial', '0', '', ''),
(80, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:34:50', 'Acesso à página inicial', '0', '', ''),
(81, 6, 'jhuanbeliscacuu', '2024-06-16 04:35:21', 'Acesso à página inicial', '2147483647', '', ''),
(82, 6, 'jhuanbeliscacuu', '2024-06-16 04:35:52', 'Acesso à página inicial', '2147483647', '', ''),
(83, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:36:03', 'Acesso à página inicial', '0', '', ''),
(84, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:36:59', 'Acesso à página inicial', '0', '', ''),
(85, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:37:00', 'Equipamentos', '0', '', ''),
(86, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:37:11', 'Acesso à página inicial', '0', '', ''),
(87, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 04:38:14', 'Acesso à página inicial', '0', '', ''),
(88, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 18:41:11', 'Acesso à página inicial', '0', '', ''),
(89, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 18:58:32', 'Acesso à página inicial', '0', '', ''),
(90, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:10', 'Acesso à página inicial', '0', '', ''),
(91, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:12', 'Tela da BMW', '0', '', ''),
(92, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:15', 'Acesso à página inicial', '0', '', ''),
(93, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:16', 'Tela da Honda', '0', '', ''),
(94, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:22', 'Tela da Honda', '0', '', ''),
(95, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:41', 'Tela da Honda', '0', '', ''),
(96, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:42', 'Acesso à página inicial', '0', '', ''),
(97, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:44', 'Tela da Yamaha', '0', '', ''),
(98, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:44', 'Acesso à página inicial', '0', '', ''),
(99, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:46', 'Tela da Triumph', '0', '', ''),
(100, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:06:46', 'Acesso à página inicial', '0', '', ''),
(101, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:21:52', 'Acesso à página inicial', '0', '', ''),
(102, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:21:54', 'Equipamentos', '0', '', ''),
(103, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:22:09', 'Equipamentos', '0', '', ''),
(104, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:06', 'Equipamentos', '0', '', ''),
(105, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:07', 'Equipamentos', '0', '', ''),
(106, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:10', 'Equipamentos', '0', '', ''),
(107, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:15', 'Equipamentos', '0', '', ''),
(108, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:15', 'Equipamentos', '0', '', ''),
(109, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:15', 'Equipamentos', '0', '', ''),
(110, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:18', 'Equipamentos', '0', '', ''),
(111, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:18', 'Equipamentos', '0', '', ''),
(112, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:18', 'Equipamentos', '0', '', ''),
(113, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:24', 'Equipamentos', '0', '', ''),
(114, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:25', 'Equipamentos', '0', '', ''),
(115, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:35', 'Equipamentos', '0', '', ''),
(116, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:38', 'Equipamentos', '0', '', ''),
(117, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:23:50', 'Equipamentos', '0', '', ''),
(118, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:25:12', 'Equipamentos', '0', '', ''),
(119, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:25:12', 'Equipamentos', '0', '', ''),
(120, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:25:12', 'Equipamentos', '0', '', ''),
(121, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:27:29', 'Equipamentos', '0', '', ''),
(122, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:27:29', 'Equipamentos', '0', '', ''),
(123, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:27:29', 'Equipamentos', '0', '', ''),
(124, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:27:29', 'Equipamentos', '0', '', ''),
(125, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:27:30', 'Equipamentos', '0', '', ''),
(126, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:27:30', 'Equipamentos', '0', '', ''),
(127, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:27:30', 'Equipamentos', '0', '', ''),
(128, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:28:34', 'Equipamentos', '0', '', ''),
(129, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 19:28:35', 'Equipamentos', '0', '', ''),
(130, 21, 'mano', '2024-06-16 19:29:04', 'Acesso à página inicial', '313232', '', ''),
(131, 21, 'mano', '2024-06-16 19:29:06', 'Equipamentos', '313232', '', ''),
(132, 21, 'mano', '2024-06-16 19:29:10', 'Equipamentos', '313232', '', ''),
(133, 21, 'mano', '2024-06-16 19:32:05', 'Equipamentos', '313232', '', ''),
(134, 21, 'mano', '2024-06-16 19:32:05', 'Equipamentos', '313232', '', ''),
(135, 21, 'mano', '2024-06-16 19:32:32', 'Acesso à página inicial', '313232', '', ''),
(136, 21, 'mano', '2024-06-16 19:32:34', 'Equipamentos', '313232', '', ''),
(137, 21, 'mano', '2024-06-16 19:34:53', 'Equipamentos', '313232', '', ''),
(138, 21, 'mano', '2024-06-16 19:34:54', 'Equipamentos', '313232', '', ''),
(139, 21, 'mano', '2024-06-16 19:35:06', 'Equipamentos', '313232', '', ''),
(140, 21, 'mano', '2024-06-16 19:35:06', 'Equipamentos', '313232', '', ''),
(141, 21, 'mano', '2024-06-16 19:35:06', 'Equipamentos', '313232', '', ''),
(142, 21, 'mano', '2024-06-16 19:35:06', 'Equipamentos', '313232', '', ''),
(143, 21, 'mano', '2024-06-16 19:37:17', 'Equipamentos', '313232', '', ''),
(144, 21, 'mano', '2024-06-16 19:37:49', 'Equipamentos', '313232', '', ''),
(145, 21, 'mano', '2024-06-16 19:37:59', 'Equipamentos', '313232', '', ''),
(146, 21, 'mano', '2024-06-16 19:38:18', 'Equipamentos', '313232', '', ''),
(147, 21, 'mano', '2024-06-16 19:40:12', 'Equipamentos', '313232', '', ''),
(148, 21, 'mano', '2024-06-16 19:41:10', 'Equipamentos', '313232', '', ''),
(149, 21, 'mano', '2024-06-16 19:41:11', 'Equipamentos', '313232', '', ''),
(150, 21, 'mano', '2024-06-16 19:41:11', 'Equipamentos', '313232', '', ''),
(151, 21, 'mano', '2024-06-16 19:42:51', 'Equipamentos', '313232', '', ''),
(152, 21, 'mano', '2024-06-16 19:44:45', 'Equipamentos', '313232', '', ''),
(153, 21, 'mano', '2024-06-16 19:44:46', 'Equipamentos', '313232', '', ''),
(154, 2, 'jhuan beliscacu', '2024-06-16 19:56:38', 'Acesso à página inicial', '0', '', ''),
(155, 2, 'jhuan beliscacu', '2024-06-16 19:57:56', 'Acesso à página inicial', '0', '', ''),
(156, 2, 'jhuan beliscacu', '2024-06-16 19:58:31', 'Acesso à página inicial', '0', '', ''),
(157, 2, 'jhuan beliscacu', '2024-06-16 19:58:39', 'Acesso à página inicial', '0', '', ''),
(158, 2, 'jhuan beliscacu', '2024-06-16 19:58:46', 'Equipamentos', '0', '', ''),
(159, 2, 'jhuan beliscacu', '2024-06-16 20:01:23', 'Acesso à página inicial', '0', '', ''),
(160, 2, 'jhuan beliscacu', '2024-06-16 20:03:49', 'Acesso à página inicial', '0', '', ''),
(161, 2, 'jhuan beliscacu', '2024-06-16 20:06:32', 'Acesso à página inicial', '0', '', ''),
(162, 2, 'jhuan beliscacu', '2024-06-16 21:23:26', 'Acesso à página inicial', '0', '', ''),
(163, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 21:43:52', 'Acesso à página inicial', '0', '', ''),
(164, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 21:56:52', 'Acesso à página inicial', '0', '', ''),
(165, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:22:52', 'Acesso à página inicial', '0', '', ''),
(166, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:22:58', 'Acesso à página inicial', '0', '', ''),
(167, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:26:03', 'Acesso à página inicial', '0', '', ''),
(168, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:26:08', 'Tela da BMW', '0', '', ''),
(169, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:26:13', 'Acesso à página inicial', '0', '', ''),
(170, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:28:38', 'Acesso à página inicial', '0', '', ''),
(171, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:28:56', 'Acesso à página inicial', '0', '', ''),
(172, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:28:57', 'Acesso à página inicial', '0', '', ''),
(173, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:28:57', 'Acesso à página inicial', '0', '', ''),
(174, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:28:57', 'Acesso à página inicial', '0', '', ''),
(175, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:29:05', 'Acesso à página inicial', '0', '', ''),
(176, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 22:29:11', 'Acesso à página inicial', '0', '', ''),
(177, 2, 'jhuan beliscacu', '2024-06-16 22:46:11', 'Acesso à página inicial', '0', '', ''),
(178, 2, 'jhuan beliscacu', '2024-06-16 22:46:15', 'Equipamentos', '0', '', ''),
(179, 2, 'jhuan beliscacu', '2024-06-16 22:46:23', 'Acesso à página inicial', '0', '', ''),
(180, 2, 'jhuan beliscacu', '2024-06-16 22:46:47', 'Acesso à página inicial', '0', '', ''),
(181, 2, 'jhuan beliscacu', '2024-06-16 22:46:55', 'Acesso à página inicial', '0', '', ''),
(182, 2, 'jhuan beliscacu', '2024-06-16 22:47:21', 'Acesso à página inicial', '0', '', ''),
(183, 2, 'jhuan beliscacu', '2024-06-16 22:47:35', 'Acesso à página inicial', '0', '', ''),
(184, 2, 'jhuan beliscacu', '2024-06-16 22:47:51', 'Acesso à página inicial', '0', '', ''),
(185, 2, 'jhuan beliscacu', '2024-06-16 22:47:54', 'Acesso à página inicial', '0', '', ''),
(186, 2, 'jhuan beliscacu', '2024-06-16 22:53:40', 'Equipamentos', '0', '', ''),
(187, 2, 'jhuan beliscacu', '2024-06-16 22:53:41', 'Equipamentos', '0', '', ''),
(188, 2, 'jhuan beliscacu', '2024-06-16 22:53:55', 'Equipamentos', '0', '', ''),
(189, 2, 'jhuan beliscacu', '2024-06-16 22:54:00', 'Acesso à página inicial', '0', '', ''),
(190, 2, 'jhuan beliscacu', '2024-06-16 22:54:00', 'Equipamentos', '0', '', ''),
(191, 2, 'jhuan beliscacu', '2024-06-16 22:56:00', 'Equipamentos', '0', '', ''),
(192, 2, 'jhuan beliscacu', '2024-06-16 22:56:00', 'Equipamentos', '0', '', ''),
(193, 2, 'jhuan beliscacu', '2024-06-16 22:56:00', 'Equipamentos', '0', '', ''),
(194, 2, 'jhuan beliscacu', '2024-06-16 22:56:13', 'Equipamentos', '0', '', ''),
(195, 2, 'jhuan beliscacu', '2024-06-16 22:56:13', 'Equipamentos', '0', '', ''),
(196, 2, 'jhuan beliscacu', '2024-06-16 22:56:14', 'Equipamentos', '0', '', ''),
(197, 2, 'jhuan beliscacu', '2024-06-16 22:56:17', 'Equipamentos', '0', '', ''),
(198, 2, 'jhuan beliscacu', '2024-06-16 22:56:17', 'Equipamentos', '0', '', ''),
(199, 2, 'jhuan beliscacu', '2024-06-16 22:56:17', 'Equipamentos', '0', '', ''),
(200, 2, 'jhuan beliscacu', '2024-06-16 22:56:18', 'Equipamentos', '0', '', ''),
(201, 2, 'jhuan beliscacu', '2024-06-16 22:56:18', 'Equipamentos', '0', '', ''),
(202, 2, 'jhuan beliscacu', '2024-06-16 22:56:18', 'Equipamentos', '0', '', ''),
(203, 2, 'jhuan beliscacu', '2024-06-16 22:56:18', 'Equipamentos', '0', '', ''),
(204, 2, 'jhuan beliscacu', '2024-06-16 22:56:48', 'Equipamentos', '0', '', ''),
(205, 2, 'jhuan beliscacu', '2024-06-16 22:56:51', 'Equipamentos', '0', '', ''),
(206, 2, 'jhuan beliscacu', '2024-06-16 22:57:04', 'Equipamentos', '0', '', ''),
(207, 2, 'jhuan beliscacu', '2024-06-16 22:57:04', 'Equipamentos', '0', '', ''),
(208, 2, 'jhuan beliscacu', '2024-06-16 22:57:04', 'Equipamentos', '0', '', ''),
(209, 2, 'jhuan beliscacu', '2024-06-16 22:57:04', 'Equipamentos', '0', '', ''),
(210, 2, 'jhuan beliscacu', '2024-06-16 22:57:13', 'Equipamentos', '0', '', ''),
(211, 2, 'jhuan beliscacu', '2024-06-16 22:57:16', 'Equipamentos', '0', '', ''),
(212, 2, 'jhuan beliscacu', '2024-06-16 22:57:34', 'Equipamentos', '0', '', ''),
(213, 2, 'jhuan beliscacu', '2024-06-16 22:57:34', 'Equipamentos', '0', '', ''),
(214, 2, 'jhuan beliscacu', '2024-06-16 22:57:40', 'Equipamentos', '0', '', ''),
(215, 2, 'jhuan beliscacu', '2024-06-16 22:57:43', 'Equipamentos', '0', '', ''),
(216, 2, 'jhuan beliscacu', '2024-06-16 22:57:46', 'Equipamentos', '0', '', ''),
(217, 2, 'jhuan beliscacu', '2024-06-16 22:57:52', 'Equipamentos', '0', '', ''),
(218, 2, 'jhuan beliscacu', '2024-06-16 22:58:59', 'Equipamentos', '0', '', ''),
(219, 2, 'jhuan beliscacu', '2024-06-16 22:59:36', 'Equipamentos', '0', '', ''),
(220, 2, 'jhuan beliscacu', '2024-06-16 23:00:06', 'Equipamentos', '0', '', ''),
(221, 2, 'jhuan beliscacu', '2024-06-16 23:00:11', 'Equipamentos', '0', '', ''),
(222, 2, 'jhuan beliscacu', '2024-06-16 23:00:12', 'Equipamentos', '0', '', ''),
(223, 2, 'jhuan beliscacu', '2024-06-16 23:01:20', 'Equipamentos', '0', '', ''),
(224, 2, 'jhuan beliscacu', '2024-06-16 23:01:21', 'Equipamentos', '0', '', ''),
(225, 2, 'jhuan beliscacu', '2024-06-16 23:01:21', 'Equipamentos', '0', '', ''),
(226, 2, 'jhuan beliscacu', '2024-06-16 23:01:21', 'Equipamentos', '0', '', ''),
(227, 2, 'jhuan beliscacu', '2024-06-16 23:01:21', 'Equipamentos', '0', '', ''),
(228, 2, 'jhuan beliscacu', '2024-06-16 23:01:21', 'Equipamentos', '0', '', ''),
(229, 2, 'jhuan beliscacu', '2024-06-16 23:03:35', 'Equipamentos', '0', '', ''),
(230, 2, 'jhuan beliscacu', '2024-06-16 23:03:36', 'Equipamentos', '0', '', ''),
(231, 2, 'jhuan beliscacu', '2024-06-16 23:03:36', 'Equipamentos', '0', '', ''),
(232, 2, 'jhuan beliscacu', '2024-06-16 23:05:07', 'Equipamentos', '0', '', ''),
(233, 2, 'jhuan beliscacu', '2024-06-16 23:05:07', 'Equipamentos', '0', '', ''),
(234, 2, 'jhuan beliscacu', '2024-06-16 23:05:07', 'Equipamentos', '0', '', ''),
(235, 2, 'jhuan beliscacu', '2024-06-16 23:05:07', 'Equipamentos', '0', '', ''),
(236, 2, 'jhuan beliscacu', '2024-06-16 23:05:54', 'Equipamentos', '0', '', ''),
(237, 2, 'jhuan beliscacu', '2024-06-16 23:05:55', 'Equipamentos', '0', '', ''),
(238, 2, 'jhuan beliscacu', '2024-06-16 23:05:55', 'Equipamentos', '0', '', ''),
(239, 2, 'jhuan beliscacu', '2024-06-16 23:05:55', 'Equipamentos', '0', '', ''),
(240, 2, 'jhuan beliscacu', '2024-06-16 23:05:55', 'Equipamentos', '0', '', ''),
(241, 2, 'jhuan beliscacu', '2024-06-16 23:05:55', 'Equipamentos', '0', '', ''),
(242, 2, 'jhuan beliscacu', '2024-06-16 23:05:55', 'Equipamentos', '0', '', ''),
(243, 2, 'jhuan beliscacu', '2024-06-16 23:05:55', 'Equipamentos', '0', '', ''),
(244, 2, 'jhuan beliscacu', '2024-06-16 23:05:56', 'Equipamentos', '0', '', ''),
(245, 2, 'jhuan beliscacu', '2024-06-16 23:05:56', 'Acesso à página inicial', '0', '', ''),
(246, 2, 'jhuan beliscacu', '2024-06-16 23:05:57', 'Equipamentos', '0', '', ''),
(247, 2, 'jhuan beliscacu', '2024-06-16 23:09:19', 'Equipamentos', '0', '', ''),
(248, 2, 'jhuan beliscacu', '2024-06-16 23:09:22', 'Equipamentos', '0', '', ''),
(249, 2, 'jhuan beliscacu', '2024-06-16 23:10:25', 'Equipamentos', '0', '', ''),
(250, 2, 'jhuan beliscacu', '2024-06-16 23:10:26', 'Equipamentos', '0', '', ''),
(251, 2, 'jhuan beliscacu', '2024-06-16 23:10:33', 'Equipamentos', '0', '', ''),
(252, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:12:32', 'Acesso à página inicial', '0', '', ''),
(253, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:13:22', 'Equipamentos', '0', '', ''),
(254, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:15:05', 'Equipamentos', '0', '', ''),
(255, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:16:13', 'Equipamentos', '0', '', ''),
(256, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:16:30', 'Acesso à página inicial', '0', '', ''),
(257, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:17:03', 'Acesso à página inicial', '0', '', ''),
(258, 22, 'testepdf', '2024-06-16 23:19:21', 'Acesso à página inicial', '153768', '', ''),
(259, 22, 'testepdf', '2024-06-16 23:19:42', 'Acesso à página inicial', '153768', '', ''),
(260, 22, 'testepdf', '2024-06-16 23:24:01', 'Acesso à página inicial', '153768', '', ''),
(261, 22, 'testepdf', '2024-06-16 23:24:24', 'Equipamentos', '153768', '', ''),
(262, 22, 'testepdf', '2024-06-16 23:25:02', 'Equipamentos', '153768', '', ''),
(263, 22, 'testepdf', '2024-06-16 23:29:22', 'Equipamentos', '153768', '', ''),
(264, 22, 'testepdf', '2024-06-16 23:29:27', 'Equipamentos', '153768', '', ''),
(265, 22, 'testepdf', '2024-06-16 23:29:31', 'Equipamentos', '153768', '', ''),
(266, 22, 'testepdf', '2024-06-16 23:29:31', 'Equipamentos', '153768', '', ''),
(267, 22, 'testepdf', '2024-06-16 23:29:34', 'Equipamentos', '153768', '', ''),
(268, 22, 'testepdf', '2024-06-16 23:30:38', 'Equipamentos', '153768', '', ''),
(269, 22, 'testepdf', '2024-06-16 23:30:38', 'Equipamentos', '153768', '', ''),
(270, 22, 'testepdf', '2024-06-16 23:30:39', 'Equipamentos', '153768', '', ''),
(271, 22, 'testepdf', '2024-06-16 23:32:43', 'Equipamentos', '153768', '', ''),
(272, 22, 'testepdf', '2024-06-16 23:32:51', 'Equipamentos', '153768', '', ''),
(273, 22, 'testepdf', '2024-06-16 23:32:57', 'Equipamentos', '153768', '', ''),
(274, 22, 'testepdf', '2024-06-16 23:33:01', 'Equipamentos', '153768', '', ''),
(275, 22, 'testepdf', '2024-06-16 23:34:41', 'Acesso à página inicial', '153768', '', ''),
(276, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:36:48', 'Acesso à página inicial', '0', '', ''),
(277, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:36:58', 'Acesso à página inicial', '0', '', ''),
(278, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:37:32', 'Acesso à página inicial', '0', '', ''),
(279, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:37:36', 'Equipamentos', '0', '', ''),
(280, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:37:37', 'Acesso à página inicial', '0', '', ''),
(281, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:37:39', 'Acesso à página inicial', '0', '', ''),
(282, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:37:40', 'Acesso à página inicial', '0', '', ''),
(283, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:37:44', 'Acesso à página inicial', '0', '', ''),
(284, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:44:31', 'Acesso à página inicial', '0', '', ''),
(285, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:21', 'Acesso à página inicial', '0', '', ''),
(286, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:25', 'Equipamentos', '0', '', ''),
(287, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:26', 'Acesso à página inicial', '0', '', ''),
(288, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:28', 'Tela da BMW', '0', '', ''),
(289, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:30', 'Acesso à página inicial', '0', '', ''),
(290, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:31', 'Tela da Honda', '0', '', ''),
(291, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:32', 'Acesso à página inicial', '0', '', ''),
(292, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:34', 'Tela da Yamaha', '0', '', ''),
(293, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:35', 'Acesso à página inicial', '0', '', ''),
(294, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:37', 'Tela da Triumph', '0', '', ''),
(295, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:38', 'Acesso à página inicial', '0', '', ''),
(296, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:43', 'Equipamentos', '0', '', ''),
(297, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:45', 'Acesso à página inicial', '0', '', ''),
(298, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:47:52', 'Acesso à página inicial', '0', '', ''),
(299, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:48:58', 'Acesso à página inicial', '0', '', ''),
(300, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:49:38', 'Acesso à página inicial', '0', '', ''),
(301, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:49:53', 'Acesso à página inicial', '0', '', ''),
(302, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:54:14', 'Acesso à página inicial', '0', '', ''),
(303, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:54:18', 'Acesso à página inicial', '0', '', ''),
(304, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:54:32', 'Acesso à página inicial', '0', '', ''),
(305, 2, 'jhuan beliscacu', '2024-06-16 23:54:54', 'Acesso à página inicial', '0', '', ''),
(306, 2, 'jhuan beliscacu', '2024-06-16 23:55:13', 'Acesso à página inicial', '0', '', ''),
(307, 2, 'jhuan beliscacu', '2024-06-16 23:55:51', 'Acesso à página inicial', '0', '', ''),
(308, 2, 'jhuan beliscacu', '2024-06-16 23:57:06', 'Acesso à página inicial', '0', '', ''),
(309, 2, 'jhuan beliscacu', '2024-06-16 23:57:06', 'Acesso à página inicial', '0', '', ''),
(310, 2, 'jhuan beliscacu', '2024-06-16 23:57:08', 'Acesso à página inicial', '0', '', ''),
(311, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:58:13', 'Acesso à página inicial', '0', '', ''),
(312, 1, 'Pedro Henrique vieira de oliveira', '2024-06-16 23:58:17', 'Equipamentos', '0', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `data_nasc` varchar(50) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `cpf` int(15) NOT NULL,
  `cep` int(10) NOT NULL,
  `nome_mae` varchar(100) NOT NULL,
  `TelefoneFix` int(10) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `tipo_usuario` varchar(20) NOT NULL DEFAULT 'usuario comum'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `telefone`, `data_nasc`, `genero`, `cpf`, `cep`, `nome_mae`, `TelefoneFix`, `endereco`, `tipo_usuario`) VALUES
(1, 'Pedro Henrique vieira de oliveira', 'pedro597381@gmail.com', 'pedro597381', '(21) 96717-4680', '19/03/2005', 'm', 0, 23027220, 'rejanee', 0, '', 'usuario master'),
(2, 'jhuan beliscacu', 'manobc@gmail.com', 'manobc', '(21) 98293-8293', '19/03/2000', 'm', 0, 23028220, 'maedobc', 0, '', 'usuario comum'),
(3, 'jhuanbelisca', 'manobc2@gmail.com', 'pedro5', '(21) 98293-8292', '19/03/2001', 'm', 0, 0, 'testeteste', 0, '', 'usuario comum'),
(4, 'jhuan belisca', 'pedroinstaa597@gmail.com', 'pedro5', '(11) 11111-1122', '19/03/2003', 'm', 0, 231, 'testeteste', 0, '', 'usuario comum'),
(5, 'romulowjdj', 'romulo121@gmail.com', 'romulo1', '(11) 11121-2223', '19/03/2000', 'o', 1532332922, 2039202, 'slaslasla', 0, '', 'usuario comum'),
(6, 'jhuanbeliscacuu', 'manobcc@gmail.com', 'manobc', '(21) 92823-9293', '19/03/2001', 'o', 2147483647, 0, 'manobcc', 0, '', 'usuario comum'),
(7, 'testecomum', 'testecomum@gmail.com', 'testecomum', '(11) 11111-1222', '12/09/1999', 'm', 77069, 0, 'testesteste', 0, '', 'usuario comum'),
(9, 'raquel vieira', 'raquel@gmail.com', 'raquel123', '(21) 11222-3333', '08/08/2010', 'f', 143232, 23027, 'renata', 0, 'Rua Professor Antônio Reis, Pedra de Guaratiba, Rio de Janeiro - RJ', 'usuario comum'),
(14, 'aaaaaaaaaa', 'wdwwdwdwzzz@gmail.com', '12345', '(21) 96177-4802', '00/00/0000', 'f', 123234, 23027, 'dwdwwwd', 0, 'Rua aantônio Reis, Pedra de Guaratiba, Rio de Janeiro - RJ', 'usuario comum'),
(16, 'Pedro Henrique vieira', 'pedroh@gmail.com', 'pedro597', '(21) 96717-4622', '12/12/2002', 'masculino', 153768, 23027220, 'rejane campos', 0, 'Rua Professor Antônio Reis, Pedra de Guaratiba, Rio de Janeiro - RJ', 'usuario comum'),
(19, 'manobcbcbc', 'manoobc@gmail.com', 'manobc', '(21) 96717-4658', '2000-03-19', 'masculino', 153768, 23027, 'manoobc', 0, 'Rua Professor Antônio Reis, Pedra de Guaratiba, Rio de Janeiro - RJ', 'usuario comum'),
(20, 'manobcteste', 'bcbcbc@gmail.com', 'manobc', '(21) 96717-4555', '2000-03-19', 'masculino', 153768, 23027, 'maedobcteste', 0, 'Rua Professor Antônio Reis, Pedra de Guaratiba, Rio de Janeiro - RJ', 'usuario comum'),
(21, 'mano', 'manoo@gmail.com', 'mano', '(32) 32121-3213', '2000-02-23', 'masculino', 313232, 23027, 'manobc', 0, 'Rua Professor Antônio Reis, Pedra de Guaratiba, Rio de Janeiro - RJ', 'usuario comum'),
(22, 'testepdf', 'testepdf@gmail.com', 'pedro597381', '(21) 111111-111', '2222-02-21', 'masculino', 153768, 23027, 'maedopdf', 0, 'Rua Professor Antônio Reis, Pedra de Guaratiba, Rio de Janeiro - RJ', 'usuario master');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `log_atividades`
--
ALTER TABLE `log_atividades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `log_atividades`
--
ALTER TABLE `log_atividades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=313;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `log_atividades`
--
ALTER TABLE `log_atividades`
  ADD CONSTRAINT `log_atividades_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
