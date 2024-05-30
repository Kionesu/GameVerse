-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 12 avr. 2024 à 00:16
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
-- Base de données : `forum-jeu`
--

-- --------------------------------------------------------

--
-- Structure de la table `createur`
--

CREATE TABLE `createur` (
  `idCreateur_Createur` varchar(50) NOT NULL,
  `Nationalite_Studio` varchar(50) DEFAULT NULL,
  `nom_Studio` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `createur`
--

INSERT INTO `createur` (`idCreateur_Createur`, `Nationalite_Studio`, `nom_Studio`) VALUES
('1', 'US', 'Xbox games Studios');

-- --------------------------------------------------------

--
-- Structure de la table `creer`
--

CREATE TABLE `creer` (
  `idCreateur_Createur` varchar(50) NOT NULL,
  `Titre_Jeu` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jeu`
--

CREATE TABLE `jeu` (
  `Titre_Jeu` varchar(50) NOT NULL,
  `Prix_Jeu` varchar(50) DEFAULT NULL,
  `Date_Jeu` varchar(50) DEFAULT NULL,
  `Plateform_Jeu` varchar(50) DEFAULT NULL,
  `Description_Jeu` text DEFAULT NULL,
  `Img` text NOT NULL,
  `idEditeur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `jeu`
--

INSERT INTO `jeu` (`Titre_Jeu`, `Prix_Jeu`, `Date_Jeu`, `Plateform_Jeu`, `Description_Jeu`, `Img`, `idEditeur`) VALUES
('Age of Mythology : Retold', '40,00', '2024', 'PC, XBOX', 'Le jeu de stratégie en temps réel classique transporte les joueurs à une époque où les héros combattaient contre des monstres de légende et les dieux intervenaient dans les affaires des mortels. Utilisez des créatures mythologiques telles que les Minotaures et les Cyclopes pour renforcer la puissance de vos armées. Exhortez les dieux à vous aider pour détruire les villes des ennemis avec des météores ou pour disperser les troupes adversaires avec des éclairs.', 'https://image.jeuxvideo.com/medias/171026/1710255563-9577-jaquette-avant.jpg', '1'),
('Den of Wolves', 'Inconnue', 'Inconnue', 'PC', 'Den of Wolves est un jeu de tir coopératif à la première personne développé par les créateurs de Payday: The Heist, Payday 2 et GTFO. Les joueurs incarnent des criminels qui vendent leurs services aux entreprises rivales de Midway City. Pour mener leurs opérations à bien, ils devront regrouper leurs alliés, élaborer un plan et prendre soin de leur équipement.\r\n\r\n', 'https://assets-prd.ignimgs.com/2023/12/08/denoofwolves-1702060426568.jpg', ''),
('Dragon\'s Dogma II', '69,99', '22/03/2024', 'PC, PS5, XBOX', 'Dragon\'s Dogma II est un jeu de rôle-action développé par Capcom (Street Figther, Resident Evil, Devil May Cry, Monster Hunter...) qui se déroule dans un monde de fantasy. Suite du premier épisode sorti en 2012, le titre propose aux joueurs de définir leur propre expérience, de l\'apparence de leur personnage en passant par la façon d\'approcher les situations. Des pions à l\'intelligence artificielle très développée peuvent aussi vous accompagner dans votre aventure.', 'https://image.jeuxvideo.com/medias-sm/170119/1701185913-6681-jaquette-avant.jpg', ''),
('Earth Defense Force 6', 'Inconnue', '2024', 'PC, PS5, PS4', 'Earth Defense Force 6 est la nouvelle itération de la licence de Sandlot. Dans ce jeu de tir à la troisième personne, il vous faudra une nouvelle fois partir à l\'assaut des envahisseurs qui ne souhaitent qu\'une chose : conquérir votre planète.\r\n\r\n', 'https://image.jeuxvideo.com/medias/163343/1633433297-9252-jaquette-avant.jpg', ''),
('Fantasy Life i : The Girl Who Steals Time', 'Inconnue', '10/10/2024', 'Switch', 'Fantasy Life i: The Girl Who Steals Time est un jeu de rôle et de simulation où vous construisez votre propre ville sur une île en ruine mystérieuse. Le joueur a la possibilité de voyager entre le passé et le présent pour en percer les secrets. Des personnages bien connus de la franchise font aussi leur grand retour !', 'https://image.jeuxvideo.com/medias/170136/1701361280-7170-jaquette-avant.jpg', ''),
('FATAL FURY : City of the Wolves', 'Inconnue', '2025', 'PC', 'FATAL FURY : City of the Wolves est un jeu de combat qui s\'inscrit dans la grande saga de SNK du même nom. Le titre fait suite à Garou: Mark of the Wolves et marque le grand retour de personnages bien connus des fans comme Rock Howard, Terry Bogard ou encore Hotaru Futaba.\r\n\r\n', 'https://cdn.gamekult.com/images/photos/30/50/13/44/garou-mark-of-the-wolves-jaquette-ME3050134472_2.jpg', ''),
('Final Fantasy XVI : The Rising Tide', '41,99', '08/04/2024', 'PS5', 'The Rising Tide est le second DLC de Final Fantasy XVI. Da,ns cette nouvelle aventure, Clive Rosfield va devoir affronter un nouveau Primordial inédit : Léviathan, le Roi des Mers. Les joueurs pourront découvrir la nouvelle région de Mysidia et profiter de nouveaux challenges.', 'https://image.jeuxvideo.com/medias/171155/1711553431-2887-jaquette-avant.jpg', ''),
('Grand Theft Auto VI', '70,00', '2025', 'PC, PS5, XBOX', 'Grand Theft Auto VI est un jeu d\'action en monde ouvert qui se déroule dans l\'état fictif de Leonida, inspiré de la Floride. On y suit les aventures de deux personnages, Lucia et Jason, qui sont en couple. Si le jeu est encore assez mystérieux, on devrait y retrouver les codes qui ont fait le succès de la licence : braquages, casses, vols et autres règlements de comptes.', 'https://image.jeuxvideo.com/medias/170230/1702303334-1969-jaquette-avant.jpeg', ''),
('Hades II', 'Inconnue', '2024', 'PC', 'Hades II est la suite du premier épisode sorti en 2020. Après Zagreus, place à sa soeur qui va tout faire pour sauver son père et se venger de Cronos. Parcourez les enfers, partez à la rencontre des dieux grecques, obtenez de nouvelles armes et compétences pour atteindre le bout de votre périple.\r\n\r\n', 'https://www.margxt.fr/wp-content/uploads/2024/03/Hades-2.jpg', ''),
('Inazuma Eleven : Victory Road', 'Inconnue', '2024', 'PC, PS5, XBOX, Switch, IOS, Android', 'Inazuma Eleven : Victory Road est le septième épisode de la licence. Il adapte en jeu vidéo l\'anime du même nom en mélangeant football et jeu de rôle. Il intègre des nouvelles mécaniques propres à un gameplay sur Nintendo Switch et PlayStation, mettant derrière lui l\'âge DS et 3DS. Plus de 4500 personnages seront disponibles.\r\n\r\n', 'https://www.geekplay.fr/wp-content/uploads/2023/03/jeu-inazuma-eleven-victory-road-210756.jpg', ''),
('Kingmakers', 'Inconnue', '16/07/1905', 'PC', 'Kingmakers se présente comme un jeu d\'action et de stratégie plongeant le joueur au coeur des grandes batailles qui ont marqué le monde médiéval. Mais le jeu possède un twist : vous incarnez ici un voyageur dans le temps venu du futur pour renverser le cours de l\'Histoire. Aidé de tout un arsenal moderne, il faudra venir à bout des ennemis du passé pour pouvoir sauver le futur.', 'https://image.jeuxvideo.com/medias-sm/171104/1711039305-4394-jaquette-avant.jpg', ''),
('Last Sentinel', 'Inconnue', 'Inconnue', 'PC', 'Last Sentinel est un jeu d\'action en monde ouvert focalisé sur l\'histoire dans lequel le joueur incarne Hiromi Shoda qui évolue dans un Tokyo reconstruit des années après notre ère. Le projet est développé par Lightspeed Studios fondé par des anciens de Rockstar et Naughty Dog.', 'https://m.media-amazon.com/images/I/71rIDR1nXnL._AC_UF1000,1000_QL80_.jpg', ''),
('Légendes Pokémon Z-A', '70,00', '2025', 'Switch', 'Légendes Pokémon Z-A est un spin-off dans l\'univers de Pokémon. Après Légendes Pokémon : Arceus cette nouvelle aventure se déroule dans la région de Kalos, inspiré de la France et découverte pour la première fois dans Pokémon X et Y.', 'https://image.jeuxvideo.com/medias-sm/171026/1710255054-326-jaquette-avant.jpg', ''),
('No Rest for the Wicked', 'Inconnue', '2024', 'PC, PS5, XBOX', 'No Rest for the Wicked est un jeu de rôle-action développé par Moon Studios, connu pour la série des Ori. Dans un univers dessiné à la main avec un style graphique pictural, les joueurs devront explorer les méandres d\'une vaste île du nom de Sacra. La maîtrise et le timing des attaques de son personnage sont au coeur des combats.\r\n\r\n', 'https://image.api.playstation.com/vulcan/ap/rnd/202311/1718/4a94e9787d7cd234ab4943ba11f168ead804cdc4651286aa.png', ''),
('Princess Peach: Showtime!', '59,99', '22/03/2024', 'Switch', 'Princess Peach: Showtime! est un jeu de plateforme dans lequel le joueur incarne la célèbre princesse du Royaume Champignon. Dans cette aventure inédite, combattez des ennemis, parcourez des décors de théâtre et utilisez les pouvoirs d\'une étrange petite étoile pour faire à l\'infâme Syrah.', 'https://images.everyeye.it/img-cover/princess-peach-showtime-v8-52049-320x450.webp', ''),
('Professeur Layton et le Nouveau Monde à vapeur', '69.99', '2025-03-06', 'Switch', 'Là-bas, la puissance de moteurs à vapeur très avancés a permis la création un nouveau monde, surpassant grandement le développement technologique de Londres. En raison d\'un incident mystérieux à Steam Bison, une nouvelle aventure pour le Professeur Layton et Luke commence. »', 'https://assetsio.reedpopcdn.com/co66va.jpg?width=1200&height=1200&fit=bounds&quality=70&format=jpg&auto=webp', ''),
('Rise of the Ronin', '68,99', '22/03/2024', 'PS5', 'Rise of the Ronin est un action-RPG produit par la Team Ninja (Ninja Gaiden, Nioh) qui nous mettra dans la peau d’un Ronin, un samouraï sans maître. Dans ce monde ouvert axé sur les combats, le héros survivra dans un Japon en pleine transformation à la fin de la période d’Edo (longue de 300 ans). Une période particulièrement sombre faite de dirigeants oppressifs, infestée de maladies mortelles et berceau d’une guerre civile.', 'https://image.api.playstation.com/vulcan/ap/rnd/202312/0606/d776681e079c7bb209ca4724fb5ed7d65a0f00cad5670734.jpg', ''),
('Sand Land', '69,99', '26/04/2024', 'PS5, PS4, XBOX', 'SAND LAND est un jeu vidéo adapté du manga Sand Land, créé par Akira Toriyama et Bird Studio. L\'histoire se déroule dans un monde désertique, où les humains et les démons sont forcés de s\'associer en raison de la pénurie extrême d\'eau. Le scénario se concentrera en particulier sur Beelzebub, prince des démons, et Rao, shérif d\'une ville humaine.', 'https://dragonballsuper-france.fr/wp-content/uploads/2023/06/affiche-film-sand-land-scaled.jpg', ''),
('Senua\'s Saga : Hellblade II', 'Inconnue', '21/05/2024', 'PC, XBOX', 'Senua\'s Saga : Hellblade II est un jeu développé par Team Ninja et édité par Microsoft. Le titre suit les événements de Hellblade : Senua\'s Sacrifice où l\'héroïne, Senua, va jusqu\'en enfer viking pour retrouver l\'âme de son mari.\r\n\r\n', 'https://pics.filmaffinity.com/Senua_s_Saga_Hellblade_II-711830110-large.jpg', ''),
('Silent Hill 2', 'Inconnue', '2024', 'PC, PS5', 'Silent Hill 2 est un remake du jeu éponyme, sorti originellement en 2002. Le développement est pour le coup confié à Bloober Team et revisitera le grand classique de Konami, avec une technique modernisée grâce à l\'Unreal Engine 5 ou encore une caméra à l\'épaule : on y suivra de nouveau les mésaventures de James au sein de Silent Hill, ville maudite en proie aux cauchemars les plus profonds et ténébreux qui soient.\r\n\r\n', 'https://upload.wikimedia.org/wikipedia/ru/c/c1/Silent_Hill_2_remake_cover.jpg', ''),
('Snufkin : Melody of Moominvalley', 'Inconnue', '2024', 'PC', 'Snufkin : Melody of Moominvalley est un jeu qui se déroule dans l\'univers des Moomins. Vous incarnez Mumrik mais vous allez pouvoir croiser la route de plein d\'autres personnages imaginés par l\'écrivaine Tove Jansson. Votre but ? Restaurer la paix et l\'équilibre naturel de la Vallée des Moomins. La musique du jeu a été réalisé en collaboration avec Sigur Rós.\r\n\r\n', 'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEg7mv2c7UGLMIyBe4RT0yzCY-C_bsM61rLZhK7ALpAStzsUg_TzBIiQZcl9FI_-RVBy0rqpvORarAMbjfVChZg80LhyyWK0TrX7SfEKkDl0hyphenhyphen5J3x9pOJ-fVJj4BYAAhIu_M2yiAMc6WP8oTOK-VYtpgvNrxtBjEgKvgKDTMLuyFybc4pR2IBp7kHeA5cY/s16000-rw/Snufkin-Melody-of-Moominvalley-Nintendo-Switch-Physical-Release.webp', ''),
('Solo Leveling: Arise', 'Gratuit', '05/05/2024', 'PC, IOS, Android', 'Basé sur la populaire série de romans en ligne, Solo Leveling: Arise est un jeu de rôle-action. Le titre se déroule dans un monde où des personnes possédant des capacités magiques, appelés chasseurs, doivent combattre des monstres mortels pour protéger l\'humanité d\'une annihilation certaine. Dans cette guerre inter-espèce, un chasseur notoire, Sung Jinwoo, se retrouve mêlé dans une lutte pour sa survie.', 'https://images.epagine.fr/108/9782382882108_1_75.jpg', ''),
('Star Wars : Outlaws', 'Inconnue', '2024', 'PC, PS5, XBOX', 'Star Wars Outlaws est un futur jeu d\'action-aventure développé par Massive Entertainment, édité par Ubisoft et sous licence par Lucasfilm Games. Le jeu se déroulera dans l\'univers de Star Wars, durant la période entre L\'Empire contre-attaque et Le Retour du Jedi.', 'https://image.jeuxvideo.com/medias/168652/1686515257-4539-jaquette-avant.png', ''),
('Stellar Blade', '69,99', '26/04/2024', 'PC, PS4, PS5, XBOX', 'Stellar Blade est un action-RPG coréen développé par l\'équipe de SHIFT UP Corporation. Sorte de mix entre Bayonetta et NieR, ce jeu vous proposera des combats nerveux, effrénés tandis que vous évoluerez dans des décors étranges rappelant l\'œuvre de Yoko Taro.', 'https://preview.redd.it/stellar-blade-will-take-around-25-hours-for-the-main-story-v0-kv2bwerw20hc1.jpeg?auto=webp&s=8dfd7a909078faa31ce16d40407f5e2e7107413d', ''),
('Terminator : Survivors', '59,99', '24/10/2024', 'PC, PS5, XBOX', 'Terminators Survivors est un jeu d\'action et de survie dans l\'univers de Terminator. Quatre ans après la quasi-apocalypse causée par Skynet, le joueur incarne un survivant qui va devoir explorer un grand monde ouvert pour contrer les Terminators, créer et développer sa propre base et organiser la résistante. Le jeu est jouable seul, mais aussi à plusieurs en multijoueur.\r\n', 'https://image.jeuxvideo.com/medias/170937/1709374513-4930-jaquette-avant.jpeg', ''),
('The Alters', 'Inconnue', '2024', 'PC, PS5, XBOX', 'Pour survivre, Jan crée des doubles de lui-même, des alters. Chacune de ses entités à une personnalité différente créées à partir des expériences de vie de Jan. Il revoit ainsi les moments les plus importants de son existence.\r\n\r\n', 'https://image.api.playstation.com/vulcan/ap/rnd/202402/1615/90a40abf33560f1ec09c42c7fc5a07747f4114b5a3a95e14.jpg', ''),
('Visions of Mana', '69,99', '2024', 'PC, PS5, XBOX', 'Visions of Mana est le nouvel épisode de la grande série des Mana. Cette aventure inédite prend toujours la forme d\'un jeu de rôle-action, mais cette fois tout en 3D. On y suit le voyage de Val, un garde de l\'âme qui est chargé de protéger son ami d\'enfance qui a été choisi par la Fée comme l\'Alm de feu pour se rendre à l\'Arbre de Mana et rajeunir le flux de mana.\r\n\r\n', 'https://static.blog4ever.com/2018/09/848202/vomteaserartworkbyhaccan-1_9884295.jpg', ''),
('Zenless Zone Zero', 'Inconnue', '2024', 'PC, PS5, IOS, Android', 'Dans Zenless Zone zero, vous incarnez un proxy qui combat des monstres venus d\'une autre dimension. Ceux-ci sont arrivés à la suite d\'une catastrophe surnaturelle. Chaque personnage à une arme qui lui est propre, on peut y retrouver des armes à feu, des sabres ou même des armes plus lourdes.\r\n\r\n', 'https://cdn1.epicgames.com/spt-assets/dcd83ace86fb4501bde1316ca03e29ad/zenless-zone-zero-ynh5r.png', '');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `Identifiant` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `MotDePasse` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`Identifiant`, `MotDePasse`) VALUES
('User1', 'Valorant'),
('User2', 'Osu!');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `createur`
--
ALTER TABLE `createur`
  ADD PRIMARY KEY (`idCreateur_Createur`);

--
-- Index pour la table `creer`
--
ALTER TABLE `creer`
  ADD PRIMARY KEY (`idCreateur_Createur`,`Titre_Jeu`),
  ADD KEY `FK_Creer_Titre_Jeu` (`Titre_Jeu`);

--
-- Index pour la table `jeu`
--
ALTER TABLE `jeu`
  ADD PRIMARY KEY (`Titre_Jeu`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `creer`
--
ALTER TABLE `creer`
  ADD CONSTRAINT `FK_Creer_Titre_Jeu` FOREIGN KEY (`Titre_Jeu`) REFERENCES `jeu` (`Titre_Jeu`),
  ADD CONSTRAINT `FK_Creer_idCreateur_Createur` FOREIGN KEY (`idCreateur_Createur`) REFERENCES `createur` (`idCreateur_Createur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
