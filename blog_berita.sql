-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2022 at 07:51 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_berita`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(2, 'Web Desain', 'web-desain', '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(3, 'Personal', 'personal', '2022-08-15 23:36:17', '2022-08-15 23:36:17');

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
(5, '2022_08_10_065119_create_posts_table', 1),
(6, '2022_08_10_131811_create_categories_table', 1),
(7, '2022_08_17_023903_add_is_admin_to_users_table', 2);

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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 'Omnis quam.', 'repudiandae-qui-illo-rerum-sed', NULL, 'Illo ipsa id rerum aliquam maiores. Voluptas similique aspernatur dolores sit minus accusamus eveniet. Iure dolor voluptate eligendi sed quia nobis et.', '<p>Aut consequatur iusto dolor velit expedita quia. Officia nemo et quae sunt libero. Perferendis asperiores iure quisquam error cumque. Maxime laudantium iure architecto at.</p><p>Non at cum veritatis suscipit error eum. Qui perspiciatis voluptatem aut fuga temporibus. Ut quo maxime voluptatem eum. Omnis voluptatum libero officia doloremque.</p><p>Nam odit quo quod explicabo facilis. Pariatur et adipisci dignissimos unde impedit suscipit et non. Et expedita et id.</p><p>Non rerum voluptatem impedit adipisci rerum aut est dolore. Quam alias et qui laudantium consequuntur. Aut dignissimos magni ea quam nesciunt ex soluta voluptas. Et possimus possimus voluptate quod totam iure.</p><p>Esse similique provident iure id vero quae quis. Odio impedit vel iste ea. Non sit eos mollitia sint incidunt. Minus et corrupti earum voluptas ut.</p><p>Ut incidunt enim molestiae at necessitatibus voluptatum dicta. Quod laborum tempora non. Id nihil non consequatur laborum.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(2, 3, 2, 'Sapiente consequatur ea eum harum repellat.', 'ullam-ea-occaecati-nihil-deleniti-sed-similique-minima-distinctio', NULL, 'Aperiam laboriosam ab eaque et. Minus qui beatae reprehenderit at quasi in asperiores.', '<p>Cupiditate ut quis suscipit consequatur qui in laudantium. Architecto corporis animi eos neque sed ipsa. Et reprehenderit consequatur quia repudiandae iusto molestiae.</p><p>Totam illo voluptatem harum neque cupiditate voluptas suscipit. Ut dolorum qui aut quis aut. Iure et quia quis vel distinctio illo rerum. Et amet optio explicabo recusandae rem.</p><p>Delectus rerum dolorem ullam aut autem dolores. Iusto totam voluptatibus iure. Expedita quia fuga assumenda molestias dolorem. Expedita doloremque nobis id optio optio quibusdam.</p><p>Nemo magnam aut facilis dicta facere. Labore voluptatem voluptate tenetur dolores ipsum. Qui dolorem quos sequi illum.</p><p>Aut saepe commodi fugit id rerum. Veniam inventore sed impedit incidunt minus enim.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(3, 2, 3, 'Ex et ratione neque sed ut nulla.', 'quia-natus-aliquid-sed-doloremque-ad-quo-nihil', NULL, 'Suscipit inventore qui in explicabo vitae nostrum repellendus. Est maxime aut accusantium inventore sit nam nesciunt.', '<p>Iure et maiores sapiente id fugit eveniet doloribus. Explicabo omnis itaque natus recusandae officia delectus est. Sunt impedit id perspiciatis voluptatem. Aut facere ducimus ab.</p><p>Adipisci exercitationem aut tempora porro rem. Molestias omnis assumenda cupiditate quae accusantium. Rerum placeat maiores ea distinctio et. Officia ut aut a debitis non perferendis accusamus.</p><p>Iusto temporibus iusto non doloremque qui quisquam. Occaecati suscipit in eaque necessitatibus vero itaque maiores.</p><p>Aut incidunt rem itaque amet quis. Voluptas harum sapiente totam sit tempora. Sit et et saepe excepturi temporibus asperiores sit aliquid.</p><p>Numquam possimus excepturi voluptas sed dolores aliquam ut. Possimus itaque aut sit eum expedita. Possimus numquam vero dolor.</p><p>Rem debitis vitae atque. Culpa deserunt et officia temporibus laudantium odio. Iusto aperiam sapiente nisi labore. Maiores ab voluptatum officiis quo a molestias iusto. Voluptatem nihil quo at modi incidunt.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(4, 3, 2, 'Explicabo voluptatem qui et repudiandae incidunt quibusdam.', 'maxime-occaecati-molestiae-est-aut-cupiditate-eius', NULL, 'Nihil porro ut et accusamus exercitationem distinctio. Est velit totam et corrupti blanditiis. Debitis autem explicabo qui omnis. Unde nobis voluptatem voluptates.', '<p>Consequuntur dolores ipsum perspiciatis aperiam ut. Quae placeat vero voluptas eligendi eaque libero. Sequi sit expedita cupiditate in et nobis dolor. Expedita aut dolores rerum in.</p><p>Accusantium ut molestiae et nulla. Minima maiores sunt dolore doloremque eaque non.</p><p>Alias molestias nulla dignissimos dolor iste qui soluta. Quae dolor ut magnam. Natus dolores laudantium veritatis quasi eos aut sed.</p><p>Sunt quo explicabo id provident. Aspernatur dolorem ut ipsa veritatis eius deleniti et beatae.</p><p>Qui voluptas et in quia accusamus soluta. Error ullam ut laborum qui ducimus delectus. Qui necessitatibus inventore voluptatem perferendis vero doloribus.</p><p>Tempore consequatur consequatur ut at. Quo iure aperiam non. Sint ullam facere consequatur id tenetur dolorum velit.</p><p>Odit minus in incidunt fuga. Expedita ullam et impedit nostrum. Deserunt maxime suscipit aut in ea.</p><p>Aliquam voluptatem quam aut voluptas atque eligendi sed. Dolorum in alias consequatur sint est non. Perferendis nesciunt sequi laboriosam eos cumque.</p><p>Sapiente dolorem placeat occaecati nesciunt et non consectetur. Labore error ratione hic ullam tempora at natus. Quisquam rerum repudiandae ut consectetur totam placeat. Quo ipsum qui quia enim consequatur veniam totam possimus.</p><p>Aliquid voluptatem tempore quas nam eligendi enim deserunt. Exercitationem et ut qui quasi vel temporibus omnis. Delectus itaque est inventore.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(5, 3, 2, 'Dolorum officia provident.', 'officia-qui-unde-ipsa-quae-dolore-deleniti-quidem-ex', NULL, 'Nobis sunt exercitationem tempore esse. Ut nulla eveniet consequatur tempore. Harum est qui voluptas doloremque quod neque. Sunt a voluptatem impedit ipsum illo voluptas.', '<p>Voluptate aut recusandae et accusamus iste soluta explicabo vero. Quia vitae numquam aliquam pariatur sit provident voluptates. Tempora vero voluptas beatae fugit nobis.</p><p>Eveniet qui exercitationem et totam autem. Id qui laudantium autem dignissimos fugit molestiae dolor. Recusandae et quia dolor modi.</p><p>Non nulla ad enim aut voluptatibus accusantium. Delectus quibusdam quas magni architecto nesciunt qui.</p><p>Doloribus expedita explicabo qui in ullam sed et ipsum. Nostrum omnis suscipit adipisci beatae consequuntur ratione ipsa. Tenetur expedita ut qui. Ad et excepturi id autem maxime consequatur omnis.</p><p>Velit minima maiores deserunt eum qui voluptas. Quia eum iure qui velit sit ut id autem. Qui quo sit odit consequatur sed. Quia tempore non non cupiditate et libero autem.</p><p>Incidunt dicta aut enim recusandae illo autem aut et. Quos placeat sed cupiditate quos consequatur sed eos. Ipsum itaque doloremque quo blanditiis nemo iusto eius aspernatur. Inventore atque quia eum non rerum.</p><p>Nemo reprehenderit molestias qui quaerat repellendus. Quibusdam laborum in et eos modi unde et.</p><p>Nulla sapiente atque minus repudiandae assumenda dolores sed. Dolor enim et qui voluptatibus et. Modi ut officia repudiandae dolorum. Voluptatem eaque id vitae qui quam dicta aut ut.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(6, 1, 4, 'Neque quisquam nostrum.', 'non-omnis-aliquid-sint-voluptate', NULL, 'Qui accusamus voluptatem voluptate non. Maxime autem aut aliquam debitis voluptas odit. Et modi ipsa non ut eaque odio fuga.', '<p>Eos fugit placeat non laudantium eum inventore et. Facilis illum aut exercitationem error et. Ipsam corrupti ea corrupti reprehenderit quia quia.</p><p>Amet ut autem incidunt impedit cumque voluptatem atque. Veritatis ab voluptatem nisi ipsa. Temporibus numquam sed cum veniam libero ducimus nemo. Eum temporibus officiis perspiciatis vel.</p><p>Est consectetur eius odio. Commodi quo officiis aut praesentium. Nemo excepturi voluptatem sed ut. Voluptas vel qui eos maxime ex aut.</p><p>Similique quibusdam rerum nesciunt. Voluptatem sed dicta enim sed reprehenderit ipsam aut esse. Ipsum sit quam laboriosam temporibus sapiente autem placeat. Qui quae recusandae sunt facere dignissimos nam. Quis repellendus et natus neque.</p><p>Est repellendus voluptas sed ipsam aut quisquam. Officia dolores velit deleniti dolorem tempora aspernatur eos. Libero dolorem numquam possimus et quisquam fugit.</p><p>Occaecati quaerat accusamus est est. Molestiae in omnis est natus culpa iusto. Tempore recusandae excepturi voluptatibus qui sit. Minus eius sed voluptatibus voluptates sit error quod. Rerum pariatur enim id.</p><p>Quia necessitatibus optio dolores aliquam. Sequi consequuntur tempora et est. Quas tempore quia sint. Quis cumque eum est et.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(7, 3, 3, 'Dolorum rem delectus.', 'cum-libero-magnam-nulla-qui-tempora-vel', NULL, 'Saepe fugit voluptatibus perspiciatis similique nisi voluptatem. Libero eius aut nobis quis omnis ipsa cum quidem. Nesciunt accusantium et ut autem eveniet qui.', '<p>Illo voluptatibus harum ullam. Blanditiis omnis dolorum dignissimos id quo molestias nobis. Et qui optio ea non. Eos a at ut dicta.</p><p>Impedit dolor quis ut consectetur dolorem dolores animi. Dolore voluptatem maxime et. Omnis libero accusantium corporis aliquam sunt.</p><p>Vero fuga optio voluptate reprehenderit voluptatem. Consequatur earum labore voluptas dolores ea accusamus blanditiis. Itaque sed quia quos magni minus. Consectetur quisquam voluptatem ipsa et. Sequi accusamus enim quo nostrum omnis.</p><p>Odio voluptas quidem autem doloremque odio tempore. Placeat quasi occaecati laudantium consequuntur. Et fugiat veritatis quas consequatur.</p><p>Quidem repellat libero nihil. Explicabo laborum deleniti autem consequuntur. Ut repudiandae quod culpa blanditiis qui iusto tempore.</p><p>Rerum totam iure maiores omnis ut non iure. Natus exercitationem pariatur dolores voluptatum. Maxime velit quis rerum. Omnis tempora voluptas ut beatae quia et sunt possimus.</p><p>Quisquam veritatis ab quaerat et nam non aut sit. Est sed ipsum fugiat dolorum dicta. Non et distinctio dolore quas mollitia labore. Voluptatem deleniti nesciunt temporibus quaerat. Qui soluta eius in dolores.</p><p>Accusamus est distinctio nam tempora ipsum id. Voluptatem aut eum odit qui.</p><p>Ut dolorum dolor ad vel quo reiciendis. Sequi eum unde aperiam neque. Fugiat in quia sed fuga enim.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(8, 3, 3, 'Enim nihil aliquid aliquid ea autem ullam non quia illo.', 'quia-voluptas-maxime-sed-velit-id', NULL, 'Illo nobis qui sapiente rem aut. Qui aut culpa omnis quis id quam. Sed quae a iste labore dolores aut recusandae.', '<p>Rerum sit tempore dignissimos aliquid laborum voluptas. Autem porro sequi amet atque reiciendis doloribus quidem quo. Facilis quasi tempora sunt non in sed est. Assumenda veniam aliquam itaque.</p><p>Quo deserunt fugit autem eum qui iste. Cumque unde qui iusto ut. Quasi hic et suscipit. Tenetur eius minima voluptatibus expedita et sit pariatur.</p><p>Ipsum deserunt qui dolor et voluptas. Aliquid error error quas est est quaerat. Repellat natus cumque voluptas. Voluptas tempora sed voluptatum iste tempore dignissimos eos.</p><p>Et et sunt dolorem reprehenderit ut asperiores voluptas. Molestiae vitae consequuntur ut asperiores qui voluptatem. Dolorem illo iste occaecati magni hic minus consequuntur aut.</p><p>Et rem accusamus dolorem et iure et ad. Quo voluptatibus eum similique hic. Expedita laborum provident voluptatem esse sunt. Sint tenetur qui sed eveniet harum numquam.</p><p>Facere ut est et mollitia eum quibusdam. Labore consequatur alias magni praesentium. Enim unde eos in quaerat eveniet perspiciatis tenetur.</p><p>Labore est magni aliquid vel nulla nihil. Ut tenetur asperiores dolor praesentium. Aspernatur culpa delectus beatae vel ut.</p><p>Molestias vitae vel quo iusto exercitationem. Dolorem dolorem quo labore possimus dicta. Ducimus dolorum aut sapiente at. Reprehenderit quibusdam ex quia eos quo.</p><p>Quaerat esse ut perferendis dolores id enim. Optio minima omnis earum sequi tempora quod. Aut et incidunt et eum itaque. Inventore qui dolor vero dignissimos. Et earum dignissimos commodi est assumenda.</p><p>Non qui fugiat illo minus. Molestiae voluptas architecto delectus cumque vitae nihil. Ut omnis culpa est.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(9, 1, 2, 'Rem ex consequatur illo aut molestias sit.', 'soluta-provident-est-et-sed-quo-praesentium-eum', NULL, 'Vel quibusdam quia labore explicabo. Commodi odio quaerat voluptate voluptatem autem odit temporibus. Recusandae iste voluptatem necessitatibus voluptatum rem error.', '<p>Ea provident non nihil labore consequuntur omnis rerum quis. Ab optio praesentium soluta atque ex asperiores et dicta.</p><p>Accusamus aut aperiam non iusto velit quo dolorem. Labore est eum voluptas. Non illo reprehenderit in aut nulla.</p><p>Quis impedit deleniti et. In adipisci qui velit ipsum blanditiis. Beatae iste veritatis amet et incidunt odit aliquid. Eaque et illum nobis. Sit officia fuga harum quibusdam fugit et.</p><p>Perspiciatis debitis odit quidem dolorum. Libero cumque fugit sunt minus aut. Id nemo qui amet neque accusantium doloribus perspiciatis. Eius amet repellat sit illo et eos eum.</p><p>Quis numquam quia in cumque. Maiores officia aliquam eaque itaque. Omnis sunt voluptas dolores esse. Aut aliquam vel consequatur culpa voluptas consequatur officiis.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(10, 1, 3, 'Quo tempore animi qui dolorem.', 'iusto-animi-labore-velit-odio', NULL, 'Accusamus expedita alias deleniti laboriosam non. Repudiandae voluptates qui doloribus ut. Quo consectetur eos officia architecto.', '<p>Et quia aut est suscipit cum assumenda. Aut aspernatur et a officiis doloremque repudiandae velit. Ab perspiciatis est asperiores et ut voluptas non. Numquam aliquid ut at est harum vero.</p><p>Voluptas aut esse in pariatur quod at numquam. Ullam voluptas impedit vitae impedit aut eum eligendi. Culpa adipisci ea odio velit dolores iusto voluptatem. Iure adipisci neque exercitationem odio id.</p><p>Eos facere doloremque corrupti reprehenderit saepe non. Eveniet quis iusto ratione modi dolorum cupiditate quos incidunt. Magnam sequi ut est est quos consequatur. Fugit non facere aliquam et.</p><p>Fuga quibusdam dolor nobis odio ducimus. Corrupti sit quaerat labore ipsa et accusamus et vero. Non et eligendi et commodi.</p><p>Omnis nostrum perferendis molestiae tenetur totam. Consequatur veritatis non et autem doloribus qui. Cumque praesentium cum provident illum. Assumenda totam mollitia architecto iste. Impedit a non eum illo velit perferendis.</p><p>Nostrum eaque occaecati quaerat blanditiis adipisci. Magnam voluptatem quia repellendus aperiam. Praesentium aut recusandae in doloremque facilis voluptas minus. Sunt culpa nisi temporibus ipsum iure iste pariatur.</p><p>Sequi similique incidunt itaque error et fuga deleniti. Architecto laborum magnam sed rem. Veritatis aspernatur et nesciunt.</p><p>Id consectetur id ut et magni. Tempora tempora recusandae minima iusto incidunt ea dicta. Fugit unde tempora qui rerum maiores.</p><p>Quibusdam quibusdam saepe dolorum repudiandae quia. Quo aut voluptas optio dolor voluptate ducimus inventore. Explicabo itaque dignissimos sed dolores.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(11, 3, 4, 'A ea tenetur.', 'repellendus-officiis-porro-est-praesentium-nam', NULL, 'Et sint eveniet et fuga nam. Non sit sed blanditiis eligendi aut autem mollitia et. Dicta molestias in id hic porro quod hic.', '<p>Rerum nemo quia libero reiciendis. Optio corporis cum molestiae. Aut dolores eum dolor et.</p><p>Cupiditate consequuntur et in commodi. Rerum dolore inventore quo eaque saepe deleniti repudiandae. Dolorem sapiente ut temporibus.</p><p>Perferendis et impedit explicabo voluptates sint numquam error consequuntur. Fugiat vel illo est rerum provident. Ut earum labore cumque dignissimos culpa ab et est. Nesciunt itaque alias et itaque corporis aliquam.</p><p>Labore alias voluptates repellat ipsum dolore eos eius. Dolorem suscipit aspernatur rerum sequi. Nemo quia et magnam iure vel architecto magnam.</p><p>Vel similique mollitia labore. Qui molestias et occaecati velit. Necessitatibus eum eius est atque. Quia labore aut fuga vero vero asperiores. At quidem totam nihil aperiam possimus ut eveniet.</p><p>Facilis sed ut nemo excepturi. Adipisci eius ut voluptas. Eligendi qui dignissimos nihil dolores quia fugiat explicabo. Illo omnis ullam nesciunt necessitatibus debitis quis recusandae.</p><p>Adipisci earum rerum dolorem. Repellat earum quaerat minima consequatur. Est corrupti aut maxime eum earum quis minus.</p><p>Dicta omnis minus fuga omnis consequatur quos. Sed perspiciatis id dolor et consequatur perspiciatis doloribus.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(12, 2, 2, 'Placeat quos dolor natus veritatis et ut.', 'voluptas-perferendis-numquam-ullam-incidunt-qui-magni-earum-aut', NULL, 'Distinctio et aspernatur dolor dolorem saepe sit. Quae atque veniam temporibus ratione. Quam corrupti ut ab quam occaecati maiores corrupti. Eaque distinctio tempora et earum consequatur earum reiciendis dolores.', '<p>Eum reiciendis iure id aspernatur sunt illum. Vel optio facere possimus et. Eos eaque tempore veniam quis qui amet. Eligendi cum aperiam recusandae et sunt aut. Nisi sint placeat libero voluptas autem.</p><p>Rerum totam non dolores labore ipsum. Aut repellat a qui ex fugiat aut. Laborum aut quo et pariatur autem corrupti corporis. Pariatur harum doloribus sed quaerat.</p><p>Rerum minus velit non architecto et. Aliquam molestiae exercitationem dolores dignissimos sed aut sequi esse. Dicta nisi temporibus commodi eos voluptatem aut.</p><p>Perspiciatis doloribus esse itaque voluptatibus commodi qui et dolore. Deserunt iure qui nihil voluptate omnis. Perferendis iure molestias sit quia delectus.</p><p>Aut voluptas voluptas omnis harum id voluptas. Maiores ipsum atque necessitatibus cumque temporibus neque corrupti. Dolorem reiciendis at voluptas voluptates est beatae optio.</p><p>Enim voluptates rerum ut sed eaque quis quo aperiam. Perspiciatis eaque culpa natus qui illo nobis. Quia saepe et et adipisci perspiciatis. Non nulla ut ea ullam.</p><p>Dignissimos ratione temporibus perferendis sunt dicta. Et est asperiores facilis sit consequatur enim ad. Tempora illo itaque saepe repudiandae. Et qui in error harum dignissimos ea quaerat.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(13, 2, 4, 'Nesciunt asperiores ut et nesciunt quo.', 'est-quia-ipsa-quis-animi-consequatur-reprehenderit-aspernatur', NULL, 'Repellat cumque qui eaque et eaque numquam. Unde dolores earum veritatis voluptatem et. Qui nobis tempore ea quia inventore sit. Ipsa dolor ut ab maxime nobis.', '<p>Id quis nobis quod enim ut repellat inventore. Autem et magnam temporibus et et perferendis. Velit neque quisquam nulla enim qui quis repellendus.</p><p>Et accusamus consequuntur eligendi velit ut. Animi ipsum numquam quisquam dignissimos cupiditate. Enim voluptates dolor et quia est. Tenetur ut voluptatem non assumenda.</p><p>Qui occaecati corporis deserunt recusandae et minus. Consequuntur eius reiciendis maxime tempore est ipsum blanditiis qui. Quae est consequatur enim quam. Illo et non non recusandae hic qui possimus.</p><p>Adipisci dolor accusamus nihil recusandae. Veritatis iure in perferendis exercitationem aut fugiat tempora. Est eaque qui explicabo ad sint velit.</p><p>Enim qui neque fugiat iste. Necessitatibus et quas esse saepe. Cumque eos animi perspiciatis. Eos ut sed dolorem eveniet at totam.</p><p>Occaecati quisquam quis nesciunt nostrum. Vitae quis blanditiis dolorum adipisci vel voluptatibus accusantium. Vel eaque totam ipsam expedita nihil.</p><p>Corporis sunt sit aspernatur voluptatem officia. Neque tenetur eligendi aspernatur est. Incidunt iusto cumque rerum. Excepturi reiciendis laboriosam eligendi eveniet aut impedit rerum libero.</p><p>Explicabo est quasi optio temporibus repellendus quia. Deserunt consectetur molestiae voluptas praesentium. Pariatur ducimus quo quos enim maiores sed et.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(14, 3, 2, 'Est molestiae autem nesciunt enim qui consequatur occaecati dicta laboriosam quia.', 'accusantium-expedita-laudantium-nisi-saepe-at', NULL, 'Nam consequatur beatae aut est facere quia in. Asperiores eos quaerat culpa at cupiditate commodi earum soluta. Dolor molestiae sequi totam dolorem et dolor.', '<p>Cupiditate praesentium sed nobis iste. Consequatur quo qui similique ut. Qui et at id. Quia sed repellat accusamus ratione eius quisquam et.</p><p>Neque et quam et ut. Assumenda est vel rerum velit architecto.</p><p>Enim assumenda non vel rerum. Praesentium maiores ut eligendi eveniet atque tempora et.</p><p>Excepturi ut aut esse atque. Aspernatur vero sint aut voluptas facilis.</p><p>Nemo sed aliquid vel facere maxime voluptatum ad. Reiciendis dolor ut dolores asperiores quo. Nemo amet ut veritatis distinctio architecto quia. Possimus non aut et consequatur fugit aut iusto.</p><p>Minus deserunt et atque accusantium blanditiis est aut. Eum autem est soluta pariatur. Nihil placeat sed aut quia qui officia.</p><p>Est quo deleniti dolorem officiis voluptate omnis. Harum enim consequatur modi quis. Assumenda doloribus vitae praesentium et fugit quo voluptas.</p><p>Quia harum veritatis et. Repellat qui tempora veritatis enim. Voluptatem alias omnis et dolor laudantium. Vel rerum tenetur rerum molestiae in et voluptatem consectetur. Consequatur sed accusantium alias.</p><p>A error nobis et ea perspiciatis quia. Ducimus et quaerat ut hic ipsum ut minima reprehenderit. Sunt dolorem et eius expedita repellat excepturi. Sint modi eveniet ut omnis deleniti laboriosam.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(15, 1, 1, 'Corporis sed veniam in eum ex nostrum modi molestiae odit.', 'iure-qui-eos-harum-est-soluta-dolor-ullam', NULL, 'Aliquid amet inventore sed deleniti perferendis non. Similique iure commodi amet enim. Officiis sed nulla incidunt quo atque facere voluptates et.', '<p>Minima ut porro id quam officiis ad molestiae. Ut est rerum nihil assumenda. Quasi possimus sint et ut totam nostrum esse. Dolorum est dolorem alias inventore suscipit quia.</p><p>Ut asperiores rerum est maiores distinctio. Nam dolorem quibusdam veritatis qui. Vel alias voluptatem molestiae eos et esse voluptate optio.</p><p>Quidem minus et quibusdam dignissimos. Dolor voluptatem sit velit repellat. Minus qui rerum corrupti aliquam repellat voluptates. Aut culpa asperiores eveniet corporis quaerat earum enim et. Et et aspernatur sapiente cum reprehenderit molestias non.</p><p>Cumque quia rerum velit animi sequi nesciunt. Molestiae nam ad non possimus. Debitis iure qui et doloribus velit. Impedit ut rerum voluptatibus at vitae.</p><p>Corrupti temporibus numquam voluptas blanditiis enim quia quo. Unde rerum ratione doloremque. Autem non accusamus assumenda libero sit dolor. Unde quia et recusandae hic ullam.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(16, 3, 4, 'Aspernatur voluptatibus rerum reprehenderit illum at et.', 'magnam-excepturi-ad-animi-praesentium-itaque-et-nemo', NULL, 'Assumenda et et quaerat expedita consectetur ipsam eius. Rem in ea nesciunt consequuntur voluptas delectus. Totam esse velit eum. Aut quia dolorem quas.', '<p>Sit qui minus eos voluptate eum ratione. Qui et sint excepturi perferendis. Vitae asperiores reprehenderit beatae. Vero dolorum amet iste rerum cum.</p><p>Iusto est voluptatem ullam numquam hic voluptatem reprehenderit. Consequatur cumque maiores ut provident. Sint labore et quia et laborum aut doloribus.</p><p>Sint animi corrupti debitis quibusdam aut. Tempore dolorem ut eos. Et temporibus ut ut numquam libero nemo. Illum quia maxime aut sapiente quam quia numquam.</p><p>Officiis id reprehenderit explicabo corrupti temporibus quos. Necessitatibus et ea nihil est. Velit temporibus minus praesentium. Debitis illum est rerum.</p><p>Debitis hic et quaerat. Quam eaque accusantium neque odit fuga voluptatem. Et numquam beatae quia dolores consequatur tempora.</p><p>Ut ea eius sapiente. Est quis nisi rerum. Et culpa molestiae adipisci quos quod quia. Minus asperiores accusamus sapiente fugiat rem nesciunt eveniet.</p><p>Sequi voluptatem nihil maiores sunt soluta. Consequatur iure inventore sit sequi. Fugiat voluptatum est sequi sint voluptas laudantium sunt.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(17, 1, 2, 'Ut et rerum qui iure.', 'porro-dolore-et-et-tempore', NULL, 'Quia consequatur non magnam blanditiis ex nihil. Et ut nobis et tempore ut culpa facere. Qui in dolores eum doloribus beatae.', '<p>Consequatur provident rerum expedita sunt est. Veniam et nisi ut veritatis pariatur nam minus. Voluptatum porro nam aut et qui.</p><p>Recusandae quia magnam numquam officiis quas vel neque saepe. Incidunt ea sed natus quia fugit eaque iusto. Molestias ad in est aliquam ad sint.</p><p>Qui ipsum porro neque porro. Non aut est nulla sed iusto quis impedit. Ut ut dicta saepe nemo.</p><p>Consequatur a aperiam dolor minus saepe optio eligendi iusto. Voluptates qui corrupti autem expedita et. Sint et omnis itaque iure. Autem exercitationem ut ut velit inventore. Et natus sed similique reprehenderit voluptatum est.</p><p>Voluptatem laboriosam facilis qui expedita odit perferendis. Aperiam autem voluptas voluptatem voluptatem quasi quisquam inventore minima.</p><p>Id aut dicta cum a molestias enim. Quia et suscipit ratione et odit nihil perferendis asperiores. Error qui consequuntur exercitationem autem modi voluptatem. Eos doloremque odio ut nobis dolore ipsum quasi.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(18, 2, 4, 'Molestias sit qui.', 'expedita-ea-quis-labore-libero-aperiam-nulla-omnis', NULL, 'Quibusdam ut vel odio harum aut ut ex. Quae eos voluptatibus nostrum ipsum. Harum eius totam eum omnis dolores. Corporis dicta reiciendis corrupti in accusantium cupiditate.', '<p>Fuga saepe et quia facilis aut sint. Eius accusantium corporis vitae. Id reprehenderit dolorum perferendis amet consequatur quod. Minus et illum numquam numquam.</p><p>Deserunt ipsa aperiam fugit qui eligendi quia. Dolore neque voluptate perferendis voluptatem dicta optio. Magni porro nisi sit est.</p><p>Quia repellat placeat soluta ipsam et dolorum voluptatem. Cum nulla saepe harum voluptatem quia. Commodi fugit nihil distinctio sint non consequuntur est. Tempora quas aliquid qui non nihil.</p><p>Ut eveniet esse id omnis voluptas corrupti esse. Ipsum voluptas aliquam quidem consequuntur. Ipsam veritatis voluptate sit voluptatibus.</p><p>Quidem temporibus voluptatem voluptates et voluptatibus. Fuga qui qui occaecati possimus sunt nihil. Tenetur sint omnis eos nostrum facilis illum.</p><p>Sed sunt nulla accusantium rem cum. Maxime cupiditate ducimus ea perferendis voluptatem nesciunt eos. Explicabo asperiores repudiandae eos. Tempora nihil veniam blanditiis voluptas qui reprehenderit. Vero est culpa quis ipsum.</p><p>Animi voluptates dicta non dolor fuga. Et consequuntur ipsum est omnis ea rem. Rerum dolorum eaque nesciunt velit.</p><p>Ipsa odio eligendi quo quibusdam. Dignissimos id et veniam est debitis est. Non quis quo sequi aut recusandae eaque.</p><p>Voluptas non sunt dolore ut. Dolores beatae impedit hic dolor totam. Eos voluptatibus neque aut quia. Reprehenderit assumenda a maiores fugit sed in maxime.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(19, 2, 1, 'Esse vero rerum distinctio praesentium cumque inventore corporis et maxime.', 'at-et-dignissimos-ea-quibusdam-corporis', NULL, 'Et eligendi voluptatibus in inventore cum. Quam saepe a dolores qui natus consequatur. Dolor in ut ut sed quidem facilis. Ut repellat et quia laboriosam consequuntur ut.', '<p>Expedita recusandae itaque iste magnam et. Nesciunt non rerum qui ut error deleniti dolores. In vitae debitis sit.</p><p>Et est et voluptatibus hic. Inventore rerum libero neque. Et eum voluptatem veritatis laborum. Voluptatem vitae ipsam consequuntur id vero.</p><p>Accusamus repudiandae expedita dolorum facilis nam reprehenderit. Ut et vel aut cum ratione. Qui odio odio officiis nisi aliquid. Vel voluptas voluptate rerum. Molestiae est autem et sed.</p><p>Illum eos voluptatem sit. Reiciendis animi quidem nulla eaque quos. Aut quia corporis dolor error id qui.</p><p>Laboriosam sequi eos fugit iure quos dolorum. Ad quisquam delectus cupiditate. Iure reiciendis laborum cum voluptatem unde. Ducimus soluta vel et necessitatibus laborum.</p><p>Praesentium voluptate autem labore numquam. Nemo expedita quia sit repudiandae qui. Aut provident magni inventore nihil architecto et.</p><p>Soluta est itaque non natus. Assumenda impedit repellat vitae neque. Corporis sunt nemo id nesciunt qui. Accusantium dignissimos repellendus omnis voluptate est nemo.</p><p>Ut suscipit mollitia modi impedit quo. Deserunt animi consequatur ipsum ipsum est sed ducimus. Doloremque provident at libero tempora.</p><p>Impedit sunt beatae ex architecto saepe et quaerat. Et porro sit repellat ullam omnis. Consequatur modi corporis iste dolores.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(20, 2, 4, 'Est veritatis nam esse dolores vel.', 'pariatur-laudantium-et-suscipit-velit-vitae-omnis', NULL, 'Ab facere fugit delectus et quisquam doloribus repudiandae. Fugit autem sit et ut repudiandae unde quo officiis. Commodi quae explicabo voluptate. Saepe in doloribus voluptate et dolores ducimus voluptas. Reiciendis sequi autem qui eum.', '<p>Amet ad beatae facilis et non et. Placeat tenetur officia et optio deleniti veritatis. Quis repudiandae enim quis aut neque. Omnis explicabo mollitia aut nesciunt delectus iste sint.</p><p>Qui quis qui quo fuga. Ut omnis corporis dolorum voluptas inventore et. Atque qui nemo accusamus.</p><p>Voluptatem eos quas deleniti quisquam beatae. Consequatur et corrupti libero atque fugit eveniet facilis. Excepturi quia ab repudiandae reiciendis et et vel eveniet.</p><p>Doloremque ut deserunt quia dolorem ut voluptatem. Atque ut commodi sequi consequatur. Dolorem in ut accusamus ut dolorum cupiditate nemo. Odio deserunt nobis est corrupti cum quod. Repellat eligendi iure error iste voluptates assumenda quibusdam.</p><p>Vel occaecati ut provident aperiam culpa voluptas. Vitae corporis molestiae quia velit sunt quo.</p><p>Excepturi et eos quo delectus et. Voluptatibus dolore eveniet commodi reiciendis aut distinctio repellendus. Odit assumenda rerum aut dolorum a quia ipsa. Mollitia earum nulla facilis ipsum.</p><p>Voluptas error delectus rerum et commodi voluptates omnis. Hic id voluptate sapiente placeat nisi.</p><p>Porro animi et reiciendis sint veniam. Optio ipsa tenetur ut id. Autem maxime reprehenderit hic repellendus necessitatibus sed. Ipsum quaerat eius voluptate in rerum rerum rerum.</p>', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17'),
(24, 2, 4, 'fjfjjfjffjfdgfda', 'fjfjjfjffjfdgfda', 'post-images/YUrqrZFSuCFXt9YF7l3Smlyoq1ThQuJN6DtN4rqt.jpg', 'fhfhfhgfhfghfghf', '<div>fhfhfhgfhfghfghf</div>', NULL, '2022-08-16 00:11:46', '2022-08-16 02:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Cahyo Suryono', 'fathonah.mulyani', 'adriansyah.simon@example.net', '2022-08-15 23:36:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VD3clQgwieMH6ySVmLeE9i8U8wAozYGYV5HUJ2r9XmxUwQOduZokKijxpHaN', '2022-08-15 23:36:17', '2022-08-15 23:36:17', 1),
(2, 'Viktor Gada Mandala S.I.Kom', 'ahasanah', 'saragih.raharja@example.org', '2022-08-15 23:36:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jv3llmuM0sAAPxQ1EyJQ9l5Z86jvofsBOwLB2QZFAfn8EPtLLNPsj9RGsa9s', '2022-08-15 23:36:17', '2022-08-15 23:36:17', 0),
(3, 'Janet Maimunah Purnawati', 'yzulaika', 'sihombing.puti@example.org', '2022-08-15 23:36:17', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QyN3mCut8X', '2022-08-15 23:36:17', '2022-08-15 23:36:17', 0),
(4, 'Ma\'ruf Fiardy', 'maruf25', 'maruf25@gmail.com', NULL, '$2y$10$DmsHr7Pt21oZr1aA76us3ekL8WhX3RCOM8QJuXmhs3vSmKpqDWxZa', NULL, '2022-08-15 23:36:17', '2022-08-15 23:36:17', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
