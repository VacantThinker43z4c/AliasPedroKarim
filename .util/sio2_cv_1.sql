-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 05 jan. 2020 à 20:41
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sio2_cv_1`
--

-- --------------------------------------------------------

--
-- Structure de la table `cv`
--

DROP TABLE IF EXISTS `cv`;
CREATE TABLE IF NOT EXISTS `cv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `signature` text NOT NULL,
  `nom_maitrise` varchar(255) NOT NULL,
  `maitrise` text NOT NULL,
  `id_utilisateur` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_utilisateur` (`id_utilisateur`),
  KEY `id_utilisateur_2` (`id_utilisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `experience_pro`
--

DROP TABLE IF EXISTS `experience_pro`;
CREATE TABLE IF NOT EXISTS `experience_pro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entreprise` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `annee_debut` date NOT NULL,
  `annee_fin` date NOT NULL,
  `id_cv` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cv` (`id_cv`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `formation`
--

DROP TABLE IF EXISTS `formation`;
CREATE TABLE IF NOT EXISTS `formation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `annee_debut` date NOT NULL,
  `annee_fin` date NOT NULL,
  `id_cv` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cv` (`id_cv`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `statut` int(1) NOT NULL DEFAULT '0',
  `identifiant` varchar(255) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `num_telephone` varchar(14) NOT NULL,
  `courriel` varchar(255) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `photo` longblob NOT NULL,
  PRIMARY KEY (`id`,`identifiant`),
  UNIQUE KEY `identifiant` (`identifiant`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `statut`, `identifiant`, `mot_de_passe`, `nom`, `prenom`, `num_telephone`, `courriel`, `date_de_naissance`, `photo`) VALUES
(64, 1, 'admin', '49dc52e6bf2abe5ef6e2bb5b0f1ee2d765b922ae6cc8b95d39dc06c21c848f8c', 'Admin', 'Jean', '0782677228', 'admin@karimandco.com', '2018-09-26', '');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cv`
--
ALTER TABLE `cv`
  ADD CONSTRAINT `cv_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateurs` (`id`);

--
-- Contraintes pour la table `experience_pro`
--
ALTER TABLE `experience_pro`
  ADD CONSTRAINT `experience_pro_ibfk_1` FOREIGN KEY (`id_cv`) REFERENCES `cv` (`id`);

--
-- Contraintes pour la table `formation`
--
ALTER TABLE `formation`
  ADD CONSTRAINT `formation_ibfk_1` FOREIGN KEY (`id_cv`) REFERENCES `cv` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
