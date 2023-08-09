-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2023 at 09:31 PM
-- Server version: 10.5.21-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anuragli_neptunes`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL,
  `lanugage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`, `lanugage`) VALUES
(1, 'Dabangg', 1, 11, 'assets/images/artwork/dabangg.jpg', 3),
(2, 'Divide', 8, 2, 'assets/images/artwork/divide_cover.png', 2),
(3, 'Nine Track Mind', 9, 12, 'assets/images/artwork/nine_Track_Mind.png', 2),
(4, 'Gold Hits recooked', 10, 13, 'assets/images/artwork/goldHitsRecooked.png', 1),
(5, 'Taral', 12, 10, 'assets/images/artwork/bbbb.jpg', 1),
(6, 'Bimbaakash', 12, 10, 'assets/images/artwork/bbbbb.jpg', 1),
(7, 'Cooked By Pedruuu', 10, 14, 'assets/images/profile-pics/artists/swayam/pp.jpg', 1),
(8, 'Random', 11, 2, 'assets/images/artwork/bbb.jpg', 2),
(9, 'Neetesh\'s Hits', 15, 2, 'assets/images/artwork/nitesh.jpg', 1),
(10, 'Dipak Bajracharya\'s Hits', 17, 2, 'assets/images/profile-pics/artists/Bipul_Chhetri/dipak.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profile_pic` varchar(500) NOT NULL,
  `profile_icon` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `profile_pic`, `profile_icon`) VALUES
(1, 'Rahat Fateh Ali Khan', 'assets/images/profile-pics/artists/rahat/pp.jpg', 'assets/images/profile-pics/artists/rahat/icon.jpg'),
(2, 'Mamta Sharma', '', ''),
(3, 'Sonu Nigam', '', ''),
(4, 'Shreya Ghosal', '', ''),
(5, 'Sukhwinder Singh', '', ''),
(6, 'Shabab Sabri', '', ''),
(7, 'Salman Khan', '', ''),
(8, 'Ed Sheeran', '', ''),
(9, 'Charlie Puth', '', ''),
(10, 'Swayam Dhakal', 'assets/images/profile-pics/artists/swayam/pp.jpg', ''),
(11, 'Utshav Parajuli', 'assets/images/profile-pics/artists/Utshav_Parajuli/vuku_chumps.png', ''),
(12, 'Bartika Eam Rai', 'assets/images/profile-pics/artists/Bartika_Eam_Rai/download.jpg', ''),
(13, 'Sijjan Raj Vaidya', 'assets/images/profile-pics/artists/Sijjan_Raj_Vaidya/sijjan.jpg', ''),
(14, 'Bipul Chhetri', 'assets/images/profile-pics/artists/Bipul_Chhetri/bipul.jpg', ''),
(15, 'Neetesh Jung Kunwar', 'assets/images/profile-pics/artists/Bipul_Chhetri/Neetesh.jpg', ''),
(16, 'Nepathya', 'assets/images/profile-pics/artists/Bipul_Chhetri/images.jpg', ''),
(17, 'Dipak Bajracharya', 'assets/images/profile-pics/artists/Bipul_Chhetri/dipak.jpg', ''),
(18, 'Cobweb', 'assets/images/profile-pics/artists/Bipul_Chhetri/cobweb.jpg', ''),
(19, 'Late Yama Buddha', 'assets/images/profile-pics/artists/Bipul_Chhetri/yama.jpg', ''),
(20, 'Aashish Rana - AKA Laure', 'assets/images/profile-pics/artists/Bipul_Chhetri/laure.jpg', ''),
(21, 'Kamal Khatri', 'assets/images/profile-pics/artists/Bipul_Chhetri/kamalk.jpg', ''),
(22, 'Kamal Chhetri', 'assets/images/profile-pics/artists/Bipul_Chhetri/kamalc.jpg', ''),
(23, 'Almoda Rana Uprety', 'assets/images/profile-pics/artists/Bipul_Chhetri/almoda.jpg', ''),
(24, 'Swoopna Suman', 'assets/images/profile-pics/artists/Bipul_Chhetri/swoopna.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Bollywood Music'),
(12, 'Rythm and Blues'),
(13, 'Remix'),
(14, 'EDM');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `language` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language`) VALUES
(1, 'Nepali'),
(2, 'English'),
(3, 'Hindi'),
(4, 'Japanese');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(8, 'Salman', 'ordinary_guy', '2018-03-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(13, 2, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL,
  `lanugage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`, `lanugage`) VALUES
(1, 'Tere Mast Mast Do Nain (Male)', 1, 1, 11, '6:00', 'assets/music/dabangg/1-Tere Mast Mast Do Nain.mp3', 1, 23, 3),
(2, 'Munni Badnaam', 2, 1, 11, '5:07', 'assets/music/dabangg/2 - Munni Badnaam.mp3', 2, 105, 3),
(3, 'Chori Kiya Re Jiya', 3, 1, 11, '4:48', 'assets/music/dabangg/3 - Chori Kiya Re Jiya.mp3', 3, 15, 3),
(4, 'Hud Hud Dabangg', 5, 1, 11, '4:14', 'assets/music/dabangg/4 - Hud Hud Dabangg.mp3', 4, 13, 3),
(5, 'Humka Peeni Hai', 6, 1, 11, '5:15', 'assets/music/dabangg/5 - Humka Peeni Hai.mp3', 5, 10, 3),
(6, 'Tere Mast Mast Do Nain', 1, 1, 11, '5:59', 'assets/music/dabangg/6 - Tere Mast Mast Do Nain.mp3', 6, 11, 3),
(7, 'Dabangg Theme', 7, 1, 11, '2:48', 'assets/music/dabangg/7 - Dabangg Theme.mp3', 7, 22, 3),
(8, 'Eraser', 8, 2, 2, '3:36', 'assets/music/edSheeran/divide/1-Eraser.mp3', 1, 15, 2),
(9, 'Castle On The Hill', 8, 2, 2, '4:48', 'assets/music/edSheeran/divide/2-Castle On The Hill.mp3', 2, 7, 2),
(10, 'Dive', 8, 2, 2, '3:58', 'assets/music/edSheeran/divide/3-Dive.mp3', 3, 4, 2),
(11, 'Shape of You', 8, 2, 2, '4:23', 'assets/music/edSheeran/divide/4-Shape of You.mp3', 4, 10, 2),
(12, 'Perfect', 8, 2, 2, '4:10', 'assets/music/edSheeran/divide/5-Perfect.mp3', 5, 4, 2),
(13, 'Galway Girl', 8, 2, 2, '3:19', 'assets/music/edSheeran/divide/6-Galway Girl.mp3', 6, 5, 2),
(14, 'Happier', 8, 2, 2, '3:17', 'assets/music/edSheeran/divide/7-Happier.mp3', 7, 1, 2),
(15, 'New Man', 8, 2, 2, '3:00', 'assets/music/edSheeran/divide/8-New Man.mp3', 8, 2, 2),
(16, 'Hearts Don\'t Break Round Here', 8, 2, 2, '4:08', 'assets/music/edSheeran/divide/9-Hearts Don\'t Break Round Here.mp3', 9, 2, 2),
(17, 'What Do I Know', 8, 2, 2, '3:45', 'assets/music/edSheeran/divide/10- What Do I Know.mp3', 10, 2, 2),
(18, 'How Would You Feel', 8, 2, 2, '4:26', 'assets/music/edSheeran/divide/11-How Would You Feel.mp3', 11, 2, 2),
(19, 'Supermarket Flowers', 8, 2, 2, '3:41', 'assets/music/edSheeran/divide/12-Supermarket Flowers.mp3', 12, 3, 2),
(20, 'Barcelona', 8, 2, 2, '3:11', 'assets/music/edSheeran/divide/13-Barcelona.mp3', 13, 1, 2),
(21, 'Bibia Be Ye Ye', 8, 2, 2, '2:39', 'assets/music/edSheeran/divide/14-Bibia Be Ye Ye.mp3', 14, 17, 2),
(22, 'Nancy Mulligan', 8, 2, 2, '2:50', 'assets/music/edSheeran/divide/15-Nancy Mulligan.mp3', 15, 6, 2),
(23, 'Save Myself', 8, 2, 2, '3:55', 'assets/music/edSheeran/divide/16-Save Myself.mp3', 16, 2, 2),
(24, 'Kehi Mitho -Recooked', 10, 4, 13, '4:19', 'assets/music/swayam_dhakal/goldHitsRecooked/kehiii.mp3', 1, 7, 1),
(25, 'vukey1', 11, 8, 2, '1:08', 'assets/music/VUKEY_DON/vukey1.mp3', 1, 6, 2),
(26, 'Najeek', 12, 6, 10, '5:11', 'assets/music/Bartika_eam_rai/Bimbaakash/najeek.mp3', 1, 3, 1),
(27, 'khai', 12, 6, 10, '4:06', 'assets/music/Bartika_eam_rai/Bimbaakash/khai.mp3', 2, 1, 1),
(28, 'Timi ra ma', 12, 6, 10, '4:15', 'assets/music/Bartika_eam_rai/Bimbaakash/timiRaMa.mp3', 3, 1, 1),
(29, 'Bimbaakash', 12, 6, 10, '4:30', 'assets/music/Bartika_eam_rai/Bimbaakash/bimbaakash.mp3', 4, 4, 1),
(30, 'Ghar', 12, 5, 10, '4:01', 'assets/music/Bartika_eam_rai/Taral/ghar.mp3', 1, 1, 1),
(31, 'Anumati', 12, 5, 10, '4:33', 'assets/music/Bartika_eam_rai/Taral/anumati.mp3', 2, 1, 1),
(32, 'Taral', 12, 5, 10, '5:01', 'assets/music/Bartika_eam_rai/Taral/taral.mp3', 3, 0, 1),
(33, 'Umer', 12, 5, 10, '4:35', 'assets/music/Bartika_eam_rai/Taral/umer.mp3', 4, 0, 1),
(34, 'Hola', 12, 5, 10, '2:56', 'assets/music/Bartika_eam_rai/Taral/hola.mp3', 5, 0, 1),
(35, 'Nidari', 12, 5, 10, '4:09', 'assets/music/Bartika_eam_rai/Taral/nidari.mp3', 6, 0, 1),
(36, 'Shunya', 12, 5, 10, '3:24', 'assets/music/Bartika_eam_rai/Taral/shunya.mp3', 7, 1, 1),
(37, 'Aashaa', 12, 5, 10, '4:53', 'assets/music/Bartika_eam_rai/Taral/aashaa.mp3', 8, 0, 1),
(38, 'Fireflies Remix', 10, 7, 14, '4:39', 'assets/music/swayam_dhakal/Cooked_by_Pedruuu/fireflies.mp3', 1, 4, 2),
(39, 'All We Know ', 10, 7, 14, '3:14', 'assets/music/swayam_dhakal/Cooked_by_Pedruuu/allWeKnow.mp3', 2, 6, 2),
(40, 'EDM Nepal Soundtrack', 10, 7, 14, '3:49', 'assets/music/swayam_dhakal/Cooked_by_Pedruuu/strack,mp3', 3, 0, 1),
(41, 'Syndicate Remix', 10, 7, 14, '5:15', 'assets/music/swayam_dhakal/Cooked_by_Pedruuu/syndicateRemix.mp3', 4, 3, 1),
(42, 'Sathi- A tribute to yama buddha', 10, 7, 14, '4:50', 'assets/music/swayam_dhakal/Cooked_by_Pedruuu/sathi_tribute.mp3', 5, 0, 1),
(43, 'Kaile Vetne khai remix', 10, 7, 14, '5:00', 'assets/music/swayam_dhakal/Cooked_by_Pedruuu/kaileVetneKhai.mp3', 6, 0, 1),
(44, 'Tihar - Remix', 10, 7, 14, '3:42', 'assets/music/swayam_dhakal/Cooked_by_Pedruuu/tihar.mp3', 7, 5, 1),
(45, 'Hamro Nepal Ma', 15, 9, 2, '4:52', 'assets/music/Neetesh_J_Kunwar/hamro.mp3', 1, 3, 1),
(46, 'Sindhuli Gadhi - Cover', 15, 9, 2, '3:05', 'assets/music/Neetesh_J_Kunwar/sindhuli.mp3', 2, 7, 1),
(47, 'Aashma - a confession', 15, 9, 2, '4:38', 'assets/music/Neetesh_J_Kunwar/aashma.mp3', 3, 4, 1),
(48, 'Dhokebaaj', 15, 9, 2, '4:21', 'assets/music/Neetesh_J_Kunwar/dhokebaaj.mp3', 4, 2, 1),
(49, 'Halantey', 15, 9, 2, '5:01', 'assets/music/Neetesh_J_Kunwar/halantey.mp3', 6, 1, 1),
(50, 'Bujheu Haina Kura', 15, 9, 2, '2:59', 'assets/music/Neetesh_J_Kunwar/bhk.mp3', 5, 1, 1),
(51, 'Pari', 15, 9, 2, '3:39', 'assets/music/Neetesh_J_Kunwar/pari.mp3', 7, 23, 1),
(52, 'Pidit', 15, 9, 2, '3:06', 'assets/music/Neetesh_J_Kunwar/pidit.mp3', 8, 9, 1),
(53, 'Prarthana', 15, 9, 2, '7:50', 'assets/music/Neetesh_J_Kunwar/prarthana.mp3', 9, 0, 1),
(54, 'Baishakh-12,2072', 15, 9, 4, '3:21', 'assets/music/Neetesh_J_Kunwar/rap.mp3', 10, 1, 1),
(55, 'Gedai Jasto Jindagi', 15, 9, 2, '3:48', 'assets/music/Neetesh_J_Kunwar/geda.mp3', 11, 1, 1),
(56, 'Flirty Maya', 15, 9, 2, '5:19', 'assets/music/Neetesh_J_Kunwar/maya.mp3', 12, 1, 1),
(57, 'Mero Bad Luck Nai Kharaab', 15, 9, 2, '3:03', 'assets/music/Neetesh_J_Kunwar/blk.mp3', 13, 2, 1),
(58, 'Chhu Tee', 15, 9, 2, '3:39', 'assets/music/Neetesh_J_Kunwar/chhutti.mp3', 14, 1, 1),
(59, 'Its My Show Mashup', 17, 10, 2, '7:14', 'assets/music/Dipak_Bajracharya/itsmyshow.mp3', 1, 6, 1),
(60, 'Maya Ko Dori Le', 17, 10, 2, '4:03', 'assets/music/Dipak_Bajracharya/dori.mp3', 2, 4, 1),
(61, 'Oh Amira', 17, 10, 2, '4:40', 'assets/music/Dipak_Bajracharya/oamira.mp3', 3, 2, 1),
(62, 'Man Magan', 17, 10, 2, '4:53', 'assets/music/Dipak_Bajracharya/manmagan.mp3', 4, 0, 1),
(63, 'Kali Kali Hissi Pareki', 17, 10, 2, '4:19', 'assets/music/Dipak_Bajracharya/kali.mp3', 5, 0, 1),
(64, 'Hawa', 17, 10, 2, '3:37', 'assets/music/Dipak_Bajracharya/hawa.mp3', 6, 1, 1),
(65, 'Allare Aaha', 17, 10, 2, '4:31', 'assets/music/Dipak_Bajracharya/allare.mp3', 7, 1, 1),
(66, 'Sani', 17, 10, 2, '4:53', 'assets/music/Dipak_Bajracharya/sani.mp3', 8, 0, 1),
(67, 'Jani Jani', 17, 10, 2, '3:53', 'assets/music/Dipak_Bajracharya/jani.mp3', 9, 0, 1),
(68, 'Ritu', 17, 10, 2, '4:41', 'assets/music/Dipak_Bajracharya/turi.mp3', 10, 0, 1),
(69, 'Priya Timi Aayou', 17, 10, 12, '3:16', 'assets/music/Dipak_Bajracharya/priya.mp3', 11, 0, 1),
(70, 'Nadukheko mero Man', 17, 10, 12, '4:28', 'assets/music/Dipak_Bajracharya/dukhena.mp3', 12, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL DEFAULT 'assets/images/profile-pics/head_emerald.png'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(2, 'gajendra2', 'Gajendra', 'Limbu', 'Gajendrakandangwa812@gmail.com', '2b35fe7d85d8582eb8e98c01d608c677', '2017-12-13 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(12, 'guest', 'Login', '', '', '', '2018-03-04 00:00:00', ''),
(13, 'ordinary_guy', 'Anurag', 'Limbu', 'anuraglimbu2018@gmail.com', '2b35fe7d85d8582eb8e98c01d608c677', '2018-03-04 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(14, 'PrazolVukey', 'Utshav', 'Parajuli', 'Prazolpar123@gmail.com', 'e6dfea6de7efe53f31539c71aac8c274', '2018-06-19 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(15, 'prajwol', 'Prajwol', 'Tiwari', 'Prajwol.pt@gmail.com', '8b62d50945e821e37ec11abac803c9fc', '2019-03-11 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
