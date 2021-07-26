-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 25 juil. 2021 à 09:21
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ccls`
--

-- --------------------------------------------------------

--
-- Structure de la table `commercial`
--

CREATE TABLE `commercial` (
  `id` int(11) NOT NULL,
  `fichier` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `comptabilite`
--

CREATE TABLE `comptabilite` (
  `id` int(11) NOT NULL,
  `fichier` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `moto-culture`
--

CREATE TABLE `moto-culture` (
  `id` int(11) NOT NULL,
  `fichier` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `service` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `moto-culture`
--

INSERT INTO `moto-culture` (`id`, `fichier`, `date`, `service`) VALUES
(1, '0', '2021-07-19', 0),
(2, 'free_radicals_24.odt', '2021-07-18', 0);

-- --------------------------------------------------------

--
-- Structure de la table `personnel`
--

CREATE TABLE `personnel` (
  `id` int(100) NOT NULL,
  `fichier` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `personnel`
--

INSERT INTO `personnel` (`id`, `fichier`, `date`, `service`) VALUES
(2, '~stock_2015.xlsx', '2021-07-18', 'personnel'),
(3, 'laidi-mohamed-converti_(1)12.pdf', '2021-07-19', 'personnel'),
(4, 'Capture_d’écran_2021-05-08_2211104.png', '0000-00-00', 'personnel');

-- --------------------------------------------------------

--
-- Structure de la table `sd_atp`
--

CREATE TABLE `sd_atp` (
  `id` int(11) NOT NULL,
  `fichier` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `service` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `sd_atp`
--

INSERT INTO `sd_atp` (`id`, `fichier`, `date`, `service`) VALUES
(1, 'FACTURE_ccls_Berouaghia014.rtf', '2021-07-18', 'sd_atp'),
(2, 'free_radicals_23.odt', '2021-07-18', 'sd_atp');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `fichier` varchar(300) NOT NULL,
  `date` date NOT NULL,
  `service` varchar(300) NOT NULL,
  `lien` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`id`, `fichier`, `date`, `service`, `lien`) VALUES
(31, 'laidi-mohamed-converti_(1)11.pdf', '2021-07-21', 'personnel', 'laidi-mohamed-converti_(1)11.pdf'),
(32, 'Capture_d’écran_2021-05-08_2211101.png', '2021-07-20', 'personnel', 'Capture_d’écran_2021-05-08_2211101.png'),
(33, 'Capture_d’écran_2021-05-08_2211102.png', '2021-07-21', 'commercial', 'Capture_d’écran_2021-05-08_2211102.png'),
(34, 'الفصل_الثاني2.docx', '2021-07-21', 'comptabilite', 'الفصل_الثاني2.docx'),
(35, 'مريم_إهداء.docx', '2021-07-21', 'sd_atp', 'مريم_إهداء.docx'),
(36, 'laidi-mohamed-converti_(1)12.pdf', '2021-07-21', 'personnel', 'laidi-mohamed-converti_(1)12.pdf'),
(37, 'إهداء.docx', '2021-07-25', 'commercial', 'إهداء.docx'),
(38, 'إهداء1.docx', '2021-07-25', 'commercial', 'إهداء1.docx'),
(39, 'free_radicals_27.odt', '2021-07-25', 'commercial', 'free_radicals_27.odt'),
(40, 'free_radicals_28.odt', '2021-07-25', 'personnel', 'free_radicals_28.odt'),
(41, 'الخاتمة.docx', '2021-07-25', 'personnel', 'الخاتمة.docx');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `service` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `nom`, `prenom`, `type`, `service`) VALUES
(1, 'laidi@ccls.com', 'moh', 'laidi', 'mohamed', 'admin', ''),
(2, 'oussama@ccls.com', 'oussama', 'farah', 'oussama', 'employe', 'personnel'),
(3, 'commercial@ccls.com', 'commercial', 'moh', 'moj', 'employe', 'commercial'),
(4, 'comptabilite@ccls.com', 'comptabilite', 'eeeee', 'rrrrr', 'employe', 'comptabilite'),
(5, 'sdapt@ccls.com', 'sdapt', 'ccc', 'bbb', 'employe', 'sd_atp'),
(6, 'm.culture@ccls.com', 'motoculture', 'rrree', 'fsdfsf', 'employe', 'moto-culture');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comptabilite`
--
ALTER TABLE `comptabilite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `moto-culture`
--
ALTER TABLE `moto-culture`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personnel`
--
ALTER TABLE `personnel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sd_atp`
--
ALTER TABLE `sd_atp`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commercial`
--
ALTER TABLE `commercial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `comptabilite`
--
ALTER TABLE `comptabilite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `moto-culture`
--
ALTER TABLE `moto-culture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `personnel`
--
ALTER TABLE `personnel`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `sd_atp`
--
ALTER TABLE `sd_atp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
