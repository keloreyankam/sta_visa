-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour visa
CREATE DATABASE IF NOT EXISTS `visa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `visa`;

-- Listage de la structure de table visa. assitance
CREATE TABLE IF NOT EXISTS `assitance` (
  `id_a` int DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `piece` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table visa.assitance : ~0 rows (environ)

-- Listage de la structure de table visa. document
CREATE TABLE IF NOT EXISTS `document` (
  `id_doc` int DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table visa.document : ~0 rows (environ)

-- Listage de la structure de table visa. paiement
CREATE TABLE IF NOT EXISTS `paiement` (
  `id` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `montant` int DEFAULT NULL,
  `methode_paiement` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table visa.paiement : ~0 rows (environ)

-- Listage de la structure de table visa. utilisateur
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_ins` date DEFAULT NULL,
  `num_telephone` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table visa.utilisateur : ~1 rows (environ)
REPLACE INTO `utilisateur` (`id`, `nom`, `password`, `email`, `date_ins`, `num_telephone`) VALUES
	(6, 'kelore', '$2y$10$VO/pCU2ImSDrCLftM.K4gO5QNCNz9h0vzTA.iOoBs9KWv3k7D/n4.', 'yankamkelore@gmail.com', '2023-07-02', 656399237);

-- Listage de la structure de table visa. visiteur
CREATE TABLE IF NOT EXISTS `visiteur` (
  `id_visiteur` int NOT NULL AUTO_INCREMENT,
  `residence` varchar(50) DEFAULT NULL,
  `destination` varchar(50) DEFAULT NULL,
  `date_a` date DEFAULT NULL,
  `date_r` date DEFAULT NULL,
  `telephone` int DEFAULT NULL,
  `email_visiteur` varchar(50) DEFAULT NULL,
  `prenom_v` varchar(50) DEFAULT NULL,
  `nom_v` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `date_naiss` date DEFAULT NULL,
  `pays_naiss` varchar(50) DEFAULT NULL,
  `pays_resi` varchar(50) DEFAULT NULL,
  `nationnalite_v` varchar(50) DEFAULT NULL,
  `num_passport` varchar(50) DEFAULT NULL,
  `date_exp` date DEFAULT NULL,
  `date_del` date DEFAULT NULL,
  PRIMARY KEY (`id_visiteur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table visa.visiteur : ~0 rows (environ)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
