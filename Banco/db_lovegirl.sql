-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Tempo de geração: 31-Jan-2022 às 01:10
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.4.14
=======
-- Tempo de geração: 25-Jan-2022 às 21:26
-- Versão do servidor: 10.4.18-MariaDB
-- versão do PHP: 7.3.28
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_lovegirl`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessos`
--

CREATE TABLE `acessos` (
  `id` int(11) NOT NULL,
  `nivel` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `acessos`
--

INSERT INTO `acessos` (`id`, `nivel`) VALUES
(1, 'admin'),
(2, 'Assitente'),
(3, 'Coordenador'),
(4, 'Auxiliar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banco`
--

CREATE TABLE `banco` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banco`
--

INSERT INTO `banco` (`id`, `nome`) VALUES
(2, 'BANCO DO BRASIL (BB)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `caixa`
--

CREATE TABLE `caixa` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `valor` decimal(10,2) DEFAULT NULL,
  `forma_pagamento_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `caixa`
--

INSERT INTO `caixa` (`id`, `data`, `valor`, `forma_pagamento_id`, `usuarios_id`) VALUES
<<<<<<< HEAD
(7, '2022-01-15 14:50:03', '80.00', 2, 4),
(8, '2022-01-16 12:54:59', '80.00', 2, 4),
(9, '2022-01-24 16:13:50', '50.00', 2, 4);
=======
(10, '2022-01-25 20:23:34', '20.00', 2, 4);
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`id`, `descricao`) VALUES
(1, 'Asssistente de Logística'),
(2, NULL),
(3, NULL),
(4, 'Supervisor de Operações Logísticas Interior'),
(5, 'Encarregada de Expedição'),
(6, 'Assistente da qualidade'),
(7, 'Auxiliar de Logística'),
(8, 'Diretora'),
(9, 'Assistente Financeiro'),
(10, 'Coordenadora de RH');

-- --------------------------------------------------------

--
-- Estrutura da tabela `catdespesas`
--

CREATE TABLE `catdespesas` (
  `id` int(11) NOT NULL,
  `nome` varchar(105) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `catdespesas`
--

INSERT INTO `catdespesas` (`id`, `nome`) VALUES
(1, 'Àgua'),
(2, 'Luz'),
(3, 'Compras'),
(15, 'Vendas de produto'),
(16, 'Aluguel'),
(17, 'Internet'),
(18, 'DEPÓSITO EM CONTA BB');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `foto` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `foto`) VALUES
(107, 'Bijuteria', ''),
(108, 'Maquiagem', ''),
(109, 'Acessorios', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `localidade` varchar(45) DEFAULT NULL,
  `logradouro` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `uf` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `data`, `nome`, `telefone`, `email`, `cep`, `localidade`, `logradouro`, `numero`, `bairro`, `complemento`, `uf`) VALUES
(15, '2021-09-12 15:30:02', 'Eneylton Barros', '(98) 99158-1962', 'eneylton@hotmail.com', '65054-530', 'São Luís', 'Rua 03', '12', 'Cohtrac IV', 'Proximo a praça verão', 'MA'),
(16, '2021-09-12 15:31:47', 'Livia Jansen', '(98) 99158-1962', 'eneylton@hotmail.com', '65054530', 'São luis', 'Rua Três', '12', 'Cohatrac IV', 'Proximo a praça verão', 'Maranhão'),
(17, '2021-10-17 22:19:17', 'Karina Modas', '(98) 99158-1962', 'karina@gmail.com', '65054780', 'São Luís', 'Rua Vinte e Seis', '14', 'Cohatrac IV', 'Proximo a praça verão', 'MA'),
(18, '2022-01-16 13:09:11', 'CLIENTE', '(98) 99158-1962', 'cliente@hotmail.com', '65054530', 'São Luís', 'Rua Três', '14', 'Cohatrac IV', 'Proximo a praça verão', 'MA');

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `codigo` varchar(45) DEFAULT NULL,
  `barra` varchar(45) DEFAULT NULL,
  `nome` varchar(225) DEFAULT NULL,
  `qtd` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  `valor_compra` decimal(10,2) DEFAULT NULL,
  `produtos_id` int(10) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
=======
-- Estrutura da tabela `deposito`
--

CREATE TABLE `deposito` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT NULL,
  `data1` timestamp NULL DEFAULT current_timestamp(),
  `valor` decimal(10,2) DEFAULT NULL,
  `banco_id` int(11) NOT NULL,
  `forma_pagamento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

-- --------------------------------------------------------

--
-- Estrutura da tabela `forma_pagamento`
--

CREATE TABLE `forma_pagamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `forma_pagamento`
--

INSERT INTO `forma_pagamento` (`id`, `nome`) VALUES
(2, 'Dinheiro'),
(3, 'Cartão de Crédito 1x'),
(4, 'Cartão de Crédito 2x'),
(5, 'Cartão de Crédito 3x'),
(6, 'Cartão de Crédito 4x'),
(7, 'Cartão de Débito'),
(8, 'Pix');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `troco` decimal(10,2) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `descricao` varchar(335) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL,
  `catdespesas_id` int(11) NOT NULL,
  `forma_pagamento_id` int(11) NOT NULL,
  `caixa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movimentacoes`
--

INSERT INTO `movimentacoes` (`id`, `data`, `troco`, `valor`, `descricao`, `tipo`, `status`, `usuarios_id`, `catdespesas_id`, `forma_pagamento_id`, `caixa_id`) VALUES
<<<<<<< HEAD
(50, '2022-01-15 14:50:03', '0.00', '12.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 7),
(51, '2022-01-15 14:50:03', '0.00', '12.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 7),
(52, '2022-01-16 12:54:59', '0.00', '12.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 8),
(53, '2022-01-16 12:54:59', '0.00', '12.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 8),
(54, '2022-01-16 12:54:59', '0.00', '12.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 8),
(55, '2022-01-16 12:54:59', '0.00', '12.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 8),
(56, '2022-01-16 12:54:59', '0.00', '12.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 8),
(57, '2022-01-16 12:54:59', '0.00', '24.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 8),
(58, '2022-01-16 12:54:59', '7.60', '40.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 8),
(59, '2022-01-16 12:54:59', '6.80', '50.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 8),
(60, '2022-01-16 13:21:17', NULL, '200.00', '', 0, 1, 4, 1, 2, 8),
(61, '2022-01-24 16:09:05', NULL, '80.00', 'DEÇÇPOISETO PELA MANHA', 0, 1, 4, 18, 2, 7),
(62, '2022-01-24 16:13:50', '0.00', '10.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 9),
(63, '2022-01-24 16:16:29', NULL, '5.00', 'AGUA MINIERAL', 0, 1, 4, 1, 2, 9);
=======
(64, '2022-01-25 20:23:34', '0.00', '30.00', 'Produto foi vendido...', 1, 1, 4, 15, 2, 10);
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

-- --------------------------------------------------------

--
-- Estrutura da tabela `mov_cat`
--

CREATE TABLE `mov_cat` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mov_cat`
--

INSERT INTO `mov_cat` (`id`, `nome`) VALUES
(1, 'Venda de produtos'),
(2, 'Alimentação');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `codigo` int(11) DEFAULT NULL,
  `barra` int(11) DEFAULT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `qtd` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `valor_compra` decimal(10,2) DEFAULT NULL,
  `subtotal` varchar(45) DEFAULT NULL,
  `produtos_id` int(10) NOT NULL,
  `usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id`, `data`, `codigo`, `barra`, `nome`, `qtd`, `status`, `valor_compra`, `subtotal`, `produtos_id`, `usuarios_id`) VALUES
(250, '2022-01-30 23:57:49', 114359, 1595, 'iluminador pÃ³ solto mahav', '1', 1, '6.00', '6', 170, 4),
(251, '2022-01-31 00:06:20', 114359, 1595, 'iluminador pÃ³ solto mahav', '10', 1, '6.00', '60', 170, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(10) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `barra` varchar(50) NOT NULL,
  `codigo` int(10) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `qtd` int(10) NOT NULL,
  `valor_compra` decimal(10,2) NOT NULL,
  `valor_venda` decimal(10,2) NOT NULL,
  `estoque` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `foto` varchar(255) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `categorias_id` int(11) NOT NULL,
  `aplicacao` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `data`, `barra`, `codigo`, `nome`, `qtd`, `valor_compra`, `valor_venda`, `estoque`, `status`, `foto`, `usuarios_id`, `categorias_id`, `aplicacao`) VALUES
<<<<<<< HEAD
(1, '2022-01-20 12:34:00', '1278', 151586, 'ADESIVOS UNHA ARTESANAL', 0, '1.80', '4.00', 11, NULL, '', 4, 109, ''),
(2, '2022-01-24 16:14:00', '1288', 198134, 'ALARGADOR FOLHEADO ', 0, '2.00', '5.00', 1, NULL, '', 4, 109, ''),
=======
(1, '2022-01-25 20:24:00', '1278', 151586, 'ADESIVOS UNHA ARTESANAL', 0, '1.80', '4.00', 2, NULL, '', 4, 109, ''),
(2, '2022-01-13 14:24:02', '1288', 198134, 'ALARGADOR FOLHEADO ', 0, '2.00', '5.00', 2, NULL, '', 4, 109, ''),
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f
(3, '2022-01-13 14:25:05', '1299', 204661, 'alianca', 0, '1.00', '3.00', 2, NULL, '', 4, 109, ''),
(4, '2022-01-13 14:26:57', '1305', 193475, 'amarrador colorido', 0, '2.00', '4.00', 2, NULL, '', 4, 0, ''),
(5, '2022-01-13 14:28:10', '1532', 157781, 'amarrador preto e branco', 0, '1.00', '3.00', 1, NULL, '', 4, 0, ''),
(6, '2022-01-13 14:29:01', '1283', 213041, 'anel acrilico', 0, '1.00', '3.00', 19, NULL, '', 4, 0, ''),
(7, '2022-01-13 14:32:21', '1279', 103299, 'anel com pedra', 0, '1.00', '3.00', 7, NULL, '', 4, 0, ''),
(8, '2022-01-13 14:33:29', '1527', 187750, 'anel de tucum', 0, '0.00', '0.00', 8, NULL, '', 4, 0, ''),
(9, '2022-01-13 14:34:10', '1573', 121582, 'apontador macrilan', 0, '1.00', '3.00', 1, NULL, '', 4, 0, ''),
(10, '2022-01-13 14:39:45', '1623', 160192, 'ARGOLAS  DOUR\\PRATA FOLHEADAS', 0, '2.00', '4.00', 1, NULL, '', 4, 109, ''),
(11, '2022-01-13 14:40:39', '1464', 144688, 'ARGOLAS MINI VARIADAS FOLHEADA', 0, '2.00', '5.00', 21, NULL, '', 4, 0, ''),
<<<<<<< HEAD
(12, '2022-01-24 16:14:00', '1465', 847388, 'ARGOLAS PEQ. STRASS-PINGENTES', 0, '2.00', '5.00', 0, NULL, '', 4, 109, ''),
=======
(12, '2022-01-13 14:42:09', '1465', 847388, 'ARGOLAS PEQ. STRASS-PINGENTES', 0, '2.00', '5.00', 1, NULL, '', 4, 109, ''),
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f
(13, '2022-01-13 14:46:52', '1597', 505393, 'BASE BEE UNIQUE JASMYNE ', 0, '11.00', '19.00', 3, NULL, '', 4, 108, ''),
(14, '2022-01-13 14:48:01', '6295125036629', 437225, 'BASE FEELS N20-100 RUBY ROSE', 0, '10.00', '25.00', 3, NULL, '', 4, 108, ''),
(15, '2022-01-13 14:50:03', '1431', 689357, 'BASE LIQ MATTE C9 - PLAYBOY ', 0, '5.00', '10.00', 2, NULL, '', 4, 108, ''),
(16, '2022-01-13 14:52:58', '1393', 124517, 'BASE LIQ MATTE - CHANDELLE ', 0, '5.00', '11.00', 2, NULL, '', 4, 108, ''),
(17, '2022-01-13 15:10:04', '1001', 829463, 'BASE dalla LIQ MATTE VEGANA P. CLARA', 0, '10.00', '20.00', 1, NULL, '', 4, 108, ''),
(18, '2022-01-13 15:11:12', '1002', 119857, 'BASE dalla LIQ MATTE VEGANA P. ESCURD0', 0, '10.00', '20.00', 12, NULL, '', 4, 108, ''),
(19, '2022-01-13 15:12:23', '1011', 196995, 'BASE LIQUIDA MATTE HD - MAXLOVE', 0, '5.00', '10.00', 3, NULL, '', 4, 108, ''),
(20, '2022-01-13 15:13:34', '1558', 203172, 'BASE MISS LARY rebocco', 0, '9.00', '18.00', 3, NULL, '', 4, 108, ''),
(21, '2022-01-13 15:15:20', '1005', 481725, 'BASE ruby rose NATURAL LOOK CHOCOLATE', 0, '10.00', '20.00', 4, NULL, '', 4, 108, ''),
(22, '2022-01-13 15:23:43', '1007', 530200, 'BASE ruby rose SOFT MATTE CAFe', 0, '10.00', '20.00', 72, NULL, '', 4, 108, ''),
(23, '2022-01-13 15:29:15', '1010', 156530, 'BASE ruby rose SOFT MATTE CHOCOLATE ', 0, '10.00', '20.00', 1, NULL, '', 4, 108, ''),
(24, '2022-01-14 20:55:00', '1063', 513027, 'BATOM 24H VERDE', 0, '1.00', '3.00', 9, NULL, '', 4, 108, ''),
(25, '2022-01-13 15:38:41', '1075', 183695, 'BATOM CREMOSO ROUGE - MAX LOVE', 0, '4.00', '8.00', 5, NULL, '', 4, 108, ''),
(26, '2022-01-13 15:39:28', '1354', 764862, 'BATOM DUPLO COLEÃ‡ÃƒO AMORA DAPOp', 0, '4.00', '8.00', 10, NULL, '', 4, 108, ''),
(27, '2022-01-13 15:41:26', '1355', 141074, 'BATOM E LaPIS LABIal - luisance', 0, '6.00', '13.00', 9, NULL, '', 4, 108, ''),
(28, '2022-01-13 15:42:50', '1317', 110870, 'BATOM GLOSS FIRST KISS - JASMYne', 0, '5.00', '11.00', 15, NULL, '', 4, 108, ''),
(29, '2022-01-13 15:44:29', '1364', 639581, 'BATOM INFANTIL MORANGUINHO ', 0, '1.00', '2.00', 7, NULL, '', 4, 108, ''),
(30, '2022-01-13 15:50:23', '1420', 691671, 'BATOM LIP GLOSS 3D max love', 0, '6.00', '13.00', 15, NULL, '', 4, 108, ''),
(31, '2022-01-13 15:52:54', '1614', 110771, 'BATOM LIQ MATTE  - max love 12H VOLUMOSOS', 0, '8.00', '17.00', 3, NULL, '', 4, 108, ''),
(32, '2022-01-13 15:54:14', '1383', 161768, 'BATOM LIQUIDO MATTE -PLAYBOY', 0, '5.00', '10.00', 15, NULL, '', 4, 108, ''),
(33, '2022-01-13 15:55:56', '1397', 393988, 'BATOM LOVE - maxlove EFEITO MATTE', 0, '3.00', '6.00', 22, NULL, '', 4, 108, ''),
(34, '2022-01-13 15:59:02', '1072', 494632, 'BATOM LÃQUIDO MATTE - RUBY rose', 0, '7.00', '14.00', 6, NULL, '', 4, 108, ''),
(35, '2022-01-13 16:00:30', '1067', 116673, 'BATOM LÃQUIDO MATTE 12H - max love', 0, '8.00', '17.00', 3, NULL, '', 4, 108, ''),
(36, '2022-01-13 16:02:10', '1068', 748313, 'BATOM LÃQUIDO MATTE FEELS - ruby rose', 0, '4.00', '9.00', 4, NULL, '', 4, 108, ''),
(37, '2022-01-13 16:03:40', '1069', 427991, 'BATOM LÃQUIDO MATTE NUDEs - adversa', 0, '7.00', '15.00', 5, NULL, '', 4, 108, ''),
(38, '2022-01-13 16:13:02', '1316', 435109, 'BATOM MATTE BASTÃƒO 12 CORES - ruby rose', 0, '4.00', '9.00', 3, NULL, '', 4, 108, ''),
(39, '2022-01-13 16:19:15', '1596', 150490, 'BLUSH CAMALEAO TROPICALIA - PLAyboy', 0, '7.00', '14.00', 6, NULL, '', 4, 108, ''),
(40, '2022-01-13 16:26:11', '1580', 105024, 'BLUSH CORZINHA DALLA', 0, '4.00', '9.00', 7, NULL, '', 4, 108, ''),
(41, '2022-01-13 16:26:51', '1046', 831929, 'BLUSH MATTE - MAX LOVE', 0, '4.00', '8.00', 8, NULL, '', 4, 108, ''),
(42, '2022-01-13 16:27:39', '1581', 179341, 'BLUSH MAÃ‡A DO AMOR MIA MAKE', 0, '5.00', '10.00', 3, NULL, '', 4, 108, ''),
(43, '2022-01-13 16:30:00', '1584', 424626, 'BLUSH NEW VIBE RUBY ROSE', 0, '7.00', '14.00', 9, NULL, '', 4, 108, ''),
(44, '2022-01-13 16:34:24', '1199', 848305, 'BRINCO 2 EM 1 ACRILICO PENDURAdo', 0, '2.00', '5.00', 2, NULL, '', 4, 107, ''),
(45, '2022-01-13 16:38:40', '1198', 855219, 'BRINCO ACRILICO - URARA', 0, '2.00', '5.00', 5, NULL, '', 4, 107, ''),
(46, '2022-01-13 16:40:09', '1205', 196315, 'BRINCO ARGOLA C MIÃ‡ANGAS bolas', 0, '3.00', '7.00', 2, NULL, '', 4, 107, ''),
<<<<<<< HEAD
(47, '2022-01-13 16:41:49', '1222', 186663, 'aRGOLA COLORIDA', 0, '1.00', '3.00', 4, NULL, '', 4, 107, ''),
(48, '2022-01-13 16:42:54', '1203', 196774, 'ARGOLA DE TECIDO', 0, '4.00', '8.00', 3, NULL, '', 4, 107, ''),
(49, '2022-01-14 20:58:00', '1216', 115565, 'ARGOLA DOURADA - enzo', 0, '2.00', '5.00', 27, NULL, '', 4, 107, ''),
=======
(47, '2022-01-25 20:15:00', '1222', 186663, 'aRGOLA COLORIDA', 0, '1.00', '3.00', 3, NULL, '', 4, 107, ''),
(48, '2022-01-13 16:42:54', '1203', 196774, 'ARGOLA DE TECIDO', 0, '4.00', '8.00', 3, NULL, '', 4, 107, ''),
(49, '2022-01-25 20:24:00', '1216', 115565, 'ARGOLA DOURADA - enzo', 0, '2.00', '5.00', 24, NULL, '', 4, 107, ''),
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f
(50, '2022-01-13 16:44:52', '1227', 110213, 'ARGOLINHA PRATA AÃ‡O - enzo', 0, '2.00', '5.00', 4, NULL, '', 4, 107, ''),
(51, '2022-01-13 16:45:39', '1341', 128196, 'ARGOLINHA PRETA PRESSÃƒO ', 0, '2.00', '5.00', 4, NULL, '', 4, 107, ''),
(52, '2022-01-20 19:55:00', '1621', 174556, 'BRINCO DE STRASS COLORIDOS', 0, '1.00', '3.00', 31, NULL, '', 4, 107, ''),
(53, '2022-01-13 16:47:23', '1470', 180116, 'BRINCO FESTA 2 EM 1 STRASS', 0, '5.00', '10.00', 4, NULL, '', 4, 107, ''),
(54, '2022-01-13 16:48:13', '1193', 737099, 'BRINCO FESTA PEDRas - urara', 0, '4.00', '8.00', 3, NULL, '', 4, 107, ''),
(55, '2022-01-13 16:49:59', '1190', 214421, 'BRINCO Festa - michele', 0, '4.00', '8.00', 3, NULL, '', 4, 107, ''),
(56, '2022-01-13 16:50:48', '1192', 489017, 'BRINCO FESTA LONGO - urara', 0, '4.00', '8.00', 2, NULL, '', 4, 107, ''),
(57, '2022-01-13 16:53:15', '1191', 210231, 'BRINCO FESTA LONGUINHO - michele', 0, '5.00', '10.00', 4, NULL, '', 4, 107, ''),
(58, '2022-01-13 16:54:16', '1284', 936907, 'BRINCO INFANTIL', 0, '0.00', '1.00', 12, NULL, '', 4, 107, ''),
(59, '2022-01-13 16:55:21', '1195', 922310, 'BRINCO LONGO argolas penduradas', 0, '5.00', '10.00', 4, NULL, '', 4, 107, ''),
(60, '2022-01-13 16:56:19', '1185', 626722, 'BRINCO LONGO - zgybijoux', 0, '5.00', '10.00', 1, NULL, '', 4, 107, ''),
(61, '2022-01-13 16:57:34', '1184', 187753, 'BRINCO LONGO strass - ENZO', 0, '3.00', '7.00', 19, NULL, '', 4, 107, ''),
(62, '2022-01-13 18:01:24', '1257', 918185, 'argola peq. strass', 0, '3.00', '6.00', 1, NULL, '', 4, 107, ''),
(63, '2022-01-13 18:02:57', '1634', 202773, 'BRINCO PONTO LUZ ', 0, '2.00', '5.00', 1, NULL, '', 4, 0, ''),
(64, '2022-01-13 18:05:14', '1625', 119554, 'BRINCO PÃ‰ROLA - enzo', 0, '1.00', '3.00', 1, NULL, '', 4, 107, ''),
(65, '2022-01-14 20:58:00', '1253', 139835, 'BRINCOs PÃ‰ROLAs ', 0, '1.00', '3.00', 11, NULL, '', 4, 107, ''),
(66, '2022-01-13 18:09:54', '1226', 187086, 'bRINCO RESINA CARTILAgem - enzo', 0, '5.00', '10.00', 2, NULL, '', 4, 107, ''),
(67, '2022-01-15 19:28:00', '1254', 926324, 'bRINCO SEGUNDO FURO - ENZO ', 0, '1.00', '3.00', 23, NULL, '', 4, 107, ''),
(68, '2022-01-13 18:13:23', '1463', 142029, 'brincos varidos pequenos - enzo', 0, '2.00', '5.00', 15, NULL, '', 4, 0, ''),
(69, '2022-01-13 18:14:30', '1618', 156779, 'BRINCOS FOLHEADOS CQC  ', 0, '4.00', '8.00', 2, NULL, '', 4, 107, ''),
(70, '2022-01-13 18:16:18', '1235', 178126, 'BRINCOS VARIADOS - URARA', 0, '3.00', '6.00', 4, NULL, '', 4, 107, ''),
(71, '2022-01-13 18:17:12', '1241', 113487, 'BRINCOS VARIADOS - ZW   ', 0, '4.00', '8.00', 8, NULL, '', 4, 107, ''),
(72, '2022-01-13 18:18:11', '1610', 857740, 'BRUMA MATTE PHALLEBEAUTY', 0, '6.00', '13.00', 1, NULL, '', 4, 107, ''),
(73, '2022-01-20 19:52:00', '1369', 200592, 'CANETA DELINEADORA - ruby rose', 0, '7.00', '15.00', 11, NULL, '', 4, 107, ''),
(74, '2022-01-13 18:20:24', '1510', 110235, 'CHAVEIRO EMOTICON', 0, '2.00', '5.00', 1, NULL, '', 4, 109, ''),
(75, '2022-01-14 20:59:00', '1143', 207787, 'CHOCKEr FOLHEADA - enzo', 0, '5.00', '10.00', 51, NULL, '', 4, 107, ''),
(76, '2022-01-20 19:52:00', '1535', 960829, 'COLA PARA CILIOS -EYE', 0, '3.00', '6.00', 0, NULL, '', 4, 109, ''),
(77, '2022-01-13 18:23:45', '1086', 178274, 'COLA PARA GLITER', 0, '5.00', '10.00', 19, NULL, '', 4, 109, ''),
(78, '2022-01-13 18:24:51', '1549', 137741, 'COLAR BÃšZIOS ', 0, '5.00', '10.00', 4, NULL, '', 4, 107, ''),
(79, '2022-01-13 18:26:19', '1164', 376684, 'COLAR CORRENTE', 0, '12.00', '25.00', 3, NULL, '', 4, 107, ''),
(80, '2022-01-13 18:30:59', '1461', 137288, 'COLAR FOLHEADO ADULT. - ENZO', 0, '5.00', '10.00', 1, NULL, '', 4, 107, ''),
(81, '2022-01-13 18:32:49', '1627', 139213, 'COLAR FOLHEADO - OLIVEIRA', 0, '12.00', '25.00', 7, NULL, '', 4, 107, ''),
(82, '2022-01-13 18:44:06', '1524', 174027, 'COLAR PEDRA DA LUA /arvore da vida', 0, '6.00', '12.00', 5, NULL, '', 4, 107, ''),
(83, '2022-01-13 18:49:36', '1124', 183170, 'MAX COLAR PEDRAS  MIÃ‡ANGA', 0, '7.00', '15.00', 3, NULL, '', 4, 107, ''),
(84, '2022-01-13 18:51:21', '1151', 156175, 'CONJ. PEROLA INFANTIL', 0, '4.00', '0.00', 2, NULL, '', 4, 107, ''),
(85, '2022-01-13 18:53:06', '1411', 150930, 'CONTORNO PALETA  - SP COLORS', 0, '15.00', '15.00', 0, NULL, '', 4, 0, ''),
(86, '2022-01-13 19:02:13', '1410', 506881, 'CONTORNO PALETA  - SP COLORS', 0, '15.00', '15.00', 2, NULL, '', 4, 108, ''),
(87, '2022-01-13 19:03:33', '1359', 539370, 'CONTOUR PALETTE - JASMYNE ', 0, '15.00', '15.00', 8, NULL, '', 4, 108, ''),
(88, '2022-01-13 19:04:28', '1620', 962358, 'CORDAO PRETO 2 EM 1 -SIAO', 0, '5.00', '10.00', 1, NULL, '', 4, 107, ''),
(89, '2022-01-20 12:34:00', '1028', 447475, 'CORRETIVO BYE BYE OLHEIRAS', 0, '4.00', '4.00', 1, NULL, '', 4, 108, ''),
(90, '2022-01-13 19:08:10', '1582', 788586, 'CORRETIVO LIQ CORES CLARAS MIA make', 0, '7.00', '14.00', 4, NULL, '', 4, 108, ''),
(91, '2022-01-13 19:09:19', '1419', 174544, 'CORRETIVO LIQ SKIN - FENZZA ', 0, '5.00', '5.00', 3, NULL, '', 4, 108, ''),
(92, '2022-01-13 19:10:35', '1034', 291056, 'CORRETIVO LIQUIDO - JASMYNE', 0, '5.00', '10.00', 2, NULL, '', 4, 108, ''),
(93, '2022-01-13 19:13:36', '1032', 175328, 'CORRETIVO LIQUIDO alta cobertura- ruby rose', 0, '5.00', '10.00', 11, NULL, '', 4, 108, ''),
(94, '2022-01-13 19:15:02', '1594', 210094, 'CORRETIVO LIQUIDO PANDA VIVAI', 0, '7.00', '14.00', 2, NULL, '', 4, 108, ''),
(95, '2022-01-13 19:16:25', '1300', 121191, 'CORRETIVO LÃQUIDO NATIVE', 0, '5.00', '11.00', 2, NULL, '', 4, 108, ''),
(96, '2022-01-13 19:17:22', '1030', 319653, 'CORRETIVO NUDE HD - VIVAI ', 0, '7.00', '14.00', 6, NULL, '', 4, 108, ''),
(97, '2022-01-13 19:19:02', '1640', 644368, 'CÃLIOS POSTIÃ‡OS MIGIC 3D', 0, '2.00', '2.00', 18, NULL, '', 4, 109, ''),
(98, '2022-01-15 18:05:00', '1538', 761362, 'CÃLIOS POSTIÃ‡OS SABRINA SATO', 0, '3.00', '7.00', 0, NULL, '', 4, 109, ''),
(99, '2022-01-13 19:21:45', '1612', 154873, 'DELINEADOR LIQUIDO BRANCO', 0, '7.00', '15.00', 4, NULL, '', 4, 108, ''),
(100, '2022-01-13 19:22:46', '1555', 195212, 'DELINEADOR SUPER BLACK - VIVAI', 0, '5.00', '10.00', 3, NULL, '', 4, 108, ''),
(101, '2022-01-13 19:23:31', '1455', 561279, 'DEMAQUILANTE BIFÃSICO - SHINESS', 0, '7.00', '14.00', 1, NULL, '', 4, 108, ''),
(102, '2022-01-13 19:24:40', '1481', 190507, 'ESFOLIANTE CARVÃƒO ATIVADO - fenzza', 0, '7.00', '15.00', 1, NULL, '', 4, 108, ''),
(103, '2022-01-18 20:59:00', '1445', 328204, 'ESPONJA GOTA', 0, '2.00', '5.00', 0, NULL, '', 4, 109, ''),
(104, '2022-01-13 19:27:38', '1636', 139652, 'ESPONJA UNITARIA DIVERSAS', 0, '1.00', '2.00', 5, NULL, '', 4, 109, ''),
(105, '2022-01-13 19:28:54', '1628', 110594, 'fivela strass', 0, '3.00', '7.00', 10, NULL, '', 4, 109, ''),
(106, '2022-01-13 19:29:53', '1131', 132442, 'colar MIÃ‡ANGAS C BOLAS', 0, '2.00', '5.00', 2, NULL, '', 4, 107, ''),
(107, '2022-01-13 19:33:56', '1088', 242251, 'GLITER CAMALEÃƒO - dapop', 0, '2.00', '5.00', 18, NULL, '', 4, 108, ''),
(108, '2022-01-13 19:42:21', '1089', 158568, 'GLITER FASHION - QUEEN', 0, '3.00', '6.00', 4, NULL, '', 4, 109, ''),
(109, '2022-01-13 19:43:16', '1043', 156398, 'HENNA SOBRANCELHA - MAKIAJ', 0, '10.00', '20.00', 6, NULL, '', 4, 108, ''),
(110, '2022-01-13 19:44:29', '1588', 505809, 'ILUMINADOR E BRONZEADOR PÃ“ MAX  ', 0, '7.00', '14.00', 4, NULL, '', 4, 108, ''),
(111, '2022-01-13 19:46:04', '1585', 556659, 'ILUMINADOR LIQUIDO - ruby rose', 0, '8.00', '17.00', 5, NULL, '', 4, 108, ''),
(112, '2022-01-13 19:48:00', '1293', 821595, 'amarrador branco', 0, '1.00', '3.00', 1, NULL, '', 4, 109, ''),
(113, '2022-01-13 19:49:05', '1444', 186201, 'KIT ESPONJA PARA COMPACTO', 0, '3.00', '6.00', 1, NULL, '', 4, 109, ''),
(114, '2022-01-13 19:49:56', '1526', 209950, 'UNHAS INFANTIL/ADULTO', 0, '3.00', '7.00', 3, NULL, '', 4, 109, ''),
(115, '2022-01-13 19:50:56', '1575', 125108, 'LIP TINT - JASMYNE', 0, '6.00', '13.00', 7, NULL, '', 4, 108, ''),
(116, '2022-01-13 19:52:09', '1592', 665759, 'LIP TINT FENZZA', 0, '5.00', '10.00', 3, NULL, '', 4, 108, ''),
(117, '2022-01-20 19:52:00', '1103', 190611, 'LÃPIS BRANCO - PLAYBOY ', 0, '1.00', '3.00', 2, NULL, '', 4, 108, ''),
(118, '2022-01-13 20:01:29', '1041', 978494, 'LIP TINT TRÃ“PICO - RUBY ROSE', 0, '7.00', '14.00', 3, NULL, '', 4, 108, ''),
(119, '2022-01-13 20:03:13', '1321', 102369, 'LÃPIS CHANFRADO PARA SOBRANCELha - luisance', 0, '3.00', '7.00', 3, NULL, '', 4, 108, ''),
(120, '2022-01-13 20:04:14', '1102', 898947, 'LÃPIS DE OLHO COLORS E NEON', 0, '1.00', '2.00', 2, NULL, '', 4, 108, ''),
(121, '2022-01-13 20:05:10', '1368', 700202, 'LÃPIS DELINEADOR DE SOBRANCELHas - ruby rose', 0, '2.00', '5.00', 2, NULL, '', 4, 108, ''),
(122, '2022-01-13 20:06:05', '1104', 210064, 'LÃPIS PRETO PARA OLHOS  - VIVAi', 0, '1.00', '3.00', 9, NULL, '', 4, 108, ''),
(123, '2022-01-13 20:07:03', '1552', 110326, 'MASCARA DE TECIDO ', 0, '2.00', '5.00', 1, NULL, '', 4, 109, ''),
(124, '2022-01-13 20:09:20', '1135', 183546, 'max colar variados', 0, '5.00', '10.00', 16, NULL, '', 4, 107, ''),
(125, '2022-01-13 20:10:19', '1292', 408471, 'estojo infantil', 0, '2.00', '5.00', 2, NULL, '', 4, 109, ''),
(126, '2022-01-13 20:11:14', '1559', 183614, 'PALETA BLUSH E ILUMINADOR - ruby rose', 0, '22.00', '44.00', 1, NULL, '', 4, 108, ''),
(127, '2022-01-13 20:12:15', '1366', 193420, 'PALETA DE CONTORNO -dapop', 0, '7.00', '15.00', 8, NULL, '', 4, 108, ''),
(128, '2022-01-13 20:13:05', '1599', 541354, 'PALETA DE SOMBRA COLORFUL WORLd', 0, '12.00', '24.00', 2, NULL, '', 4, 108, ''),
(129, '2022-01-13 20:14:06', '1546', 101690, 'PALETA QUARTETO ludurana', 0, '11.00', '22.00', 1, NULL, '', 4, 108, ''),
(130, '2022-01-13 20:14:55', '1256', 207091, 'PIERCING ARGOLINHA FAKE - dayane', 0, '3.00', '6.00', 3, NULL, '', 4, 107, ''),
(131, '2022-01-13 20:15:46', '1255', 816633, 'PIERCING FAKE VARIADOS ', 0, '2.00', '5.00', 3, NULL, '', 4, 107, ''),
(132, '2022-01-13 20:16:40', '1346', 104809, 'PIERCING FERRADURA', 0, '1.00', '2.00', 6, NULL, '', 4, 107, ''),
(133, '2022-01-13 20:17:37', '1287', 162627, 'PIERCING NARIZ ARGOLINHA', 0, '0.00', '1.00', 32, NULL, '', 4, 107, ''),
(134, '2022-01-13 20:18:31', '1632', 190937, 'PIERCING NARIZ CURVA', 0, '0.00', '1.00', 36, NULL, '', 4, 107, ''),
(135, '2022-01-20 19:55:00', '1286', 160684, 'PIERCING NARIZ RETO', 0, '0.00', '1.00', 16, NULL, '', 4, 107, ''),
(136, '2022-01-13 20:20:05', '1333', 349561, 'PIERCING UMBIGO', 0, '1.00', '3.00', 7, NULL, '', 4, 107, ''),
(137, '2022-01-13 20:20:55', '1090', 485432, 'PIGMENTO FASHION ', 0, '3.00', '6.00', 12, NULL, '', 4, 108, ''),
(138, '2022-01-13 20:23:07', '1325', 486190, 'PINCEL DUPLO ESCOVA E CHANfradoFRADW', 0, '5.00', '10.00', 5, NULL, '', 4, 109, ''),
(139, '2022-01-13 20:24:05', '1482', 141831, 'PINCEL ESCOVA E PENTE PARA CÃL', 0, '4.00', '8.00', 5, NULL, '', 4, 109, ''),
(140, '2022-01-13 20:24:53', '1566', 556923, 'PINCEL P/ DELINEAR', 0, '5.00', '10.00', 4, NULL, '', 4, 109, ''),
(141, '2022-01-13 20:26:10', '1109', 526108, 'PINCEL PARA ILUMINADOR PROFISSional', 0, '6.00', '12.00', 5, NULL, '', 4, 109, ''),
(142, '2022-01-13 20:27:04', '1108', 677710, 'PINCEL PROFISSIONAL PARA ESFUMar', 0, '7.00', '14.00', 3, NULL, '', 4, 109, ''),
(143, '2022-01-13 20:28:11', '1630', 177655, 'PIRANHA STRASS BOZA ROSE', 0, '2.00', '5.00', 2, NULL, '', 4, 109, ''),
(144, '2022-01-13 20:29:11', '1264', 604733, 'PIRANHAS DE SALÃƒO', 0, '0.00', '1.00', 3, NULL, '', 4, 109, ''),
(145, '2022-01-13 20:30:09', '1262', 202903, 'PIRANHAS MÃ‰DIAS', 0, '0.00', '0.00', 2, NULL, '', 4, 109, ''),
(146, '2022-01-13 20:31:01', '1624', 502361, 'PIRANHAS PEQUENAS  PEDRAS COLO', 0, '2.00', '4.00', 6, NULL, '', 4, 109, ''),
(147, '2022-01-13 20:32:35', '1514', 202965, 'PULSEIRA BRACELHETE', 0, '3.00', '6.00', 1, NULL, '', 4, 109, ''),
(148, '2022-01-13 20:35:04', '1155', 107033, 'PULSEIRA variadas', 0, '2.00', '5.00', 37, NULL, '', 4, 109, 'dayane e enzo'),
(149, '2022-01-13 20:36:55', '1181', 103998, 'PULSEIRAS DE FERRO COLORIDAS', 0, '0.00', '1.00', 9, NULL, '', 4, 109, ''),
(150, '2022-01-13 20:37:56', '1365', 653611, 'PÃ“ BANANA - BELLA ANGEL', 0, '7.00', '15.00', 1, NULL, '', 4, 108, ''),
(151, '2022-01-13 20:39:01', '1583', 369587, 'PÃ“ BANANA FACIAL MIA MAKE', 0, '8.00', '17.00', 6, NULL, '', 4, 108, ''),
(152, '2022-01-13 20:39:59', '1591', 239449, 'PÃ“ BANANA FENZZA', 0, '6.00', '15.00', 3, NULL, '', 4, 108, ''),
(153, '2022-01-14 20:46:00', '1414', 961719, 'PÃ“ COMPACTO FACES - FENZZA', 0, '4.00', '8.00', 4, NULL, '', 4, 108, ''),
(154, '2022-01-13 20:45:17', '1016', 106715, 'PÃ“ COMPACTO FACIAL peles clara e morena ruby rose', 0, '7.00', '15.00', 19, NULL, '', 4, 108, ''),
(155, '2022-01-13 20:47:02', '1361', 586179, 'Po COMPACTO translucido -max love', 0, '5.00', '11.00', 4, NULL, '', 4, 108, ''),
(156, '2022-01-13 20:48:23', '1017', 184924, 'Po COMPACTO VEGANO - dalla', 0, '4.00', '9.00', 11, NULL, '', 4, 108, ''),
(157, '2022-01-13 20:49:35', '1352', 187095, 'PÃ“ COMPACTO SELFIE - RUBY ROSE', 0, '8.00', '16.00', 1, NULL, '', 4, 108, ''),
(158, '2022-01-13 20:52:19', '1024', 138212, 'Po COMPACTO  C ESPELHo-maxlove', 0, '6.00', '12.00', 26, NULL, '', 4, 108, ''),
(159, '2022-01-14 20:55:00', '1593', 805532, 'Po SKIN PERFECT - LUISANCE', 0, '4.00', '9.00', 9, NULL, '', 4, 108, ''),
(160, '2022-01-13 20:54:26', '1304', 503953, 'Po TRANSLuCIDO - FENZZA', 0, '6.00', '13.00', 1, NULL, '', 4, 108, ''),
(161, '2022-01-13 20:55:03', '1183', 131172, 'SEMI JOIA - ENZO', 0, '6.00', '12.00', 2, NULL, '', 4, 109, ''),
(162, '2022-01-13 20:56:03', '1274', 114872, 'SERRINHA de UNHA', 0, '0.00', '0.00', 43, NULL, '', 4, 109, ''),
(163, '2022-01-13 20:57:08', '1042', 163259, 'SOLUÃ‡ÃƒO SOBRANCELHA  -ruby rose', 0, '3.00', '6.00', 6, NULL, '', 4, 108, ''),
(164, '2022-01-13 20:58:06', '1081', 658914, 'SOMBRA LÃQUIDA  - D\'HERMOHL', 0, '2.00', '5.00', 4, NULL, '', 4, 108, ''),
(165, '2022-01-18 21:02:00', '1294', 691247, 'TIARA PEROLA/BOLINHA', 0, '5.00', '10.00', 1, NULL, '', 4, 109, ''),
(166, '2022-01-13 21:00:07', '1631', 165144, 'TIARAS variadas-siao', 0, '6.00', '12.00', 6, NULL, '', 4, 109, ''),
(167, '2022-01-13 21:01:16', '1270', 115285, 'TIC TAC', 0, '0.00', '0.00', 46, NULL, '', 4, 109, ''),
(168, '2022-01-13 21:02:11', '1639', 907377, 'TOUCA de MEIA', 0, '3.00', '3.00', 1, NULL, '', 4, 109, ''),
(169, '2022-01-13 21:03:17', '1332', 185221, 'UNHAS POSTIÃ‡AS ', 0, '1.00', '2.00', 6, NULL, '', 4, 109, ''),
<<<<<<< HEAD
(170, '2022-01-14 20:55:00', '1595', 114359, 'iluminador pÃ³ solto mahav', 0, '6.00', '13.00', 11, NULL, '', 4, 108, '');
=======
(170, '2022-01-14 20:55:00', '1595', 114359, 'iluminador pÃ³ solto mahav', 0, '6.00', '13.00', 0, NULL, '', 4, 108, '');
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto_venda`
--

CREATE TABLE `produto_venda` (
  `id` int(11) NOT NULL,
  `data` date DEFAULT current_timestamp(),
  `data1` timestamp NULL DEFAULT current_timestamp(),
  `codigo` int(11) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `produtos_id` int(10) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `forma_pagamento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto_venda`
--

<<<<<<< HEAD
INSERT INTO `produto_venda` (`id`, `data`, `codigo`, `qtd`, `valor`, `produtos_id`, `clientes_id`, `forma_pagamento_id`) VALUES
(29, '2022-01-24 16:14:52', 277598, 1, '5.00', 12, 18, 2),
(30, '2022-01-24 16:14:52', 403693, 1, '5.00', 2, 18, 2);
=======
INSERT INTO `produto_venda` (`id`, `data`, `data1`, `codigo`, `qtd`, `valor`, `produtos_id`, `clientes_id`, `forma_pagamento_id`) VALUES
(33, '2022-01-25', '2022-01-25 20:24:11', 593325, 5, '20.00', 1, 18, 2),
(34, '2022-01-25', '2022-01-25 20:24:11', 184451, 2, '10.00', 49, 18, 2);
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo`
--

CREATE TABLE `tipo` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipo`
--

INSERT INTO `tipo` (`id`, `nome`) VALUES
(1, 'Venda'),
(2, 'Orçamento');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cargos_id` int(11) NOT NULL,
  `acessos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `cargos_id`, `acessos_id`) VALUES
(4, 'admin', 'admin@eneylton.com', '$2y$10$mZ.QuTVOWHefiG58kSk2K.BW3VDnDFu/l1fhYaBmRhQ5eJTJImThm', 1, 1),
(7, 'Eneylton Barros', 'eneylton@hotmail.com', '$2y$10$JZR7X2ZpplGhF4dtchAhJedF/Y0/4ynAOd8VBlR4ehJfLOKHX4mLG', 1, 2),
(13, 'ene', 'enex@gmail.com.br', '202cb962ac59075b964b07152d234b70', 1, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `data` timestamp NULL DEFAULT current_timestamp(),
  `codigo` int(11) DEFAULT NULL,
  `recebido` decimal(10,2) DEFAULT NULL,
  `troco` decimal(10,2) DEFAULT NULL,
  `usuarios_id` int(11) NOT NULL,
  `clientes_id` int(11) NOT NULL,
  `forma_pagamento_id` int(11) NOT NULL,
  `tipo_id` int(11) NOT NULL,
  `mov_cat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `data`, `codigo`, `recebido`, `troco`, `usuarios_id`, `clientes_id`, `forma_pagamento_id`, `tipo_id`, `mov_cat_id`) VALUES
<<<<<<< HEAD
(118, '2022-01-16 12:36:50', 194308, '12.00', '0.00', 4, 15, 2, 1, 1),
(119, NULL, 587640, '12.00', '0.00', 4, 15, 2, 1, 1),
(120, NULL, 272694, '12.00', '0.00', 4, 15, 2, 1, 1),
(121, NULL, 585547, '12.00', '0.00', 4, 16, 2, 1, 1),
(122, NULL, 134595, '12.00', '0.00', 4, 17, 2, 1, 1),
(123, NULL, 166993, '12.00', '0.00', 4, 16, 2, 1, 1),
(124, NULL, 348210, '12.00', '0.00', 4, 15, 2, 1, 1),
(125, NULL, 161458, '12.00', '0.00', 4, 17, 2, 1, 1),
(126, NULL, 400285, '12.00', '0.00', 4, 15, 2, 1, 1),
(127, NULL, 150795, '24.00', '0.00', 4, 18, 2, 1, 1),
(128, NULL, 121037, '40.00', '7.60', 4, 18, 2, 1, 1),
(129, NULL, 125432, '50.00', '6.80', 4, 18, 2, 1, 1),
(130, NULL, 403693, '10.00', '0.00', 4, 18, 2, 1, 1);
=======
(130, NULL, 134662, '4.00', '0.00', 4, 18, 2, 1, 1),
(131, NULL, 263092, '5.00', '0.00', 4, 18, 3, 1, 1),
(132, NULL, 178327, '15.00', '0.00', 4, 18, 2, 1, 1),
(133, NULL, 184451, '30.00', '0.00', 4, 18, 2, 1, 1);
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `acessos`
--
ALTER TABLE `acessos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `caixa`
--
ALTER TABLE `caixa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_caixa_forma_pagamento1_idx` (`forma_pagamento_id`),
  ADD KEY `fk_caixa_usuarios1_idx` (`usuarios_id`);

--
-- Índices para tabela `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `catdespesas`
--
ALTER TABLE `catdespesas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
<<<<<<< HEAD
-- Índices para tabela `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_compras_produtos1_idx` (`produtos_id`),
  ADD KEY `fk_compras_usuarios1_idx` (`usuarios_id`);
=======
-- Índices para tabela `deposito`
--
ALTER TABLE `deposito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_deposito_banco1_idx` (`banco_id`),
  ADD KEY `fk_deposito_forma_pagamento1_idx` (`forma_pagamento_id`);
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

--
-- Índices para tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_movimentacoes_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_movimentacoes_catdespesas1_idx` (`catdespesas_id`),
  ADD KEY `fk_movimentacoes_forma_pagamento1_idx` (`forma_pagamento_id`),
  ADD KEY `fk_movimentacoes_caixa1_idx` (`caixa_id`);

--
-- Índices para tabela `mov_cat`
--
ALTER TABLE `mov_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pedidos_produtos1_idx` (`produtos_id`),
  ADD KEY `fk_pedidos_usuarios1_idx` (`usuarios_id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produtos_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_produtos_categorias1_idx` (`categorias_id`);

--
-- Índices para tabela `produto_venda`
--
ALTER TABLE `produto_venda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_produto_venda_clientes1_idx` (`clientes_id`),
  ADD KEY `fk_produto_venda_forma_pagamento1_idx` (`forma_pagamento_id`);

--
-- Índices para tabela `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_usuarios_cargos_idx` (`cargos_id`),
  ADD KEY `fk_usuarios_acessos1_idx` (`acessos_id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vendas_usuarios1_idx` (`usuarios_id`),
  ADD KEY `fk_vendas_clientes1_idx` (`clientes_id`),
  ADD KEY `fk_vendas_forma_pagamento1_idx` (`forma_pagamento_id`),
  ADD KEY `fk_vendas_tipo1_idx` (`tipo_id`),
  ADD KEY `fk_vendas_mov_cat1_idx` (`mov_cat_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `acessos`
--
ALTER TABLE `acessos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `banco`
--
ALTER TABLE `banco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `caixa`
--
ALTER TABLE `caixa`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

--
-- AUTO_INCREMENT de tabela `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `catdespesas`
--
ALTER TABLE `catdespesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
<<<<<<< HEAD
-- AUTO_INCREMENT de tabela `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;
=======
-- AUTO_INCREMENT de tabela `deposito`
--
ALTER TABLE `deposito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

--
-- AUTO_INCREMENT de tabela `forma_pagamento`
--
ALTER TABLE `forma_pagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

--
-- AUTO_INCREMENT de tabela `mov_cat`
--
ALTER TABLE `mov_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de tabela `produto_venda`
--
ALTER TABLE `produto_venda`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

--
-- AUTO_INCREMENT de tabela `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
>>>>>>> 8299d9c942806660d930784a5c8f6b0bb883c73f

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `caixa`
--
ALTER TABLE `caixa`
  ADD CONSTRAINT `fk_caixa_forma_pagamento1` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `forma_pagamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_caixa_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `deposito`
--
ALTER TABLE `deposito`
  ADD CONSTRAINT `fk_deposito_banco1` FOREIGN KEY (`banco_id`) REFERENCES `banco` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_deposito_forma_pagamento1` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `forma_pagamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD CONSTRAINT `fk_movimentacoes_caixa1` FOREIGN KEY (`caixa_id`) REFERENCES `caixa` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movimentacoes_catdespesas1` FOREIGN KEY (`catdespesas_id`) REFERENCES `catdespesas` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movimentacoes_forma_pagamento1` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `forma_pagamento` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_movimentacoes_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `produto_venda`
--
ALTER TABLE `produto_venda`
  ADD CONSTRAINT `fk_produto_venda_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_produto_venda_forma_pagamento1` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `forma_pagamento` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_usuarios_acessos1` FOREIGN KEY (`acessos_id`) REFERENCES `acessos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_cargos` FOREIGN KEY (`cargos_id`) REFERENCES `cargos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_forma_pagamento1` FOREIGN KEY (`forma_pagamento_id`) REFERENCES `forma_pagamento` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_mov_cat1` FOREIGN KEY (`mov_cat_id`) REFERENCES `mov_cat` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_tipo1` FOREIGN KEY (`tipo_id`) REFERENCES `tipo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vendas_usuarios1` FOREIGN KEY (`usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
