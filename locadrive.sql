-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : ven. 25 août 2023 à 05:40
-- Version du serveur : 8.0.34
-- Version de PHP : 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `growkom`
--

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

CREATE TABLE `author` (
  `idAuthor` tinyint UNSIGNED NOT NULL,
  `authorFirstName` varchar(50) NOT NULL,
  `authorLastName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`idAuthor`, `authorFirstName`, `authorLastName`) VALUES
(1, 'BETKOM', 'Ahmed Karim'),
(2, 'NJOYA', 'Nassouroudine');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `idCategory` tinyint UNSIGNED NOT NULL,
  `categoryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`idCategory`, `categoryName`) VALUES
(1, 'Politique'),
(2, 'Football'),
(3, 'Éducation'),
(4, 'Société'),
(5, 'Sport'),
(6, 'Afrique'),
(7, 'Monde'),
(9, 'Économie');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `idComment` mediumint UNSIGNED NOT NULL,
  `nickName` varchar(8) DEFAULT NULL,
  `commentContents` text NOT NULL,
  `CommentCreationTimes` datetime NOT NULL,
  `Signaler` tinyint UNSIGNED NOT NULL,
  `Masquer` tinyint UNSIGNED NOT NULL,
  `Post_Id` smallint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`idComment`, `nickName`, `commentContents`, `CommentCreationTimes`, `Signaler`, `Masquer`, `Post_Id`) VALUES
(1, 'Yassine', 'C\'est dommage pour le foot ivoirien', '2022-04-24 12:37:26', 1, 0, 1),
(7, 'Yakoba', 'Vraiment !!!', '2022-04-28 08:00:47', 0, 0, 1),
(8, 'Yassine', 'okay !!!', '2022-04-28 08:07:37', 0, 0, 1),
(9, 'Karim', 'Lol', '2022-04-28 10:01:54', 0, 0, 8),
(10, 'Abdel', 'bien', '2022-04-28 10:02:26', 0, 0, 8),
(11, 'Jamal', 'D’accord ', '2022-04-28 10:02:44', 0, 0, 8),
(12, 'Rama', 'Félicitations !!!', '2022-04-28 12:52:21', 0, 0, 3),
(13, 'Jamal', 'Leader', '2022-04-28 12:55:18', 0, 0, 3),
(14, 'Abdel', 'mes félc.', '2022-04-28 12:57:29', 0, 0, 3),
(15, 'Nasser', 'Merci pour l\'info', '2022-04-28 13:03:15', 0, 0, 3),
(16, 'Alidou', 'Merci', '2022-04-28 13:03:58', 0, 0, 3),
(17, 'Sankara', 'Bien', '2022-04-28 13:05:03', 0, 0, 3),
(18, 'Sacho', 'Bien', '2022-04-28 13:05:25', 0, 0, 3),
(19, 'Eleve', 'Organisation', '2022-04-28 13:05:54', 0, 0, 3),
(20, 'Junior ', 'Bien Macron', '2022-04-28 13:07:57', 0, 0, 5),
(21, 'Sankara', 'J\'avais dit', '2022-04-28 13:12:36', 0, 0, 2),
(22, 'Sankara', 'Bien', '2022-04-28 13:12:46', 0, 0, 2),
(23, 'Abdel', 'Venu', '2022-04-28 13:13:03', 0, 1, 2),
(24, 'Elon', 'Bientôt je rachète facebook ahah', '2022-04-28 13:22:01', 0, 0, 7),
(25, 'Sankara', 'Libéré', '2022-04-28 13:23:33', 0, 0, 7),
(26, 'Sankara', 'remplacer', '2022-04-28 13:24:09', 0, 0, 7),
(27, 'Sankara', 'tel', '2022-04-28 13:24:45', 0, 0, 7),
(28, 'Sankara', 'Thomas', '2022-04-28 13:25:28', 0, 0, 7),
(29, 'Sankara', 'merci', '2022-04-28 13:25:51', 0, 0, 7),
(30, 'Sankara', 'biengpzg,nl ', '2022-04-28 13:26:15', 0, 0, 7),
(31, 'Sankara', 'fonctionnaire', '2022-04-28 13:38:20', 0, 0, 6),
(32, 'Thomas', 'bien fait', '2022-04-28 13:42:57', 0, 0, 6),
(33, 'Armel', 'Comment ça ???', '2022-04-28 13:44:06', 0, 0, 6),
(34, 'Abdel', 'D\'accord', '2022-04-28 13:44:18', 0, 0, 6),
(35, 'Sankara', 'lol', '2022-04-28 13:52:46', 0, 0, 6),
(36, 'Sankara', 'bien', '2022-04-28 13:53:07', 0, 0, 6),
(37, 'Jamal', 'Endroit ', '2022-04-28 14:05:15', 0, 0, 5),
(38, 'Lucie', 'Merci', '2022-04-28 18:06:39', 0, 0, 7),
(39, 'coucou', 'il est bien ce site ! ', '2022-07-22 14:28:41', 0, 0, 11),
(40, 'Stone', 'Bien fait', '2022-10-05 09:14:56', 0, 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `idContact` tinyint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `contactLastname` int NOT NULL,
  `contactFirstname` int NOT NULL,
  `contactEmail` int NOT NULL,
  `description` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `idPost` smallint UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `summarizeArticle` text NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Contents` text NOT NULL,
  `featuredPost` tinyint(1) DEFAULT '0',
  `views` int NOT NULL DEFAULT '0',
  `postCreationTimes` datetime NOT NULL,
  `author_Id` tinyint UNSIGNED DEFAULT NULL,
  `Category_Id` tinyint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`idPost`, `title`, `summarizeArticle`, `Image`, `Contents`, `featuredPost`, `views`, `postCreationTimes`, `author_Id`, `Category_Id`) VALUES
(1, 'Échec de Didier Drogba au premier tour des élections à la Fédération Ivoirienne de Football', 'Didier Drogba ne sera pas président de la Fédération de Côte d\'Ivoire cette année. Il a été battu au premier tour. Idris Diallo a battu Sori Diabate au deuxième tour.', 'Didier-Drogba-Presidnet-de-la-Federation-triste.jpg', '<p>&Eacute;limin&eacute; au premier tour, Die Drogba ne sera plus pr&eacute;sident de la F&eacute;d&eacute;ration de C&ocirc;te d&#39;Ivoire</p>\r\n\r\n<p>Week-end &eacute;lectoral. Didier Drogba ne sera pas le nouveau pr&eacute;sident de la F&eacute;d&eacute;ration ivoirienne de football. L&#39;ancien attaquant a &eacute;t&eacute; &eacute;limin&eacute; lors du premier tour samedi, loin devant Idris Diallo et Sori Diabate. La l&eacute;gende ivoirienne n&#39;a obtenu que 21 voix sur 59 et 130 sur 50 pour ses deux adversaires, qui se retrouveront au second tour. Drogba a &eacute;t&eacute; d&eacute;&ccedil;u, il a re&ccedil;u un fort soutien populaire, mais n&#39;a pas r&eacute;ussi &agrave; convaincre le pr&eacute;sident du club ivoirien. L&#39;&eacute;lection devrait marquer la fin d&#39;une crise de gouvernance pour la direction de la FIFA, qui a &eacute;t&eacute; retard&eacute;e &agrave; plusieurs reprises depuis 2020. Un argument de plus pour Samuel Eto&#39;o dans la course au titre de plus grand joueur africain de l&#39;histoire.</p>\r\n', 0, 43, '2022-04-24 12:06:40', 1, 2),
(2, 'Explosion pétrolière au Nigeria : La police recherche le propriétaire d\'une raffinerie illégale', 'La police nigériane recherche le propriétaire de la raffinerie de pétrole illégale où une explosion a tué au moins 100 personnes selon les autorités.', '180628143246-01-lagos-explosion.jpg', '<p>De nombreuses victimes ont &eacute;t&eacute; br&ucirc;l&eacute;es au point d&#39;&ecirc;tre m&eacute;connaissables.</p>\r\n\r\n<p>Le pr&eacute;sident Muhammadu Buhari a qualifi&eacute; l&#39;incident de &quot;catastrophe et de d&eacute;sastre national&quot;.</p>\r\n\r\n<p>Le raffinage ill&eacute;gal est attrayant car, dans certaines parties du delta du Niger, il est consid&eacute;r&eacute; comme relativement facile &agrave; r&eacute;aliser, malgr&eacute; les efforts d&eacute;ploy&eacute;s pour mettre fin &agrave; cette pratique.</p>\r\n\r\n<p>Les d&eacute;g&acirc;ts caus&eacute;s &agrave; la p&ecirc;che et &agrave; l&#39;agriculture par l&#39;industrie p&eacute;troli&egrave;re au fil des d&eacute;cennies et le non-partage de la richesse p&eacute;troli&egrave;re ont conduit certains &agrave; trouver d&#39;autres moyens de gagner de l&#39;argent.</p>\r\n\r\n<p>On pense que des dizaines de personnes travaillaient dans les usines de raffinage de l&#39;&Eacute;tat d&#39;Imo, dans le sud du Nigeria, lorsqu&#39;elles ont &eacute;t&eacute; prises dans l&#39;immense incendie.</p>\r\n\r\n<p>Traduit avec www.DeepL.com/Translator (version gratuite)</p>\r\n\r\n<p>Le bilan s&#39;est alourdi alors que les secouristes se rendent sur les lieux. Ifeanyi Nnaji, de l&#39;Agence nationale de gestion des urgences, a d&eacute;clar&eacute; &agrave; BBC Igbo que le nombre de morts s&#39;&eacute;levait d&eacute;sormais &agrave; 109.</p>\r\n\r\n<p>&quot;Nous avons appris que de nombreux corps se trouvaient dans les buissons et les for&ecirc;ts avoisinantes, car certains op&eacute;rateurs ill&eacute;gaux et leurs clients se sont mis &agrave; l&#39;abri&quot;, avait-il d&eacute;clar&eacute; &agrave; l&#39;agence de presse AFP.</p>\r\n\r\n<p>Dans un communiqu&eacute; publi&eacute; dimanche, M. Buhari a pr&eacute;sent&eacute; ses condol&eacute;ances aux familles des victimes et a d&eacute;clar&eacute; que les responsables des explosions devaient &ecirc;tre arr&ecirc;t&eacute;s et traduits en justice.</p>\r\n\r\n<p>Les autorit&eacute;s s&#39;efforcent d&#39;endiguer la prolif&eacute;ration des usines ill&eacute;gales o&ugrave; le p&eacute;trole brut vol&eacute; est raffin&eacute;. Le pr&eacute;sident a ordonn&eacute; aux forces de s&eacute;curit&eacute; d&#39;intensifier leurs efforts pour fermer ces raffineries.</p>\r\n\r\n<p>On ne conna&icirc;t pas encore la cause de l&#39;explosion qui s&#39;est produite dans la nuit de samedi &agrave; dimanche, mais les accidents ont &eacute;t&eacute; fr&eacute;quents dans le pass&eacute; sur des sites dangereux similaires o&ugrave; les mesures de s&eacute;curit&eacute; ne sont pas appliqu&eacute;es.</p>\r\n\r\n<p>Le manque de pr&eacute;cautions dans ces installations et la pollution environnementale qu&#39;elles provoquent suscitent des inqui&eacute;tudes.</p>\r\n\r\n<p>Les raffineries de p&eacute;trole officielles du Nigeria ne fonctionnent pas &agrave; pleine capacit&eacute;, ce qui entra&icirc;ne de fr&eacute;quentes p&eacute;nuries de carburant et des hausses de prix dans tout le pays.</p>\r\n', 1, 27, '2022-04-24 14:28:11', 1, 4),
(3, 'Tyson Fury contre Dillian Whyte : Le roi gitan conserve son titre WBC à Wembley', 'Le champion WBC Tyson Fury a réalisé un arrêt époustouflant d\'un coup de poing au sixième round pour battre son compatriote Dillian Whyte et a ensuite insisté sur le fait qu\'il allait se retirer de la boxe.', '220423230913-fury-belts-win-large-169.jpg', '<p>Fury a domin&eacute; ce qui &eacute;tait un combat houleux, puis a l&acirc;ch&eacute; un vicieux uppercut droit.</p>\r\n\r\n<p>Whyte, admirablement, s&#39;est relev&eacute; dans le temps imparti avant de tituber sur l&#39;arbitre et d&#39;interrompre le combat.</p>\r\n\r\n<p>&quot;C&#39;est peut-&ecirc;tre le rideau final pour le Gypsy King&quot;, a d&eacute;clar&eacute; Fury apr&egrave;s le combat.</p>\r\n\r\n<p>Il a ajout&eacute; plus tard : &quot;J&#39;ai pass&eacute; beaucoup de temps sur la route. J&#39;ai &eacute;t&eacute; absent pendant un long moment. J&#39;ai r&eacute;alis&eacute; tout ce que j&#39;ai toujours voulu r&eacute;aliser.</p>\r\n\r\n<p>&quot;Je vais prendre ma retraite en &eacute;tant seulement le deuxi&egrave;me poids lourd de l&#39;histoire, apr&egrave;s Rocky Marciano, &agrave; prendre sa retraite invaincu. J&#39;&eacute;tais imbattable &agrave; ce jeu.&quot;</p>\r\n\r\n<p>Fury - qui a &eacute;galement conserv&eacute; sa ceinture Ring Magazine - est invaincu depuis 33 combats, tandis que Whyte - qui subit sa troisi&egrave;me d&eacute;faite en 31 combats - a &eacute;chou&eacute; lors de sa premi&egrave;re tentative de conqu&ecirc;te d&#39;un titre mondial.</p>\r\n\r\n<p>Si Fury d&eacute;cide de raccrocher les gants, l&#39;homme de 33 ans manquera l&#39;occasion de se battre pour la couronne incontest&eacute;e - un combat qui pourrait avoir lieu plus tard cette ann&eacute;e - et une chance de confirmer son statut de plus grand poids lourd britannique de tous les temps.</p>\r\n\r\n<p>&quot;J&#39;ai promis &agrave; ma femme que ce serait fini apr&egrave;s le combat contre Deontay Wilder&quot;, a-t-il ajout&eacute;. &quot;Mais on m&#39;a propos&eacute; un combat &agrave; Wembley et je le devais aux fans. Quelle fa&ccedil;on de partir&quot;.</p>\r\n\r\n<p>Paris, la femme de Fury, a d&eacute;clar&eacute; &agrave; BT Sport : &quot;J&#39;aimerais qu&#39;il sorte maintenant. Il n&#39;a plus rien &agrave; prouver. S&#39;il avait encore quelque chose &agrave; faire, je lui dirais &#39;Ouais Tyson, fais-le&#39;. Mais il n&#39;a rien &agrave; prouver.</p>\r\n\r\n<p>&quot;Si Tyson continue &agrave; boxer, c&#39;est pour une seule raison et je sais au fond de moi que la seule raison pour laquelle Tyson reviendra, c&#39;est pour le combat d&#39;unification.&quot;</p>\r\n\r\n<ul>\r\n	<li>Le roi gitan - la fin d&#39;une &egrave;re extraordinaire ?</li>\r\n	<li>Fight Talk - La r&eacute;action des m&eacute;dias sociaux au grand combat</li>\r\n	<li>R&eacute;capitulation - Toute l&#39;action telle qu&#39;elle s&#39;est d&eacute;roul&eacute;e</li>\r\n</ul>\r\n\r\n<h2><strong>Une foule record assiste au plus grand coup de poing de Fury</strong></h2>\r\n\r\n<p><br />\r\nAvec 94 000 spectateurs - un record britannique de l&#39;apr&egrave;s-guerre - l&#39;atmosph&egrave;re est &eacute;lectrique, comme nulle part ailleurs, pour un combat que d&#39;aucuns qualifient de plus grand choc de poids lourds enti&egrave;rement britannique de l&#39;histoire.</p>\r\n\r\n<p>Des hu&eacute;es ont r&eacute;sonn&eacute; dans le stade embl&eacute;matique lorsque Whyte, gonfl&eacute; &agrave; bloc, a pouss&eacute; son hurlement de loup caract&eacute;ristique avant de monter sur le ring.</p>\r\n\r\n<p>La mont&eacute;e sur le ring de Fury est extravagante. Elle commence sur l&#39;air de &quot;American Pie&quot; de Don McLean, se transforme en &quot;Juicy&quot; de Notorious B.I.G et se termine sur &quot;Sex on Fire&quot; de Kings of Leon. Fury s&#39;est ensuite assis sur un tr&ocirc;ne alors que des feux d&#39;artifice explosaient dans le ciel, avant de se diriger vers le ring.</p>\r\n\r\n<p>Il domine Whyte et les deux hommes se touchent les gants. Avant le combat, Fury a laiss&eacute; entendre qu&#39;il pourrait passer en position de gaucher et neutraliser le dangereux crochet du gauche de Whyte, mais, &eacute;tonnamment, c&#39;est Whyte qui s&#39;est pr&eacute;sent&eacute; en gaucher dans un premier round d&eacute;licat.</p>\r\n\r\n<p>C&#39;est ensuite au tour de Fury de passer de l&#39;orthodoxe au deuxi&egrave;me round, alors que la bataille des jeux d&#39;esprit se poursuit, le champion remportant les deux premiers rounds.</p>\r\n\r\n<p>Il a r&eacute;alis&eacute; une solide combinaison de deux coups de poing dans le troisi&egrave;me, ce qui a incit&eacute; Whyte &agrave; charger son adversaire. Mais le challenger ne peut pas s&#39;approcher de Fury, qui utilise son avantage de taille et de port&eacute;e pour tenir Whyte &agrave; distance &agrave; mesure que le combat progresse.</p>\r\n\r\n<p>Le combat s&#39;&eacute;chauffe v&eacute;ritablement dans un quatri&egrave;me round &eacute;pic&eacute;. Whyte encha&icirc;ne les coups lorsqu&#39;on lui demande de faire une pause, ce qui agite clairement Fury.</p>\r\n\r\n<p>Les combattants re&ccedil;oivent deux fois un avertissement de Mark Lyson, l&#39;arbitre ayant du mal &agrave; contr&ocirc;ler les deux hommes qui p&egrave;sent ensemble 37 kg.</p>\r\n\r\n<p>Les droites indirectes t&eacute;l&eacute;guid&eacute;es de Whyte n&#39;arrivent pas &agrave; toucher l&#39;insaisissable Fury, qui s&#39;en sert avec facilit&eacute;.</p>\r\n\r\n<p>C&#39;est alors qu&#39;arrive le plus grand coup de Fury dans ce qui s&#39;av&egrave;re &ecirc;tre une carri&egrave;re illustre. Il envoie un direct du gauche et lorsque Whyte s&#39;avance, Fury envoie un uppercut brutal.</p>\r\n\r\n<p>Whyte est tomb&eacute; sur la toile. Il a canalis&eacute; l&#39;esprit de guerrier dont il a parl&eacute; avant le combat mais, lorsqu&#39;il s&#39;est relev&eacute;, il n&#39;&eacute;tait clairement pas en position de continuer.</p>\r\n', 0, 29, '2022-04-24 14:32:47', 1, 5),
(4, 'Le Bayern Munich a remporté son 10e titre consécutif en Bundesliga en s\'imposant face au Borussia Do', 'L\'équipe de Julian Nagelsmann a une nouvelle fois dominé ses rivaux nationaux cette saison et cette victoire lui a permis de prendre 12 points d\'avance en tête du classement à trois journées de la fin.\r\nSerge Gnabry a ouvert le score d\'un sublime toucher et d\'une volée, avant que Robert Lewandowski n\'ajoute un second but.', '1393183052.0.jpg', '<p>Le penalty d&#39;Emre Can a r&eacute;duit l&#39;&eacute;cart mais Jamal Musiala a ajout&eacute; un troisi&egrave;me but en fin de match.</p>\r\n\r\n<p>Le jeune homme de 19 ans a claqu&eacute; le ballon &agrave; bout portant pour faire vibrer l&#39;Allianz Arena et offrir au Bayern un 32e titre de champion.</p>\r\n\r\n<p>Cette victoire intervient &agrave; un moment o&ugrave; Nagelsmann a d&eacute;clar&eacute; avoir re&ccedil;u des menaces de mort en ligne apr&egrave;s l&#39;&eacute;limination surprise de son &eacute;quipe en Ligue des champions face &agrave; Villarreal.</p>\r\n\r\n<p>S&#39;il n&#39;a pas &eacute;t&eacute; en mesure de reproduire le succ&egrave;s qu&#39;il a connu en remportant la comp&eacute;tition europ&eacute;enne de clubs d&#39;&eacute;lite en 2019-20, au niveau national, le Bayern reste intouchable.</p>\r\n\r\n<p>L&#39;attaquant Thomas M&uuml;ller, qui est devenu le premier joueur &agrave; remporter 11 titres de Bundesliga, a d&eacute;clar&eacute; : &quot;C&#39;&eacute;tait l&#39;occasion de remettre les pendules &agrave; l&#39;heure. Il y a eu beaucoup de frustration r&eacute;cemment et c&#39;&eacute;tait l&#39;occasion de se d&eacute;fouler. Maintenant, tout est merveilleux.</p>\r\n\r\n<p>&quot;Nous voulions vraiment le gagner ici. Il y a eu beaucoup de frustration ces derniers jours et nous avons pu nous d&eacute;fouler aujourd&#39;hui.</p>\r\n\r\n<p>&quot;Ce n&#39;est pas ennuyeux. C&#39;est exceptionnel. Plus vous gagnez, plus vous devenez avide chaque ann&eacute;e.&quot;</p>\r\n\r\n<p>Cette victoire a port&eacute; leur s&eacute;rie d&#39;invincibilit&eacute; &agrave; neuf matches et avec seulement quatre d&eacute;faites en championnat cette saison, personne n&#39;a pu suivre le rythme.</p>\r\n\r\n<p>Lewandowski a contribu&eacute; &agrave; la r&eacute;alisation de 33 buts, apr&egrave;s avoir trouv&eacute; le chemin des filets 41 fois la saison derni&egrave;re, un record en Bundesliga.</p>\r\n\r\n<p>&quot;C&#39;est &eacute;norme de faire partie de l&#39;&eacute;quipe qui remporte un dixi&egrave;me titre d&#39;affil&eacute;e&quot;, a d&eacute;clar&eacute; Lewandowski, 33 ans. &quot;L&#39;ambiance &agrave; la maison n&#39;a pas &eacute;t&eacute; bonne ces deux derni&egrave;res semaines, donc ce titre va nous aider &agrave; nous remettre sur les rails.&quot;</p>\r\n\r\n<p>L&#39;avenir de Lewandowski reste incertain avec son contrat qui expire en 2023, et Dortmund pourrait &eacute;galement &ecirc;tre pr&ecirc;t pour un changement significatif dans sa ligne d&#39;attaque, avec Erling Haaland qui se rapproche d&#39;un transfert &agrave; Manchester City.</p>\r\n\r\n<p>Le joueur de 21 ans a inscrit 18 buts en 21 matches de Bundesliga cette saison et son d&eacute;part &eacute;ventuel pourrait s&#39;av&eacute;rer d&eacute;terminant dans les espoirs de Dortmund de r&eacute;duire l&#39;&eacute;cart avec ses rivaux la saison prochaine.</p>\r\n\r\n<p>Au total, le Bayern a remport&eacute; ses cinq derniers titres de Bundesliga avec 64 points d&#39;&eacute;cart et ce dernier succ&egrave;s souligne une fois de plus l&#39;&eacute;cart de classe que ses challengers doivent trouver le moyen de combler.</p>\r\n', 0, 29, '2022-04-24 15:44:26', 1, 2),
(5, 'Élection française : Une victoire historique mais Macron a polarisé la France', 'Avant les mises en garde, il est juste de reconnaître l\'ampleur de la réussite du président Macron.', '_123192737_macronvic.jpg', '<p>On ne le dit pas assez, mais c&#39;est la premi&egrave;re fois qu&#39;un pr&eacute;sident de la Cinqui&egrave;me R&eacute;publique au pouvoir est r&eacute;&eacute;lu.</p>\r\n\r\n<p>Oui, des pr&eacute;sidents ont d&eacute;j&agrave; conserv&eacute; l&#39;Elys&eacute;e. Mais tant Fran&ccedil;ois Mitterrand en 1988 que Jacques Chirac en 2002 &eacute;taient effectivement dans l&#39;opposition pendant la p&eacute;riode pr&eacute;c&eacute;dant le vote.</p>\r\n\r\n<p>Dans les deux cas, le gouvernement effectif &eacute;tait - &agrave; la suite d&#39;&eacute;lections parlementaires de mi-mandat - entre les mains des adversaires du pr&eacute;sident. Bien qu&#39;ils aient &eacute;t&eacute; au pouvoir, Mitterrand et Chirac &eacute;taient politiquement impuissants - mais cela a aid&eacute; lorsque la roue a tourn&eacute; &agrave; nouveau et qu&#39;ils se sont retrouv&eacute;s en position favorable.</p>\r\n\r\n<p>Quant &agrave; la victoire de De Gaulle en 1965, il n&#39;avait jamais &eacute;t&eacute; &eacute;lu par le peuple.</p>\r\n\r\n<p>Emmanuel Macron est donc le premier pr&eacute;sident des temps modernes qui, apr&egrave;s avoir g&eacute;r&eacute; tous les aspects de la politique &eacute;trang&egrave;re et int&eacute;rieure pendant un mandat complet, a de nouveau gagn&eacute; la confiance du peuple.</p>\r\n\r\n<p>Si l&#39;on consid&egrave;re la relation de longue date de la France avec le gouvernement - qui consiste essentiellement &agrave; les accueillir et &agrave; les chasser &agrave; la premi&egrave;re occasion - ce n&#39;est pas un mince exploit.</p>\r\n\r\n<p>Il l&#39;a fait par deux m&eacute;thodes, la premi&egrave;re &eacute;tant de bon augure pour les cinq prochaines ann&eacute;es, la seconde moins.</p>\r\n\r\n<p>Les r&eacute;sultats sugg&egrave;rent que, sous la masse bouillonnante des caricatures des m&eacute;dias sociaux - les riches parisiens arrogants, la foule provinciale en col&egrave;re - se cachent des millions de Fran&ccedil;ais de type moyen qui estiment qu&#39;Emmanuel Macron n&#39;a pas &eacute;t&eacute; du tout un mauvais pr&eacute;sident.</p>\r\n\r\n<p>Ces personnes appr&eacute;cient que le ch&ocirc;mage ne soit plus un probl&egrave;me politique, en grande partie gr&acirc;ce aux r&eacute;formes de Macron. Ils pensent que sa gestion de Covid &eacute;tait comp&eacute;tente, et ils sont d&#39;accord pour dire que le recul de l&#39;&acirc;ge de la retraite est in&eacute;vitable.</p>\r\n\r\n<p>Ils discernent &eacute;galement un leader qui peut plus que tenir son rang sur la sc&egrave;ne internationale. Ils sont heureux qu&#39;il y ait &agrave; l&#39;&Eacute;lys&eacute;e quelqu&#39;un qui ait la stature n&eacute;cessaire pour parler franchement avec Poutine, m&ecirc;me si cette tentative s&#39;est av&eacute;r&eacute;e infructueuse.</p>\r\n\r\n<p>Et ils pensent que sous la direction de Macron, la France peut aspirer &agrave; prendre la t&ecirc;te de l&#39;Europe, &agrave; un moment o&ugrave; sa vision d&#39;une plus grande autonomie militaire et &eacute;conomique pour l&#39;UE semble de plus en plus pertinente. Sur ce plan, le contraste avec Marine Le Pen ne pouvait &ecirc;tre plus frappant.</p>\r\n\r\n<p>Ces personnes n&#39;aiment peut-&ecirc;tre pas particuli&egrave;rement Emmanuel Macron - il est trop diff&eacute;rent - mais elles sont suffisamment nombreuses &agrave; le respecter.</p>\r\n\r\n<p>Cependant, le deuxi&egrave;me aspect de la m&eacute;thodologie Macron est plus probl&eacute;matique - et c&#39;est l&agrave; que les mises en garde entrent en jeu.</p>\r\n\r\n<p>Il y a cinq ans, Macron a fait un pari brillant sur l&#39;&eacute;tat de la politique moderne.</p>\r\n\r\n<p>En se pla&ccedil;ant au centre, il a d&eacute;truit l&#39;ancienne paire de conservateurs et de sociaux-d&eacute;mocrates, et en utilisant les pouvoirs implicites de la Cinqui&egrave;me R&eacute;publique de De Gaulle, il a install&eacute; un syst&egrave;me de gouvernement tr&egrave;s personnalis&eacute; et tr&egrave;s concentr&eacute; depuis l&#39;Elys&eacute;e.</p>\r\n\r\n<p>L&#39;opposition a &eacute;t&eacute; repouss&eacute;e aux &quot;extr&ecirc;mes&quot; de la gauche et de la droite, o&ugrave; il pensait qu&#39;elle ne pourrait jamais vraiment constituer une menace. Jusqu&#39;&agrave; pr&eacute;sent, il a eu raison, comme le montre cette &eacute;lection.</p>\r\n\r\n<p>Mais l&#39;&eacute;lection a &eacute;galement d&eacute;montr&eacute; autre chose : que de plus en plus de Fran&ccedil;ais sont d&eacute;sormais pr&ecirc;ts &agrave; fricoter avec les &quot;extr&ecirc;mes&quot;. Ils le font parce que, gr&acirc;ce au succ&egrave;s de la r&eacute;volution Macron, ils n&#39;ont nulle part o&ugrave; aller s&#39;ils veulent s&#39;opposer &agrave; lui.</p>\r\n\r\n<p>Beaucoup de ces &eacute;lecteurs - notamment les millions qui ont choisi le candidat d&#39;extr&ecirc;me gauche Jean-Luc M&eacute;lenchon - veulent maintenant prendre leur revanche sur le chef de l&#39;&Eacute;tat nouvellement r&eacute;&eacute;lu.</p>\r\n\r\n<p>Ils esp&egrave;rent pouvoir le faire lors des &eacute;lections l&eacute;gislatives qui auront lieu en juin. Mais si cela ne fonctionne pas, ils r&ecirc;vent d&#39;un &quot;troisi&egrave;me tour&quot; social en septembre qui prendrait la forme de manifestations anti-Macron dans la rue, surtout si celui-ci a d&#39;ici l&agrave; lanc&eacute; une nouvelle vague de r&eacute;formes.</p>\r\n\r\n<p>Emmanuel Macron commencera sans doute ce second mandat en promettant un nouveau type de gouvernement. Il se montrera plus &agrave; l&#39;&eacute;coute. Il sait qu&#39;il y a des blessures qui doivent &ecirc;tre pans&eacute;es. Le probl&egrave;me, c&#39;est qu&#39;il a d&eacute;j&agrave; dit ce genre de choses, et que beaucoup de gens ne le croient tout simplement pas.</p>\r\n\r\n<p>&quot;Cette &eacute;lection n&#39;a pas seulement montr&eacute; qu&#39;il y a deux Frances oppos&eacute;es. Elle a &eacute;galement r&eacute;v&eacute;l&eacute;, pour la premi&egrave;re fois, une tendance croissante des gens &agrave; dire que le camp oppos&eacute; n&#39;est pas l&eacute;gitime&quot;, a d&eacute;clar&eacute; la commentatrice Natacha Polony.</p>\r\n\r\n<p>&quot;Dans le pass&eacute;, les &eacute;lections se terminaient toujours par quelqu&#39;un que les gens reconnaissaient comme le pr&eacute;sident de tous les Fran&ccedil;ais. Je ne suis pas s&ucirc;re que ce soit d&eacute;sormais le cas&quot;.</p>\r\n', 0, 20, '2022-04-24 19:48:08', 1, 1),
(6, 'Six soldats tués, 20 blessés dans des attaques \"terroristes\" au Mali', 'Six soldats ont été tués et 20 blessés dans des attaques simultanées visant trois bases de l\'armée dans le centre du Mali dimanche, a indiqué l\'armée malienne.', 'armee-mali-ff575f-0@1x.jpeg', '<p>Les cibles de Sevare, Niono et Bapho ont toutes &eacute;t&eacute; frapp&eacute;es par &quot;des groupes terroristes arm&eacute;s (qui) ont utilis&eacute; des v&eacute;hicules suicides bourr&eacute;s d&#39;explosifs&quot;, a indiqu&eacute; l&#39;arm&eacute;e dans un communiqu&eacute;.</p>\r\n\r\n<p>Un groupe li&eacute; au pr&eacute;dicateur Amadou Koufa a revendiqu&eacute; ces attaques, selon un enregistrement audio transmis dimanche &agrave; l&#39;AFP par une source proche des assaillants pr&eacute;sum&eacute;s.</p>\r\n\r\n<p>Le groupe, Katiba du Macina, appartient au Groupe de soutien &agrave; l&#39;islam et aux musulmans (GSIM), une alliance li&eacute;e &agrave; Al-Qa&iuml;da et le plus grand r&eacute;seau jihadiste du Sahel.</p>\r\n\r\n<p>&quot;Dimanche matin, les moudjahidines de la Katiba du Macina ont frapp&eacute; trois camps des (forces arm&eacute;es maliennes)&quot;, a d&eacute;clar&eacute; &agrave; l&#39;AFP un membre du groupe dans un message audio.</p>\r\n\r\n<p>La source a indiqu&eacute; que Bapho et Niono ont &eacute;t&eacute; touch&eacute;s, conform&eacute;ment aux informations de l&#39;arm&eacute;e malienne.</p>\r\n\r\n<p>Elle a &eacute;galement indiqu&eacute; que S&eacute;gou a &eacute;t&eacute; attaqu&eacute;e, ce qui ne faisait pas partie des cibles mentionn&eacute;es par l&#39;arm&eacute;e malienne.</p>\r\n\r\n<p>&quot;Nous avons frapp&eacute; ces camps en m&ecirc;me temps, &agrave; cinq minutes d&#39;intervalle. (Outre les) morts, nous leur avons caus&eacute; des d&eacute;g&acirc;ts mat&eacute;riels&quot;, indique l&#39;enregistrement audio.</p>\r\n\r\n<p>Des sources militaires avaient auparavant indiqu&eacute; &agrave; l&#39;AFP que les attaques avaient eu lieu &agrave; 0500 GMT &agrave; Sevare, Niono et Bapho, tous situ&eacute;s dans le centre du pays.</p>\r\n\r\n<p>L&#39;arm&eacute;e malienne a d&eacute;clar&eacute; que six soldats sont morts et 15 ont &eacute;t&eacute; bless&eacute;s &agrave; Sevare, tandis que 11 attaquants, y compris le conducteur du v&eacute;hicule suicide, ont &eacute;t&eacute; tu&eacute;s.</p>\r\n\r\n<p>Un autre soldat a &eacute;t&eacute; bless&eacute; &agrave; Bapho et quatre autres &agrave; Niono.</p>\r\n\r\n<p><strong>10 terroristes neutralis&eacute;s</strong></p>\r\n\r\n<p>A Sevare, &quot;il y a eu une double attaque terroriste avec des coups de feu et des explosions de machines. L&#39;arm&eacute;e a ripost&eacute;&quot;, a d&eacute;clar&eacute; l&#39;une des sources militaires.</p>\r\n\r\n<p>Outre les 11 assaillants tu&eacute;s, trois autres ont &eacute;t&eacute; arr&ecirc;t&eacute;s, a indiqu&eacute; l&#39;arm&eacute;e, ajoutant que &quot;beaucoup de mat&eacute;riel militaire&quot; avait &eacute;t&eacute; r&eacute;cup&eacute;r&eacute; chez les assaillants.</p>\r\n\r\n<p>Dans un autre incident, une unit&eacute; militaire en patrouille dans le centre du Mali est tomb&eacute;e dans une embuscade et &quot;10 terroristes ont &eacute;t&eacute; neutralis&eacute;s&quot;, a indiqu&eacute; l&#39;arm&eacute;e.</p>\r\n\r\n<p>&quot;La situation est sous contr&ocirc;le. Les FAMa (forces arm&eacute;es maliennes) passent au peigne fin les secteurs cibl&eacute;s et les mesures de s&eacute;curit&eacute; sont renforc&eacute;es dans toutes les emprises&quot;, indique-t-elle dans son communiqu&eacute;.</p>\r\n\r\n<p>&quot;Nous avons demand&eacute; &agrave; la MINUSMA (la mission de l&#39;ONU au Mali), dans le cadre de notre collaboration, d&#39;envoyer une force d&#39;intervention rapide pr&egrave;s du camp de Sevare pour aider &agrave; le s&eacute;curiser&quot;, a poursuivi la source.</p>\r\n\r\n<p>Une autre source militaire au sein de la MINUSMA a confirm&eacute; l&#39;information.</p>\r\n\r\n<p>La MINUSMA a &quot;fermement condamn&eacute;&quot; les attaques et a confirm&eacute; avoir d&eacute;ploy&eacute; une force d&#39;intervention rapide &agrave; Sevare dans un message sur Twitter.</p>\r\n\r\n<p>L&#39;effondrement d&#39;un poste de police a caus&eacute; la plupart des d&eacute;c&egrave;s de soldats &agrave; Sevare, selon le communiqu&eacute; de l&#39;arm&eacute;e, ajoutant qu&#39;un h&eacute;licopt&egrave;re et deux v&eacute;hicules avaient &eacute;galement &eacute;t&eacute; endommag&eacute;s.</p>\r\n\r\n<p>L&#39;arm&eacute;e a d&eacute;clar&eacute; avoir r&eacute;cup&eacute;r&eacute; deux fusils d&#39;assaut AK-47, des t&eacute;l&eacute;phones portables et du mat&eacute;riel militaire aupr&egrave;s des assaillants.</p>\r\n\r\n<p><strong>L&#39;instabilit&eacute; r&eacute;gionale</strong></p>\r\n\r\n<p>Le Mali, l&#39;un des pays les plus pauvres du monde, est aux prises avec une insurrection djihadiste qui dure depuis dix ans et qui a fait des milliers de victimes et chass&eacute; des centaines de milliers de personnes de chez elles.</p>\r\n\r\n<p>Les troubles caus&eacute;s par des groupes affili&eacute;s &agrave; Al-Qaida et au groupe &Eacute;tat islamique se sont &eacute;galement propag&eacute;s au Burkina Faso et au Niger voisins.</p>\r\n\r\n<p>Le dernier assaut contre l&#39;arm&eacute;e malienne est intervenu alors que le Burkina Faso a annonc&eacute; dimanche que cinq de ses soldats avaient p&eacute;ri dans une attaque djihadiste qui a fait une dizaine de morts dans le nord du pays.</p>\r\n\r\n<p>La col&egrave;re de la population face &agrave; l&#39;incapacit&eacute; du pr&eacute;sident &eacute;lu Ibrahim Boubacar Keita &agrave; faire reculer l&#39;insurrection a &eacute;t&eacute; l&#39;&eacute;l&eacute;ment d&eacute;clencheur d&#39;une prise de pouvoir militaire au Mali en ao&ucirc;t 2020.</p>\r\n\r\n<p>L&#39;avanc&eacute;e de l&#39;insurrection vers le sud du nord du Mali a incit&eacute; la France &agrave; intervenir en 2013, alors que la violence augmentait avec la formation de groupes d&#39;autod&eacute;fense et de gangs criminels &agrave; base ethnique.</p>\r\n\r\n<p>Mais Paris a annonc&eacute; en f&eacute;vrier qu&#39;elle mettait fin &agrave; son op&eacute;ration militaire de pr&egrave;s de dix ans au Mali, dans le cadre d&#39;une crise diplomatique avec la junte de Bamako sur son utilisation pr&eacute;sum&eacute;e de mercenaires russes.</p>\r\n\r\n<p>Le gouvernement malien nie ces accusations et affirme avoir recours &agrave; des instructeurs militaires russes.</p>\r\n\r\n<p>La France et les &Eacute;tats-Unis ont affirm&eacute; qu&#39;il s&#39;agissait de combattants du groupe paramilitaire priv&eacute; Wagner, dont la pr&eacute;sence a &eacute;t&eacute; constat&eacute;e dans d&#39;autres pays africains d&eacute;chir&eacute;s par des conflits, comme la R&eacute;publique centrafricaine et la Libye.</p>\r\n', 0, 24, '2022-04-25 19:35:23', 1, 1),
(7, 'L\'action de Twitter augmente après l\'annonce de l\'acceptation de l\'offre publique d\'achat de Musk.', 'Les actions de Twitter ont fortement augmenté lundi, car la société va bientôt accepter l\'offre de rachat d\'Elon Musk, un changement spectaculaire après que le conseil d\'administration ait initialement organisé une défense par \"pilule empoisonnée\" pour parer à l\'offre de rachat hostile de l\'entrepreneur milliardaire.', 'cover-r4x3w1000-624aca2830677-ae9ab8321c0d59ac71112b7464387635565edf9e-jpg.jpg', '<p>L&#39;accord, qui pourrait &ecirc;tre annonc&eacute; plus tard dans la journ&eacute;e selon des m&eacute;dias tels que le Wall Street Journal, placerait le patron de Tesla &agrave; la t&ecirc;te de l&#39;influent site de m&eacute;dias sociaux qui est peut-&ecirc;tre plus connu pour avoir &eacute;t&eacute;, &agrave; un moment donn&eacute;, la plateforme de pr&eacute;dilection de l&#39;ancien pr&eacute;sident am&eacute;ricain Donald Trump.</p>\r\n\r\n<p>Apr&egrave;s une vingtaine de minutes d&#39;&eacute;changes, l&#39;action Twitter &eacute;tait en hausse de 3,6 % dans un contexte de baisse des cours &agrave; New York, o&ugrave; le Dow, le Nasdaq et le S&amp;P 500 &eacute;taient tous dans le rouge &agrave; moins d&#39;un pour cent.</p>\r\n\r\n<p>Au d&eacute;but du mois, M. Musk avait lanc&eacute; son offre publique d&#39;achat hostile de 43 milliards de dollars sur la soci&eacute;t&eacute;, en la pr&eacute;sentant comme une promotion de la libert&eacute; d&#39;expression.</p>\r\n\r\n<p>Bien que le conseil d&#39;administration de la soci&eacute;t&eacute; ait d&eacute;clar&eacute; qu&#39;il examinait l&#39;offre, il l&#39;a ensuite repouss&eacute;e et a adopt&eacute; un plan de &quot;pilule empoisonn&eacute;e&quot; qui rendrait plus difficile l&#39;acquisition d&#39;une participation majoritaire par Musk.</p>\r\n\r\n<p>La semaine derni&egrave;re, Musk - consid&eacute;r&eacute; comme l&#39;homme le plus riche du monde en raison de la popularit&eacute; explosive des v&eacute;hicules &eacute;lectriques Tesla ainsi que d&#39;autres entreprises - a d&eacute;clar&eacute; qu&#39;il avait r&eacute;uni 46,5 milliards de dollars de financement pour l&#39;op&eacute;ration et qu&#39;il &quot;&eacute;tudiait&quot; une offre publique d&#39;achat directe aux actionnaires.</p>\r\n\r\n<p>Dans une d&eacute;claration, M. Musk a indiqu&eacute; que l&#39;op&eacute;ration reposait sur une facilit&eacute; de cr&eacute;dit de 13 milliards de dollars accord&eacute;e par un consortium financier dirig&eacute; par Morgan Stanley, un pr&ecirc;t sur marge distinct de 12,5 milliards de dollars accord&eacute; par la m&ecirc;me banque, ainsi que 21 milliards de dollars provenant de la fortune personnelle de M. Musk.</p>\r\n', 0, 8, '2022-04-25 19:59:51', 1, 7),
(8, 'Djamel Belmadi a complètement dérapé et veut plomber les algériens auprès de la FIFA', '\"Je ne dis pas qu\'il faut le tuer, je ne dis pas qu\'il faut le tuer...\" C\'est ce que répétait Djamel Belmadi à son interview de ce dimanche passé à la chaine de télévision de la fédération algérienne de football.', 'officiel-belmadi-reste-le-selectionneur-de-lalgerie.jpg', '<p>Alg&eacute;rie vs Cameroun, l&#39;incroyable&nbsp;d&eacute;rapage de Djamel Belmadi qui plombe les alg&eacute;riens. Apr&egrave;s la d&eacute;faite des alg&eacute;riens au stade de Mustapha Tchaker de Blida face aux lions indomptables du&nbsp;Cameroun, les Fennecs ont du mal &agrave; dig&eacute;rer. La pilule reste toujours tr&egrave;s am&egrave;re.</p>\r\n\r\n<ul>\r\n	<li>Le s&eacute;lectionneur alg&eacute;rien Djamel Belmadi est une fois encore sorti&nbsp;de son silence pour fustiger avec des mots tr&egrave;s durs l&#39;arbitre gambien. Dans une interview accord&eacute;e &agrave; la chaine de t&eacute;l&eacute;vision de la f&eacute;d&eacute;ration alg&eacute;rienne de football, l&#39;ancien marseillais a&nbsp;l&acirc;ch&eacute; de violentes diatribes &agrave; l&#39;endroit de l&#39;arbitre central de ce fameux match, le gambien Bakary Papa&nbsp;Gassama. <strong>&quot;On le laisse comme &ccedil;a ?... Je ne dis pas qu&#39;il faut le tuer mais...&quot;</strong> Belmadi champion d&#39;Afrique 2019, pense comme la plupart des alg&eacute;riens que son &eacute;quipe a &eacute;t&eacute; syst&eacute;matiquement p&eacute;nalis&eacute;e par des erreurs d&#39;arbitrages suffisamment suspectes pour crier aux complots contre tout un peuple.</li>\r\n</ul>\r\n\r\n<p><strong>&quot;Plus jamais de la vie on laissera 2, 3 personnes conspirer contre notre pays, on ne laissera plus jamais un arbitre comme&nbsp;&ccedil;a venir mettre &agrave; mal un pays...&quot;&nbsp;</strong>Djamel Belmadi</p>\r\n\r\n<ul>\r\n	<li>Selon les m&eacute;dias alg&eacute;riens, El Kabbach, la commission de discipline de la FIFA va officiellement prononcer une sanction contre l&#39;Alg&eacute;rie. Une amande de 3000 francs suisse est sugg&eacute;r&eacute;e comme sanction.&nbsp;Une sanction dite l&eacute;g&egrave;re compar&eacute;e aux peines encourues du fait du rapport accablant d&eacute;pos&eacute; par l&#39;arbitre gambien Bakary Gassama. La m&ecirc;me source souligne que les fennecs d&#39;Alg&eacute;rie risquaient d&#39;&ecirc;tre priv&eacute;s de leurs publics en plus d&#39;une lourde sanction financi&egrave;re.</li>\r\n</ul>\r\n\r\n<p>L&#39;Alg&eacute;rie n&#39;est pas un peuple de fair-play : manifestations intempestives devant les&nbsp;locaux de la FIFA grognent sur les r&eacute;seaux sociaux, propos racistes et d&eacute;mesur&eacute;s contre les arbitres, diffamations et menaces sur les joueurs et publics camerounais, insultes &agrave; l&#39;&eacute;gard des dirigeants de la FIFA.</p>\r\n\r\n<p>Les alg&eacute;riens ne sont pas en panne de propos d&eacute;plac&eacute;s en temps de car&ecirc;me. La sortie jug&eacute;e d&eacute;plac&eacute;e de l&#39;entraineur Belmadi qui menace les arbitres risque d&#39;&ecirc;tre sanctionn&eacute;e&nbsp;une fois encore puisqu&#39;il l&eacute;gitime les tensions et envenime la situation de crise qui oppose le Cameroun &agrave; l&#39;Alg&eacute;rie.</p>\r\n\r\n<p>Que fera donc la FIFA ? Les d&eacute;clarations de Belmadi vont-elles traverser silencieusement les oreilles de la CAF et laisser perdurer le malaise&nbsp;? Cette sortie ne compliquent-elles donc pas l&#39;avantage la faire devant les instances fa&icirc;ti&egrave;res du football mondial ? Autant de questions qui gardent ses r&eacute;ponses sur la table de la FIFA qui devra vider sa corbeille dans les prochains jours.</p>\r\n', 0, 39, '2022-04-26 06:53:01', 1, 5),
(10, 'La Guinée détient deux ex-dirigeants pour corruption présumée', 'Le colonel Mamady Doumbouya, ancien commandant des forces spéciales, a pris le pouvoir en septembre dernier, accusant Condé de corruption et d\'autoritarisme.', 'Firefox_Screenshot_2021-09-07T10-03-01.585Z-e1631009391260-732x419.png', '<p>La Guin&eacute;e a plac&eacute; en d&eacute;tention deux ex-dirigeants pour corruption, ont d&eacute;clar&eacute; les procureurs jeudi, alors que la junte au pouvoir &eacute;largit sa r&eacute;pression contre les personnalit&eacute;s proches du pr&eacute;sident d&eacute;chu Alpha Cond&eacute;.</p>\r\n\r\n<p>Un procureur du tribunal sp&eacute;cial pour les crimes financiers (CRIEF) a d&eacute;clar&eacute; que l&#39;ancien pr&eacute;sident du parlement Amadou Damaro Camara et l&#39;ex-chef des &eacute;lections Louceny Camara, qui a &eacute;galement &eacute;t&eacute; ministre du tourisme, ont &eacute;t&eacute; &quot;envoy&eacute;s en prison&quot;.</p>\r\n\r\n<p>Ils ont &eacute;t&eacute; inculp&eacute;s de d&eacute;tournement de fonds publics, d&#39;enrichissement illicite, de blanchiment d&#39;argent et de corruption, a d&eacute;clar&eacute; le procureur Aly Toure aux m&eacute;dias.</p>\r\n\r\n<p>Les deux hommes sont des personnalit&eacute;s de premier plan du parti RPG de Cond&eacute;.</p>\r\n\r\n<p>Lors des manifestations de l&#39;opposition en 2018 dans certains quartiers de la capitale qui ont &eacute;t&eacute; violemment r&eacute;prim&eacute;es, Damara Camara a appel&eacute; &agrave; ce que les manifestations soient r&eacute;prim&eacute;es avec des armes &agrave; feu plut&ocirc;t qu&#39;avec des matraques.</p>\r\n\r\n<p>Avec les derni&egrave;res arrestations, la junte a cibl&eacute; au moins neuf hauts dirigeants de l&#39;ancien r&eacute;gime, dont huit ex-ministres.</p>\r\n\r\n<p>L&#39;un de ceux qui sont encore d&eacute;tenus est l&#39;ancien premier ministre Ibrahima Kassory Fofana, accus&eacute; de d&eacute;tournement de fonds.</p>\r\n\r\n<p>M. Cond&eacute;, 84 ans, a &eacute;t&eacute; contraint de quitter le pouvoir par des troupes mutin&eacute;es, au milieu de violentes protestations contre sa candidature &agrave; un troisi&egrave;me mandat.</p>\r\n\r\n<p>En 2010, il est devenu le premier pr&eacute;sident d&eacute;mocratiquement &eacute;lu de l&#39;histoire du pays. Mais sa popularit&eacute; a chut&eacute; au cours de son second mandat, ses d&eacute;tracteurs l&#39;accusant d&#39;autoritarisme.</p>\r\n\r\n<p>La junte au pouvoir a promis de lutter contre la corruption end&eacute;mique dans cet &Eacute;tat appauvri d&#39;Afrique de l&#39;Ouest, mais a &eacute;galement insist&eacute; sur le fait qu&#39;elle ne lancerait pas de chasse aux sorci&egrave;res.</p>\r\n', 0, 53, '2022-04-30 10:04:41', 1, 6),
(11, 'Man City souffre à nouveau de la Ligue des champions : Que s\'est-il passé pour l\'équipe de Pep Guard', 'Manchester City a été éliminé de la Ligue des champions de manière déchirante par le Real Madrid, qui a réalisé une étonnante remontée en fin de match au Bernabeu pour se qualifier pour la finale contre Liverpool.', '1240449211.0.jpg', '<p>City menait 5-3 sur l&#39;ensemble des deux matchs &agrave; la derni&egrave;re minute de la 90e, mais le doublement rapide de Rodrygo a envoy&eacute; le match en prolongation, avant que Karim Benzema ne transforme le penalty.</p>\r\n\r\n<p>Pourquoi l&#39;&eacute;quipe de Pep Guardiola continue-t-elle de s&#39;effondrer dans des moments cl&eacute;s sur la sc&egrave;ne europ&eacute;enne ? Pourquoi ont-ils commenc&eacute; &agrave; faire long feu en prolongation ? Et Kevin de Bruyne a-t-il vraiment disparu quand il le fallait ?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>La mal&eacute;diction de l&#39;effondrement de Pep Guardiola frappe &agrave; nouveau</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>La d&eacute;faite de Manchester City &agrave; Madrid est la derni&egrave;re d&#39;une longue s&eacute;rie d&#39;effondrements d&#39;une &eacute;quipe de Pep Guardiola en Ligue des champions.</p>\r\n\r\n<p>C&#39;est la sixi&egrave;me fois que l&#39;Espagnol est &eacute;limin&eacute; au stade des demi-finales de la comp&eacute;tition, ce qui le place &agrave; &eacute;galit&eacute; avec Jos&eacute; Mourinho.</p>\r\n\r\n<p>Il est &eacute;tonnant de constater que sur les 11 &eacute;liminations de Guardiola en Ligue des champions, huit ont &eacute;t&eacute; marqu&eacute;es par des p&eacute;riodes alarmantes o&ugrave; ses &eacute;quipes ont encaiss&eacute; des buts les unes apr&egrave;s les autres.</p>\r\n\r\n<p>En demi-finale de la saison 2009/10, le Barcelone de Guardiola a encaiss&eacute; deux buts en 13 minutes contre l&#39;Inter Milan de Mourinho, qui a remport&eacute; le troph&eacute;e. En 2014, alors qu&#39;il &eacute;tait &agrave; la t&ecirc;te du Bayern Munich, son &eacute;quipe a encaiss&eacute; trois buts en 18 minutes en premi&egrave;re mi-temps et s&#39;est de nouveau inclin&eacute;e dans le dernier carr&eacute;, cette fois face au Real Madrid. L&#39;ann&eacute;e suivante, trois buts en 17 minutes ont permis au Bayern d&#39;&ecirc;tre &eacute;limin&eacute; par le FC Barcelone.</p>\r\n\r\n<p>Et la tendance ne s&#39;est pas arr&ecirc;t&eacute;e lorsqu&#39;il a fait le d&eacute;placement &agrave; Manchester. En 2017, deux buts en huit minutes contre Monaco ont vu City s&#39;&eacute;craser au stade des huiti&egrave;mes de finale. Un an plus tard, ils ont &eacute;t&eacute; &eacute;limin&eacute;s par Liverpool en quart de finale apr&egrave;s avoir encaiss&eacute; trois buts en 19 minutes. En 2019, Tottenham a marqu&eacute; deux buts en trois minutes pour assommer l&#39;&eacute;quipe de Guardiola, et en 2020, City a &eacute;t&eacute; &eacute;limin&eacute; par Lyon en huiti&egrave;mes de finale avec deux buts en huit minutes.</p>\r\n\r\n<p>Mais il est certain qu&#39;avec deux finales cons&eacute;cutives en vue, conc&eacute;der trois fois en six minutes contre le Real Madrid mercredi soir est le plus grand &eacute;chec de tous.</p>\r\n\r\n<p>Guardiola a d&eacute;j&agrave; remport&eacute; cette comp&eacute;tition, mais on commence &agrave; se demander s&#39;il la gagnera &agrave; nouveau un jour.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Pourquoi City a paniqu&eacute; et a pris du retard ?</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Rien n&#39;illustre mieux le d&eacute;sespoir de Manchester City que le nombre de ballons envoy&eacute;s vers le ciel en fin de match. Ils ont disput&eacute; neuf duels a&eacute;riens au cours de la deuxi&egrave;me p&eacute;riode de la prolongation - presque autant que les dix de l&#39;heure et trois quarts pr&eacute;c&eacute;dente.</p>\r\n\r\n<p>Ederson est l&#39;exemple m&ecirc;me de ce changement d&#39;approche. C&#39;est un gardien qui a r&eacute;ussi toutes les passes qu&#39;il a tent&eacute;es en une demi-douzaine de matches de Premier League cette saison. Sa pr&eacute;cision de passe est de 88 %. &Agrave; Madrid, ce taux est tomb&eacute; &agrave; 64 %. En fin de match, elle &eacute;tait de 50 %.</p>\r\n\r\n<p>Les longs ballons se succ&egrave;dent en direction de la surface du Real Madrid et il est tentant d&#39;en conclure que c&#39;est exactement ce que l&#39;&eacute;quipe espagnole voulait. Leurs d&eacute;fenseurs centraux s&#39;en sortent, mais le plan de jeu de Manchester City a &eacute;t&eacute; compl&egrave;tement abandonn&eacute;.</p>\r\n\r\n<p>Le football qui faisait d&#39;eux des favoris avait disparu. Ce n&#39;&eacute;tait pas le jeu de Guardiola. Le taux de r&eacute;ussite des passes a chut&eacute; &agrave; 71 % dans la seconde moiti&eacute; de la prolongation. Les joueurs ont &eacute;t&eacute; vol&eacute;s six fois dans les 20 derni&egrave;res minutes. Cela ne s&#39;&eacute;tait pas produit une seule fois au cours des 20 premi&egrave;res minutes.</p>\r\n\r\n<p>C&#39;&eacute;tait la panique totale et cela ne ressemblait pas du tout &agrave; Manchester City. M&ecirc;me men&eacute;s au score en Premier League, ils continuaient &agrave; passer le ballon, confiants dans leurs m&eacute;thodes. Ici, emport&eacute;s par l&#39;&eacute;v&eacute;nement, paralys&eacute;s par le chaos, ils sont devenus une &eacute;quipe d&eacute;sesp&eacute;r&eacute;e comme les autres.</p>\r\n', 1, 191, '2022-05-05 12:39:56', 1, 2),
(12, 'Le président du Togo accepte de servir de médiateur dans la crise malienne', 'Le président togolais Faure Gnassingbé a accueilli mercredi la demande de médiation du Mali.', 'RTR_Gnassingbe.jpeg', '<p><strong>&quot;Le pr&eacute;sident et son gouvernement sont pr&ecirc;ts &agrave; faciliter un dialogue fructueux entre le Mali et la communaut&eacute; internationale&quot;</strong>, a confirm&eacute; le ministre togolais des Affaires &eacute;trang&egrave;res, Robert Dussey.</p>\r\n\r\n<p>Abdoulaye Diop, ministre des Affaires &eacute;trang&egrave;res du Mali, a transmis la demande du Pr&eacute;sident Colonel Assimi Go&iuml;ta lors d&#39;une visite de deux jours &agrave; Lom&eacute;.</p>\r\n\r\n<p>Les autorit&eacute;s maliennes demandent de l&#39;aide apr&egrave;s avoir &eacute;chou&eacute; &agrave; convaincre les partenaires r&eacute;gionaux d&#39;accueillir favorablement leur proposition de transition de deux ans. Malgr&eacute; les multiples voyages &agrave; Bamako du m&eacute;diateur de la crise malienne de la Cedeao, Goodluck Jonathan, les deux parties n&#39;ont pas trouv&eacute; de terrain d&#39;entente.</p>\r\n\r\n<p>La Cedeao a exig&eacute; la tenue d&#39;&eacute;lections dans un d&eacute;lai de 12 &agrave; 16 mois, mais les autorit&eacute;s maliennes ont jusqu&#39;&agrave; pr&eacute;sent refus&eacute; - malgr&eacute; les pressions et les sanctions - en invoquant des probl&egrave;mes de s&eacute;curit&eacute;.</p>\r\n\r\n<p>L&#39;organisme r&eacute;gional n&#39;a pas encore comment&eacute; la proposition de m&eacute;diation Mali-Togo.</p>\r\n\r\n<p>Les troupes maliennes combattent une insurrection djihadiste dans de larges portions du territoire. En 2013, elles ont &eacute;t&eacute; rejointes par des troupes europ&eacute;ennes, mais l&#39;insurrection n&#39;a jamais &eacute;t&eacute; totalement r&eacute;prim&eacute;e et s&#39;est &eacute;tendue aux pays voisins.</p>\r\n', 0, 48, '2022-05-05 15:55:13', 1, 1),
(13, 'L\'armée burundaise confirme la mort de 10 de ses soldats dans une attaque d\'Al-shabab en Somalie', 'Au moins dix soldats de la paix burundais ont été tués dans l\'attaque menée mardi par les djihadistes d\'Al-Shabaab contre une base de l\'Union africaine (UA) en Somalie, a annoncé mercredi l\'armée burundaise.', 'thumbs_b_c_d04fcfdc3ccfea65bce4ab2b25c83581.jpg', '<p>Vingt-cinq soldats ont &eacute;t&eacute; bless&eacute;s et cinq sont port&eacute;s disparus, tandis que 20 militants d&#39;Al-Shabaab ont &eacute;t&eacute; tu&eacute;s, a d&eacute;clar&eacute; l&#39;arm&eacute;e dans un communiqu&eacute;.</p>\r\n\r\n<p>Il s&#39;agit de la premi&egrave;re attaque contre une base de maintien de la paix depuis que la Mission de transition de l&#39;UA en Somalie (ATMIS) a remplac&eacute; l&#39;ancienne force AMISOM le 1er avril.</p>\r\n\r\n<p>Les forces de l&#39;UA ont envoy&eacute; des h&eacute;licopt&egrave;res de combat apr&egrave;s l&#39;attaque &agrave; l&#39;aube d&#39;un camp abritant des troupes burundaises pr&egrave;s de Ceel Baraf, un village situ&eacute; &agrave; environ 160 kilom&egrave;tres (100 miles) au nord-est de la capitale Mogadiscio, selon des responsables militaires et des t&eacute;moins.</p>\r\n\r\n<p>Un commandant militaire local, Mohamed Ali, a d&eacute;clar&eacute; &agrave; l&#39;AFP mardi que l&#39;assaut avait commenc&eacute; par un attentat &agrave; la voiture pi&eacute;g&eacute;e avant qu&#39;une furieuse fusillade n&#39;&eacute;clate.</p>\r\n\r\n<p>Deux sources militaires burundaises ont indiqu&eacute; &agrave; l&#39;AFP que 45 casques bleus &eacute;taient d&eacute;clar&eacute;s morts ou disparus, et 25 autres bless&eacute;s.</p>\r\n\r\n<p>&quot;Le bilan provisoire est de 45 soldats tu&eacute;s ou disparus, dont un colonel commandant de bataillon&quot;, a d&eacute;clar&eacute; &agrave; l&#39;AFP une source militaire burundaise sous couvert d&#39;anonymat, tandis qu&#39;une deuxi&egrave;me source a confirm&eacute; ces chiffres.</p>\r\n\r\n<p>Al-Shabaab a revendiqu&eacute; l&#39;attaque, affirmant qu&#39;il avait pris le contr&ocirc;le du camp et que 173 soldats avaient &eacute;t&eacute; tu&eacute;s.</p>\r\n\r\n<p>Les militants islamistes li&eacute;s &agrave; Al-Qaida m&egrave;nent depuis plus de dix ans une insurrection meurtri&egrave;re contre le fragile gouvernement central de la Somalie.</p>\r\n\r\n<p>Le gouvernement somalien a condamn&eacute; l&#39;attaque &quot;odieuse&quot; et a appel&eacute; la communaut&eacute; internationale &agrave; faire davantage pour soutenir les forces somaliennes et l&#39;ATMIS &quot;dans la lutte efficace contre le terrorisme&quot;.</p>\r\n\r\n<p>L&#39;effusion de sang met en lumi&egrave;re les probl&egrave;mes de s&eacute;curit&eacute; dans ce pays de la Corne de l&#39;Afrique en proie &agrave; des troubles, qui est &eacute;galement plong&eacute; dans une profonde crise politique due au report des &eacute;lections et qui est confront&eacute; &agrave; la menace de la famine.</p>\r\n\r\n<p>Les combattants d&#39;Al-Shabaab ont contr&ocirc;l&eacute; Mogadiscio jusqu&#39;en 2011, date &agrave; laquelle ils ont &eacute;t&eacute; chass&eacute;s par les troupes de l&#39;Union africaine.</p>\r\n\r\n<p>Mais ils conservent des territoires dans les campagnes et attaquent fr&eacute;quemment des cibles civiles, militaires et gouvernementales &agrave; Mogadiscio et ailleurs.</p>\r\n', 0, 67, '2022-05-05 16:00:33', 1, 1);
INSERT INTO `post` (`idPost`, `title`, `summarizeArticle`, `Image`, `Contents`, `featuredPost`, `views`, `postCreationTimes`, `author_Id`, `Category_Id`) VALUES
(14, 'L\'heure du dollar : Le Zimbabwe doit-il à nouveau mettre la hache dans sa monnaie chancelante ?', 'Harare, Zimbabwe - Début 2019, la banque centrale du Zimbabwe a annoncé qu\'elle prévoyait de ramener le dollar zimbabwéen comme monnaie légale après avoir utilisé pendant une décennie le dollar américain et sept autres monnaies internationales, car l\'hyperinflation galopante avait fait échouer la monnaie locale.', 'zimbabwe-dollar-1068x534.png', '<p><strong>&quot;Les fondamentaux ne sont d&eacute;finitivement pas bons pour soutenir une nouvelle monnaie&quot;</strong>, avait alors d&eacute;clar&eacute; &agrave; la presse Victor Bhoroma, un &eacute;conomiste ind&eacute;pendant bas&eacute; &agrave; Harare.</p>\r\n\r\n<p>La monnaie de substitution du Zimbabwe, le billet d&#39;obligation, avait &eacute;t&eacute; pr&eacute;sent&eacute;e comme ayant une valeur &eacute;quivalente au dollar am&eacute;ricain en 2016. Mais en 2019, elle s&#39;&eacute;tait effondr&eacute;e et s&#39;&eacute;changeait avec une d&eacute;cote de 400 % par rapport au billet vert.</p>\r\n\r\n<p>Malgr&eacute; tous les avertissements, le chef de la banque centrale John Mangudya n&#39;a pas &eacute;t&eacute; dissuad&eacute;.</p>\r\n\r\n<p>Les autorit&eacute;s ont interdit les paiements en devises &eacute;trang&egrave;res en juin 2019, pour donner au dollar zimbabw&eacute;en une chance de se battre lors de sa relance. Mais lorsque la pand&eacute;mie a frapp&eacute;, Harare a d&ucirc; autoriser certains paiements en devises &eacute;trang&egrave;res.</p>\r\n\r\n<p>Aujourd&#39;hui, le pays d&#39;Afrique australe est &agrave; nouveau en proie &agrave; une grave crise &eacute;conomique caract&eacute;ris&eacute;e par une p&eacute;nurie massive de devises &eacute;trang&egrave;res, un taux de ch&ocirc;mage de plus de 90 %, une faible production et une hyperinflation qui a r&eacute;duit le pouvoir d&#39;achat.</p>\r\n\r\n<p>Trois ans &agrave; peine apr&egrave;s la r&eacute;introduction du dollar zimbabw&eacute;en, sa valeur a chut&eacute; de mani&egrave;re spectaculaire. Alors qu&#39;il s&#39;&eacute;changeait &agrave; environ 210 dollars zimbabw&eacute;ens pour 1 dollar au d&eacute;but du mois de mars, il s&#39;&eacute;change aujourd&#39;hui &agrave; 400 pour 1 dollar et les cambistes du march&eacute; noir le vendent &agrave; 450 dollars.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Manque de discipline fiscale</strong></h2>\r\n\r\n<p><br />\r\nLes effets de la pand&eacute;mie de COVID et la guerre en cours entre la Russie et l&#39;Ukraine mettent l&#39;&eacute;conomie &agrave; mal.</p>\r\n\r\n<p>La combinaison d&#39;une dette publique de 18,5 milliards de dollars, d&#39;un d&eacute;ficit budg&eacute;taire moyen soutenu de 2,3 milliards de dollars au cours des trois derniers exercices, d&#39;une inflation &eacute;lev&eacute;e et d&#39;autres facteurs a fait que les chances de succ&egrave;s de la nouvelle monnaie &eacute;taient toujours tr&egrave;s faibles.</p>\r\n\r\n<p>Aujourd&#39;hui, l&#39;histoire pourrait se r&eacute;p&eacute;ter, car le pays pourrait &ecirc;tre contraint de se d&eacute;barrasser de sa monnaie ou d&#39;adopter &agrave; nouveau le dollar am&eacute;ricain - un terme connu sous le nom de dollarisation.</p>\r\n\r\n<p>Les critiques estiment que les malheurs de la monnaie proviennent de la propension de la banque centrale &agrave; imprimer de la monnaie.</p>\r\n\r\n<p>&quot;J&#39;ai engag&eacute; une proc&eacute;dure judiciaire (contre la banque centrale en 2016) parce qu&#39;il &eacute;tait tr&egrave;s clair que le Tr&eacute;sor et la RBZ allaient imprimer de la monnaie et ramener le pays &agrave; l&#39;hyperinflation de 2008/2009&quot;, a d&eacute;clar&eacute; &agrave; Al Jazeera l&#39;homme d&#39;affaires et investisseur de premier plan Fred Mtanda, qui d&eacute;tenait des participations dans la concession Volkswagen du Zimbabwe et la franchise Western Union.</p>\r\n\r\n<p>En 2016, M. Mtanda avait tent&eacute; de contraindre juridiquement la banque centrale &agrave; prouver l&#39;existence d&#39;une obligation de l&#39;African Export-Import Bank qui, selon lui, garantissait la valeur du billet d&#39;obligation. L&#39;affaire a &eacute;t&eacute; rejet&eacute;e mais, six ans plus tard, l&#39;homme d&#39;affaires affirme que ses craintes ont &eacute;t&eacute; confirm&eacute;es.</p>\r\n\r\n<p>&quot;Nous sommes ici parce que le Tr&eacute;sor et la Reserve Bank of Zimbabwe (RBZ) ont pay&eacute; les d&eacute;penses en capital du gouvernement du Zimbabwe&quot;, a d&eacute;clar&eacute; M. Mtanda. &quot;La RBZ et le Tr&eacute;sor conduisent le taux de change l&agrave; o&ugrave; il est. Les acteurs du march&eacute; noir agissent pour le compte de la RBZ et du Tr&eacute;sor.&quot;</p>\r\n\r\n<p>Les &eacute;conomistes sont d&#39;accord. Gift Mugano, professeur invit&eacute; d&#39;&eacute;conomie &agrave; l&#39;&eacute;cole de commerce de l&#39;universit&eacute; du Zimbabwe, affirme que le principal moteur de l&#39;effondrement du taux de change &eacute;tait &quot;l&#39;impression excessive de monnaie&quot; et le manque de discipline fiscale.</p>\r\n\r\n<p>&quot;Au cours des deux derni&egrave;res ann&eacute;es, le gouvernement n&#39;a jamais d&eacute;pens&eacute; dans la limite de ses moyens&quot;, a d&eacute;clar&eacute; Mugano &agrave; Al Jazeera.</p>\r\n\r\n<p>Au troisi&egrave;me trimestre de la derni&egrave;re ann&eacute;e fiscale, le gouvernement avait d&eacute;pass&eacute; le budget de 71 %, a d&eacute;clar&eacute; Mugano. L&#39;argent lib&eacute;r&eacute; par le tr&eacute;sor public depuis mars s&#39;est retrouv&eacute; sur le march&eacute; noir, pr&eacute;cipitant la d&eacute;valuation de l&#39;unit&eacute; locale d&eacute;j&agrave; en difficult&eacute;, ajoute Mugano.</p>\r\n\r\n<p>&quot;La dollarisation est comme la mort&quot;, a d&eacute;clar&eacute; Mugano &agrave; Al Jazeera, ajoutant qu&#39;elle peut encore &ecirc;tre in&eacute;vitable. &quot;Vous vous effondrez et vous mourez. C&#39;est l&agrave; o&ugrave; va la monnaie. Notre gouvernement a continu&eacute; &agrave; injecter beaucoup de poison dans cette &eacute;conomie et &agrave; imprimer de l&#39;argent, &agrave; s&#39;ent&ecirc;ter et &agrave; en mettre plus dans la construction et l&#39;agriculture, et n&#39;a pas su prendre conseil.&quot;</p>\r\n\r\n<p>En outre, en raison du dysfonctionnement de son syst&egrave;me officiel de vente aux ench&egrave;res, qui est accus&eacute; de sur&eacute;valuer le dollar local, le Zimbabwe poss&egrave;de l&#39;un des march&eacute;s noirs de devises &eacute;trang&egrave;res les plus dynamiques d&#39;Afrique australe.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2><strong>Le moindre mal</strong></h2>\r\n\r\n<p><br />\r\nMais l&#39;administration du pr&eacute;sident Emmerson Mnangagwa ne verra probablement pas d&#39;un bon &oelig;il cette dollarisation.</p>\r\n\r\n<p>Mnangagwa, qui a succ&eacute;d&eacute; au leader fondateur du Zimbabwe, Robert Mugabe, par un coup d&#39;&Eacute;tat militaire en novembre 2017, a r&eacute;sist&eacute; &agrave; un retour au dollar am&eacute;ricain.</p>\r\n\r\n<p>Cette r&eacute;ticence pourrait &ecirc;tre due au fait que la banque centrale craint de &quot;perdre le contr&ocirc;le de la politique mon&eacute;taire&quot; en cas de dollarisation, a d&eacute;clar&eacute; &agrave; Al Jazeera Vince Museve, un &eacute;conomiste ind&eacute;pendant bas&eacute; &agrave; Harare.</p>\r\n\r\n<p>Mais le dollar zimbabw&eacute;en a d&eacute;j&agrave; &eacute;t&eacute; rejet&eacute; par le public en 2009, au plus fort de l&#39;hyperinflation, et aujourd&#39;hui la m&eacute;fiance &agrave; l&#39;&eacute;gard de la monnaie est &agrave; nouveau &eacute;lev&eacute;e.</p>\r\n\r\n<p>Comme M. Mugano, M. Museve pense que le Zimbabwe pourrait &ecirc;tre amen&eacute; &agrave; dollariser &agrave; nouveau, quel que soit son impact.</p>\r\n\r\n<p>&quot;Si nous ne le faisons pas, nous allons avoir un s&eacute;rieux probl&egrave;me&quot;, a d&eacute;clar&eacute; Museve. Mais il s&#39;agit d&#39;un &quot;dilemme sans solution claire et nette quant &agrave; la voie &agrave; suivre&quot; pour les entreprises qui n&#39;ont pas de revenus en dollars, a-t-il ajout&eacute;.</p>\r\n\r\n<p>&quot;Le dollar am&eacute;ricain [est] d&eacute;sormais consid&eacute;r&eacute; comme une monnaie pour pr&eacute;server sa valeur&quot;, a d&eacute;clar&eacute; &agrave; Al Jazeera Rashweat Mukundu, un politologue bas&eacute; &agrave; Harare. &quot;Quiconque a un exc&eacute;dent de dollars zimbabw&eacute;ens cherche des dollars am&eacute;ricains [pour acheter]&quot;, a-t-il ajout&eacute;.</p>\r\n\r\n<p>Alors que le pays se dirige vers des &eacute;lections l&#39;ann&eacute;e prochaine, la situation politique semble devoir avoir un impact sur le statu quo.</p>\r\n\r\n<p>&quot;La question &agrave; long terme est de savoir comment renforcer la confiance dans le dollar zimbabw&eacute;en. Cela signifie qu&#39;il faut mettre en place les bonnes politiques et s&#39;attaquer &agrave; la perception du risque. Vous devez cr&eacute;er un environnement &eacute;conomique et politique stable&quot;, a ajout&eacute; M. Museve. &quot;Ces &eacute;l&eacute;ments n&#39;existent pas actuellement&quot;.</p>\r\n\r\n<p>&Agrave; en juger par l&#39;&eacute;volution de la situation sur le terrain, la dollarisation pourrait bien &ecirc;tre un moindre mal. L&#39;inflation, qui a d&eacute;pass&eacute; les 800 % en 2020 avant de redescendre &agrave; 60 % en janvier de cette ann&eacute;e, a depuis commenc&eacute; &agrave; remonter. En avril, l&#39;inflation a atteint 96,4 %.</p>\r\n\r\n<p>Cette hausse est due &agrave; une augmentation des prix des produits de base. Par exemple, deux litres d&#39;huile de cuisson se vendent d&eacute;sormais &agrave; 4,50 dollars, contre 3,80 dollars en mars. Un paquet de deux kilogrammes (environ quatre livres) de sucre se vend maintenant &agrave; 2,50 $, contre 1,90 $ en mars.</p>\r\n\r\n<p>Les citoyens se plaignent depuis longtemps de la situation et maintenant les fabricants se joignent &agrave; eux.</p>\r\n\r\n<p>La semaine derni&egrave;re, un document de synth&egrave;se sur la crise mon&eacute;taire, r&eacute;dig&eacute; par la Confederation of Zimbabwe Industries, un groupe repr&eacute;sentant les fabricants du pays, a &eacute;t&eacute; publi&eacute; dans les m&eacute;dias locaux.</p>\r\n\r\n<p>&quot;La Conf&eacute;d&eacute;ration des industries du Zimbabwe, qui repr&eacute;sente les fabricants du pays, a publi&eacute; la semaine derni&egrave;re dans les m&eacute;dias locaux un document de synth&egrave;se sur la crise mon&eacute;taire, dans lequel on peut lire : &quot;La fixation du prix des devises &eacute;trang&egrave;res est une question fondamentale pour le d&eacute;veloppement &eacute;conomique du Zimbabwe.</p>\r\n\r\n<p>&quot;Un dollar zimbabw&eacute;en sur&eacute;valu&eacute; compromet largement la possibilit&eacute; de maximiser l&#39;efficacit&eacute; structurelle et la croissance de l&#39;industrie d&#39;exportation et de la substitution des importations. Nous sommes &agrave; un point o&ugrave; ce qu&#39;il faut faire est tout aussi important que ce qu&#39;il ne faut pas faire.&quot;</p>\r\n', 0, 81, '2022-05-05 17:01:03', 1, 9),
(17, 'Afrique du Sud : 50 pourcents de cas supplémentaires de Covid signalés en 24 heures', 'Une nouvelle vague de coronavirus, provoquée par deux nouveaux sous-variants Omicron en Afrique du Sud, a entraîné une augmentation de plus de 50 % des infections en 24 heures.', '_116275058_gettyimages-1230321076.jpg', '<p>Selon les chiffres officiels publi&eacute;s jeudi, l&#39;Institut national des maladies transmissibles a recens&eacute; 9 757 nouveaux cas de Covid-19 dans le pays, soit 50 % de plus que les 6 170 nouveaux cas recens&eacute;s la veille, mercredi. 64 nouveaux d&eacute;c&egrave;s ont &eacute;galement &eacute;t&eacute; signal&eacute;s.</p>\r\n\r\n<p>Plus d&#39;un quart des personnes test&eacute;es ont eu un r&eacute;sultat positif, le taux le plus &eacute;lev&eacute; enregistr&eacute; depuis des mois. Le Covid-19 a &eacute;galement fait sept morts au cours des deux derniers jours.</p>\r\n\r\n<p>Le Centre pour l&#39;innovation et la r&eacute;ponse aux &eacute;pid&eacute;mies a averti fin avril que l&#39;Afrique du Sud, le pays officiellement le plus touch&eacute; par le Covid-19 sur le continent, &eacute;tait entr&eacute; dans une nouvelle vague de pand&eacute;mie.</p>\r\n\r\n<p>Ce pays de pr&egrave;s de 60 millions d&#39;habitants, o&ugrave; moins de 45 % de la population adulte est enti&egrave;rement vaccin&eacute;e, a officiellement enregistr&eacute; plus de 3,8 millions de cas et plus de 100 000 d&eacute;c&egrave;s.</p>\r\n\r\n<p>Deux nouveaux sous-variants d&#39;Omicron, dont la virulence reste &agrave; d&eacute;terminer, sont &agrave; l&#39;origine de la nouvelle vague de pand&eacute;mie de Covid-19 en Afrique du Sud, selon l&#39;Organisation mondiale de la sant&eacute; (OMS).</p>\r\n', 1, 159, '2022-05-06 17:04:14', 1, 1),
(18, 'La Corée du Nord fait face à une catastrophe Covid. Qu\'est-ce que cela signifie pour Kim Jong Un ?', 'Le leader coréen Kim Jong Un semble avoir de gros problèmes. Son pays a annoncé une épidémie \"explosive\" de Covid-19, signalant plus de 2 millions de cas de ce qu\'il appelle une \"fièvre\" en un peu plus d\'une semaine depuis le premier cas signalé.', '0701555333006-web-tete.jpg', '<p>Dans un pays de 25 millions d&#39;habitants, largement sous-d&eacute;velopp&eacute; et r&eacute;put&eacute; pour son isolement, o&ugrave; l&#39;on pense que la grande majorit&eacute; de la population n&#39;est pas vaccin&eacute;e, cela pourrait &ecirc;tre une catastrophe humanitaire d&#39;une ampleur telle qu&#39;elle menacerait la mainmise sur le pouvoir de n&#39;importe quel gouvernement dans le monde.<br />\r\nMais Pyongyang n&#39;est pas un gouvernement comme les autres. En fait, certains experts estiment qu&#39;au lieu d&#39;affaiblir Kim, l&#39;&eacute;pid&eacute;mie pourrait le rendre plus puissant, en lui donnant une excuse pour resserrer son emprise.<br />\r\nKim dispose d&#39;une vaste machine de propagande et d&#39;une capacit&eacute; &agrave; bloquer les informations ext&eacute;rieures qui pourraient l&#39;aider &agrave; fa&ccedil;onner le r&eacute;cit de cette crise en sa faveur - tout comme ses pr&eacute;d&eacute;cesseurs l&#39;ont fait lors de la famine des ann&eacute;es 1990, qui aurait tu&eacute; des centaines de milliers de Nord-Cor&eacute;ens de faim. &Agrave; l&#39;&eacute;poque, Pyongyang avait pr&eacute;sent&eacute; ses probl&egrave;mes comme une &quot;marche difficile&quot; et les avait imput&eacute;s en partie aux inondations et en partie aux sanctions am&eacute;ricaines.<br />\r\nKim montre d&eacute;j&agrave; des signes d&#39;une tentative de mise en sc&egrave;ne de cette derni&egrave;re crise. Avant m&ecirc;me l&#39;annonce de l&#39;&eacute;pid&eacute;mie, il avait averti ses fonctionnaires de se pr&eacute;parer &agrave; &quot;un autre mois de mars plus difficile&quot;. Il semble qu&#39;il s&#39;agisse d&#39;une r&eacute;f&eacute;rence aux graves p&eacute;nuries alimentaires auxquelles le pays est &agrave; nouveau confront&eacute; et qui ont probablement &eacute;t&eacute; aggrav&eacute;es par les mesures de fermeture des fronti&egrave;res prises par Kim pour emp&ecirc;cher le virus d&#39;entrer dans le pays.</p>\r\n\r\n<p>Les analystes se m&eacute;fient &eacute;galement du moment choisi par Pyongyang pour reconna&icirc;tre l&#39;&eacute;pid&eacute;mie de Covid. L&#39;insistance de Pyongyang &agrave; affirmer qu&#39;il n&#39;y avait pas de Covid dans son pays a suscit&eacute; un scepticisme g&eacute;n&eacute;ralis&eacute; et certains sugg&egrave;rent que sa soudaine ouverture sur ses probl&egrave;mes a &eacute;t&eacute; d&eacute;lib&eacute;r&eacute;ment programm&eacute;e pour co&iuml;ncider avec une visite dans la r&eacute;gion du pr&eacute;sident Joe Biden, qui devait arriver en Cor&eacute;e du Sud jeudi soir, heure locale.</p>\r\n\r\n<p>&quot;Le fait que Kim Jong Un ait d&eacute;cid&eacute; de sortir et d&#39;annoncer publiquement cette crise sanitaire est assez r&eacute;v&eacute;lateur&quot;, a d&eacute;clar&eacute; Lina Yoon, chercheuse senior sur la Cor&eacute;e &agrave; Human Rights Watch. &quot;(Cela) peut avoir un &eacute;l&eacute;ment politique, &eacute;videmment&quot;.<br />\r\nCe n&#39;est peut-&ecirc;tre pas le seul moyen dont dispose Kim pour s&#39;assurer que Pyongyang sera en t&ecirc;te de l&#39;ordre du jour lorsque le pr&eacute;sident rencontrera le nouveau dirigeant du Sud, Yoon Suk Yeol.<br />\r\nLes renseignements fournis par Washington sugg&egrave;rent que Kim pr&eacute;voit soit un essai nucl&eacute;aire, soit le lancement d&#39;un missile balistique intercontinental pour co&iuml;ncider avec la visite - une &eacute;valuation partag&eacute;e par la Cor&eacute;e du Sud, qui a pr&eacute;par&eacute; des plans pour r&eacute;pondre aux &eacute;ventuelles &quot;provocations&quot; de Pyongyang. Cela correspondrait au comportement r&eacute;cent de Kim. Selon S&eacute;oul, le jour m&ecirc;me o&ugrave; la Cor&eacute;e du Nord a annonc&eacute; son d&eacute;clenchement, elle a tir&eacute; trois missiles balistiques &agrave; courte port&eacute;e dans les eaux situ&eacute;es entre la p&eacute;ninsule cor&eacute;enne et le Japon.<br />\r\nL&#39;inconnue qui persiste est la suivante : les probl&egrave;mes de Kim avec Covid le d&eacute;tourneront-ils d&#39;une telle d&eacute;monstration de puissance, ou le rendront-ils plus belliqueux ?</p>\r\n\r\n<p>&nbsp;</p>\r\n', 0, 52, '2022-05-20 11:35:55', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `quote`
--

CREATE TABLE `quote` (
  `idQuote` tinyint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `clientLastname` varchar(50) NOT NULL,
  `clientFirstname` varchar(50) NOT NULL,
  `clientEmail` varchar(100) NOT NULL,
  `clientPhone` varchar(25) NOT NULL,
  `projectType` varchar(50) NOT NULL,
  `siteNature` varchar(50) NOT NULL,
  `desiredFeatures` text NOT NULL,
  `design` varchar(100) NOT NULL,
  `seo` varchar(100) NOT NULL,
  `projectDeadline` date NOT NULL,
  `yourBudget` int DEFAULT NULL,
  `otherInformation` text,
  `attachments` varchar(100) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `realization`
--

CREATE TABLE `realization` (
  `idRealization` int UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `imageRealization` varchar(150) NOT NULL,
  `customerLogo` varchar(150) NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `roles` varchar(25) NOT NULL DEFAULT 'ROLE_USER',
  `password` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `roles`, `password`, `created_at`) VALUES
(1, 'Admin', 'ahmedkarim.njiawouogbetnkom@esprit.tn', 'ROLE_USER', '$2y$10$jG4i2CWREjgDbUZGrlUx7Os4xe6o4l8NZ4MyMpbyhe4TiMYEcsQBy', '2022-04-24 13:39:15'),
(2, 'karim', 'contact@gmail.com', 'ROLE_USER', '$2y$10$uIQWgk8so82UmvDq79QpF.Tp.Ebx7r/9IqQTx7PIaKyvqHj7bhvRK', '2022-04-27 20:11:33');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`idAuthor`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`idComment`),
  ADD KEY `Post_Id` (`Post_Id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idContact`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`idPost`),
  ADD KEY `author_Id` (`author_Id`),
  ADD KEY `Category_Id` (`Category_Id`);

--
-- Index pour la table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`idQuote`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `realization`
--
ALTER TABLE `realization`
  ADD PRIMARY KEY (`idRealization`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `author`
--
ALTER TABLE `author`
  MODIFY `idAuthor` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` tinyint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `idComment` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `idContact` tinyint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `idPost` smallint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `quote`
--
ALTER TABLE `quote`
  MODIFY `idQuote` tinyint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`Post_Id`) REFERENCES `post` (`idPost`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`author_Id`) REFERENCES `author` (`idAuthor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_ibfk_2` FOREIGN KEY (`Category_Id`) REFERENCES `category` (`idCategory`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `quote`
--
ALTER TABLE `quote`
  ADD CONSTRAINT `quote_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `realization`
--
ALTER TABLE `realization`
  ADD CONSTRAINT `realization_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
