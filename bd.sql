-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 26-Set-2018 às 21:20
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id2465923_home`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `comentario`
--

CREATE TABLE `comentario` (
  `id` int(11) NOT NULL,
  `id_fan` int(11) NOT NULL,
  `nome` varchar(65) COLLATE utf8_unicode_ci NOT NULL,
  `comentario` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `reater` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `comentario`
--

INSERT INTO `comentario` (`id`, `id_fan`, `nome`, `comentario`, `reater`) VALUES
(1, 2, 'Yan', 'Teste Teste', 'ef6989bdf23a6dde5fdcd1eeae66043c'),
(2, 2, 'Yan', 'Teste Teste', '733a0b800fcba0cffbfef6ef3053c4bf'),
(3, 2, 'Teste 2 ', '22', 'fd08b29d6c5f6b3f18b3bf9281488a41'),
(4, 2, 'xnyedryw', '1', '48b5dce5d418d862b82cd4220fdc6c13'),
(5, 1, 'hhdmxvxx', '1', 'ad8a11eadbe8f3bf7234868ba0f7a82b'),
(6, 0, 'bytxryfn', '1', 'd7208dd5c38d2f090d019c553ab79baf'),
(7, 1, 'vykemyol', '1', 'd4cb4a02dd97366d286c9d9c6f2092af'),
(8, 2, 'gtenfyua', '1', '55359a947de33acd43604ef80d01b50c'),
(9, 0, 'ixjimgnn', '1', '7894b125cb57ffc3dce7fd9756411131'),
(10, 7, 'tmt', 'wow \'-\'', 'fc7d5f0ba7e6fec22141ac1ebaa17bb6'),
(11, 7, 'irineu', 'Que isso... :3', 'beb2b4532048e5ec6fbd987567360776'),
(12, 10, 'tmt', 'faz a mão deve ser mais facil XD', '62f9967b1cf85bcfe794a21e12e3b8b2'),
(13, 10, 'Alexi Texas', ' ÃÃÃÃÕWOWNN ÃÃ~WNWNNN OWNN AWN', '0ae75eec6562af8e03bdd6261c819ad2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `epsodios`
--

CREATE TABLE `epsodios` (
  `id` int(11) NOT NULL,
  `card_board` varchar(300) NOT NULL,
  `local_ep` varchar(300) NOT NULL,
  `nome_ep` text NOT NULL,
  `numero` int(11) NOT NULL,
  `assistido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `epsodios`
--

INSERT INTO `epsodios` (`id`, `card_board`, `local_ep`, `nome_ep`, `numero`, `assistido`) VALUES
(1, 'https://i.ytimg.com/vi/4rDXnEQK2U4/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CV09qR3BLS281OUU', 'Steven Universe: S01E01 - O Brilho da Pedra', 1, 17),
(2, 'https://i.ytimg.com/vi/bLiT4-RPfF8/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CclBQUEhOYjhkb0U', 'StevenUniverse:S01E02 - O Canhão de Laser', 2, 3),
(3, 'https://i.ytimg.com/vi/_ajIMgxg98Y/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CLUQ4aV9IbkVGR2c', 'StevenUniverse:S01E03- A Mochila Cheese Burger', 3, 2),
(4, 'http://vignette2.wikia.nocookie.net/steven-universe/images/9/99/Together_Breakfast_HD_001.png/revision/latest?cb=20160709162907', 'https://drive.google.com/file/d/0B3xPCrtQel-CX1dXQ21IRzR4WDA', 'StevenUniverse:S01E04-O Café da Manhã', 4, 2),
(5, 'http://vignette4.wikia.nocookie.net/steven-universe/images/9/97/Frybo_000.png/revision/latest?cb=20160701015234', 'https://drive.google.com/file/d/0B3xPCrtQel-CS3VhMFlRcl9PN28', 'StevenUniverse:S01E05- Frybo', 5, 1),
(6, 'https://i.ytimg.com/vi/1SC5HpI7cTI/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CUm5nWGJHQzV6VUE', 'StevenUniverse:S01E06 - Dedos de Gato', 6, 1),
(7, 'https://vignette2.wikia.nocookie.net/stevenuniverso/images/9/95/Amigos_de_Bolha_-_Cart%C3%A3o.png/revision/latest?cb=20160727112933&path-prefix=pt-br', 'https://drive.google.com/file/d/0B3xPCrtQel-CS3oydDB4Rk1ETFk', 'StevenUniverse:S01E07- Amigos de Bolha', 7, 3),
(8, 'http://vignette3.wikia.nocookie.net/steven-universe/images/7/71/Serious_Steven_000.png/revision/latest?cb=20160709161632', 'https://drive.google.com/file/d/0B3xPCrtQel-CUHg5MjF1SHNCa3M', 'StevenUniverse:S01E08-Steven Muito Sério', 8, 1),
(9, 'https://vignette1.wikia.nocookie.net/steven-universe/images/e/ea/Tiger_Millionaire_000.png/revision/latest?cb=20160709162847', 'https://drive.google.com/file/d/0B3xPCrtQel-CVHgwcTc3QjZxcGM', 'StevenUniverse:S01E09-Tigre Milionário', 9, 1),
(10, '', 'https://drive.google.com/file/d/0B3xPCrtQel-COGVWN3A2QjdXYVk', 'StevenUniverse:S01E10-O Leão do Steven', 10, 1),
(11, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CUm16dlJIa1FOVzA', 'StevenUniverse:S01E11-Jogos Eletrônicos', 11, 0),
(12, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CT1pvcXVwOGxJLU0', 'StevenUniverse:S01E012- A Mulher Gigante', 12, 0),
(13, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CYTd0NEhhcUw2QTg', 'StevenUniverse:S01E13-Tantos Aniversários', 13, 0),
(14, '', 'https://drive.google.com/file/d/0B3xPCrtQel-Ca2NpUzZ3VV8yWTg', 'StevenUniverse:S01E14-Lars e os Descolados', 14, 0),
(15, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CdlNyQ1A2ZG1pWXM', 'StevenUniverse:S01E15-Negociando com o Cebola', 15, 0),
(16, '', 'https://drive.google.com/file/d/0B3xPCrtQel-Cb2huM2J4RFNETkU', 'StevenUniverse: S01E16 - Samurai Steven', 16, 0),
(17, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CQldWWUprYmJNbWs', 'StevenUniverse:S01E17-Leão 2: O Filme', 17, 1),
(18, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CcV8tanVUb2p5R1U', 'StevenUniverse:S01E18-Um Dia na Praia', 18, 4),
(19, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CT2N0YTJFbFJYd3c', 'StevenUniverse:S01E19-O Quarto de Rose', 19, 0),
(20, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CampkS3p2LTM4TGM', 'StevenUniverse:S01E20-Treinador Steven', 20, 0),
(21, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CRHNiTnFrbFRxaFU', 'StevenUniverse:S01E21-A Vítima da Pegadinha', 21, 0),
(22, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CZ0stbDlGQVBuc2M', 'StevenUniverse:S01E22-Steven e os Stevens', 22, 0),
(23, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CTmN5OTdjOWM3ZnM', 'StevenUniverse:S01E23-Amigo Monstro', 23, 0),
(24, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CNXJlblJWRkg4VGc', 'StevenUniverse:S01E24-Um Beijo Indireto', 24, 0),
(25, '', 'https://drive.google.com/file/d/0B3xPCrtQel-Cakx0cVNybWVVVHM', 'StevenUniverse:S01E25-Espelho Gem', 25, 0),
(28, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CWHdNaEx4c0NxTHM', 'StevenUniverse:S01E27-O Hóspede', 27, 1),
(29, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CV2FyY0NfSkhOTk0', 'StevenUniverse:S01E26- Gem Oceano', 26, 1),
(30, '', 'https://drive.google.com/file/d/0B3xPCrtQel-COTYxUVVwamhWT1E', 'StevenUniverse:S01E28- Corrida Espacial', 28, 0),
(34, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CLXpaUzJXNmU4WkU', 'StevenUniverse:S01E29- Equipe Secreta', 29, 0),
(35, '', 'https://drive.google.com/file/d/0B3xPCrtQel-Cdkg5YnJQcjVLdk0', 'StevenUniverse:S01E30-Aventura na Ilha', 30, 0),
(36, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CMHNUMWJSenljRFE', 'StevenUniverse:S01E31-O Estranho Mundo de Beach City', 31, 0),
(38, '', 'https://drive.google.com/file/d/0B3xPCrtQel-Cc3JKNldORFRFM3M', 'StevenUniverse:S01E33-O Universo de Garnet', 33, 0),
(40, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CS2Y4RXlIcTZhS3c', 'StevenUniverse:S01E32-Jantar em Família', 32, 0),
(41, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CcVB3U1M4YUVTV1k', 'StevenUniverse:S01E34- Steven Melancia', 34, 0),
(42, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CZDk5VUh1LXlIdms', 'StevenUniverse:S01E35-Leão 3:Direto pro Vídeo', 35, 0),
(43, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CWGNmRC1mZ0JWd1k', 'StevenUniverse:S01E36- Transportadores', 36, 0),
(44, '', 'https://drive.google.com/file/d/0B3xPCrtQel-Cbld0dUZPT2xJdTA', 'StevenUniverse:S01E37- Juntos e Sozinhos', 37, 1),
(45, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CUTRlOVh2eHVzeVU', 'StevenUniverse:S01E38-O Teste', 38, 0),
(46, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CVHBCcnRLVndKQkU', 'StevenUniverse:S01E39-Visão do Futuro', 39, 0),
(47, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CT0hFNGZhdy1yc2M', 'StevenUniverse:S01E40-Sem Destino', 40, 0),
(48, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CbHdxWV9GcnlUWE0', 'StevenUniverse:S01E41-Clube do Horror', 41, 0),
(51, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CU0ZkbGl5NjU5Mm8', 'StevenUniverse:S01E42-Previsão do Tempo: Inverno', 42, 4),
(52, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CR3NuMnhmVl9uUDA', 'StevenUniverse:S01E43-Capacidade Maxima', 43, 0),
(53, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CWVdrVXM2QThwMXc', 'StevenUniverse:S01E44-Ataque de Mármore', 44, 0),
(56, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CUUx5bFBZOENLLVk', 'StevenUniverse:S01E46-Livro Aberto', 46, 2),
(60, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CcTk2U1pUSEtRcnc', 'StevenUniverse:S01E45-A Espada de Rose', 45, 0),
(61, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CZlpSc3lHcGotcEE', 'StevenUniverse:S01E47-O Clube da Camiseta', 47, 0),
(62, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CcjJvcjhuZ2JIcGc', 'StevenUniverse:S01E48-Uma História para Steven', 48, 0),
(63, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CQkczeEVnTVFUQ2s', 'StevenUniverse:S01E49-A Mensagem', 49, 0),
(64, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CNUFpRldNZWhjSVU', 'StevenUniverse:S01E50-Poder Político', 50, 0),
(65, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CNWczc1BUZE1xd0k', 'StevenUniverse:S01E51-O Retorno', 51, 0),
(66, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CNlEwbWt5SHZHZ3M', 'StevenUniverse:S01E52-Libertador', 52, 0),
(67, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CM3VpOGxjRGJJaTA', 'StevenUniverse:S02E01-Contando Tudo', 53, 0),
(69, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CN3FHcDdzSTlFRVk', 'StevenUniverse:S02E02-Curtindo por Aí', 54, 0),
(70, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CSWhYLTlaLW5oTnc', 'StevenUniverse:S02E03-Diga Tio', 55, 1),
(71, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CNGxLN0lfLURwZVE', 'StevenUniverse:S02E04-Cartas de Amor', 56, 1),
(72, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CUll1QU9EZGJESlk', 'StevenUniverse:S02E05-Reformas', 57, 0),
(73, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CZ2JWZFJCUXEzb1k', 'StevenUniverse:S02E06-Juramento à Espada', 58, 0),
(74, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CbFdsZklYbG5wSkU', 'StevenUniverse:S02E07-Ondas Gigantes, Céus Explosivo', 59, 0),
(75, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CMGk2ZXNUek0wNk0', 'StevenUniverse:S02E08-Ficando Juntas', 60, 0),
(76, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CdG9ydkxzbkVQSlk', 'StevenUniverse:S02E09-Temos que Conversar', 61, 0),
(77, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CZHgxOE9lUU05NHM', 'StevenUniverse:S02E10-Chille Tid', 62, 0),
(78, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CSGhMbVNFdmZpQ0k', 'StevenUniverse:S02E11-Peça Ajuda', 63, 1),
(79, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CLTQyR2lyY3FGVkE', 'StevenUniverse:S02E12-Motel Keystone', 64, 0),
(80, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CaFJmbkJ6Q3ZvYzA', 'StevenUniverse:S02E13-Amigo Cebola', 65, 0),
(81, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CZ19EendEQnN4cmM', 'StevenUniverse:S02E14-Fricção Histórica', 66, 0),
(82, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CWk1BNWdlQ2N2d00', 'StevenUniverse:S02E15-Amizade', 67, 0),
(83, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CRWdSaWpfMFZZQ00', 'StevenUniverse:S02E16-Pesadelo Hospitalar', 68, 1),
(84, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CdkpQei1qTHFySmc', 'StevenUniverse:S02E17-A Canção da Sadie', 69, 0),
(85, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CU0V0S1dHc2JMY2s', 'StevenUniverse:S02E18-Pegar e Largar', 70, 0),
(86, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CVGJ0U0ZyRjB2OTg', 'StevenUniverse:S02E19-Quando Chove', 71, 0),
(87, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CWmROWllRSkwxSFk', 'StevenUniverse:S02E20-De Volta ao Celeiro', 72, 0),
(88, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CMDZOVXpkQkJkOXc', 'StevenUniverse:S02E21-Longe Demais', 73, 0),
(89, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CaEM5VnNCZ2RYbms', 'StevenUniverse:S02E22-A Resposta', 74, 0),
(90, '', 'https://drive.google.com/file/d/0B3xPCrtQel-COWNmeVc0ckp3WG8', 'StevenUniverse:S02E23-Aniversário do Steven', 75, 0),
(91, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CNDdEZVRXR3U1T3M', 'StevenUniverse:S02E24-Poderia Ter Sido Ótimo', 76, 0),
(92, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CUnp5WWlheWgwbGs', 'StevenUniverse:S02E25-Mensagem Recebida', 77, 1),
(93, '', 'https://drive.google.com/file/d/0B3xPCrtQel-Cb3EtRGtlN2tKdk0', 'StevenUniverse:S03E01-Diário de Bordo 7-15-2', 78, 0),
(94, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CNGVZekVLbXJCVjQ', 'StevenUniverse:S03E02-Super Ilha Melancia', 79, 0),
(95, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CWUJNSGNmZ0Q5OVU', 'StevenUniverse:S03E03-Broca de Gems', 80, 0),
(96, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CbThkTGcyS2pGMUE', 'StevenUniverse:S03E04-O Mesmo Mundo', 81, 0),
(97, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CeFlkcXBZSzFoUjg', 'StevenUniverse:S03E05-Colegas de Celeiro', 82, 0),
(98, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CenNJUGFEVV9wV1U', 'StevenUniverse:S03E06-Tacada Certeira', 83, 0),
(99, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CMUxsZElFSldicVk', 'StevenUniverse:S03E07-Steven Voador', 84, 0),
(100, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CTElvWTY4YnptYWc', 'StevenUniverse:S03E08-Som na Caixa, Pai', 85, 1),
(101, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CekJidWJCN2VubzQ', 'StevenUniverse:S03E09-Senhor Greg', 86, 0),
(102, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CV2x3NzZRNUlndzA', 'StevenUniverse:S03E10-Baixo Demais Pra Brincar', 87, 1),
(103, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CU1B0NU1vTmhKR0k', 'StevenUniverse:S03E11-O Novo Lars', 88, 0),
(104, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CVVh0VElZZDZIdkk', 'StevenUniverse:S03E12-Corrida em Beach City', 89, 0),
(105, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CamtwN1NjNkhMN28', 'StevenUniverse:S03E13-Guerra de Restaurante', 90, 0),
(106, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CZ3FNeXNfUWF0M2s', 'StevenUniverse:S03E14-Entregas de PizzadaKiki', 91, 0),
(107, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CSFFaVEVGQ1RxTUU', 'StevenUniverse:S03E15-Reencontro Monstruoso', 92, 0),
(108, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CU1Z2akhPbGdfY2M', 'StevenUniverse:S03E16-Sozinhos no Mar', 93, 0),
(109, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CRDU4RF9OcjhZaGc', 'StevenUniverse:S03E17-Greg Babá', 94, 0),
(110, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CSE5pazRrSEJsMVU', 'StevenUniverse:S03E18-Caçando Gems', 95, 0),
(111, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CR0EyZkpQczhBV2s', 'StevenUniverse:S03E19-Bate o Chicote', 96, 0),
(112, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CS0lvUHFzaHN6b2M', 'StevenUniverse:S03E20-Steven Contra Ametista', 97, 0),
(113, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CTTh1bkZFQjdxWU0', 'StevenUniverse:S03E21&22-Bismuto', 98, 0),
(114, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CY3FsS0oxeHA1UE0', 'StevenUniverse:S03E23-BETA', 99, 0),
(115, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CRTdZS1RpVDJHUzQ', 'StevenUniverse:S03E24-Terráqueas', 100, 0),
(116, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CNV9tTHpwRVMzYzA', 'StevenUniverse:S03E25-De Volta à Lua', 101, 0),
(117, '', 'https://drive.google.com/file/d/0B3xPCrtQel-CTDhBVk4wMzR2WE0', 'StevenUniverse:S03E26-Na Bolha', 102, 0),
(118, 'https://stevenuniverseportugues.files.wordpress.com/2017/01/s04e103-kindergarten-kid-7-mkv_snapshot_08-50_2017-01-31_11-53-151.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CdjBnVm0ySEx5bUE', 'StevenUniverse:S04E01-A Menina do Jardim de Infância', 103, 0),
(119, 'https://3.bp.blogspot.com/-xvvt7z6bWa0/V67iMK8u6CI/AAAAAAAAAqU/FgHY0GMMkb4gpKV8yp1z5JELOCvVN6smACEw/s1600/picture007.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CaVQxSV9hdVY5Vm8', 'StevenUniverse:S04E02-Conheça sua Fusão', 104, 0),
(120, 'https://i.ytimg.com/vi/mwZuKs5RuV8/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CWUtTaURuQ1BIU00', 'StevenUniverse:S04E03-O Livro do Buddy', 105, 0),
(121, 'https://stevenuniverseportugues.files.wordpress.com/2017/02/s04e106-mindful-education-10-mp4_snapshot_01-31_2017-02-02_19-33-00.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CQlhIZ04wejlxRUE', 'StevenUniverse:S04E04-Educação de Consciência', 106, 0),
(122, 'https://i.ytimg.com/vi/tMabl6tBOIU/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CUjN0TlA0T25SS2c', 'StevenUniverse:S04E05-Zoltron, Menino do Futuro', 107, 0),
(123, 'https://i.ytimg.com/vi/Y9kdqUmNNw8/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-Cd2k3QTY2TlFfbWs', 'StevenUniverse:S04E06-Última a Sair de Beach City', 108, 1),
(124, 'https://stevenuniverseportugues.files.wordpress.com/2017/02/s04e109-onion-gang-13-mp4_snapshot_02-54_2017-02-08_10-48-06.png', 'https://drive.google.com/file/d/0B3xPCrtQel-CMjNMTnNWYzRSQnc', 'StevenUniverse:S04E07-A Turma do Cebola', 109, 0),
(125, 'https://4.bp.blogspot.com/-RojfEEvtu7I/WUlf7SS-W2I/AAAAAAAAB9Q/eYpZvQt2ZcodWXQhMXHRuKSMS0kbMDiwwCLcBGAs/s1920/vlcsnap-2017-06-20-14h40m06s433.png', 'https://drive.google.com/file/d/0B3xPCrtQel-CcVhjRm5jTEh2dFU', 'StevenUniverse:S04E08&09-Colheita de Gem', 110, 1),
(126, 'https://i.ytimg.com/vi/2qXypVfUkVE/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CQmFVTWZRSjA5Y1U', 'StevenUniverse:S04E10-Três Gems e um Bebê', 111, 0),
(127, 'http://pm1.narvii.com/6496/7cf167384807e299726d0ae99c7e39dba5a8ea87_hq.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CREh5WExCV0g4U2M', 'StevenUniverse:S04E11-O Sonho do Steven', 112, 1),
(128, 'https://i.ytimg.com/vi/-nLTNX6uGBU/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CeU1TVkJLcmp2d3M', 'StevenUniverse:S04E12-Aventuras com Distorção de Luz', 113, 0),
(129, 'https://i.ytimg.com/vi/Aezyawy3L6A/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-Cd0dJc29NWENKU2s', 'StevenUniverse:S04E13-Assalto de Gem', 114, 0),
(130, 'https://i.ytimg.com/vi/otGucaQOsQ4/maxresdefault.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CYTB0NUhJSWV6cXM/', 'StevenUniverse:S04E14-O Zoológico', 115, 2),
(131, 'https://3.bp.blogspot.com/-gtz5LrnJVxA/WIqF9oTsH1I/AAAAAAAAK58/kXg0Vyk4ioEqS8WcqDR_CYljvcja3JPvwCLcB/s640/vlcsnap-2017-01-26-05h19m11s061.png', 'https://drive.google.com/file/d/0B3xPCrtQel-CUERvb3g5VmZaczQ', 'StevenUniverse:S04E15-Isso é Tudo', 116, 14),
(132, 'http://cdn1us.denofgeek.com/sites/denofgeekus/files/styles/main_wide/public/2017/02/steven-universe-the-crystal-temps.png?itok=GqhG3Hm5', 'https://drive.google.com/file/d/0B3xPCrtQel-Cc1NOSDJma1E0WWs', 'StevenUniverse:S04E16- As Novas Crystal Gems', 117, 1),
(133, 'http://pm1.narvii.com/6384/90b0d7154acec526700645c81e2843d6a281840c_hq.jpg', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtEUVVTMEFsMjV3aUE', 'StevenUniverse:S04E17-Storm In The Room (Leg)', 118, 0),
(134, 'http://i.imgur.com/wQdPIPz.jpg', 'https://drive.google.com/file/d/0B3xPCrtQel-CUWZ3dFBCSExhNDg', 'StevenUniverse:S04E18- Pedronaldo', 119, 0),
(135, 'http://pm1.narvii.com/6399/b8dc1ce2144e8a779f06bef8ac70b0a2673349ab_hq.jpg', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtEc0x6Ui0tMkpfMUE', 'StevenUniverse:S04E19-Tiger Philanthropist (Leg)', 120, 0),
(136, 'https://am22.akamaized.net/tms/cnt/uploads/2017/03/room-for-ruby-650x365.jpg', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtETFN0S0w3c1l5QXc', 'StevenUniverse:S04E20-Room for Ruby (Leg)', 121, 0),
(137, 'http://cdn1us.denofgeek.com/sites/denofgeekus/files/2017/05/steven-universe-lion-4-alternate-ending.png', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtELTBKQ3NmaFc3bTQ', 'StevenUniverse:S04E21-Lion 4 Alternate Ending (Leg)', 122, 1),
(138, 'http://cdn1us.denofgeek.com/sites/denofgeekus/files/2017/05/steven-universe-doug-out.png', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtESEtsR0I4RXBBTDg', 'StevenUniverse:S04E22-Doug Out (Leg)', 123, 2),
(139, 'http://cdn2us.denofgeek.com/sites/denofgeekus/files/2017/05/steven-universe-the-good-lars.png', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtEdlctOVVubHhiUlU', 'StevenUniverse:S04E23-The Good Lars (Leg)', 124, 0),
(140, 'http://cdn1us.denofgeek.com/sites/denofgeekus/files/styles/article_width/public/2017/05/steven-universe-aquamarine.png', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtESktqLUNUd29hTUU', 'StevenUniverse:S04E24-Are You My Dad?(Leg)', 125, 0),
(141, 'http://i.imgur.com/W8zdytA.png', 'https://drive.google.com/file/d/1oEPXHzSkwRYJhm0U5g8WOy7Rr7wuX91i', 'StevenUniverse:S04E25-I Am My Mom (Leg)', 126, 0),
(142, 'https://i.ytimg.com/vi/FAkrou86Idc/maxresdefault.jpg', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtELXo4eVRYMFlfVW8', 'StevenUniverse:S05E01-Stuck Together (Leg)', 127, 0),
(143, 'http://ll-c.ooyala.com/e1/EwbmF2YjE60Cf_99l4sK58PnskkYkmb8/promo323992662', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtEMnV3OUpWOW45QjQ', 'StevenUniverse:S05E02-The Trial (Leg)', 128, 0),
(144, 'https://i.ytimg.com/vi/octV3-Uj63Q/maxresdefault.jpg', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtETE1ucXYxbEExU2s', 'StevenUniverse:S05E03-Off Colors (Leg)', 129, 4),
(145, 'http://thegeekiary.com/wp-content/uploads/2017/05/Off-Colors.jpg', 'https://drive.google.com/file/d/0Bxb9Hg5wwvtEUDI5RjhScjY0RzQ', 'StevenUniverse:S05E04-Lars’ Head (Leg)', 130, 8),
(146, '', 'https://drive.google.com/file/d/0B2byLPye8e38TWxsc0xzeEtOS1k', 'Steven Universe:  S00E00 - Piloto (EXTRA)', 0, 0),
(151, 'https://vignette.wikia.nocookie.net/stevenuniverso/images/0/0b/Dewey_Wins_titlecard.png/revision/latest?cb=20171005203846&path-prefix=pt-br', 'https://drive.google.com/file/d/1aFDtYD_cPTzWeWBd4KtPBkanAMP52HQB', 'Steven Universe: S05E05 - Dewey Wins (Leg)', 131, 0),
(152, 'https://stevenuniverseportugues.files.wordpress.com/2017/11/steven-universe-s05e07-gemcation-1080p-webrip-x264-srs-mkv_snapshot_00-22_2017-11-10_17-18-56.jpg?w=863&h=1&crop=1', 'https://drive.google.com/file/d/1HCdeWB4TBi3n_ZRq1YMjA7ivOB6SoOvU', 'Steven Universe:S05E06-Gemcation (Leg)', 132, 0),
(153, 'http://www.overlyanimated.com/wp-content/uploads/2017/11/su-nov10bomb_ep12.jpg', 'https://drive.google.com/file/d/1d2pLFp7nhkioX89Bwn3IVcBJ35ddpiOh', 'Steven Universe:S05E07-Raising the Barn (Leg)', 133, 0),
(154, 'http://www.overlyanimated.com/wp-content/uploads/2017/11/su-nov10bomb_ep4.jpg', 'https://drive.google.com/file/d/17qnvEcYg0p0zLCUq2mS4OEzcZd452sGT', 'Steven Universe:S05E08-Back to the Kindergarten (Leg)', 134, 0),
(155, 'http://thegeekiary.com/wp-content/uploads/2017/11/Sadie-Killer-00.jpg', 'https://drive.google.com/file/d/11h-eeGx1FTU-jd_y8GX3LySQseKOnWN7', 'Steven Universe:S05E09-Sadie Killer (Leg)', 135, 0),
(156, 'http://www.overlyanimated.com/wp-content/uploads/2017/11/su-nov10bomb_ep56.jpg', 'https://drive.google.com/file/d/1p08MQWqO0P3s08EZvOyf1BUlyp1BagXE', 'Steven Universe:S05E10-Kevin Party (Leg)', 136, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fanarts`
--

CREATE TABLE `fanarts` (
  `id` int(11) NOT NULL,
  `fanarts_img` varchar(400) NOT NULL,
  `fanarts_username` varchar(100) NOT NULL,
  `fanarts_descricao` varchar(1000) NOT NULL,
  `state` int(11) NOT NULL,
  `voto` int(11) NOT NULL,
  `comentarios` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `nota` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `notas`
--

INSERT INTO `notas` (`id`, `nota`) VALUES
(1, 'Olá pessoa, como vocês podem ver o site foi mudado vou citar algumas mudanças.. Bom primeiro agora ele vai contar com todos os eps do Rick and Morty e qualquer outro desenho que vocês topem colocar, bom agora também tem como vocês verem as referencias, como estão e etc. Bom foram adicionados um botão para S.U e outro para outros desenhos (Nesse caso Rick and Morty). Qualquer bug ou duvida só chamar no zap.<br><center><a style\'color:red\'> BJZ no corazaum Yan :3</center></a>.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `outros`
--

CREATE TABLE `outros` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `link` varchar(400) NOT NULL,
  `numero` int(11) NOT NULL,
  `acessos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `outros`
--

INSERT INTO `outros` (`id`, `tipo`, `nome`, `link`, `numero`, `acessos`) VALUES
(33, 'rickandmorty', 'Rick and Morty:S01E01 - Pilot', 'https://drive.google.com/file/d/0B2byLPye8e38U1ExbjRGZmxURUU', 1, 3),
(34, 'rickandmorty', 'Rick and Morty:S01E02 - Lawnmower Dog', 'https://drive.google.com/file/d/0B2byLPye8e38Q0N1N2lCV3Vzbms', 2, 1),
(35, 'rickandmorty', 'Rick and Morty:S01E03 - Anatomy Park', 'https://drive.google.com/file/d/0B2byLPye8e38QW5yV0twZlNDVnM', 3, 0),
(36, 'rickandmorty', 'Rick and Morty:S01E04 - M. Night Shaym-Aliens', 'https://drive.google.com/file/d/0B2byLPye8e38WVVPUV95OWJ5YWM', 4, 0),
(37, 'rickandmorty', 'Rick and Morty:S01E05 - Meeseeks and Destroy', 'https://drive.google.com/file/d/0B2byLPye8e38ZnB2aksyd1dnTG8', 5, 0),
(38, 'rickandmorty', 'Rick and Morty:S01E06 - Rick Potion #9', 'https://drive.google.com/file/d/0B2byLPye8e38R09oSnNmUFpSQVU', 6, 0),
(39, 'rickandmorty', 'Rick and Morty:S01E07 - Raising Gazorpazorp', 'https://drive.google.com/file/d/0B2byLPye8e38S3BwNm5CaWg3aGc', 7, 0),
(40, 'rickandmorty', 'Rick and Morty:S01E08 - Rixty Minutes', 'https://drive.google.com/file/d/0B2byLPye8e38WTctbUVZRnI5NG8', 8, 0),
(41, 'rickandmorty', 'Rick and Morty:S01E09 - Something Ricked This Way Comes', 'https://drive.google.com/file/d/0B2byLPye8e38R01HWTJUbDRyeVE', 9, 0),
(42, 'rickandmorty', 'Rick and Morty:S01E10 - Close Rick-counters of the Rick Kind', 'https://drive.google.com/file/d/0B2byLPye8e38emJ0VXhyOGNEdHM', 10, 0),
(43, 'rickandmorty', 'Rick and Morty:S01E11 - Ricksy Business', 'https://drive.google.com/file/d/0B2byLPye8e38bjF6WmdlWVFlQlE', 11, 0),
(44, 'rickandmorty', 'Rick and Morty:S02E01 - A Rickle in Time', 'https://drive.google.com/file/d/0B2byLPye8e38T1RhYVRnQVgzU28', 12, 0),
(51, 'rickandmorty', 'Rick and Morty:S02E02 - Mortynight Run', 'https://drive.google.com/file/d/0B2byLPye8e38WFlrYXZJalR0U0E', 13, 0),
(52, 'rickandmorty', 'Rick and Morty:S02E03 - Auto Erotic Assimilation ', 'https://drive.google.com/file/d/0B2byLPye8e38MmIzVTU1ZUJWdTA', 14, 0),
(53, 'rickandmorty', 'Rick and Morty:S02E04 - Total Rickall', 'https://drive.google.com/file/d/0B2byLPye8e38bHd2OTFMTGZkUXc', 15, 0),
(54, 'rickandmorty', 'Rick and Morty:S02E05 - Get Schwifty', 'https://drive.google.com/file/d/0B2byLPye8e38eXN2ZGdPcnFfdms', 16, 0),
(55, 'rickandmorty', 'Rick and Morty:S02E06 - The Ricks Must Be Crazy ', 'https://drive.google.com/file/d/0B2byLPye8e38clA3SnFXSUhwbFE', 17, 0),
(56, 'rickandmorty', 'Rick and Morty:S02E07 - Big Trouble in Little Sanchez ', 'https://drive.google.com/file/d/0B2byLPye8e38YTRrYVBtZ3NBbzA', 18, 0),
(59, 'rickandmorty', 'Rick and Morty:S02E08 - Interdimensional Cable 2: Tempting Fate', 'https://drive.google.com/file/d/0B2byLPye8e38WGVHZ21zLTI0WGM', 19, 0),
(60, 'rickandmorty', 'Rick and Morty:S02E09 - Look Who\'s Purging Now ', 'https://drive.google.com/file/d/0B2byLPye8e38NkdaZEhZWUI5RDA', 20, 0),
(61, 'rickandmorty', 'Rick and Morty:S02E10 - The Wedding Squanchers', 'https://drive.google.com/file/d/0B2byLPye8e38OFVZMThlUTJnSnM', 21, 0),
(62, 'rickandmorty', 'Rick and Morty:  S03E01 - The Rickshank Rickdemption (LEG)', 'https://drive.google.com/file/d/0B0Mfg_uLSQ2cTVA1akxrbC1DcUU', 22, 0),
(63, 'rickandmorty', 'Rick and Morty:  S03E02 - Rickmancing the Stone  (LEG)', 'https://drive.google.com/file/d/0B0Mfg_uLSQ2cOEgybTIwRTllaDg', 23, 0),
(64, 'rickandmorty', 'Rick and Morty:  S03E03 -  Pickle Rick (LEG)', 'https://drive.google.com/file/d/0B0Mfg_uLSQ2ccXljcmtFdXRUSVk', 24, 2),
(65, 'rickandmorty', 'Rick and Morty:  S03E04 - Vindicators 3! The Return of Worldender  (LEG)', 'https://drive.google.com/file/d/0B0Mfg_uLSQ2cdlpHZzJZMTJNUVE', 25, 0),
(66, 'rickandmorty', 'Rick and Morty:  S03E05 - The Wirly Dirly Conspiracy (LEG)', 'https://drive.google.com/file/d/0B0Mfg_uLSQ2cMkVvdXhsNlBoWTA', 26, 0),
(67, 'rickandmorty', 'Rick and Morty:  S03E06 - Rest and Ricklaxation (LEG)', 'https://drive.google.com/file/d/0B0Mfg_uLSQ2cTnIwZUJQOEJxYlU', 27, 0),
(68, 'rickandmorty', 'Rick and Morty: S03E07 - The Ricklantis Mixup (LEG)', 'https://drive.google.com/file/d/0B2byLPye8e38amdxZGpVUS1sVGc', 28, 0),
(69, 'rickandmorty', 'Rick and Morty:  S03E08 -  Morty\'s Mind Blowers  (LEG)', 'https://drive.google.com/file/d/0B2byLPye8e38Uk9LbG8xQ0ZOd3c', 29, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiket`
--

CREATE TABLE `tiket` (
  `id` int(11) NOT NULL,
  `id_ep` varchar(11) NOT NULL,
  `descricao` varchar(500) NOT NULL,
  `nome_ep` varchar(100) NOT NULL,
  `numero_ep` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `foto` varchar(300) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `rank` int(11) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `resolvido` varchar(100) NOT NULL,
  `data` varchar(20) NOT NULL,
  `referencia_cod` int(11) NOT NULL,
  `referencia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `foto`, `nome`, `rank`, `senha`, `token`, `usuario`, `resolvido`, `data`, `referencia_cod`, `referencia`) VALUES
(1, '1', 'Yan', 1, 'kjkszpj98', 'S2prc3pwajk4', 'yanjf', '4', '2018-03-14 21:20', 929, 5),
(2, '', 'Vinicius dos Santos ', 2, '127831', '', 'KimPanic', '1', '2017-09-13 15:07', 962313, 9),
(3, '', 'Gabriel', 2, '01001017', '', 'Tomato', '2', '2017-12-18 13:01', 892312, 8),
(4, '', 'Geraldo Henrique', 2, '123mudar', '', 'Geraldoc8', '0', '2017-11-14 22:42', 799689, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `visita`
--

CREATE TABLE `visita` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `visita`
--

INSERT INTO `visita` (`id`, `numero`) VALUES
(1, 140);

-- --------------------------------------------------------

--
-- Estrutura da tabela `visitantes`
--

CREATE TABLE `visitantes` (
  `id` int(11) NOT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `visitantes`
--

INSERT INTO `visitantes` (`id`, `ip`, `data`) VALUES
(1, '66.249.65.205', '2018-03-05 17:33'),
(2, '107.178.194.125', '2018-03-08 00:58'),
(3, '107.178.194.107', '2018-03-08 00:58'),
(4, '107.178.194.107', '2018-03-08 00:58'),
(5, '179.184.216.174', '2018-03-08 21:12'),
(6, '66.249.66.129', '2018-03-12 17:38'),
(7, '66.249.66.146', '2018-03-12 19:44'),
(8, '179.184.216.174', '2018-03-14 21:13'),
(9, '179.184.216.174', '2018-03-14 21:18'),
(10, '66.249.66.130', '2018-03-17 20:01'),
(11, '216.145.5.42', '2018-03-18 18:51'),
(12, '107.178.194.108', '2018-03-22 09:09'),
(13, '107.178.194.100', '2018-03-22 09:09'),
(14, '107.178.194.97', '2018-03-22 09:09'),
(15, '107.178.194.127', '2018-03-23 01:26'),
(16, '107.178.194.108', '2018-03-23 01:26'),
(17, '107.178.194.96', '2018-03-23 01:26'),
(18, '107.178.194.103', '2018-03-24 05:19'),
(19, '107.178.194.124', '2018-03-24 05:19'),
(20, '107.178.194.103', '2018-03-24 05:19'),
(21, '66.249.65.215', '2018-03-25 19:24'),
(22, '107.178.194.116', '2018-03-26 05:44'),
(23, '107.178.194.112', '2018-03-26 05:44'),
(24, '107.178.194.112', '2018-03-26 05:44'),
(25, '66.249.73.17', '2018-03-28 21:34'),
(26, '66.249.73.2', '2018-03-29 00:03'),
(27, '107.178.194.123', '2018-03-29 07:01'),
(28, '107.178.194.123', '2018-03-29 07:01'),
(29, '107.178.194.123', '2018-03-29 07:01'),
(30, '191.180.115.136', '2018-04-01 16:44'),
(31, '107.178.195.128', '2018-04-02 07:33'),
(32, '107.178.195.142', '2018-04-02 07:33'),
(33, '107.178.195.157', '2018-04-02 07:33'),
(34, '216.145.17.190', '2018-04-05 13:36'),
(35, '107.178.195.138', '2018-04-07 04:16'),
(36, '107.178.195.139', '2018-04-07 04:16'),
(37, '107.178.195.138', '2018-04-07 04:16'),
(38, '66.249.64.82', '2018-04-08 06:44'),
(39, '66.249.64.73', '2018-04-09 05:02'),
(40, '66.249.64.86', '2018-04-10 21:56'),
(41, '107.178.195.135', '2018-04-13 21:38'),
(42, '107.178.195.135', '2018-04-13 21:38'),
(43, '107.178.195.142', '2018-04-13 21:38'),
(44, '189.13.130.121', '2018-04-15 20:27'),
(45, '189.13.130.121', '2018-04-15 20:28'),
(46, '189.13.130.121', '2018-04-15 20:31'),
(47, '189.13.130.121', '2018-04-15 20:32'),
(48, '2607:5300:60:97c6::', '2018-04-15 20:32'),
(49, '2607:5300:60:97c6::', '2018-04-15 20:32'),
(50, '66.102.8.213', '2018-04-15 20:32'),
(51, '2607:5300:60:97c6::', '2018-04-15 20:32'),
(52, '2607:5300:60:97c6::', '2018-04-15 20:32'),
(53, '66.102.8.202', '2018-04-15 20:32'),
(54, '189.13.130.121', '2018-04-15 20:32'),
(55, '189.13.130.121', '2018-04-15 20:33'),
(56, '2607:5300:60:97c6::', '2018-04-15 20:33'),
(57, '2607:5300:60:97c6::', '2018-04-15 20:33'),
(58, '2607:5300:60:97c6::', '2018-04-15 20:34'),
(59, '2607:5300:60:97c6::', '2018-04-15 20:34'),
(60, '2607:5300:60:97c6::', '2018-04-15 20:46'),
(61, '2607:5300:60:97c6::', '2018-04-15 20:46'),
(62, '66.249.66.132', '2018-04-19 05:10'),
(63, '107.178.195.137', '2018-04-21 07:11'),
(64, '107.178.195.135', '2018-04-21 07:11'),
(65, '107.178.195.137', '2018-04-21 07:12'),
(66, '64.246.165.150', '2018-04-23 14:14'),
(67, '66.249.66.144', '2018-04-24 11:05'),
(68, '66.249.66.201', '2018-04-28 17:46'),
(69, '66.249.66.94', '2018-04-29 05:09'),
(70, '54.200.183.105', '2018-05-03 12:36'),
(71, '66.249.64.204', '2018-05-05 13:05'),
(72, '66.249.64.198', '2018-05-05 13:32'),
(73, '66.249.64.200', '2018-05-05 13:32'),
(74, '107.178.195.129', '2018-05-06 17:34'),
(75, '107.178.195.158', '2018-05-06 17:34'),
(76, '107.178.195.129', '2018-05-06 17:34'),
(77, '66.249.64.205', '2018-05-09 01:59'),
(78, '64.246.165.190', '2018-05-11 13:14'),
(79, '107.178.195.150', '2018-05-14 03:45'),
(80, '107.178.195.152', '2018-05-14 03:45'),
(81, '107.178.195.149', '2018-05-14 03:45'),
(82, '107.178.195.136', '2018-05-19 14:32'),
(83, '107.178.195.140', '2018-05-19 14:32'),
(84, '107.178.195.140', '2018-05-19 14:32'),
(85, '177.177.238.136', '2018-05-20 15:53'),
(86, '177.177.238.136', '2018-05-20 15:53'),
(87, '35.187.132.94', '2018-05-23 21:19'),
(88, '35.187.132.94', '2018-05-23 21:19'),
(89, '35.187.132.80', '2018-05-23 21:19'),
(90, '66.249.66.200', '2018-05-24 16:54'),
(91, '66.249.66.201', '2018-05-24 22:55'),
(92, '35.187.132.81', '2018-05-28 04:49'),
(93, '35.187.132.81', '2018-05-28 04:49'),
(94, '35.187.132.83', '2018-05-28 04:49'),
(95, '64.246.165.10', '2018-05-29 14:53'),
(96, '66.249.66.196', '2018-05-30 09:48'),
(97, '191.255.73.148', '2018-05-30 11:48'),
(98, '35.187.132.94', '2018-06-01 15:13'),
(99, '35.187.132.90', '2018-06-01 15:13'),
(100, '35.187.132.90', '2018-06-01 15:13'),
(101, '35.187.132.80', '2018-06-06 01:09'),
(102, '35.187.132.84', '2018-06-06 01:09'),
(103, '35.187.132.80', '2018-06-06 01:09'),
(104, '66.249.66.210', '2018-06-07 21:10'),
(105, '35.187.132.70', '2018-06-10 08:18'),
(106, '35.187.132.90', '2018-06-10 08:18'),
(107, '35.187.132.90', '2018-06-10 08:19'),
(108, '35.187.132.82', '2018-06-14 14:22'),
(109, '35.187.132.84', '2018-06-14 14:22'),
(110, '64.246.161.190', '2018-06-16 14:58'),
(111, '66.249.64.202', '2018-06-18 04:51'),
(112, '35.187.132.79', '2018-06-18 21:13'),
(113, '35.187.132.77', '2018-06-18 21:13'),
(114, '35.187.132.75', '2018-06-18 21:13'),
(115, '107.178.194.97', '2018-06-23 07:55'),
(116, '107.178.194.100', '2018-06-23 07:55'),
(117, '107.178.194.100', '2018-06-23 07:55'),
(118, '107.178.194.104', '2018-06-27 15:51'),
(119, '107.178.194.127', '2018-06-27 15:51'),
(120, '107.178.194.108', '2018-06-27 15:51'),
(121, '66.249.66.220', '2018-06-28 10:29'),
(122, '66.249.66.207', '2018-06-28 10:32'),
(123, '35.187.132.68', '2018-07-03 18:18'),
(124, '35.187.132.92', '2018-07-03 18:18'),
(125, '35.187.132.65', '2018-07-03 18:18'),
(126, '186.213.122.19', '2018-07-04 14:29'),
(127, '186.213.122.19', '2018-07-04 14:29'),
(128, '186.213.122.19', '2018-07-04 14:30'),
(129, '64.246.178.34', '2018-07-04 15:34'),
(130, '66.249.66.25', '2018-07-14 19:32'),
(131, '107.178.194.110', '2018-07-18 05:19'),
(132, '107.178.194.108', '2018-07-18 05:19'),
(133, '107.178.194.101', '2018-07-18 05:19'),
(134, '177.11.39.92', '2018-07-22 10:44'),
(135, '64.246.165.190', '2018-07-22 11:12'),
(136, '66.249.66.210', '2018-08-15 05:02'),
(137, '189.107.110.206', '2018-08-19 15:50'),
(138, '66.249.66.28', '2018-09-17 21:28'),
(139, '66.249.66.20', '2018-09-17 21:43'),
(140, '66.249.66.20', '2018-09-17 21:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentario`
--
ALTER TABLE `comentario`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `epsodios`
--
ALTER TABLE `epsodios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fanarts`
--
ALTER TABLE `fanarts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `outros`
--
ALTER TABLE `outros`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitantes`
--
ALTER TABLE `visitantes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentario`
--
ALTER TABLE `comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `epsodios`
--
ALTER TABLE `epsodios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `fanarts`
--
ALTER TABLE `fanarts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `outros`
--
ALTER TABLE `outros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `visita`
--
ALTER TABLE `visita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitantes`
--
ALTER TABLE `visitantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
