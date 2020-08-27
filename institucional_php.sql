-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27-Ago-2020 às 22:47
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `institucional_php`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.online`
--

CREATE TABLE `tb_admin.online` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ultima_acao` datetime NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.online`
--

INSERT INTO `tb_admin.online` (`id`, `ip`, `ultima_acao`, `token`) VALUES
(23, '::1', '2020-08-27 17:30:18', '5f48172c0b099');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `password`, `img`, `nome`, `cargo`) VALUES
(1, 'admin', '18031995', '5f48175959954.jpg', 'Jonas Pires da Silva', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.visitas`
--

CREATE TABLE `tb_admin.visitas` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.visitas`
--

INSERT INTO `tb_admin.visitas` (`id`, `ip`, `dia`) VALUES
(1, '::1', '2017-06-12'),
(2, '192.168.0.2', '2017-06-11'),
(3, '::1', '2017-06-13'),
(4, '::1', '2017-06-13'),
(5, '::1', '2017-06-13'),
(6, '::1', '2017-06-13'),
(7, '::1', '2017-06-14'),
(8, '::1', '2017-06-14'),
(9, '::1', '2017-06-16'),
(10, '::1', '2017-06-20'),
(11, '::1', '2017-06-20'),
(12, '::1', '2017-06-20'),
(13, '::1', '2017-06-20'),
(14, '::1', '2017-06-26'),
(15, '::1', '2020-08-26'),
(16, '::1', '2020-08-26'),
(17, '::1', '2020-08-26');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.config`
--

CREATE TABLE `tb_site.config` (
  `titulo` varchar(255) NOT NULL,
  `nome_autor` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `icone1` varchar(255) NOT NULL,
  `descricao1` text NOT NULL,
  `icone2` varchar(255) NOT NULL,
  `descricao2` text NOT NULL,
  `icone3` varchar(255) NOT NULL,
  `descricao3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.config`
--

INSERT INTO `tb_site.config` (`titulo`, `nome_autor`, `descricao`, `icone1`, `descricao1`, `icone2`, `descricao2`, `icone3`, `descricao3`) VALUES
('Site Institucional', 'JP_Programador', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non quam dapibus, tristique ex eget, accumsan nisi. Mauris eu nisl ut orci dapibus aliquet rutrum nec sapien. Donec consectetur tempus suscipit. Integer eleifend ultrices tellus vitae sagittis. Sed at massa sit amet mauris fringilla eleifend ac sit amet purus. Maecenas elementum lobortis maximus. Vestibulum id porttitor ex. Morbi ornare a sem in pretium. Cras molestie sodales nibh, quis accumsan magna bibendum vitae. Aenean eu augue ut urna faucibus hendrerit a eget libero. Donec et neque congue, accumsan justo eu, posuere leo. Pellentesque quis ipsum nisi. Donec sodales dui quis metus faucibus dapibus. Sed nec pellentesque sapien, non ultrices urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed ut ullamcorper orci.', 'fa fa-css3', 'descricao css3', 'fa fa-html5', 'descricao html5', 'fa fa-gg-circle', 'descricao javascript');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.depoimentos`
--

CREATE TABLE `tb_site.depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `depoimento` text NOT NULL,
  `data` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.depoimentos`
--

INSERT INTO `tb_site.depoimentos` (`id`, `nome`, `depoimento`, `data`, `order_id`) VALUES
(8, 'Guilherme', 'Olá, funcionando', '19/09/2019', 11),
(9, 'João', 'Olá, funcionando', '19/09/2019', 10),
(10, 'Mario', 'Depoimento', '19/09/2019', 9),
(11, 'Outro', 'Ok', '19/08/2016', 8),
(12, 'Guilherme Grillo', 'Depoimento de teste', '25/05/1993', 12),
(13, 'Joao', 'outro depoimento editado', '25/05/1993', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.produto`
--

CREATE TABLE `tb_site.produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.produto`
--

INSERT INTO `tb_site.produto` (`id`, `nome`, `descricao`, `imagem`, `order_id`) VALUES
(2, 'Produto 02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non quam dapibus, tristique ex eget, accumsan nisi. Mauris eu nisl ut orci dapibus aliquet rutrum nec sapien. Donec consectetur tempus suscipit. ', '5f46a73383547.jpg', 3),
(3, 'Produto 03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non quam dapibus, tristique ex eget, accumsan nisi. Mauris eu nisl ut orci dapibus aliquet rutrum nec sapien. Donec consectetur tempus suscipit. ', '5f46a7402177b.jpg', 4),
(4, 'Produto 01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non quam dapibus, tristique ex eget, accumsan nisi. Mauris eu nisl ut orci dapibus aliquet rutrum nec sapien. Donec consectetur tempus suscipit. ', '5f46a74a2804f.jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.servicos`
--

CREATE TABLE `tb_site.servicos` (
  `id` int(11) NOT NULL,
  `servico` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.servicos`
--

INSERT INTO `tb_site.servicos` (`id`, `servico`, `order_id`) VALUES
(4, 'Meu serviço #1', 4),
(7, 'Meu servico #2', 5),
(8, 'Meu Serviço #3', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.slides`
--

CREATE TABLE `tb_site.slides` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.slides`
--

INSERT INTO `tb_site.slides` (`id`, `nome`, `slide`, `order_id`) VALUES
(10, 'slide1', '5f467f1294e90.jpg', 10),
(11, 'slide2', '5f467f21db0c3.jpg', 11),
(12, 'slide3', '5f467fc624b48.jpg', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.trabalho`
--

CREATE TABLE `tb_site.trabalho` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.trabalho`
--

INSERT INTO `tb_site.trabalho` (`id`, `nome`, `descricao`, `imagem`, `order_id`) VALUES
(4, 'Trabalho 01', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non quam dapibus, tristique ex eget, accumsan nisi. Mauris eu nisl ut orci dapibus aliquet rutrum nec sapien. Donec consectetur tempus suscipit. ', '5f46a7687d7c3.jpg', 4),
(5, 'Trabalho 02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non quam dapibus, tristique ex eget, accumsan nisi. Mauris eu nisl ut orci dapibus aliquet rutrum nec sapien. Donec consectetur tempus suscipit. ', '5f46a7706f0b5.jpg', 6),
(6, 'Trabalho 03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce non quam dapibus, tristique ex eget, accumsan nisi. Mauris eu nisl ut orci dapibus aliquet rutrum nec sapien. Donec consectetur tempus suscipit. ', '5f46a77b6e206.jpg', 5);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.produto`
--
ALTER TABLE `tb_site.produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.trabalho`
--
ALTER TABLE `tb_site.trabalho`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_site.produto`
--
ALTER TABLE `tb_site.produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_site.trabalho`
--
ALTER TABLE `tb_site.trabalho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
