/*
 Navicat Premium Data Transfer

 Source Server         : mis_proyectos_bd
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : testing

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 06/05/2020 19:00:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for apps_countries
-- ----------------------------
DROP TABLE IF EXISTS `apps_countries`;
CREATE TABLE `apps_countries`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `country_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 246 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apps_countries
-- ----------------------------
INSERT INTO `apps_countries` VALUES (1, 'AF', 'Afghanistan');
INSERT INTO `apps_countries` VALUES (2, 'AL', 'Albania');
INSERT INTO `apps_countries` VALUES (3, 'DZ', 'Algeria');
INSERT INTO `apps_countries` VALUES (4, 'DS', 'American Samoa');
INSERT INTO `apps_countries` VALUES (5, 'AD', 'Andorra');
INSERT INTO `apps_countries` VALUES (6, 'AO', 'Angola');
INSERT INTO `apps_countries` VALUES (7, 'AI', 'Anguilla');
INSERT INTO `apps_countries` VALUES (8, 'AQ', 'Antarctica');
INSERT INTO `apps_countries` VALUES (9, 'AG', 'Antigua and Barbuda');
INSERT INTO `apps_countries` VALUES (10, 'AR', 'Argentina');
INSERT INTO `apps_countries` VALUES (11, 'AM', 'Armenia');
INSERT INTO `apps_countries` VALUES (12, 'AW', 'Aruba');
INSERT INTO `apps_countries` VALUES (13, 'AU', 'Australia');
INSERT INTO `apps_countries` VALUES (14, 'AT', 'Austria');
INSERT INTO `apps_countries` VALUES (15, 'AZ', 'Azerbaijan');
INSERT INTO `apps_countries` VALUES (16, 'BS', 'Bahamas');
INSERT INTO `apps_countries` VALUES (17, 'BH', 'Bahrain');
INSERT INTO `apps_countries` VALUES (18, 'BD', 'Bangladesh');
INSERT INTO `apps_countries` VALUES (19, 'BB', 'Barbados');
INSERT INTO `apps_countries` VALUES (20, 'BY', 'Belarus');
INSERT INTO `apps_countries` VALUES (21, 'BE', 'Belgium');
INSERT INTO `apps_countries` VALUES (22, 'BZ', 'Belize');
INSERT INTO `apps_countries` VALUES (23, 'BJ', 'Benin');
INSERT INTO `apps_countries` VALUES (24, 'BM', 'Bermuda');
INSERT INTO `apps_countries` VALUES (25, 'BT', 'Bhutan');
INSERT INTO `apps_countries` VALUES (26, 'BO', 'Bolivia');
INSERT INTO `apps_countries` VALUES (27, 'BA', 'Bosnia and Herzegovina');
INSERT INTO `apps_countries` VALUES (28, 'BW', 'Botswana');
INSERT INTO `apps_countries` VALUES (29, 'BV', 'Bouvet Island');
INSERT INTO `apps_countries` VALUES (30, 'BR', 'Brazil');
INSERT INTO `apps_countries` VALUES (31, 'IO', 'British Indian Ocean Territory');
INSERT INTO `apps_countries` VALUES (32, 'BN', 'Brunei Darussalam');
INSERT INTO `apps_countries` VALUES (33, 'BG', 'Bulgaria');
INSERT INTO `apps_countries` VALUES (34, 'BF', 'Burkina Faso');
INSERT INTO `apps_countries` VALUES (35, 'BI', 'Burundi');
INSERT INTO `apps_countries` VALUES (36, 'KH', 'Cambodia');
INSERT INTO `apps_countries` VALUES (37, 'CM', 'Cameroon');
INSERT INTO `apps_countries` VALUES (38, 'CA', 'Canada');
INSERT INTO `apps_countries` VALUES (39, 'CV', 'Cape Verde');
INSERT INTO `apps_countries` VALUES (40, 'KY', 'Cayman Islands');
INSERT INTO `apps_countries` VALUES (41, 'CF', 'Central African Republic');
INSERT INTO `apps_countries` VALUES (42, 'TD', 'Chad');
INSERT INTO `apps_countries` VALUES (43, 'CL', 'Chile');
INSERT INTO `apps_countries` VALUES (44, 'CN', 'China');
INSERT INTO `apps_countries` VALUES (45, 'CX', 'Christmas Island');
INSERT INTO `apps_countries` VALUES (46, 'CC', 'Cocos (Keeling) Islands');
INSERT INTO `apps_countries` VALUES (47, 'CO', 'Colombia');
INSERT INTO `apps_countries` VALUES (48, 'KM', 'Comoros');
INSERT INTO `apps_countries` VALUES (49, 'CG', 'Congo');
INSERT INTO `apps_countries` VALUES (50, 'CK', 'Cook Islands');
INSERT INTO `apps_countries` VALUES (51, 'CR', 'Costa Rica');
INSERT INTO `apps_countries` VALUES (52, 'HR', 'Croatia (Hrvatska)');
INSERT INTO `apps_countries` VALUES (53, 'CU', 'Cuba');
INSERT INTO `apps_countries` VALUES (54, 'CY', 'Cyprus');
INSERT INTO `apps_countries` VALUES (55, 'CZ', 'Czech Republic');
INSERT INTO `apps_countries` VALUES (56, 'DK', 'Denmark');
INSERT INTO `apps_countries` VALUES (57, 'DJ', 'Djibouti');
INSERT INTO `apps_countries` VALUES (58, 'DM', 'Dominica');
INSERT INTO `apps_countries` VALUES (59, 'DO', 'Dominican Republic');
INSERT INTO `apps_countries` VALUES (60, 'TP', 'East Timor');
INSERT INTO `apps_countries` VALUES (61, 'EC', 'Ecuador');
INSERT INTO `apps_countries` VALUES (62, 'EG', 'Egypt');
INSERT INTO `apps_countries` VALUES (63, 'SV', 'El Salvador');
INSERT INTO `apps_countries` VALUES (64, 'GQ', 'Equatorial Guinea');
INSERT INTO `apps_countries` VALUES (65, 'ER', 'Eritrea');
INSERT INTO `apps_countries` VALUES (66, 'EE', 'Estonia');
INSERT INTO `apps_countries` VALUES (67, 'ET', 'Ethiopia');
INSERT INTO `apps_countries` VALUES (68, 'FK', 'Falkland Islands (Malvinas)');
INSERT INTO `apps_countries` VALUES (69, 'FO', 'Faroe Islands');
INSERT INTO `apps_countries` VALUES (70, 'FJ', 'Fiji');
INSERT INTO `apps_countries` VALUES (71, 'FI', 'Finland');
INSERT INTO `apps_countries` VALUES (72, 'FR', 'France');
INSERT INTO `apps_countries` VALUES (73, 'FX', 'France, Metropolitan');
INSERT INTO `apps_countries` VALUES (74, 'GF', 'French Guiana');
INSERT INTO `apps_countries` VALUES (75, 'PF', 'French Polynesia');
INSERT INTO `apps_countries` VALUES (76, 'TF', 'French Southern Territories');
INSERT INTO `apps_countries` VALUES (77, 'GA', 'Gabon');
INSERT INTO `apps_countries` VALUES (78, 'GM', 'Gambia');
INSERT INTO `apps_countries` VALUES (79, 'GE', 'Georgia');
INSERT INTO `apps_countries` VALUES (80, 'DE', 'Germany');
INSERT INTO `apps_countries` VALUES (81, 'GH', 'Ghana');
INSERT INTO `apps_countries` VALUES (82, 'GI', 'Gibraltar');
INSERT INTO `apps_countries` VALUES (83, 'GK', 'Guernsey');
INSERT INTO `apps_countries` VALUES (84, 'GR', 'Greece');
INSERT INTO `apps_countries` VALUES (85, 'GL', 'Greenland');
INSERT INTO `apps_countries` VALUES (86, 'GD', 'Grenada');
INSERT INTO `apps_countries` VALUES (87, 'GP', 'Guadeloupe');
INSERT INTO `apps_countries` VALUES (88, 'GU', 'Guam');
INSERT INTO `apps_countries` VALUES (89, 'GT', 'Guatemala');
INSERT INTO `apps_countries` VALUES (90, 'GN', 'Guinea');
INSERT INTO `apps_countries` VALUES (91, 'GW', 'Guinea-Bissau');
INSERT INTO `apps_countries` VALUES (92, 'GY', 'Guyana');
INSERT INTO `apps_countries` VALUES (93, 'HT', 'Haiti');
INSERT INTO `apps_countries` VALUES (94, 'HM', 'Heard and Mc Donald Islands');
INSERT INTO `apps_countries` VALUES (95, 'HN', 'Honduras');
INSERT INTO `apps_countries` VALUES (96, 'HK', 'Hong Kong');
INSERT INTO `apps_countries` VALUES (97, 'HU', 'Hungary');
INSERT INTO `apps_countries` VALUES (98, 'IS', 'Iceland');
INSERT INTO `apps_countries` VALUES (99, 'IN', 'India');
INSERT INTO `apps_countries` VALUES (100, 'IM', 'Isle of Man');
INSERT INTO `apps_countries` VALUES (101, 'ID', 'Indonesia');
INSERT INTO `apps_countries` VALUES (102, 'IR', 'Iran (Islamic Republic of)');
INSERT INTO `apps_countries` VALUES (103, 'IQ', 'Iraq');
INSERT INTO `apps_countries` VALUES (104, 'IE', 'Ireland');
INSERT INTO `apps_countries` VALUES (105, 'IL', 'Israel');
INSERT INTO `apps_countries` VALUES (106, 'IT', 'Italy');
INSERT INTO `apps_countries` VALUES (107, 'CI', 'Ivory Coast');
INSERT INTO `apps_countries` VALUES (108, 'JE', 'Jersey');
INSERT INTO `apps_countries` VALUES (109, 'JM', 'Jamaica');
INSERT INTO `apps_countries` VALUES (110, 'JP', 'Japan');
INSERT INTO `apps_countries` VALUES (111, 'JO', 'Jordan');
INSERT INTO `apps_countries` VALUES (112, 'KZ', 'Kazakhstan');
INSERT INTO `apps_countries` VALUES (113, 'KE', 'Kenya');
INSERT INTO `apps_countries` VALUES (114, 'KI', 'Kiribati');
INSERT INTO `apps_countries` VALUES (115, 'KP', 'Korea, Democratic People\'s Republic of');
INSERT INTO `apps_countries` VALUES (116, 'KR', 'Korea, Republic of');
INSERT INTO `apps_countries` VALUES (117, 'XK', 'Kosovo');
INSERT INTO `apps_countries` VALUES (118, 'KW', 'Kuwait');
INSERT INTO `apps_countries` VALUES (119, 'KG', 'Kyrgyzstan');
INSERT INTO `apps_countries` VALUES (120, 'LA', 'Lao People\'s Democratic Republic');
INSERT INTO `apps_countries` VALUES (121, 'LV', 'Latvia');
INSERT INTO `apps_countries` VALUES (122, 'LB', 'Lebanon');
INSERT INTO `apps_countries` VALUES (123, 'LS', 'Lesotho');
INSERT INTO `apps_countries` VALUES (124, 'LR', 'Liberia');
INSERT INTO `apps_countries` VALUES (125, 'LY', 'Libyan Arab Jamahiriya');
INSERT INTO `apps_countries` VALUES (126, 'LI', 'Liechtenstein');
INSERT INTO `apps_countries` VALUES (127, 'LT', 'Lithuania');
INSERT INTO `apps_countries` VALUES (128, 'LU', 'Luxembourg');
INSERT INTO `apps_countries` VALUES (129, 'MO', 'Macau');
INSERT INTO `apps_countries` VALUES (130, 'MK', 'Macedonia');
INSERT INTO `apps_countries` VALUES (131, 'MG', 'Madagascar');
INSERT INTO `apps_countries` VALUES (132, 'MW', 'Malawi');
INSERT INTO `apps_countries` VALUES (133, 'MY', 'Malaysia');
INSERT INTO `apps_countries` VALUES (134, 'MV', 'Maldives');
INSERT INTO `apps_countries` VALUES (135, 'ML', 'Mali');
INSERT INTO `apps_countries` VALUES (136, 'MT', 'Malta');
INSERT INTO `apps_countries` VALUES (137, 'MH', 'Marshall Islands');
INSERT INTO `apps_countries` VALUES (138, 'MQ', 'Martinique');
INSERT INTO `apps_countries` VALUES (139, 'MR', 'Mauritania');
INSERT INTO `apps_countries` VALUES (140, 'MU', 'Mauritius');
INSERT INTO `apps_countries` VALUES (141, 'TY', 'Mayotte');
INSERT INTO `apps_countries` VALUES (142, 'MX', 'Mexico');
INSERT INTO `apps_countries` VALUES (143, 'FM', 'Micronesia, Federated States of');
INSERT INTO `apps_countries` VALUES (144, 'MD', 'Moldova, Republic of');
INSERT INTO `apps_countries` VALUES (145, 'MC', 'Monaco');
INSERT INTO `apps_countries` VALUES (146, 'MN', 'Mongolia');
INSERT INTO `apps_countries` VALUES (147, 'ME', 'Montenegro');
INSERT INTO `apps_countries` VALUES (148, 'MS', 'Montserrat');
INSERT INTO `apps_countries` VALUES (149, 'MA', 'Morocco');
INSERT INTO `apps_countries` VALUES (150, 'MZ', 'Mozambique');
INSERT INTO `apps_countries` VALUES (151, 'MM', 'Myanmar');
INSERT INTO `apps_countries` VALUES (152, 'NA', 'Namibia');
INSERT INTO `apps_countries` VALUES (153, 'NR', 'Nauru');
INSERT INTO `apps_countries` VALUES (154, 'NP', 'Nepal');
INSERT INTO `apps_countries` VALUES (155, 'NL', 'Netherlands');
INSERT INTO `apps_countries` VALUES (156, 'AN', 'Netherlands Antilles');
INSERT INTO `apps_countries` VALUES (157, 'NC', 'New Caledonia');
INSERT INTO `apps_countries` VALUES (158, 'NZ', 'New Zealand');
INSERT INTO `apps_countries` VALUES (159, 'NI', 'Nicaragua');
INSERT INTO `apps_countries` VALUES (160, 'NE', 'Niger');
INSERT INTO `apps_countries` VALUES (161, 'NG', 'Nigeria');
INSERT INTO `apps_countries` VALUES (162, 'NU', 'Niue');
INSERT INTO `apps_countries` VALUES (163, 'NF', 'Norfolk Island');
INSERT INTO `apps_countries` VALUES (164, 'MP', 'Northern Mariana Islands');
INSERT INTO `apps_countries` VALUES (165, 'NO', 'Norway');
INSERT INTO `apps_countries` VALUES (166, 'OM', 'Oman');
INSERT INTO `apps_countries` VALUES (167, 'PK', 'Pakistan');
INSERT INTO `apps_countries` VALUES (168, 'PW', 'Palau');
INSERT INTO `apps_countries` VALUES (169, 'PS', 'Palestine');
INSERT INTO `apps_countries` VALUES (170, 'PA', 'Panama');
INSERT INTO `apps_countries` VALUES (171, 'PG', 'Papua New Guinea');
INSERT INTO `apps_countries` VALUES (172, 'PY', 'Paraguay');
INSERT INTO `apps_countries` VALUES (173, 'PE', 'Peru');
INSERT INTO `apps_countries` VALUES (174, 'PH', 'Philippines');
INSERT INTO `apps_countries` VALUES (175, 'PN', 'Pitcairn');
INSERT INTO `apps_countries` VALUES (176, 'PL', 'Poland');
INSERT INTO `apps_countries` VALUES (177, 'PT', 'Portugal');
INSERT INTO `apps_countries` VALUES (178, 'PR', 'Puerto Rico');
INSERT INTO `apps_countries` VALUES (179, 'QA', 'Qatar');
INSERT INTO `apps_countries` VALUES (180, 'RE', 'Reunion');
INSERT INTO `apps_countries` VALUES (181, 'RO', 'Romania');
INSERT INTO `apps_countries` VALUES (182, 'RU', 'Russian Federation');
INSERT INTO `apps_countries` VALUES (183, 'RW', 'Rwanda');
INSERT INTO `apps_countries` VALUES (184, 'KN', 'Saint Kitts and Nevis');
INSERT INTO `apps_countries` VALUES (185, 'LC', 'Saint Lucia');
INSERT INTO `apps_countries` VALUES (186, 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO `apps_countries` VALUES (187, 'WS', 'Samoa');
INSERT INTO `apps_countries` VALUES (188, 'SM', 'San Marino');
INSERT INTO `apps_countries` VALUES (189, 'ST', 'Sao Tome and Principe');
INSERT INTO `apps_countries` VALUES (190, 'SA', 'Saudi Arabia');
INSERT INTO `apps_countries` VALUES (191, 'SN', 'Senegal');
INSERT INTO `apps_countries` VALUES (192, 'RS', 'Serbia');
INSERT INTO `apps_countries` VALUES (193, 'SC', 'Seychelles');
INSERT INTO `apps_countries` VALUES (194, 'SL', 'Sierra Leone');
INSERT INTO `apps_countries` VALUES (195, 'SG', 'Singapore');
INSERT INTO `apps_countries` VALUES (196, 'SK', 'Slovakia');
INSERT INTO `apps_countries` VALUES (197, 'SI', 'Slovenia');
INSERT INTO `apps_countries` VALUES (198, 'SB', 'Solomon Islands');
INSERT INTO `apps_countries` VALUES (199, 'SO', 'Somalia');
INSERT INTO `apps_countries` VALUES (200, 'ZA', 'South Africa');
INSERT INTO `apps_countries` VALUES (201, 'GS', 'South Georgia South Sandwich Islands');
INSERT INTO `apps_countries` VALUES (202, 'ES', 'Spain');
INSERT INTO `apps_countries` VALUES (203, 'LK', 'Sri Lanka');
INSERT INTO `apps_countries` VALUES (204, 'SH', 'St. Helena');
INSERT INTO `apps_countries` VALUES (205, 'PM', 'St. Pierre and Miquelon');
INSERT INTO `apps_countries` VALUES (206, 'SD', 'Sudan');
INSERT INTO `apps_countries` VALUES (207, 'SR', 'Suriname');
INSERT INTO `apps_countries` VALUES (208, 'SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO `apps_countries` VALUES (209, 'SZ', 'Swaziland');
INSERT INTO `apps_countries` VALUES (210, 'SE', 'Sweden');
INSERT INTO `apps_countries` VALUES (211, 'CH', 'Switzerland');
INSERT INTO `apps_countries` VALUES (212, 'SY', 'Syrian Arab Republic');
INSERT INTO `apps_countries` VALUES (213, 'TW', 'Taiwan');
INSERT INTO `apps_countries` VALUES (214, 'TJ', 'Tajikistan');
INSERT INTO `apps_countries` VALUES (215, 'TZ', 'Tanzania, United Republic of');
INSERT INTO `apps_countries` VALUES (216, 'TH', 'Thailand');
INSERT INTO `apps_countries` VALUES (217, 'TG', 'Togo');
INSERT INTO `apps_countries` VALUES (218, 'TK', 'Tokelau');
INSERT INTO `apps_countries` VALUES (219, 'TO', 'Tonga');
INSERT INTO `apps_countries` VALUES (220, 'TT', 'Trinidad and Tobago');
INSERT INTO `apps_countries` VALUES (221, 'TN', 'Tunisia');
INSERT INTO `apps_countries` VALUES (222, 'TR', 'Turkey');
INSERT INTO `apps_countries` VALUES (223, 'TM', 'Turkmenistan');
INSERT INTO `apps_countries` VALUES (224, 'TC', 'Turks and Caicos Islands');
INSERT INTO `apps_countries` VALUES (225, 'TV', 'Tuvalu');
INSERT INTO `apps_countries` VALUES (226, 'UG', 'Uganda');
INSERT INTO `apps_countries` VALUES (227, 'UA', 'Ukraine');
INSERT INTO `apps_countries` VALUES (228, 'AE', 'United Arab Emirates');
INSERT INTO `apps_countries` VALUES (229, 'GB', 'United Kingdom');
INSERT INTO `apps_countries` VALUES (230, 'US', 'United States');
INSERT INTO `apps_countries` VALUES (231, 'UM', 'United States minor outlying islands');
INSERT INTO `apps_countries` VALUES (232, 'UY', 'Uruguay');
INSERT INTO `apps_countries` VALUES (233, 'UZ', 'Uzbekistan');
INSERT INTO `apps_countries` VALUES (234, 'VU', 'Vanuatu');
INSERT INTO `apps_countries` VALUES (235, 'VA', 'Vatican City State');
INSERT INTO `apps_countries` VALUES (236, 'VE', 'Venezuela');
INSERT INTO `apps_countries` VALUES (237, 'VN', 'Vietnam');
INSERT INTO `apps_countries` VALUES (238, 'VG', 'Virgin Islands (British)');
INSERT INTO `apps_countries` VALUES (239, 'VI', 'Virgin Islands (U.S.)');
INSERT INTO `apps_countries` VALUES (240, 'WF', 'Wallis and Futuna Islands');
INSERT INTO `apps_countries` VALUES (241, 'EH', 'Western Sahara');
INSERT INTO `apps_countries` VALUES (242, 'YE', 'Yemen');
INSERT INTO `apps_countries` VALUES (243, 'ZR', 'Zaire');
INSERT INTO `apps_countries` VALUES (244, 'ZM', 'Zambia');
INSERT INTO `apps_countries` VALUES (245, 'ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for country_state_city
-- ----------------------------
DROP TABLE IF EXISTS `country_state_city`;
CREATE TABLE `country_state_city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of country_state_city
-- ----------------------------
INSERT INTO `country_state_city` VALUES (1, 'USA', 'New York', 'New York city');
INSERT INTO `country_state_city` VALUES (2, 'USA', 'New York', 'Buffalo');
INSERT INTO `country_state_city` VALUES (3, 'USA', 'New York', 'Albany');
INSERT INTO `country_state_city` VALUES (4, 'USA', 'Alabama', 'Birmingham');
INSERT INTO `country_state_city` VALUES (5, 'USA', 'Alabama', 'Huntsvije');
INSERT INTO `country_state_city` VALUES (6, 'USA', 'California', 'Los Angeles');
INSERT INTO `country_state_city` VALUES (7, 'USA', 'California', 'San Francisco');
INSERT INTO `country_state_city` VALUES (8, 'USA', 'California', 'San Diego');
INSERT INTO `country_state_city` VALUES (9, 'Canada', 'Ontario', 'Toronto');
INSERT INTO `country_state_city` VALUES (10, 'Canada', 'Ontario', 'Ottawa');
INSERT INTO `country_state_city` VALUES (11, 'Canada', 'British Columbia', 'Vancouver');
INSERT INTO `country_state_city` VALUES (12, 'Canada', 'Britis Columbia', 'Victoria');
INSERT INTO `country_state_city` VALUES (13, 'Australia', 'New South Wales', 'Sydney');
INSERT INTO `country_state_city` VALUES (14, 'Australia', 'New South Wales', 'Newcastle');
INSERT INTO `country_state_city` VALUES (15, 'Australia', 'Queensland', 'City of Brisbane');
INSERT INTO `country_state_city` VALUES (16, 'Australia', 'Queensland', 'Gold Coast');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_08_19_000000_create_failed_jobs_table', 1);

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `post_description` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'Spiderman', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `posts` VALUES (2, 'Superman', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `posts` VALUES (3, 'Magneto', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `posts` VALUES (4, 'Wolverine', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `posts` VALUES (5, 'Scorpion', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');
INSERT INTO `posts` VALUES (6, 'Wolverine', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

-- ----------------------------
-- Table structure for tbl_customer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_customer`;
CREATE TABLE `tbl_customer`  (
  `CustomerID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `Address` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL,
  `City` varchar(255) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `PostalCode` varchar(30) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  `Country` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`CustomerID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_spanish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_customer
-- ----------------------------
INSERT INTO `tbl_customer` VALUES (1, 'Daniel', 'Delicias', 'Puerto Varas', '5550000', 'Chile');
INSERT INTO `tbl_customer` VALUES (2, 'Jessica', 'Delicias', 'Puerto Varas', '5550000', 'Chile');
INSERT INTO `tbl_customer` VALUES (3, 'Ara', 'Concepcion', 'Santiago', '40000', 'Chile');
INSERT INTO `tbl_customer` VALUES (4, 'Ruth', 'Delicias', 'Zulia', '10000', 'Venezuela');

-- ----------------------------
-- Table structure for tbl_employee
-- ----------------------------
DROP TABLE IF EXISTS `tbl_employee`;
CREATE TABLE `tbl_employee`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `designation` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 187 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_employee
-- ----------------------------
INSERT INTO `tbl_employee` VALUES (1, 'Bruce Tom', '656 Edsel Road\r\nSherman Oaks, CA 91403', 'Male', 'Driver', 36);
INSERT INTO `tbl_employee` VALUES (5, 'Clara Gilliam', '63 Woodridge Lane\r\nMemphis, TN 38138', 'Female', 'Programmer', 24);
INSERT INTO `tbl_employee` VALUES (6, 'Barbra K. Hurley', '1241 Canis Heights Drive\r\nLos Angeles, CA 90017', 'Female', 'Service technician', 26);
INSERT INTO `tbl_employee` VALUES (7, 'Antonio J. Forbes', '403 Snyder Avenue\r\nCharlotte, NC 28208', 'Male', 'Faller', 32);
INSERT INTO `tbl_employee` VALUES (8, 'Charles D. Horst', '1636 Walnut Hill Drive\r\nCincinnati, OH 45202', 'Male', 'Financial investigator', 29);
INSERT INTO `tbl_employee` VALUES (175, 'Ronald D. Colella', '1571 Bingamon Branch Road, Barrington, IL 60010', 'Male', 'Top executive', 32);
INSERT INTO `tbl_employee` VALUES (174, 'Martha B. Tomlinson', '4005 Bird Spring Lane, Houston, TX 77002', 'Female', 'Systems programmer', 38);
INSERT INTO `tbl_employee` VALUES (161, 'Glenda J. Stewart', '3482 Pursglove Court, Rossburg, OH 45362', 'Female', 'Cost consultant', 28);
INSERT INTO `tbl_employee` VALUES (162, 'Jarrod D. Jones', '3827 Bingamon Road, Garfield Heights, OH 44125', 'Male', 'Manpower development advisor', 64);
INSERT INTO `tbl_employee` VALUES (163, 'William C. Wright', '2653 Pyramid Valley Road, Cedar Rapids, IA 52404', 'Male', 'Political geographer', 33);
INSERT INTO `tbl_employee` VALUES (178, 'Sara K. Ebert', '1197 Nelm Street\r\nMc Lean, VA 22102', 'Female', 'Billing machine operator', 50);
INSERT INTO `tbl_employee` VALUES (177, 'Patricia L. Scott', '1584 Dennison Street\r\nModesto, CA 95354', 'Female', 'Urban and regional planner', 54);
INSERT INTO `tbl_employee` VALUES (179, 'James K. Ridgway', '3462 Jody Road\r\nWayne, PA 19088', 'Female', 'Recreation leader', 41);
INSERT INTO `tbl_employee` VALUES (180, 'Stephen A. Crook', '448 Deercove Drive\r\nDallas, TX 75201', 'Male', 'Optical goods worker', 36);
INSERT INTO `tbl_employee` VALUES (181, 'Kimberly J. Ellis', '4905 Holt Street\r\nFort Lauderdale, FL 33301', 'Male', 'Dressing room attendant', 24);
INSERT INTO `tbl_employee` VALUES (182, 'Elizabeth N. Bradley', '1399 Randall Drive\r\nHonolulu, HI 96819', 'Female', ' Software quality assurance analyst', 25);
INSERT INTO `tbl_employee` VALUES (183, 'Steve John', '108, Vile Parle, CL', 'Male', 'Software Engineer', 29);
INSERT INTO `tbl_employee` VALUES (184, 'Marks Johnson', '021, Big street, NY', 'Male', 'Head of IT', 41);
INSERT INTO `tbl_employee` VALUES (185, 'Mak Pub', '1462 Juniper Drive\r\nBreckenridge, MI 48612', 'Male', 'Mental health counselor', 40);
INSERT INTO `tbl_employee` VALUES (186, 'Louis C. Charmis', '1462 Juniper Drive\r\nBreckenridge, MI 48612', 'Male', 'Mental health counselor', 40);

-- ----------------------------
-- Table structure for tbl_login
-- ----------------------------
DROP TABLE IF EXISTS `tbl_login`;
CREATE TABLE `tbl_login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `gender` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `mobile_no` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_login
-- ----------------------------
INSERT INTO `tbl_login` VALUES (1, 'Danie', 'Angel', 'male', 'dangel@gmail.com', 'password', '', '936292818');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'John Smith', 'john_smith@gmail.com', NULL, '$2y$10$3t0vyEx/AussJ8uLHDci5O/YcMNdRfpHbHSxhiyZukZ6ABb7NgQ.y', 'gqVzRhblG8DdxexkPIlUEekVyhI87G2jVbakshfdIRcX5rFFvAfpDlZPboty', '2020-05-05 17:39:05', '2020-05-05 17:39:05');

SET FOREIGN_KEY_CHECKS = 1;
