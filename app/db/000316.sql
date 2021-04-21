-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Abr-2021 às 10:08
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `000316`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE `ci_sessions` (
                               `session_id` varchar(40) NOT NULL DEFAULT '0',
                               `ip_address` varchar(45) NOT NULL DEFAULT '0',
                               `user_agent` varchar(120) NOT NULL,
                               `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
                               `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emitente`
--

CREATE TABLE `emitente` (
                            `id` int(11) NOT NULL,
                            `nome` varchar(255) DEFAULT NULL,
                            `cnpj` varchar(45) DEFAULT NULL,
                            `ie` varchar(50) DEFAULT NULL,
                            `rua` varchar(70) DEFAULT NULL,
                            `numero` varchar(15) DEFAULT NULL,
                            `bairro` varchar(45) DEFAULT NULL,
                            `cidade` varchar(45) DEFAULT NULL,
                            `uf` varchar(20) DEFAULT NULL,
                            `telefone` varchar(20) DEFAULT NULL,
                            `email` varchar(255) DEFAULT NULL,
                            `url_logo` varchar(225) DEFAULT NULL,
                            `situacao` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `emitente`
--

INSERT INTO `emitente` (`id`, `nome`, `cnpj`, `ie`, `rua`, `numero`, `bairro`, `cidade`, `uf`, `telefone`, `email`, `url_logo`, `situacao`) VALUES
(3, 'Condomínio Life Resort I ', '27454273000162', '25.748.823-5', 'Rua Drumond', '182', 'Campo Grande', 'Rio de Janeiro', 'Rio de Janeiro', '2135145720', 'support@inmanager.com', 'http://127.0.0.1/dev_source/assets/uploads/3aa722464f3840a0c560ea8b9ae23f7b.png', 1),
(4, 'Condomínio Life Resort II', '27454273000162', '25.748.823-5', 'Rua Drumond', '182', 'Campo Grande', 'Rio de Janeiro', 'Rio de Janeiro', '2135145720', 'support@inmanager.com', 'http://127.0.0.1/dev_source/assets/uploads/3aa722464f3840a0c560ea8b9ae23f7b.png', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
                            `idUsuarios` int(11) NOT NULL,
                            `nome` varchar(80) NOT NULL,
                            `userinsert` int(11) NOT NULL,
                            `userupdate` int(11) NOT NULL,
                            `dateinsert` datetime NOT NULL,
                            `dateupdate` datetime NOT NULL,
                            `rg` varchar(20) DEFAULT NULL,
                            `cpf` varchar(20) NOT NULL,
                            `rua` varchar(70) DEFAULT NULL,
                            `numero` varchar(15) DEFAULT NULL,
                            `bairro` varchar(45) DEFAULT NULL,
                            `cidade` varchar(45) DEFAULT NULL,
                            `estado` varchar(20) DEFAULT NULL,
                            `email` varchar(80) NOT NULL,
                            `senha` varchar(45) NOT NULL,
                            `telefone` varchar(20) NOT NULL,
                            `celular` varchar(20) DEFAULT NULL,
                            `situacao` tinyint(1) NOT NULL,
                            `id_regiao` int(9) NOT NULL,
                            `sexo` varchar(1) NOT NULL,
                            `url_ass` varchar(255) NOT NULL,
                            `permissoes_id` int(11) NOT NULL,
                            `dashboard` int(1) NOT NULL,
                            `nascido_em` varchar(25) NOT NULL,
                            `id_emitente` int(11) NOT NULL,
                            `url_logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`idUsuarios`, `nome`, `userinsert`, `userupdate`, `dateinsert`, `dateupdate`, `rg`, `cpf`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `senha`, `telefone`, `celular`, `situacao`, `id_regiao`, `sexo`, `url_ass`, `permissoes_id`, `dashboard`, `nascido_em`, `id_emitente`, `url_logo`) VALUES
(1, 'admin', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'MG-25.502.560', '600.021.520-87', 'Rua Acima', '12', 'Alvorada', 'Teste', 'MG', 'admin@admin.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0000-0000', '', 1, 0, '0', 'http://10.0.0.113/dev_source/assets/uploads/96cb070acb1704b51271ee7596a2c44a.jpg', 1, 0, '0000-00-00', 0, 'http://67d206c9819e.sn.mynetname.net:60009/inmanager/app/assets/uploads/f8ff20d858526c51ea7397204e4df3a8.jpeg'),
(3, 'Janei Araujo', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '290860592', '600.021.520-87', ' Rua Acima', '182', 'Campo Grande', 'Rio de Janeiro', 'RJ', 'janei.junior@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '(21) 3403-5075', '(21) 99985-5720', 1, 0, 'M', 'http://127.0.0.1:8080/inmanager/app/assets/uploads/e68653a91771f5b90794b02901fdbbca.PNG', 112, 0, '21/10/1996', 0, 'http://127.0.0.1:8080/control_access/app/assets/uploads/f2a4da7fdeb360a135370d94f177a3b7.jpg'),
(5, 'teste', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '29222222222212', '600.021.520-87', 'Rua Acima, Casa 182', 'Casa 182', 'CAMPO GRANDE', 'Rio de Janeiro', 'RJ', 'teste@teste.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '21969196186', '', 1, 0, '0', '', 17, 0, '0000-00-00', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
    ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `emitente`
--
ALTER TABLE `emitente`
    ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
    ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emitente`
--
ALTER TABLE `emitente`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
    MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
