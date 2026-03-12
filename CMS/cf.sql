--
-- Database: `phpbook-1`
-- This is the first database used in the PHP & MySQL book
-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `art_id` int(11) NOT NULL,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article` - 24 articles (6 per category)
--

-- Melee Category (cat_id: 1) - 6 articles
INSERT INTO `article` (`art_id`, `title`, `summary`, `content`, `created`, `category_id`, `member_id`, `image_id`, `published`) VALUES
(1, 'Night''s Edge', 'Crafting the legendary sword', 'The Night''s Edge is one of Terraria''s most iconic melee weapons. This guide covers how to obtain the Blade of Grass, Muramasa, Fiery Greatsword, and Light''s Bane to forge this powerful sword. Learn the best strategies for surviving the dangerous biomes where these blades are found.', '2023-01-15 10:30:00', 1, 1, 1, 1),
(2, 'Terra Blade Guide', 'From seed to legendary blade', 'The Terra Blade represents the pinnacle of pre-Moon Lord melee weaponry. This article traces its evolution from a simple seed to the final product, covering every intermediate step including the Excalibur, True Night''s Edge, and the final fusion. Includes damage calculations and modifier recommendations.', '2023-01-20 14:15:00', 1, 2, 2, 1),
(3, 'Yo-Yo Mastery', 'Complete yo-yo techniques', 'From the humble Wooden Yo-Yo to the powerful Terrarian, this guide covers every yo-yo in Terraria. Learn advanced techniques including counterweights, string accessories, and the secret to maintaining infinite yo-yo time. Includes boss strategies using yo-yos only.', '2023-02-05 09:45:00', 1, 3, 3, 1),
(4, 'Flail Warrior', 'Devastating flail weapons', 'Flails offer unique combat mechanics that can devastate enemies when used correctly. This guide covers every flail from the Chain Knife to the Solar Eruption. Learn the spin attack technique, flail-specific modifiers, and how to use terrain to maximize flail effectiveness.', '2023-02-18 16:20:00', 1, 1, 4, 1),
(5, 'Zenith Crafting', 'Creating the ultimate sword', 'The Zenith represents the ultimate achievement for melee players. This detailed guide walks through collecting all 13 swords required for its crafting, from the Copper Shortsword to the Star Wrath. Includes farming strategies for rare sword drops.', '2023-03-02 11:10:00', 1, 2, 5, 1),
(6, 'Spear Strategies', 'Piercing through enemies', 'Spears offer excellent crowd control and piercing damage. This guide covers every spear in Terraria, from the simple Spear to the powerful Gungnir and North Pole. Learn positioning techniques and how to use spears effectively in events.', '2023-03-14 13:30:00', 1, 3, 6, 1),

-- Summoner Category (cat_id: 2) - 6 articles
(7, 'Minion Army', 'Complete summoner minion guide', 'From the humble Slime Staff to the powerful Stardust Dragon, this guide covers every summonable minion in Terraria. Learn which minions excel against different bosses, optimal minion counts, and how to maximize your damage output with the right summon combinations.', '2023-01-18 12:00:00', 2, 1, 7, 1),
(8, 'Whip Collection', 'Every whip ranked and reviewed', 'Whips revolutionized summoner gameplay. This comprehensive guide covers every whip from the Leather Whip to the Kaleidoscope and Morning Star. Learn whip stacking mechanics, tag damage bonuses, and advanced techniques for maximum DPS against bosses.', '2023-01-25 15:45:00', 2, 2, 8, 1),
(9, 'Summoner Armor', 'From Flinx to Stardust', 'The summoner class features unique armor sets that dramatically affect minion capabilities. This guide covers the complete armor progression including Flinx, Bee, Spider, Forbidden, Tiki, Spooky, and Stardust armors. Includes detailed breakdowns of set bonuses.', '2023-02-08 10:20:00', 2, 3, 9, 1),
(10, 'Sentry Warfare', 'Stationary defense strategies', 'Sentries provide excellent area denial and passive damage. This guide covers every sentry from the Queen Spider Staff to the powerful Rainbow Crystal Staff. Learn sentry placement strategies and the best sentries for events like the Pumpkin Moon.', '2023-02-22 14:10:00', 2, 1, 10, 1),
(11, 'Summoner Accessories', 'Essential equipment', 'Accessories can make or break a summoner build. This guide covers every summoner-relevant accessory including the Papyrus Scarab, Necromantic Scroll, and Summoner Emblem. Learn optimal accessory combinations and reforging strategies.', '2023-03-05 09:30:00', 2, 2, 11, 1),
(12, 'Boss Rush with Summons', 'Defeating every boss with minions', 'This comprehensive guide details strategies for defeating every boss in Terraria using only summoner weapons. From King Slime to Moon Lord, learn specific minion choices, arena setups, and fight tactics for each encounter.', '2023-03-18 16:40:00', 2, 3, 12, 1),

-- Mage Category (cat_id: 3) - 6 articles
(13, 'Magic Weapons', 'Complete magical armaments guide', 'From the humble Wand of Sparking to the devastating Last Prism, this guide covers every magic weapon in Terraria. Learn about mana efficiency, weapon categories, and which magical implements excel in different situations. Includes detailed DPS comparisons.', '2023-01-12 11:30:00', 3, 1, 13, 1),
(14, 'Mana Management', 'Optimizing magical reserves', 'Mana is the lifeblood of any mage build. This guide covers everything about mana including regeneration mechanics, mana flowers, mana potion usage, and the Celestial Cuffs. Learn advanced techniques like mana shielding.', '2023-01-28 13:15:00', 3, 2, 14, 1),
(15, 'Spell Tomes', 'All magical tomes explained', 'Spell tomes offer unique magical abilities that can dramatically change gameplay. This guide covers every tome from the Water Bolt to the powerful Razorblade Typhoon and Lunar Flare. Learn acquisition methods and optimal situations for each tome.', '2023-02-10 15:50:00', 3, 3, 15, 1),
(16, 'Mage Armor', 'Robes and mystical garments', 'Mage armor provides unique bonuses to magical combat. This guide covers the complete progression including Wizard set, Meteor, Jungle, Bee, Spectre, and Nebula armors. Learn about the powerful set bonuses and how to choose between damage and utility.', '2023-02-25 10:40:00', 3, 1, 16, 1),
(17, 'Legendary Staves', 'Powerful magical staves', 'Staves represent some of the most powerful magic weapons in Terraria. This guide covers legendary staves including the Inferno Fork, Shadowbeam Staff, Rainbow Rod, and the ultimate Last Prism. Learn farming strategies and optimal use cases.', '2023-03-08 12:20:00', 3, 2, 17, 1),
(18, 'Mage vs All Bosses', 'Magical strategies for every encounter', 'This comprehensive boss guide covers defeating every Terraria boss using pure mage builds. From the Eye of Cthulhu to the Empress of Light, learn specific weapon choices, arena designs, and fight tactics for each encounter.', '2023-03-22 14:30:00', 3, 3, 18, 1),

-- Ranger Category (cat_id: 4) - 6 articles
(19, 'Bow Mastery', 'Complete bow and arrow guide', 'From wooden bows to the powerful Phantasm, this guide covers every bow in Terraria. Learn about arrow types, bow modifiers, and the unique mechanics of each bow. Includes detailed DPS calculations and recommendations for different stages of the game.', '2023-01-14 09:20:00', 4, 1, 19, 1),
(20, 'Gunslinger''s Arsenal', 'Every gun in Terraria', 'Terraria features an impressive array of firearms. This guide covers every gun from the Flintlock Pistol to the S.D.M.G. Learn about bullet types, firing mechanics, and which guns excel in different situations. Includes farming strategies for rare gun drops.', '2023-01-30 16:00:00', 4, 2, 20, 1),
(21, 'Ammunition Guide', 'Bullets, arrows, and rockets', 'Ammunition choice can dramatically affect ranger performance. This guide covers every type of ammo including endless quivers, ichor bullets, chlorophyte arrows, and rockets. Learn about ammo conservation and maximizing DPS with the right ammo choices.', '2023-02-15 11:45:00', 4, 3, 21, 1),
(22, 'Ranger Armor Sets', 'From leather to vortex', 'Ranger armor provides crucial bonuses to ranged combat. This guide covers the complete armor progression including Fossil, Necro, Titanium, Shroomite, and Vortex armors. Learn about set bonuses, stealth mechanics, and optimal armor choices.', '2023-03-01 13:10:00', 4, 1, 22, 1),
(23, 'Launcher Legacy', 'Explosive rocket weapons', 'Launchers provide devastating area-of-effect damage. This guide covers every launcher from the Grenade Launcher to the Celebration Mk2. Learn about rocket types, splash damage mechanics, and how to safely use explosive weapons without harming yourself.', '2023-03-12 15:30:00', 4, 2, 23, 1),
(24, 'Ranger Boss Strategies', 'Ranged tactics for every boss', 'This comprehensive guide details defeating every Terraria boss using ranger weapons. From the Destroyer to the Moon Lord, learn specific weapon choices, arena setups, and positioning strategies for each encounter.', '2023-03-25 10:50:00', 4, 3, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navigation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category` - Keeping original category names
--

INSERT INTO `category` (`cat_id`, `name`, `description`, `navigation`) VALUES
(1, 'Melee', 'Swords, spears, yo-yos, and other close-quarters combat weapons', 1),
(2, 'Summoner', 'Minions, whips, and sentries for the summoning class', 1),
(3, 'Mage', 'Spell tomes, staves, and magical arsenals', 1),
(4, 'Ranger', 'Bows, guns, launchers, and ammunition guides', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `img_id` int(11) NOT NULL,
  `file` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image` - 24 images (6 per category)
--

-- Melee images (img_id 1-6)
INSERT INTO `image` (`img_id`, `file`, `alt`) VALUES
(1, 'nights-edge.png', 'Night''s Edge sword crafted from four legendary blades'),
(2, 'terra-blade.png', 'The Terra Blade glowing with power surrounded by particles'),
(3, 'terrarian-yoyo.png', 'The Terrarian yoyo with counterweights and string accessories'),
(4, 'flail-collection.png', 'Collection of flail weapons from chain knife to solar eruption'),
(5, 'zenith-sword.png', 'The Zenith surrounded by all swords needed for its crafting'),
(6, 'spear-arsenal.png', 'Various spears including Gungnir and North Pole'),

-- Summoner images (img_id 7-12)
(7, 'minion-army.png', 'Diverse minions including slime, imp, and stardust dragon'),
(8, 'whip-showcase.png', 'Complete whip collection from leather whip to kaleidoscope'),
(9, 'summoner-armor.png', 'Summoner armor sets including Spider, Spooky, and Stardust'),
(10, 'sentry-lineup.png', 'Sentry weapons including Queen Spider and Rainbow Crystal staffs'),
(11, 'summoner-accessories.png', 'Summoner accessories including Papyrus Scarab and Necromantic Scroll'),
(12, 'summoner-full.png', 'Summoner ready for battle with full minion army'),

-- Mage images (img_id 13-18)
(13, 'magic-weapons.png', 'Collection of magic weapons including Last Prism and Razorblade Typhoon'),
(14, 'mana-management.png', 'Mana stars and Celestial Cuff accessories for mana optimization'),
(15, 'spell-tomes.png', 'Ancient tomes including Water Bolt and Lunar Flare'),
(16, 'mage-armor.png', 'Mage armor progression from Wizard to Nebula armor'),
(17, 'legendary-staves.png', 'Powerful staves including Inferno Fork and Rainbow Rod'),
(18, 'mage-fight.png', 'Mage with magical projectiles'),

-- Ranger images (img_id 19-24)
(19, 'bow-collection.png', 'Bows from simple wood to the powerful Phantasm'),
(20, 'guns-arsenal.png', 'Firearms including Megashark, Sniper Rifle, and S.D.M.G.'),
(21, 'ammunition-types.png', 'Various ammunition including ichor bullets and chlorophyte arrows'),
(22, 'ranger-armor.png', 'Ranger armor sets including Fossil, Shroomite, and Vortex'),
(23, 'launcher-weapons.png', 'Explosive launchers including Grenade Launcher and Celebration Mk2'),
(24, 'ranger-boss-strategy.png', 'Ranger fighting Moon Lord with piercing bullets');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mem_id` int(11) NOT NULL,
  `forename` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picture` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member` - Terraria expert authors
--

INSERT INTO `member` (`mem_id`, `forename`, `surname`, `email`, `password`, `joined`, `picture`) VALUES
(1, 'Red', 'Digital', 'red@terraria.guide', 'terraria-master-1', '2022-01-10 09:00:00', 'red.png'),
(2, 'Cenx', 'Guide', 'cenx@terraria.guide', 'terraria-master-2', '2022-01-10 09:05:00', 'cenx.png'),
(3, 'Loki', 'Guild', 'loki@terraria.guide', 'terraria-master-3', '2022-02-15 10:30:00', 'loki.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`art_id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `author_id` (`member_id`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mem_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `category_exists` FOREIGN KEY (`category_id`) REFERENCES `category` (`cat_id`),
  ADD CONSTRAINT `image_exists` FOREIGN KEY (`image_id`) REFERENCES `image` (`img_id`),
  ADD CONSTRAINT `member_exists` FOREIGN KEY (`member_id`) REFERENCES `member` (`mem_id`);