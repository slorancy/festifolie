-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 07 Janvier 2019 à 16:36
-- Version du serveur :  5.7.24-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `festival`
--

-- --------------------------------------------------------

--
-- Structure de la table `domaine`
--

CREATE TABLE `domaine` (
  `id` int(11) NOT NULL,
  `domaine` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `domaine`
--

INSERT INTO `domaine` (`id`, `domaine`) VALUES
(1, 'Cinéma et audiovisuel'),
(2, 'Danse'),
(3, 'Divers Spectacle vivant'),
(4, 'Livre et littérature'),
(5, 'Musiques Actuelles'),
(6, 'Musiques classiques'),
(7, 'Pluridisciplinaire Musique'),
(8, 'Pluridisciplinaire Spectacle vivant'),
(9, 'Théâtre');

-- --------------------------------------------------------

--
-- Structure de la table `domaine_has_festival`
--

CREATE TABLE `domaine_has_festival` (
  `id` int(11) NOT NULL,
  `festival_id` int(11) NOT NULL,
  `domaine_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `domaine_has_festival`
--

INSERT INTO `domaine_has_festival` (`id`, `festival_id`, `domaine_id`) VALUES
(1, 1, 8),
(2, 2, 2),
(3, 3, 5),
(4, 4, 5),
(5, 5, 5),
(6, 6, 5),
(7, 7, 5),
(8, 8, 5),
(9, 9, 5),
(10, 10, 5),
(11, 11, 5),
(12, 12, 5),
(13, 13, 8),
(14, 14, 3),
(15, 15, 5),
(16, 16, 5),
(17, 17, 3),
(18, 18, 4),
(19, 19, 5),
(20, 20, 5),
(21, 21, 5),
(22, 22, 6),
(23, 23, 5),
(24, 24, 5),
(25, 25, 8),
(26, 26, 5),
(27, 27, 5),
(28, 28, 3),
(29, 29, 5),
(30, 30, 5),
(31, 31, 5),
(32, 32, 6),
(33, 33, 8),
(34, 34, 8),
(35, 35, 5),
(36, 36, 1),
(37, 37, 5),
(38, 38, 2),
(39, 39, 5),
(40, 40, 5),
(41, 41, 6),
(42, 42, 5),
(43, 43, 4),
(44, 44, 9),
(45, 45, 1),
(46, 46, 6),
(47, 47, 4),
(48, 48, 6),
(49, 49, 6),
(50, 50, 1),
(51, 51, 1),
(52, 52, 5),
(53, 53, 5),
(54, 54, 6),
(55, 55, 4),
(56, 56, 5),
(57, 57, 5),
(58, 58, 8),
(59, 59, 5),
(60, 60, 5),
(61, 61, 5),
(62, 62, 5),
(63, 63, 5),
(64, 64, 5),
(65, 65, 5),
(66, 66, 5),
(67, 67, 8),
(68, 68, 5),
(69, 69, 5),
(70, 70, 5),
(71, 71, 5),
(72, 72, 5),
(73, 73, 5),
(74, 74, 4),
(75, 75, 8),
(76, 76, 3),
(77, 77, 7),
(78, 78, 6),
(79, 79, 5),
(80, 80, 5),
(81, 81, 5),
(82, 82, 5),
(83, 83, 8),
(84, 84, 5),
(85, 85, 5),
(86, 86, 4),
(87, 87, 8),
(88, 88, 8),
(89, 89, 3),
(90, 90, 3),
(91, 91, 5),
(92, 92, 5),
(93, 93, 5),
(94, 94, 5),
(95, 95, 7),
(96, 96, 5),
(97, 97, 5),
(98, 98, 5),
(99, 99, 5),
(100, 100, 5),
(101, 101, 5),
(102, 102, 5),
(103, 103, 3),
(104, 104, 5),
(105, 105, 5),
(106, 106, 1),
(107, 107, 5),
(108, 108, 1),
(109, 109, 6),
(110, 110, 5),
(111, 111, 5),
(112, 112, 5),
(113, 113, 5),
(114, 114, 5),
(115, 115, 5),
(116, 116, 5),
(117, 117, 5),
(118, 118, 5),
(119, 119, 5),
(120, 120, 3),
(121, 121, 5),
(122, 122, 5),
(123, 123, 5),
(124, 124, 5);

-- --------------------------------------------------------

--
-- Structure de la table `festival`
--

CREATE TABLE `festival` (
  `id` int(11) NOT NULL,
  `nom_manifestation` varchar(67) DEFAULT NULL,
  `region` varchar(23) DEFAULT NULL,
  `domaine` varchar(35) DEFAULT NULL,
  `complement_domaine` varchar(113) DEFAULT NULL,
  `departement` int(2) DEFAULT NULL,
  `mois_debut` varchar(14) DEFAULT NULL,
  `site_web` varchar(63) DEFAULT NULL,
  `commune` varchar(25) DEFAULT NULL,
  `Date_debut` varchar(10) DEFAULT NULL,
  `date_fin` varchar(10) DEFAULT NULL,
  `code_postal` int(5) DEFAULT NULL,
  `coordonnees_gps` varchar(28) DEFAULT NULL,
  `nom_departement` varchar(21) DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `festival`
--

INSERT INTO `festival` (`id`, `nom_manifestation`, `region`, `domaine`, `complement_domaine`, `departement`, `mois_debut`, `site_web`, `commune`, `Date_debut`, `date_fin`, `code_postal`, `coordonnees_gps`, `nom_departement`, `image`) VALUES
(1, 'A Pas Contés', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', 'Contes', 21, '02 (février)', '', 'DIJON', '', '', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'A_pas_contes.jpg'),
(2, 'Art Danse', 'Bourgogne-Franche-Comté', 'Danse', 'Danse contemporaine', 21, '01 (janvier)', '', 'DIJON', '', '', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'Art_Danse.jpg'),
(3, 'ART N JAZZ FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 89, '09 (septembre)', 'http://www.art-n-jazz.com', 'STE VERTU', '30/09/2018', '30/09/2018', 89310, '47.7398700628, 3.91053461734', 'Yonne', 'Art_N_Jazz.jpg'),
(4, 'AWARANDA', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques traditionnelles et du monde', 71, '09 (septembre)', 'http://awaranda.fr/', 'IGUERANDE', '08/09/2018', '08/09/2018', 71340, '46.2165272056, 4.07699692762', 'Saône-et-Loire', 'Awaranda.jpg'),
(5, 'AZIMUT FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques métissées', 39, '10 (octobre)', 'www.azimutfestival.com', 'LA PESSE', '05/10/2018', '07/10/2018', 39370, '46.286468541, 5.85238812673', 'Jura', 'Azimut.jpg'),
(6, 'BE BOP OR BE DEAD', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 90, '11 (novembre)', 'https://bonus-track.fr/', 'BELFORT', '15/11/2018', '17/11/2018', 90000, '47.6471539414, 6.84541206237', 'Territoire de Belfort', 'be-pop.jpg'),
(7, 'BEAUNE BLUES BOOGIE FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 21, '11 (novembre)', 'www.jpboogie.com', 'BEAUNE', '28/11/2018', '02/12/2018', 21200, '47.0255189366, 4.83767985985', 'Côte-d\'Or', 'Beaune_Blues.jpg'),
(8, 'Blues en Loire', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 58, '08 (août)', '', 'La Charite sur Loire', '18/08/2018', '25/08/2018', 58400, '47.1835862006, 3.02885515594', 'Nièvre', 'Blues_en_loire.jpg'),
(9, 'BOCKSONS FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 25, '05 (mai)', '', 'Valentigney', '25/05/2018', '26/05/2018', 25700, '47.4647367767, 6.82570788244', 'Doubs', 'Bocksons_festival.jpg'),
(10, 'CATALPA FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 89, '06 (juin)', 'http://www.lesilex.fr/', 'AUXERRE', '22/06/2018', '24/06/2018', 89000, '47.793488225, 3.58168281761', 'Yonne', 'Catalpa.jpg'),
(11, 'CE MURMURE FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Festival hétéroclite, sonore, visuel et vivant ', 21, '08 (août)', 'http://cemurmurefestival.com/', 'Semur En Auxois', '24/08/2018', '25/08/2018', 21140, '47.4909559267, 4.34106366761', 'Côte-d\'Or', 'Ce_murmure.jpg'),
(12, 'CHABLIS BOUGE TON CRU', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Chanson', 89, '07 (juillet)', 'www.chablis-bouge-son-cru.fr/', 'CHABLIS', '21/07/2018', '21/07/2018', 89800, '47.8075995199, 3.79091424228', 'Yonne', 'Chablis_bouge_ton_cru.jpg'),
(13, 'CHAHUT AU CHATEAU', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', 'Chahutages & Animations', 39, '08 (août)', 'https://chahutauchateau.com', 'Gevingey', '25/08/2018', '26/08/2018', 39570, '46.6375986496, 5.50938673759', 'Jura', 'Chahut_au_chateau.jpg'),
(14, 'Chalon dans la Rue', 'Bourgogne-Franche-Comté', 'Divers Spectacle vivant', 'Arts de la rue', 71, '07 (juillet)', 'http://www.chalondanslarue.com/', 'CHALON SUR SAONE', '18/07/2018', '22/07/2018', 71100, '46.7900288793, 4.85191555008', 'Saône-et-Loire', 'Chalon_dans_la_rue.jpg'),
(15, 'CHAMPAGNOLE JAZZ FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 39, '06 (juin)', 'www.champagnole.fr', 'CHAMPAGNOLE', '30/06/2018', '30/06/2018', 39300, '46.7445389751, 5.8988102947', 'Jura', 'Campagnole_jazz_festival.jpg'),
(16, 'CHANSONS EN FÊTE', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Chanson', 39, '05 (mai)', 'www.oreille-en-fete.fr', 'ARBOIS', '', '', 39600, '46.8941749828, 5.77318253275', 'Jura', 'Chansons_en_fete.jpg'),
(17, 'CIRCASISMIC', 'Bourgogne-Franche-Comté', 'Divers Spectacle vivant', 'Cirque', 25, '05 (mai)', 'http://circasismic.jimdo.com', 'BESANCON', '03/05/2018', '05/05/2018', 25000, '47.2553872249, 6.01948696494', 'Doubs', 'Circasismic.jpg'),
(18, 'Clameur(s)', 'Bourgogne-Franche-Comté', 'Livre et littérature', 'Littérature et gastronomie', 21, '06 (juin)', 'www.clandestinofestival.com', 'DIJON', '15/06/2018', '17/06/2018', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'Clameur(s).jpg'),
(19, 'CLEM\'FEST', 'Bourgogne-Franche-Comté', 'Musiques actuelles', ' festival de musique en plein air', 89, '09 (septembre)', 'www.clementzik.com', 'ST CLEMENT', '08/09/2018', '08/09/2018', 89100, '48.2247837392, 3.30677970985', 'Yonne', 'Clem\'fest.jpg'),
(20, 'COLOMB\'IN ROCK', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 70, '08 (août)', 'https://colombelesvesoul.fr/', 'COLOMBE LES VESOUL', '14/08/2018', '14/08/2018', 70000, '47.6121777534, 6.22089003773', 'Haute-Saône', 'Colomb\'in_rock.jpg'),
(21, 'Coming of Rock', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 25, '04 (avril)', '', 'Le Russey', '27/04/2018', '28/04/2018', 25210, '47.1549185878, 6.73440290446', 'Doubs', 'Coming_of_rock.jpg'),
(22, 'Comme ça me chante', 'Bourgogne-Franche-Comté', 'Musiques classiques', 'Lyrique et choral', 89, '07 (juillet)', 'http://www.maisondecolette.fr/', 'SAINT SAUVEUR EN PUISAYE', '26/07/2018', '30/07/2018', 89520, '47.6390792978, 3.20437842755', 'Yonne', 'ça_me_chante.jpg'),
(23, 'CONTRASTE ET COULEURS', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 71, '04 (avril)', 'www.ccas-contre-courant.org', 'CHALON SUR SAONE', '20/04/2018', '21/04/2018', 71100, '46.7900288793, 4.85191555008', 'Saône-et-Loire', 'Contraste_et_couleurs.jpg'),
(24, 'CRESCENT JAZZ FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 71, '07 (juillet)', 'www.lecrescent.net', 'MACON', '18/06/2018', '21/07/2018', 71000, '46.3205511756, 4.81842529639', 'Saône-et-Loire', 'Crescent_jazz.jpg'),
(25, 'DE BOUCHE A OREILLE EN PETITE MONTAGNE', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Musique', 'musique actuelle, classique, musique du monde,  traditionnelles, spectacle vivant, contes, spectacles, animations', 39, '07 (juillet)', 'www.festival-jura.com', 'ST JULIEN', '07/07/2018', '29/07/2018', 39320, '46.3963208, 5.4577858737', 'Jura', 'De_bouche_a_oreille.jpg'),
(26, 'DEMIGNY ON THE ROCK', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 71, '05 (mai)', 'http://demignyontherock.weebly.com', 'Demigny', '04/05/2018', '05/05/2018', 71150, '46.9145180669, 4.84793098636', 'Saône-et-Loire', 'Demigny_on_the_rock.jpg'),
(27, 'DETONATION', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 25, '09 (septembre)', 'www.larodia.fr', 'BESANCON', '27/09/2018', '29/09/2018', 25000, '47.2553872249, 6.01948696494', 'Doubs', 'Détonation.jpg'),
(28, 'Détours en Tournugeois', 'Bourgogne-Franche-Comté', 'Divers Spectacle vivant', 'Arts de la rue', 71, '08 (août)', 'http://www.legalpon.com', 'Tournus', '29/08/2018', '02/09/2018', 71700, '46.5651726015, 4.90012429206', 'Saône-et-Loire', 'Detour_en_tournugeois.jpg'),
(29, 'D\'JAZZ AU JARDIN', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 21, '07 (juillet)', 'www.mediamusic-dijon.fr', 'DIJON', '09/07/2018', '13/07/2018', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'D\'jazz_au_jardin.jpg'),
(30, 'D\'JAZZ DANS LA VILLE', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 21, '05 (mai)', '', 'DIJON', '', '', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'djazz dans la ville.jpg'),
(31, 'D\'Jazz Nevers Festival', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 58, '11 (novembre)', 'www.djazznevers.com', 'NEVERS', '10/11/2018', '17/11/2018', 58000, '46.9881194908, 3.15689130958', 'Nièvre', 'd-jazz-nevers.jpg'),
(32, 'Estivales de Puisaye', 'Bourgogne-Franche-Comté', 'Musiques classiques', 'musique classique ', 89, '08 (août)', 'https://www.estivales-puisaye.com/', 'Champignelles', '16/08/2018', '26/08/2018', 89350, '47.7800283506, 3.07775894136', 'Yonne', 'estivalesdepuisaye.jpg'),
(33, 'Été Frappé', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', 'musique, animation, cinéma, festivités', 71, '06 (juin)', 'www.macon.fr', 'MACON', '21/06/2018', '30/08/2018', 71000, '46.3205511756, 4.81842529639', 'Saône-et-Loire', 'Ete_frappé.jpg'),
(34, 'EUROPE EN SCENES', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', 'musique, théatre, danse', 25, '03 (mars)', 'www.mascenenationale.com', 'MONTBELIARD', '', '', 25200, '47.5155169816, 6.79148147353', 'Doubs', 'Europe_en_scenes.jpg'),
(35, 'EUROPOPCORN', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 71, '05 (mai)', 'http://www.europopcorn.fr/', 'MERVANS', '25/05/2018', '26/05/2018', 71310, '46.7945134241, 5.18412548455', 'Saône-et-Loire', 'illustration-europopcorn-festival_1-1524210038.jpg'),
(36, 'Fenêtres sur courts', 'Bourgogne-Franche-Comté', 'Cinéma et audiovisuel', 'Courts-métrages', 21, '11 (novembre)', 'www.fenetres-sur-courts.com', 'DIJON', '10/11/2018', '17/11/2018', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'fenetre_sur_courts.jpeg'),
(37, 'FESTI\'LAV', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 25, '06 (juin)', '', 'Lavernay', '01/06/2018', '03/06/2018', 25170, '47.2443013496, 5.81882619384', 'Doubs', 'desti\'lav.png'),
(38, 'FESTIVAL CLUNY DANSE', 'Bourgogne-Franche-Comté', 'Danse', 'Danse contemporaine', 71, '05 (mai)', 'http://festivalclunydanse.com', 'Cluny', '16/05/2018', '19/05/2018', 71250, '46.4303628582, 4.67033276327', 'Saône-et-Loire', 'cluny_danse.jpg'),
(39, 'FESTIVAL DE LA CHANSON FRANCAISE DE LORMES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Chanson', 58, '07 (juillet)', 'http://festivaldelormes.canalblog.com', 'LORMES', '13/07/2018', '15/07/2018', 58140, '47.2894645643, 3.82491613793', 'Nièvre', 'festival-lorme.jpeg'),
(40, 'Festival de la paille', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 25, '07 (juillet)', 'www.festivalpaille.fr', 'Metabief', '27/07/2018', '28/07/2018', 25370, '46.7648830862, 6.35324497812', 'Doubs', 'festi_paille.jpg'),
(41, 'Festival De Musique Du Haut Jura', 'Bourgogne-Franche-Comté', 'Musiques classiques', 'Baroque et ancien', 39, '06 (juin)', 'http://www.festival-musique-baroque-jura.com/', 'ST CLAUDE', '08/06/2018', '24/06/2018', 39200, '46.408600398, 5.87556247635', 'Jura', 'festival-de-musique-du-haut-jura.jpg'),
(42, 'FESTIVAL DES CRO MIGNONS', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'spectacles pour enfants', 89, '10 (octobre)', 'www.lesilex.fr', 'AUXERRE', '20/10/2018', '21/10/2018', 89000, '47.793488225, 3.58168281761', 'Yonne', '1532682374_Cro-Magnons.JPG_zoom.jpg'),
(43, 'Festival du mot', 'Bourgogne-Franche-Comté', 'Livre et littérature', '', 58, '05 (mai)', 'http://www.festivaldumot.fr/', 'La Charite sur Loire', '30/05/2018', '03/06/2018', 58400, '47.1835862006, 3.02885515594', 'Nièvre', 'v3Wdw2gY_400x400.jpg'),
(44, 'FESTIVAL EN ARC', 'Bourgogne-Franche-Comté', 'Théâtre', '', 70, '09 (septembre)', 'www.festivalenarc.fr', 'ARC LES GRAY', '14/09/2018', '23/09/2018', 70100, '47.4628603881, 5.58172003346', 'Haute-Saône', 'festival_en_arc.jpg'),
(45, 'Festival Entrevues de Belfort', 'Bourgogne-Franche-Comté', 'Cinéma et audiovisuel', '', 90, '11 (novembre)', 'www.festival-entrevues.com', 'BELFORT', '17/11/2018', '25/11/2018', 90000, '47.6471539414, 6.84541206237', 'Territoire de Belfort', 'entrevues_belfort_.jpg'),
(46, 'Festival international de musique de Besançon Franche-Comté', 'Bourgogne-Franche-Comté', 'Musiques classiques', '', 25, '09 (septembre)', 'www.festival-besancon.com', 'BESANCON', '07/09/2018', '16/09/2018', 25000, '47.2553872249, 6.01948696494', 'Doubs', 'FIMBFC.jpg'),
(47, 'Festival international des écrits de femmes', 'Bourgogne-Franche-Comté', 'Livre et littérature', '', 89, '10 (octobre)', 'http://ecritsdefemmes.fr/', 'SAINT SAUVEUR EN PUISAYE', '13/10/2018', '14/10/2018', 89520, '47.6390792978, 3.20437842755', 'Yonne', 'ecrit_femmes.jpeg'),
(48, 'Festival international d\'opéra baroque', 'Bourgogne-Franche-Comté', 'Musiques classiques', 'Baroque et ancien', 21, '07 (juillet)', 'www.festivalbeaune.com', 'BEAUNE', '06/07/2018', '29/07/2018', 21200, '47.0255189366, 4.83767985985', 'Côte-d\'Or', '97716_festival-international-d-opera-baroque-de-beaune.jpg'),
(49, 'Festival international d\'opéra baroque de Beaune', 'Bourgogne-Franche-Comté', 'Musiques classiques', 'Baroque et ancien', 21, '07 (juillet)', 'https://www.festivalbeaune.com/', 'Beaune', '06/07/2018', '29/07/2018', 21200, '47.0255189366, 4.83767985985', 'Côte-d\'Or', '97716_festival-international-d-opera-baroque-de-beaune.jpg'),
(50, 'Festival international du film asiatique de Vesoul - Cinémas d\'Asie', 'Bourgogne-Franche-Comté', 'Cinéma et audiovisuel', 'Cinémas étrangers', 70, '01 (janvier)', 'http://www.cinemas-asie.com', 'VESOUL', '01/01/2019', '31/01/2019', 70000, '47.6320408648, 6.1548458149', 'Haute-Saône', 'cinema_asie_vesoul.jpg'),
(51, 'Festival International du Film Policier de Beaune', 'Bourgogne-Franche-Comté', 'Cinéma et audiovisuel', '', 21, '04 (avril)', 'www.beaunefestivalpolicier.com', 'Beaune', '', '', 21200, '47.0255189366, 4.83767985985', 'Côte-d\'Or', 'l-affiche-de-la-10e-edtion-du-festival-international-du-film-policier-de-beaune-1519036732.jpg'),
(52, 'FESTIVAL JACQUES BREL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Chanson', 70, '09 (septembre)', 'www.theatre-edwige-feuillere.fr', 'VESOUL', '28/09/2018', '16/10/2018', 70000, '47.6320408648, 6.1548458149', 'Haute-Saône', '1453990428.jpg'),
(53, 'Festival L\'ACCORDÉON', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques traditionnelles et du monde', 21, '08 (août)', 'www.fetedelaccordeon.com', 'SAULIEU', '10/08/2018', '12/08/2018', 21210, '47.2840306915, 4.23192469784', 'Côte-d\'Or', 'accordeon-saulieu.jpg'),
(54, 'Festival Musique et mémoire', 'Bourgogne-Franche-Comté', 'Musiques classiques', 'Baroque et ancien', 70, '07 (juillet)', 'http://www.musetmemoire.com/', 'FAUCOGNEY ET LA MER', '13/07/2018', '29/07/2018', 70310, '47.8319641353, 6.5834328372', 'Haute-Saône', 'musique-memoire-18.jpg'),
(55, 'Festival Tandem', 'Bourgogne-Franche-Comté', 'Livre et littérature', '', 58, '02 (février)', 'https://www.tandemnevers.fr/', 'NEVERS', '06/02/2018', '11/02/2018', 58000, '46.9881194908, 3.15689130958', 'Nièvre', 'festival-tandem.jpg'),
(56, 'FESTIV\'HALLES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 71, '08 (août)', 'http://www.aze.fr/', 'AZE', '24/08/2018', '25/08/2018', 71550, '47.0770713545, 4.09241779804', 'Saône-et-Loire', 'festiv\'halles-2018.jpg'),
(57, 'FIMU', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 90, '06 (juin)', 'http://www.fimu.com', 'BELFORT', '', '', 90000, '47.6471539414, 6.84541206237', 'Territoire de Belfort', 'FIMU-2018.jpg'),
(58, 'FORMAT RAISINS', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', '', 58, '07 (juillet)', 'www.format-raisins.fr', 'La Charite sur Loire', '02/07/2018', '22/07/2018', 58400, '47.1835862006, 3.02885515594', 'Nièvre', 'format-raisin.png'),
(59, 'FRONTENAY JAZZ FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 39, '08 (août)', 'http://www.frontenayjazz.fr/', 'FRONTENAY', '25/08/2018', '25/08/2018', 39210, '46.7884051607, 5.63215279855', 'Jura', 'frontenayjazz.jpg'),
(60, 'FRUIT DES VOIX', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Chanson', 39, '10 (octobre)', 'www.lefruitdesvoix.com', 'LONS LE SAUNIER', '12/10/2018', '28/10/2018', 39000, '46.6744796278, 5.55733212947', 'Jura', 'fruit_voix.jpg'),
(61, 'GARCON LA NOTE DIJON', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 89, '07 (juillet)', 'www.garcon-la-note.com', 'AUXERRE', '01/07/2018', '31/08/2018', 89000, '47.793488225, 3.58168281761', 'Yonne', 'garçonlaNote.jpg'),
(62, 'GÉNÉRIQ FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 21, '02 (février)', 'www.generiq-festival.com', 'DIJON', '', '', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'generiq.jpg'),
(63, 'GENESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 71, '07 (juillet)', 'http://genestival.fr/', 'GENELARD', '06/07/2018', '07/07/2018', 71420, '46.5798385493, 4.25003029458', 'Saône-et-Loire', 'genestival.jpg'),
(64, 'GRAND BASTRINGUE DE CLUNY', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 71, '06 (juin)', 'www.grandbastringue.com', 'CLUNY', '08/06/2018', '09/06/2018', 71250, '46.4303628582, 4.67033276327', 'Saône-et-Loire', 'grandBastringue.jpg'),
(65, 'Haut Doubs Festival', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 25, '10 (octobre)', 'www.haut-doubs-festival.com', 'PONTARLIER', '', '', 25300, '46.9119730882, 6.38914602031', 'Doubs', 'hautdoubsfestival.jpg'),
(66, 'HIBOUX ET LE CHIEN BLANC', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 25, '07 (juillet)', 'http://hiboux-chien-blanc.weebly.com', 'LA CUDE HYEMONDANS', '21/07/2018', '22/07/2018', 25250, '47.3809106703, 6.63896940193', 'Doubs', 'hibouxetlechienblanc.jpg'),
(67, 'IDÉKLIC', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', '', 39, '07 (juillet)', 'www.ideklic.fr', 'MOIRANS EN MONTAGNE', '10/07/2018', '13/07/2018', 39260, '46.4388080084, 5.73795329823', 'Jura', 'ideklic.jpg'),
(68, 'IMPETUS FESTIVAL FRANCE', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 90, '04 (avril)', 'www.impetusfestival.com', 'BELFORT', '27/04/2018', '29/04/2018', 90000, '47.6471539414, 6.84541206237', 'Territoire de Belfort', 'impetus.jpg'),
(69, 'JAZZ A COUCHES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 71, '07 (juillet)', 'http://www.jazzacouches.fr', 'COUCHES', '04/07/2018', '07/07/2018', 71490, '46.869155076, 4.56431598435', 'Saône-et-Loire', 'jazzacouches.jpg'),
(70, 'JAZZ À SENS', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 89, '01 (janvier)', 'www.ville-sens.fr', 'SENS', '', '', 89100, '48.1956727015, 3.29793332552', 'Yonne', 'jazzasens.jpg'),
(71, 'JAZZ CAMPUS EN CLUNISOIS', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 71, '08 (août)', 'www.jazzcampus.fr', 'CLUNY', '18/08/2018', '25/08/2018', 71250, '46.4303628582, 4.67033276327', 'Saône-et-Loire', 'jazzcampusenclunisois.jpg'),
(72, 'Jazz et musique improvisée en Franche-Comté', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 25, '06 (juin)', 'http://www.aspro-impro.fr/', 'BESANCON', '26/06/2018', '29/06/2018', 25000, '47.2553872249, 6.01948696494', 'Doubs', 'jazzetmusiquesimproviséeenfranchecomté'),
(73, 'LA GUERRE DU SON', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 25, '07 (juillet)', 'www.laguerreduson.com', 'LANDRESSE', '20/07/2018', '21/07/2018', 25530, '47.2603830516, 6.48915118252', 'Doubs', 'laguerreduson.jpg'),
(74, 'La Manufacture d\'idées', 'Bourgogne-Franche-Comté', 'Livre et littérature', 'Sciences humaines et sociales', 71, '05 (mai)', 'http://lamanufacturedidees.org/', 'Hurigny', '09/05/2018', '13/05/2018', 71870, '46.3429969068, 4.79636186257', 'Saône-et-Loire', 'lamanufacturedidées.jpg'),
(75, 'LA VOIX DANS TOUS LES SENS', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', '', 89, '09 (septembre)', 'www.asso-ardev.com', 'SENS', '13/09/2018', '16/09/2018', 89100, '48.1956727015, 3.29793332552', 'Yonne', 'lavoixdanstouslessens.jpg'),
(76, 'l\'Annuelle', 'Bourgogne-Franche-Comté', 'Divers Spectacle vivant', 'Arts de la rue', 25, '06 (juin)', 'http://artistesalacampagne.fr/presentation_de_l_annuelle.html', 'CHAMPLIVE', '08/06/2018', '10/06/2018', 25360, '47.2883174221, 6.24419443876', 'Doubs', 'lannuelle.jpg'),
(77, 'Le Festival de Musiques d\'aujourd\'hui à demain', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Musique', '', 71, '07 (juillet)', 'http://clunycontemporaine.org/', 'CLUNY', '07/07/2018', '11/07/2018', 71250, '46.4303628582, 4.67033276327', 'Saône-et-Loire', 'affiche-cluny-2018.jpg'),
(78, 'Le Rendez-vous musique classique', 'Bourgogne-Franche-Comté', 'Musiques classiques', '', 70, '08 (août)', 'http://lesrendezvous.org/', 'ST BARTHELEMY', '20/08/2018', '24/08/2018', 70270, '47.7410393174, 6.60409347666', 'Haute-Saône', 'music-classik.jpg'),
(79, 'LE SIRK', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 21, '04 (avril)', 'http://www.riskparty.com', 'CHENOVE', '03/04/2018', '30/04/2018', 21300, '47.2926136721, 5.00488353457', 'Côte-d\'Or', 'sirk.jpg'),
(80, 'LES CELTIVALES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques traditionnelles et du monde', 25, '10 (octobre)', 'www.celtivales.com', 'PIERREFONTAINE LES VARANS', '13/10/2018', '27/10/2018', 25510, '47.2194158941, 6.5503792835', 'Doubs', 'celtivales.jpg'),
(81, 'LES ESTIVALES DE SAONE', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 70, '07 (juillet)', 'http://spectacles.aucoindeloreille.org', 'VESOUL', '16/07/2018', '11/08/2018', 70000, '47.6320408648, 6.1548458149', 'Haute-Saône', 'estivalesdesaone.jpg'),
(82, 'LES EUROCKEENNES DE BELFORT', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 90, '07 (juillet)', 'www.eurockeennes.fr', 'CRAVANCHE', '05/07/2018', '08/07/2018', 90300, '47.6518069558, 6.82383810256', 'Territoire de Belfort', 'eurockeenes.jpg'),
(83, 'LES FETES DE LA VIGNE', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', '', 21, '08 (août)', 'www.fetesdelavigne.org', 'DIJON', '21/08/2018', '26/08/2018', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'lesfetesdelavigne.jpg'),
(84, 'LES NUITS BRESSANES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 71, '07 (juillet)', 'http://www.bresse-bourguignonne.com', 'Louhans', '13/07/2018', '14/07/2018', 71500, '46.6351883548, 5.23839292789', 'Saône-et-Loire', 'lesnuitsbressanes.jpg'),
(85, 'LES NUITS DE SAINT SAUVEUR', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 89, '08 (août)', '', 'SAINT SAUVEUR EN PUISAYE', '10/08/2018', '13/08/2018', 89520, '47.6390792978, 3.20437842755', 'Yonne', 'lesnuitsdesaintsauveur.jpg'),
(86, 'Les Petites fugues', 'Bourgogne-Franche-Comté', 'Livre et littérature', '', 25, '11 (novembre)', 'http://www.lespetitesfugues.fr/', 'BESANCON', '19/11/2018', '01/12/2018', 25000, '47.2553872249, 6.01948696494', 'Doubs', 'lespetitesfugues.jpg'),
(87, 'LES PETITES REVERIES', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', '', 58, '06 (juin)', 'http://www.lespetitesreveries.com', 'BRINON SUR BEUVRON', '06/06/2019', '09/06/2019', 58420, '47.2843863072, 3.49020583859', 'Nièvre', 'lespetitesreveries.jpg'),
(88, 'LES PLURALIES', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Spectacle vivant', '', 70, '07 (juillet)', 'www.pluralies.net', 'LUXEUIL LES BAINS', '17/07/2019', '20/07/2019', 70300, '47.823919724, 6.36363973342', 'Haute-Saône', 'lespluralies.jpg'),
(89, 'LES VENDANGES DE L\'HUMOUR', 'Bourgogne-Franche-Comté', 'Divers Spectacle vivant', 'Humour', 71, '11 (novembre)', 'http://www.lesvendanges-de-lhumour.com', 'MACON', '16/11/2018', '01/12/2018', 71000, '46.3205511756, 4.81842529639', 'Saône-et-Loire', 'lesvendangesdelhumour.jpg'),
(90, 'LES ZACCROS D\'MA RUE', 'Bourgogne-Franche-Comté', 'Divers Spectacle vivant', 'Arts de la rue', 58, '07 (juillet)', 'http://www.zaccros.org', 'NEVERS', '02/07/2018', '08/07/2018', 58000, '46.9881194908, 3.15689130958', 'Nièvre', 'leszaccrosdmarue.jpg'),
(91, 'L\'Étang du Folk', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 58, '07 (juillet)', '', 'Chevenon', '', '', 58160, '46.9145671045, 3.23010283481', 'Nièvre', 'letangdufolk.jpg'),
(92, 'LUCIOL IN THE SKY', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 71, '06 (juin)', 'https://www.cavazik.org', 'Charnay les Macon', '15/06/2018', '16/06/2018', 71850, '46.3041852737, 4.78693813476', 'Saône-et-Loire', 'luciol in the sky.jpg'),
(93, 'MON BABY BLUES FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 25, '09 (septembre)', 'www.monbabybluesfestival.com', 'MONTBELIARD', '07/09/2018', '09/09/2018', 25200, '47.5155169816, 6.79148147353', 'Doubs', 'mon baby blues.jpg'),
(94, 'MUSICAVES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 71, '06 (juin)', 'www.lesmusicaves.fr', 'MELLECEY', '27/06/2018', '01/07/2018', 71640, '46.8104311793, 4.7565417637', 'Saône-et-Loire', 'MUSICAVES-PROGRAMME-A-LA-UNE-GABARIT-960X960.jpg'),
(95, 'MUSIQUE AU CHAMBERTIN', 'Bourgogne-Franche-Comté', 'Pluridisciplinaire Musique', '', 21, '09 (septembre)', 'www.ot-gevreychambertin.fr', 'GEVREY CHAMBERTIN', '21/09/2018', '07/10/2018', 21220, '47.2200822946, 4.98301612333', 'Côte-d\'Or', 'musique-AU-CHAMBERTIN.jpg'),
(96, 'MUSIQUES LIBRES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 25, '11 (novembre)', 'http://www.aspro-impro.fr/', 'BESANCON', '01/11/2018', '04/11/2018', 25000, '47.2553872249, 6.01948696494', 'Doubs', 'aspro-impro.jpg'),
(97, 'NEVERS A VIF', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 58, '10 (octobre)', 'http://www.nevers-a-vif.fr/', 'NEVERS', '20/10/2018', '03/11/2018', 58000, '46.9881194908, 3.15689130958', 'Nièvre', 'nerf a vif.png'),
(98, 'NO LOGO FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 39, '08 (août)', 'www.nologofestival.fr', 'FRAISANS', '10/08/2018', '12/08/2018', 39700, '47.1244743587, 5.75661818843', 'Jura', 'nologo2018.jpg'),
(99, 'NOVOSONIC', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 21, '09 (septembre)', 'http://novosonic.wixsite.com/novosonic9', 'DIJON', '19/09/2018', '21/09/2018', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'novosonic.jpg'),
(100, 'NUITS CAJUN DE SAULIEU', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques traditionnelles et du monde', 21, '08 (août)', 'www.bayouprod.com', 'SAULIEU', '02/08/2018', '05/08/2018', 21210, '47.2840306915, 4.23192469784', 'Côte-d\'Or', 'nuist saulieu.jpg'),
(101, 'POPOPPIDUM FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 39, '04 (avril)', 'http://www.popoppidum.com', 'CHAMPAGNOLE', '13/04/2019', '13/04/2019', 39300, '46.7445389751, 5.8988102947', 'Jura', 'popopidum.jpg'),
(102, 'PRINTEMPS DE L\'AUXOIS', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 21, '04 (avril)', 'http://www.ugmm.org/index.php/printemps-de-lauxois/', 'Vitteaux', '27/04/2018', '29/04/2018', 21350, '47.3974282764, 4.54312292794', 'Côte-d\'Or', '16e-printemps-de-auxois_17015.jpg'),
(103, 'Prise de CirQ\'', 'Bourgogne-Franche-Comté', 'Divers spectacle vivant', 'Cirque', 21, '04 (avril)', 'www.cirqonflex.fr', 'DIJON', '11/04/2018', '24/04/2018', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'Prise de CirQ\'.jpg'),
(104, 'PYHC FEST', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 89, '07 (juillet)', 'http://www.pyhc.fr/', 'PONT SUR YONNE', '20/07/2018', '21/07/2018', 89140, '48.2787429774, 3.1934739546', 'Yonne', 'phync fest.jpg'),
(105, 'RENCONTRE DE LA CHANSON FRANCAISE A TOURNUS', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Chanson', 71, '07 (juillet)', '', 'Tournus', '06/07/2018', '15/07/2018', 71700, '46.5651726015, 4.90012429206', 'Saône-et-Loire', 'RENCONTRE DE LA CHANSON FRANCAISE A TOURNUS.jpg'),
(106, 'Rencontres Cinématographiques de Dijon', 'Bourgogne-Franche-Comté', 'Cinéma et audiovisuel', '', 21, '11 (novembre)', 'www.rencontres-cinematographiques-de-dijon.fr', 'DIJON', '07/11/2018', '09/11/2018', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'Rencontre cinematographique dijonnaise.jpg'),
(107, 'RENCONTRES ET RACINES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 25, '06 (juin)', 'http://rencontres-et-racines.audincourt.com', 'AUDINCOURT', '29/06/2018', '01/07/2018', 25400, '47.4811676376, 6.85493983157', 'Doubs', 'Rencontres-Racines-affiche.jpg'),
(108, 'Rencontres internationales de Pontarlier', 'Bourgogne-Franche-Comté', 'Cinéma et audiovisuel', '', 25, '03 (mars)', 'https://www.ccjb.fr/', 'PONTARLIER', '19/03/2018', '25/03/2018', 25300, '46.9119730882, 6.38914602031', 'Doubs', 'Rencontres internationales de Pontarlier.jpg'),
(109, 'RENCONTRES MUSICALES DE VEZELAY', 'Bourgogne-Franche-Comté', 'Musiques classiques', '', 89, '08 (août)', 'www.rencontresmusicalesdevezelay.com', 'Vezelay', '23/08/2018', '26/08/2018', 89450, '47.4524539513, 3.71058845441', 'Yonne', 'Rencontres-musicales-Vezelay-2017.jpg'),
(110, 'RISING FEST', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 21, '10 (octobre)', 'https://risingfest.wixsite.com/risingfest', 'DIJON', '05/10/2018', '06/10/2018', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'rinsing fest.jpeg'),
(111, 'ROCK AU CHÂTEAU', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 70, '08 (août)', 'www.rockauchateau.fr', 'VILLERSEXEL', '04/08/2018', '05/08/2018', 70110, '47.559065822, 6.42909523129', 'Haute-Saône', 'ROCK AU CHÂTEAU.jpg'),
(112, 'ROCK EN PLAINE', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 58, '08 (août)', 'www.rockenplaine.org', 'Varennes Vauzelles', '31/08/2018', '01/09/2018', 58640, '47.0372879565, 3.14354311851', 'Nièvre', 'rockenplaine.jpg'),
(113, 'ROCK N HORSES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 39, '08 (août)', 'http://lajumentverte.com', 'Courlans', '01/08/2018', '05/08/2018', 39570, '46.6757012909, 5.48680231929', 'Jura', 'ROCK N HORSES.jpg'),
(114, 'ROCKALISSIMO', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 39, '06 (juin)', 'www.rockalissimo.com', 'ST AUBIN', '08/06/2018', '09/06/2018', 39410, '47.0326920185, 5.33365017851', 'Jura', 'rockalissimo_1-1524594080.jpg'),
(115, 'Rolling Saône', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 70, '05 (mai)', 'www.rolling-saone.com', 'Gray', '10/05/2018', '12/05/2018', 70100, '47.4320889937, 5.61070658545', 'Haute-Saône', 'rollingsaone.jpg'),
(116, 'SAINT ROCK', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 71, '07 (juillet)', 'www.saintrock.eu', 'LA CLAYETTE', '13/07/2018', '14/07/2018', 71800, '46.2892944317, 4.31079967145', 'Saône-et-Loire', 'saint-rock.jpg'),
(117, 'SILLIUSFEST', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 71, '08 (août)', '', 'AUTUN', '24/08/2018', '26/08/2018', 71400, '46.945536773, 4.31060069532', 'Saône-et-Loire', 'silliusfest.jpg'),
(118, 'SONS D\'UNE NUITS D\'ETE', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Chanson', 21, '07 (juillet)', 'http://www.festivalnuits.fr/', 'NUITS ST GEORGES', '03/07/2018', '07/07/2018', 21700, '47.146518392, 4.9385500417', 'Côte-d\'Or', 'SONS D\'UNE NUITS D\'ETE.jpg'),
(119, 'SURFIN BIRD FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 39, '09 (septembre)', 'www.jura-tourism.com/offre/fiche/surfin-bird-festival/320006631', 'LONS LE SAUNIER', '21/09/2018', '22/09/2018', 39000, '46.6744796278, 5.55733212947', 'Jura', 'surfinbird.jpg'),
(120, 'Taingy dans la rue', 'Bourgogne-Franche-Comté', 'Divers Spectacle vivant', 'Arts de la rue', 89, '05 (mai)', 'www.amispatrimoinetaingy.wordpress.com', 'TAINGY', '25/05/2018', '26/05/2018', 89560, '47.6123914189, 3.40803434271', 'Yonne', 'Taingy dans la rue.jpg'),
(121, 'TALANT INTERNATIONAL BLUES FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Jazz, blues et musiques improvisées', 21, '03 (mars)', 'www.jagoblues.com', 'TALANT', '', '', 21240, '47.3388300285, 4.99779516001', 'Côte-d\'Or', 'TALANT INTERNATIONAL BLUES FESTIVAL.jpg'),
(122, 'TANGO SWING ET BRETELLES', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 71, '09 (septembre)', 'www.embarcadere-montceau.fr', 'MONTCEAU LES MINES', '29/09/2018', '07/10/2018', 71300, '46.6762539128, 4.3540960404', 'Saône-et-Loire', 'tango-swing-et-bretelles-teaser2.jpg'),
(123, 'TRIBU FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', '', 21, '09 (septembre)', 'www.tribufestival.com', 'DIJON', '28/09/2018', '07/10/2018', 21000, '47.3229437965, 5.03788805877', 'Côte-d\'Or', 'tsb-2016.jpg'),
(124, 'WANAGAIN FESTIVAL', 'Bourgogne-Franche-Comté', 'Musiques actuelles', 'Musiques amplifiées ou électroniques', 21, '05 (mai)', 'http://wanagain1.wixsite.com/wanagain', 'Clenay', '31/05/2018', '03/06/2018', 21490, '47.4135413138, 5.11448988395', 'Côte-d\'Or', 'WANAGAIN FESTIVAL.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `domaine`
--
ALTER TABLE `domaine`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `domaine_has_festival`
--
ALTER TABLE `domaine_has_festival`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `festival`
--
ALTER TABLE `festival`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `domaine`
--
ALTER TABLE `domaine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `domaine_has_festival`
--
ALTER TABLE `domaine_has_festival`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
--
-- AUTO_INCREMENT pour la table `festival`
--
ALTER TABLE `festival`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
