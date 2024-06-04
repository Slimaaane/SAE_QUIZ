-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 03 juin 2024 à 22:41
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `quiz_master`
--

-- --------------------------------------------------------

--
-- Structure de la table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_text` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer_text`, `is_correct`) VALUES
(1, 1, 'Avocat', 1),
(2, 1, 'Tomate', 0),
(3, 1, 'Oignon', 0),
(4, 1, 'Ail', 0),
(5, 2, 'O(n log n)', 1),
(6, 2, 'O(n^2)', 0),
(7, 2, 'O(n)', 0),
(8, 2, 'O(1)', 0),
(9, 3, 'Solaire', 1),
(10, 3, 'Nucléaire', 0),
(11, 3, 'Charbon', 0),
(12, 3, 'Gaz naturel', 0),
(13, 4, 'Dégâts', 1),
(14, 4, 'Tank', 0),
(15, 4, 'Support', 0),
(16, 4, 'Mage', 0),
(17, 5, 'Christopher Nolan', 1),
(18, 5, 'Steven Spielberg', 0),
(19, 5, 'James Cameron', 0),
(20, 5, 'Martin Scorsese', 0),
(21, 6, 'Victor Hugo', 1),
(22, 6, 'Charles Dickens', 0),
(23, 6, 'Émile Zola', 0),
(24, 6, 'Honoré de Balzac', 0),
(25, 7, '11', 1),
(26, 7, '10', 0),
(27, 7, '12', 0),
(28, 7, '13', 0),
(29, 8, 'George Washington', 1),
(30, 8, 'Thomas Jefferson', 0),
(31, 8, 'Abraham Lincoln', 0),
(32, 8, 'John Adams', 0),
(33, 9, 'H2O', 1),
(34, 9, 'CO2', 0),
(35, 9, 'O2', 0),
(36, 9, 'N2', 0),
(37, 10, 'Beethoven', 1),
(38, 10, 'Mozart', 0),
(39, 10, 'Bach', 0),
(40, 10, 'Chopin', 0),
(41, 11, 'Nil', 1),
(42, 11, 'Amazon', 0),
(43, 11, 'Yangtze', 0),
(44, 11, 'Mississippi', 0),
(45, 12, 'Léonard de Vinci', 1),
(46, 12, 'Michel-Ange', 0),
(47, 12, 'Raphaël', 0),
(48, 12, 'Donatello', 0),
(49, 13, 'Safran', 1),
(50, 13, 'Paprika', 0),
(51, 13, 'Curcuma', 0),
(52, 13, 'Cumin', 0),
(53, 14, 'Lasagne', 1),
(54, 14, 'Spaghetti', 0),
(55, 14, 'Tagliatelle', 0),
(56, 14, 'Penne', 0),
(57, 15, 'Durian', 1),
(58, 15, 'Mangue', 0),
(59, 15, 'Ananas', 0),
(60, 15, 'Pomme', 0),
(61, 16, 'Estragon', 1),
(62, 16, 'Basilic', 0),
(63, 16, 'Romarin', 0),
(64, 16, 'Thym', 0),
(65, 17, 'Betterave', 1),
(66, 17, 'Carotte', 0),
(67, 17, 'Tomate', 0),
(68, 17, 'Poivron', 0),
(69, 18, 'Thon', 1),
(70, 18, 'Saumon', 0),
(71, 18, 'Maquereau', 0),
(72, 18, 'Sardine', 0),
(73, 19, 'Chèvre', 1),
(74, 19, 'Vache', 0),
(75, 19, 'Brebis', 0),
(76, 19, 'Chèvre', 0),
(77, 20, 'Mozzarella', 1),
(78, 20, 'Parmesan', 0),
(79, 20, 'Gorgonzola', 0),
(80, 20, 'Ricotta', 0),
(81, 21, 'Dahl', 1),
(82, 21, 'Curry', 0),
(83, 21, 'Roti', 0),
(84, 21, 'Biryani', 0),
(85, 22, 'Aubergine', 1),
(86, 22, 'Courgette', 0),
(87, 22, 'Poivron', 0),
(88, 22, 'Tomate', 0),
(89, 23, 'O(n^2)', 1),
(90, 23, 'O(n log n)', 0),
(91, 23, 'O(n)', 0),
(92, 23, 'O(1)', 0),
(93, 24, 'JavaScript', 1),
(94, 24, 'Python', 0),
(95, 24, 'Java', 0),
(96, 24, 'C++', 0),
(97, 25, 'Un système pour gérer des données', 1),
(98, 25, 'Un logiciel pour dessiner', 0),
(99, 25, 'Une application web', 0),
(100, 25, 'Un langage de programmation', 0),
(101, 26, 'Gérer les ressources matérielles et logicielles', 1),
(102, 26, 'Créer des applications', 0),
(103, 26, 'Compiler des programmes', 0),
(104, 26, 'Dessiner des images', 0),
(105, 27, 'Alan Turing', 1),
(106, 27, 'Bill Gates', 0),
(107, 27, 'Steve Jobs', 0),
(108, 27, 'Tim Berners-Lee', 0),
(109, 28, 'IA', 1),
(110, 28, 'AI', 0),
(111, 28, 'IT', 0),
(112, 28, 'IC', 0),
(113, 29, 'Sécurité', 1),
(114, 29, 'Vitesse', 0),
(115, 29, 'Fiabilité', 0),
(116, 29, 'Compatibilité', 0),
(117, 30, 'Une série d\'instructions pour résoudre un problème', 1),
(118, 30, 'Un programme informatique', 0),
(119, 30, 'Un composant matériel', 0),
(120, 30, 'Une base de données', 0),
(121, 31, 'Un ordinateur qui sert des pages web', 1),
(122, 31, 'Un ordinateur portable', 0),
(123, 31, 'Un réseau d\'ordinateurs', 0),
(124, 31, 'Un navigateur web', 0),
(125, 32, 'Pétrole', 1),
(126, 32, 'Charbon', 0),
(127, 32, 'Gaz naturel', 0),
(128, 32, 'Biomasse', 0),
(129, 33, 'Argon', 1),
(130, 33, 'Oxygène', 0),
(131, 33, 'Hydrogène', 0),
(132, 33, 'Azote', 0),
(133, 34, 'Énergie due au mouvement', 1),
(134, 34, 'Énergie due à la position', 0),
(135, 34, 'Énergie due à la chaleur', 0),
(136, 34, 'Énergie due à l\'électricité', 0),
(137, 35, 'Lumière du soleil', 1),
(138, 35, 'Chaleur de la terre', 0),
(139, 35, 'Force du vent', 0),
(140, 35, 'Mouvement des vagues', 0),
(141, 36, 'Division du noyau d\'un atome', 1),
(142, 36, 'Fusion de deux atomes', 0),
(143, 36, 'Absorption de neutrons', 0),
(144, 36, 'Libération de protons', 0),
(145, 37, 'Vent', 1),
(146, 37, 'Eau', 0),
(147, 37, 'Lumière', 0),
(148, 37, 'Chaleur', 0),
(149, 38, 'Matière organique renouvelable', 1),
(150, 38, 'Énergie éolienne', 0),
(151, 38, 'Énergie solaire', 0),
(152, 38, 'Énergie nucléaire', 0),
(153, 39, 'Énergie hydraulique', 1),
(154, 39, 'Énergie solaire', 0),
(155, 39, 'Énergie éolienne', 0),
(156, 39, 'Énergie géothermique', 0),
(157, 40, 'Combustibles fossiles', 1),
(158, 40, 'Énergie solaire', 0),
(159, 40, 'Énergie éolienne', 0),
(160, 40, 'Énergie hydraulique', 0),
(161, 41, 'Plus de 140', 1),
(162, 41, 'Plus de 100', 0),
(163, 41, 'Plus de 200', 0),
(164, 41, 'Plus de 250', 0),
(165, 42, 'Soutenir l\'ADC', 1),
(166, 42, 'Infliger des dégâts', 0),
(167, 42, 'Tank les ennemis', 0),
(168, 42, 'Contrôler la jungle', 0),
(169, 43, 'Contrôler la jungle et aider les lanes', 1),
(170, 43, 'Détruire les tourelles', 0),
(171, 43, 'Protéger l\'ADC', 0),
(172, 43, 'Faire des kills', 0),
(173, 44, 'Détruire le Nexus ennemi', 1),
(174, 44, 'Obtenir des kills', 0),
(175, 44, 'Prendre les objectifs', 0),
(176, 44, 'Gagner de l\'or', 0),
(177, 45, 'Environ 30-40 minutes', 1),
(178, 45, 'Environ 20-30 minutes', 0),
(179, 45, 'Environ 40-50 minutes', 0),
(180, 45, 'Environ 50-60 minutes', 0),
(181, 46, 'Pièces', 1),
(182, 46, 'Or', 0),
(183, 46, 'Gemmes', 0),
(184, 46, 'Essences', 0),
(185, 47, 'Contrôler le mid et infliger des dégâts', 1),
(186, 47, 'Soutenir l\'équipe', 0),
(187, 47, 'Tank les ennemis', 0),
(188, 47, 'Prendre la jungle', 0),
(189, 48, 'Riot Games', 1),
(190, 48, 'Blizzard', 0),
(191, 48, 'Valve', 0),
(192, 48, 'Epic Games', 0),
(193, 49, 'Summoner\'s Rift', 1),
(194, 49, 'Twisted Treeline', 0),
(195, 49, 'Howling Abyss', 0),
(196, 49, 'Crystal Scar', 0),
(197, 50, 'Quentin Tarantino', 1),
(198, 50, 'Steven Spielberg', 0),
(199, 50, 'Martin Scorsese', 0),
(200, 50, 'James Cameron', 0),
(201, 51, 'Tom Hanks', 1),
(202, 51, 'Leonardo DiCaprio', 0),
(203, 51, 'Brad Pitt', 0),
(204, 51, 'Matt Damon', 0),
(205, 52, 'Avatar', 1),
(206, 52, 'Avengers: Endgame', 0),
(207, 52, 'Titanic', 0),
(208, 52, 'Star Wars: The Force Awakens', 0),
(209, 53, 'Forrest Gump', 1),
(210, 53, 'Pulp Fiction', 0),
(211, 53, 'The Shawshank Redemption', 0),
(212, 53, 'Braveheart', 0),
(213, 54, 'Steven Spielberg', 1),
(214, 54, 'George Lucas', 0),
(215, 54, 'James Cameron', 0),
(216, 54, 'Alfred Hitchcock', 0),
(217, 55, 'La Sortie de l\'usine Lumière à Lyon', 1),
(218, 55, 'Voyage dans la Lune', 0),
(219, 55, 'Le Chanteur de jazz', 0),
(220, 55, 'L\'Arrivée d\'un train en gare de La Ciotat', 0),
(221, 56, 'Harrison Ford', 1),
(222, 56, 'Tom Cruise', 0),
(223, 56, 'Mel Gibson', 0),
(224, 56, 'Robert De Niro', 0),
(225, 57, 'E.T. l\'extra-terrestre', 1),
(226, 57, 'Star Wars', 0),
(227, 57, 'Rencontres du troisième type', 0),
(228, 57, 'Alien', 0),
(229, 58, 'Alfred Hitchcock', 1),
(230, 58, 'Stanley Kubrick', 0),
(231, 58, 'James Wan', 0),
(232, 58, 'John Carpenter', 0),
(233, 59, 'George Orwell', 1),
(234, 59, 'Aldous Huxley', 0),
(235, 59, 'Ray Bradbury', 0),
(236, 59, 'J.R.R. Tolkien', 0),
(237, 60, 'Harry Potter à l\'école des sorciers', 1),
(238, 60, 'Harry Potter et la Chambre des secrets', 0),
(239, 60, 'Harry Potter et le Prisonnier d\'Azkaban', 0),
(240, 60, 'Harry Potter et la Coupe de feu', 0),
(241, 61, 'J.R.R. Tolkien', 1),
(242, 61, 'George R.R. Martin', 0),
(243, 61, 'J.K. Rowling', 0),
(244, 61, 'C.S. Lewis', 0),
(245, 62, 'Gatsby le Magnifique', 1),
(246, 62, 'Tendre est la nuit', 0),
(247, 62, 'Le Dernier Nabab', 0),
(248, 62, 'Les Enfants du jazz', 0),
(249, 63, 'Gustave Flaubert', 1),
(250, 63, 'Émile Zola', 0),
(251, 63, 'Marcel Proust', 0),
(252, 63, 'Honoré de Balzac', 0),
(253, 64, 'Miguel de Cervantes', 1),
(254, 64, 'Gabriel Garcia Marquez', 0),
(255, 64, 'Pablo Neruda', 0),
(256, 64, 'Jorge Luis Borges', 0),
(257, 65, 'Frankenstein', 1),
(258, 65, 'Dracula', 0),
(259, 65, 'Docteur Jekyll et M. Hyde', 0),
(260, 65, 'Le Fantôme de l\'Opéra', 0),
(261, 66, 'Mark Twain', 1),
(262, 66, 'Charles Dickens', 0),
(263, 66, 'Jack London', 0),
(264, 66, 'Edgar Allan Poe', 0),
(265, 67, 'Don Quichotte', 1),
(266, 67, 'Guerre et Paix', 0),
(267, 67, 'Les Misérables', 0),
(268, 67, 'Moby Dick', 0),
(269, 68, 'France', 1),
(270, 68, 'Brésil', 0),
(271, 68, 'Allemagne', 0),
(272, 68, 'Argentine', 0),
(273, 69, 'Hockey sur glace', 1),
(274, 69, 'Basketball', 0),
(275, 69, 'Football', 0),
(276, 69, 'Baseball', 0),
(277, 70, 'Roger Federer', 1),
(278, 70, 'Rafael Nadal', 0),
(279, 70, 'Novak Djokovic', 0),
(280, 70, 'Pete Sampras', 0),
(281, 71, 'Football', 1),
(282, 71, 'Basketball', 0),
(283, 71, 'Tennis', 0),
(284, 71, 'Rugby', 0),
(285, 72, 'Kansas City Chiefs', 1),
(286, 72, 'San Francisco 49ers', 0),
(287, 72, 'New England Patriots', 0),
(288, 72, 'Green Bay Packers', 0),
(289, 73, 'Usain Bolt', 1),
(290, 73, 'Carl Lewis', 0),
(291, 73, 'Michael Johnson', 0),
(292, 73, 'Tyson Gay', 0),
(293, 74, 'États-Unis', 1),
(294, 74, 'Chine', 0),
(295, 74, 'Russie', 0),
(296, 74, 'Allemagne', 0),
(297, 75, 'Football', 1),
(298, 75, 'Basketball', 0),
(299, 75, 'Cricket', 0),
(300, 75, 'Tennis', 0),
(301, 76, '60 minutes', 1),
(302, 76, '90 minutes', 0),
(303, 76, '45 minutes', 0),
(304, 76, '30 minutes', 0),
(305, 77, 'Assassinat de l\'archiduc François-Ferdinand', 1),
(306, 77, 'Invasion de la Pologne', 0),
(307, 77, 'Révolution russe', 0),
(308, 77, 'Traité de Versailles', 0),
(309, 78, 'Auguste', 1),
(310, 78, 'Jules César', 0),
(311, 78, 'Néron', 0),
(312, 78, 'Caligula', 0),
(313, 79, 'Seconde Guerre mondiale', 1),
(314, 79, 'Guerre de Corée', 0),
(315, 79, 'Guerre du Vietnam', 0),
(316, 79, 'Guerre froide', 0),
(317, 80, 'Chine', 1),
(318, 80, 'Japon', 0),
(319, 80, 'Inde', 0),
(320, 80, 'Corée', 0),
(321, 81, 'Louis XVI', 1),
(322, 81, 'Louis XV', 0),
(323, 81, 'Louis XIV', 0),
(324, 81, 'Napoléon', 0),
(325, 82, 'Traité de Versailles', 1),
(326, 82, 'Traité de Paris', 0),
(327, 82, 'Traité de Vienne', 0),
(328, 82, 'Traité de Berlin', 0),
(329, 83, 'Abraham Lincoln', 1),
(330, 83, 'George Washington', 0),
(331, 83, 'Thomas Jefferson', 0),
(332, 83, 'John Adams', 0),
(333, 84, 'Théorie de l\'évolution', 1),
(334, 84, 'Théorie de la relativité', 0),
(335, 84, 'Théorie de la gravitation', 0),
(336, 84, 'Théorie de la thermodynamique', 0),
(337, 85, 'Christophe Colomb', 1),
(338, 85, 'Ferdinand Magellan', 0),
(339, 85, 'Marco Polo', 0),
(340, 85, 'Vasco de Gama', 0),
(341, 86, 'Mercure', 1),
(342, 86, 'Vénus', 0),
(343, 86, 'Mars', 0),
(344, 86, 'Jupiter', 0),
(345, 87, 'Hydrogène', 1),
(346, 87, 'Hélium', 0),
(347, 87, 'Oxygène', 0),
(348, 87, 'Azote', 0),
(349, 88, 'Isaac Newton', 1),
(350, 88, 'Albert Einstein', 0),
(351, 88, 'Galilée', 0),
(352, 88, 'Nikola Tesla', 0),
(353, 89, '300 000 km/s', 1),
(354, 89, '150 000 km/s', 0),
(355, 89, '200 000 km/s', 0),
(356, 89, '400 000 km/s', 0),
(357, 90, 'Peau', 1),
(358, 90, 'Foie', 0),
(359, 90, 'Cœur', 0),
(360, 90, 'Poumons', 0),
(361, 91, 'CO2', 1),
(362, 91, 'O2', 0),
(363, 91, 'H2O', 0),
(364, 91, 'N2', 0),
(365, 92, 'Newton', 1),
(366, 92, 'Joule', 0),
(367, 92, 'Watt', 0),
(368, 92, 'Pascal', 0),
(369, 93, 'Azote', 1),
(370, 93, 'Oxygène', 0),
(371, 93, 'Dioxyde de carbone', 0),
(372, 93, 'Argon', 0),
(373, 94, 'Transporter l\'oxygène', 1),
(374, 94, 'Combattre les infections', 0),
(375, 94, 'Produire des hormones', 0),
(376, 94, 'Aider à la digestion', 0),
(377, 95, 'Mozart', 1),
(378, 95, 'Beethoven', 0),
(379, 95, 'Bach', 0),
(380, 95, 'Haydn', 0),
(381, 96, 'The Beatles', 1),
(382, 96, 'The Rolling Stones', 0),
(383, 96, 'Pink Floyd', 0),
(384, 96, 'Led Zeppelin', 0),
(385, 97, 'Bohemian Rhapsody', 1),
(386, 97, 'We Will Rock You', 0),
(387, 97, 'We Are The Champions', 0),
(388, 97, 'Another One Bites The Dust', 0),
(389, 98, 'Bob Marley', 1),
(390, 98, 'Jimmy Cliff', 0),
(391, 98, 'Peter Tosh', 0),
(392, 98, 'Burning Spear', 0),
(393, 99, 'Saxophone', 1),
(394, 99, 'Piano', 0),
(395, 99, 'Guitare', 0),
(396, 99, 'Batterie', 0),
(397, 100, 'Symphonie Inachevée', 1),
(398, 100, 'Symphonie No. 9', 0),
(399, 100, 'Symphonie No. 7', 0),
(400, 100, 'Symphonie No. 8', 0),
(401, 101, 'Rap', 1),
(402, 101, 'Jazz', 0),
(403, 101, 'Rock', 0),
(404, 101, 'Reggae', 0),
(405, 102, 'Stairway to Heaven', 1),
(406, 102, 'Smoke on the Water', 0),
(407, 102, 'Hotel California', 0),
(408, 102, 'Sweet Child O\' Mine', 0),
(409, 103, 'Claude Debussy', 1),
(410, 103, 'Maurice Ravel', 0),
(411, 103, 'Gabriel Fauré', 0),
(412, 103, 'Camille Saint-Saëns', 0),
(413, 104, 'Afrique', 1),
(414, 104, 'Asie', 0),
(415, 104, 'Amérique du Sud', 0),
(416, 104, 'Europe', 0),
(417, 105, 'Le Nil', 1),
(418, 105, 'L\'Amazone', 0),
(419, 105, 'Le Mississippi', 0),
(420, 105, 'Le Yangtsé', 0),
(421, 106, 'Le Mont Everest', 1),
(422, 106, 'Le K2', 0),
(423, 106, 'Le Kangchenjunga', 0),
(424, 106, 'Le Lhotse', 0),
(425, 107, 'Antarctique', 1),
(426, 107, 'Arctique', 0),
(427, 107, 'Groenland', 0),
(428, 107, 'Sibérie', 0),
(429, 108, 'France', 1),
(430, 108, 'Italie', 0),
(431, 108, 'Espagne', 0),
(432, 108, 'Portugal', 0),
(433, 109, 'Chine', 1),
(434, 109, 'Inde', 0),
(435, 109, 'États-Unis', 0),
(436, 109, 'Indonésie', 0),
(437, 110, 'Inde', 1),
(438, 110, 'Chine', 0),
(439, 110, 'Indonésie', 0),
(440, 110, 'États-Unis', 0),
(441, 111, 'Mexique', 1),
(442, 111, 'Brésil', 0),
(443, 111, 'Argentine', 0),
(444, 111, 'Chili', 0),
(445, 112, 'France', 1),
(446, 112, 'Royaume-Uni', 0),
(447, 112, 'Espagne', 0),
(448, 112, 'Italie', 0);

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `theme_id` int(11) DEFAULT NULL,
  `question_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id`, `theme_id`, `question_text`, `created_at`) VALUES
(1, 1, 'Quel est le principal ingrédient du guacamole?', '2024-06-03 08:20:42'),
(2, 2, 'Quelle est la complexité de l\'algorithme de tri rapide?', '2024-06-03 08:20:42'),
(3, 3, 'Quelle est la source principale d\'énergie renouvelable?', '2024-06-03 08:20:42'),
(4, 4, 'Quel est le rôle principal de l\'ADC dans League of Legends?', '2024-06-03 08:20:42'),
(5, 5, 'Qui a réalisé le film \"Inception\"?', '2024-06-03 08:20:42'),
(6, 6, 'Qui a écrit \"Les Misérables\"?', '2024-06-03 08:20:42'),
(7, 7, 'Combien de joueurs une équipe de football a-t-elle?', '2024-06-03 08:20:42'),
(8, 8, 'Qui était le premier président des États-Unis?', '2024-06-03 08:20:42'),
(9, 9, 'Quelle est la formule chimique de l\'eau?', '2024-06-03 08:20:42'),
(10, 10, 'Qui a composé la \"Symphonie No. 5\"?', '2024-06-03 08:20:42'),
(11, 11, 'Quel est le plus long fleuve du monde?', '2024-06-03 08:20:42'),
(12, 12, 'Qui a peint la \"Mona Lisa\"?', '2024-06-03 08:20:42'),
(13, 1, 'Quelle épice est utilisée dans la paella?', '2024-06-03 20:26:03'),
(14, 1, 'Quel type de pâte est utilisée pour faire des lasagnes?', '2024-06-03 20:26:03'),
(15, 1, 'Quel fruit est connu comme le \"roi des fruits\"?', '2024-06-03 20:26:03'),
(16, 1, 'Quelle est la principale saveur de la sauce béarnaise?', '2024-06-03 20:26:03'),
(17, 1, 'Quel ingrédient donne sa couleur rouge au borscht?', '2024-06-03 20:26:03'),
(18, 1, 'Quel poisson est traditionnellement utilisé dans le sushi?', '2024-06-03 20:26:03'),
(19, 1, 'Quel type de lait est utilisé pour faire le fromage feta?', '2024-06-03 20:26:03'),
(20, 1, 'Quel est le fromage italien à base de lait de bufflonne?', '2024-06-03 20:26:03'),
(21, 1, 'Quel plat indien est à base de lentilles?', '2024-06-03 20:26:03'),
(22, 1, 'Quel légume est l\'ingrédient principal de la ratatouille?', '2024-06-03 20:26:03'),
(23, 2, 'Quelle est la complexité de l\'algorithme de tri par insertion?', '2024-06-03 20:26:03'),
(24, 2, 'Quel langage de programmation est souvent utilisé pour les scripts web?', '2024-06-03 20:26:03'),
(25, 2, 'Qu\'est-ce qu\'une base de données relationnelle?', '2024-06-03 20:26:03'),
(26, 2, 'Quelle est la principale fonction d\'un système d\'exploitation?', '2024-06-03 20:26:03'),
(27, 2, 'Qui est connu comme le père de l\'informatique?', '2024-06-03 20:26:03'),
(28, 2, 'Quel est l\'acronyme de l\'intelligence artificielle?', '2024-06-03 20:26:03'),
(29, 2, 'Quelle est la différence entre le HTTP et le HTTPS?', '2024-06-03 20:26:03'),
(30, 2, 'Qu\'est-ce qu\'un algorithme?', '2024-06-03 20:26:03'),
(31, 2, 'Qu\'est-ce qu\'un serveur web?', '2024-06-03 20:26:03'),
(32, 3, 'Quelle est la source principale d\'énergie fossile?', '2024-06-03 20:26:03'),
(33, 3, 'Quel gaz est utilisé dans les ampoules à incandescence?', '2024-06-03 20:26:03'),
(34, 3, 'Qu\'est-ce que l\'énergie cinétique?', '2024-06-03 20:26:03'),
(35, 3, 'Quelle est la source d\'énergie des panneaux solaires?', '2024-06-03 20:26:03'),
(36, 3, 'Quel est le principe de la fission nucléaire?', '2024-06-03 20:26:03'),
(37, 3, 'Quelle est la principale source d\'énergie de l\'éolien?', '2024-06-03 20:26:03'),
(38, 3, 'Qu\'est-ce que la biomasse?', '2024-06-03 20:26:03'),
(39, 3, 'Quelle énergie est produite par la chute d\'eau?', '2024-06-03 20:26:03'),
(40, 3, 'Quelle est la source d\'énergie des centrales thermiques?', '2024-06-03 20:26:03'),
(41, 4, 'Combien de champions sont disponibles dans League of Legends?', '2024-06-03 20:26:03'),
(42, 4, 'Quelle est la principale fonction d\'un support?', '2024-06-03 20:26:03'),
(43, 4, 'Quel est le rôle du jungler?', '2024-06-03 20:26:03'),
(44, 4, 'Quel est le but principal du jeu?', '2024-06-03 20:26:03'),
(45, 4, 'Quelle est la durée moyenne d\'une partie?', '2024-06-03 20:26:03'),
(46, 4, 'Quel est le nom de la monnaie utilisée dans le jeu?', '2024-06-03 20:26:03'),
(47, 4, 'Quel est le rôle d\'un mid laner?', '2024-06-03 20:26:03'),
(48, 4, 'Qui est le créateur de League of Legends?', '2024-06-03 20:26:03'),
(49, 4, 'Quel est le nom du mode de jeu standard?', '2024-06-03 20:26:03'),
(50, 5, 'Qui a réalisé le film \"Pulp Fiction\"?', '2024-06-03 20:26:03'),
(51, 5, 'Quel acteur joue le rôle principal dans \"Forrest Gump\"?', '2024-06-03 20:26:03'),
(52, 5, 'Quel est le film le plus rentable de tous les temps?', '2024-06-03 20:26:03'),
(53, 5, 'Quel film a remporté l\'Oscar du meilleur film en 1994?', '2024-06-03 20:26:03'),
(54, 5, 'Qui a réalisé \"Les Dents de la mer\"?', '2024-06-03 20:26:03'),
(55, 5, 'Quel est le film le plus ancien encore conservé?', '2024-06-03 20:26:03'),
(56, 5, 'Quel acteur est connu pour son rôle dans \"Indiana Jones\"?', '2024-06-03 20:26:03'),
(57, 5, 'Quel film a popularisé le terme \"E.T.\"?', '2024-06-03 20:26:03'),
(58, 5, 'Quel réalisateur est connu pour ses films d\'horreur?', '2024-06-03 20:26:03'),
(59, 6, 'Qui a écrit \"1984\"?', '2024-06-03 20:26:03'),
(60, 6, 'Quel est le titre du premier livre de la série Harry Potter?', '2024-06-03 20:26:03'),
(61, 6, 'Quel auteur a écrit \"Le Seigneur des Anneaux\"?', '2024-06-03 20:26:03'),
(62, 6, 'Quel est le titre du roman célèbre de F. Scott Fitzgerald?', '2024-06-03 20:26:03'),
(63, 6, 'Quel écrivain français a écrit \"Madame Bovary\"?', '2024-06-03 20:26:03'),
(64, 6, 'Qui est l\'auteur de \"Don Quichotte\"?', '2024-06-03 20:26:03'),
(65, 6, 'Quel est le titre du célèbre roman de Mary Shelley?', '2024-06-03 20:26:03'),
(66, 6, 'Qui a écrit \"Les Aventures de Tom Sawyer\"?', '2024-06-03 20:26:03'),
(67, 6, 'Quel roman est connu comme le premier roman moderne?', '2024-06-03 20:26:03'),
(68, 7, 'Quel pays a remporté la Coupe du Monde de la FIFA en 2018?', '2024-06-03 20:26:03'),
(69, 7, 'Quel est le sport national du Canada?', '2024-06-03 20:26:03'),
(70, 7, 'Qui est le joueur de tennis le plus titré?', '2024-06-03 20:26:03'),
(71, 7, 'Quel sport est connu comme \"le sport roi\"?', '2024-06-03 20:26:03'),
(72, 7, 'Quelle équipe a remporté le Super Bowl en 2020?', '2024-06-03 20:26:03'),
(73, 7, 'Quel athlète détient le record du 100 mètres?', '2024-06-03 20:26:03'),
(74, 7, 'Quel pays a remporté le plus de médailles aux Jeux Olympiques?', '2024-06-03 20:26:03'),
(75, 7, 'Quel est le sport le plus populaire au monde?', '2024-06-03 20:26:03'),
(76, 7, 'Quelle est la durée d\'un match de football américain?', '2024-06-03 20:26:03'),
(77, 8, 'Quel événement a déclenché la Première Guerre mondiale?', '2024-06-03 20:26:03'),
(78, 8, 'Qui était le premier empereur de Rome?', '2024-06-03 20:26:03'),
(79, 8, 'Quelle guerre a duré de 1939 à 1945?', '2024-06-03 20:26:03'),
(80, 8, 'Quel pays a construit la Grande Muraille?', '2024-06-03 20:26:03'),
(81, 8, 'Qui était le roi de France pendant la Révolution française?', '2024-06-03 20:26:03'),
(82, 8, 'Quel traité a mis fin à la Première Guerre mondiale?', '2024-06-03 20:26:03'),
(83, 8, 'Quel président américain a aboli l\'esclavage?', '2024-06-03 20:26:03'),
(84, 8, 'Quel est le nom de la théorie de l\'évolution?', '2024-06-03 20:26:03'),
(85, 8, 'Quel explorateur a découvert l\'Amérique en 1492?', '2024-06-03 20:26:03'),
(86, 9, 'Quelle planète est la plus proche du soleil?', '2024-06-03 20:26:03'),
(87, 9, 'Quel est l\'élément chimique le plus léger?', '2024-06-03 20:26:03'),
(88, 9, 'Qui a formulé la loi de la gravitation universelle?', '2024-06-03 20:26:03'),
(89, 9, 'Quelle est la vitesse de la lumière?', '2024-06-03 20:26:03'),
(90, 9, 'Quel est le plus grand organe du corps humain?', '2024-06-03 20:26:03'),
(91, 9, 'Quelle est la formule chimique du dioxyde de carbone?', '2024-06-03 20:26:03'),
(92, 9, 'Quelle est l\'unité de mesure de la force?', '2024-06-03 20:26:03'),
(93, 9, 'Quel est le principal gaz de l\'atmosphère terrestre?', '2024-06-03 20:26:03'),
(94, 9, 'Quelle est la principale fonction des globules rouges?', '2024-06-03 20:26:03'),
(95, 10, 'Qui a composé \"La Flûte enchantée\"?', '2024-06-03 20:26:03'),
(96, 10, 'Quel est le groupe de rock britannique formé en 1960?', '2024-06-03 20:26:03'),
(97, 10, 'Quelle est la chanson la plus célèbre de Queen?', '2024-06-03 20:26:03'),
(98, 10, 'Qui est connu comme le \"roi du reggae\"?', '2024-06-03 20:26:03'),
(99, 10, 'Quel instrument est utilisé dans le jazz?', '2024-06-03 20:26:03'),
(100, 10, 'Quel est le nom de la symphonie inachevée de Schubert?', '2024-06-03 20:26:03'),
(101, 10, 'Quel artiste a chanté \"Like a Rolling Stone\"?', '2024-06-03 20:26:03'),
(102, 10, 'Quel compositeur est surnommé le \"roi de la valse\"?', '2024-06-03 20:26:03'),
(103, 10, 'Quel genre musical est né à la Nouvelle-Orléans?', '2024-06-03 20:26:03'),
(104, 11, 'Quel est le plus grand désert du monde?', '2024-06-03 20:26:03'),
(105, 11, 'Quelle est la capitale de l\'Australie?', '2024-06-03 20:26:03'),
(106, 11, 'Quel est le plus grand océan du monde?', '2024-06-03 20:26:03'),
(107, 11, 'Quel pays a la plus grande population?', '2024-06-03 20:26:03'),
(108, 11, 'Quelle est la plus grande île du monde?', '2024-06-03 20:26:03'),
(109, 11, 'Quel est le plus haut sommet du monde?', '2024-06-03 20:26:03'),
(110, 11, 'Quel pays est connu pour sa forme de botte?', '2024-06-03 20:26:03'),
(111, 11, 'Quel est le plus grand lac d\'eau douce du monde?', '2024-06-03 20:26:03'),
(112, 11, 'Quel est le plus grand pays du monde par superficie?', '2024-06-03 20:26:03'),
(113, 12, 'Qui a peint \"La Cène\"?', '2024-06-03 20:26:03'),
(114, 12, 'Quel mouvement artistique a été fondé par Picasso?', '2024-06-03 20:26:03'),
(115, 12, 'Qui a sculpté \"David\"?', '2024-06-03 20:26:03'),
(116, 12, 'Quel musée abrite la Joconde?', '2024-06-03 20:26:03'),
(117, 12, 'Qui est le peintre de \"Guernica\"?', '2024-06-03 20:26:03'),
(118, 12, 'Qui est l\'auteur des \"Nymphéas\"?', '2024-06-03 20:26:03'),
(119, 12, 'Quel peintre a coupé une partie de son oreille?', '2024-06-03 20:26:03'),
(120, 12, 'Quel artiste a peint le plafond de la chapelle Sixtine?', '2024-06-03 20:26:03'),
(121, 12, 'Quel mouvement artistique est associé à Salvador Dalí?', '2024-06-03 20:26:03');

-- --------------------------------------------------------

--
-- Structure de la table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `themes`
--

INSERT INTO `themes` (`id`, `name`) VALUES
(1, 'Thème de la nourriture'),
(2, 'Thème de l\'informatique'),
(3, 'Thème de l\'énergie'),
(4, 'Thème de League of Legends'),
(5, 'Thème du cinéma'),
(6, 'Thème de la littérature'),
(7, 'Thème du sport'),
(8, 'Thème de l\'histoire'),
(9, 'Thème des sciences'),
(10, 'Thème de la musique'),
(11, 'Thème de la géographie'),
(12, 'Thème de l\'art');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'testuser', '8bb6118f8fd6935ad0876a3be34a717d32708ffd', '2024-06-03 11:31:51');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theme_id` (`theme_id`);

--
-- Index pour la table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT pour la table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
