-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 09, 2019 at 08:03 AM
-- Server version: 5.7.28
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p2wisyst_gasc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mail` varchar(160) NOT NULL,
  `type` set('0','1','2') NOT NULL,
  `view` enum('0','1') NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `img` varchar(150) DEFAULT NULL,
  `lang` enum('1','2') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `last_login`, `mail`, `type`, `view`, `phone`, `fname`, `lname`, `img`, `lang`) VALUES
(12, 'gasc', 'e10adc3949ba59abbe56e057f20f883e', '2019-10-24 14:00:43', 'ashraf.m@wisyst.com', '0', '1', NULL, 'ashraf', 'mohammed', '0fAH.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `backend_option`
--

CREATE TABLE `backend_option` (
  `id` int(11) NOT NULL,
  `key_txt` varchar(150) DEFAULT NULL,
  `val` enum('0','1') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backend_option`
--

INSERT INTO `backend_option` (`id`, `key_txt`, `val`) VALUES
(1, 'linkedin', '0'),
(2, 'instagram', '1'),
(3, 'ar_name', '1'),
(4, 'en_name', '1'),
(5, 'job_link', '0'),
(6, 'facebook', '1'),
(7, 'twitter', '1'),
(8, 'instagram', '1'),
(9, 'phone', '1'),
(10, 'email', '1'),
(11, 'about_footer_en', '0'),
(12, 'about_footer_ar', '0'),
(13, 'address_eng', '1'),
(14, 'address_ar', '1'),
(15, 'message_email', '1'),
(16, 'map', '1'),
(17, 'job_link', '0'),
(18, 'slider_title_en', '1'),
(19, 'slider_title', '1'),
(20, 'slider_img', '1'),
(21, 'goals', '1'),
(22, 'mission', '1'),
(23, 'vision', '1'),
(24, 'about_us', '1'),
(25, 'banner_about', '0'),
(26, 'banner_services', '0'),
(27, 'services', '1'),
(28, 'banner_clients', '0'),
(29, 'clients', '1'),
(30, 'banner_events', '0'),
(31, 'banner_works', '0'),
(32, 'events', '1'),
(33, 'works', '0'),
(34, 'messages_banner', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` varchar(255) COLLATE utf8_bin NOT NULL,
  `data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `title_eng` varchar(255) DEFAULT NULL,
  `title_ar` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `view` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `title_eng`, `title_ar`, `link`, `img`, `view`) VALUES
(18, 'First Event', 'المعرض الاول', NULL, 'o3rb.jpg', '1'),
(19, 'First Event', 'المعرض الاول', NULL, 'DeHf.jpg', '1'),
(20, 'First Event', 'المعرض الاول', NULL, 'dn5q.jpg', '1'),
(21, 'Reaching the summit is difficult but not impossible', 'الوصول للقمة صعب ولكن ليس مستحيل', NULL, 'NDnb.jpg', '1'),
(25, 'Reaching the summit is difficult but not impossible', 'الوصول للقمة صعب ولكن ليس مستحيل', NULL, 'mmz8.jpg', '1'),
(26, '', '', NULL, 'eRxn.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `details` text,
  `view` enum('0','1') NOT NULL,
  `details_en` text,
  `creation_date` date DEFAULT NULL,
  `description_ar` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `special_date` varchar(150) DEFAULT NULL,
  `special_date_en` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `title_en`, `img`, `details`, `view`, `details_en`, `creation_date`, `description_ar`, `description_en`, `created_at`, `updated_at`, `special_date`, `special_date_en`) VALUES
(10, 'عنوان هناك حقيقة مثبتة منذ زمن طويل', 'Title There is a long established fact', 'kTLr.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضعهناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضعهناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضعهناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع</p>\r\n', '1', '<p dir=\"ltr\">A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or formA long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or formA long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or formA long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form</p>\r\n', '2019-10-15', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع', 'A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or fo', NULL, NULL, '15 اكتوبر 2019', '15 October 2019'),
(11, 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء', 'There is a long-established fact that the readable', 'a09c.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى للدى او الشكل توضع الفقرات فى الصفحة التى يقراها ولذلك يتم استخدام طريقة لوريم اييسوم.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى للدى او الشكل توضع الفقرات فى الصفحة التى يقراها ولذلك يتم استخدام طريقة لوريم اييسوم,هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى للدى او الشكل توضع الفقرات فى الصفحة التى يقراها ولذلك يتم استخدام طريقة لوريم اييسوم.</p>\r\n', '1', '<p dir=\"ltr\">There is a long-established fact that the readable content of an object will end the continent from focusing on the external shape of the diagram or the formatting paragraphs are placed on the page it reads and therefore the Lorem Ayesum method is used. Concentration on the external shape of the form or paragraphs are placed on the page they read and therefore use the Lorem Ayesum method</p>\r\n', '2019-10-15', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى', 'There is a long-established fact that the readable content of an object will end the continent from focusing', NULL, NULL, '15 اكتوبر 2019', '15 October 2019'),
(12, 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء ', '  There is a long-established fact that the readable ', '6sA4.jpg', '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span dir=\"RTL\" lang=\"AR-SA\" style=\"font-family:&quot;Arial&quot;,sans-serif\">هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى للدى او الشكلتوضع الفقرات فى الصفحة التى يقراها ولذلك يتم استخدام طريقة لوريم اييسوم.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى للدى او الشكل توضع الفقرات فى الصفحة التى يقراها ولذلك يتم استخدام طريقة لوريم اييسوم,هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى للدى او الشكل توضع الفقرات فى الصفحة التى يقراها ولذلك يتم استخدام طريقة لوريم اييسوم</span>.</span></span></p>\r\n', '1', '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\">There is a long-established fact that the readable content of an object will end the continent from focusing on the external shape of the diagram or the formatting paragraphs are placed on the page it reads and therefore the Lorem Ayesum method is used. Concentration on the external shape of the form or paragraphs are placed on the page they read and therefore use the Lorem Ayesum method</span></span></p>\r\n', '2019-10-15', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى', 'There is a long-established fact that the readable content of an object will end the continent from', NULL, NULL, '15 اكتوبر 2019', '15 October 2019'),
(13, 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء', 'There is a long-established fact that the readable content ', 'OgcJ.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى للدى او الشكل توضع الفقرات فى الصفحة التى يقراها ولذلك يتم استخدام طريقة لوريم اييسوم.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى للدى او الشكل توضع الفقرات فى الصفحة التى يقراها ولذلك يتم استخدام طريقة لوريم اييسوم,هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى للدى او الشكل توضع الفقرات فى الصفحة التى يقراها ولذلك يتم استخدام طريقة لوريم اييسوم.&nbsp;</p>\r\n', '1', '<p dir=\"ltr\">There is a long-established fact that the readable content of an object will end the continent from focusing on the external shape of the diagram or the formatting paragraphs are placed on the page it reads and therefore the Lorem Ayesum method is used. Concentration on the external shape of the form or paragraphs are placed on the page they read and therefore use the Lorem Ayesum method</p>\r\n', '2019-10-15', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى', '    There is a long-established fact that the readable content of an object will end the continent from focusing', NULL, NULL, '15 اكتوبر 2019', '15 October 2019');

-- --------------------------------------------------------

--
-- Table structure for table `home_messages`
--

CREATE TABLE `home_messages` (
  `id_message` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `view` enum('0','1') NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(150) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_messages`
--

INSERT INTO `home_messages` (`id_message`, `name`, `mail`, `message`, `view`, `date`, `phone`, `subject`, `updated_at`, `created_at`) VALUES
(13, 'عبدالله العنزي', 'abdullah1044@gmail.com', 'طلب فتح تسوية وقائية من الإفلاس ', '1', '2019-04-30 05:59:19', '0532686316', 'طلب فتح تسوية وقائية من الإفلاس ', NULL, NULL),
(14, 'magdy shaheen', 'magdy.yehia@gmail.com', 'sdasdasd', '1', '2019-05-28 11:03:37', '542684467', 'fgdgdasdsad', NULL, NULL),
(15, 'Robertstins', 'angelaexpiff@gmail.com', 'Hi!  alkosirlawfirm.com \r\n \r\nWe present oneself \r\n \r\nSending your message through the feedback form which can be found on the sites in the contact partition. Contact form are filled in by our program and the captcha is solved. The superiority of this method is that messages sent through feedback forms are whitelisted. This method improve the odds that your message will be read. Mailing is done in the same way as you received this message. \r\nYour  commercial offer will be open by millions of site administrators and those who have access to the sites! \r\n \r\nThe cost of sending 1 million messages is $ 49 instead of $ 99. (you can select any country or country domain) \r\nAll USA - (10 million messages sent) - $399 instead of $699 \r\nAll Europe (7 million messages sent)- $ 299 instead of $599 \r\nAll sites in the world (25 million messages sent) - $499 instead of $999 \r\nThere is a possibility of FREE TEST MAILING. \r\n \r\n \r\nDiscounts are valid until May 31. \r\nFeedback and warranty! \r\nDelivery report! \r\nIn the process of sending messages we don\'t break the rules GDRP. \r\n \r\nThis message is automatically generated to use our contacts for communication. \r\n \r\n \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype – FeedbackForm2019 \r\nEmail - FeedbackForm@make-success.com \r\nWhatsApp - +44 7598 509161 \r\nhttp://bit.ly/2W8NAHV \r\n \r\nThank you for your attention.', '1', '2019-06-01 04:57:19', '19149056084', 'FREE TEST MAILING', NULL, NULL),
(16, 'alkosirlawfirm.com', 'micgyhaelspaks@gmail.com', 'alkosirlawfirm.com   exquisiteoffers \r\n Well-founded click \r\nhttps://tgraph.io/roadtimmohyd1989-05-31', '1', '2019-06-04 02:07:42', '278475736', 'alkosirlawfirm.com  Hy there,  an amazingpropose  Good click', NULL, NULL),
(17, 'المستشار / مؤازر محمد المرصفي ', 'judgesgroup@gmail.com', 'السلام عليكم ورحمة الله وبركاته ، \r\nصاحب المعالي السيد المستشار الدكتور الوزىر  / سعد التركي-  سلمكم الله \r\n\r\nتقبل الله منا ومنكم ، وكل عام وسيادتكم بخير ، وعساكم من عواده ،   . \r\n  يطيب لي أن أسبق رسالتي هذه بتقديم أسمي آيات التهاني التبريكات والأماني والدعوات لشخصكم الكريم ومقامكم العظيم ، بعيدنا المبارك  ، أعاده الله تعالي علينا وعليكم وعلي أمتنا العربية والإسلامية بكل خير وبركات . اللهم آمين .\r\nويلزمني أن أبدأ رسالتي هذه بتعريف مختصر عني كما ىلى : \r\nالمستشار / مؤازر محمد المرصفي – قاض مصري - رئيس محكمة الجيزة الأسبق – نشأت في بيت قضائي لوالد كان يرحمه الله ، أحد أبرز قضاة مصر ، المستشار / محمد لبيب المرصفي – نائب رئيس محكمة النقض الأسبق ( أعلي درجة قضائية بالسلم القضائي العادي ) يرحمه الله . وحسبك أن تعلم أن هيئة الأمم المتحدة ، وهيئة الإستعلامات المصرية ، سبق وأن رشحته كأبرز قاض بمصر بالعام 1984 – الأمر المسلم به من كافة شيوخ القضاء المصري ، ولعلك إن تسأل عنه أي شيخ من شيخ القضاء المصري فلن تسمع سوي ما أجمع عليه شيوخ القضاء المصري من  أنه أستاذه ومن علمه القضاء حقا – يرحمك الله يا أبي .\r\nوأستصحب من مآثره ، فقهه الفريد في إختيار أسماء أولادهم ، فجميعنا خمسة أولاد – من خمسة حروف . أول حرف ( م ) – ثالث حرف ( ا ) – خامس حرف ( ر ) . مآثر – مؤازر – مشاعر – مناهل – مزاهر . \r\nرحمك الله يا أبي ، أين نحن من هؤلاء الرجال . اللهم أرحمه وأنر ووسع له قبره – مد بصره – اللهم آمين . \r\n       جدي الأكبر – الشيخ حسين المرصفي – أحد شيوخ الأزهر الشريف – قامة من قامات هذا الزمان ، ورائد البلاغة العربية المعاصر بمؤلفه ( الوسيلة الأدبية ) أول مؤلف بلاغي معاصر ، معلم أدباء وشعراء العصر ، ويالفخرى أن أميرهم شوقي قال فيه : ليس لأحد فضل علي في العلم ، سوي الشيخ المرصفي ، ونظم له البارودي شعرا بأسمه ، ولقبه أدباء وشعراء الغرب ( بأبن خلدون هذا العصر )  نقلا عن جريدة الحياة \r\nhttp://www.alhayat.com/article/369610/%D8%AD%D8%B3%D9%8A%D9%86-%D8%A7%D9%84%D9%85%D8%B1%D8%B5%D9%81%D9%8A-%D8%A7%D8%A8%D9%86-%D8%AE%D9%84%D8%AF%D9%88%D9%86-%D8%A7%D9%84%D8%B9%D8%B5%D8%B1-%D8%A7%D9%84%D8%AD%D8%AF%D9%8A%D8%AB \r\n. رحمك الله يا جدي ، الرجل المفتري عليه إعلاميا أسطورة هذا الزمان .\r\n          نشأت في بيت القضاء ، ونهلت من قيمه ، وتخرجت في كلية الحقوق بجامعة القاهرة بالعام مايو 1990   وعملت بتدريس كافة مواد القانون بمجرد تخرجي ولمدة ثلاثة سنوات حتي تاريخ ألتحاقي بالعمل بالنيابة العامة ، وكنت بالرغم من صغر سني أحد أشهر مدرسي وشارحي كافة مواد القانون ، حتي تخرج علي يدي الأف الطلاب ومنهم أكثر من 70 قاضيا ، والمئات من ضباط الشرطة ، فضلا عن جميع طلاب دولة الكويت من الدارسين بالجامعات المصرية ومنهم معالي المستشار الدكتور / فهد العفاسي – حفظه الله – وزير العدل الحالي ، وأخرين . \r\nوذلك لبراعتي في مهارات الشرح والتبسيط وتوصيل المعلومات ومتطلبات هذا العمل . \r\n      والتحقت بالعمل بالنيابة العامة بالعام 1994 وكيلا للنائب العام ، وتدرجت بالسلم الوظيفي عملت فيها بالعديد من النيابات ، ثم نقلت للعمل بالقضاء قاضيا - بعد حصولي علي المركز الأول بدورة إعداد القضاة بمركز الدراسات القضائية وكذا كافة الدورات القضائية التي شاركت فيها -  وكنت ألقب وسط زملائي القضاء بالعديد من الألقاب ومنها ( فقيه القضاة وأديبهم ) وسطرت لنفسي تاريخا مشرقا ومشرفا في البيت القضائي المصري ، حتي تركت العمل بالقضاء مؤخرا ، لأسباب شخصية لا أفضل ذكرها وهي ليست سياسية ولا نحوها. \r\nوأعمل حاليا خبير قانوني ومدرب قانوني – مستشار قانوني ومحام . واستنادا لخبراتي ومهاراتي الأكاديمية المميزة والمثقلة بخبرات عملية بالنيابة وبالقضاء بل وتميزي بالوسط القضائي كأحد أشهر قضاة مصر .، وقمت باعداد العدىد من دورات القانون المختلفة لكبار رجال القانون ، وشاركت مؤخرا فى التحضير لدورات السادة أعضاء النيابة العامة السعودية بالقاهرة رفق سعادة السيد / مروان سني  – حفظه الله – المركز السعودي للتدريب ،  كدورة التحقيق والترافع فى قضايا الأموال العامة ونحوها .  فضلا عن المشاركة بالدورات بدولة الكويت لاسيما دورات عقد الأوفسيت الكوىتى .\r\n وأقوم حالىا بالإعداد لمشروع قانونى عملاق بالمملكة العربية السعودية ودولة الإمارات المتحدة ودولة الكويت بأذن الله تعالي ، والله تعالي أسأل لي ولكم التوفيق والسداد والخير والرشاد ، اللهم آمين .\r\n\r\n      لكلّ امرئ شكلٌ من النّاس     وكلّ امرئٍ يَهوى إلى من يشاكلهُ.\r\nأما بعد - فهذه أول رسالة أكتُبُها إلى من لم تكُنْ لي به جامعة جسمية ، ولم تضمني وإياه حفلةُ تعارف شخصية ، وهي وإن كانت - في عُرف غيري - تُعدُ هُجُوماً أو تُحَس فضولاً ، إلا أني أعتقدُ أنها أُوفدت على كريم يُكرم وِفادتها ، ويتقبلُ ما تهديه إليه من زعيم تحية وجليل إجلال ، ويجتلي من خلالها إرادة وُد ، ورجاء ولاء ، وبُغية فضل ورغبة في إخاء ، فيُحلها منه محل القبولِ ويدرأ عنها وصمة الفضول.\r\nسيدي : إنً مكارمَ الأخلاقِ ومعاليَ الهِمم مما تسترقُ القلوب وتسرِقُ العقول ، وتمتلك الأرواح وإن لم تتلاقَ الأشباحُ ، ولا جَرَمَ أن ما تعارف من الأرواح ائتلَف ، وما تناكر منها كما قيل اختلف ، ونحن - وإن بَعُدت بيننا الشقةُ ، ولم يسبق لنا باللقاء عهد - فلُحمةُ الأدب تجمعُنا ، ووحدة الوجهة تضمُنا ، ولُحمة الأدب أقوى من لُحمة النسب ، وجامعة الوجهة فوق اجتماع الوجوه ، ولئن لم تجمعنا لحمة النسب فقد جمعتنا حرفة الأدب ، أو لم يضمنا قبل مصيفُ ومُرتبع ، فالطيور على أشكالها تقع ، وشبه الشيء مُنجذبُ إليه ، وأخو الفضائل هو المعول عليه. \r\nوقد رأيت أن أزدلف إليك بالمكاتبة ، وأتوسل إلى شرف التعرف بالمراسلة ، لنشترك في المعرفة الترسُلية ، فنتراءى بأعيُن الطروس قبل أعين الرؤوس ، ونتجاذب أحاديث المراسلة  . \r\n        أيها السيد العزيز الجناب الغزير الآداب ، قد علمت - ولا أزيدك علماً زادك الله ولا نقصك - أن الإنسان كما اشتق اسمه من الأنس كذلك جبل عليه مسماه ، وأن المجتمع الإنساني عقد يتحلى به صدر الزمان ، نظامه متآلف ، ووساطته التعارف ، فهذان الأمران هما قطب المدار في هذه الدار ، لهذا العالم ، من لدن آدم ، وليس إلا بهما يحسُنُ الحال وينعم البال ، وتدر ضروع المنافع ، وتَتفجرُ عيون الفوائد ، ومن ثم كان أوفر الناس حظاً من مغنم الإنسانية ، من يَألف ويُؤلف ، ولا خير فيمن لا ولا... ، و ناهيك بخلق امتن الله به على عباده ، إذ قال عز من قائل: (وَجَعَلْنَاكُمْ شُعُوباً وَقَبَآئِلَ لِتَعَارَفُوَاْ) . \r\n        ويعلم سيدي أن المودة لا تُباع ولا تُشترى ، وإنما هي نتيجة الاجتماع والتعارُف ، وقد خُلق الإنسان مضطراً إليهما ، لأن انتظام العُمران عليهما موقوفُ ، ولهذا شهد العيان بأن المنفرد بأعماله المستبد بآرائه ، عرضة للخطأ ، مظنة لعدم الثقة ، بخلاف ما إذا كان الاشتراك في الفكر قاعدة للعمل فلا بد أن الصواب يتمحضُ منه ، لضعف التفرُد وقوة الاجتماع ، إذ لا جرم أن المرء كما قيل: \"قليل بنفسه كثير بإخوانه\" .  وأنا أخترتُك سعيًا لكسب المعالي بمعرفتكم (فكُلّ امْرِىءٍ بِمَا كَسَبَ رَهَينٌ)  إذ قىل :  \r\nعن المرء لا تسألْ وسلْ عن قرينه                فكلُّ قرين بالمقارنِ يقتدي\r\n   فإن الأَدب أحسنُ ما يُستصبحُ بأنوارِهِ ، وأشرف ما يُتسابقُ لاقتطاف أثمارهِ ، ويُحمدُ التطفُلُ على موائده ، ويُمدح التنافس في التِقاطِ فوائده ، فجعلت طلبَ الانتظامِ في سلك أرباب الأقلام وسيلةً لوُرُود عذْب وداده .\r\n          ذلك \"أيها السيد\" هو الذي بعثني أن اكتب إليك ، أستفتح باب مودتك بمفتاح الترسل ، وأستصبح في سبيل صحبتك بمصباح التوسُل ، لا أبالي بما ينسب إلي ويُنتقمُ علي ، ممن عسى أن يقول: مالك ولهذا الفضول ! وكيف تتطفل على مأدبة أديبة لم تدع إليها! وهل هذا منك إلا أشبه بالتبرج لغير خاطب؟ \r\nأيها المنتقد : هون عليك ما تجد ، فلو علمت أن ظل الآداب شامل ، ودعوة المودة الجفلى ، لا يزاد عنها واغل ، لأسرعت معي إلي الوغول ، ولم تر في التودد إلى أهل الفضل من فضول ، وأي عيب على النكرة في التحلي بحلية المعرفة ؟ ومصاحبة الأعلام؟ أما سمعت قول القائل:\r\nبصُحبتكَ الكرامَ تعدُّ منهم                وتأمنُ من ملمّات الزّمان\r\nوإن كنتُ المتطفلَ على مائدة مودتك ، فلي نفس أديب لا ترى العز إلا في الترامي على ذُوى الكمال ، لازلتَ على مرقى الجلال ، فعساه يحظى بالقبول فأبلغ غاية المأمول  .\r\nأطال الله لك البقاء كتطول يديك بالعطاء ، والسلام .\r\nالمستشار / مؤازر محمد المرصفي \r\nالفقيه القضائي – رئيس محكمة الجيزة الأسبق \r\nالمدرب والمحاضر القانوني \r\n 00201122212158   واتس \r\njudgesgroup@gmail.com \r\n\r\n \r\nويشرفني أن أهنئكم بعيدنا المبارك أعاده الله علينا وعليكم جميعا وعلي أمتنا العربية والإسلامية بكل خير وسعادة ورخاء ، وأهدي لكم ، من  حقيبة دورة قانونية من إعدادي وتنفيذي   (  كيف تصبح محام ناجح )   فن الصياغة  - كيفية الشروع في عمل مواضيع الإنشاء؟  فتناولكم لها بشرف القُبُول ، يكون غاية مطلوبي ونهاية المأمول .\r\n \r\n          - إذا عن لك ، أو اقترح (عرض) عليك إنشاء موضوع فأنت منوط (ملزم) إذًا بأمرين : التفكر أولاً والكتابة ثانياً ، فإذا أنعَمت الفكر ملياً (ساعات طويلة) في أجزاء الموضوع ، بعد استيلاء الإحساس بها على قلبك ، وقلًبَتَها على جميع الأوجه المُمكنة فيها ، تولد في خيالك - لكل جزء - عدة صور ، تتفاوت في تأديته كتفاوت صور المنظوم في الحسن والقبح  ، فبعضها يستميل النفوس بتأثيره في الحواس ، وبعضها يوجب نفورها ،، وبعضها بين بين، وإذا تَشَخصت الصُوَرُ في الخيال يتخيّر العقل منها ماله المكانة الرفيعة في حُسن تأْدية الغرض المناسب للمقام ، فإن كان المقامُ للتًحريض على القتَالِ مثلاً انتخب الصورة المهيًجة للإحسَاس ، المشجعة للنفس على اقتحام الأخطار ، وإن كان المقامُ مقامَ فرحٍ وسُرور انتخب نما يشرح الصُدور ، وتقر به العيون وتروق به الأرواح ويذهب عنها الحزن والأتراح.\r\nوبعد تشخيص الصُوَر وتخير المنُاسبة منها ، تعين - أيها المنشئ - بحُسن تأليف وترتيب ما تخيرتَه بأن تجمع الصور المُناسبة التي يرتبطُ بعضهَا ببعض بدون تكلف ، بحيث يكون المجموع منسجماً يمضي وحده مع النفس دون علاج وتعب في فهم الغرض منه ، وحينئذ يُمكنك إظهَارُ هذه الصورة المعقولة في صورة محسوسة بواسطة القلم.\r\nالمستشار مؤازر المرصفي\r\n – رئيس محكمة الجيزة الأسبق – المدرب القانوني\r\n\r\n\r\n', '1', '2019-06-05 14:44:28', '00201122212158', '  رسالة  ( جواهر الأدب ) من قاضى مصرى . كل عام وسىادتكم بخىر‎', NULL, NULL),
(18, 'Charlesareli', 'pristupa_anatoliy@mail.ru', 'Прогоны Xrumer \r\nПродвижение сайтов. <a href=https://xrumer.pro/xrumer/kak-zabanity-sait/>Большой ссылочный взрыв</a> на ваш страх и риск за. \r\nВы можете потерять сайт. \r\n \r\nПочта: support@Xrumer.pro', '1', '2019-06-05 22:26:34', '87469312617', 'Прогоны Xrumer', NULL, NULL),
(19, 'ContactForm', 'raphaeexpiff@gmail.com', 'Ciao!  alkosirlawfirm.com \r\n \r\nWe suggest \r\n \r\nSending your message through the Contact us form which can be found on the sites in the contact section. Feedback forms are filled in by our software and the captcha is solved. The superiority of this method is that messages sent through feedback forms are whitelisted. This technique raise the probability that your message will be open. \r\n \r\nOur database contains more than 25 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 99 USD \r\n \r\nFREE TEST mailing of 50,000 messages to any country of your choice. \r\n \r\nWhen ordering a newsletter on June 8 and 9, you will be given a 50 percent discount. ( Weekend discount) \r\n \r\nThis message is automatically generated to use our contacts for communication. \r\n \r\n \r\n \r\nContact us. \r\nSkype live:contactform_18 \r\nEmail - ContactForm@make-success.com \r\nWhatsApp - +353899461815', '1', '2019-06-08 12:48:57', '375627528', 'Delivery of your email messages.', NULL, NULL),
(20, 'alkosirlawfirm.com', 'micgyhaelspaks@gmail.com', 'Here is  a good  promotion for winning. alkosirlawfirm.com \r\nhttp://bit.ly/2KApkvE', '1', '2019-06-13 01:29:24', '254611127', 'That is an importantpromotion for victory. alkosirlawfirm.com', NULL, NULL),
(21, 'REMONTKr', 'a.a.3g.h.dd@gmail.com', 'House 4 sale \\ Video\r\n<p>House 4 sale House 4 sale 348 ads in 4 Bedroom House for sale Ready for a new challenge? From electrician to head chef, care assistant to courier, you’ll find thousands of new opportunities on Jobs From Gumtree Ads posted, Friday 5th April Very large four bedroom, two bathroom house in Beckton E16 A bright and spacious four bedroom, two bathroom family home situated in a quiet cul de sac in Beckton boasting front and rear garden with modern interiors. This property offers four large bedrooms master with en-suite, a huge reception room, a famil Seller type Agency Property type ...</p>\n<p>The post <a href=\"http://credits.remmont.com/house-4-sale-video/\">House 4 sale \\ Video</a> appeared first on <a href=\"http://credits.remmont.com\">Credits</a>.</p>\r\n\r\n \r\n<a href=http://insurance.remmont.com>Uganda Business</a> \r\n<a href=\"remmont.com/category/auto/\">auto upholstery supplies</a> <a href=\"remmont.com/category/car/\">find car model from registration</a> <a href=\"remmont.com/category/credit/\">check ur credit score for free</a> <a href=\"remmont.com/category/insurance/\">ford insurance</a> <a href=\"remmont.com/category/rental/\">beach house rentals</a> <a href=\"remmont.com/category/real-estate/\">real estate houston</a> <a href=\"remmont.com/category/loan/\">cash advance loan</a> <a href=\"remmont.com/category/travel/\">budget travel</a>', '1', '2019-06-14 16:17:14', '87117971642', 'News: Santa-ana Business Advanced News. remmont.com', NULL, NULL),
(22, 'g4v9j6s7', 'uabbzjmx@gmail.com', '<a href=\" https://customessayy.us/ \">custom essay help</a>, custom essay writing cheap \r\ncustom writing essays services, <a href=\" https://customessayy.us/ \">order custom essay online</a> \r\nhttps://customessayy.us/', '1', '2019-06-16 22:25:39', '84551183843', 'custom essay station  suxm', NULL, NULL),
(27, 'h9o3j9y3', 'hdadcgkp@gmail.com', '<a href=\" https://buyessayy.us/ \">buy an essay cheap</a>, buy cheap essays \r\nbuy essay papers, <a href=\" https://buyessayy.us/ \">cheap essay buy</a> \r\nhttps://buyessayy.us/', '1', '2019-06-27 15:37:18', '82864932326', 'cheap essays to buy  kznd', NULL, NULL),
(28, 'RichardPal', 'animatedvideos33@gmail.com', 'Hi, I just came across your website and wanted to get in touch. \r\n \r\nI run an animation studio that makes animated explainer videos helping companies to explain what they do, why it matters and how they\'re unique in less than 2 minutes. \r\n \r\nYou can watch some of the videos we’ve made here: \r\nhttp://bit.ly/300wUns - what do you think? \r\n \r\nI would love to make an awesome animated video for you guys. \r\n \r\nWe have a smooth production process and handle everything needed for a high-quality video that typically takes us 6 weeks to produce from start to finish. \r\n \r\nFirst, we nail the script, design storyboards you can’t wait to see animated. Voice actors in your native language that capture your brand and animation that screams premium with sound design that brings it all together. \r\n \r\nOur videos are made from scratch and designed to make you stand out and get results. No templates, no cookie cutter animation that tarnishes your brand. \r\n \r\nIf you’re interested in learning more, please get in touch on the email below: \r\nEmail: storybitevideos@gmail.com \r\n \r\nThanks for taking the time to read this.', '1', '2019-07-03 04:16:12', '126631447', 'Video marketing at alkosirlawfirm.com?', NULL, NULL),
(29, 'شروط التسجيل', '', '05511562670551156267', '1', '2019-08-21 22:00:00', '0551156267', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

CREATE TABLE `home_pages` (
  `id` int(11) NOT NULL,
  `home_about` text,
  `home_about_en` text,
  `home_vision` text,
  `home_mission` text,
  `home_goals` text,
  `home_vision_en` text,
  `home_mission_en` text,
  `home_goals_en` text,
  `main_img` varchar(255) DEFAULT NULL,
  `slider_background` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_pages`
--

INSERT INTO `home_pages` (`id`, `home_about`, `home_about_en`, `home_vision`, `home_mission`, `home_goals`, `home_vision_en`, `home_mission_en`, `home_goals_en`, `main_img`, `slider_background`, `created_at`, `updated_at`) VALUES
(1, 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى', 'There is a long-established fact that the readable content of an object will end the continent from focusing', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصغحة ما سينتهى القارى عن التركيز على الشكل الخارجى', 'There is a long-established fact that the readable content of an object will end the continent from focusing', 'There is a long-established fact that the readable content of an object will end the continent from focusing', 'There is a long-established fact that the readable content of an object will end the continent from focusing', NULL, 'qswq.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id_message` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `view` enum('0','1') NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(150) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id_message`, `name`, `mail`, `message`, `view`, `date`, `phone`, `creation_date`, `created_at`, `updated_at`) VALUES
(1, 'تطبيقات اندرويد', 'ashraf.m@wisyst.com', 'asdasd', '1', '2019-10-24 08:55:54', '0551156267', NULL, '2019-10-24 08:55:54', '2019-10-24 08:55:54'),
(2, 'تطبيقات اندرويد', 'ashraf.m@wisyst.com', 'erewrwe', '1', '2019-10-24 08:57:34', '0551156267', NULL, '2019-10-24 08:57:34', '2019-10-24 08:57:34'),
(3, 'عامر الابراهيمى', 'تنميباشنتسثبلاتسين', 'عهغلانمزغالغهعملعالاهعغلهعنك', '1', '2019-10-24 14:17:59', '09665652452354463255442256321', NULL, '2019-10-24 14:17:59', '2019-10-24 14:17:59'),
(4, 'عامر الابراهيمى', 'تنميباشنتسثبلاتسين', 'عهغلانمزغالغهعملعالاهعغلهعنك', '0', '2019-10-24 14:18:07', '09665652452354463255442256321', NULL, '2019-10-24 14:18:07', '2019-10-24 14:18:07'),
(5, 'عامر الابراهيمى', 'تنميباشنتسثبلاتسين', 'عهغلانمزغالغهعملعالاهعغلهعنك', '1', '2019-10-24 14:18:15', '09665652452354463255442256321', NULL, '2019-10-24 14:18:15', '2019-10-24 14:18:15'),
(6, 'عامر الابراهيمى', 'تنميباشنتسثبلاتسين', 'عهغلانمزغالغهعملعالاهعغلهعنك', '0', '2019-10-24 14:25:36', '09665652452354463255442256321', NULL, '2019-10-24 14:25:36', '2019-10-24 14:25:36'),
(7, 'عامر الابراهيمى', 'تنميباشنتسثبلاتسين', 'عهغلانمزغالغهعملعالاهعغلهعنك', '0', '2019-10-24 14:26:04', '09665652452354463255442256321', NULL, '2019-10-24 14:26:04', '2019-10-24 14:26:04');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title_eng` varchar(255) NOT NULL DEFAULT '',
  `title_ar` varchar(255) DEFAULT NULL,
  `img` varchar(150) DEFAULT NULL,
  `details` text,
  `details_ar` text,
  `view` enum('0','1') NOT NULL DEFAULT '0',
  `description_ar` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title_eng`, `title_ar`, `img`, `details`, `details_ar`, `view`, `description_ar`, `description_en`, `creation_date`, `created_at`, `updated_at`) VALUES
(7, 'Service name', 'اسم الخدمة', '3ARD.jpg', '<p dir=\"ltr\">A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.</p>\r\n', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة .هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى\r\n\r\nهناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة .هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى\r\n\r\n', '1', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل  الخارجى للنص او شكل', '   A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text ', '2019-08-18', NULL, NULL),
(8, 'Service name', 'اسم الخدمة', 'xSiZ.jpg', '<p>There is a long-established fact that the readable content of an object will end the continent from focusingThere is a long-established fact that the readable content of an object will end the continent from focusingThere is a long-established fact that the readable content of an object will end the continent from focusing</p>\r\n', '<p>نحن نقدم لك افضل الخدمات لتساعدك فى نجاح شركتك هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة&nbsp;<br />\r\n&nbsp;</p>\r\n', '1', 'نحن نقدم لك افضل الخدمات لتساعدك فى نجاح شركتك هناك حقيقة مثبتة منذو زمن طويل ', 'There is a long-established fact that the readable content of an object will end the continent from focusing', '2019-10-15', NULL, NULL),
(9, 'Service name', 'اسم الخدمة3', '3ARD.jpg', '<p dir=\"ltr\">A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.</p>\r\n', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة .هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى\r\n\r\nهناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة .هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى\r\n\r\n', '1', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل  الخارجى للنص او شكل', '   A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text ', '2019-08-18', NULL, NULL),
(10, 'Service name', 'اسم الخدمة4', 'xSiZ.jpg', '<p>There is a long-established fact that the readable content of an object will end the continent from focusingThere is a long-established fact that the readable content of an object will end the continent from focusingThere is a long-established fact that the readable content of an object will end the continent from focusing</p>\r\n', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة .هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى\r\n\r\nهناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة .هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى\r\n\r\nهناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة .هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل الخارجى\r\n\r\n', '1', 'نحن نقدم لك افضل الخدمات لتساعدك فى نجاح شركتك هناك حقيقة مثبتة منذو زمن طويل ', 'There is a long-established fact that the readable content of an object will end the continent from focusing', '2019-10-15', NULL, NULL),
(11, 'Service name', 'اسم الخدمة5', '3ARD.jpg', '<p dir=\"ltr\">A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.</p>\r\n', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة</p>\r\n', '1', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل  الخارجى للنص او شكل', '   A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text ', '2019-08-18', NULL, NULL),
(12, 'Service name', 'اسم الخدمة6', 'xSiZ.jpg', '<p>There is a long-established fact that the readable content of an object will end the continent from focusingThere is a long-established fact that the readable content of an object will end the continent from focusingThere is a long-established fact that the readable content of an object will end the continent from focusing</p>\r\n', '<p>نحن نقدم لك افضل الخدمات لتساعدك فى نجاح شركتك هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة&nbsp;<br />\r\n&nbsp;</p>\r\n', '1', 'نحن نقدم لك افضل الخدمات لتساعدك فى نجاح شركتك هناك حقيقة مثبتة منذو زمن طويل ', 'There is a long-established fact that the readable content of an object will end the continent from focusing', '2019-10-15', NULL, NULL),
(13, 'Service name', 'اسم الخدمة7', '3ARD.jpg', '<p dir=\"ltr\">A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text or form.</p>\r\n', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة</p>\r\n', '1', 'هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل  الخارجى للنص او شكل', '   A long-established fact is that the readable content of the Masinhe Continental page is about focusing on the text ', '2019-08-18', NULL, NULL),
(14, 'Service name', 'اسم الخدمة8', 'xSiZ.jpg', '<p>There is a long-established fact that the readable content of an object will end the continent from focusingThere is a long-established fact that the readable content of an object will end the continent from focusingThere is a long-established fact that the readable content of an object will end the continent from focusing</p>\r\n', '<p>نحن نقدم لك افضل الخدمات لتساعدك فى نجاح شركتك هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة&nbsp;<br />\r\n&nbsp;</p>\r\n', '1', 'نحن نقدم لك افضل الخدمات لتساعدك فى نجاح شركتك هناك حقيقة مثبتة منذو زمن طويل سيشيصيضص', '   There is a long-established fact that the readable content of an object will end the continent from focusing', '2019-10-15', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_infos`
--

CREATE TABLE `site_infos` (
  `Id` int(11) NOT NULL,
  `name_site` varchar(255) DEFAULT NULL,
  `name_site_ar` varchar(255) NOT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `favicon` varchar(150) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(120) DEFAULT NULL,
  `facebook` varchar(120) DEFAULT NULL,
  `twitter` varchar(120) DEFAULT NULL,
  `instagram` varchar(120) DEFAULT NULL,
  `message_email` varchar(120) DEFAULT NULL,
  `address_eng` varchar(255) DEFAULT NULL,
  `address_ar` varchar(255) DEFAULT NULL,
  `about_footer_ar` varchar(255) DEFAULT NULL,
  `about_footer_en` varchar(255) DEFAULT NULL,
  `job_link` varchar(200) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `map` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `footer_log` varchar(255) DEFAULT NULL,
  `footer_log_en` varchar(255) DEFAULT NULL,
  `logo_en` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_infos`
--

INSERT INTO `site_infos` (`Id`, `name_site`, `name_site_ar`, `logo`, `favicon`, `keywords`, `description`, `email`, `phone`, `facebook`, `twitter`, `instagram`, `message_email`, `address_eng`, `address_ar`, `about_footer_ar`, `about_footer_en`, `job_link`, `linkedin`, `map`, `updated_at`, `created_at`, `footer_log`, `footer_log_en`, `logo_en`) VALUES
(1, 'GASC', 'المنيوم جاسكــ', 'EL5D.png', 'CPnR.png', 'سيبسي', 'سيبسي', 'info@wisyst.com', '0567809390', 'https://www.facebook.com', 'https://www.facebook.com', 'https://www.facebook.com', 'info@wisyst.com', 'Riyadh - Head Office PO Box 90499 Riyadh 11613', 'مركز القادة (1)، شارع التخصصي، حي العليا، الرياض', NULL, NULL, NULL, NULL, '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d29840515.45599243!2d45.07410000000001!3d24.078942!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x15e7b33fe7952a41%3A0x5960504bc21ab69b!2z2KfZhNiz2LnZiNiv2YrYqQ!5e0!3m2!1sar!2seg!4v1571668944265!5m2!1sar!2seg\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', NULL, NULL, 'footer_logo.png', 'englogofooter.png', 'englogo.png');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `about` text,
  `about_img` varchar(150) DEFAULT NULL,
  `about_banner` varchar(150) DEFAULT NULL,
  `clients_banner` varchar(150) DEFAULT NULL,
  `contact_banner` varchar(150) DEFAULT NULL,
  `works_banner` varchar(150) DEFAULT NULL,
  `vision` text,
  `vision_en` text,
  `mission` text,
  `mission_en` text,
  `events_banner` varchar(150) DEFAULT NULL,
  `about_en` text,
  `services_banner` varchar(150) DEFAULT NULL,
  `goals` text,
  `goals_en` text,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `about`, `about_img`, `about_banner`, `clients_banner`, `contact_banner`, `works_banner`, `vision`, `vision_en`, `mission`, `mission_en`, `events_banner`, `about_en`, `services_banner`, `goals`, `goals_en`, `updated_at`, `created_at`) VALUES
(1, '<p>با توجه به مسائل مربوط به یک پروژه و شرایطی که برای انجام آن وجود دارد ممکن است به تست UI نیاز داشته باشیم. باید دید آیا پیاده سازی تست UI چه ارزشی به انجام و توسعه این پروژه اضافه خواهد کرد، گاه پیاده سازی این تست ها البته در بلند مدت ممکن است درصد بسیار زیادی در بهبود توسعه و ارائه ی ارزش به مشتری تاثیر داشته باشد. گاهی نیز استفاده ی کورکورانه باعث میشود که یک هزینه ی سنگین روی دست تیم تست یا توسعه برجای بگذارد.</p>\r\n', '8YNv.jpg', 'tH6w.jpg', 'S6k9.jpg', 'wymm.jpg', 'UOIG.jpg', '<p>با توجه به مسائل مربوط به یک پروژه و شرایطی که برای انجام آن وجود دارد ممکن است به تست UI نیاز داشته باشیم. باید دید آیا پیاده سازی تست UI چه ارزشی به انجام و توسعه این پروژه اضافه خواهد کرد، گاه پیاده سازی این تست ها البته در بلند مدت ممکن است درصد بسیار زیادی در بهبود توسعه و ارائه ی ارزش به مشتری تاثیر داشته باشد. گاهی نیز استفاده ی کورکورانه باعث میشود که یک هزینه ی سنگین روی دست تیم تست یا توسعه برجای بگذارد.</p>\r\n', '<p>ExamsLead Software Certifications CSTE dumps PDF are best way to get highest scores in the CSTE exam. Get free Software Certifications CSTE dumps demo before buy.CSTE Certified Software Test Engineer CSTE exam is one of the prestigious certification exams that IT professionals take to boost their career. After becoming a Software Certifications certified professional you can achieve your career goals and have a successful professional life. So, if you want to take the Software Certifications CSTE exam and came all the way here to learn how to get highest scores in the Certified Software Tester CSTE exam then here you will get to know the answer to this question. Passing CSTE Certified Software Test Engineer CSTE exam requires your efforts and time but at the same time, you also need a reliable preparation material that ensures your success in the Software Certifications CSTE exam. You can find many preparation materials online but you will have to be careful about the scams. Find a reliable learning source and then make your purchase. ExamsLead is one of the most trusted learning sources for the exams like Software Certifications CSTE exam.</p>\r\n', '<p>با توجه به مسائل مربوط به یک پروژه و شرایطی که برای انجام آن وجود دارد ممکن است به تست UI نیاز داشته باشیم. باید دید آیا پیاده سازی تست UI چه ارزشی به انجام و توسعه این پروژه اضافه خواهد کرد، گاه پیاده سازی این تست ها البته در بلند مدت ممکن است درصد بسیار زیادی در بهبود توسعه و ارائه ی ارزش به مشتری تاثیر داشته باشد. گاهی نیز استفاده ی کورکورانه باعث میشود که یک هزینه ی سنگین روی دست تیم تست یا توسعه برجای بگذارد.</p>\r\n', '<p>ExamsLead Software Certifications CSTE dumps PDF are best way to get highest scores in the CSTE exam. Get free Software Certifications CSTE dumps demo before buy.CSTE Certified Software Test Engineer CSTE exam is one of the prestigious certification exams that IT professionals take to boost their career. After becoming a Software Certifications certified professional you can achieve your career goals and have a successful professional life. So, if you want to take the Software Certifications CSTE exam and came all the way here to learn how to get highest scores in the Certified Software Tester CSTE exam then here you will get to know the answer to this question. Passing CSTE Certified Software Test Engineer CSTE exam requires your efforts and time but at the same time, you also need a reliable preparation material that ensures your success in the Software Certifications CSTE exam. You can find many preparation materials online but you will have to be careful about the scams. Find a reliable learning source and then make your purchase. ExamsLead is one of the most trusted learning sources for the exams like Software Certifications CSTE exam.</p>\r\n', 'ObEM.jpg', '<p>ExamsLead Software Certifications CSTE dumps PDF are best way to get highest scores in the CSTE exam. Get free Software Certifications CSTE dumps demo before buy.CSTE Certified Software Test Engineer CSTE exam is one of the prestigious certification exams that IT professionals take to boost theircareer. After becoming a Software Certifications certified professional you can achieve your career goals and have a successful professional life. So, if you want to take the Software Certifications CSTE exam and came all the way here to learn how to get highest scores in the Certified Software Tester CSTE exam then here you will get to know the answer to this question. Passing CSTE Certified Software Test Engineer CSTE exam requires your efforts and time but at the same time, you also need a reliable preparation material that ensures your success in the Software Certifications CSTE exam. You can find many preparation materials online but you will have to be careful about the scams. Find a reliable learning source and then make your purchase. ExamsLead is one of the most trusted learning sources for the exams like Software Certifications CSTE exam.</p>\r\n', 'B7Vu.jpg', '<p>با توجه به مسائل مربوط به یک پروژه و شرایطی که برای انجام آن وجود دارد ممکن است به تست UI نیاز داشته باشیم. باید دید آیا پیاده سازی تست UI چه ارزشی به انجام و توسعه این پروژه اضافه خواهد کرد، گاه پیاده سازی این تست ها البته در بلند مدت ممکن است درصد بسیار زیادی در بهبود توسعه و ارائه ی ارزش به مشتری تاثیر داشته باشد. گاهی نیز استفاده ی کورکورانه باعث میشود که یک هزینه ی سنگین روی دست تیم تست یا توسعه برجای بگذارد.</p>\r\n', '<p>ExamsLead Software Certifications CSTE dumps PDF are best way to get highest scores in the CSTE exam. Get free Software Certifications CSTE dumps demo before buy.CSTE Certified Software Test Engineer CSTE exam is one of the prestigious certification exams that IT professionals take to boost their career. After becoming a Software Certifications certified professional you can achieve your career goals and have a successful professional life. So, if you want to take the Software Certifications CSTE exam and came all the way here to learn how to get highest scores in the Certified Software Tester CSTE exam then here you will get to know the answer to this question. Passing CSTE Certified Software Test Engineer CSTE exam requires your efforts and time but at the same time, you also need a reliable preparation material that ensures your success in the Software Certifications CSTE exam. You can find many preparation materials online but you will have to be careful about the scams. Find a reliable learning source and then make your purchase. ExamsLead is one of the most trusted learning sources for the exams like Software Certifications CSTE exam.</p>\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `view` enum('0','1') DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `img`, `view`, `title`, `title_en`, `creation_date`, `created_at`, `updated_at`) VALUES
(1, 'kiME.jpg', '1', 'نحن نقدم لك افضل الخدمات لتساعدك فى نجاح شركتك', 'We provide you with the best services to help you in the success of your company', '2019-10-14', NULL, NULL),
(2, 'SZDU.jpg', '1', 'نحن نقدم لك افضل الخدمات لتساعدك فى نجاح شركتك', 'Optimal choice of quality', '2019-10-14', NULL, NULL),
(3, 'vjHz.jpg', '1', 'نحن نقدم افضل جودة للخدمة ', 'We provide the best quality of service', '2019-10-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_setting`
--

CREATE TABLE `system_setting` (
  `id` int(11) NOT NULL,
  `key_txt` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `txt_value` varchar(150) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `system_setting`
--

INSERT INTO `system_setting` (`id`, `key_txt`, `txt_value`) VALUES
(1, 'logo', '(width:200px,height:100px)(PNG|JPG|JPEG)'),
(2, 'favicon', '(width:32px,height:32px)(PNG|JPG|JPEG)'),
(3, 'home_intro', '(width:450px,height:350px)(PNG|JPG|JPEG|GIF)'),
(4, 'clients', '(width:600px,height:400px)(PNG|JPG|JPEG|GIF)'),
(5, 'our_files', '(PNG|JPG|JPEG|GIF|PDF|DOC|DOCX|XLS|XLSX)'),
(6, 'main_color', '2d3090'),
(7, 'icon_service', '(width:64px,height:64px)(PNG|JPG|JPEG)'),
(8, 'img_service', '(width:400px,height:300px)(PNG|JPG|JPEG)');

-- --------------------------------------------------------

--
-- Table structure for table `translate_txt`
--

CREATE TABLE `translate_txt` (
  `id` int(11) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `txt_ar` varchar(255) DEFAULT NULL,
  `txt_en` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `translate_txt`
--

INSERT INTO `translate_txt` (`id`, `value`, `txt_ar`, `txt_en`) VALUES
(1, 'about_quser', 'عن المجموعة', 'About Group'),
(2, 'home_page', 'الرئيسية', 'Home'),
(3, 'about_page', 'من نحن', 'About Us'),
(4, 'clients', 'معرض الأعمال', 'Gallery'),
(5, 'services', 'الخدمات', 'Our Services'),
(6, 'works', 'الأخبار', 'News'),
(7, 'contact_page', 'تواصل معنا', 'Contact Us'),
(8, 'job_page', 'التوظيف', 'Jobs'),
(9, 'event_page', 'فعاليات الشركة', 'Events'),
(12, 'langauge', 'اللغة', 'Language'),
(13, 'arabic', 'عربي', 'Arabic'),
(14, 'english', 'English', 'English'),
(15, 'read_more', 'اقرأ المزيد', 'Read More'),
(16, 'important_Links', 'روابط هامة', 'Important Links'),
(20, 'intro_clients', 'عملاء تشرفنا بخدمتهم', 'Clients are honored to serve them'),
(21, 'copy_right', 'برمجة وتصميم', 'Designed & Developed By'),
(22, 'no_data', 'نأسف لعدم وجود محتوى', 'Sorry, No Data'),
(23, 'about_Vision', 'رؤيتنا', 'Our Vision'),
(24, 'phone_number', 'رقم الهاتف', 'Phone Number'),
(25, 'address_foot', 'العنوان', 'Address'),
(26, 'email_foot', 'البريد الإلكتروني', 'Email'),
(27, 'copy_right_foot', 'جميع الحقوق محفوظة لدى GASC© 2019. برمجة وتصميم ', 'All Rights Reserved for GASC ©2019. Developed & Designed by '),
(28, 'copy_comp', ' واي سيست', ' Wisyst'),
(29, 'connect_with', 'يسعدنا تواصلكم', 'Contact Us'),
(30, 'send_contact', 'أرسل الرسالة', 'Send'),
(31, 'mail_contact', 'البريد الإلكتروني', 'Email'),
(32, 'name_contact', 'الأسم بالكامل', 'Full name'),
(33, 'sendmessage_result_send', 'تم ارسال رسالتك بنجاح وسوف يتم التواصل فى اقرب وقت', 'Your message has been sent successfully, and they will be contacted soon'),
(34, 'phone_contact', 'رقم الجوال', 'Mobile Number'),
(35, 'message_contact', 'الرسالة', 'Message'),
(36, 'find_more', 'اكتشف المزيد', 'Find out more'),
(40, 'Submit_now', 'تقدم الان', 'Apply Now'),
(44, 'established_Send', 'أرسل الآن', 'Send Now'),
(55, 'regulation_result', 'تم استلام البيانات وسوف يتم التواصل لاحقاً', 'Data Received Successfully '),
(58, 'more', 'المزيد', 'More'),
(59, 'Connect_now', 'تواصل معانا الان', 'Connect with us now'),
(60, 'We_offer', 'نحن نقدم العديد من الخدمات الذى يساعدك', 'We offer many services that will help you'),
(61, 'in_success', 'فى نجاح شركتك', 'In the success of your company'),
(62, 'about_mission', 'رسالتنا', 'Our Mission'),
(63, 'required_name', 'الاسم الكامل مطلوب', 'Full name is required'),
(64, 'required_phone', 'رقم الجوال مطلوب', 'Mobile number is required'),
(65, 'required_message', 'الرسالة مطلوبة', 'Message is required'),
(66, 'about_us', 'من نحن', 'About us'),
(67, 'Goals', 'أهدافنا', 'Goals'),
(68, 'message', 'رسالتنا', 'Message'),
(69, 'Vision', 'رؤيتنا', 'Vision'),
(70, 'last_news', 'احدث الاخبار', 'Last news'),
(71, 'contact_Information', 'معلومات التواصل ', 'Contact Information'),
(72, 'we_communicate', 'يسعدنا تواصلكم معنا طوال ايام الاسبوع', 'We are happy to communicate with us all days of the week'),
(73, 'contact_address', 'العنوان ', 'Address'),
(74, 'required_email', 'البريد الألكترونى مطلوب', 'E-Mail is required');

-- --------------------------------------------------------

--
-- Table structure for table `visitings`
--

CREATE TABLE `visitings` (
  `id` int(11) NOT NULL,
  `ip` varchar(150) CHARACTER SET utf8 NOT NULL,
  `visit_num` int(11) NOT NULL,
  `day_t` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `month_d` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `year_d` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitings`
--

INSERT INTO `visitings` (`id`, `ip`, `visit_num`, `day_t`, `month_d`, `year_d`, `date`, `updated_at`, `created_at`) VALUES
(1, '::1', 3, '08', '08', '2019', '2019-08-08', NULL, NULL),
(2, '::1', 2, '18', '08', '2019', '2019-08-18', NULL, NULL),
(3, '::1', 113, '20', '08', '2019', '2019-08-20', NULL, NULL),
(4, '::1', 134, '21', '08', '2019', '2019-08-21', NULL, NULL),
(5, '::1', 116, '22', '08', '2019', '2019-08-22', NULL, NULL),
(6, '::1', 1, '25', '08', '2019', '2019-08-25', NULL, NULL),
(7, '::1', 3, '26', '08', '2019', '2019-08-26', NULL, NULL),
(8, '::1', 74, '17', '10', '2019', '2019-10-17', NULL, NULL),
(9, '::1', 219, '21', '10', '2019', '2019-10-21', NULL, NULL),
(10, '::1', 21, '22', '10', '2019', '2019-10-22', NULL, NULL),
(11, '197.37.174.5', 23, '22', '10', '2019', '2019-10-22', NULL, NULL),
(12, '46.152.36.226', 6, '22', '10', '2019', '2019-10-22', NULL, NULL),
(13, '66.102.8.238', 2, '22', '10', '2019', '2019-10-22', NULL, NULL),
(14, '66.102.8.236', 2, '22', '10', '2019', '2019-10-22', NULL, NULL),
(15, '45.243.153.11', 21, '22', '10', '2019', '2019-10-22', NULL, NULL),
(16, '46.152.36.226', 1, '23', '10', '2019', '2019-10-23', NULL, NULL),
(17, '197.37.174.5', 15, '23', '10', '2019', '2019-10-23', NULL, NULL),
(18, '45.243.153.11', 204, '23', '10', '2019', '2019-10-23', NULL, NULL),
(19, '3.14.70.103', 75, '23', '10', '2019', '2019-10-23', NULL, NULL),
(20, '52.15.187.227', 3, '23', '10', '2019', '2019-10-23', NULL, NULL),
(21, '18.224.171.77', 5, '23', '10', '2019', '2019-10-23', NULL, NULL),
(22, '197.37.174.5', 3, '24', '10', '2019', '2019-10-24', NULL, NULL),
(23, '45.243.153.11', 10, '24', '10', '2019', '2019-10-24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_en` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `details` text,
  `view` enum('0','1') NOT NULL,
  `details_en` text,
  `creation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `title`, `title_en`, `img`, `details`, `view`, `details_en`, `creation_date`) VALUES
(1, 'اسم العمل', 'Training services', '7AkB.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.&nbsp;</p>\r\n', '1', '<p dir=\"ltr\">There is a long established fact that the readable content of the Masenhee Continental page is about focusing on the outer form of the text or the form of paragraphs are placed on the page to be read and therefore the method is used. For text or form, paragraphs are placed on the page to be read, so a method is used.</p>\r\n', '2019-08-18'),
(3, 'اسم العمل', 'Training services', '7AkB.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.&nbsp;</p>\r\n', '1', '<p dir=\"ltr\">There is a long established fact that the readable content of the Masenhee Continental page is about focusing on the outer form of the text or the form of paragraphs are placed on the page to be read and therefore the method is used. For text or form, paragraphs are placed on the page to be read, so a method is used.</p>\r\n', '2019-08-18'),
(4, 'اسم العمل', 'Training services', '7AkB.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.&nbsp;</p>\r\n', '1', '<p dir=\"ltr\">There is a long established fact that the readable content of the Masenhee Continental page is about focusing on the outer form of the text or the form of paragraphs are placed on the page to be read and therefore the method is used. For text or form, paragraphs are placed on the page to be read, so a method is used.</p>\r\n', '2019-08-18'),
(5, 'اسم العمل', 'Training services', '7AkB.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.&nbsp;</p>\r\n', '1', '<p dir=\"ltr\">There is a long established fact that the readable content of the Masenhee Continental page is about focusing on the outer form of the text or the form of paragraphs are placed on the page to be read and therefore the method is used. For text or form, paragraphs are placed on the page to be read, so a method is used.</p>\r\n', '2019-08-18'),
(6, 'اسم العمل', 'Training services', '7AkB.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.&nbsp;</p>\r\n', '1', '<p dir=\"ltr\">There is a long established fact that the readable content of the Masenhee Continental page is about focusing on the outer form of the text or the form of paragraphs are placed on the page to be read and therefore the method is used. For text or form, paragraphs are placed on the page to be read, so a method is used.</p>\r\n', '2019-08-18'),
(7, 'اسم العمل', 'Training services', '7AkB.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.&nbsp;</p>\r\n', '1', '<p dir=\"ltr\">There is a long established fact that the readable content of the Masenhee Continental page is about focusing on the outer form of the text or the form of paragraphs are placed on the page to be read and therefore the method is used. For text or form, paragraphs are placed on the page to be read, so a method is used.</p>\r\n', '2019-08-18'),
(8, 'اسم العمل', 'Training services', 'AHk5.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.&nbsp;</p>', '1', '<p dir=\"ltr\">There is a long established fact that the readable content of the Masenhee Continental page is about focusing on the outer form of the text or the form of paragraphs are placed on the page to be read and therefore the method is used. For text or form, paragraphs are placed on the page to be read, so a method is used.</p>', '2019-08-21'),
(9, 'اسم العمل', 'Training services', 'AHk5.jpg', '<p>هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.هناك حقيقة مثبتة منذو زمن طويل وهى ان المحتوى المقروء لصفحة ماسينهى القارى عن التركيز على الشكل &nbsp;الخارجى للنص او شكل توضع الفقرات فى الصفحة الى يقرأها ولذلك يتم استخدام طريقة.&nbsp;</p>', '1', '<p dir=\"ltr\">There is a long established fact that the readable content of the Masenhee Continental page is about focusing on the outer form of the text or the form of paragraphs are placed on the page to be read and therefore the method is used. For text or form, paragraphs are placed on the page to be read, so a method is used.</p>', '2019-08-21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_option`
--
ALTER TABLE `backend_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_messages`
--
ALTER TABLE `home_messages`
  ADD PRIMARY KEY (`id_message`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_infos`
--
ALTER TABLE `site_infos`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_setting`
--
ALTER TABLE `system_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translate_txt`
--
ALTER TABLE `translate_txt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitings`
--
ALTER TABLE `visitings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `backend_option`
--
ALTER TABLE `backend_option`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `home_messages`
--
ALTER TABLE `home_messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `site_infos`
--
ALTER TABLE `site_infos`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_setting`
--
ALTER TABLE `system_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `translate_txt`
--
ALTER TABLE `translate_txt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `visitings`
--
ALTER TABLE `visitings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
