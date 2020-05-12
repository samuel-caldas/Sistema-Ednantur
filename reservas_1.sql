--
-- Banco de Dados: `reservas`
--
CREATE DATABASE `reservas` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `reservas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('2286333ee9ff0e4dcf2dd4def0008006', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.8 (KHTML, like Gecko) Chrome/17.0.942.0 Safari/535.8', 1322618649, 'a:6:{s:7:"user_id";s:1:"1";s:5:"login";s:5:"admin";s:5:"email";s:18:"joao.ofb@gmail.com";s:4:"nome";s:30:"João Otávio Ferreira Barbosa";s:4:"tipo";s:1:"a";s:6:"logged";b:1;}'),
('8b187c66208fed01503c101beae5af8b', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.7 (KHTML, like Gecko) Chrome/16.0.912.15 Safari/535.7', 1320116636, 'a:6:{s:7:"user_id";s:1:"1";s:5:"login";s:5:"admin";s:5:"email";s:18:"joao.ofb@gmail.com";s:4:"nome";s:30:"João Otávio Ferreira Barbosa";s:4:"tipo";s:1:"a";s:6:"logged";b:1;}'),
('df13ac6fac1a4f3ef9574e3cdaf3e6e6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.8 (KHTML, like Gecko) Chrome/17.0.938.0 Safari/535.8', 1321377669, 'a:6:{s:7:"user_id";s:1:"1";s:5:"login";s:5:"admin";s:5:"email";s:18:"joao.ofb@gmail.com";s:4:"nome";s:30:"João Otávio Ferreira Barbosa";s:4:"tipo";s:1:"a";s:6:"logged";b:1;}'),
('e7dd574bb536bc72143412129d67208f', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/535.8 (KHTML, like Gecko) Chrome/17.0.932.0 Safari/535.8', 1321120369, 'a:6:{s:7:"user_id";s:1:"1";s:5:"login";s:5:"admin";s:5:"email";s:18:"joao.ofb@gmail.com";s:4:"nome";s:30:"João Otávio Ferreira Barbosa";s:4:"tipo";s:1:"a";s:6:"logged";b:1;}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE IF NOT EXISTS `cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_id` int(11) NOT NULL,
  `cidade` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `estado_id` (`estado_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id`, `estado_id`, `cidade`) VALUES
(1, 13, 'Belo Horizonte'),
(2, 19, 'Rio de Janeiro'),
(3, 25, 'São Paulo'),
(6, 13, 'Contagem'),
(7, 13, 'Ouro Preto'),
(8, 8, 'Guarapari');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE IF NOT EXISTS `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  `sigla` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Extraindo dados da tabela `estados`
--

INSERT INTO `estados` (`id`, `nome`, `sigla`) VALUES
(1, 'Acre', 'AC'),
(2, 'Alagoas', 'AL'),
(3, 'Amapá', 'AP'),
(4, 'Amazonas', 'AM'),
(5, 'Bahia', 'BA'),
(6, 'Ceará', 'CE'),
(7, 'Distrito Federal', 'DF'),
(8, 'Espírito Santo', 'ES'),
(9, 'Goiás', 'GO'),
(10, 'Maranhão', 'MA'),
(11, 'Mato Grosso', 'MT'),
(12, 'Mato Grosso do Sul', 'MS'),
(13, 'Minas Gerais', 'MG'),
(14, 'Pará', 'PA'),
(15, 'Paraíba', 'PB'),
(16, 'Paraná', 'PR'),
(17, 'Pernambuco', 'PE'),
(18, 'Piauí', 'PI'),
(19, 'Rio de Janeiro', 'RJ'),
(20, 'Rio Grande do Norte', 'RN'),
(21, 'Rio Grande do Sul', 'RS'),
(22, 'Rondônia', 'RO'),
(23, 'Rorâima', 'RR'),
(24, 'Santa Catarina', 'SC'),
(25, 'São Paulo', 'SP'),
(26, 'Sergipe', 'SE'),
(27, 'Tocantins', 'TO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `onibus`
--

CREATE TABLE IF NOT EXISTS `onibus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(255) NOT NULL,
  `andares` int(11) NOT NULL DEFAULT '1',
  `tipo` int(11) NOT NULL DEFAULT '0',
  `ativo` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `onibus`
--

INSERT INTO `onibus` (`id`, `numero`, `andares`, `tipo`, `ativo`) VALUES
(8, '6843846558', 1, 1, 1),
(9, '89846888', 1, 0, 1),
(10, '131412323', 2, 0, 1),
(11, '13455123', 2, 0, 1),
(12, '2345678', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `poltronas`
--

CREATE TABLE IF NOT EXISTS `poltronas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onibus_id` int(11) NOT NULL,
  `andar` int(11) NOT NULL,
  `poltronas` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `onibus_id` (`onibus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Extraindo dados da tabela `poltronas`
--

INSERT INTO `poltronas` (`id`, `onibus_id`, `andar`, `poltronas`) VALUES
(9, 8, 1, 25),
(10, 9, 1, 35),
(11, 10, 1, 40),
(12, 10, 2, 25),
(13, 11, 1, 25),
(15, 11, 2, 25),
(16, 12, 1, 39);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE IF NOT EXISTS `reservas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `viagem_id` int(11) NOT NULL,
  `poltrona` int(11) NOT NULL,
  `ida` int(11) NOT NULL DEFAULT '0',
  `volta` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(255) NOT NULL,
  `telefone` varchar(64) NOT NULL,
  `rg` int(11) NOT NULL,
  `embarque` varchar(255) NOT NULL,
  `vendedor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` (`id`, `viagem_id`, `poltrona`, `ida`, `volta`, `nome`, `telefone`, `rg`, `embarque`, `vendedor`) VALUES
(9, 3, 15, 1, 0, 'Mário', '(31) 1111-1111', 13456612, 'Teste', 0),
(10, 3, 23, 0, 1, 'Bruno', '(31) 2222-2222', 51235125, 'Teste', 0),
(11, 3, 18, 1, 1, 'Raphael Menezes', '(11) 3456-2435', 0, 'Teste', 0),
(12, 3, 21, 1, 0, 'Yago', '(13) 1415-1615', 15636272, 'Teste', 0),
(13, 3, 21, 0, 1, 'Junior', '(56) 7809-8765', 34567890, 'Teste', 0),
(14, 2, 1, 1, 1, 'Lucas Ricoy', '(31) 3333-2222', 13377777, 'Teste', 0),
(15, 3, 1, 1, 0, 'Márcio', '(33) 3333-3333', 321654897, 'OP', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipo` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `login`, `senha`, `email`, `nome`, `tipo`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'joao.ofb@gmail.com', 'João Otávio Ferreira Barbosa', 'a'),
(13, 'wesley', '6f919a01bd0f3115a2bd80b6b80fcb3441254e2a', 'agencia@grupocriarte.com', 'Wesley Alves', 'a'),
(14, 'teste', '2e6f9b0d5885b6010f9167787445617f553a735f', 'teste@teste.com', 'Teste', 'v'),
(15, 'teste2', '96a62ca98bdec7f55343f8cfa594379bdba76cc9', 'teste@teste.com', 'Teste', 'v');

-- --------------------------------------------------------

--
-- Estrutura da tabela `viagens`
--

CREATE TABLE IF NOT EXISTS `viagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado_partida` int(11) NOT NULL,
  `cidade_partida` int(11) NOT NULL,
  `data_partida` date NOT NULL,
  `estado_destino` int(11) NOT NULL,
  `cidade_destino` int(11) NOT NULL,
  `data_volta` date NOT NULL,
  `numero_onibus` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `estado_partida` (`estado_partida`),
  KEY `cidade_partida` (`cidade_partida`),
  KEY `estado_destino` (`estado_destino`),
  KEY `cidade_destino` (`cidade_destino`),
  KEY `tipo_onibus` (`numero_onibus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `viagens`
--

INSERT INTO `viagens` (`id`, `estado_partida`, `cidade_partida`, `data_partida`, `estado_destino`, `cidade_destino`, `data_volta`, `numero_onibus`) VALUES
(1, 13, 6, '2011-09-01', 19, 2, '2011-09-30', 9),
(2, 19, 2, '2011-09-01', 25, 3, '2011-09-30', 11),
(3, 13, 7, '2011-09-08', 8, 8, '2011-12-31', 8);

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`estado_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `poltronas`
--
ALTER TABLE `poltronas`
  ADD CONSTRAINT `poltronas_ibfk_1` FOREIGN KEY (`onibus_id`) REFERENCES `onibus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para a tabela `viagens`
--
ALTER TABLE `viagens`
  ADD CONSTRAINT `viagens_ibfk_1` FOREIGN KEY (`estado_partida`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `viagens_ibfk_2` FOREIGN KEY (`cidade_partida`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `viagens_ibfk_3` FOREIGN KEY (`estado_destino`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `viagens_ibfk_4` FOREIGN KEY (`cidade_destino`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;