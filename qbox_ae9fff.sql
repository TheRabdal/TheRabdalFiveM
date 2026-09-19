-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2026 at 12:02 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qbox_ae9fff`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts_new`
--

CREATE TABLE `bank_accounts_new` (
  `id` varchar(50) NOT NULL,
  `amount` int(11) DEFAULT 0,
  `transactions` longtext DEFAULT NULL,
  `auth` longtext DEFAULT NULL,
  `isFrozen` int(11) DEFAULT 0,
  `creator` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_accounts_new`
--

INSERT INTO `bank_accounts_new` (`id`, `amount`, `transactions`, `auth`, `isFrozen`, `creator`) VALUES
('ambulance', 0, '[]', '[]', 0, NULL),
('ballas', 0, '[]', '[]', 0, NULL),
('bcso', 0, '[]', '[]', 0, NULL),
('bus', 0, '[]', '[]', 0, NULL),
('cardealer', 0, '[]', '[]', 0, NULL),
('cartel', 0, '[]', '[]', 0, NULL),
('families', 0, '[]', '[]', 0, NULL),
('garbage', 0, '[]', '[]', 0, NULL),
('hotdog', 0, '[]', '[]', 0, NULL),
('judge', 0, '[]', '[]', 0, NULL),
('lawyer', 0, '[]', '[]', 0, NULL),
('lostmc', 0, '[]', '[]', 0, NULL),
('mechanic', 0, '[]', '[]', 0, NULL),
('none', 0, '[]', '[]', 0, NULL),
('police', 0, '[]', '[]', 0, NULL),
('realestate', 0, '[]', '[]', 0, NULL),
('reporter', 0, '[]', '[]', 0, NULL),
('sasp', 0, '[]', '[]', 0, NULL),
('taxi', 0, '[]', '[]', 0, NULL),
('tow', 0, '[]', '[]', 0, NULL),
('triads', 0, '[]', '[]', 0, NULL),
('trucker', 0, '[]', '[]', 0, NULL),
('unemployed', 0, '[]', '[]', 0, NULL),
('vagos', 0, '[]', '[]', 0, NULL),
('vineyard', 0, '[]', '[]', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `discord` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `expire` int(11) DEFAULT NULL,
  `bannedby` varchar(255) NOT NULL DEFAULT 'LeBanhammer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dealers`
--

CREATE TABLE `dealers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `createdby` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lapraces`
--

CREATE TABLE `lapraces` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `checkpoints` text DEFAULT NULL,
  `records` text DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `distance` int(11) DEFAULT NULL,
  `raceid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `management_outfits`
--

CREATE TABLE `management_outfits` (
  `id` int(11) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `minrank` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) NOT NULL DEFAULT 'Cool Outfit',
  `gender` varchar(50) NOT NULL DEFAULT 'male',
  `model` varchar(50) DEFAULT NULL,
  `props` text DEFAULT NULL,
  `components` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_calls`
--

CREATE TABLE `npwd_calls` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `transmitter` varchar(255) NOT NULL,
  `receiver` varchar(255) NOT NULL,
  `is_accepted` tinyint(4) DEFAULT 0,
  `isAnonymous` tinyint(4) NOT NULL DEFAULT 0,
  `start` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_darkchat_channels`
--

CREATE TABLE `npwd_darkchat_channels` (
  `id` int(11) NOT NULL,
  `channel_identifier` varchar(191) NOT NULL,
  `label` varchar(255) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_darkchat_channel_members`
--

CREATE TABLE `npwd_darkchat_channel_members` (
  `channel_id` int(11) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `is_owner` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_darkchat_messages`
--

CREATE TABLE `npwd_darkchat_messages` (
  `id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `user_identifier` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_image` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_marketplace_listings`
--

CREATE TABLE `npwd_marketplace_listings` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `number` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `reported` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_match_profiles`
--

CREATE TABLE `npwd_match_profiles` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(90) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(512) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `job` varchar(45) DEFAULT NULL,
  `tags` varchar(255) NOT NULL DEFAULT '',
  `voiceMessage` varchar(512) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_match_views`
--

CREATE TABLE `npwd_match_views` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `profile` int(11) NOT NULL,
  `liked` tinyint(4) DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_messages`
--

CREATE TABLE `npwd_messages` (
  `id` int(11) NOT NULL,
  `message` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `user_identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `conversation_id` varchar(512) NOT NULL,
  `isRead` tinyint(4) NOT NULL DEFAULT 0,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `author` varchar(255) NOT NULL,
  `is_embed` tinyint(4) NOT NULL DEFAULT 0,
  `embed` varchar(512) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_messages_conversations`
--

CREATE TABLE `npwd_messages_conversations` (
  `id` int(11) NOT NULL,
  `conversation_list` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_message_id` int(11) DEFAULT NULL,
  `is_group_chat` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_messages_participants`
--

CREATE TABLE `npwd_messages_participants` (
  `id` int(11) NOT NULL,
  `conversation_id` int(11) NOT NULL,
  `participant` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `unread_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_notes`
--

CREATE TABLE `npwd_notes` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_phone_contacts`
--

CREATE TABLE `npwd_phone_contacts` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `display` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_phone_gallery`
--

CREATE TABLE `npwd_phone_gallery` (
  `id` int(11) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_twitter_likes`
--

CREATE TABLE `npwd_twitter_likes` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_twitter_profiles`
--

CREATE TABLE `npwd_twitter_profiles` (
  `id` int(11) NOT NULL,
  `profile_name` varchar(90) NOT NULL,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar_url` varchar(255) DEFAULT 'https://i.fivemanage.com/images/3ClWwmpwkFhL.png',
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_twitter_reports`
--

CREATE TABLE `npwd_twitter_reports` (
  `id` int(11) NOT NULL,
  `profile_id` int(11) NOT NULL,
  `tweet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `npwd_twitter_tweets`
--

CREATE TABLE `npwd_twitter_tweets` (
  `id` int(11) NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `likes` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(48) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT 1,
  `images` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `retweet` int(11) DEFAULT NULL,
  `profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `occasion_vehicles`
--

CREATE TABLE `occasion_vehicles` (
  `id` int(11) NOT NULL,
  `seller` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `plate` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `mods` text DEFAULT NULL,
  `occasionid` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ox_doorlock`
--

CREATE TABLE `ox_doorlock` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ox_doorlock`
--

INSERT INTO `ox_doorlock` (`id`, `name`, `data`) VALUES
(1, 'vangelico_jewellery', '{\"maxDistance\":2,\"groups\":{\"police\":0},\"doors\":[{\"model\":1425919976,\"coords\":{\"x\":-631.9553833007813,\"y\":-236.33326721191407,\"z\":38.2065315246582},\"heading\":306},{\"model\":9467943,\"coords\":{\"x\":-630.426513671875,\"y\":-238.4375457763672,\"z\":38.2065315246582},\"heading\":306}],\"state\":1,\"coords\":{\"x\":-631.19091796875,\"y\":-237.38540649414063,\"z\":38.2065315246582},\"hideUi\":true}'),
(2, 'BigBankThermite1', '{\"heading\":160,\"doors\":false,\"maxDistance\":2,\"hideUi\":true,\"groups\":{\"police\":0},\"coords\":{\"x\":251.85757446289063,\"y\":221.0654754638672,\"z\":101.83240509033203},\"model\":-1508355822,\"state\":1,\"autolock\":1800}'),
(3, 'BigBankThermite2', '{\"coords\":{\"x\":261.3004150390625,\"y\":214.50514221191407,\"z\":101.83240509033203},\"autolock\":1800,\"maxDistance\":2,\"groups\":{\"police\":0},\"model\":-1508355822,\"doors\":false,\"hideUi\":true,\"heading\":250,\"state\":1}'),
(4, 'BigBankLPDoor', '{\"coords\":{\"x\":256.3115539550781,\"y\":220.65785217285157,\"z\":106.42955780029297},\"autolock\":1800,\"maxDistance\":2,\"model\":-222270721,\"doors\":false,\"lockpick\":true,\"hideUi\":true,\"heading\":340,\"state\":1,\"lockpickDifficulty\":[\"hard\"]}'),
(5, 'PaletoThermiteDoor', '{\"coords\":{\"x\":-106.47130584716797,\"y\":6476.15771484375,\"z\":31.95479965209961},\"autolock\":1800,\"maxDistance\":2,\"groups\":{\"police\":0},\"model\":1309269072,\"doors\":false,\"hideUi\":true,\"heading\":315,\"state\":1}'),
(6, 'BigBankRedCardDoor', '{\"coords\":{\"x\":262.1980895996094,\"y\":222.518798828125,\"z\":106.42955780029297},\"autolock\":1800,\"maxDistance\":2,\"groups\":{\"police\":0},\"model\":746855201,\"doors\":false,\"hideUi\":true,\"heading\":250,\"state\":1}');

-- --------------------------------------------------------

--
-- Table structure for table `ox_inventory`
--

CREATE TABLE `ox_inventory` (
  `owner` varchar(60) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `data` longtext DEFAULT NULL,
  `lastupdated` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `id` int(11) NOT NULL,
  `userId` int(10) UNSIGNED DEFAULT NULL,
  `citizenid` varchar(50) NOT NULL,
  `cid` int(11) DEFAULT NULL,
  `license` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` text NOT NULL,
  `charinfo` text DEFAULT NULL,
  `job` text NOT NULL,
  `gang` text DEFAULT NULL,
  `position` text NOT NULL,
  `metadata` text NOT NULL,
  `inventory` longtext DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `last_logged_out` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playerskins`
--

CREATE TABLE `playerskins` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `skin` text NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_groups`
--

CREATE TABLE `player_groups` (
  `citizenid` varchar(50) NOT NULL,
  `group` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `grade` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_jobs_activity`
--

CREATE TABLE `player_jobs_activity` (
  `id` int(10) UNSIGNED NOT NULL,
  `citizenid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) NOT NULL,
  `last_checkin` int(11) NOT NULL,
  `last_checkout` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_mails`
--

CREATE TABLE `player_mails` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `sender` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read` tinyint(4) DEFAULT 0,
  `mailid` int(11) DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `button` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_outfits`
--

CREATE TABLE `player_outfits` (
  `id` int(11) NOT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `outfitname` varchar(50) NOT NULL DEFAULT '0',
  `model` varchar(50) DEFAULT NULL,
  `props` text DEFAULT NULL,
  `components` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_outfit_codes`
--

CREATE TABLE `player_outfit_codes` (
  `id` int(11) NOT NULL,
  `outfitid` int(11) NOT NULL,
  `code` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_transactions`
--

CREATE TABLE `player_transactions` (
  `id` varchar(50) NOT NULL,
  `isFrozen` int(11) DEFAULT 0,
  `transactions` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `player_vehicles`
--

CREATE TABLE `player_vehicles` (
  `id` int(11) NOT NULL,
  `license` varchar(50) DEFAULT NULL,
  `citizenid` varchar(50) DEFAULT NULL,
  `vehicle` varchar(50) DEFAULT NULL,
  `hash` varchar(50) DEFAULT NULL,
  `mods` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `plate` varchar(15) NOT NULL,
  `fakeplate` varchar(50) DEFAULT NULL,
  `garage` varchar(50) DEFAULT NULL,
  `fuel` int(11) DEFAULT 100,
  `engine` float DEFAULT 1000,
  `body` float DEFAULT 1000,
  `state` int(11) DEFAULT 1,
  `depotprice` int(11) NOT NULL DEFAULT 0,
  `drivingdistance` int(50) DEFAULT NULL,
  `status` text DEFAULT NULL,
  `coords` text DEFAULT NULL,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `property_name` varchar(255) NOT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`coords`)),
  `price` int(11) NOT NULL DEFAULT 0,
  `owner` varchar(50) DEFAULT NULL,
  `interior` varchar(255) NOT NULL,
  `keyholders` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT json_object() CHECK (json_valid(`keyholders`)),
  `rent_interval` int(11) DEFAULT NULL,
  `interact_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT json_object() CHECK (json_valid(`interact_options`)),
  `stash_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT json_object() CHECK (json_valid(`stash_options`)),
  `garage` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`garage`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties_decorations`
--

CREATE TABLE `properties_decorations` (
  `id` bigint(20) NOT NULL,
  `property_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `coords` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`coords`)),
  `rotation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`rotation`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `license` varchar(50) DEFAULT NULL,
  `license2` varchar(50) DEFAULT NULL,
  `fivem` varchar(20) DEFAULT NULL,
  `discord` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_financing`
--

CREATE TABLE `vehicle_financing` (
  `vehicleId` int(11) NOT NULL,
  `balance` int(11) DEFAULT NULL,
  `paymentamount` int(11) DEFAULT NULL,
  `paymentsleft` int(11) DEFAULT NULL,
  `financetime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `weed_plants`
--

CREATE TABLE `weed_plants` (
  `id` int(11) NOT NULL,
  `property` varchar(30) DEFAULT NULL,
  `stage` tinyint(4) NOT NULL DEFAULT 1,
  `sort` varchar(30) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `food` tinyint(4) NOT NULL DEFAULT 100,
  `health` tinyint(4) NOT NULL DEFAULT 100,
  `stageProgress` tinyint(4) NOT NULL DEFAULT 0,
  `coords` tinytext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xt_prison`
--

CREATE TABLE `xt_prison` (
  `identifier` varchar(100) NOT NULL,
  `jailtime` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xt_prison_items`
--

CREATE TABLE `xt_prison_items` (
  `owner` varchar(60) DEFAULT NULL,
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_accounts_new`
--
ALTER TABLE `bank_accounts_new`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `license` (`license`),
  ADD KEY `discord` (`discord`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lapraces`
--
ALTER TABLE `lapraces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `raceid` (`raceid`);

--
-- Indexes for table `management_outfits`
--
ALTER TABLE `management_outfits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `npwd_calls`
--
ALTER TABLE `npwd_calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `darkchat_channels_channel_identifier_uindex` (`channel_identifier`) USING BTREE;

--
-- Indexes for table `npwd_darkchat_channel_members`
--
ALTER TABLE `npwd_darkchat_channel_members`
  ADD KEY `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` (`channel_id`) USING BTREE;

--
-- Indexes for table `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `darkchat_messages_darkchat_channels_id_fk` (`channel_id`) USING BTREE;

--
-- Indexes for table `npwd_marketplace_listings`
--
ALTER TABLE `npwd_marketplace_listings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifier_UNIQUE` (`identifier`);

--
-- Indexes for table `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `match_profile_idx` (`profile`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `npwd_messages`
--
ALTER TABLE `npwd_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_identifier` (`user_identifier`);

--
-- Indexes for table `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `message_participants_npwd_messages_conversations_id_fk` (`conversation_id`) USING BTREE;

--
-- Indexes for table `npwd_notes`
--
ALTER TABLE `npwd_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `npwd_phone_contacts`
--
ALTER TABLE `npwd_phone_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `npwd_phone_gallery`
--
ALTER TABLE `npwd_phone_gallery`
  ADD PRIMARY KEY (`id`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  ADD KEY `profile_idx` (`profile_id`),
  ADD KEY `tweet_idx` (`tweet_id`);

--
-- Indexes for table `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `profile_name_UNIQUE` (`profile_name`),
  ADD KEY `identifier` (`identifier`);

--
-- Indexes for table `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_combination` (`profile_id`,`tweet_id`),
  ADD KEY `profile_idx` (`profile_id`),
  ADD KEY `tweet_idx` (`tweet_id`);

--
-- Indexes for table `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` (`profile_id`) USING BTREE;

--
-- Indexes for table `occasion_vehicles`
--
ALTER TABLE `occasion_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `occasionId` (`occasionid`);

--
-- Indexes for table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ox_inventory`
--
ALTER TABLE `ox_inventory`
  ADD UNIQUE KEY `owner` (`owner`,`name`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`citizenid`),
  ADD KEY `id` (`id`),
  ADD KEY `last_updated` (`last_updated`),
  ADD KEY `license` (`license`);

--
-- Indexes for table `playerskins`
--
ALTER TABLE `playerskins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `player_groups`
--
ALTER TABLE `player_groups`
  ADD PRIMARY KEY (`citizenid`,`type`,`group`);

--
-- Indexes for table `player_jobs_activity`
--
ALTER TABLE `player_jobs_activity`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE,
  ADD KEY `last_checkout` (`last_checkout`) USING BTREE,
  ADD KEY `citizenid_job` (`citizenid`,`job`) USING BTREE;

--
-- Indexes for table `player_mails`
--
ALTER TABLE `player_mails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `player_outfits`
--
ALTER TABLE `player_outfits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `citizenid_outfitname_model` (`citizenid`,`outfitname`,`model`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_player_outfit_codes_player_outfits` (`outfitid`);

--
-- Indexes for table `player_transactions`
--
ALTER TABLE `player_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plate` (`plate`),
  ADD KEY `citizenid` (`citizenid`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner` (`owner`);

--
-- Indexes for table `properties_decorations`
--
ALTER TABLE `properties_decorations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `idx_users_license2` (`license2`),
  ADD KEY `idx_users_discord` (`discord`),
  ADD KEY `idx_users_license` (`license`),
  ADD KEY `idx_users_fivem` (`fivem`);

--
-- Indexes for table `vehicle_financing`
--
ALTER TABLE `vehicle_financing`
  ADD PRIMARY KEY (`vehicleId`);

--
-- Indexes for table `weed_plants`
--
ALTER TABLE `weed_plants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xt_prison`
--
ALTER TABLE `xt_prison`
  ADD PRIMARY KEY (`identifier`) USING BTREE;

--
-- Indexes for table `xt_prison_items`
--
ALTER TABLE `xt_prison_items`
  ADD UNIQUE KEY `owner` (`owner`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lapraces`
--
ALTER TABLE `lapraces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `management_outfits`
--
ALTER TABLE `management_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `npwd_calls`
--
ALTER TABLE `npwd_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_darkchat_channels`
--
ALTER TABLE `npwd_darkchat_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `npwd_marketplace_listings`
--
ALTER TABLE `npwd_marketplace_listings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_match_profiles`
--
ALTER TABLE `npwd_match_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_messages`
--
ALTER TABLE `npwd_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_messages_conversations`
--
ALTER TABLE `npwd_messages_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_notes`
--
ALTER TABLE `npwd_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_phone_contacts`
--
ALTER TABLE `npwd_phone_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_phone_gallery`
--
ALTER TABLE `npwd_phone_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_twitter_profiles`
--
ALTER TABLE `npwd_twitter_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `occasion_vehicles`
--
ALTER TABLE `occasion_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ox_doorlock`
--
ALTER TABLE `ox_doorlock`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playerskins`
--
ALTER TABLE `playerskins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_jobs_activity`
--
ALTER TABLE `player_jobs_activity`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_mails`
--
ALTER TABLE `player_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_outfits`
--
ALTER TABLE `player_outfits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `player_outfit_codes`
--
ALTER TABLE `player_outfit_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `properties_decorations`
--
ALTER TABLE `properties_decorations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weed_plants`
--
ALTER TABLE `weed_plants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `npwd_darkchat_channel_members`
--
ALTER TABLE `npwd_darkchat_channel_members`
  ADD CONSTRAINT `npwd_darkchat_channel_members_npwd_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`);

--
-- Constraints for table `npwd_darkchat_messages`
--
ALTER TABLE `npwd_darkchat_messages`
  ADD CONSTRAINT `darkchat_messages_darkchat_channels_id_fk` FOREIGN KEY (`channel_id`) REFERENCES `npwd_darkchat_channels` (`id`);

--
-- Constraints for table `npwd_match_views`
--
ALTER TABLE `npwd_match_views`
  ADD CONSTRAINT `match_profile` FOREIGN KEY (`profile`) REFERENCES `npwd_match_profiles` (`id`);

--
-- Constraints for table `npwd_messages_participants`
--
ALTER TABLE `npwd_messages_participants`
  ADD CONSTRAINT `message_participants_npwd_messages_conversations_id_fk` FOREIGN KEY (`conversation_id`) REFERENCES `npwd_messages_conversations` (`id`);

--
-- Constraints for table `npwd_twitter_likes`
--
ALTER TABLE `npwd_twitter_likes`
  ADD CONSTRAINT `profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  ADD CONSTRAINT `tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `npwd_twitter_reports`
--
ALTER TABLE `npwd_twitter_reports`
  ADD CONSTRAINT `report_profile` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`),
  ADD CONSTRAINT `report_tweet` FOREIGN KEY (`tweet_id`) REFERENCES `npwd_twitter_tweets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `npwd_twitter_tweets`
--
ALTER TABLE `npwd_twitter_tweets`
  ADD CONSTRAINT `npwd_twitter_tweets_npwd_twitter_profiles_id_fk` FOREIGN KEY (`profile_id`) REFERENCES `npwd_twitter_profiles` (`id`);

--
-- Constraints for table `player_groups`
--
ALTER TABLE `player_groups`
  ADD CONSTRAINT `fk_citizenid` FOREIGN KEY (`citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `player_jobs_activity`
--
ALTER TABLE `player_jobs_activity`
  ADD CONSTRAINT `player_jobs_activity_ibfk_1` FOREIGN KEY (`citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE;

--
-- Constraints for table `player_vehicles`
--
ALTER TABLE `player_vehicles`
  ADD CONSTRAINT `player_vehicles_ibfk_1` FOREIGN KEY (`citizenid`) REFERENCES `players` (`citizenid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`owner`) REFERENCES `players` (`citizenid`);

--
-- Constraints for table `properties_decorations`
--
ALTER TABLE `properties_decorations`
  ADD CONSTRAINT `properties_decorations_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_financing`
--
ALTER TABLE `vehicle_financing`
  ADD CONSTRAINT `vehicleId` FOREIGN KEY (`vehicleId`) REFERENCES `player_vehicles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
