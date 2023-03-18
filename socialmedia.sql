-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2022 at 05:15 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialmedia`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Music', NULL, NULL),
(2, 'Fashion', NULL, NULL),
(3, 'Automobile', NULL, NULL),
(4, 'Real Estate', NULL, NULL),
(5, 'Travel', NULL, NULL),
(6, 'Business', NULL, NULL),
(7, 'Economics', NULL, NULL),
(8, 'Technology', NULL, NULL),
(9, 'Sports', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `like` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_01_005553_create_posts_table', 1),
(6, '2022_01_01_010243_create_categories_table', 1),
(7, '2022_01_01_010618_add_columns_to_posts_table', 1),
(8, '2022_01_01_011053_create_comments_table', 2),
(9, '2022_01_01_011303_create_likes_table', 3),
(10, '2022_01_01_061503_add_column_user_id_to_posts_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lorem',
  `post_description` text COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lorem',
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'user/abc.png',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_title`, `post_description`, `post_image`, `user_id`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'Sunil', 'hello', 'user/61cff2b0545f51124791.jpg', 4, '2022-01-01 00:35:32', '2022-01-01 00:35:32', 3),
(2, '6 Things you Must Do When Visiting New York', 'Many people have called New York one of the greatest cities in the world,', 'user/61d01190de2a0look2.jpg', 1, '2022-01-01 00:48:01', '2022-01-01 02:47:16', 1),
(4, '6 Things you Must Do When Visiting New York', 'Many people have called New York one of the greatest cities in the world, and it’s easy to see why. The bustling metropolis of Lady Liberty welcomes all and offers something for everyone. If you’re excited about planning a visit to New York, our NYC experts have their favorite things that you must do when you arrive. You and yours will not be disappointed.', 'user/61d024a9aafa86-Things-you-Must-Do-When-Visiting-New-York.jpg', 1, '2022-01-01 03:19:17', '2022-01-01 04:08:45', 5),
(5, 'Should I use a digital marketing agency?', 'A marketing campaign’s success depends on the quality and quantity of content. If you have the more relevant, interesting, and engaging content, the greater your chances of attracting new customers or clients. That’s why digital marketing agencies are in charge of creating and executing online marketing campaigns by identifying the most effective channels for reaching their target audience.\r\n\r\nDigital Marketing Agencies create brand awareness with prospects through social media sites like Facebook, Google, and Instagram that leverage trust. They also help you find what resonates best with your target audience so that you can keep them engaged throughout their entire customer journey.\r\n\r\nEven though there are different types of marketing strategies used by digital marketers today:\r\n\r\nsearch engine optimization (SEO), pay-per-click advertising (PPC), and content marketing – an excellent digital marketing agency will make sure there is a balance between paid and organic (free) traffic. In other words, they’ll find the right mix of strategies that work best for your brand to achieve your desired results. So if you’re looking to increase your brand’s online presence, hiring a digital marketing agency is the way to go. They’ll help you create quality content that attracts new customers while keeping your existing ones engaged.', 'user/61d054487cf7eimg_61cd7584e0e36-750x460.jpg', 1, '2022-01-01 07:31:56', '2022-01-01 07:31:56', 6),
(6, 'Guide to Graph Search Engines and the Benefits of Using a Graph Search Engine', 'A graph search engine is a type of search algorithm that lets users find nodes on the graph by following the link from one node to another. It should be able to provide a breadth-first search and a depth first search.\r\n\r\nGraph Search Engines are essentially two different forms of search engines. The breadth first search engine is made up of nodes and edges and searches for objects across the network in the form of nodes. This is similar to how Google or Bing would show you information on the web. The depth first search engine, on the other hand, is made up of edges and it searches for objects by following one particular edge.', 'user/61d0fd77215b4architecture.PNG', 1, '2022-01-01 07:44:06', '2022-01-01 19:33:47', 4),
(7, 'U.S. manufacturing production near three-year high in November', 'Production at U.S. factories increased to its highest level in nearly three years in November as output rose across the board, providing a powerful boost to economy as the year ends.\r\n\r\nThe manufacturing output index climbed 0.7% last month to 100.6, the highest level since January 2019, the Federal Reserve said on Thursday. That followed a 1.4% rebound in October. Economists polled by Reuters had forecast factory production rising 0.7%. Output increased 4.6% compared to November 2020.\r\n\r\nManufacturing, which accounts for 12% of the U.S. economy, is being supported by strong demand for goods even as spending starts to revert back to services. Inventories at businesses are also extremely lean. But strained supply chains because of the Covid-19 pandemic are a constrain.\r\n\r\nSpending shifted to goods from services over the course of the Covid-19 pandemic, straining global supply chains.\r\n\r\nProduction at auto plants rose 2.2% last month after advancing 10.1% in October. Motor vehicle output, however, remains 5.4% below its year-earlier level because of a global shortage of semiconductors. Excluding autos, manufacturing output rose a solid 0.6% in November.\r\n\r\nLast month’s rise in manufacturing output combined with a 0.7% gain in mining to lift industrial production by 0.5% to its highest reading since September 2019. That followed a 1.7% jump in October. Utilities production fell 0.8%.\r\n\r\nCapacity utilization for the manufacturing sector, a measure of how fully firms are using their resources, increased 0.5 percentage point to 77.3% in November, its highest rate since December 2018. Overall capacity use for the industrial sector rose 0.3 percentage point to 76.8% last month. It is 2.8 percentage points below its 1972-2020 average.\r\n\r\nOfficials at the Fed tend to look at capacity use measures for signals of how much “slack” remains in the economy — how far growth has room to run before it becomes inflationary.', 'user/61d067fedbcdbcar.jpeg', 5, '2022-01-01 08:56:02', '2022-01-01 08:56:02', 7),
(8, 'Why Selling Your House with a Real Estate Professional Is Essential', 'Selling your house is no simple task. And when you sell on your own – known as a FSBO (or For Sale by Owner) – you’re responsible for handling some of the more difficult aspects of the process without the expert guidance you need.\r\n\r\nThe 2021 Profile of Home Buyers and Sellers from the National Association of Realtors (NAR) surveys homeowners who recently sold their house on their own and asks what difficulties they faced. Those sellers say some of the biggest headaches are prepping their house for sale, pricing it right, and handling the required paperwork.\r\n\r\nWorking with an agent is the best way to ensure you have an expert on your side to guide you at every turn. Agents have the skills and knowledge that are essential to navigating each step with ease, efficiency, and accuracy. Here are just a few things a real estate agent will do to make sure you get the most out of your sale.', 'user/61d068ded9990realestate.jpg', 5, '2022-01-01 08:59:46', '2022-01-01 08:59:46', 4),
(9, 'Men’s Summer Fashion – Latest Trends in 2021', 'Summer and fashion don’t always go hand in hand for men. Looking good comes easy when the temperatures drop. You can let your inner lumberjack shine, and chances are you’ll look fine. But Summer… that’s a different Men’s Summer Fashion – Latest Trends in 2021\r\nSummer and fashion don’t always go hand in hand for men. Looking good comes easy when the temperatures drop. You can let your inner lumberjack shine, and chances are you’ll look fine. But Summer… that’s a different monster.\r\n\r\n\r\nOff the top of the head, you probably associate Summer styles with the preppy look: pink shorts, polos, Topsiders. And while they definitely have the spirit of comfort down, preppy does not have a monopoly on warm looks. Whether you want edgy, athletic, rugged, or anything in between, this is the Summer to step it up and make it happen.monster', 'user/61d06ac267590fashion.jpg', 5, '2022-01-01 09:07:50', '2022-01-01 09:07:50', 2),
(10, 'Best Games of 2021: Gadgets 360’s Favourite PC, PS4, PS5, and Xbox Games', 'What are the best video games of 2021? Picking the top games is quite a challenge especially since this year saw the release of several excellent titles. Thanks to them, staying indoors during the ongoing coronavirus pandemic didn\'t feel like too much of a challenge. You know what we mean. Gamers had a lot of options to pick from this year, no matter what platform they were on. Even Netflix got in on the act, though the less said the better about its forays as yet. Between a number of titles that were given away on the Epic Games Store, or the steep discounts during Xbox, PlayStation and Steam sales (including the ongoing Winter Sale that ends on January 5), 2021 was a good year to be a gamer, whether you prefer gaming on your PC, console, or smartphone.\r\n\r\nAs with everyone else, we\'ve been busy this year. Some of the titles you find below are new, while some of these did a fantastic job of keeping us entertained throughout the year despite releasing years ago. Here are our favourite picks and why we think these are the best games of 2021.', 'user/61d06b3bcc99c2021_best_games_1640780558944.webp', 5, '2022-01-01 09:09:51', '2022-01-01 09:09:51', 8),
(11, 'Squid Game', 'Squid Game (Korean: 오징어 게임; RR: Ojing-eo Geim) is a South Korean survival drama streaming television series created by Hwang Dong-hyuk for Netflix. Its cast includes Lee Jung-jae, Park Hae-soo, Wi Ha-joon, HoYeon Jung, O Yeong-su, Heo Sung-tae, Anupam Tripathi, and Kim Joo-ryoung.\r\n\r\nThe series revolves around a contest where 456 players, all of whom are in deep financial debt, risk their lives to play a series of deadly children\'s games for the chance to win a ₩45.6 billion[a] prize. The title of the series draws from a similarly named Korean children\'s game. Hwang had conceived of the idea based on his own economic struggles early in life, as well as the class disparity in South Korea and capitalism. Though he had initially written it in 2009, he was unable to find a production company to fund the idea until Netflix took an interest around 2019 as part of their drive to expand their foreign programming offerings. All nine episodes were written and directed by Hwang.', 'user/61d0700288f441124791.jpg', 6, '2022-01-01 09:16:00', '2022-01-01 09:30:14', 1),
(12, 'some post', 'ghjdhkgflhj', 'user/61d13848c4c57look.jpg', 8, '2022-01-01 23:44:45', '2022-01-01 23:44:45', 9),
(13, 'Stock market in nepal', 'A stock market, equity market, or share market is the aggregation of buyers and sellers of stocks (also called shares), which represent ownership claims on businesses; these may include securities listed on a public stock exchange, as well as stock that is only traded privately, such as shares of private companies which are sold to investors through equity crowdfunding platforms. Investment in the stock market is most often done via stockbrokerages and electronic trading platforms. Investment is usually made with an investment strategy in mind.\r\n\r\nStocks can be categorized by the country where the company is domiciled. For example, Nestlé and Novartis are domiciled in Switzerland and traded on the SIX Swiss Exchange, so they may be considered as part of the Swiss stock market, although the stocks may also be traded on exchanges in other countries, for example, as American depositary receipts (ADRs) on U.S. stock markets.', 'user/61d435f6738bapexels-pixabay-210607.jpg', 9, '2022-01-04 06:11:38', '2022-01-04 06:11:38', 7),
(14, 'Toblerone Swiss Milk Chocolate Honey & Almond Nougat 3 Bars ×100 G', 'Specification\r\nFlavour:Chocolate\r\nWeight:100Grams\r\nBrand:Toblerone\r\nAllergen InformationEggsPackage\r\nGluten:Free\r\nForm:Bar\r\nThis is a Non-vegetarian product.\r\nAbout this item\r\n\r\nMade from deliciously decadent ingredients, Toblerone Swiss milk chocolate is a delight for any chocolate lover\r\nReawaken your taste buds and immerse yourself in Toblerone unique honey and almond nougat\r\nThis product is gluten freeEnjoy Toblerone, the iconic triangular chocolate from Switzerland with Honey and Almond Nougat.\r\nThis pack contains 100g Toblerone Milk Chocolate - an ideal treat for sharing and snacking while traveling or at home.\r\nMade in Switzerland.', 'user/62411679a0892bca - Copy.jpg', 11, '2022-03-27 20:14:22', '2022-03-27 20:14:22', 7);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sunram', 'potterlotter34@gmail.com', NULL, '$2y$10$urUKm6zC/Fko/5v8KX269eP9mYZ8Mk5xgEAvoj7bvwJNrOFY..Nfy', NULL, '2021-12-31 20:54:57', '2021-12-31 20:54:57'),
(3, 'kushal', 'kus@gmail.com', NULL, '$2y$10$i1oqW3IdBmyXkDKDnWvEku0TMkSuYHOVDOdo8fgJj1DOYfy.q.W2K', NULL, '2021-12-31 20:58:00', '2021-12-31 20:58:00'),
(4, 'Raju', 'raju@yahoo.com', NULL, '$2y$10$atf/OtU19zjpkOFCTO.NHuMmmJpFbEnwIFsd1lEZv6BDq/7ruH3kO', NULL, '2021-12-31 22:09:31', '2021-12-31 22:09:31'),
(5, 'shreeram', 'shree@gmail.com', NULL, '$2y$10$/shIZgGQH96bgENkcwKOS.DmGo93VsZoZge4NEcHvgX6FQu1BdQKG', NULL, '2022-01-01 08:52:28', '2022-01-01 08:52:28'),
(6, 'Runchee', 'rushma@gmail.com', NULL, '$2y$10$2sQYxuzdGW6pNzrmYzahduQQziAD3eKct4gwJ7d5jqrmLTX5m13HC', NULL, '2022-01-01 09:11:43', '2022-01-01 09:11:43'),
(7, 'bibek', 'b@gmail.com', NULL, '$2y$10$/zhvgFN0XGirrYsYJu5SueIHQyAgZ9Lu6oYUHZmgSMz.7sg.bphe2', NULL, '2022-01-01 19:27:31', '2022-01-01 19:27:31'),
(8, 'sunil', 's@gmail.com', NULL, '$2y$10$UoaF53wpe5bVfXV9dCWEv.sW9EV19EpZBnYxAnQm0F9JLv90zosPK', NULL, '2022-01-01 23:44:11', '2022-01-01 23:44:11'),
(9, 'kishor', 'k@gmail.com', NULL, '$2y$10$zkA2Ufyi3mir5WQoWZGwLupXIiBiweINEsDJclAEUGbRnLVfhmmcG', NULL, '2022-01-04 06:09:17', '2022-01-04 06:09:17'),
(11, 'bibke', 'bibek@gmail.com', NULL, '$2y$10$fMU4xl7zzP/m.X0hVCj7X.NLRmRHCkuAT8fyZmxtyf2IH0z4/zXX.', NULL, '2022-03-27 20:13:25', '2022-03-27 20:13:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_post_id_foreign` (`post_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_category_id_foreign` (`category_id`),
  ADD KEY `posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
