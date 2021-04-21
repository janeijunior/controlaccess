-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Abr-2021 às 12:46
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
-- Estrutura da tabela `acesso`
--

CREATE TABLE `acesso` (
  `id` int(11) NOT NULL,
  `acessoinvalido` tinyint(1) NOT NULL,
  `acessoliberado` tinyint(1) NOT NULL,
  `acessodatahora` datetime NOT NULL,
  `acessodescricao` varchar(100) NOT NULL,
  `equipamentotipoterminal` varchar(50) NOT NULL,
  `acessosentido` varchar(1) DEFAULT NULL,
  `acessorealizado` tinyint(1) NOT NULL,
  `acessorefeitorio` tinyint(1) NOT NULL,
  `acessocontrolador` smallint(6) NOT NULL,
  `visitaid` int(11) DEFAULT NULL,
  `cracha` varchar(32) DEFAULT NULL,
  `matricula` varchar(30) DEFAULT NULL,
  `pessoaid` int(11) DEFAULT NULL,
  `pessoanome` varchar(255) DEFAULT NULL,
  `visitante` tinyint(1) NOT NULL,
  `empresaid` int(11) DEFAULT NULL,
  `estruturaid` int(11) DEFAULT NULL,
  `setorid` int(11) DEFAULT NULL,
  `empresanome` varchar(255) DEFAULT NULL,
  `estruturadescricao` varchar(50) DEFAULT NULL,
  `setordescricao` varchar(50) DEFAULT NULL,
  `equipamentoid` int(11) NOT NULL,
  `equipamentodescricao` varchar(50) DEFAULT NULL,
  `equipamentotcpip` char(15) NOT NULL,
  `equipamentomacaddress` varchar(17) NOT NULL,
  `equipamentoserverhost` varchar(20) NOT NULL,
  `comando` smallint(6) NOT NULL,
  `str_enviado` varchar(100) DEFAULT NULL,
  `registroonline` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessobloqueado`
--

CREATE TABLE `acessobloqueado` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `acessoid_id` int(11) NOT NULL,
  `digitaltemplate` longtext NOT NULL,
  `fabricante` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessolog`
--

CREATE TABLE `acessolog` (
  `id` int(11) NOT NULL,
  `acessoinvalido` tinyint(1) NOT NULL,
  `acessoliberado` tinyint(1) NOT NULL,
  `acessodatahora` datetime NOT NULL,
  `acessodescricao` varchar(100) NOT NULL,
  `equipamentotipoterminal` varchar(50) NOT NULL,
  `acessosentido` varchar(1) DEFAULT NULL,
  `acessorealizado` tinyint(1) NOT NULL,
  `acessorefeitorio` tinyint(1) NOT NULL,
  `acessocontrolador` smallint(6) NOT NULL,
  `visitaid` int(11) DEFAULT NULL,
  `cracha` varchar(32) DEFAULT NULL,
  `matricula` varchar(30) DEFAULT NULL,
  `pessoaid` int(11) DEFAULT NULL,
  `pessoanome` varchar(255) DEFAULT NULL,
  `visitante` tinyint(1) NOT NULL,
  `empresaid` int(11) DEFAULT NULL,
  `estruturaid` int(11) DEFAULT NULL,
  `setorid` int(11) DEFAULT NULL,
  `empresanome` varchar(255) DEFAULT NULL,
  `estruturadescricao` varchar(50) DEFAULT NULL,
  `setordescricao` varchar(50) DEFAULT NULL,
  `equipamentoid` int(11) NOT NULL,
  `equipamentodescricao` varchar(50) DEFAULT NULL,
  `equipamentotcpip` char(15) NOT NULL,
  `equipamentomacaddress` varchar(17) NOT NULL,
  `equipamentoserverhost` varchar(20) NOT NULL,
  `comando` smallint(6) NOT NULL,
  `str_enviado` varchar(100) DEFAULT NULL,
  `registroonline` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessorefeitorio`
--

CREATE TABLE `acessorefeitorio` (
  `acesso_ptr_id` int(11) NOT NULL,
  `valorrefeicao` decimal(10,2) DEFAULT NULL,
  `empresacolaborador` varchar(255) DEFAULT NULL,
  `descricaorefeicao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessorefeitorioreserva`
--

CREATE TABLE `acessorefeitorioreserva` (
  `acesso_ptr_id` int(11) NOT NULL,
  `pessoareservaid` int(11) NOT NULL,
  `reservautilizada` tinyint(1) NOT NULL,
  `reservadata` datetime NOT NULL,
  `horariorefeicaoid_id` int(11) NOT NULL,
  `empresacolaborador` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acessorios`
--

CREATE TABLE `acessorios` (
  `id` int(9) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `visivel` int(1) NOT NULL,
  `atualizado_em` datetime NOT NULL,
  `criado_em` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_do_dia`
--

CREATE TABLE `acesso_do_dia` (
  `id` int(11) NOT NULL,
  `acessoinvalido` tinyint(1) NOT NULL,
  `acessoliberado` tinyint(1) NOT NULL,
  `acessodatahora` datetime NOT NULL,
  `acessodescricao` varchar(100) NOT NULL,
  `equipamentotipoterminal` varchar(50) NOT NULL,
  `acessosentido` varchar(1) DEFAULT NULL,
  `acessorealizado` tinyint(1) NOT NULL,
  `acessorefeitorio` tinyint(1) NOT NULL,
  `acessocontrolador` smallint(6) NOT NULL,
  `visitaid` int(11) DEFAULT NULL,
  `cracha` varchar(32) DEFAULT NULL,
  `matricula` varchar(30) DEFAULT NULL,
  `pessoaid` int(11) DEFAULT NULL,
  `pessoanome` varchar(255) DEFAULT NULL,
  `visitante` tinyint(1) NOT NULL,
  `empresaid` int(11) DEFAULT NULL,
  `estruturaid` int(11) DEFAULT NULL,
  `setorid` int(11) DEFAULT NULL,
  `empresanome` varchar(255) DEFAULT NULL,
  `estruturadescricao` varchar(50) DEFAULT NULL,
  `setordescricao` varchar(50) DEFAULT NULL,
  `equipamentoid` int(11) NOT NULL,
  `equipamentodescricao` varchar(50) DEFAULT NULL,
  `equipamentotcpip` char(15) NOT NULL,
  `equipamentomacaddress` varchar(17) NOT NULL,
  `equipamentoserverhost` varchar(20) NOT NULL,
  `comando` smallint(6) NOT NULL,
  `str_enviado` varchar(100) DEFAULT NULL,
  `registroonline` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_setor_pessoa`
--

CREATE TABLE `acesso_setor_pessoa` (
  `id` int(11) NOT NULL,
  `acessodatahora` datetime NOT NULL,
  `setorid` int(11) NOT NULL,
  `pessoaid` int(11) NOT NULL,
  `nolocal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acesso_setor_veiculo`
--

CREATE TABLE `acesso_setor_veiculo` (
  `id` int(11) NOT NULL,
  `acessodatahora` datetime NOT NULL,
  `setorid` int(11) NOT NULL,
  `veiculoid` int(11) NOT NULL,
  `nolocal` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `amacesso`
--

CREATE TABLE `amacesso` (
  `id` int(11) NOT NULL,
  `acessoinvalido` tinyint(1) NOT NULL,
  `acessoliberado` tinyint(1) NOT NULL,
  `acessodatahora` datetime NOT NULL,
  `acessodescricao` varchar(100) NOT NULL,
  `equipamentotipoterminal` varchar(50) NOT NULL,
  `acessosentido` varchar(1) DEFAULT NULL,
  `acessorealizado` tinyint(1) NOT NULL,
  `acessorefeitorio` tinyint(1) NOT NULL,
  `acessocontrolador` smallint(6) NOT NULL,
  `visitaid` int(11) DEFAULT NULL,
  `cracha` varchar(32) DEFAULT NULL,
  `matricula` varchar(30) DEFAULT NULL,
  `pessoaid` int(11) DEFAULT NULL,
  `pessoanome` varchar(255) DEFAULT NULL,
  `visitante` tinyint(1) NOT NULL,
  `empresaid` int(11) DEFAULT NULL,
  `estruturaid` int(11) DEFAULT NULL,
  `setorid` int(11) DEFAULT NULL,
  `empresanome` varchar(255) DEFAULT NULL,
  `estruturadescricao` varchar(50) DEFAULT NULL,
  `setordescricao` varchar(50) DEFAULT NULL,
  `equipamentoid` int(11) NOT NULL,
  `equipamentodescricao` varchar(50) DEFAULT NULL,
  `equipamentotcpip` char(15) NOT NULL,
  `equipamentomacaddress` varchar(17) NOT NULL,
  `equipamentoserverhost` varchar(20) NOT NULL,
  `comando` smallint(6) NOT NULL,
  `str_enviado` varchar(100) DEFAULT NULL,
  `registroonline` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `amacessorefeitorio`
--

CREATE TABLE `amacessorefeitorio` (
  `acesso_ptr_id` int(11) NOT NULL,
  `valorrefeicao` decimal(10,2) DEFAULT NULL,
  `empresacolaborador` varchar(255) DEFAULT NULL,
  `descricaorefeicao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `amacessorefeitorioreserva`
--

CREATE TABLE `amacessorefeitorioreserva` (
  `acesso_ptr_id` int(11) NOT NULL,
  `pessoareservaid` int(11) NOT NULL,
  `reservautilizada` tinyint(1) NOT NULL,
  `reservadata` datetime NOT NULL,
  `horariorefeicaoid_id` int(11) NOT NULL,
  `empresacolaborador` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos`
--

CREATE TABLE `anexos` (
  `idAnexos` int(11) NOT NULL,
  `anexo` varchar(45) DEFAULT NULL,
  `thumb` varchar(45) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `os_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `barcos`
--

CREATE TABLE `barcos` (
  `idBarcos` int(11) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `barcos_estaleiros`
--

CREATE TABLE `barcos_estaleiros` (
  `id` int(9) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `atualizado_em` datetime NOT NULL,
  `criado_em` datetime NOT NULL,
  `ativo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `barcos_modelos`
--

CREATE TABLE `barcos_modelos` (
  `id` int(9) NOT NULL,
  `id_estaleiro` int(9) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `pes` float(9,1) NOT NULL,
  `atualizado_em` datetime NOT NULL,
  `criado_em` datetime NOT NULL,
  `ativo` int(1) NOT NULL,
  `metros` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `barcos_motores`
--

CREATE TABLE `barcos_motores` (
  `id` int(9) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `hp` int(9) NOT NULL,
  `combustivel` varchar(40) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `ativo` int(1) NOT NULL,
  `atualizado_em` datetime NOT NULL,
  `criado_em` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `cargodescricao` varchar(50) NOT NULL,
  `cargoprioridade` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `chat`
--

CREATE TABLE `chat` (
  `username` varchar(255) NOT NULL,
  `recipient` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `read` varchar(1) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `ufid_id` int(11) NOT NULL,
  `cidadenome` varchar(50) NOT NULL,
  `situacao` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `idClientes` int(11) NOT NULL,
  `nomeCliente` varchar(255) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `dataCadastro` date DEFAULT NULL,
  `rua` varchar(70) DEFAULT NULL,
  `numero` varchar(15) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `colaborador`
--

CREATE TABLE `colaborador` (
  `pessoafisica_acesso_ptr_id` int(11) NOT NULL,
  `empresaid_id` int(11) NOT NULL,
  `cargoid_id` int(11) DEFAULT NULL,
  `departamentoid_id` int(11) DEFAULT NULL,
  `colaboradorctpsnumero` varchar(20) DEFAULT NULL,
  `colaboradorctpsserie` varchar(10) DEFAULT NULL,
  `colaboradorpispasep` varchar(20) DEFAULT NULL,
  `colaboradortituloeleitor` varchar(20) DEFAULT NULL,
  `colaboradorcertificadoreservista` varchar(20) DEFAULT NULL,
  `colaboradordataadmissao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracao`
--

CREATE TABLE `configuracao` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `versaocore` varchar(255) NOT NULL,
  `versaosite` varchar(255) NOT NULL,
  `totalpedestres` int(10) UNSIGNED DEFAULT NULL,
  `totalequipamentos` int(10) UNSIGNED DEFAULT NULL,
  `converter_serial_wegand` tinyint(1) DEFAULT NULL,
  `ativar_CA_empresa` tinyint(1) DEFAULT NULL,
  `smtp_email` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(100) DEFAULT NULL,
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_port` int(10) UNSIGNED DEFAULT NULL,
  `contabilizareservavaga` tinyint(1) DEFAULT NULL,
  `caracteres` varchar(20) DEFAULT NULL,
  `acentuacao` tinyint(1) DEFAULT NULL,
  `numdiasinadimplente` int(10) UNSIGNED DEFAULT NULL,
  `amperiodo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `tipocontatoid_id` int(11) NOT NULL,
  `contatodescricao` varchar(50) NOT NULL,
  `contatovalor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores`
--

CREATE TABLE `cores` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `cor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cracha`
--

CREATE TABLE `cracha` (
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `crachacodigo` varchar(32) NOT NULL,
  `crachadescricao` varchar(50) NOT NULL,
  `crachavalido` tinyint(1) NOT NULL,
  `crachadisponivel` tinyint(1) NOT NULL,
  `crachamestre` tinyint(1) NOT NULL,
  `crachavisitante` tinyint(1) NOT NULL,
  `tipoidentificacaoacessoid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cracha_acesso`
--

CREATE TABLE `cracha_acesso` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `crachacodigo_id` varchar(32) NOT NULL,
  `acessotipocontrolador` varchar(1) NOT NULL,
  `acessovalor` varchar(32) NOT NULL,
  `acessoclassificacao` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `departamentodescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

CREATE TABLE `documentos` (
  `idDocumentos` int(11) NOT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `descricao` text,
  `file` varchar(100) DEFAULT NULL,
  `path` varchar(300) DEFAULT NULL,
  `url` varchar(300) DEFAULT NULL,
  `cadastro` date DEFAULT NULL,
  `categoria` varchar(80) DEFAULT NULL,
  `tipo` varchar(15) DEFAULT NULL,
  `tamanho` varchar(45) DEFAULT NULL
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `pessoajuridica_ptr_id` int(11) NOT NULL,
  `empresamatriz` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `enderecoprincipal` tinyint(1) NOT NULL,
  `enderecodescricao` varchar(50) DEFAULT NULL,
  `enderecologradouro` varchar(255) DEFAULT NULL,
  `endereconumero` varchar(10) DEFAULT NULL,
  `enderecocomplemento` varchar(30) DEFAULT NULL,
  `enderecobairro` varchar(50) DEFAULT NULL,
  `enderecocep` varchar(15) DEFAULT NULL,
  `cidadeid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamento`
--

CREATE TABLE `equipamento` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `setorid_id` int(11) DEFAULT NULL,
  `equipamentoserialnumber` varchar(20) DEFAULT NULL,
  `equipamentofabricante` varchar(100) DEFAULT NULL,
  `equipamentomodelo` varchar(100) DEFAULT NULL,
  `equipamentopatrimonio` varchar(20) DEFAULT NULL,
  `equipamentodescricao` varchar(50) DEFAULT NULL,
  `equipamentotipoterminal` varchar(20) DEFAULT NULL,
  `equipamentototemcofre` tinyint(1) DEFAULT NULL,
  `equipamentonumero` varchar(2) DEFAULT NULL,
  `equipamentointerface` varchar(1) DEFAULT NULL,
  `equipamentoserverhost` char(15) DEFAULT NULL,
  `equipamentomacaddress` char(15) DEFAULT NULL,
  `equipamentoconversortcpip` varchar(17) DEFAULT NULL,
  `equipamentodhcp` char(15) DEFAULT NULL,
  `equipamentonetmask` char(15) DEFAULT NULL,
  `equipamentogateway` char(15) DEFAULT NULL,
  `equipamentotcpip` char(15) DEFAULT NULL,
  `equipamentotcpipporta` int(11) DEFAULT NULL,
  `equipamentoserialport` varchar(5) DEFAULT NULL,
  `equipamentoserialbaudrate` int(11) DEFAULT NULL,
  `equipamentoserialdatabits` int(11) DEFAULT NULL,
  `equipamentoserialstopbits` int(11) DEFAULT NULL,
  `equipamentoserialparity` tinyint(1) DEFAULT NULL,
  `equipamentoserialflowcontrol` tinyint(1) DEFAULT NULL,
  `equipamentostrconfig` varchar(500) DEFAULT NULL,
  `equipamentoValidarBioSistema` tinyint(1) DEFAULT NULL,
  `equipamentocomcofre` tinyint(1) DEFAULT NULL,
  `equipamentocomsensorcofre` tinyint(1) DEFAULT NULL,
  `equipamentoacessosentido` varchar(1) DEFAULT NULL,
  `equipamentoinverter_sentido_acesso` tinyint(1) DEFAULT NULL,
  `equipamentocoletarofflineaoiniciar` tinyint(1) DEFAULT NULL,
  `equipamentotempopassagemacesso` int(11) NOT NULL DEFAULT '5',
  `equipamentotempoacionamentocofrecoletor` int(11) NOT NULL DEFAULT '5',
  `equipamentomodooperacao` tinyint(1) DEFAULT NULL,
  `equipamentoenviardadosaoiniciar` tinyint(1) DEFAULT NULL,
  `equipamentotipodadossinc` int(11) DEFAULT NULL,
  `equipamentoinverter_sentido_coleta` tinyint(1) DEFAULT NULL,
  `equipamentoregistrartodosacessos` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentoalmitec`
--

CREATE TABLE `equipamentoalmitec` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `equipamentoid_id` int(11) NOT NULL,
  `tcpipporta2` int(11) DEFAULT NULL,
  `udpporta` int(11) DEFAULT NULL,
  `canalleitorconfig` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentobiometrus`
--

CREATE TABLE `equipamentobiometrus` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `equipamentoid_id` int(11) NOT NULL,
  `senha` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentocontrolid`
--

CREATE TABLE `equipamentocontrolid` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `equipamentoid_id` int(11) NOT NULL,
  `colaboradorid_id` int(11) DEFAULT NULL,
  `msgpadrao` varchar(20) DEFAULT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `servidorporta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentohenry8x`
--

CREATE TABLE `equipamentohenry8x` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `equipamentoid_id` int(11) NOT NULL,
  `msgpadrao` varchar(20) DEFAULT NULL,
  `useidbio` tinyint(1) DEFAULT NULL,
  `utilizarconfigequipamento` tinyint(1) DEFAULT NULL,
  `sincronizarpessoassemcrachaacesso` tinyint(1) DEFAULT NULL,
  `acionarRelesSeparadamente` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentoleitorrele`
--

CREATE TABLE `equipamentoleitorrele` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `equipamentoid_id` int(11) NOT NULL,
  `leitor` smallint(6) DEFAULT NULL,
  `rele` smallint(6) DEFAULT NULL,
  `tempo` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentoproveu`
--

CREATE TABLE `equipamentoproveu` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `equipamentoid_id` int(11) NOT NULL,
  `canalleitorconfig` smallint(6) DEFAULT NULL,
  `senha` varchar(15) DEFAULT NULL,
  `listacadastral` varchar(3) NOT NULL,
  `habilitadigitacao` varchar(3) NOT NULL,
  `exigebiometria` varchar(6) NOT NULL,
  `modobiometria1n` varchar(3) NOT NULL,
  `reconhecimentoremotodigital` varchar(3) NOT NULL,
  `ocultadigitosteclado` varchar(3) NOT NULL,
  `sentidoentrada` varchar(11) NOT NULL,
  `liberarusuarios` varchar(14) NOT NULL,
  `gravacaoregistros` varchar(10) NOT NULL,
  `manterbracoliberado` varchar(12) NOT NULL,
  `memoriacheia` varchar(12) NOT NULL,
  `timeoutrespostasoftware` int(11) NOT NULL,
  `apostimeout` varchar(8) NOT NULL,
  `tempoacessoliberado` int(11) NOT NULL,
  `numerodigitoscracha` int(11) NOT NULL,
  `tipoleitor` varchar(13) NOT NULL,
  `tipocodigocracha` varchar(3) NOT NULL,
  `digitoverificador` varchar(12) NOT NULL,
  `validaquantidadedigitos` varchar(3) NOT NULL,
  `mascaracracha` varchar(48) NOT NULL,
  `inicioverao` varchar(5) NOT NULL,
  `fimverao` varchar(5) NOT NULL,
  `leitor1` varchar(12) NOT NULL,
  `leitor2` varchar(12) NOT NULL,
  `biometria1` varchar(12) NOT NULL,
  `teclado` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentotopdata`
--

CREATE TABLE `equipamentotopdata` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `equipamentoid_id` int(11) NOT NULL,
  `tipoequipamento` smallint(6) DEFAULT NULL,
  `tipoleitor` smallint(6) DEFAULT NULL,
  `qtddigitoscartao` int(11) NOT NULL,
  `habilitateclado` int(1) NOT NULL,
  `listaoffline` int(1) NOT NULL,
  `configurar2leitoreswiegand` int(1) NOT NULL,
  `registraacessonegado` int(1) NOT NULL,
  `biometria` int(1) NOT NULL,
  `listabiooffline` int(1) NOT NULL,
  `bloqueioautomatico` int(1) NOT NULL,
  `identificacao` int(3) NOT NULL,
  `verificacao` int(3) NOT NULL,
  `msgpadrao` varchar(20) DEFAULT NULL,
  `direcao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamento_sincronismo`
--

CREATE TABLE `equipamento_sincronismo` (
  `equipamentoid` int(11) NOT NULL,
  `datahoraenviada` datetime NOT NULL,
  `tipo` varchar(1) NOT NULL,
  `pessoaid` int(11) NOT NULL,
  `pessoanome` varchar(100) NOT NULL,
  `dado` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estaleiros`
--

CREATE TABLE `estaleiros` (
  `idEstaleiros` int(9) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `situacao` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estrutura`
--

CREATE TABLE `estrutura` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `empresaid_id` int(11) NOT NULL,
  `estruturadescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento`
--

CREATE TABLE `evento` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `usuarioid_id` int(11) DEFAULT NULL,
  `tipoeventoid_id` int(11) NOT NULL,
  `eventodescricao` varchar(50) NOT NULL,
  `setorid_id` int(11) NOT NULL,
  `eventosentido` varchar(1) NOT NULL,
  `eventodtini` datetime NOT NULL,
  `eventodtfim` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `evento_pessoa`
--

CREATE TABLE `evento_pessoa` (
  `id` int(11) NOT NULL,
  `evento_id` int(11) NOT NULL,
  `pessoafisica_acesso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `evt_convidado`
--

CREATE TABLE `evt_convidado` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `dtevento` datetime NOT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `utilizado` tinyint(1) NOT NULL,
  `pessoafoto` varchar(100) DEFAULT NULL,
  `observacao` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `finfechamentocaixa`
--

CREATE TABLE `finfechamentocaixa` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `dtabertura` datetime NOT NULL,
  `dtfechamento` datetime NOT NULL,
  `saldoprevisto` decimal(10,2) NOT NULL,
  `saldorealizado` decimal(10,2) NOT NULL,
  `totalmovimentos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor`
--

CREATE TABLE `gestor` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `usuarioid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `gestor_departamento`
--

CREATE TABLE `gestor_departamento` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `gestorid_id` int(11) NOT NULL,
  `departamentoid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario`
--

CREATE TABLE `horario` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tabelahorarioid_id` int(11) NOT NULL,
  `horarioinicio` time NOT NULL,
  `horariofim` time NOT NULL,
  `horariosentido` varchar(1) NOT NULL,
  `setorid_id` int(11) NOT NULL,
  `horarioseg` tinyint(1) NOT NULL,
  `horarioter` tinyint(1) NOT NULL,
  `horarioqua` tinyint(1) NOT NULL,
  `horarioqui` tinyint(1) NOT NULL,
  `horariosex` tinyint(1) NOT NULL,
  `horariosab` tinyint(1) NOT NULL,
  `horariodom` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `horariorefeicao`
--

CREATE TABLE `horariorefeicao` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tabelarefeicaoid_id` int(11) NOT NULL,
  `tabelareservaid_id` int(11) DEFAULT NULL,
  `tiporefeicaoid_id` int(11) NOT NULL,
  `horarioinicio` time NOT NULL,
  `horariofim` time NOT NULL,
  `setorid_id` int(11) NOT NULL,
  `horarioseg` tinyint(1) NOT NULL,
  `horarioter` tinyint(1) NOT NULL,
  `horarioqua` tinyint(1) NOT NULL,
  `horarioqui` tinyint(1) NOT NULL,
  `horariosex` tinyint(1) NOT NULL,
  `horariosab` tinyint(1) NOT NULL,
  `horariodom` tinyint(1) NOT NULL,
  `valorrefeicao` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_de_vendas`
--

CREATE TABLE `itens_de_vendas` (
  `idItens` int(11) NOT NULL,
  `subTotal` varchar(45) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  `vendas_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `lancamentos`
--

CREATE TABLE `lancamentos` (
  `idLancamentos` int(11) NOT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `valor` varchar(15) NOT NULL,
  `data_vencimento` date NOT NULL,
  `data_pagamento` date DEFAULT NULL,
  `baixado` tinyint(1) DEFAULT NULL,
  `cliente_fornecedor` varchar(255) DEFAULT NULL,
  `forma_pgto` varchar(100) DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `anexo` varchar(250) DEFAULT NULL,
  `clientes_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `idLogs` int(11) NOT NULL,
  `usuario` varchar(80) DEFAULT NULL,
  `tarefa` varchar(100) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nfyemail`
--

CREATE TABLE `nfyemail` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contexto` int(11) DEFAULT NULL,
  `contextoid` int(11) DEFAULT NULL,
  `dtenvio` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nfy_sms`
--

CREATE TABLE `nfy_sms` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  `contexto` int(11) DEFAULT NULL,
  `contextoid` int(11) DEFAULT NULL,
  `dtenvio` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notafiscal`
--

CREATE TABLE `notafiscal` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `fornecedor` varchar(100) NOT NULL,
  `notafiscal` varchar(100) NOT NULL,
  `transporte` varchar(20) DEFAULT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `motorista` varchar(100) DEFAULT NULL,
  `observacoes` longtext,
  `entrada` datetime DEFAULT NULL,
  `saida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `objeto`
--

CREATE TABLE `objeto` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `objetodescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE `os` (
  `idOs` int(11) NOT NULL,
  `dataInicial` date DEFAULT NULL,
  `dataFinal` date DEFAULT NULL,
  `garantia` varchar(45) DEFAULT NULL,
  `descricaoProduto` varchar(150) DEFAULT NULL,
  `defeito` varchar(150) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `observacoes` varchar(150) DEFAULT NULL,
  `laudoTecnico` varchar(150) DEFAULT NULL,
  `valorTotal` varchar(15) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) NOT NULL,
  `lancamento` int(11) DEFAULT NULL,
  `faturado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `paisnome` varchar(30) NOT NULL,
  `paissigla` varchar(6) NOT NULL,
  `paisnacionalidade` varchar(50) NOT NULL,
  `situacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissoes`
--

CREATE TABLE `permissoes` (
  `idPermissao` int(11) NOT NULL,
  `userinsert` int(11) NOT NULL,
  `userupdate` int(11) NOT NULL,
  `dateinsert` datetime NOT NULL,
  `dateupdate` datetime NOT NULL,
  `nome` varchar(80) NOT NULL,
  `permissoes` text,
  `situacao` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `pessoanome` varchar(255) NOT NULL,
  `pessoaemail` varchar(255) DEFAULT NULL,
  `pessoatelefone` varchar(255) DEFAULT NULL,
  `pessoafoto` varchar(100) DEFAULT NULL,
  `pessoadatacadastro` datetime NOT NULL,
  `observacao` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoafisica`
--

CREATE TABLE `pessoafisica` (
  `pessoa_ptr_id` int(11) NOT NULL,
  `pessoanaograta` tinyint(1) NOT NULL,
  `pessoafisicasexo` varchar(1) NOT NULL,
  `pessoafisicacpf` varchar(20) DEFAULT NULL,
  `pessoafisicacpfjustificativa` varchar(255) DEFAULT NULL,
  `pessoafisicadoc` varchar(50) DEFAULT NULL,
  `pessoafisicadocorgao` varchar(50) DEFAULT NULL,
  `pessoafisicadocdata` date DEFAULT NULL,
  `pessoafisicanomemae` varchar(255) DEFAULT NULL,
  `pessoafisicanomepai` varchar(255) DEFAULT NULL,
  `pessoafisicadatanascimento` date DEFAULT NULL,
  `pessoafisicaestadocivil` varchar(1) NOT NULL,
  `pessoafisicaescolaridade` varchar(1) NOT NULL,
  `cidadeid_naturalidade_id` int(11) DEFAULT NULL,
  `mensagemacesso` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoafisica_acesso`
--

CREATE TABLE `pessoafisica_acesso` (
  `pessoafisica_ptr_id` int(11) NOT NULL,
  `matricula` varchar(30) DEFAULT NULL,
  `pessoamaster` tinyint(1) NOT NULL,
  `pessoadupla` tinyint(1) NOT NULL,
  `crachacodigo_id` varchar(32) DEFAULT NULL,
  `pessoaexigirbio` tinyint(1) NOT NULL,
  `pessoainativo` tinyint(1) NOT NULL,
  `tabelahorario_id` int(11) DEFAULT NULL,
  `tabelarefeitorio_id` int(11) DEFAULT NULL,
  `usuarioonibus` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoafisica_acesso_notificacao`
--

CREATE TABLE `pessoafisica_acesso_notificacao` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `notificado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoafisica_digital`
--

CREATE TABLE `pessoafisica_digital` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `digitaltemplate` longtext,
  `pessoafisica_digital_imagem` longtext,
  `pessoafisica_digital_precisao` int(11) DEFAULT NULL,
  `acessoclassificacao` varchar(1) DEFAULT NULL,
  `fabricante` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoafisica_veiculo`
--

CREATE TABLE `pessoafisica_veiculo` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `veiculoid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoaimagem`
--

CREATE TABLE `pessoaimagem` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `pessoaimagem` varchar(100) DEFAULT NULL,
  `tipoimagemdocumentoid_id` int(11) DEFAULT NULL,
  `imagemdescricao` varchar(100) DEFAULT NULL,
  `datavalidade` date DEFAULT NULL,
  `bloquearacesso` tinyint(1) NOT NULL,
  `setor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoajuridica`
--

CREATE TABLE `pessoajuridica` (
  `pessoa_ptr_id` int(11) NOT NULL,
  `tipopessoajuridicaid_id` int(11) NOT NULL,
  `pessoajuridicarazaosocial` varchar(255) NOT NULL,
  `pessoajuridicacnpj` varchar(20) DEFAULT NULL,
  `pessoajuridicainscestadual` varchar(255) DEFAULT NULL,
  `pessoajuridicainscmunicipal` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `idProdutos` int(11) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `unidade` varchar(10) DEFAULT NULL,
  `precoCompra` decimal(10,2) DEFAULT NULL,
  `precoVenda` decimal(10,2) NOT NULL,
  `estoque` int(11) NOT NULL,
  `estoqueMinimo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_os`
--

CREATE TABLE `produtos_os` (
  `idProdutos_os` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `produtos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `regioes`
--

CREATE TABLE `regioes` (
  `id` int(9) NOT NULL,
  `user_id` int(9) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `visivel` int(1) NOT NULL,
  `criado_em` datetime NOT NULL,
  `situacao` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rota`
--

CREATE TABLE `rota` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `rotadescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rota_setor`
--

CREATE TABLE `rota_setor` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `rotaid_id` int(11) NOT NULL,
  `setorid_id` int(11) NOT NULL,
  `sequencial` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rscondomino`
--

CREATE TABLE `rscondomino` (
  `pessoafisica_acesso_ptr_id` int(11) NOT NULL,
  `tipocomdominoid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rsdtipocondomino`
--

CREATE TABLE `rsdtipocondomino` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rsdtipounidade`
--

CREATE TABLE `rsdtipounidade` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rsdunidade`
--

CREATE TABLE `rsdunidade` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `empresaid_id` int(11) NOT NULL,
  `tipounidadeid_id` int(11) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `observacao` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rsdunidadecondomino`
--

CREATE TABLE `rsdunidadecondomino` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `rsdunidadeid_id` int(11) NOT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `tipocomdominoid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rsdunidadevaga`
--

CREATE TABLE `rsdunidadevaga` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `rsdunidadeid_id` int(11) NOT NULL,
  `setorid_id` int(11) NOT NULL,
  `reservapessoaid_id` int(11) DEFAULT NULL,
  `ocupacaopessoaid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rsdunidadeveiculo`
--

CREATE TABLE `rsdunidadeveiculo` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `rsdunidadeid_id` int(11) NOT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `veiculoid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `rsdvisita`
--

CREATE TABLE `rsdvisita` (
  `visita_ptr_id` int(11) NOT NULL,
  `unidadevisitada_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `idServicos` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_os`
--

CREATE TABLE `servicos_os` (
  `idServicos_os` int(11) NOT NULL,
  `os_id` int(11) NOT NULL,
  `servicos_id` int(11) NOT NULL,
  `subTotal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `setor`
--

CREATE TABLE `setor` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `estruturaid_id` int(11) NOT NULL,
  `setordescricao` varchar(50) NOT NULL,
  `setorcontrolarlotacao` tinyint(1) NOT NULL,
  `setorlotacao` smallint(5) UNSIGNED DEFAULT NULL,
  `setorgestaovaga` tinyint(1) DEFAULT NULL,
  `setorrefeitorio` tinyint(1) NOT NULL,
  `setorreservarefeitorio` tinyint(1) NOT NULL,
  `setorportaria` tinyint(1) NOT NULL,
  `setornotifica` tinyint(1) NOT NULL,
  `setornotificasentido` varchar(1) NOT NULL,
  `setordocumento` tinyint(1) DEFAULT NULL,
  `setorlotacaoatual` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabelahorario`
--

CREATE TABLE `tabelahorario` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tabelahorariodescricao` varchar(50) NOT NULL,
  `numeroacessos` int(10) UNSIGNED DEFAULT NULL,
  `periodoacessos` varchar(1) DEFAULT NULL,
  `limitenumacessos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabelarefeicao`
--

CREATE TABLE `tabelarefeicao` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabelareserva`
--

CREATE TABLE `tabelareserva` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `descricao` varchar(50) NOT NULL,
  `horarioinicio` time NOT NULL,
  `horariofim` time NOT NULL,
  `setorid_id` int(11) NOT NULL,
  `reserva` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipocontato`
--

CREATE TABLE `tipocontato` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tipocontatodescricao` varchar(50) NOT NULL,
  `situacao` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoevento`
--

CREATE TABLE `tipoevento` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tipoeventodescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoidentificacaoacesso`
--

CREATE TABLE `tipoidentificacaoacesso` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tipoidentificacaoacessodescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoimagemdocumento`
--

CREATE TABLE `tipoimagemdocumento` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tipoimagemdocumentodescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipopessoajuridica`
--

CREATE TABLE `tipopessoajuridica` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tipopessoajuridicadescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiporefeicao`
--

CREATE TABLE `tiporefeicao` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tiporefeicaodescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipovisita`
--

CREATE TABLE `tipovisita` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `tipovisitadescricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `uf`
--

CREATE TABLE `uf` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `paisid_id` int(11) NOT NULL,
  `ufnome` varchar(30) NOT NULL,
  `ufsigla` varchar(2) NOT NULL,
  `situacao` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `user_ptr_id` int(11) NOT NULL,
  `empresaid_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `placa` varchar(8) NOT NULL,
  `veiculomodeloid_id` int(11) DEFAULT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `corid_id` int(11) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `veiculotipoid_id` int(11) DEFAULT NULL,
  `anofabricacao` varchar(4) DEFAULT NULL,
  `anomodelo` varchar(4) DEFAULT NULL,
  `renavam` varchar(50) DEFAULT NULL,
  `chassi` varchar(50) DEFAULT NULL,
  `proprietario` varchar(50) DEFAULT NULL,
  `observacao` longtext,
  `veiculoclassificacao_id` int(11) DEFAULT NULL,
  `tabelahorario_id` int(11) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  `acessolivre` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculoclassificacao`
--

CREATE TABLE `veiculoclassificacao` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculomarca`
--

CREATE TABLE `veiculomarca` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `marca` varchar(50) NOT NULL,
  `situacao` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculomodelo`
--

CREATE TABLE `veiculomodelo` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `veiculomarcaid_id` int(11) NOT NULL,
  `modelo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculotipo`
--

CREATE TABLE `veiculotipo` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `descricao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `idVendas` int(11) NOT NULL,
  `dataVenda` date DEFAULT NULL,
  `valorTotal` varchar(45) DEFAULT NULL,
  `desconto` varchar(45) DEFAULT NULL,
  `faturado` tinyint(1) DEFAULT NULL,
  `clientes_id` int(11) NOT NULL,
  `usuarios_id` int(11) DEFAULT NULL,
  `lancamentos_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_gestao_departamentos`
--
CREATE TABLE `view_gestao_departamentos` (
`id` int(11)
,`gestorid_id` int(11)
,`departamentodescricao` varchar(50)
,`pessoanome` varchar(255)
,`empresanome` varchar(255)
,`estruturadescricao` varchar(50)
,`setordescricao` varchar(50)
,`acessosentido` varchar(1)
,`setorportaria` tinyint(1)
,`horaacesso` time
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_localizar_pessoa`
--
CREATE TABLE `view_localizar_pessoa` (
`id` int(11)
,`acessodatahora` datetime
,`pessoanome` varchar(255)
,`pessoafoto` varchar(100)
,`pessoafisicacpf` varchar(20)
,`nomeempresa` varchar(255)
,`estruturadescricao` varchar(50)
,`setordescricao` varchar(50)
,`nolocal` tinyint(1)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_painel_acesso`
--
CREATE TABLE `view_painel_acesso` (
`id` int(11)
,`equipamentoid` int(11)
,`pessoaid` int(11)
,`acessorealizado` tinyint(1)
,`acessodescricao` varchar(100)
,`pessoanome` varchar(255)
,`acessodatahora` datetime
,`setordescricao` varchar(50)
,`acessosentido` varchar(1)
,`acessocontrolador` smallint(6)
,`cracha` varchar(32)
,`empresanome` varchar(255)
,`estruturadescricao` varchar(50)
,`pessoafoto` varchar(100)
,`equipamentodescricao` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_pessoa_setor`
--
CREATE TABLE `view_pessoa_setor` (
`id` int(11)
,`Pessoa` varchar(255)
,`departamento` varchar(50)
,`empresacolaborador` varchar(255)
,`setordescricao` varchar(50)
,`empresaid` int(11)
,`empresaacesso` varchar(255)
,`estruturadescricao` varchar(50)
,`setorfull` varchar(361)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_retorno_cracha_visita`
--
CREATE TABLE `view_retorno_cracha_visita` (
`id` int(11)
,`crachacodigo` varchar(32)
,`crachadescricao` varchar(50)
,`tipoidentificacaoacessodescricao` varchar(50)
,`pessoanome` varchar(255)
,`visitadtini` datetime
,`visitadescricao` varchar(50)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `visita`
--

CREATE TABLE `visita` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `visitadescricao` varchar(50) NOT NULL,
  `empresavisitante_id` int(11) DEFAULT NULL,
  `empresavisitada_id` int(11) DEFAULT NULL,
  `tipovisitaid_id` int(11) NOT NULL,
  `usuarioid_id` int(11) DEFAULT NULL,
  `visitaliberada` tinyint(1) NOT NULL,
  `visitarealizada` tinyint(1) NOT NULL,
  `visitacoletarcartao` tinyint(1) NOT NULL,
  `visitadtini` datetime NOT NULL,
  `visitadtfim` datetime NOT NULL,
  `visitadtentrada` datetime DEFAULT NULL,
  `visitadtsaida` datetime DEFAULT NULL,
  `refeicao_id` int(11) DEFAULT NULL,
  `eventoid_id` int(11) DEFAULT NULL,
  `veiculo_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `visita_colaborador`
--

CREATE TABLE `visita_colaborador` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `visitaid_id` int(11) NOT NULL,
  `colaboradorid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `visita_cracha`
--

CREATE TABLE `visita_cracha` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `visitaid_id` int(11) NOT NULL,
  `pessoaid_id` int(11) NOT NULL,
  `crachacodigo_id` varchar(32) DEFAULT NULL,
  `crachadevolvido` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `visita_objeto`
--

CREATE TABLE `visita_objeto` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `visitaid_id` int(11) NOT NULL,
  `objetoid_id` int(11) NOT NULL,
  `visita_objetodescricao` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `visita_rota`
--

CREATE TABLE `visita_rota` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `visitaid_id` int(11) NOT NULL,
  `rotaid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vndproduto`
--

CREATE TABLE `vndproduto` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `codigoproduto` int(11) NOT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vndvenda`
--

CREATE TABLE `vndvenda` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `empresaid_id` int(11) NOT NULL,
  `colaborador_id` int(11) NOT NULL,
  `datavenda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vndvenda_produto`
--

CREATE TABLE `vndvenda_produto` (
  `id` int(11) NOT NULL,
  `userinsert` int(11) DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  `dateinsert` datetime DEFAULT NULL,
  `dateupdate` datetime DEFAULT NULL,
  `venda_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `quantidade` int(10) UNSIGNED DEFAULT NULL,
  `valordavenda` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure for view `view_gestao_departamentos`
--
DROP TABLE IF EXISTS `view_gestao_departamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gestao_departamentos`  AS  select `000314`.`pessoa`.`id` AS `id`,`000314`.`gestor`.`usuarioid_id` AS `gestorid_id`,`000314`.`departamento`.`departamentodescricao` AS `departamentodescricao`,`000314`.`pessoa`.`pessoanome` AS `pessoanome`,`000314`.`acesso`.`empresanome` AS `empresanome`,`000314`.`acesso`.`estruturadescricao` AS `estruturadescricao`,`000314`.`acesso`.`setordescricao` AS `setordescricao`,`000314`.`acesso`.`acessosentido` AS `acessosentido`,`000314`.`setor`.`setorportaria` AS `setorportaria`,cast(`000314`.`acesso`.`acessodatahora` as time) AS `horaacesso` from ((((((`000314`.`colaborador` join `000314`.`pessoa` on((`000314`.`pessoa`.`id` = `000314`.`colaborador`.`pessoafisica_acesso_ptr_id`))) join `000314`.`departamento` on((`000314`.`departamento`.`id` = `000314`.`colaborador`.`departamentoid_id`))) join `000314`.`gestor_departamento` on((`000314`.`gestor_departamento`.`departamentoid_id` = `000314`.`departamento`.`id`))) join `000314`.`gestor` on((`000314`.`gestor_departamento`.`gestorid_id` = `000314`.`gestor`.`id`))) left join `000314`.`acesso` on(((`000314`.`acesso`.`pessoaid` = `000314`.`colaborador`.`pessoafisica_acesso_ptr_id`) and (`000314`.`acesso`.`acessoinvalido` = 0) and (`000314`.`acesso`.`acessoliberado` = 1) and (`000314`.`acesso`.`acessorealizado` = 1) and (cast(`000314`.`acesso`.`acessodatahora` as date) = curdate())))) left join `000314`.`setor` on((`000314`.`setor`.`id` = `000314`.`acesso`.`setorid`))) where (`000314`.`acesso`.`id` in (select max(`a`.`id`) from (`000314`.`acesso` `a` join `000314`.`setor` `s` on((`s`.`id` = `a`.`setorid`))) where ((`a`.`acessoinvalido` = 0) and (`a`.`acessoliberado` = 1) and (`a`.`acessorealizado` = 1) and (cast(`a`.`acessodatahora` as date) = curdate())) group by `a`.`pessoaid`) or isnull(`000314`.`acesso`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_localizar_pessoa`
--
DROP TABLE IF EXISTS `view_localizar_pessoa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_localizar_pessoa`  AS  select `000314`.`acesso_setor_pessoa`.`id` AS `id`,`000314`.`acesso_setor_pessoa`.`acessodatahora` AS `acessodatahora`,`000314`.`pessoa`.`pessoanome` AS `pessoanome`,`000314`.`pessoa`.`pessoafoto` AS `pessoafoto`,`000314`.`pessoafisica`.`pessoafisicacpf` AS `pessoafisicacpf`,`pj`.`pessoanome` AS `nomeempresa`,`000314`.`estrutura`.`estruturadescricao` AS `estruturadescricao`,`000314`.`setor`.`setordescricao` AS `setordescricao`,`000314`.`acesso_setor_pessoa`.`nolocal` AS `nolocal` from (((((`000314`.`acesso_setor_pessoa` join `000314`.`pessoa` on((`000314`.`pessoa`.`id` = `000314`.`acesso_setor_pessoa`.`pessoaid`))) join `000314`.`pessoafisica` on((`000314`.`pessoafisica`.`pessoa_ptr_id` = `000314`.`pessoa`.`id`))) join `000314`.`setor` on((`000314`.`setor`.`id` = `000314`.`acesso_setor_pessoa`.`setorid`))) join `000314`.`estrutura` on((`000314`.`estrutura`.`id` = `000314`.`setor`.`estruturaid_id`))) left join `000314`.`pessoa` `pj` on((`pj`.`id` = `000314`.`estrutura`.`empresaid_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_painel_acesso`
--
DROP TABLE IF EXISTS `view_painel_acesso`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_painel_acesso`  AS  select `000314`.`acesso`.`id` AS `id`,`000314`.`acesso`.`equipamentoid` AS `equipamentoid`,`000314`.`acesso`.`pessoaid` AS `pessoaid`,`000314`.`acesso`.`acessorealizado` AS `acessorealizado`,`000314`.`acesso`.`acessodescricao` AS `acessodescricao`,`000314`.`acesso`.`pessoanome` AS `pessoanome`,`000314`.`acesso`.`acessodatahora` AS `acessodatahora`,`000314`.`acesso`.`setordescricao` AS `setordescricao`,`000314`.`acesso`.`acessosentido` AS `acessosentido`,`000314`.`acesso`.`acessocontrolador` AS `acessocontrolador`,`000314`.`acesso`.`cracha` AS `cracha`,`000314`.`acesso`.`empresanome` AS `empresanome`,`000314`.`acesso`.`estruturadescricao` AS `estruturadescricao`,`000314`.`pessoa`.`pessoafoto` AS `pessoafoto`,`000314`.`equipamento`.`equipamentodescricao` AS `equipamentodescricao` from ((`000314`.`acesso` left join `000314`.`pessoa` on((`000314`.`pessoa`.`id` = `000314`.`acesso`.`pessoaid`))) join `000314`.`equipamento` on((`000314`.`equipamento`.`id` = `000314`.`acesso`.`equipamentoid`))) where `000314`.`acesso`.`id` in (select max(`000314`.`acesso`.`id`) from `000314`.`acesso` group by `000314`.`acesso`.`equipamentoid`) order by `000314`.`acesso`.`acessodatahora` desc ;

-- --------------------------------------------------------

--
-- Structure for view `view_pessoa_setor`
--
DROP TABLE IF EXISTS `view_pessoa_setor`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_pessoa_setor`  AS  select `000314`.`pessoa`.`id` AS `id`,`000314`.`pessoa`.`pessoanome` AS `Pessoa`,`000314`.`departamento`.`departamentodescricao` AS `departamento`,`colempresa`.`pessoanome` AS `empresacolaborador`,`000314`.`setor`.`setordescricao` AS `setordescricao`,`empresaacesso`.`id` AS `empresaid`,`empresaacesso`.`pessoanome` AS `empresaacesso`,`000314`.`estrutura`.`estruturadescricao` AS `estruturadescricao`,concat(`empresaacesso`.`pessoanome`,' - ',`000314`.`estrutura`.`estruturadescricao`,' - ',`000314`.`setor`.`setordescricao`) AS `setorfull` from ((((((((`000314`.`acesso_setor_pessoa` `asp` join `000314`.`setor` on((`000314`.`setor`.`id` = `asp`.`setorid`))) join `000314`.`estrutura` on((`000314`.`estrutura`.`id` = `000314`.`setor`.`estruturaid_id`))) join `000314`.`empresa` on((`000314`.`empresa`.`pessoajuridica_ptr_id` = `000314`.`estrutura`.`empresaid_id`))) join `000314`.`pessoa` `empresaacesso` on((`empresaacesso`.`id` = `000314`.`empresa`.`pessoajuridica_ptr_id`))) join `000314`.`pessoa` on((`000314`.`pessoa`.`id` = `asp`.`pessoaid`))) left join `000314`.`colaborador` on((`000314`.`colaborador`.`pessoafisica_acesso_ptr_id` = `000314`.`pessoa`.`id`))) left join `000314`.`pessoa` `colempresa` on((`colempresa`.`id` = `000314`.`colaborador`.`empresaid_id`))) left join `000314`.`departamento` on((`000314`.`departamento`.`id` = `000314`.`colaborador`.`departamentoid_id`))) where (`asp`.`nolocal` = 1) ;

-- --------------------------------------------------------

--
-- Structure for view `view_retorno_cracha_visita`
--
DROP TABLE IF EXISTS `view_retorno_cracha_visita`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_retorno_cracha_visita`  AS  select `000314`.`visita_cracha`.`id` AS `id`,`000314`.`cracha`.`crachacodigo` AS `crachacodigo`,`000314`.`cracha`.`crachadescricao` AS `crachadescricao`,`000314`.`tipoidentificacaoacesso`.`tipoidentificacaoacessodescricao` AS `tipoidentificacaoacessodescricao`,`000314`.`pessoa`.`pessoanome` AS `pessoanome`,`000314`.`visita`.`visitadtini` AS `visitadtini`,`000314`.`visita`.`visitadescricao` AS `visitadescricao` from ((((`000314`.`cracha` join `000314`.`tipoidentificacaoacesso` on((`000314`.`tipoidentificacaoacesso`.`id` = `000314`.`cracha`.`tipoidentificacaoacessoid_id`))) join `000314`.`visita_cracha` on((`000314`.`visita_cracha`.`crachacodigo_id` = `000314`.`cracha`.`crachacodigo`))) join `000314`.`pessoa` on((`000314`.`pessoa`.`id` = `000314`.`visita_cracha`.`pessoaid_id`))) join `000314`.`visita` on((`000314`.`visita`.`id` = `000314`.`visita_cracha`.`visitaid_id`))) where ((`000314`.`cracha`.`crachavalido` = 1) and (`000314`.`visita_cracha`.`crachadevolvido` = 0)) order by `000314`.`cracha`.`crachacodigo` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acesso`
--
ALTER TABLE `acesso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acessobloqueado`
--
ALTER TABLE `acessobloqueado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acessobloqueado_0cb3b3e4` (`acessoid_id`);

--
-- Indexes for table `acessolog`
--
ALTER TABLE `acessolog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acessorefeitorio`
--
ALTER TABLE `acessorefeitorio`
  ADD PRIMARY KEY (`acesso_ptr_id`);

--
-- Indexes for table `acessorefeitorioreserva`
--
ALTER TABLE `acessorefeitorioreserva`
  ADD PRIMARY KEY (`acesso_ptr_id`),
  ADD KEY `acessorefeitorioreserva_25396bf1` (`horariorefeicaoid_id`);

--
-- Indexes for table `acessorios`
--
ALTER TABLE `acessorios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_acessorio` (`id`);

--
-- Indexes for table `acesso_do_dia`
--
ALTER TABLE `acesso_do_dia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_empresa` (`empresanome`),
  ADD KEY `idx_estrutura` (`estruturadescricao`),
  ADD KEY `idx_setor` (`setordescricao`),
  ADD KEY `idx_equipamento` (`equipamentodescricao`),
  ADD KEY `idx_sentido` (`acessosentido`),
  ADD KEY `idx_controlador` (`acessocontrolador`),
  ADD KEY `idx_acessodatahora` (`acessodatahora`),
  ADD KEY `idx_online` (`registroonline`),
  ADD KEY `idx_liberado` (`acessoliberado`),
  ADD KEY `idx_realizado` (`acessorealizado`);

--
-- Indexes for table `acesso_setor_pessoa`
--
ALTER TABLE `acesso_setor_pessoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acesso_setor_veiculo`
--
ALTER TABLE `acesso_setor_veiculo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amacesso`
--
ALTER TABLE `amacesso`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amacessorefeitorio`
--
ALTER TABLE `amacessorefeitorio`
  ADD PRIMARY KEY (`acesso_ptr_id`);

--
-- Indexes for table `amacessorefeitorioreserva`
--
ALTER TABLE `amacessorefeitorioreserva`
  ADD PRIMARY KEY (`acesso_ptr_id`);

--
-- Indexes for table `anexos`
--
ALTER TABLE `anexos`
  ADD PRIMARY KEY (`idAnexos`),
  ADD KEY `fk_anexos_os1` (`os_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_5f412f9a` (`group_id`),
  ADD KEY `auth_group_permissions_83d7f98b` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_37ef4eb4` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_6340c63c` (`user_id`),
  ADD KEY `auth_user_groups_5f412f9a` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  ADD KEY `auth_user_user_permissions_83d7f98b` (`permission_id`);

--
-- Indexes for table `barcos_estaleiros`
--
ALTER TABLE `barcos_estaleiros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barcos_modelos`
--
ALTER TABLE `barcos_modelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_estaleiro` (`id_estaleiro`);

--
-- Indexes for table `barcos_motores`
--
ALTER TABLE `barcos_motores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cargodescricao` (`cargodescricao`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cidade_837efe53` (`ufid_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idClientes`);

--
-- Indexes for table `colaborador`
--
ALTER TABLE `colaborador`
  ADD PRIMARY KEY (`pessoafisica_acesso_ptr_id`),
  ADD KEY `colaborador_367884bb` (`empresaid_id`),
  ADD KEY `colaborador_8e633847` (`cargoid_id`),
  ADD KEY `colaborador_de8cbf31` (`departamentoid_id`);

--
-- Indexes for table `configuracao`
--
ALTER TABLE `configuracao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contato_01ab187d` (`pessoaid_id`),
  ADD KEY `contato_0c26faec` (`tipocontatoid_id`);

--
-- Indexes for table `cores`
--
ALTER TABLE `cores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cor` (`cor`);

--
-- Indexes for table `cracha`
--
ALTER TABLE `cracha`
  ADD PRIMARY KEY (`crachacodigo`),
  ADD KEY `cracha_b26b0763` (`tipoidentificacaoacessoid_id`);

--
-- Indexes for table `cracha_acesso`
--
ALTER TABLE `cracha_acesso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acessotipocontrolador` (`acessotipocontrolador`,`acessovalor`),
  ADD KEY `cracha_acesso_46476ee4` (`crachacodigo_id`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departamentodescricao` (`departamentodescricao`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_6340c63c` (`user_id`),
  ADD KEY `django_admin_log_37ef4eb4` (`content_type_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_label` (`app_label`,`model`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_b7b81f0c` (`expire_date`);

--
-- Indexes for table `documentos`
--
ALTER TABLE `documentos`
  ADD PRIMARY KEY (`idDocumentos`);

--
-- Indexes for table `emitente`
--
ALTER TABLE `emitente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`pessoajuridica_ptr_id`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id`),
  ADD KEY `endereco_01ab187d` (`pessoaid_id`),
  ADD KEY `endereco_101c0471` (`cidadeid_id`);

--
-- Indexes for table `equipamento`
--
ALTER TABLE `equipamento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `equipamentotcpip` (`equipamentotcpip`),
  ADD KEY `equipamento_929ad086` (`setorid_id`);

--
-- Indexes for table `equipamentoalmitec`
--
ALTER TABLE `equipamentoalmitec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamentoalmitec_51040424` (`equipamentoid_id`);

--
-- Indexes for table `equipamentobiometrus`
--
ALTER TABLE `equipamentobiometrus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamentobiometrus_51040424` (`equipamentoid_id`);

--
-- Indexes for table `equipamentocontrolid`
--
ALTER TABLE `equipamentocontrolid`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamentocontrolid_51040424` (`equipamentoid_id`),
  ADD KEY `equipamentocontrolid_23cd51ab` (`colaboradorid_id`);

--
-- Indexes for table `equipamentohenry8x`
--
ALTER TABLE `equipamentohenry8x`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamentohenry8x_51040424` (`equipamentoid_id`);

--
-- Indexes for table `equipamentoleitorrele`
--
ALTER TABLE `equipamentoleitorrele`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamentoleitorrele_pk` (`equipamentoid_id`);

--
-- Indexes for table `equipamentoproveu`
--
ALTER TABLE `equipamentoproveu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamentoproveu_51040424` (`equipamentoid_id`);

--
-- Indexes for table `equipamentotopdata`
--
ALTER TABLE `equipamentotopdata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipamentotopdata_51040424` (`equipamentoid_id`);

--
-- Indexes for table `estaleiros`
--
ALTER TABLE `estaleiros`
  ADD PRIMARY KEY (`idEstaleiros`);

--
-- Indexes for table `estrutura`
--
ALTER TABLE `estrutura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estrutura_367884bb` (`empresaid_id`);

--
-- Indexes for table `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evento_1f4145c9` (`usuarioid_id`),
  ADD KEY `evento_072511f5` (`tipoeventoid_id`),
  ADD KEY `evento_929ad086` (`setorid_id`);

--
-- Indexes for table `evento_pessoa`
--
ALTER TABLE `evento_pessoa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `evento_id` (`evento_id`,`pessoafisica_acesso_id`),
  ADD KEY `evento_pessoa_80d1c397` (`evento_id`),
  ADD KEY `evento_pessoa_7d9467ae` (`pessoafisica_acesso_id`);

--
-- Indexes for table `evt_convidado`
--
ALTER TABLE `evt_convidado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `evt_convidado_01ab187d` (`pessoaid_id`);

--
-- Indexes for table `finfechamentocaixa`
--
ALTER TABLE `finfechamentocaixa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gestor`
--
ALTER TABLE `gestor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuarioid_id` (`usuarioid_id`);

--
-- Indexes for table `gestor_departamento`
--
ALTER TABLE `gestor_departamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gestor_departamento_ccca84f7` (`gestorid_id`),
  ADD KEY `gestor_departamento_de8cbf31` (`departamentoid_id`);

--
-- Indexes for table `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `horario_3e3f16da` (`tabelahorarioid_id`),
  ADD KEY `horario_929ad086` (`setorid_id`);

--
-- Indexes for table `horariorefeicao`
--
ALTER TABLE `horariorefeicao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tabelareservaid_id` (`tabelareservaid_id`),
  ADD KEY `horariorefeicao_d3a5cf7c` (`tabelarefeicaoid_id`),
  ADD KEY `horariorefeicao_55efec98` (`tiporefeicaoid_id`),
  ADD KEY `horariorefeicao_929ad086` (`setorid_id`);

--
-- Indexes for table `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  ADD PRIMARY KEY (`idItens`),
  ADD KEY `fk_itens_de_vendas_vendas1` (`vendas_id`),
  ADD KEY `fk_itens_de_vendas_produtos1` (`produtos_id`);

--
-- Indexes for table `lancamentos`
--
ALTER TABLE `lancamentos`
  ADD PRIMARY KEY (`idLancamentos`),
  ADD KEY `fk_lancamentos_clientes1` (`clientes_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`idLogs`);

--
-- Indexes for table `nfyemail`
--
ALTER TABLE `nfyemail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nfy_sms`
--
ALTER TABLE `nfy_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notafiscal`
--
ALTER TABLE `notafiscal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `objeto`
--
ALTER TABLE `objeto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `objetodescricao` (`objetodescricao`);

--
-- Indexes for table `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`idOs`),
  ADD KEY `fk_os_clientes1` (`clientes_id`),
  ADD KEY `fk_os_usuarios1` (`usuarios_id`),
  ADD KEY `fk_os_lancamentos1` (`lancamento`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `paisnome` (`paisnome`),
  ADD UNIQUE KEY `paissigla` (`paissigla`),
  ADD UNIQUE KEY `paisnacionalidade` (`paisnacionalidade`);

--
-- Indexes for table `permissoes`
--
ALTER TABLE `permissoes`
  ADD PRIMARY KEY (`idPermissao`);

--
-- Indexes for table `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pessoafisica`
--
ALTER TABLE `pessoafisica`
  ADD PRIMARY KEY (`pessoa_ptr_id`),
  ADD UNIQUE KEY `pessoafisicacpf` (`pessoafisicacpf`),
  ADD UNIQUE KEY `pessoafisicadoc` (`pessoafisicadoc`),
  ADD KEY `pessoafisica_5e8fcca8` (`cidadeid_naturalidade_id`);

--
-- Indexes for table `pessoafisica_acesso`
--
ALTER TABLE `pessoafisica_acesso`
  ADD PRIMARY KEY (`pessoafisica_ptr_id`),
  ADD KEY `pessoafisica_acesso_46476ee4` (`crachacodigo_id`),
  ADD KEY `pessoafisica_acesso_7153b277` (`tabelahorario_id`),
  ADD KEY `pessoafisica_acesso_af575202` (`tabelarefeitorio_id`);

--
-- Indexes for table `pessoafisica_acesso_notificacao`
--
ALTER TABLE `pessoafisica_acesso_notificacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pessoafisica_acesso_notificacao_01ab187d` (`pessoaid_id`),
  ADD KEY `pessoafisica_acesso_notificacao_7f879752` (`notificado_id`);

--
-- Indexes for table `pessoafisica_digital`
--
ALTER TABLE `pessoafisica_digital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pessoafisica_digital_01ab187d` (`pessoaid_id`);

--
-- Indexes for table `pessoafisica_veiculo`
--
ALTER TABLE `pessoafisica_veiculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pessoafisica_veiculo_01ab187d` (`pessoaid_id`),
  ADD KEY `pessoafisica_veiculo_a8607703` (`veiculoid_id`);

--
-- Indexes for table `pessoaimagem`
--
ALTER TABLE `pessoaimagem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pessoaimagem_01ab187d` (`pessoaid_id`),
  ADD KEY `pessoaimagem_cbb3f22d` (`tipoimagemdocumentoid_id`);

--
-- Indexes for table `pessoajuridica`
--
ALTER TABLE `pessoajuridica`
  ADD PRIMARY KEY (`pessoa_ptr_id`),
  ADD KEY `pessoajuridica_5872790f` (`tipopessoajuridicaid_id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`idProdutos`);

--
-- Indexes for table `produtos_os`
--
ALTER TABLE `produtos_os`
  ADD PRIMARY KEY (`idProdutos_os`),
  ADD KEY `fk_produtos_os_os1` (`os_id`),
  ADD KEY `fk_produtos_os_produtos1` (`produtos_id`);

--
-- Indexes for table `regioes`
--
ALTER TABLE `regioes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`user_id`),
  ADD KEY `usuario_id_2` (`user_id`);

--
-- Indexes for table `rota`
--
ALTER TABLE `rota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rota_setor`
--
ALTER TABLE `rota_setor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rota_setor_c5bb58eb` (`rotaid_id`),
  ADD KEY `rota_setor_929ad086` (`setorid_id`);

--
-- Indexes for table `rscondomino`
--
ALTER TABLE `rscondomino`
  ADD PRIMARY KEY (`pessoafisica_acesso_ptr_id`),
  ADD KEY `rscondomino_3f95c97e` (`tipocomdominoid_id`);

--
-- Indexes for table `rsdtipocondomino`
--
ALTER TABLE `rsdtipocondomino`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Indexes for table `rsdtipounidade`
--
ALTER TABLE `rsdtipounidade`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Indexes for table `rsdunidade`
--
ALTER TABLE `rsdunidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rsdunidade_367884bb` (`empresaid_id`),
  ADD KEY `rsdunidade_a8c86d70` (`tipounidadeid_id`);

--
-- Indexes for table `rsdunidadecondomino`
--
ALTER TABLE `rsdunidadecondomino`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rsdunidadecondomino_6d299311` (`rsdunidadeid_id`),
  ADD KEY `rsdunidadecondomino_01ab187d` (`pessoaid_id`),
  ADD KEY `rsdunidadecondomino_3f95c97e` (`tipocomdominoid_id`);

--
-- Indexes for table `rsdunidadevaga`
--
ALTER TABLE `rsdunidadevaga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rsdunidadevaga_6d299311` (`rsdunidadeid_id`),
  ADD KEY `rsdunidadevaga_929ad086` (`setorid_id`),
  ADD KEY `rsdunidadevaga_2665f84d` (`reservapessoaid_id`),
  ADD KEY `rsdunidadevaga_c889b9ce` (`ocupacaopessoaid_id`);

--
-- Indexes for table `rsdunidadeveiculo`
--
ALTER TABLE `rsdunidadeveiculo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rsdunidadeveiculo_6d299311` (`rsdunidadeid_id`),
  ADD KEY `rsdunidadeveiculo_01ab187d` (`pessoaid_id`),
  ADD KEY `rsdunidadeveiculo_a8607703` (`veiculoid_id`);

--
-- Indexes for table `rsdvisita`
--
ALTER TABLE `rsdvisita`
  ADD PRIMARY KEY (`visita_ptr_id`),
  ADD KEY `rsdvisita_76c1666e` (`unidadevisitada_id`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`idServicos`);

--
-- Indexes for table `servicos_os`
--
ALTER TABLE `servicos_os`
  ADD PRIMARY KEY (`idServicos_os`),
  ADD KEY `fk_servicos_os_os1` (`os_id`),
  ADD KEY `fk_servicos_os_servicos1` (`servicos_id`);

--
-- Indexes for table `setor`
--
ALTER TABLE `setor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `setor_a04cf4b4` (`estruturaid_id`);

--
-- Indexes for table `tabelahorario`
--
ALTER TABLE `tabelahorario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tabelahorariodescricao` (`tabelahorariodescricao`);

--
-- Indexes for table `tabelarefeicao`
--
ALTER TABLE `tabelarefeicao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Indexes for table `tabelareserva`
--
ALTER TABLE `tabelareserva`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao` (`descricao`),
  ADD KEY `tabelareserva_929ad086` (`setorid_id`);

--
-- Indexes for table `tipocontato`
--
ALTER TABLE `tipocontato`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipocontatodescricao` (`tipocontatodescricao`);

--
-- Indexes for table `tipoevento`
--
ALTER TABLE `tipoevento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipoeventodescricao` (`tipoeventodescricao`);

--
-- Indexes for table `tipoidentificacaoacesso`
--
ALTER TABLE `tipoidentificacaoacesso`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipoidentificacaoacessodescricao` (`tipoidentificacaoacessodescricao`);

--
-- Indexes for table `tipoimagemdocumento`
--
ALTER TABLE `tipoimagemdocumento`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipoimagemdocumentodescricao` (`tipoimagemdocumentodescricao`);

--
-- Indexes for table `tipopessoajuridica`
--
ALTER TABLE `tipopessoajuridica`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipopessoajuridicadescricao` (`tipopessoajuridicadescricao`);

--
-- Indexes for table `tiporefeicao`
--
ALTER TABLE `tiporefeicao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tiporefeicaodescricao` (`tiporefeicaodescricao`);

--
-- Indexes for table `tipovisita`
--
ALTER TABLE `tipovisita`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tipovisitadescricao` (`tipovisitadescricao`);

--
-- Indexes for table `uf`
--
ALTER TABLE `uf`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ufnome` (`ufnome`),
  ADD UNIQUE KEY `ufsigla` (`ufsigla`),
  ADD KEY `uf_43de5079` (`paisid_id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`user_ptr_id`),
  ADD KEY `usuario_367884bb` (`empresaid_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuarios`),
  ADD KEY `fk_usuarios_permissoes1_idx` (`permissoes_id`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `placa` (`placa`),
  ADD KEY `veiculo_01ed2a2e` (`veiculomodeloid_id`),
  ADD KEY `veiculo_c2f88c68` (`corid_id`),
  ADD KEY `veiculo_bf4d3154` (`veiculotipoid_id`),
  ADD KEY `tabelahorario_id` (`tabelahorario_id`);

--
-- Indexes for table `veiculoclassificacao`
--
ALTER TABLE `veiculoclassificacao`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Indexes for table `veiculomarca`
--
ALTER TABLE `veiculomarca`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marca` (`marca`);

--
-- Indexes for table `veiculomodelo`
--
ALTER TABLE `veiculomodelo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `modelo` (`modelo`),
  ADD KEY `veiculomodelo_24620d10` (`veiculomarcaid_id`);

--
-- Indexes for table `veiculotipo`
--
ALTER TABLE `veiculotipo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`idVendas`),
  ADD KEY `fk_vendas_clientes1` (`clientes_id`),
  ADD KEY `fk_vendas_usuarios1` (`usuarios_id`),
  ADD KEY `fk_vendas_lancamentos1` (`lancamentos_id`);

--
-- Indexes for table `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visita_698232ac` (`empresavisitante_id`),
  ADD KEY `visita_f9257189` (`empresavisitada_id`),
  ADD KEY `visita_70f8bd28` (`tipovisitaid_id`),
  ADD KEY `visita_1f4145c9` (`usuarioid_id`),
  ADD KEY `visita_64ed55fe` (`refeicao_id`),
  ADD KEY `visita_9077d417` (`eventoid_id`);

--
-- Indexes for table `visita_colaborador`
--
ALTER TABLE `visita_colaborador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visita_colaborador_1b2e5b7e` (`visitaid_id`),
  ADD KEY `visita_colaborador_23cd51ab` (`colaboradorid_id`);

--
-- Indexes for table `visita_cracha`
--
ALTER TABLE `visita_cracha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visita_cracha_1b2e5b7e` (`visitaid_id`),
  ADD KEY `visita_cracha_01ab187d` (`pessoaid_id`),
  ADD KEY `visita_cracha_46476ee4` (`crachacodigo_id`);

--
-- Indexes for table `visita_objeto`
--
ALTER TABLE `visita_objeto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visita_objeto_1b2e5b7e` (`visitaid_id`),
  ADD KEY `visita_objeto_fc6f6a87` (`objetoid_id`);

--
-- Indexes for table `visita_rota`
--
ALTER TABLE `visita_rota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visita_rota_1b2e5b7e` (`visitaid_id`),
  ADD KEY `visita_rota_c5bb58eb` (`rotaid_id`);

--
-- Indexes for table `vndproduto`
--
ALTER TABLE `vndproduto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `codigoproduto` (`codigoproduto`);

--
-- Indexes for table `vndvenda`
--
ALTER TABLE `vndvenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vndvenda_367884bb` (`empresaid_id`),
  ADD KEY `vndvenda_f02828bc` (`colaborador_id`);

--
-- Indexes for table `vndvenda_produto`
--
ALTER TABLE `vndvenda_produto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vndvenda_produto_4385b541` (`venda_id`),
  ADD KEY `vndvenda_produto_0e78abec` (`produto_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acesso`
--
ALTER TABLE `acesso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2378125;
--
-- AUTO_INCREMENT for table `acessobloqueado`
--
ALTER TABLE `acessobloqueado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acessolog`
--
ALTER TABLE `acessolog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acessorios`
--
ALTER TABLE `acessorios`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1595;
--
-- AUTO_INCREMENT for table `acesso_setor_pessoa`
--
ALTER TABLE `acesso_setor_pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `acesso_setor_veiculo`
--
ALTER TABLE `acesso_setor_veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `amacesso`
--
ALTER TABLE `amacesso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `anexos`
--
ALTER TABLE `anexos`
  MODIFY `idAnexos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `barcos_estaleiros`
--
ALTER TABLE `barcos_estaleiros`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1854;
--
-- AUTO_INCREMENT for table `barcos_modelos`
--
ALTER TABLE `barcos_modelos`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1903;
--
-- AUTO_INCREMENT for table `barcos_motores`
--
ALTER TABLE `barcos_motores`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1489;
--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6799;
--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idClientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `configuracao`
--
ALTER TABLE `configuracao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4533;
--
-- AUTO_INCREMENT for table `cores`
--
ALTER TABLE `cores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cracha_acesso`
--
ALTER TABLE `cracha_acesso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documentos`
--
ALTER TABLE `documentos`
  MODIFY `idDocumentos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emitente`
--
ALTER TABLE `emitente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamento`
--
ALTER TABLE `equipamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamentoalmitec`
--
ALTER TABLE `equipamentoalmitec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamentobiometrus`
--
ALTER TABLE `equipamentobiometrus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamentocontrolid`
--
ALTER TABLE `equipamentocontrolid`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamentohenry8x`
--
ALTER TABLE `equipamentohenry8x`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamentoleitorrele`
--
ALTER TABLE `equipamentoleitorrele`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamentoproveu`
--
ALTER TABLE `equipamentoproveu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `equipamentotopdata`
--
ALTER TABLE `equipamentotopdata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `estaleiros`
--
ALTER TABLE `estaleiros`
  MODIFY `idEstaleiros` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1859;
--
-- AUTO_INCREMENT for table `estrutura`
--
ALTER TABLE `estrutura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evento`
--
ALTER TABLE `evento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evento_pessoa`
--
ALTER TABLE `evento_pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evt_convidado`
--
ALTER TABLE `evt_convidado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `finfechamentocaixa`
--
ALTER TABLE `finfechamentocaixa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gestor`
--
ALTER TABLE `gestor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gestor_departamento`
--
ALTER TABLE `gestor_departamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `horario`
--
ALTER TABLE `horario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `horariorefeicao`
--
ALTER TABLE `horariorefeicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `itens_de_vendas`
--
ALTER TABLE `itens_de_vendas`
  MODIFY `idItens` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lancamentos`
--
ALTER TABLE `lancamentos`
  MODIFY `idLancamentos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `idLogs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=489;
--
-- AUTO_INCREMENT for table `nfyemail`
--
ALTER TABLE `nfyemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nfy_sms`
--
ALTER TABLE `nfy_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notafiscal`
--
ALTER TABLE `notafiscal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `objeto`
--
ALTER TABLE `objeto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `os`
--
ALTER TABLE `os`
  MODIFY `idOs` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `permissoes`
--
ALTER TABLE `permissoes`
  MODIFY `idPermissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `pessoa`
--
ALTER TABLE `pessoa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pessoafisica_acesso_notificacao`
--
ALTER TABLE `pessoafisica_acesso_notificacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pessoafisica_digital`
--
ALTER TABLE `pessoafisica_digital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pessoafisica_veiculo`
--
ALTER TABLE `pessoafisica_veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pessoaimagem`
--
ALTER TABLE `pessoaimagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `idProdutos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `produtos_os`
--
ALTER TABLE `produtos_os`
  MODIFY `idProdutos_os` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `regioes`
--
ALTER TABLE `regioes`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000;
--
-- AUTO_INCREMENT for table `rota`
--
ALTER TABLE `rota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rota_setor`
--
ALTER TABLE `rota_setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rsdtipocondomino`
--
ALTER TABLE `rsdtipocondomino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rsdtipounidade`
--
ALTER TABLE `rsdtipounidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=632;
--
-- AUTO_INCREMENT for table `rsdunidade`
--
ALTER TABLE `rsdunidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rsdunidadecondomino`
--
ALTER TABLE `rsdunidadecondomino`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rsdunidadevaga`
--
ALTER TABLE `rsdunidadevaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rsdunidadeveiculo`
--
ALTER TABLE `rsdunidadeveiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `idServicos` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servicos_os`
--
ALTER TABLE `servicos_os`
  MODIFY `idServicos_os` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setor`
--
ALTER TABLE `setor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabelahorario`
--
ALTER TABLE `tabelahorario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabelarefeicao`
--
ALTER TABLE `tabelarefeicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tabelareserva`
--
ALTER TABLE `tabelareserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipocontato`
--
ALTER TABLE `tipocontato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tipoevento`
--
ALTER TABLE `tipoevento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipoidentificacaoacesso`
--
ALTER TABLE `tipoidentificacaoacesso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipoimagemdocumento`
--
ALTER TABLE `tipoimagemdocumento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipopessoajuridica`
--
ALTER TABLE `tipopessoajuridica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `tiporefeicao`
--
ALTER TABLE `tiporefeicao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tipovisita`
--
ALTER TABLE `tipovisita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uf`
--
ALTER TABLE `uf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `veiculoclassificacao`
--
ALTER TABLE `veiculoclassificacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `veiculomarca`
--
ALTER TABLE `veiculomarca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `veiculomodelo`
--
ALTER TABLE `veiculomodelo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `veiculotipo`
--
ALTER TABLE `veiculotipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `idVendas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `visita`
--
ALTER TABLE `visita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `visita_colaborador`
--
ALTER TABLE `visita_colaborador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `visita_cracha`
--
ALTER TABLE `visita_cracha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `visita_objeto`
--
ALTER TABLE `visita_objeto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `visita_rota`
--
ALTER TABLE `visita_rota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vndproduto`
--
ALTER TABLE `vndproduto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vndvenda`
--
ALTER TABLE `vndvenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vndvenda_produto`
--
ALTER TABLE `vndvenda_produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `acessobloqueado`
--
ALTER TABLE `acessobloqueado`
  ADD CONSTRAINT `acessoid_id_refs_id_71517604` FOREIGN KEY (`acessoid_id`) REFERENCES `acesso` (`id`);

--
-- Limitadores para a tabela `acessorefeitorio`
--
ALTER TABLE `acessorefeitorio`
  ADD CONSTRAINT `acesso_ptr_id_refs_id_42ce537d` FOREIGN KEY (`acesso_ptr_id`) REFERENCES `acesso` (`id`);

--
-- Limitadores para a tabela `acessorefeitorioreserva`
--
ALTER TABLE `acessorefeitorioreserva`
  ADD CONSTRAINT `acesso_ptr_id_refs_id_f1edde46` FOREIGN KEY (`acesso_ptr_id`) REFERENCES `acesso` (`id`),
  ADD CONSTRAINT `horariorefeicaoid_id_refs_id_840443dc` FOREIGN KEY (`horariorefeicaoid_id`) REFERENCES `horariorefeicao` (`id`);

--
-- Limitadores para a tabela `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_os1` FOREIGN KEY (`os_id`) REFERENCES `os` (`idOs`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_f4b32aac` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_6ba0f519` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Limitadores para a tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_d043b34a` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Limitadores para a tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_274b862c` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_40c41112` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_35d9ac25` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_4dc23c39` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Limitadores para a tabela `barcos_modelos`
--
ALTER TABLE `barcos_modelos`
  ADD CONSTRAINT `barcos_modelos_ibfk_1` FOREIGN KEY (`id_estaleiro`) REFERENCES `barcos_estaleiros` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `cidade`
--
ALTER TABLE `cidade`
  ADD CONSTRAINT `ufid_id_refs_id_0e958e53` FOREIGN KEY (`ufid_id`) REFERENCES `uf` (`id`);

--
-- Limitadores para a tabela `colaborador`
--
ALTER TABLE `colaborador`
  ADD CONSTRAINT `cargoid_id_refs_id_aa1c9088` FOREIGN KEY (`cargoid_id`) REFERENCES `cargo` (`id`),
  ADD CONSTRAINT `departamentoid_id_refs_id_17a511d7` FOREIGN KEY (`departamentoid_id`) REFERENCES `departamento` (`id`),
  ADD CONSTRAINT `empresaid_id_refs_pessoajuridica_ptr_id_c4d2bfa9` FOREIGN KEY (`empresaid_id`) REFERENCES `empresa` (`pessoajuridica_ptr_id`),
  ADD CONSTRAINT `pessoafisica_acesso_ptr_id_refs_pessoafisica_ptr_id_55bcc7ff` FOREIGN KEY (`pessoafisica_acesso_ptr_id`) REFERENCES `pessoafisica_acesso` (`pessoafisica_ptr_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
