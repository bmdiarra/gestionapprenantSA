-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 17 fév. 2021 à 10:33
-- Version du serveur :  10.4.16-MariaDB
-- Version de PHP : 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projetfilrougebmd`
--

-- --------------------------------------------------------

--
-- Structure de la table `apprenant_groupe`
--

CREATE TABLE `apprenant_groupe` (
  `apprenant_id` int(11) NOT NULL,
  `groupe_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `apprenant_groupe`
--

INSERT INTO `apprenant_groupe` (`apprenant_id`, `groupe_id`) VALUES
(6, 3);

-- --------------------------------------------------------

--
-- Structure de la table `apprenant_livrable_partiel`
--

CREATE TABLE `apprenant_livrable_partiel` (
  `id` int(11) NOT NULL,
  `livrablespartiels_id` int(11) DEFAULT NULL,
  `fildiscussion_id` int(11) DEFAULT NULL,
  `apprenants_id` int(11) DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delai` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `avatar`
--

CREATE TABLE `avatar` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `brief`
--

CREATE TABLE `brief` (
  `id` int(11) NOT NULL,
  `ressources_id` int(11) DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom_brief` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contexte` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `livrable_attendus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modalite_pedagogique` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `critere_evaluation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modalite_evaluation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_promo` longblob DEFAULT NULL,
  `archiver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `etat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `brief_apprenant`
--

CREATE TABLE `brief_apprenant` (
  `id` int(11) NOT NULL,
  `briefmapromo_id` int(11) DEFAULT NULL,
  `apprenants_id` int(11) DEFAULT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `brief_livrable_attendu`
--

CREATE TABLE `brief_livrable_attendu` (
  `brief_id` int(11) NOT NULL,
  `livrable_attendu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `brief_ma_promo`
--

CREATE TABLE `brief_ma_promo` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `brief_tag`
--

CREATE TABLE `brief_tag` (
  `brief_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE `chat` (
  `id` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pieces_jointes` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

CREATE TABLE `commentaire` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `competence`
--

CREATE TABLE `competence` (
  `id` int(11) NOT NULL,
  `niveaux_id` int(11) DEFAULT NULL,
  `competencesvalides_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archivage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competence`
--

INSERT INTO `competence` (`id`, `niveaux_id`, `competencesvalides_id`, `libelle`, `description`, `archivage`) VALUES
(1, 1, NULL, 'Competence1', 'Description1', 0),
(2, 2, NULL, 'Competence2', 'Description2', 0),
(3, NULL, NULL, 'Competence2', 'Description2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `competences_valides`
--

CREATE TABLE `competences_valides` (
  `id` int(11) NOT NULL,
  `niveau1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `niveau2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `niveau3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `competences_valides_promo`
--

CREATE TABLE `competences_valides_promo` (
  `competences_valides_id` int(11) NOT NULL,
  `promo_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `competence_groupe_competence`
--

CREATE TABLE `competence_groupe_competence` (
  `competence_id` int(11) NOT NULL,
  `groupe_competence_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competence_groupe_competence`
--

INSERT INTO `competence_groupe_competence` (`competence_id`, `groupe_competence_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `etat_brief_groupe`
--

CREATE TABLE `etat_brief_groupe` (
  `id` int(11) NOT NULL,
  `groupes_id` int(11) DEFAULT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fil_discution`
--

CREATE TABLE `fil_discution` (
  `id` int(11) NOT NULL,
  `commentaires_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groupe`
--

CREATE TABLE `groupe` (
  `id` int(11) NOT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupe`
--

INSERT INTO `groupe` (`id`, `statut`) VALUES
(1, 'principal'),
(2, 'principal'),
(3, 'principal');

-- --------------------------------------------------------

--
-- Structure de la table `groupe_competence`
--

CREATE TABLE `groupe_competence` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `groupe_competence`
--

INSERT INTO `groupe_competence` (`id`, `libelle`, `description`) VALUES
(1, 'Groupe Competence 1', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `groupe_formateur`
--

CREATE TABLE `groupe_formateur` (
  `groupe_id` int(11) NOT NULL,
  `formateur_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groupe_tag`
--

CREATE TABLE `groupe_tag` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `groupe_tag_groupe_tag`
--

CREATE TABLE `groupe_tag_groupe_tag` (
  `groupe_tag_source` int(11) NOT NULL,
  `groupe_tag_target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livrable_attendu`
--

CREATE TABLE `livrable_attendu` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livrable_attendu_apprenant`
--

CREATE TABLE `livrable_attendu_apprenant` (
  `id` int(11) NOT NULL,
  `livrablesattendus_id` int(11) DEFAULT NULL,
  `apprenants_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livrable_partiel`
--

CREATE TABLE `livrable_partiel` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delai` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `typz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_rendu` int(11) DEFAULT NULL,
  `nombre_corriger` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livrable_partiel_niveau`
--

CREATE TABLE `livrable_partiel_niveau` (
  `livrable_partiel_id` int(11) NOT NULL,
  `niveau_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`id`, `libelle`) VALUES
(1, 'niveau 1'),
(2, 'niveau 2'),
(3, 'niveau 3');

-- --------------------------------------------------------

--
-- Structure de la table `niveau_niveau`
--

CREATE TABLE `niveau_niveau` (
  `niveau_source` int(11) NOT NULL,
  `niveau_target` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `profil`
--

CREATE TABLE `profil` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `profil`
--

INSERT INTO `profil` (`id`, `libelle`, `isdeleted`) VALUES
(1, 'ADMIN', 0),
(2, 'FORMATEUR', 0),
(3, 'APPRENANT', 0),
(4, 'CM', 0);

-- --------------------------------------------------------

--
-- Structure de la table `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `chats_id` int(11) DEFAULT NULL,
  `groupes_id` int(11) DEFAULT NULL,
  `briefmapromos_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `promo`
--

INSERT INTO `promo` (`id`, `chats_id`, `groupes_id`, `briefmapromos_id`, `libelle`, `isdeleted`, `description`) VALUES
(1, NULL, 3, NULL, 'promo0', 0, NULL),
(2, NULL, 3, NULL, 'promoaaa6', 0, NULL),
(3, NULL, NULL, NULL, 'promo2', 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `referentiel`
--

CREATE TABLE `referentiel` (
  `id` int(11) NOT NULL,
  `competencesvalides_id` int(11) DEFAULT NULL,
  `promos_id` int(11) DEFAULT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `referentiel`
--

INSERT INTO `referentiel` (`id`, `competencesvalides_id`, `promos_id`, `libelle`, `isdeleted`) VALUES
(1, NULL, NULL, 'ref0', 0),
(2, NULL, NULL, 'ref1', 0),
(3, NULL, NULL, 'ref2', 0);

-- --------------------------------------------------------

--
-- Structure de la table `referentiel_groupe_competence`
--

CREATE TABLE `referentiel_groupe_competence` (
  `referentiel_id` int(11) NOT NULL,
  `groupe_competence_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `referentiel_groupe_competence`
--

INSERT INTO `referentiel_groupe_competence` (`referentiel_id`, `groupe_competence_id`) VALUES
(1, 1),
(2, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `ressource`
--

CREATE TABLE `ressource` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `piece_jointe` longblob DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `profil_id` int(11) DEFAULT NULL,
  `chats_id` int(11) DEFAULT NULL,
  `commentaires_id` int(11) DEFAULT NULL,
  `competencesvalides_id` int(11) DEFAULT NULL,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` longblob DEFAULT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isdeleted` tinyint(1) NOT NULL,
  `statut` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `profil_id`, `chats_id`, `commentaires_id`, `competencesvalides_id`, `username`, `password`, `avatar`, `prenom`, `nom`, `isdeleted`, `statut`, `type`) VALUES
(1, 1, NULL, NULL, NULL, 'ADMIN0', '$argon2id$v=19$m=65536,t=4,p=1$34S5U6JfiydZfQRB4hKw2Q$oB6RuK+Q9aTPCOtMiSjH8gBfccmhLMd89AzOsuj7D8E', NULL, 'Alphonse', 'Grondin', 0, NULL, 'admin'),
(2, 1, NULL, NULL, NULL, 'ADMIN1', '$argon2id$v=19$m=65536,t=4,p=1$jtY4ocnZYko/Xev/Bn5A9A$rrsfrKagl3IMDzv+B4HgYxR6vH02NeALoONbeblPJqw', NULL, 'Léon', 'Godard', 0, NULL, 'admin'),
(3, 1, NULL, NULL, NULL, 'ADMIN2', '$argon2id$v=19$m=65536,t=4,p=1$kOQNAU6ibBoELBrcT6ZiGA$rT9ps9U6RMCH6aOxIkAfeERqyzeHhlAEt7/gnUxhZi8', NULL, 'Yves', 'Arnaud', 0, NULL, 'admin'),
(4, 3, NULL, NULL, NULL, 'APPRENANT0', '$argon2id$v=19$m=65536,t=4,p=1$+RVaJFvD3qyYlaUKaTkZkw$2biJduaW0ZRG/+ZzPEk/2X2U0BGzgT2YK/SbOJfq+o4', NULL, 'Nath', 'Torres', 0, NULL, 'apprenant'),
(5, 3, NULL, NULL, NULL, 'APPRENANT1', '$argon2id$v=19$m=65536,t=4,p=1$r04tN3znM+mwmtNBBsfH2Q$tSwQ3FqnjFzzSO+LEt2i5b8cHEAcafc6RPsdgG9ZtY0', NULL, 'Alexandria', 'Blot', 0, NULL, 'apprenant'),
(6, 3, NULL, NULL, NULL, 'APPRENANT3', '$argon2id$v=19$m=65536,t=4,p=1$vvNAxpS5xlFAxRJNXDsD/A$AP+EcRdQnJ/PdMdAyo0N5hOocXkKNEGxW7rFnygLVRU', NULL, 'Antoinette', 'Bailly', 0, 'attente', 'apprenant'),
(7, 4, NULL, NULL, NULL, 'CM0', '$argon2id$v=19$m=65536,t=4,p=1$dO96holCax0ktJRy3MWhgg$B5OS9lak+gk+OfK1HaqggsmuUnWLEN41VqsAd9+SFlg', NULL, 'Élodie', 'Guerin', 0, NULL, 'cm'),
(8, 4, NULL, NULL, NULL, 'CM1', '$argon2id$v=19$m=65536,t=4,p=1$+lSM3OUa8wPOUlxDg1I+tw$tcP/jLBqq0JVHOBZfi6OwXDE7xJLUTiFzmF/3vT9m5E', NULL, 'Sophie', 'Blanc', 0, NULL, 'cm'),
(9, 4, NULL, NULL, NULL, 'CM2', '$argon2id$v=19$m=65536,t=4,p=1$my7lmmLj1AQSHrbqpC+e+Q$o2kWWf8fYqbJcztzRS/KyoZpMvomUU8wWvyAKPXXHc4', NULL, 'Michel', 'Le Roux', 0, NULL, 'cm'),
(10, 2, NULL, NULL, NULL, 'FORMATEUR0', '$argon2id$v=19$m=65536,t=4,p=1$soEzRD1/bAghRedjAh1Gvw$oy1DPij/YaPfGqpi3goMSq3Ih3BExDLOjCVTHXJAQJw', NULL, 'Victor', 'Hubert', 0, NULL, 'formateur'),
(11, 2, NULL, NULL, NULL, 'FORMATEUR1', '$argon2id$v=19$m=65536,t=4,p=1$uvodjHHrFbnlb+yT43QOTw$JkGAPqM9AYFcDjjmLLaeGEg4S1nOnyR3o3SxB+bR+GQ', NULL, 'Timothée', 'Pinto', 0, NULL, 'formateur'),
(12, 2, NULL, NULL, NULL, 'FORMATEUR2', '$argon2id$v=19$m=65536,t=4,p=1$a/9LsefXLjuQgI9DWcljiQ$IBsoylGvlIBpwiJ6JdHdcNdgS8EoDoG7BQhg5gJ8jrc', NULL, 'Éléonore', 'Daniel', 0, NULL, 'formateur'),
(13, NULL, NULL, NULL, NULL, 'super', 'pass1234', 0x2f746d702f706870693134315162, 'bm', 'diarra', 0, NULL, 'user'),
(14, NULL, NULL, NULL, NULL, 'super1', 'pass1234', 0x2f746d702f706870495541506764, 'bm2', 'diarra2', 0, NULL, 'user'),
(15, NULL, NULL, NULL, NULL, 'super2', 'pass1234', 0x2f746d702f7068706b6c76575662, 'bm3', 'diarra', 0, NULL, 'user'),
(16, NULL, NULL, NULL, NULL, 'hjk', 'pass1234', 0x2f746d702f7068704d4b67686b61, 'kjehef', 'hj\"\'r', 0, NULL, 'user'),
(17, NULL, NULL, NULL, NULL, 'syper12', 'pass1234', 0x2f746d702f7068704d7961546662, 'jh', 'hhfgchcn', 0, NULL, 'user'),
(18, 1, NULL, NULL, NULL, 'FORM', 'pass1234', 0x2f746d702f7068707142585a5279, 'cool3', 'bmd1', 0, NULL, 'user'),
(23, 3, NULL, NULL, NULL, 'syp', 'pass1234', 0x2f746d702f706870657a5a583479, 'jht', 'hj\"\'ri', 0, NULL, 'apprenant'),
(24, 2, NULL, NULL, NULL, 'ADM', 'pass1234', 0x2f746d702f706870674b466b3661, 'Balla Moussa', 'DIARRA', 0, NULL, 'formateur');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `apprenant_groupe`
--
ALTER TABLE `apprenant_groupe`
  ADD PRIMARY KEY (`apprenant_id`,`groupe_id`),
  ADD KEY `IDX_1D224F8DC5697D6D` (`apprenant_id`),
  ADD KEY `IDX_1D224F8D7A45358C` (`groupe_id`);

--
-- Index pour la table `apprenant_livrable_partiel`
--
ALTER TABLE `apprenant_livrable_partiel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8572D6AD1A5762D` (`fildiscussion_id`),
  ADD KEY `IDX_8572D6AD6612BC8D` (`livrablespartiels_id`),
  ADD KEY `IDX_8572D6ADD4B7C9BD` (`apprenants_id`);

--
-- Index pour la table `avatar`
--
ALTER TABLE `avatar`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `brief`
--
ALTER TABLE `brief`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1FBB10073C361826` (`ressources_id`);

--
-- Index pour la table `brief_apprenant`
--
ALTER TABLE `brief_apprenant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_DD6198ED6D7FA819` (`briefmapromo_id`),
  ADD KEY `IDX_DD6198EDD4B7C9BD` (`apprenants_id`);

--
-- Index pour la table `brief_livrable_attendu`
--
ALTER TABLE `brief_livrable_attendu`
  ADD PRIMARY KEY (`brief_id`,`livrable_attendu_id`),
  ADD KEY `IDX_B91E74A6757FABFF` (`brief_id`),
  ADD KEY `IDX_B91E74A675180ACC` (`livrable_attendu_id`);

--
-- Index pour la table `brief_ma_promo`
--
ALTER TABLE `brief_ma_promo`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `brief_tag`
--
ALTER TABLE `brief_tag`
  ADD PRIMARY KEY (`brief_id`,`tag_id`),
  ADD KEY `IDX_452A4F36757FABFF` (`brief_id`),
  ADD KEY `IDX_452A4F36BAD26311` (`tag_id`);

--
-- Index pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `competence`
--
ALTER TABLE `competence`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_94D4687FAAC4B70E` (`niveaux_id`),
  ADD KEY `IDX_94D4687F4A94B74A` (`competencesvalides_id`);

--
-- Index pour la table `competences_valides`
--
ALTER TABLE `competences_valides`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `competences_valides_promo`
--
ALTER TABLE `competences_valides_promo`
  ADD PRIMARY KEY (`competences_valides_id`,`promo_id`),
  ADD KEY `IDX_4B8A4E9AB51593AB` (`competences_valides_id`),
  ADD KEY `IDX_4B8A4E9AD0C07AFF` (`promo_id`);

--
-- Index pour la table `competence_groupe_competence`
--
ALTER TABLE `competence_groupe_competence`
  ADD PRIMARY KEY (`competence_id`,`groupe_competence_id`),
  ADD KEY `IDX_8A72A47315761DAB` (`competence_id`),
  ADD KEY `IDX_8A72A47389034830` (`groupe_competence_id`);

--
-- Index pour la table `etat_brief_groupe`
--
ALTER TABLE `etat_brief_groupe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4C4C1AA4305371B` (`groupes_id`);

--
-- Index pour la table `fil_discution`
--
ALTER TABLE `fil_discution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4185833417C4B2B0` (`commentaires_id`);

--
-- Index pour la table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groupe_competence`
--
ALTER TABLE `groupe_competence`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groupe_formateur`
--
ALTER TABLE `groupe_formateur`
  ADD PRIMARY KEY (`groupe_id`,`formateur_id`),
  ADD KEY `IDX_BDE2AD787A45358C` (`groupe_id`),
  ADD KEY `IDX_BDE2AD78155D8F51` (`formateur_id`);

--
-- Index pour la table `groupe_tag`
--
ALTER TABLE `groupe_tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `groupe_tag_groupe_tag`
--
ALTER TABLE `groupe_tag_groupe_tag`
  ADD PRIMARY KEY (`groupe_tag_source`,`groupe_tag_target`),
  ADD KEY `IDX_4E73E8E6E260783` (`groupe_tag_source`),
  ADD KEY `IDX_4E73E8E617C3570C` (`groupe_tag_target`);

--
-- Index pour la table `livrable_attendu`
--
ALTER TABLE `livrable_attendu`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livrable_attendu_apprenant`
--
ALTER TABLE `livrable_attendu_apprenant`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BDB84E3468EDBDCD` (`livrablesattendus_id`),
  ADD KEY `IDX_BDB84E34D4B7C9BD` (`apprenants_id`);

--
-- Index pour la table `livrable_partiel`
--
ALTER TABLE `livrable_partiel`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livrable_partiel_niveau`
--
ALTER TABLE `livrable_partiel_niveau`
  ADD PRIMARY KEY (`livrable_partiel_id`,`niveau_id`),
  ADD KEY `IDX_4FEB984B519178C4` (`livrable_partiel_id`),
  ADD KEY `IDX_4FEB984BB3E9C81` (`niveau_id`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `niveau_niveau`
--
ALTER TABLE `niveau_niveau`
  ADD PRIMARY KEY (`niveau_source`,`niveau_target`),
  ADD KEY `IDX_EFEB50F4FBBEDCEC` (`niveau_source`),
  ADD KEY `IDX_EFEB50F4E25B8C63` (`niveau_target`);

--
-- Index pour la table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B0139AFBAC6FF313` (`chats_id`),
  ADD KEY `IDX_B0139AFB305371B` (`groupes_id`),
  ADD KEY `IDX_B0139AFB83776A4D` (`briefmapromos_id`);

--
-- Index pour la table `referentiel`
--
ALTER TABLE `referentiel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B76C20294A94B74A` (`competencesvalides_id`),
  ADD KEY `IDX_B76C2029CAA392D2` (`promos_id`);

--
-- Index pour la table `referentiel_groupe_competence`
--
ALTER TABLE `referentiel_groupe_competence`
  ADD PRIMARY KEY (`referentiel_id`,`groupe_competence_id`),
  ADD KEY `IDX_EC387D5B805DB139` (`referentiel_id`),
  ADD KEY `IDX_EC387D5B89034830` (`groupe_competence_id`);

--
-- Index pour la table `ressource`
--
ALTER TABLE `ressource`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649F85E0677` (`username`),
  ADD KEY `IDX_8D93D649275ED078` (`profil_id`),
  ADD KEY `IDX_8D93D649AC6FF313` (`chats_id`),
  ADD KEY `IDX_8D93D64917C4B2B0` (`commentaires_id`),
  ADD KEY `IDX_8D93D6494A94B74A` (`competencesvalides_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `apprenant_livrable_partiel`
--
ALTER TABLE `apprenant_livrable_partiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `avatar`
--
ALTER TABLE `avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `brief`
--
ALTER TABLE `brief`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `brief_apprenant`
--
ALTER TABLE `brief_apprenant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `brief_ma_promo`
--
ALTER TABLE `brief_ma_promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commentaire`
--
ALTER TABLE `commentaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `competence`
--
ALTER TABLE `competence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `competences_valides`
--
ALTER TABLE `competences_valides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `etat_brief_groupe`
--
ALTER TABLE `etat_brief_groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `fil_discution`
--
ALTER TABLE `fil_discution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `groupe`
--
ALTER TABLE `groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `groupe_competence`
--
ALTER TABLE `groupe_competence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `groupe_tag`
--
ALTER TABLE `groupe_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `livrable_attendu`
--
ALTER TABLE `livrable_attendu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `livrable_attendu_apprenant`
--
ALTER TABLE `livrable_attendu_apprenant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `livrable_partiel`
--
ALTER TABLE `livrable_partiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `referentiel`
--
ALTER TABLE `referentiel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `ressource`
--
ALTER TABLE `ressource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `apprenant_groupe`
--
ALTER TABLE `apprenant_groupe`
  ADD CONSTRAINT `FK_1D224F8D7A45358C` FOREIGN KEY (`groupe_id`) REFERENCES `groupe` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D224F8DC5697D6D` FOREIGN KEY (`apprenant_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `apprenant_livrable_partiel`
--
ALTER TABLE `apprenant_livrable_partiel`
  ADD CONSTRAINT `FK_8572D6AD1A5762D` FOREIGN KEY (`fildiscussion_id`) REFERENCES `fil_discution` (`id`),
  ADD CONSTRAINT `FK_8572D6AD6612BC8D` FOREIGN KEY (`livrablespartiels_id`) REFERENCES `livrable_partiel` (`id`),
  ADD CONSTRAINT `FK_8572D6ADD4B7C9BD` FOREIGN KEY (`apprenants_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `brief`
--
ALTER TABLE `brief`
  ADD CONSTRAINT `FK_1FBB10073C361826` FOREIGN KEY (`ressources_id`) REFERENCES `ressource` (`id`);

--
-- Contraintes pour la table `brief_apprenant`
--
ALTER TABLE `brief_apprenant`
  ADD CONSTRAINT `FK_DD6198ED6D7FA819` FOREIGN KEY (`briefmapromo_id`) REFERENCES `brief_ma_promo` (`id`),
  ADD CONSTRAINT `FK_DD6198EDD4B7C9BD` FOREIGN KEY (`apprenants_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `brief_livrable_attendu`
--
ALTER TABLE `brief_livrable_attendu`
  ADD CONSTRAINT `FK_B91E74A675180ACC` FOREIGN KEY (`livrable_attendu_id`) REFERENCES `livrable_attendu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B91E74A6757FABFF` FOREIGN KEY (`brief_id`) REFERENCES `brief` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `brief_tag`
--
ALTER TABLE `brief_tag`
  ADD CONSTRAINT `FK_452A4F36757FABFF` FOREIGN KEY (`brief_id`) REFERENCES `brief` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_452A4F36BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `competence`
--
ALTER TABLE `competence`
  ADD CONSTRAINT `FK_94D4687F4A94B74A` FOREIGN KEY (`competencesvalides_id`) REFERENCES `competences_valides` (`id`),
  ADD CONSTRAINT `FK_94D4687FAAC4B70E` FOREIGN KEY (`niveaux_id`) REFERENCES `niveau` (`id`);

--
-- Contraintes pour la table `competences_valides_promo`
--
ALTER TABLE `competences_valides_promo`
  ADD CONSTRAINT `FK_4B8A4E9AB51593AB` FOREIGN KEY (`competences_valides_id`) REFERENCES `competences_valides` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4B8A4E9AD0C07AFF` FOREIGN KEY (`promo_id`) REFERENCES `promo` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `competence_groupe_competence`
--
ALTER TABLE `competence_groupe_competence`
  ADD CONSTRAINT `FK_8A72A47315761DAB` FOREIGN KEY (`competence_id`) REFERENCES `competence` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_8A72A47389034830` FOREIGN KEY (`groupe_competence_id`) REFERENCES `groupe_competence` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `etat_brief_groupe`
--
ALTER TABLE `etat_brief_groupe`
  ADD CONSTRAINT `FK_4C4C1AA4305371B` FOREIGN KEY (`groupes_id`) REFERENCES `groupe` (`id`);

--
-- Contraintes pour la table `fil_discution`
--
ALTER TABLE `fil_discution`
  ADD CONSTRAINT `FK_4185833417C4B2B0` FOREIGN KEY (`commentaires_id`) REFERENCES `commentaire` (`id`);

--
-- Contraintes pour la table `groupe_formateur`
--
ALTER TABLE `groupe_formateur`
  ADD CONSTRAINT `FK_BDE2AD78155D8F51` FOREIGN KEY (`formateur_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_BDE2AD787A45358C` FOREIGN KEY (`groupe_id`) REFERENCES `groupe` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `groupe_tag_groupe_tag`
--
ALTER TABLE `groupe_tag_groupe_tag`
  ADD CONSTRAINT `FK_4E73E8E617C3570C` FOREIGN KEY (`groupe_tag_target`) REFERENCES `groupe_tag` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4E73E8E6E260783` FOREIGN KEY (`groupe_tag_source`) REFERENCES `groupe_tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `livrable_attendu_apprenant`
--
ALTER TABLE `livrable_attendu_apprenant`
  ADD CONSTRAINT `FK_BDB84E3468EDBDCD` FOREIGN KEY (`livrablesattendus_id`) REFERENCES `livrable_attendu` (`id`),
  ADD CONSTRAINT `FK_BDB84E34D4B7C9BD` FOREIGN KEY (`apprenants_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `livrable_partiel_niveau`
--
ALTER TABLE `livrable_partiel_niveau`
  ADD CONSTRAINT `FK_4FEB984B519178C4` FOREIGN KEY (`livrable_partiel_id`) REFERENCES `livrable_partiel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_4FEB984BB3E9C81` FOREIGN KEY (`niveau_id`) REFERENCES `niveau` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `niveau_niveau`
--
ALTER TABLE `niveau_niveau`
  ADD CONSTRAINT `FK_EFEB50F4E25B8C63` FOREIGN KEY (`niveau_target`) REFERENCES `niveau` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EFEB50F4FBBEDCEC` FOREIGN KEY (`niveau_source`) REFERENCES `niveau` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `FK_B0139AFB305371B` FOREIGN KEY (`groupes_id`) REFERENCES `groupe` (`id`),
  ADD CONSTRAINT `FK_B0139AFB83776A4D` FOREIGN KEY (`briefmapromos_id`) REFERENCES `brief_ma_promo` (`id`),
  ADD CONSTRAINT `FK_B0139AFBAC6FF313` FOREIGN KEY (`chats_id`) REFERENCES `chat` (`id`);

--
-- Contraintes pour la table `referentiel`
--
ALTER TABLE `referentiel`
  ADD CONSTRAINT `FK_B76C20294A94B74A` FOREIGN KEY (`competencesvalides_id`) REFERENCES `competences_valides` (`id`),
  ADD CONSTRAINT `FK_B76C2029CAA392D2` FOREIGN KEY (`promos_id`) REFERENCES `promo` (`id`);

--
-- Contraintes pour la table `referentiel_groupe_competence`
--
ALTER TABLE `referentiel_groupe_competence`
  ADD CONSTRAINT `FK_EC387D5B805DB139` FOREIGN KEY (`referentiel_id`) REFERENCES `referentiel` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EC387D5B89034830` FOREIGN KEY (`groupe_competence_id`) REFERENCES `groupe_competence` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_8D93D64917C4B2B0` FOREIGN KEY (`commentaires_id`) REFERENCES `commentaire` (`id`),
  ADD CONSTRAINT `FK_8D93D649275ED078` FOREIGN KEY (`profil_id`) REFERENCES `profil` (`id`),
  ADD CONSTRAINT `FK_8D93D6494A94B74A` FOREIGN KEY (`competencesvalides_id`) REFERENCES `competences_valides` (`id`),
  ADD CONSTRAINT `FK_8D93D649AC6FF313` FOREIGN KEY (`chats_id`) REFERENCES `chat` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
