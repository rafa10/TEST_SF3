-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 23 Octobre 2016 à 18:04
-- Version du serveur :  5.7.11
-- Version de PHP :  7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `article`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `leadings` longtext COLLATE utf8_unicode_ci,
  `body` longtext COLLATE utf8_unicode_ci,
  `created_at` datetime NOT NULL,
  `slug` longtext COLLATE utf8_unicode_ci NOT NULL,
  `createdBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `leadings`, `body`, `created_at`, `slug`, `createdBy`) VALUES
(1, 'Angular JS', 'AngularJS est né en 2009 dans les locaux de Google. Deux développeurs du nom de Brad Green et Shyam Seshadri commençaient sérieusement à déprimer devant leur projet appelé "Google Feedback".', 'AngularJS est né en 2009 dans les locaux de Google. Deux développeurs du nom de Brad Green et Shyam Seshadri commençaient sérieusement à déprimer devant leur projet appelé "Google Feedback". Une immense frustration les envahissait au fur et à mesure que leur code grandissait. Celui-ci comptait approximativement 17 000 lignes à ce moment-là. Autant de lignes de pur front-end  qui sont intestables et donc difficilement maintenables.\r\n\r\nC\'est à ce moment-là que Shyam Seshadri proposa de redévelopper entièrement la solution avec un framework fait maison. Au bout de trois semaines, l\'application ne comptait plus que 1 500 lignes de codes, parfaitement testées.\r\n\r\nÀ compter de ce jour, les autres développeurs de l\'équipe ont décidé de prendre en main ce framework et de travailler avec au quotidien. Une histoire est née, l\'histoire d\'un framework que l\'on nommera AngularJS.', '2016-10-23 15:48:42', 'Angular JS', 'Brad Green'),
(2, 'Ionic Framework', 'Create mobile apps with the web technologies you love.\r\nKnow how to build websites? Then you already know how to build mobile apps! Ionic offers quality web and native app components for building highly interactive native and progressive web apps with Angular.', 'Ionic was founded in 2012, when using web technologies as a means to build native apps was still in its infancy. When we started, we just wanted to create a better way for web developers to use their existing skillsets to build apps for the app stores.\r\n\r\nToday, Ionic is the world\'s most popular cross-platform mobile development technology stack, powering fast growing startups to some of the biggest companies in the world.', '2016-10-23 16:23:49', 'Ionic Framework', 'Max Lynch');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
