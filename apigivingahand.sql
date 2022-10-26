-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 26 oct. 2022 à 19:19
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `apigivingahand`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomCategorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `nomCategorie`, `created_at`, `updated_at`) VALUES
(1, 'Ipsum natus iste velit sunt. Minima officia inventore quod alias et. Deserunt nesciunt velit labore ut. Error minima earum eum enim necessitatibus et qui.', '2022-10-24 12:37:04', '2022-10-24 12:37:04'),
(2, 'Itaque eos ullam est accusamus corrupti quod. Sit voluptatem nobis sit quod sit ipsam fugit ipsam. Et quasi qui dignissimos ut.', '2022-10-24 12:37:04', '2022-10-24 12:37:04'),
(3, 'Molestiae error quia porro alias corrupti voluptatem illum. Ipsum et animi tenetur velit officia ipsum ut et. Ut ut laboriosam quos.', '2022-10-24 12:37:04', '2022-10-24 12:37:04'),
(4, 'Voluptate nihil est consequatur error omnis vel. Aut itaque voluptas asperiores quidem. Et commodi incidunt nam. Id ipsa sint iusto illum architecto sed.', '2022-10-24 12:37:04', '2022-10-24 12:37:04'),
(5, 'Sit assumenda laboriosam quo aut. Quae voluptatum exercitationem in odio eaque neque. Distinctio qui consequatur earum dolorem sit ut. Et aperiam sit voluptatem.', '2022-10-24 12:37:05', '2022-10-24 12:37:05'),
(6, 'Facere facilis at rerum qui. Sequi earum quis molestiae alias. Omnis ut maxime nobis vel veritatis natus et nisi.', '2022-10-24 12:37:05', '2022-10-24 12:37:05'),
(7, 'Et rerum sed delectus quae cumque nam ut. Beatae doloribus quasi ducimus dolor ad deleniti et. Dolores voluptatem nostrum sint ut veniam dolorem et. Illo est natus adipisci in saepe non.', '2022-10-24 12:37:05', '2022-10-24 12:37:05'),
(8, 'Dolore veniam temporibus et. Magni quisquam aut minus et architecto. Velit odit sit minima et enim odio labore. Optio nam optio fuga sunt quis alias modi.', '2022-10-24 12:37:05', '2022-10-24 12:37:05'),
(9, 'Voluptatum vitae explicabo laudantium cum facere. Dolorem omnis debitis modi quo corporis. Ad dolorum quod et. Nam quos non minus consectetur et velit vel ex.', '2022-10-24 12:37:05', '2022-10-24 12:37:05'),
(10, 'Non eius et tempora id voluptas accusamus praesentium. Molestiae omnis veniam incidunt et ea praesentium. Quia illo quidem perspiciatis magnam.', '2022-10-24 12:37:05', '2022-10-24 12:37:05');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_10_22_092345_create_categories_table', 1),
(5, '2022_10_22_092443_create_projets_table', 1),
(6, '2022_10_22_092504_create_offres_table', 1),
(7, '2022_10_22_092620_create_paiements_table', 1),
(8, '2022_10_22_114230_create_roles_table', 1),
(9, '2022_10_22_114235_create_permissions_table', 1),
(10, '2022_10_22_121018_create_user_role_table', 1),
(11, '2022_10_22_121114_create_user_permission_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Structure de la table `offres`
--

CREATE TABLE `offres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donFin` date NOT NULL,
  `donMontant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temps` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `offres`
--

INSERT INTO `offres` (`id`, `donFin`, `donMontant`, `temps`, `created_at`, `updated_at`) VALUES
(1, '1992-10-28', '5', '15:03:42', '2022-10-24 12:37:06', '2022-10-24 12:37:06'),
(2, '1992-10-28', '84764654', '13:50:01', '2022-10-24 12:37:07', '2022-10-24 12:37:07'),
(3, '1992-10-27', '4', '00:01:56', '2022-10-24 12:37:07', '2022-10-24 12:37:07'),
(4, '1992-10-26', '221212602', '07:22:18', '2022-10-24 12:37:07', '2022-10-24 12:37:07'),
(5, '1992-10-28', '204', '05:01:21', '2022-10-24 12:37:07', '2022-10-24 12:37:07'),
(6, '1992-10-26', '382', '11:21:29', '2022-10-24 12:37:07', '2022-10-24 12:37:07'),
(7, '1992-10-27', '7816', '17:39:29', '2022-10-24 12:37:07', '2022-10-24 12:37:07'),
(8, '1992-10-25', '8383', '12:33:56', '2022-10-24 12:37:07', '2022-10-24 12:37:07'),
(9, '1992-10-26', '26735', '02:39:09', '2022-10-24 12:37:07', '2022-10-24 12:37:07'),
(10, '1992-10-28', '6', '23:24:31', '2022-10-24 12:37:08', '2022-10-24 12:37:08');

-- --------------------------------------------------------

--
-- Structure de la table `paiements`
--

CREATE TABLE `paiements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `projet_id` bigint(20) UNSIGNED NOT NULL,
  `montantPaye` double NOT NULL,
  `datePaiement` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `paiements`
--

INSERT INTO `paiements` (`id`, `user_id`, `projet_id`, `montantPaye`, `datePaiement`, `created_at`, `updated_at`) VALUES
(1, 10, 10, 7576055, '1995-03-10', '2022-10-24 12:37:08', '2022-10-24 12:37:08'),
(2, 6, 7, 46, '2016-04-26', '2022-10-24 12:37:08', '2022-10-24 12:37:08'),
(3, 10, 10, 316946, '1987-05-30', '2022-10-24 12:37:08', '2022-10-24 12:37:08'),
(4, 8, 3, 963778868, '2013-07-23', '2022-10-24 12:37:09', '2022-10-24 12:37:09'),
(5, 6, 1, 57172, '1985-06-04', '2022-10-24 12:37:09', '2022-10-24 12:37:09'),
(6, 8, 2, 4949490, '2001-07-16', '2022-10-24 12:37:09', '2022-10-24 12:37:09'),
(7, 2, 10, 8455585, '1990-10-31', '2022-10-24 12:37:09', '2022-10-24 12:37:09'),
(8, 2, 1, 5000841, '1983-06-11', '2022-10-24 12:37:09', '2022-10-24 12:37:09'),
(9, 10, 7, 853, '1994-11-03', '2022-10-24 12:37:09', '2022-10-24 12:37:09'),
(10, 8, 10, 5, '2020-12-21', '2022-10-24 12:37:09', '2022-10-24 12:37:09');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomPermission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
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

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 12, 'auth_token', '53baaa694ea37381cfc6552d57a5439f7fd9969d16239b2d5141ec72589a05dc', '[\"*\"]', NULL, '2022-10-26 13:07:42', '2022-10-26 13:07:42'),
(2, 'App\\Models\\User', 12, 'auth_token', '38fb6b4dfe09e32468c69e87aef3b5ceec6d6493e99cd56e0820888545811706', '[\"*\"]', NULL, '2022-10-26 13:16:52', '2022-10-26 13:16:52'),
(3, 'App\\Models\\User', 12, 'auth_token', '506450a9a4fd8a7377ec38608b07fdc8adc6b4f864fc2ebdea23c442b077acae', '[\"*\"]', NULL, '2022-10-26 13:20:32', '2022-10-26 13:20:32');

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `categorie_id` bigint(20) UNSIGNED NOT NULL,
  `nomProjet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien_projet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ressource_financiaire` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ressource_humaine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ressource_materielle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `estimation_ressource_materielle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validate` tinyint(1) NOT NULL DEFAULT 0,
  `delai` date NOT NULL,
  `coordonnees` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`id`, `user_id`, `categorie_id`, `nomProjet`, `description`, `image`, `video`, `lien_projet`, `ressource_financiaire`, `ressource_humaine`, `ressource_materielle`, `estimation_ressource_materielle`, `validate`, `delai`, `coordonnees`, `created_at`, `updated_at`) VALUES
(1, 8, 2, 'Aut cumque impedit sed animi. Consectetur ut non ut qui ut. Sunt quibusdam quasi nam magni sint. Non ut dolor ad est enim sunt.', 'Velit necessitatibus nam laudantium et cumque molestiae. Quia optio qui omnis eaque ab.', 'https://lorempixel.com/640/480/?77947', 'https://lorempixel.com/640/480/?29392', 'Et sed est soluta amet neque reprehenderit ut esse. Rerum consectetur dolorum facere nulla non eos. Quod pariatur magni quis ratione. Aspernatur ut sint ipsum odio recusandae fugit ut.', 'Possimus aut hic porro consequatur.', 'Maxime enim incidunt vel quis libero voluptatum consequatur.', 'Ut earum animi soluta est asperiores libero.', 'Eius non aut quia quis assumenda.', 0, '1980-01-01', 'Vel ad omnis numquam voluptatem aut.', '2022-10-24 12:37:05', '2022-10-24 12:37:05'),
(2, 2, 9, 'Nulla mollitia est aut minus voluptatum quod delectus. Voluptas tempore quis sequi consectetur consequatur. Quis aut aliquam sint culpa sapiente. Sed laborum iusto facilis amet aut illum.', 'Eos nulla doloremque sequi rerum eaque voluptas vero.', 'https://lorempixel.com/640/480/?51534', 'https://lorempixel.com/640/480/?59109', 'Ipsam assumenda fugiat similique commodi ut animi quas qui. Rem incidunt molestias tempore iusto nemo esse. Iste accusantium quam rerum ad.', 'Voluptas tempore veniam non.', 'In odio eum et laudantium temporibus.', 'Eos temporibus soluta accusantium ut voluptates.', 'Veniam repudiandae distinctio enim pariatur animi aperiam.', 0, '1980-01-01', 'Ad numquam fugiat voluptatibus.', '2022-10-24 12:37:05', '2022-10-24 12:37:05'),
(3, 5, 7, 'Consectetur qui iure error et commodi. Quas earum eveniet id qui magni temporibus repudiandae. In temporibus similique rem repellat. Et ut aperiam maxime.', 'Autem cum quo qui fuga quaerat voluptas. Eius distinctio rerum harum.', 'https://lorempixel.com/640/480/?68321', 'https://lorempixel.com/640/480/?17753', 'Necessitatibus et officiis molestiae sit nemo inventore. Consectetur nulla similique ex sit aliquam nobis.', 'Rerum inventore nostrum facere maiores.', 'Id illo rem qui repudiandae sit provident.', 'Delectus possimus vitae qui sapiente.', 'Corporis voluptatibus reiciendis et quaerat accusantium.', 0, '1980-01-01', 'Aut quis doloremque sed aspernatur doloribus sit saepe.', '2022-10-24 12:37:06', '2022-10-24 12:37:06'),
(4, 4, 4, 'Qui hic accusantium et. Natus cumque consequatur quo ea aliquid voluptatem possimus. Iure rerum placeat nemo enim nesciunt est. Voluptate nisi rerum ducimus qui.', 'Rerum vel non voluptas nulla.', 'https://lorempixel.com/640/480/?18747', 'https://lorempixel.com/640/480/?16718', 'Enim vero placeat a tempora laboriosam omnis quisquam. Modi nisi dolores porro occaecati cupiditate deserunt et. Ratione nisi excepturi reprehenderit totam.', 'Odio distinctio culpa eaque qui blanditiis.', 'Aut consequatur magni maiores minima tempora ipsum.', 'Sit quia velit voluptatem.', 'Tenetur nulla nemo quae nihil excepturi.', 1, '1980-01-01', 'Officiis illo architecto ut quia voluptas iure.', '2022-10-24 12:37:06', '2022-10-24 12:37:06'),
(5, 6, 4, 'Eos qui autem aliquam. Commodi aut inventore non a. Cum quo saepe repudiandae minima commodi similique consectetur. Ut aperiam et beatae nobis beatae qui.', 'Non ea quisquam voluptas ullam voluptatibus facilis.', 'https://lorempixel.com/640/480/?62586', 'https://lorempixel.com/640/480/?83389', 'Et corporis et id accusamus voluptate assumenda ut aliquid. Sunt temporibus error eius et sed expedita. Voluptates quaerat nam doloribus cum aut distinctio rem.', 'Doloribus a non possimus harum.', 'Est sit unde perspiciatis cumque iusto aperiam quo.', 'Sed asperiores reprehenderit laboriosam sunt.', 'Et laboriosam placeat quibusdam rerum cum autem.', 1, '1980-01-01', 'Officia eum enim laudantium accusamus.', '2022-10-24 12:37:06', '2022-10-24 12:37:06'),
(6, 3, 3, 'Quia sunt voluptas pariatur facere ea aperiam voluptas. Modi numquam saepe et quo. Consequatur aut reprehenderit iure et. Rerum dolorem sed laudantium consequuntur commodi reprehenderit.', 'Rerum iure dolorem corrupti odit est nulla ducimus aliquid. Sapiente doloribus quo ut consequatur.', 'https://lorempixel.com/640/480/?41272', 'https://lorempixel.com/640/480/?67260', 'Qui iure quam minus. Rem distinctio cum nostrum natus. Nam at nihil est non. Consectetur animi dolorem eos incidunt aut.', 'Quasi maiores eveniet sed quia architecto maiores et sed.', 'Facere consequatur quia ratione nihil est sapiente dolorem.', 'Vel quibusdam quo voluptatem neque.', 'Doloremque ipsa omnis possimus dolor ullam voluptas.', 1, '1980-01-01', 'Nihil iusto eum fugit et asperiores.', '2022-10-24 12:37:06', '2022-10-24 12:37:06'),
(7, 7, 6, 'Sunt veniam occaecati non enim beatae rerum. Quae perspiciatis tenetur dignissimos quo. Officiis voluptatem blanditiis mollitia nulla ullam dolorem. Facilis alias dignissimos praesentium molestiae.', 'Dolores id fuga ut repellendus consequatur.', 'https://lorempixel.com/640/480/?24270', 'https://lorempixel.com/640/480/?98430', 'Neque quasi qui rerum sit aperiam aperiam ipsam aperiam. Veniam voluptatum aut dignissimos tempora. Debitis voluptatem tenetur accusantium hic.', 'Consequatur enim aut quae.', 'Autem quia quaerat et facere quis dolore.', 'Eum laborum illo et.', 'Sequi in et necessitatibus earum est id et.', 1, '1980-01-01', 'Impedit tempora molestias delectus adipisci magni.', '2022-10-24 12:37:06', '2022-10-24 12:37:06'),
(8, 3, 4, 'Et vel adipisci ut velit nulla. Dolores aut nesciunt optio. Et ut praesentium alias et voluptas sit est sunt.', 'Incidunt totam ut fuga placeat. Iste quo et sit dolorum consequatur et molestias.', 'https://lorempixel.com/640/480/?16963', 'https://lorempixel.com/640/480/?87411', 'Placeat rerum minus enim ullam laborum eos officia nisi. Nisi nesciunt libero sed consequatur vero.', 'Illum doloremque praesentium cum repellat ipsa.', 'Sapiente mollitia reprehenderit non est.', 'Excepturi tempore a voluptas non error laborum sit.', 'Ut voluptatem quia laudantium aliquid.', 1, '1980-01-01', 'Cum aliquam expedita ut ipsum temporibus.', '2022-10-24 12:37:06', '2022-10-24 12:37:06'),
(9, 2, 5, 'Suscipit neque dolorem velit in enim magni suscipit. Nihil dignissimos ex exercitationem harum ipsum deleniti. Adipisci consequatur quia et modi.', 'Commodi vel qui dolores excepturi animi. Quis sed ut fugit tenetur aut.', 'https://lorempixel.com/640/480/?33392', 'https://lorempixel.com/640/480/?30035', 'Itaque sed et tenetur labore et accusantium. Eveniet ut autem assumenda.', 'Sed voluptate ratione minus.', 'Rem maiores ratione consectetur maiores similique accusantium.', 'Deleniti dolores non atque maiores ut recusandae et laboriosam.', 'Delectus rerum autem voluptatum sint non est aut illo.', 0, '1980-01-01', 'Deleniti labore provident sint facere est alias.', '2022-10-24 12:37:06', '2022-10-24 12:37:06'),
(10, 8, 10, 'Rerum laboriosam molestiae eius nobis omnis voluptate odio. Atque aut autem atque ipsum. Consequatur animi sint omnis amet et modi aut.', 'Deleniti debitis rerum in quibusdam. Rerum porro et dolor dolore odit voluptatibus magni iusto.', 'https://lorempixel.com/640/480/?16460', 'https://lorempixel.com/640/480/?67081', 'Voluptatem praesentium sunt voluptatem nostrum harum enim rerum ea. Quo a cumque aut occaecati. Necessitatibus debitis quis incidunt. Blanditiis iste quis qui et repellat.', 'Aut sapiente beatae vel quisquam.', 'Sint cumque laborum quia aut.', 'Aut aspernatur ut necessitatibus vitae.', 'Nisi voluptatem dolorem ut provident delectus.', 1, '1980-01-01', 'Minima qui temporibus dolorum rerum ea nobis.', '2022-10-24 12:37:06', '2022-10-24 12:37:06');

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomRole` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenoms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paysResidence` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationalite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `prenoms`, `profession`, `email`, `contact`, `paysResidence`, `nationalite`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Schulist', 'Agnes', 'CFO', 'windler.conner@example.com', '+1.747.997.5798', 'Mauritania', 'Andorra', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', 'EIQmYUKRlr', '2022-10-24 12:37:03', '2022-10-24 12:37:03'),
(2, 'Deckow', 'Elissa', 'Securities Sales Agent', 'karina.oberbrunner@example.net', '+1-840-553-2953', 'Vanuatu', 'South Georgia and the South Sandwich Islands', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', 'abDiBNcRQw', '2022-10-24 12:37:03', '2022-10-24 12:37:03'),
(3, 'Kirlin', 'Clara', 'Inspector', 'gwen.durgan@example.net', '240.653.7442', 'French Polynesia', 'Cayman Islands', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', '1DYgZXisAA', '2022-10-24 12:37:03', '2022-10-24 12:37:03'),
(4, 'Jacobs', 'Izabella', 'Tile Setter OR Marble Setter', 'ydaugherty@example.org', '(889) 224-8494 x51778', 'Croatia', 'Saint Martin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', 'yFJJwIn7Zy', '2022-10-24 12:37:03', '2022-10-24 12:37:03'),
(5, 'Bergstrom', 'Gabe', 'Educational Psychologist', 'xwaelchi@example.net', '1-483-769-0588', 'Botswana', 'Colombia', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', 'eYbqMZiBmv', '2022-10-24 12:37:03', '2022-10-24 12:37:03'),
(6, 'Bogisich', 'Cecelia', 'Dragline Operator', 'terry.gerhard@example.org', '352.948.8029 x2121', 'Djibouti', 'Russian Federation', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', 'Jho13GlK4n', '2022-10-24 12:37:03', '2022-10-24 12:37:03'),
(7, 'Johnson', 'Georgette', 'Government Property Inspector', 'heathcote.dorothea@example.net', '908-583-6345 x0342', 'Bhutan', 'British Indian Ocean Territory (Chagos Archipelago)', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', '7ZjomUs5L8', '2022-10-24 12:37:03', '2022-10-24 12:37:03'),
(8, 'Rippin', 'Emelie', 'Air Traffic Controller', 'fadel.major@example.org', '557-861-2526 x37266', 'Bulgaria', 'Eritrea', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', '4fAwttS7w7', '2022-10-24 12:37:03', '2022-10-24 12:37:03'),
(9, 'Cassin', 'Jerrold', 'Shuttle Car Operator', 'ierdman@example.com', '301.565.3352', 'Hong Kong', 'Somalia', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', 'G7Tp12tEfK', '2022-10-24 12:37:03', '2022-10-24 12:37:03'),
(10, 'Prohaska', 'Tate', 'Chemical Equipment Tender', 'bwalsh@example.net', '576.837.2780', 'Iraq', 'Kiribati', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-10-24 12:37:03', 'iiJ2Vq9zYN', '2022-10-24 12:37:04', '2022-10-24 12:37:04'),
(11, 'AGBAGBA', 'shalom', 'Développeur Web', 'shalomagbagba@gmail.com', '+22890909090', 'Bénin', 'Togo', '$2y$10$Jv4xRvoMRvi9F6Nd5CpE1uZ15fQY8Fjw4/qYMj83CVjexwcbqgzU.', NULL, NULL, '2022-10-26 12:42:58', '2022-10-26 12:42:58'),
(12, 'AVEKO', 'Adeline', 'Biologiste', 'adelineaveko@gmail.com', '+22893231494', 'Togo', 'Togo', '$2y$10$mOrkG5Qvtj4Jxny5vYMA8e83WKg.y447RDnquc0eFUfMThkDEQUXS', NULL, NULL, '2022-10-26 12:49:20', '2022-10-26 12:49:20');

-- --------------------------------------------------------

--
-- Structure de la table `user_permission`
--

CREATE TABLE `user_permission` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user_role`
--

CREATE TABLE `user_role` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_nomcategorie_unique` (`nomCategorie`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offres`
--
ALTER TABLE `offres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paiements_user_id_foreign` (`user_id`),
  ADD KEY `paiements_projet_id_foreign` (`projet_id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projets_user_id_foreign` (`user_id`),
  ADD KEY `projets_categorie_id_foreign` (`categorie_id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `user_permission`
--
ALTER TABLE `user_permission`
  ADD KEY `user_permission_user_id_foreign` (`user_id`),
  ADD KEY `user_permission_role_id_foreign` (`role_id`);

--
-- Index pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD KEY `user_role_user_id_foreign` (`user_id`),
  ADD KEY `user_role_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `offres`
--
ALTER TABLE `offres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `paiements`
--
ALTER TABLE `paiements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `paiements`
--
ALTER TABLE `paiements`
  ADD CONSTRAINT `paiements_projet_id_foreign` FOREIGN KEY (`projet_id`) REFERENCES `projets` (`id`),
  ADD CONSTRAINT `paiements_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `projets`
--
ALTER TABLE `projets`
  ADD CONSTRAINT `projets_categorie_id_foreign` FOREIGN KEY (`categorie_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `projets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `user_permission`
--
ALTER TABLE `user_permission`
  ADD CONSTRAINT `user_permission_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_permission_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `user_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_role_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
