-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2021 at 02:47 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinique`
--

-- --------------------------------------------------------

--
-- Table structure for table `animal`
--

CREATE TABLE `animal` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `DateNaissance` date NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `animal`
--

INSERT INTO `animal` (`id`, `nom`, `DateNaissance`, `id_user`, `image`) VALUES
(10, 'Simba', '2021-08-08', 1, '10.jpg'),
(11, 'Grumpy Cat', '2021-08-15', 1, '11.jpg'),
(12, 'Jean-truc', '2021-07-26', 2, '12.jpg'),
(13, 'Machin chouette', '2021-04-01', 2, '13.jpg'),
(15, 'Courage', '2021-08-08', 1, '15.jpg'),
(18, 'bisket', '2021-08-01', 1, 'post.png');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(97, 1, 'Très bon film. L\'actrice qui joue Lois Lane est une jolie actrice ^^', 46, '2021-08-10 10:48:57', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`) VALUES
(48, 'Justice League', '<p>Il y a cinq ans nul ne connaissait l\'existence des super-h&eacute;ros... Avec l\'apparition de Superman, Batman, Green Lantern et Wonder Woman, les autorit&eacute;s, effray&eacute;es par la puissance de ses individus, les d&eacute;clar&egrave;rent hors-la-loi. Cependant, lorsque Darkseid projeta de conqu&eacute;rir la Terre, les humains durent se placer sous la protection de leurs h&eacute;ros. Voici le r&eacute;cit de la premi&egrave;re union des super-h&eacute;ros : la c&eacute;l&egrave;bre Ligue de Justice.</p>', '48.jpg', '2021-08-02 08:24:29'),
(49, 'The Walking Deadio', '<p><em>The Walking Dead</em>&nbsp;se d&eacute;roule dans un monde envahi par les&nbsp;<a class=\"mw-redirect\" title=\"Morts-vivant\" href=\"https://fr.wikipedia.org/wiki/Morts-vivant\">morts-vivants</a>. L\'origine du ph&eacute;nom&egrave;ne demeure inconnue.&nbsp;<a title=\"Rick Grimes\" href=\"https://fr.wikipedia.org/wiki/Rick_Grimes\">Rick Grimes</a>, le h&eacute;ros, tente tant bien que mal de faire survivre son groupe de rescap&eacute;s dans ce monde hostile et effrayant, cherchant le refuge id&eacute;al, l\'endroit qu\'ils pourront appeler foyer. Au fur et &agrave; mesure que la s&eacute;rie avance, les personnages &eacute;voluent, progressent, meurent parfois. Certaines affinit&eacute;s vont alors se cr&eacute;er ainsi que certaines tensions.</p>', '49.jpg', '2021-08-02 08:42:40'),
(47, 'Invincible', '<p>Mark Grayson est le fils du plus puissant de tous les super-h&eacute;ros&nbsp;: Omni-man. De plus, il semble avoir h&eacute;rit&eacute; de ses pouvoirs, ce qui n\'est pas pour lui d&eacute;plaire, car il attendait cela depuis que son p&egrave;re lui avait r&eacute;v&eacute;l&eacute; sa v&eacute;ritable identit&eacute; et ses v&eacute;ritables origines. Mais, alors que Mark ma&icirc;trise &agrave; peine ses pouvoirs, la plus grande &eacute;quipe de super-h&eacute;ros, les Gardiens du Globe, est assassin&eacute;e. Cela est le d&eacute;but de combats, trahisons et retournements de situation tandis que les protagonistes murissent et se remettent en cause au fil des ans.</p>', '47.jpg', '2021-08-02 08:21:46'),
(46, 'Injustice', '<h1 id=\"titre-album\">Injustice ann&eacute;e un 1&egrave;re partie</h1>\r\n<p>Avec plus de 500 000 exemplaires vendus, le jeu vid&eacute;o INJUSTICE &ndash; GODS AMONG US est entr&eacute; dans le cercle tr&egrave;s ferm&eacute; des jeux de combat les plus jou&eacute;s au monde. D&eacute;couvrez la s&eacute;rie tir&eacute;e de cet univers alternatif o&ugrave; les h&eacute;ros de DC COMICS subissent le joug d\'un Superman devenu dictateur.<br /><br />Manipul&eacute; par le Joker, Superman tue la m&egrave;re de son enfant &agrave; na&icirc;tre : Lois Lane. Fou de rage, l\'Homme d\'Acier s\'en prend directement au Clown Prince du Crime et l\'arrache des mains de Batman pour lui &ocirc;ter la vie. Cet assassinat de sang-froid marque le d&eacute;but d\'une &egrave;re sombre pour les h&eacute;ros de la Ligue de Justice. Une &egrave;re o&ugrave; chacun devra choisir soigneusement son camp : rejoindre la croisade aveugle de Superman contre le crime ou entrer en r&eacute;bellion aux c&ocirc;t&eacute;s de Batman.<br />(Contient INJUSTICE: GODS AMONG US Vol. 1 : #1-6)</p>', '46.jpg', '2021-08-02 08:17:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(1, 'aze@aze', 'de271790913ea81742b7d31a70d85f50a3d3e5ae', NULL, 'Hugo'),
(2, 'qsd@qsd', '81b87be71decdd74ee12a34ad4c278b401bc2a09', NULL, 'Bertrand'),
(4, 'htran@hotmail.fr', 'de271790913ea81742b7d31a70d85f50a3d3e5ae', 0, 'fskjf');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_users` (`id_user`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `Fk_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
