-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.0.0.5975
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura para tabela interwordcup.apostas
CREATE TABLE IF NOT EXISTS `apostas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cupom_id` bigint(20) unsigned NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `torneio_id` bigint(20) unsigned NOT NULL,
  `fase_id` bigint(20) unsigned DEFAULT NULL,
  `rodada_id` bigint(20) unsigned DEFAULT NULL,
  `grupo_id` bigint(20) unsigned DEFAULT NULL,
  `jogo_id` bigint(20) unsigned DEFAULT NULL,
  `selecao_id` bigint(20) unsigned DEFAULT NULL,
  `jogador_id` bigint(20) unsigned DEFAULT NULL,
  `conteudo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`conteudo`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `apostas_cupom_id_foreign` (`cupom_id`),
  KEY `apostas_torneio_id_foreign` (`torneio_id`),
  KEY `apostas_fase_id_foreign` (`fase_id`),
  KEY `apostas_rodada_id_foreign` (`rodada_id`),
  KEY `apostas_grupo_id_foreign` (`grupo_id`),
  KEY `apostas_jogo_id_foreign` (`jogo_id`),
  KEY `apostas_selecao_id_foreign` (`selecao_id`),
  KEY `apostas_jogador_id_foreign` (`jogador_id`),
  CONSTRAINT `apostas_cupom_id_foreign` FOREIGN KEY (`cupom_id`) REFERENCES `cupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `apostas_fase_id_foreign` FOREIGN KEY (`fase_id`) REFERENCES `fases` (`id`) ON DELETE SET NULL,
  CONSTRAINT `apostas_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE SET NULL,
  CONSTRAINT `apostas_jogador_id_foreign` FOREIGN KEY (`jogador_id`) REFERENCES `jogadores` (`id`) ON DELETE SET NULL,
  CONSTRAINT `apostas_jogo_id_foreign` FOREIGN KEY (`jogo_id`) REFERENCES `jogos` (`id`) ON DELETE SET NULL,
  CONSTRAINT `apostas_rodada_id_foreign` FOREIGN KEY (`rodada_id`) REFERENCES `rodadas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `apostas_selecao_id_foreign` FOREIGN KEY (`selecao_id`) REFERENCES `selecoes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `apostas_torneio_id_foreign` FOREIGN KEY (`torneio_id`) REFERENCES `torneios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.apostas: ~96 rows (aproximadamente)
/*!40000 ALTER TABLE `apostas` DISABLE KEYS */;
INSERT INTO `apostas` (`id`, `cupom_id`, `tipo`, `torneio_id`, `fase_id`, `rodada_id`, `grupo_id`, `jogo_id`, `selecao_id`, `jogador_id`, `conteudo`, `created_at`, `updated_at`) VALUES
	(108, 8, 'placar_jogo_grupos', 1, 1, 1, 1, 1, NULL, NULL, '{"placar_mandante":2,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:09:07', '2026-05-19 20:09:17'),
	(109, 7, 'placar_jogo_grupos', 1, 1, 1, 1, 1, NULL, NULL, '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:09:08', '2026-05-19 20:09:08'),
	(110, 7, 'placar_jogo_grupos', 1, 1, 1, 1, 2, NULL, NULL, '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:09:20', '2026-05-19 20:09:20'),
	(111, 7, 'placar_jogo_grupos', 1, 1, 1, 2, 3, NULL, NULL, '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:09:23', '2026-05-19 20:09:23'),
	(112, 7, 'placar_jogo_grupos', 1, 1, 1, 4, 4, NULL, NULL, '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:09:29', '2026-05-19 20:09:29'),
	(113, 6, 'placar_jogo_grupos', 1, 1, 1, 1, 1, NULL, NULL, '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:09:57', '2026-05-19 20:09:57'),
	(114, 7, 'placar_jogo_grupos', 1, 1, 1, 3, 5, NULL, NULL, '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:09:57', '2026-05-19 20:09:57'),
	(115, 7, 'placar_jogo_grupos', 1, 1, 1, 4, 6, NULL, NULL, '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:10:03', '2026-05-19 20:10:03'),
	(116, 7, 'placar_jogo_grupos', 1, 1, 1, 3, 7, NULL, NULL, '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:10:07', '2026-05-19 20:10:07'),
	(117, 7, 'placar_jogo_grupos', 1, 1, 1, 2, 8, NULL, NULL, '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:10:12', '2026-05-19 20:10:12'),
	(118, 7, 'placar_jogo_grupos', 1, 1, 1, 5, 9, NULL, NULL, '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:10:26', '2026-05-19 20:10:26'),
	(119, 7, 'placar_jogo_grupos', 1, 1, 1, 5, 10, NULL, NULL, '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:11:15', '2026-05-19 20:11:15'),
	(120, 7, 'placar_jogo_grupos', 1, 1, 1, 6, 11, NULL, NULL, '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:11:43', '2026-05-19 20:11:48'),
	(121, 7, 'placar_jogo_grupos', 1, 1, 1, 6, 12, NULL, NULL, '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:11:55', '2026-05-19 20:11:55'),
	(122, 7, 'placar_jogo_grupos', 1, 1, 1, 8, 13, NULL, NULL, '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:12:52', '2026-05-19 20:12:55'),
	(123, 7, 'placar_jogo_grupos', 1, 1, 1, 8, 14, NULL, NULL, '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:13:05', '2026-05-19 20:13:05'),
	(124, 7, 'placar_jogo_grupos', 1, 1, 1, 7, 15, NULL, NULL, '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:13:19', '2026-05-19 20:13:22'),
	(125, 7, 'placar_jogo_grupos', 1, 1, 1, 7, 16, NULL, NULL, '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:13:25', '2026-05-19 20:13:25'),
	(126, 7, 'placar_jogo_grupos', 1, 1, 1, 9, 17, NULL, NULL, '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:13:34', '2026-05-19 20:13:34'),
	(127, 7, 'placar_jogo_grupos', 1, 1, 1, 9, 18, NULL, NULL, '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:13:39', '2026-05-19 20:13:39'),
	(128, 7, 'placar_jogo_grupos', 1, 1, 1, 10, 19, NULL, NULL, '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:13:47', '2026-05-19 20:13:47'),
	(129, 7, 'placar_jogo_grupos', 1, 1, 1, 10, 20, NULL, NULL, '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:13:51', '2026-05-19 20:13:54'),
	(130, 7, 'placar_jogo_grupos', 1, 1, 1, 12, 21, NULL, NULL, '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:14:01', '2026-05-19 20:14:01'),
	(131, 7, 'placar_jogo_grupos', 1, 1, 1, 12, 22, NULL, NULL, '{"placar_mandante":2,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:14:07', '2026-05-19 20:14:07'),
	(132, 7, 'placar_jogo_grupos', 1, 1, 1, 11, 23, NULL, NULL, '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:14:07', '2026-05-19 20:14:07'),
	(133, 7, 'placar_jogo_grupos', 1, 1, 1, 11, 24, NULL, NULL, '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 20:14:11', '2026-05-19 20:14:11');
/*!40000 ALTER TABLE `apostas` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` bigint(20) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.cache: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('inter-world-cup-cache-29d342b094935af8280c77091c50a77e', 'i:1;', 1774610714),
	('inter-world-cup-cache-29d342b094935af8280c77091c50a77e:timer', 'i:1774610714;', 1774610714),
	('inter-world-cup-cache-2f8397f39b63146b4aedd49604419518', 'i:1;', 1775139153),
	('inter-world-cup-cache-2f8397f39b63146b4aedd49604419518:timer', 'i:1775139153;', 1775139153),
	('inter-world-cup-cache-6e4052e46d6a23f01ee38796aa4844af', 'i:1;', 1779221013),
	('inter-world-cup-cache-6e4052e46d6a23f01ee38796aa4844af:timer', 'i:1779221013;', 1779221013);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` bigint(20) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.cache_locks: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.cupons
CREATE TABLE IF NOT EXISTS `cupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) unsigned NOT NULL,
  `pedido_checkout_id` bigint(20) unsigned DEFAULT NULL,
  `codigo` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inativo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cupons_codigo_unique` (`codigo`),
  KEY `cupons_usuario_id_foreign` (`usuario_id`),
  KEY `cupons_pedido_checkout_id_foreign` (`pedido_checkout_id`),
  CONSTRAINT `cupons_pedido_checkout_id_foreign` FOREIGN KEY (`pedido_checkout_id`) REFERENCES `pedidos_checkout` (`id`) ON DELETE SET NULL,
  CONSTRAINT `cupons_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.cupons: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `cupons` DISABLE KEYS */;
INSERT INTO `cupons` (`id`, `usuario_id`, `pedido_checkout_id`, `codigo`, `status`, `created_at`, `updated_at`) VALUES
	(6, 3, 6, 'PNTN6PZC2V', 'ativo', '2026-05-19 20:08:08', '2026-05-19 20:08:08'),
	(7, 5, 7, 'BHTGJXCIIG', 'ativo', '2026-05-19 20:08:20', '2026-05-19 20:08:20'),
	(8, 4, 8, 'XRAUR9F8GW', 'ativo', '2026-05-19 20:08:32', '2026-05-19 20:08:32');
/*!40000 ALTER TABLE `cupons` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.eventos_pontuacao
CREATE TABLE IF NOT EXISTS `eventos_pontuacao` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cupom_id` bigint(20) unsigned NOT NULL,
  `regra_pontuacao_id` bigint(20) unsigned NOT NULL,
  `jogo_id` bigint(20) unsigned DEFAULT NULL,
  `aposta_id` bigint(20) unsigned DEFAULT NULL,
  `pontos` int(11) NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `eventos_pontuacao_cupom_id_foreign` (`cupom_id`),
  KEY `eventos_pontuacao_regra_pontuacao_id_foreign` (`regra_pontuacao_id`),
  KEY `eventos_pontuacao_jogo_id_foreign` (`jogo_id`),
  KEY `eventos_pontuacao_aposta_id_foreign` (`aposta_id`),
  CONSTRAINT `eventos_pontuacao_aposta_id_foreign` FOREIGN KEY (`aposta_id`) REFERENCES `apostas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `eventos_pontuacao_cupom_id_foreign` FOREIGN KEY (`cupom_id`) REFERENCES `cupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `eventos_pontuacao_jogo_id_foreign` FOREIGN KEY (`jogo_id`) REFERENCES `jogos` (`id`) ON DELETE SET NULL,
  CONSTRAINT `eventos_pontuacao_regra_pontuacao_id_foreign` FOREIGN KEY (`regra_pontuacao_id`) REFERENCES `regras_pontuacao` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.eventos_pontuacao: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `eventos_pontuacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos_pontuacao` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.failed_jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.fases
CREATE TABLE IF NOT EXISTS `fases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `torneio_id` bigint(20) unsigned NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `ordem` tinyint(3) unsigned NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `data_fechamento` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fases_torneio_id_slug_unique` (`torneio_id`,`slug`),
  CONSTRAINT `fases_torneio_id_foreign` FOREIGN KEY (`torneio_id`) REFERENCES `torneios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.fases: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `fases` DISABLE KEYS */;
INSERT INTO `fases` (`id`, `torneio_id`, `nome`, `slug`, `ordem`, `tipo`, `data_fechamento`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Fase de Grupos', 'fase_de_grupos', 1, 'grupos', '2026-06-11 12:00:00', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(2, 1, 'Oitavas de Final', 'oitavas_de_final', 3, 'eliminatoria', '2026-07-03 12:00:00', '2026-03-26 20:08:57', '2026-03-29 15:01:17'),
	(3, 1, 'Quartas de Final', 'quartas_de_final', 4, 'eliminatoria', '2026-07-09 12:00:00', '2026-03-26 20:08:57', '2026-03-29 15:01:17'),
	(4, 1, 'Semifinais', 'semifinais', 5, 'eliminatoria', '2026-07-14 12:00:00', '2026-03-26 20:08:57', '2026-03-29 15:01:17'),
	(5, 1, 'Terceiro Lugar', 'terceiro_lugar', 6, 'final', '2026-07-18 12:00:00', '2026-03-26 20:08:57', '2026-03-29 15:01:17'),
	(6, 1, 'Final', 'final', 7, 'final', '2026-07-19 12:00:00', '2026-03-26 20:08:57', '2026-03-29 15:01:17'),
	(7, 1, 'Round of 32', 'round_of_32', 2, 'eliminatoria', '2026-06-28 12:00:00', '2026-03-29 15:01:17', '2026-03-29 15:01:17');
/*!40000 ALTER TABLE `fases` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.grupos
CREATE TABLE IF NOT EXISTS `grupos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `torneio_id` bigint(20) unsigned NOT NULL,
  `nome` varchar(255) NOT NULL,
  `ordem` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grupos_torneio_id_nome_unique` (`torneio_id`,`nome`),
  CONSTRAINT `grupos_torneio_id_foreign` FOREIGN KEY (`torneio_id`) REFERENCES `torneios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.grupos: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `grupos` DISABLE KEYS */;
INSERT INTO `grupos` (`id`, `torneio_id`, `nome`, `ordem`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Grupo A', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(2, 1, 'Grupo B', 2, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(3, 1, 'Grupo C', 3, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(4, 1, 'Grupo D', 4, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(5, 1, 'Grupo E', 5, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(6, 1, 'Grupo F', 6, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(7, 1, 'Grupo G', 7, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(8, 1, 'Grupo H', 8, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(9, 1, 'Grupo I', 9, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(10, 1, 'Grupo J', 10, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(11, 1, 'Grupo K', 11, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(12, 1, 'Grupo L', 12, '2026-03-26 20:08:57', '2026-03-26 20:08:57');
/*!40000 ALTER TABLE `grupos` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.jobs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.job_batches: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.jogadores
CREATE TABLE IF NOT EXISTS `jogadores` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `selecao_id` bigint(20) unsigned NOT NULL,
  `nome` varchar(255) NOT NULL,
  `apelido` varchar(255) DEFAULT NULL,
  `posicao` varchar(255) DEFAULT NULL,
  `numero_camisa` tinyint(3) unsigned DEFAULT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jogadores_selecao_id_foreign` (`selecao_id`),
  CONSTRAINT `jogadores_selecao_id_foreign` FOREIGN KEY (`selecao_id`) REFERENCES `selecoes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.jogadores: ~96 rows (aproximadamente)
/*!40000 ALTER TABLE `jogadores` DISABLE KEYS */;
INSERT INTO `jogadores` (`id`, `selecao_id`, `nome`, `apelido`, `posicao`, `numero_camisa`, `ativo`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Camisa 9 MEX', 'Artilheiro MEX', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(2, 1, 'Camisa 10 MEX', 'Meia MEX', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(3, 2, 'Camisa 9 RSA', 'Artilheiro RSA', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(4, 2, 'Camisa 10 RSA', 'Meia RSA', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(5, 3, 'Camisa 9 KOR', 'Artilheiro KOR', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(6, 3, 'Camisa 10 KOR', 'Meia KOR', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(7, 4, 'Camisa 9 UD4', 'Artilheiro UD4', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(8, 4, 'Camisa 10 UD4', 'Meia UD4', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(9, 5, 'Camisa 9 CAN', 'Artilheiro CAN', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(10, 5, 'Camisa 10 CAN', 'Meia CAN', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(11, 6, 'Camisa 9 UA1', 'Artilheiro UA1', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(12, 6, 'Camisa 10 UA1', 'Meia UA1', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(13, 7, 'Camisa 9 QAT', 'Artilheiro QAT', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(14, 7, 'Camisa 10 QAT', 'Meia QAT', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(15, 8, 'Camisa 9 SUI', 'Artilheiro SUI', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(16, 8, 'Camisa 10 SUI', 'Meia SUI', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(17, 9, 'Camisa 9 BRA', 'Artilheiro BRA', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(18, 9, 'Camisa 10 BRA', 'Meia BRA', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(19, 10, 'Camisa 9 MAR', 'Artilheiro MAR', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(20, 10, 'Camisa 10 MAR', 'Meia MAR', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(21, 11, 'Camisa 9 HAI', 'Artilheiro HAI', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(22, 11, 'Camisa 10 HAI', 'Meia HAI', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(23, 12, 'Camisa 9 SCO', 'Artilheiro SCO', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(24, 12, 'Camisa 10 SCO', 'Meia SCO', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(25, 13, 'Camisa 9 USA', 'Artilheiro USA', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(26, 13, 'Camisa 10 USA', 'Meia USA', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(27, 14, 'Camisa 9 PAR', 'Artilheiro PAR', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(28, 14, 'Camisa 10 PAR', 'Meia PAR', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(29, 15, 'Camisa 9 AUS', 'Artilheiro AUS', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(30, 15, 'Camisa 10 AUS', 'Meia AUS', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(31, 16, 'Camisa 9 UC3', 'Artilheiro UC3', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(32, 16, 'Camisa 10 UC3', 'Meia UC3', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(33, 17, 'Camisa 9 GER', 'Artilheiro GER', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(34, 17, 'Camisa 10 GER', 'Meia GER', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(35, 18, 'Camisa 9 CUW', 'Artilheiro CUW', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(36, 18, 'Camisa 10 CUW', 'Meia CUW', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(37, 19, 'Camisa 9 CIV', 'Artilheiro CIV', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(38, 19, 'Camisa 10 CIV', 'Meia CIV', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(39, 20, 'Camisa 9 ECU', 'Artilheiro ECU', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(40, 20, 'Camisa 10 ECU', 'Meia ECU', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(41, 21, 'Camisa 9 NED', 'Artilheiro NED', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(42, 21, 'Camisa 10 NED', 'Meia NED', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(43, 22, 'Camisa 9 JPN', 'Artilheiro JPN', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(44, 22, 'Camisa 10 JPN', 'Meia JPN', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(45, 23, 'Camisa 9 UB2', 'Artilheiro UB2', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(46, 23, 'Camisa 10 UB2', 'Meia UB2', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(47, 24, 'Camisa 9 TUN', 'Artilheiro TUN', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(48, 24, 'Camisa 10 TUN', 'Meia TUN', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(49, 25, 'Camisa 9 BEL', 'Artilheiro BEL', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(50, 25, 'Camisa 10 BEL', 'Meia BEL', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(51, 26, 'Camisa 9 EGY', 'Artilheiro EGY', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(52, 26, 'Camisa 10 EGY', 'Meia EGY', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(53, 27, 'Camisa 9 IRN', 'Artilheiro IRN', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(54, 27, 'Camisa 10 IRN', 'Meia IRN', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(55, 28, 'Camisa 9 NZL', 'Artilheiro NZL', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(56, 28, 'Camisa 10 NZL', 'Meia NZL', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(57, 29, 'Camisa 9 ESP', 'Artilheiro ESP', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(58, 29, 'Camisa 10 ESP', 'Meia ESP', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(59, 30, 'Camisa 9 CPV', 'Artilheiro CPV', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(60, 30, 'Camisa 10 CPV', 'Meia CPV', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(61, 31, 'Camisa 9 KSA', 'Artilheiro KSA', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(62, 31, 'Camisa 10 KSA', 'Meia KSA', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(63, 32, 'Camisa 9 URU', 'Artilheiro URU', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(64, 32, 'Camisa 10 URU', 'Meia URU', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(65, 33, 'Camisa 9 FRA', 'Artilheiro FRA', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(66, 33, 'Camisa 10 FRA', 'Meia FRA', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(67, 34, 'Camisa 9 SEN', 'Artilheiro SEN', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(68, 34, 'Camisa 10 SEN', 'Meia SEN', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(69, 35, 'Camisa 9 IC2', 'Artilheiro IC2', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(70, 35, 'Camisa 10 IC2', 'Meia IC2', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(71, 36, 'Camisa 9 NOR', 'Artilheiro NOR', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(72, 36, 'Camisa 10 NOR', 'Meia NOR', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(73, 37, 'Camisa 9 ARG', 'Artilheiro ARG', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(74, 37, 'Camisa 10 ARG', 'Meia ARG', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(75, 38, 'Camisa 9 ALG', 'Artilheiro ALG', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(76, 38, 'Camisa 10 ALG', 'Meia ALG', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(77, 39, 'Camisa 9 AUT', 'Artilheiro AUT', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(78, 39, 'Camisa 10 AUT', 'Meia AUT', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(79, 40, 'Camisa 9 JOR', 'Artilheiro JOR', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(80, 40, 'Camisa 10 JOR', 'Meia JOR', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(81, 41, 'Camisa 9 POR', 'Artilheiro POR', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(82, 41, 'Camisa 10 POR', 'Meia POR', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(83, 42, 'Camisa 9 IC1', 'Artilheiro IC1', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(84, 42, 'Camisa 10 IC1', 'Meia IC1', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(85, 43, 'Camisa 9 UZB', 'Artilheiro UZB', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(86, 43, 'Camisa 10 UZB', 'Meia UZB', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(87, 44, 'Camisa 9 COL', 'Artilheiro COL', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(88, 44, 'Camisa 10 COL', 'Meia COL', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(89, 45, 'Camisa 9 ENG', 'Artilheiro ENG', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(90, 45, 'Camisa 10 ENG', 'Meia ENG', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(91, 46, 'Camisa 9 CRO', 'Artilheiro CRO', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(92, 46, 'Camisa 10 CRO', 'Meia CRO', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(93, 47, 'Camisa 9 GHA', 'Artilheiro GHA', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(94, 47, 'Camisa 10 GHA', 'Meia GHA', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(95, 48, 'Camisa 9 PAN', 'Artilheiro PAN', 'Atacante', 9, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(96, 48, 'Camisa 10 PAN', 'Meia PAN', 'Meia', 10, 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57');
/*!40000 ALTER TABLE `jogadores` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.jogos
CREATE TABLE IF NOT EXISTS `jogos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `torneio_id` bigint(20) unsigned NOT NULL,
  `fase_id` bigint(20) unsigned NOT NULL,
  `rodada_id` bigint(20) unsigned DEFAULT NULL,
  `grupo_id` bigint(20) unsigned DEFAULT NULL,
  `selecao_mandante_id` bigint(20) unsigned NOT NULL,
  `selecao_visitante_id` bigint(20) unsigned NOT NULL,
  `data_hora_inicio` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ordem_na_fase` smallint(5) unsigned NOT NULL DEFAULT 1,
  `status` varchar(255) NOT NULL DEFAULT 'agendado',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jogos_torneio_id_foreign` (`torneio_id`),
  KEY `jogos_fase_id_foreign` (`fase_id`),
  KEY `jogos_rodada_id_foreign` (`rodada_id`),
  KEY `jogos_grupo_id_foreign` (`grupo_id`),
  KEY `jogos_selecao_mandante_id_foreign` (`selecao_mandante_id`),
  KEY `jogos_selecao_visitante_id_foreign` (`selecao_visitante_id`),
  CONSTRAINT `jogos_fase_id_foreign` FOREIGN KEY (`fase_id`) REFERENCES `fases` (`id`) ON DELETE CASCADE,
  CONSTRAINT `jogos_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE SET NULL,
  CONSTRAINT `jogos_rodada_id_foreign` FOREIGN KEY (`rodada_id`) REFERENCES `rodadas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `jogos_selecao_mandante_id_foreign` FOREIGN KEY (`selecao_mandante_id`) REFERENCES `selecoes` (`id`),
  CONSTRAINT `jogos_selecao_visitante_id_foreign` FOREIGN KEY (`selecao_visitante_id`) REFERENCES `selecoes` (`id`),
  CONSTRAINT `jogos_torneio_id_foreign` FOREIGN KEY (`torneio_id`) REFERENCES `torneios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.jogos: ~104 rows (aproximadamente)
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` (`id`, `torneio_id`, `fase_id`, `rodada_id`, `grupo_id`, `selecao_mandante_id`, `selecao_visitante_id`, `data_hora_inicio`, `ordem_na_fase`, `status`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 1, 1, 1, 2, '2026-03-29 20:27:24', 1, 'encerrado', '2026-03-26 20:08:57', '2026-03-29 23:27:24'),
	(2, 1, 1, 1, 1, 3, 4, '2026-03-29 20:27:36', 2, 'encerrado', '2026-03-26 20:08:57', '2026-03-29 23:27:36'),
	(3, 1, 1, 1, 2, 5, 6, '2026-03-29 20:27:56', 3, 'encerrado', '2026-03-26 20:08:57', '2026-03-29 23:27:56'),
	(4, 1, 1, 1, 4, 13, 14, '2026-03-29 20:28:05', 4, 'encerrado', '2026-03-26 20:08:57', '2026-03-29 23:28:05'),
	(5, 1, 1, 1, 3, 11, 12, '2026-06-13 15:00:00', 5, 'agendado', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(6, 1, 1, 1, 4, 15, 16, '2026-06-13 15:00:00', 6, 'agendado', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(7, 1, 1, 1, 3, 9, 10, '2026-06-13 18:00:00', 7, 'agendado', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(8, 1, 1, 1, 2, 7, 8, '2026-06-13 21:00:00', 8, 'agendado', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(9, 1, 1, 1, 5, 19, 20, '2026-06-14 15:00:00', 9, 'agendado', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(10, 1, 1, 1, 5, 17, 18, '2026-06-14 18:00:00', 10, 'agendado', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(11, 1, 1, 1, 6, 21, 22, '2026-06-14 18:00:00', 11, 'agendado', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(12, 1, 1, 1, 6, 23, 24, '2026-06-14 21:00:00', 12, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(13, 1, 1, 1, 8, 31, 32, '2026-06-15 15:00:00', 13, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(14, 1, 1, 1, 8, 29, 30, '2026-06-15 18:00:00', 14, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(15, 1, 1, 1, 7, 27, 28, '2026-06-15 18:00:00', 15, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(16, 1, 1, 1, 7, 25, 26, '2026-06-15 21:00:00', 16, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(17, 1, 1, 1, 9, 33, 34, '2026-06-16 15:00:00', 17, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(18, 1, 1, 1, 9, 35, 36, '2026-06-16 18:00:00', 18, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(19, 1, 1, 1, 10, 37, 38, '2026-06-16 18:00:00', 19, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(20, 1, 1, 1, 10, 39, 40, '2026-06-16 21:00:00', 20, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(21, 1, 1, 1, 12, 47, 48, '2026-06-17 15:00:00', 21, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(22, 1, 1, 1, 12, 45, 46, '2026-06-17 18:00:00', 22, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(23, 1, 1, 1, 11, 41, 42, '2026-06-17 18:00:00', 23, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(24, 1, 1, 1, 11, 43, 44, '2026-06-17 21:00:00', 24, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(25, 1, 1, 2, 1, 4, 2, '2026-06-18 15:00:00', 25, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(26, 1, 1, 2, 2, 8, 6, '2026-06-18 18:00:00', 26, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(27, 1, 1, 2, 2, 5, 7, '2026-06-18 18:00:00', 27, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(28, 1, 1, 2, 1, 1, 3, '2026-06-18 21:00:00', 28, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(29, 1, 1, 2, 3, 9, 11, '2026-06-19 15:00:00', 29, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(30, 1, 1, 2, 3, 12, 10, '2026-06-19 15:00:00', 30, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(31, 1, 1, 2, 4, 16, 14, '2026-06-19 18:00:00', 31, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(32, 1, 1, 2, 4, 13, 15, '2026-06-19 21:00:00', 32, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(33, 1, 1, 2, 5, 17, 19, '2026-06-20 15:00:00', 33, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(34, 1, 1, 2, 5, 20, 18, '2026-06-20 18:00:00', 34, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(35, 1, 1, 2, 6, 21, 23, '2026-06-20 18:00:00', 35, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(36, 1, 1, 2, 6, 24, 22, '2026-06-20 21:00:00', 36, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(37, 1, 1, 2, 8, 32, 30, '2026-06-21 15:00:00', 37, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(38, 1, 1, 2, 8, 29, 31, '2026-06-21 18:00:00', 38, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(39, 1, 1, 2, 7, 25, 27, '2026-06-21 18:00:00', 39, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(40, 1, 1, 2, 7, 28, 26, '2026-06-21 21:00:00', 40, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(41, 1, 1, 2, 9, 36, 34, '2026-06-22 15:00:00', 41, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(42, 1, 1, 2, 9, 33, 35, '2026-06-22 18:00:00', 42, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(43, 1, 1, 2, 10, 37, 39, '2026-06-22 18:00:00', 43, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(44, 1, 1, 2, 10, 40, 38, '2026-06-22 21:00:00', 44, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(45, 1, 1, 2, 12, 45, 47, '2026-06-23 15:00:00', 45, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(46, 1, 1, 2, 12, 48, 46, '2026-06-23 18:00:00', 46, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(47, 1, 1, 2, 11, 41, 43, '2026-06-23 18:00:00', 47, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(48, 1, 1, 2, 11, 44, 42, '2026-06-23 21:00:00', 48, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(49, 1, 1, 3, 3, 12, 9, '2026-06-24 18:00:00', 49, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(50, 1, 1, 3, 3, 10, 11, '2026-06-24 18:00:00', 50, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(51, 1, 1, 3, 2, 8, 5, '2026-06-24 18:00:00', 51, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(52, 1, 1, 3, 2, 6, 7, '2026-06-24 18:00:00', 52, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(53, 1, 1, 3, 1, 4, 1, '2026-06-24 21:00:00', 53, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(54, 1, 1, 3, 1, 2, 3, '2026-06-24 21:00:00', 54, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(55, 1, 1, 3, 5, 18, 19, '2026-06-25 18:00:00', 55, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(56, 1, 1, 3, 5, 20, 17, '2026-06-25 18:00:00', 56, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(57, 1, 1, 3, 6, 22, 23, '2026-06-25 18:00:00', 57, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(58, 1, 1, 3, 6, 24, 21, '2026-06-25 18:00:00', 58, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(59, 1, 1, 3, 4, 16, 13, '2026-06-25 21:00:00', 59, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(60, 1, 1, 3, 4, 14, 15, '2026-06-25 21:00:00', 60, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(61, 1, 1, 3, 9, 36, 33, '2026-06-26 18:00:00', 61, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(62, 1, 1, 3, 9, 34, 35, '2026-06-26 18:00:00', 62, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(63, 1, 1, 3, 7, 26, 27, '2026-06-26 18:00:00', 63, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(64, 1, 1, 3, 7, 28, 25, '2026-06-26 18:00:00', 64, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(65, 1, 1, 3, 8, 30, 31, '2026-06-26 21:00:00', 65, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(66, 1, 1, 3, 8, 32, 29, '2026-06-26 21:00:00', 66, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(67, 1, 1, 3, 12, 48, 45, '2026-06-27 18:00:00', 67, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(68, 1, 1, 3, 12, 46, 47, '2026-06-27 18:00:00', 68, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(69, 1, 1, 3, 10, 38, 39, '2026-06-27 18:00:00', 69, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(70, 1, 1, 3, 10, 40, 37, '2026-06-27 18:00:00', 70, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(71, 1, 1, 3, 11, 44, 41, '2026-06-27 21:00:00', 71, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(72, 1, 1, 3, 11, 42, 43, '2026-06-27 21:00:00', 72, 'agendado', '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(73, 1, 7, NULL, NULL, 17, 8, '2026-06-28 16:00:00', 1, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(74, 1, 7, NULL, NULL, 33, 34, '2026-06-28 20:00:00', 2, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(75, 1, 7, NULL, NULL, 1, 5, '2026-06-29 16:00:00', 3, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(76, 1, 7, NULL, NULL, 9, 22, '2026-06-29 20:00:00', 4, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(77, 1, 7, NULL, NULL, 41, 46, '2026-06-30 16:00:00', 5, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(78, 1, 7, NULL, NULL, 29, 32, '2026-06-30 20:00:00', 6, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(79, 1, 7, NULL, NULL, 13, 15, '2026-07-01 16:00:00', 7, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(80, 1, 7, NULL, NULL, 25, 44, '2026-07-01 20:00:00', 8, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(81, 1, 7, NULL, NULL, 37, 10, '2026-07-02 16:00:00', 9, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(82, 1, 7, NULL, NULL, 21, 3, '2026-07-02 20:00:00', 10, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(83, 1, 7, NULL, NULL, 45, 14, '2026-07-03 16:00:00', 11, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(84, 1, 7, NULL, NULL, 36, 26, '2026-07-03 20:00:00', 12, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(85, 1, 7, NULL, NULL, 20, 7, '2026-07-04 16:00:00', 13, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(86, 1, 7, NULL, NULL, 39, 19, '2026-07-04 20:00:00', 14, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(87, 1, 7, NULL, NULL, 38, 48, '2026-07-05 16:00:00', 15, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(88, 1, 7, NULL, NULL, 47, 24, '2026-07-05 20:00:00', 16, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(89, 1, 2, NULL, NULL, 17, 33, '2026-07-06 16:00:00', 1, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(90, 1, 2, NULL, NULL, 1, 9, '2026-07-06 20:00:00', 2, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(91, 1, 2, NULL, NULL, 41, 29, '2026-07-07 16:00:00', 3, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(92, 1, 2, NULL, NULL, 13, 25, '2026-07-07 20:00:00', 4, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(93, 1, 2, NULL, NULL, 37, 21, '2026-07-08 16:00:00', 5, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(94, 1, 2, NULL, NULL, 45, 36, '2026-07-08 20:00:00', 6, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(95, 1, 2, NULL, NULL, 20, 39, '2026-07-09 16:00:00', 7, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(96, 1, 2, NULL, NULL, 38, 47, '2026-07-09 20:00:00', 8, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(97, 1, 3, NULL, NULL, 17, 9, '2026-07-10 16:00:00', 1, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(98, 1, 3, NULL, NULL, 41, 25, '2026-07-10 20:00:00', 2, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(99, 1, 3, NULL, NULL, 37, 45, '2026-07-11 16:00:00', 3, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(100, 1, 3, NULL, NULL, 39, 38, '2026-07-11 20:00:00', 4, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(101, 1, 4, NULL, NULL, 9, 41, '2026-07-14 16:00:00', 1, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(102, 1, 4, NULL, NULL, 37, 38, '2026-07-15 16:00:00', 2, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(103, 1, 5, NULL, NULL, 41, 38, '2026-07-18 15:00:00', 1, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(104, 1, 6, NULL, NULL, 9, 37, '2026-07-19 16:00:00', 1, 'agendado', '2026-03-29 15:01:18', '2026-03-29 15:01:18');
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.logs_apostas
CREATE TABLE IF NOT EXISTS `logs_apostas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cupom_id` bigint(20) unsigned NOT NULL,
  `aposta_id` bigint(20) unsigned DEFAULT NULL,
  `usuario_id` bigint(20) unsigned NOT NULL,
  `acao` varchar(255) NOT NULL,
  `conteudo_anterior` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conteudo_anterior`)),
  `conteudo_novo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conteudo_novo`)),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `logs_apostas_cupom_id_foreign` (`cupom_id`),
  KEY `logs_apostas_aposta_id_foreign` (`aposta_id`),
  KEY `logs_apostas_usuario_id_foreign` (`usuario_id`),
  CONSTRAINT `logs_apostas_aposta_id_foreign` FOREIGN KEY (`aposta_id`) REFERENCES `apostas` (`id`) ON DELETE SET NULL,
  CONSTRAINT `logs_apostas_cupom_id_foreign` FOREIGN KEY (`cupom_id`) REFERENCES `cupons` (`id`) ON DELETE CASCADE,
  CONSTRAINT `logs_apostas_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5544 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.logs_apostas: ~4.691 rows (aproximadamente)
/*!40000 ALTER TABLE `logs_apostas` DISABLE KEYS */;
INSERT INTO `logs_apostas` (`id`, `cupom_id`, `aposta_id`, `usuario_id`, `acao`, `conteudo_anterior`, `conteudo_novo`, `created_at`) VALUES
	(5025, 8, 108, 4, 'criada', NULL, '{"placar_mandante":1,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:07'),
	(5026, 7, 109, 5, 'criada', NULL, '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:08'),
	(5027, 8, 108, 4, 'editada', '{"placar_mandante":1,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:12'),
	(5028, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:15'),
	(5029, 8, 108, 4, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:17'),
	(5030, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:20'),
	(5031, 7, 110, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:20'),
	(5032, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:23'),
	(5033, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:23'),
	(5034, 7, 111, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:23'),
	(5035, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:26'),
	(5036, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:26'),
	(5037, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:26'),
	(5038, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:29'),
	(5039, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:29'),
	(5040, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:29'),
	(5041, 7, 112, 5, 'criada', NULL, '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:29'),
	(5042, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:50'),
	(5043, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:50'),
	(5044, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:50'),
	(5045, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:50'),
	(5046, 6, 113, 3, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:57'),
	(5047, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:57'),
	(5048, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:57'),
	(5049, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:57'),
	(5050, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:57'),
	(5051, 7, 114, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:09:57'),
	(5052, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:03'),
	(5053, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:03'),
	(5054, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:03'),
	(5055, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:03'),
	(5056, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:03'),
	(5057, 7, 115, 5, 'criada', NULL, '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:03'),
	(5058, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:07'),
	(5059, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:07'),
	(5060, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:07'),
	(5061, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:07'),
	(5062, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:07'),
	(5063, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:07'),
	(5064, 7, 116, 5, 'criada', NULL, '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:07'),
	(5065, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:09'),
	(5066, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:09'),
	(5067, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:09'),
	(5068, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:09'),
	(5069, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:09'),
	(5070, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:09'),
	(5071, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:09'),
	(5072, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:12'),
	(5073, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:12'),
	(5074, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:12'),
	(5075, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:12'),
	(5076, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:12'),
	(5077, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:12'),
	(5078, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:12'),
	(5079, 7, 117, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:12'),
	(5080, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:26'),
	(5081, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:26'),
	(5082, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:26'),
	(5083, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:26'),
	(5084, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:26'),
	(5085, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:26'),
	(5086, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:26'),
	(5087, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:26'),
	(5088, 7, 118, 5, 'criada', NULL, '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:10:26'),
	(5089, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:08'),
	(5090, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:08'),
	(5091, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:08'),
	(5092, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:08'),
	(5093, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:08'),
	(5094, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:08'),
	(5095, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:08'),
	(5096, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:08'),
	(5097, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:08'),
	(5098, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:12'),
	(5099, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:12'),
	(5100, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:12'),
	(5101, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:12'),
	(5102, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:12'),
	(5103, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:12'),
	(5104, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:12'),
	(5105, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:12'),
	(5106, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:12'),
	(5107, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5108, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5109, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5110, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5111, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5112, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5113, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5114, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5115, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5116, 7, 119, 5, 'criada', NULL, '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:15'),
	(5117, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5118, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5119, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5120, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5121, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5122, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5123, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5124, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5125, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5126, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:40'),
	(5127, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5128, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5129, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5130, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5131, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5132, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5133, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5134, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5135, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5136, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5137, 7, 120, 5, 'criada', NULL, '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:43'),
	(5138, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5139, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5140, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5141, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5142, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5143, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5144, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5145, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5146, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5147, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5148, 7, 120, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:48'),
	(5149, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5150, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5151, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5152, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5153, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5154, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5155, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5156, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5157, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5158, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5159, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:52'),
	(5160, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5161, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5162, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5163, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5164, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5165, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5166, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5167, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5168, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5169, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5170, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5171, 7, 121, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:11:55'),
	(5172, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5173, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5174, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5175, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5176, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5177, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5178, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5179, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5180, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5181, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5182, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5183, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:29'),
	(5184, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5185, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5186, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5187, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5188, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5189, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5190, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5191, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5192, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5193, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5194, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5195, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5196, 7, 122, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:52'),
	(5197, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5198, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5199, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5200, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5201, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5202, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5203, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5204, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5205, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5206, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5207, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5208, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5209, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:55'),
	(5210, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5211, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5212, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5213, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5214, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5215, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5216, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5217, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5218, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5219, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5220, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5221, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5222, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:12:58'),
	(5223, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:00'),
	(5224, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5225, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5226, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5227, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5228, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5229, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5230, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5231, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5232, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5233, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5234, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5235, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:01'),
	(5236, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5237, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5238, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5239, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5240, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5241, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5242, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5243, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5244, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5245, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5246, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5247, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5248, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5249, 7, 123, 5, 'criada', NULL, '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:05'),
	(5250, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5251, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5252, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5253, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5254, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5255, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5256, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5257, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5258, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5259, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5260, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5261, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5262, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5263, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:15'),
	(5264, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:18'),
	(5265, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:18'),
	(5266, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:18'),
	(5267, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5268, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5269, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5270, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5271, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5272, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5273, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5274, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5275, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5276, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5277, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5278, 7, 124, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:19'),
	(5279, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5280, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5281, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5282, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5283, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5284, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5285, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5286, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5287, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5288, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5289, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5290, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5291, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:21'),
	(5292, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:22'),
	(5293, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:22'),
	(5294, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5295, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5296, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5297, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5298, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5299, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5300, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5301, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5302, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5303, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5304, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5305, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5306, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5307, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5308, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5309, 7, 125, 5, 'criada', NULL, '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:25'),
	(5310, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5311, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5312, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5313, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5314, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5315, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5316, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5317, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5318, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5319, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5320, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5321, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5322, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5323, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5324, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5325, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:31'),
	(5326, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5327, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5328, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5329, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5330, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5331, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5332, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5333, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5334, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5335, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5336, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5337, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5338, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5339, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5340, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5341, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5342, 7, 126, 5, 'criada', NULL, '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:34'),
	(5343, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5344, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5345, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5346, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5347, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5348, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5349, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5350, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5351, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5352, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5353, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5354, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5355, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5356, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5357, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5358, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5359, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5360, 7, 127, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:39'),
	(5361, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5362, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5363, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5364, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5365, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5366, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5367, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5368, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5369, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5370, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5371, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5372, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5373, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5374, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5375, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5376, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5377, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5378, 7, 127, 5, 'editada', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:42'),
	(5379, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5380, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5381, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5382, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5383, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5384, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5385, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5386, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5387, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5388, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5389, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5390, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5391, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5392, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5393, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5394, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5395, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5396, 7, 127, 5, 'editada', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:45'),
	(5397, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5398, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5399, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5400, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5401, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5402, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5403, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5404, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5405, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5406, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5407, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5408, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5409, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5410, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5411, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5412, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5413, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5414, 7, 127, 5, 'editada', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5415, 7, 128, 5, 'criada', NULL, '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:47'),
	(5416, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5417, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5418, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5419, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5420, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5421, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5422, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5423, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5424, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5425, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5426, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5427, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5428, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5429, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5430, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5431, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5432, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5433, 7, 127, 5, 'editada', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5434, 7, 128, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5435, 7, 129, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:51'),
	(5436, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5437, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5438, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5439, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5440, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5441, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5442, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5443, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5444, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5445, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5446, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5447, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5448, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5449, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5450, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5451, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5452, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5453, 7, 127, 5, 'editada', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5454, 7, 128, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5455, 7, 129, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:54'),
	(5456, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5457, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5458, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5459, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5460, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5461, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5462, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5463, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5464, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5465, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5466, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5467, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5468, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5469, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5470, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5471, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5472, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5473, 7, 127, 5, 'editada', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5474, 7, 128, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5475, 7, 129, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:13:57'),
	(5476, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5477, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5478, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5479, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5480, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5481, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5482, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5483, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5484, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5485, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5486, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5487, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5488, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5489, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5490, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5491, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5492, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5493, 7, 127, 5, 'editada', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5494, 7, 128, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5495, 7, 129, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5496, 7, 130, 5, 'criada', NULL, '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:01'),
	(5497, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5498, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5499, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5500, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5501, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5502, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5503, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5504, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5505, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5506, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5507, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5508, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5509, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5510, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5511, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5512, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5513, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5514, 7, 127, 5, 'editada', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5515, 7, 128, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5516, 7, 129, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5517, 7, 130, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5518, 7, 131, 5, 'criada', NULL, '{"placar_mandante":2,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5519, 7, 132, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:07'),
	(5520, 7, 109, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5521, 7, 110, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5522, 7, 111, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5523, 7, 112, 5, 'editada', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5524, 7, 114, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5525, 7, 115, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5526, 7, 116, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5527, 7, 117, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5528, 7, 118, 5, 'editada', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":1,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5529, 7, 119, 5, 'editada', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":8,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5530, 7, 120, 5, 'editada', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":2,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5531, 7, 121, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5532, 7, 122, 5, 'editada', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5533, 7, 123, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5534, 7, 124, 5, 'editada', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5535, 7, 125, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5536, 7, 126, 5, 'editada', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":5,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5537, 7, 127, 5, 'editada', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":4,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5538, 7, 128, 5, 'editada', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":4,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5539, 7, 129, 5, 'editada', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5540, 7, 130, 5, 'editada', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":3,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5541, 7, 131, 5, 'editada', '{"placar_mandante":2,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":2,"placar_visitante":1,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5542, 7, 132, 5, 'editada', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '{"placar_mandante":0,"placar_visitante":0,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11'),
	(5543, 7, 133, 5, 'criada', NULL, '{"placar_mandante":0,"placar_visitante":3,"penal_mandante":null,"penal_visitante":null,"selecao_classificada_id":null}', '2026-05-19 17:14:11');
/*!40000 ALTER TABLE `logs_apostas` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.migrations: ~10 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1),
	(2, '0001_01_01_000001_create_cache_table', 1),
	(3, '0001_01_01_000002_create_jobs_table', 1),
	(4, '2026_03_26_120000_create_pedidos_checkout_e_cupons_table', 1),
	(5, '2026_03_26_120100_create_estrutura_torneio_table', 1),
	(6, '2026_03_26_120200_create_apostas_e_pontuacao_table', 1),
	(7, '2026_03_26_150715_create_personal_access_tokens_table', 1),
	(8, '2026_03_26_180000_create_resultados_torneio_table', 1),
	(9, '2026_03_26_200000_add_telefone_to_usuarios_table', 1),
	(10, '2026_03_26_200001_add_valor_cupom_to_torneios_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.password_reset_tokens: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.pedidos_checkout
CREATE TABLE IF NOT EXISTS `pedidos_checkout` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `usuario_id` bigint(20) unsigned NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pendente',
  `referencia_checkout` varchar(255) DEFAULT NULL,
  `pago_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_checkout_usuario_id_foreign` (`usuario_id`),
  CONSTRAINT `pedidos_checkout_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.pedidos_checkout: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `pedidos_checkout` DISABLE KEYS */;
INSERT INTO `pedidos_checkout` (`id`, `usuario_id`, `valor`, `status`, `referencia_checkout`, `pago_at`, `created_at`, `updated_at`) VALUES
	(6, 3, 10.00, 'pago', '0567da69-2dad-4a03-9c95-3597b61c8615', '2026-05-19 20:08:08', '2026-05-19 20:08:07', '2026-05-19 20:08:08'),
	(7, 5, 10.00, 'pago', '521147c9-cb97-4fa4-b940-31c4eae44e9e', '2026-05-19 20:08:20', '2026-05-19 20:08:20', '2026-05-19 20:08:20'),
	(8, 4, 10.00, 'pago', '6ad93f1a-5ecf-47b3-b47c-a858c6e1df53', '2026-05-19 20:08:32', '2026-05-19 20:08:31', '2026-05-19 20:08:32');
/*!40000 ALTER TABLE `pedidos_checkout` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  KEY `personal_access_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.personal_access_tokens: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
	(7, 'App\\Models\\Usuario', 1, 'web', '7ccc760fb51cb95430d578d58311bfdc352ba2efba50c4911c68787ac68ab8df', '["*"]', '2026-04-02 15:53:21', NULL, '2026-04-02 14:11:36', '2026-04-02 15:53:21'),
	(8, 'App\\Models\\Usuario', 2, 'web', '2a86eabea682b45dfffffae8a03dc875cad1ec75e4d84150339493cbced59a98', '["*"]', '2026-05-19 19:48:04', NULL, '2026-05-19 19:46:46', '2026-05-19 19:48:04'),
	(9, 'App\\Models\\Usuario', 3, 'web', 'f94044c2be08c60297855b764cec9a859912c127402356550c4aa40063cbe701', '["*"]', '2026-05-19 20:10:02', NULL, '2026-05-19 20:02:52', '2026-05-19 20:10:02'),
	(10, 'App\\Models\\Usuario', 4, 'web', '845dc64258a628c18653b7c5988a8ea86d9c51005f3cacdb157fa2e14b497061', '["*"]', '2026-05-19 20:09:19', NULL, '2026-05-19 20:07:39', '2026-05-19 20:09:19'),
	(11, 'App\\Models\\Usuario', 5, 'web', '7cd3323ce8e40a0e0da88976d8067e4463113a6f3934c19d4881948df9bd7586', '["*"]', '2026-05-19 20:14:13', NULL, '2026-05-19 20:08:05', '2026-05-19 20:14:13');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.pontuacoes_cupons
CREATE TABLE IF NOT EXISTS `pontuacoes_cupons` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cupom_id` bigint(20) unsigned NOT NULL,
  `pontuacao_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `quantidade_placares_exatos` int(10) unsigned NOT NULL DEFAULT 0,
  `quantidade_classificados_corretos` int(10) unsigned NOT NULL DEFAULT 0,
  `quantidade_palpites_finais_corretos` int(10) unsigned NOT NULL DEFAULT 0,
  `ultimo_recalculo_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pontuacoes_cupons_cupom_id_unique` (`cupom_id`),
  CONSTRAINT `pontuacoes_cupons_cupom_id_foreign` FOREIGN KEY (`cupom_id`) REFERENCES `cupons` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.pontuacoes_cupons: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `pontuacoes_cupons` DISABLE KEYS */;
INSERT INTO `pontuacoes_cupons` (`id`, `cupom_id`, `pontuacao_total`, `quantidade_placares_exatos`, `quantidade_classificados_corretos`, `quantidade_palpites_finais_corretos`, `ultimo_recalculo_at`, `created_at`, `updated_at`) VALUES
	(4, 8, 0.00, 0, 0, 0, '2026-05-19 20:09:17', '2026-05-19 20:09:07', '2026-05-19 20:09:17'),
	(5, 7, 0.00, 0, 0, 0, '2026-05-19 20:14:12', '2026-05-19 20:09:08', '2026-05-19 20:14:12'),
	(6, 6, 0.00, 0, 0, 0, '2026-05-19 20:09:57', '2026-05-19 20:09:57', '2026-05-19 20:09:57');
/*!40000 ALTER TABLE `pontuacoes_cupons` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.regras_pontuacao
CREATE TABLE IF NOT EXISTS `regras_pontuacao` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `torneio_id` bigint(20) unsigned NOT NULL,
  `fase_id` bigint(20) unsigned DEFAULT NULL,
  `chave` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text DEFAULT NULL,
  `pontos` int(11) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `regras_pontuacao_unica` (`torneio_id`,`fase_id`,`chave`),
  KEY `regras_pontuacao_fase_id_foreign` (`fase_id`),
  CONSTRAINT `regras_pontuacao_fase_id_foreign` FOREIGN KEY (`fase_id`) REFERENCES `fases` (`id`) ON DELETE SET NULL,
  CONSTRAINT `regras_pontuacao_torneio_id_foreign` FOREIGN KEY (`torneio_id`) REFERENCES `torneios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.regras_pontuacao: ~16 rows (aproximadamente)
/*!40000 ALTER TABLE `regras_pontuacao` DISABLE KEYS */;
INSERT INTO `regras_pontuacao` (`id`, `torneio_id`, `fase_id`, `chave`, `nome`, `descricao`, `pontos`, `ativo`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'placar_exato_fase_grupos', 'Placar Exato', 'Acertou o placar exato do jogo', 10, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(2, 1, 1, 'vencedor_e_acertou_gols', 'Vencedor + Acertou Gols BR', 'Acertou o vencedor e a quantidade de gols de um dos times', 7, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(3, 1, 1, 'apenas_vencedor', 'Apenas O Vencedor', 'Acertou apenas quem venceu ou que empatou', 5, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(4, 1, 1, 'empate_sem_placar', 'Empate Sem Placar Exato', 'Acertou que houve empate mas errou o placar', 5, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(5, 1, 1, 'acertou_1_placar', 'Acertou 1 Placar, Errou O Resultado', 'Acertou a quantidade de gols de um time mas errou o resultado', 2, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(6, 1, 1, 'errou_tudo', 'Errou Tudo', 'Errou tudo', 0, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(7, 1, NULL, 'primeiro_colocado_grupo', 'Primeiro colocado do grupo', 'Acertou o primeiro colocado de um grupo', 8, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(8, 1, NULL, 'segundo_colocado_grupo', 'Segundo colocado do grupo', 'Acertou o segundo colocado de um grupo', 6, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(9, 1, NULL, 'artilheiro', 'Artilheiro', 'Acertou o artilheiro da copa', 20, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(10, 1, 2, 'classificado_mata_mata', 'Classificado oitavas', 'Acertou quem avancou nas oitavas', 6, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(11, 1, 3, 'classificado_mata_mata', 'Classificado quartas', 'Acertou quem avancou nas quartas', 8, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(12, 1, 4, 'classificado_mata_mata', 'Classificado semifinal', 'Acertou quem avancou na semifinal', 10, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(13, 1, 6, 'classificado_mata_mata', 'Campeao da final', 'Acertou o campeao', 10, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(14, 1, NULL, 'campeao', 'Campeao', 'Acertou o campeao da copa', 25, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(15, 1, NULL, 'vice_campeao', 'Vice-campeao', 'Acertou o vice-campeao', 15, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(16, 1, NULL, 'terceiro_colocado', 'Terceiro colocado', 'Acertou o terceiro colocado', 12, 1, '2026-03-26 20:08:58', '2026-03-26 20:08:58'),
	(17, 1, 7, 'classificado_mata_mata', 'Classificado Round of 32', 'Acertou quem avancou no Round of 32', 4, 1, '2026-03-29 15:01:18', '2026-03-29 15:01:18'),
	(18, 1, 5, 'classificado_mata_mata', 'Vencedor terceiro lugar', 'Acertou quem venceu a disputa de terceiro lugar', 8, 1, '2026-03-29 15:01:18', '2026-03-29 15:01:18');
/*!40000 ALTER TABLE `regras_pontuacao` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.resultados_jogos
CREATE TABLE IF NOT EXISTS `resultados_jogos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `jogo_id` bigint(20) unsigned NOT NULL,
  `placar_mandante` tinyint(3) unsigned DEFAULT NULL,
  `placar_visitante` tinyint(3) unsigned DEFAULT NULL,
  `selecao_classificada_id` bigint(20) unsigned DEFAULT NULL,
  `encerrado_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resultados_jogos_jogo_id_unique` (`jogo_id`),
  KEY `resultados_jogos_selecao_classificada_id_foreign` (`selecao_classificada_id`),
  CONSTRAINT `resultados_jogos_jogo_id_foreign` FOREIGN KEY (`jogo_id`) REFERENCES `jogos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resultados_jogos_selecao_classificada_id_foreign` FOREIGN KEY (`selecao_classificada_id`) REFERENCES `selecoes` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.resultados_jogos: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `resultados_jogos` DISABLE KEYS */;
/*!40000 ALTER TABLE `resultados_jogos` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.resultados_torneio
CREATE TABLE IF NOT EXISTS `resultados_torneio` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `torneio_id` bigint(20) unsigned NOT NULL,
  `campeao_selecao_id` bigint(20) unsigned DEFAULT NULL,
  `vice_campeao_selecao_id` bigint(20) unsigned DEFAULT NULL,
  `terceiro_colocado_selecao_id` bigint(20) unsigned DEFAULT NULL,
  `artilheiro_jogador_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resultados_torneio_torneio_id_unique` (`torneio_id`),
  KEY `resultados_torneio_campeao_selecao_id_foreign` (`campeao_selecao_id`),
  KEY `resultados_torneio_vice_campeao_selecao_id_foreign` (`vice_campeao_selecao_id`),
  KEY `resultados_torneio_terceiro_colocado_selecao_id_foreign` (`terceiro_colocado_selecao_id`),
  KEY `resultados_torneio_artilheiro_jogador_id_foreign` (`artilheiro_jogador_id`),
  CONSTRAINT `resultados_torneio_artilheiro_jogador_id_foreign` FOREIGN KEY (`artilheiro_jogador_id`) REFERENCES `jogadores` (`id`) ON DELETE SET NULL,
  CONSTRAINT `resultados_torneio_campeao_selecao_id_foreign` FOREIGN KEY (`campeao_selecao_id`) REFERENCES `selecoes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `resultados_torneio_terceiro_colocado_selecao_id_foreign` FOREIGN KEY (`terceiro_colocado_selecao_id`) REFERENCES `selecoes` (`id`) ON DELETE SET NULL,
  CONSTRAINT `resultados_torneio_torneio_id_foreign` FOREIGN KEY (`torneio_id`) REFERENCES `torneios` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resultados_torneio_vice_campeao_selecao_id_foreign` FOREIGN KEY (`vice_campeao_selecao_id`) REFERENCES `selecoes` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.resultados_torneio: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `resultados_torneio` DISABLE KEYS */;
INSERT INTO `resultados_torneio` (`id`, `torneio_id`, `campeao_selecao_id`, `vice_campeao_selecao_id`, `terceiro_colocado_selecao_id`, `artilheiro_jogador_id`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, NULL, NULL, NULL, '2026-03-26 20:08:58', '2026-03-26 20:08:58');
/*!40000 ALTER TABLE `resultados_torneio` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.rodadas
CREATE TABLE IF NOT EXISTS `rodadas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fase_id` bigint(20) unsigned NOT NULL,
  `nome` varchar(255) NOT NULL,
  `ordem` tinyint(3) unsigned NOT NULL,
  `data_fechamento` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rodadas_fase_id_foreign` (`fase_id`),
  CONSTRAINT `rodadas_fase_id_foreign` FOREIGN KEY (`fase_id`) REFERENCES `fases` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.rodadas: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `rodadas` DISABLE KEYS */;
INSERT INTO `rodadas` (`id`, `fase_id`, `nome`, `ordem`, `data_fechamento`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Rodada 1', 1, '2026-06-11 12:00:00', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(2, 1, 'Rodada 2', 2, '2026-06-18 12:00:00', '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(3, 1, 'Rodada 3', 3, '2026-06-24 12:00:00', '2026-03-26 20:08:57', '2026-03-26 20:08:57');
/*!40000 ALTER TABLE `rodadas` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.selecoes
CREATE TABLE IF NOT EXISTS `selecoes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `torneio_id` bigint(20) unsigned NOT NULL,
  `grupo_id` bigint(20) unsigned DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `sigla` varchar(3) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `ativo` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `selecoes_torneio_id_sigla_unique` (`torneio_id`,`sigla`),
  UNIQUE KEY `selecoes_torneio_id_slug_unique` (`torneio_id`,`slug`),
  KEY `selecoes_grupo_id_foreign` (`grupo_id`),
  CONSTRAINT `selecoes_grupo_id_foreign` FOREIGN KEY (`grupo_id`) REFERENCES `grupos` (`id`) ON DELETE SET NULL,
  CONSTRAINT `selecoes_torneio_id_foreign` FOREIGN KEY (`torneio_id`) REFERENCES `torneios` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.selecoes: ~48 rows (aproximadamente)
/*!40000 ALTER TABLE `selecoes` DISABLE KEYS */;
INSERT INTO `selecoes` (`id`, `torneio_id`, `grupo_id`, `nome`, `sigla`, `slug`, `ativo`, `created_at`, `updated_at`) VALUES
	(1, 1, 1, 'Mexico', 'MEX', 'mexico', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(2, 1, 1, 'Africa do Sul', 'RSA', 'africa-do-sul', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(3, 1, 1, 'Coreia do Sul', 'KOR', 'coreia-do-sul', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(4, 1, 1, 'A Definir (Repescagem UEFA D)', 'UD4', 'a-definir-repescagem-uefa-d', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(5, 1, 2, 'Canada', 'CAN', 'canada', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(6, 1, 2, 'A Definir (Repescagem UEFA A)', 'UA1', 'a-definir-repescagem-uefa-a', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(7, 1, 2, 'Qatar', 'QAT', 'qatar', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(8, 1, 2, 'Suica', 'SUI', 'suica', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(9, 1, 3, 'Brasil', 'BRA', 'brasil', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(10, 1, 3, 'Marrocos', 'MAR', 'marrocos', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(11, 1, 3, 'Haiti', 'HAI', 'haiti', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(12, 1, 3, 'Escocia', 'SCO', 'escocia', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(13, 1, 4, 'Estados Unidos', 'USA', 'estados-unidos', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(14, 1, 4, 'Paraguai', 'PAR', 'paraguai', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(15, 1, 4, 'Australia', 'AUS', 'australia', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(16, 1, 4, 'A Definir (Repescagem UEFA C)', 'UC3', 'a-definir-repescagem-uefa-c', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(17, 1, 5, 'Alemanha', 'GER', 'alemanha', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(18, 1, 5, 'Curacao', 'CUW', 'curacao', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(19, 1, 5, 'Costa do Marfim', 'CIV', 'costa-do-marfim', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(20, 1, 5, 'Equador', 'ECU', 'equador', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(21, 1, 6, 'Holanda', 'NED', 'holanda', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(22, 1, 6, 'Japao', 'JPN', 'japao', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(23, 1, 6, 'A Definir (Repescagem UEFA B)', 'UB2', 'a-definir-repescagem-uefa-b', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(24, 1, 6, 'Tunisia', 'TUN', 'tunisia', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(25, 1, 7, 'Belgica', 'BEL', 'belgica', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(26, 1, 7, 'Egito', 'EGY', 'egito', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(27, 1, 7, 'Ira', 'IRN', 'ira', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(28, 1, 7, 'Nova Zelandia', 'NZL', 'nova-zelandia', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(29, 1, 8, 'Espanha', 'ESP', 'espanha', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(30, 1, 8, 'Cabo Verde', 'CPV', 'cabo-verde', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(31, 1, 8, 'Arabia Saudita', 'KSA', 'arabia-saudita', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(32, 1, 8, 'Uruguai', 'URU', 'uruguai', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(33, 1, 9, 'Franca', 'FRA', 'franca', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(34, 1, 9, 'Senegal', 'SEN', 'senegal', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(35, 1, 9, 'A Definir (Intercontinental 2)', 'IC2', 'a-definir-intercontinental-2', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(36, 1, 9, 'Noruega', 'NOR', 'noruega', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(37, 1, 10, 'Argentina', 'ARG', 'argentina', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(38, 1, 10, 'Argelia', 'ALG', 'argelia', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(39, 1, 10, 'Austria', 'AUT', 'austria', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(40, 1, 10, 'Jordania', 'JOR', 'jordania', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(41, 1, 11, 'Portugal', 'POR', 'portugal', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(42, 1, 11, 'A Definir (Intercontinental 1)', 'IC1', 'a-definir-intercontinental-1', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(43, 1, 11, 'Uzbequistao', 'UZB', 'uzbequistao', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(44, 1, 11, 'Colombia', 'COL', 'colombia', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(45, 1, 12, 'Inglaterra', 'ENG', 'inglaterra', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(46, 1, 12, 'Croacia', 'CRO', 'croacia', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(47, 1, 12, 'Gana', 'GHA', 'gana', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(48, 1, 12, 'Panama', 'PAN', 'panama', 1, '2026-03-26 20:08:57', '2026-03-26 20:08:57');
/*!40000 ALTER TABLE `selecoes` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `usuario_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_usuario_id_index` (`usuario_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.sessions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.torneios
CREATE TABLE IF NOT EXISTS `torneios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `edicao` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'rascunho',
  `data_inicio` timestamp NULL DEFAULT NULL,
  `data_fim` timestamp NULL DEFAULT NULL,
  `valor_cupom` decimal(10,2) NOT NULL DEFAULT 10.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.torneios: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `torneios` DISABLE KEYS */;
INSERT INTO `torneios` (`id`, `nome`, `edicao`, `status`, `data_inicio`, `data_fim`, `valor_cupom`, `created_at`, `updated_at`) VALUES
	(1, 'Inter World Cup', '2026', 'publicado', '2026-06-11 00:00:00', '2026-07-19 00:00:00', 10.00, '2026-03-26 20:08:57', '2026-03-26 20:08:57');
/*!40000 ALTER TABLE `torneios` ENABLE KEYS */;

-- Copiando estrutura para tabela interwordcup.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `perfil` varchar(255) NOT NULL DEFAULT 'usuario',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Copiando dados para a tabela interwordcup.usuarios: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nome`, `email`, `telefone`, `email_verified_at`, `password`, `perfil`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Administrador', 'admin@interworldcup.local', NULL, NULL, '$2y$12$rzZtOpAkdcAI71wuSPLxp.PY4.wLSwW5m4ZIliQKY2KkU8IVwc8lq', 'administrador', NULL, '2026-03-26 20:08:57', '2026-03-26 20:08:57'),
	(2, 'José Almir Sousa Cruz Filho', 'jose.filho@intermaritima.com.br', '+5571997200967', NULL, '$2y$12$hZVegOJA.gXuwr8daiIS7.8KedJkdfUMeQnClQr0wiD0DJOi6RXtq', 'usuario', NULL, '2026-05-19 19:46:45', '2026-05-19 19:46:45'),
	(3, 'José Almir Sousa Cruz Filho', 'josesousacruzfh@gmail.com', '+5571997200967', NULL, '$2y$12$8v1Xt8/lqJQ9zMkFyHbuFeQ/N8nbyeJUfbOygm87qmv8AHICaoR.2', 'usuario', NULL, '2026-05-19 20:02:52', '2026-05-19 20:02:52'),
	(4, 'Eros Gantois Marcal', 'erosgm@hotmail.com', '+5571988446215', NULL, '$2y$12$cvRSXY6ANwfRMASU3AQpDehfkhg6HQgsx0Werr9welFcvvPp1PwDi', 'usuario', NULL, '2026-05-19 20:07:38', '2026-05-19 20:07:38'),
	(5, 'Paulo', 'paulo@intermaritima.com.br', '71986112583', NULL, '$2y$12$JPwCXndAW9FdUpNEwtemOeoR4E5YrqvVh3Bg8k/vZiy1xlTMJ7m2S', 'usuario', NULL, '2026-05-19 20:08:05', '2026-05-19 20:08:05');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
