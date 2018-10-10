-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 10 oct. 2018 à 15:16
-- Version du serveur :  10.1.35-MariaDB
-- Version de PHP :  7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ludotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idCateg` int(10) NOT NULL,
  `nomCateg` varchar(100) NOT NULL,
  `imageCateg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idCateg`, `nomCateg`, `imageCateg`) VALUES
(1, 'Ambiance', 'Images/Categories/Ambiance.jpg'),
(2, 'Hasard', 'Images/Categories/Hasard.jpg'),
(3, 'Rapidité', 'Images/Categories/Rapidite.jpg'),
(4, 'Mémoire', 'Images/Categories/Memoire.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

CREATE TABLE `jeux` (
  `idJeux` int(10) NOT NULL,
  `nomJeux` varchar(100) NOT NULL,
  `imageJeux` varchar(100) NOT NULL,
  `numCateg` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jeux`
--

INSERT INTO `jeux` (`idJeux`, `nomJeux`, `imageJeux`, `numCateg`) VALUES
(1, 'Blue Lion (the)', 'Images/Jeux/Blue.jpg', 4),
(2, 'Trésor des mayas (Le)', 'Images/Jeux/Maya.jpg', 4),
(5, 'Little Mémo', 'Images/Jeux/Little.jpg', 4),
(6, 'Jungle Spped', 'Images/Jeux/Jungle.jpg', 3),
(7, 'Dobble', 'Images/Jeux/Dobble.jpg', 3),
(8, 'Ballons', 'Images/Jeux/Ballons.jpg', 2),
(9, 'Pickomino', 'Images/Jeux/Pickomino.jpg', 2),
(10, 'Time\'s Up Celebrity 3', 'Images/Jeux/Time.jpg', 1),
(11, 'Buzz it', 'Images/Jeux/Buzz.jpg', 1),
(12, 'Chasse aux monstres (la) (Ed. Anniversaire)', 'Images/Jeux/Chasse.jpg', 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idCateg`);

--
-- Index pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD PRIMARY KEY (`idJeux`),
  ADD KEY `numCateg` (`numCateg`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `idCateg` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `jeux`
--
ALTER TABLE `jeux`
  MODIFY `idJeux` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD CONSTRAINT `jeux_ibfk_1` FOREIGN KEY (`numCateg`) REFERENCES `categorie` (`idCateg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
