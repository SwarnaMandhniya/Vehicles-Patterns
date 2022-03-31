-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 12:18 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicles`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(7, '2022-02-22-064735', 'App\\Database\\Migrations\\TestMigration', 'default', 'App', 1645522005, 1),
(8, '2022-02-22-064832', 'App\\Database\\Migrations\\Testing', 'default', 'App', 1645522005, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(1, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', '2022-02-14 12:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `wdt_color_patterns`
--

CREATE TABLE `wdt_color_patterns` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `images` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `default_img` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wdt_color_patterns`
--

INSERT INTO `wdt_color_patterns` (`id`, `name`, `images`, `status`, `default_img`) VALUES
(1, 'Default Img', 'uploads/patterns/1646976709_3ab2c04fcd73a59f57b2.png', 0, 1),
(2, 'Red Van', 'uploads/patterns/1646976701_1de091924401d99ea36d.jpg', 0, 0),
(3, 'Green ', 'uploads/patterns/1646976725_23c2b161462371db986e.png', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wdt_enquiry`
--

CREATE TABLE `wdt_enquiry` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `subject` varchar(255) NOT NULL,
  `pattern_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `sample_img` varchar(255) NOT NULL,
  `logo_img` varchar(255) NOT NULL,
  `satatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wdt_enquiry`
--

INSERT INTO `wdt_enquiry` (`id`, `name`, `email`, `phone`, `message`, `subject`, `pattern_id`, `vehicle_id`, `sample_img`, `logo_img`, `satatus`) VALUES
(1, 'Testing Part', 'testing@gmail.com', '12346789', 'Is testing Part', 'Is subject testing part ', 3, 1, 'uploads/enquirys/sample-1646993265_a56fdbb8549f348104a6.jpg', 'uploads/enquirys/logo-1646993265_512f0310dc6e88ecb8cb.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `wdt_settings`
--

CREATE TABLE `wdt_settings` (
  `id` int(11) NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wdt_settings`
--

INSERT INTO `wdt_settings` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`, `status`) VALUES
(1, 'admin_email', 'admin@admin.com', '2022-03-10 23:36:46', '2022-03-10 23:36:46', 0),
(2, 'email_template', '<!doctype html>\r\n<html>\r\n  <head>\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"/>\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\" />\r\n    <title>Simple Transactional Email</title>\r\n    <style>\r\n      /* -------------------------------------\r\n          GLOBAL RESETS\r\n      ------------------------------------- */\r\n      \r\n      /*All the styling goes here*/\r\n      \r\n      img {\r\n        border: none;\r\n        -ms-interpolation-mode: bicubic;\r\n        max-width: 100%; \r\n      }\r\n\r\n      body {\r\n        background-color: #f6f6f6;\r\n        font-family: sans-serif;\r\n        -webkit-font-smoothing: antialiased;\r\n        font-size: 14px;\r\n        line-height: 1.4;\r\n        margin: 0;\r\n        padding: 0;\r\n        -ms-text-size-adjust: 100%;\r\n        -webkit-text-size-adjust: 100%; \r\n      }\r\n\r\n      table {\r\n        border-collapse: separate;\r\n        mso-table-lspace: 0pt;\r\n        mso-table-rspace: 0pt;\r\n        width: 100%; }\r\n        table td {\r\n          font-family: sans-serif;\r\n          font-size: 14px;\r\n          vertical-align: top; \r\n      }\r\n\r\n      /* -------------------------------------\r\n          BODY & CONTAINER\r\n      ------------------------------------- */\r\n\r\n      .body {\r\n        background-color: #f6f6f6;\r\n        width: 100%; \r\n      }\r\n\r\n      /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */\r\n      .container {\r\n        display: block;\r\n        margin: 0 auto !important;\r\n        /* makes it centered */\r\n        max-width: 580px;\r\n        padding: 10px;\r\n        width: 580px; \r\n      }\r\n\r\n      /* This should also be a block element, so that it will fill 100% of the .container */\r\n      .content {\r\n        box-sizing: border-box;\r\n        display: block;\r\n        margin: 0 auto;\r\n        max-width: 580px;\r\n        padding: 10px; \r\n      }\r\n\r\n      /* -------------------------------------\r\n          HEADER, FOOTER, MAIN\r\n      ------------------------------------- */\r\n      .main {\r\n        background: #ffffff;\r\n        border-radius: 3px;\r\n        width: 100%; \r\n      }\r\n\r\n      .wrapper {\r\n        box-sizing: border-box;\r\n        padding: 20px; \r\n      }\r\n\r\n      .content-block {\r\n        padding-bottom: 10px;\r\n        padding-top: 10px;\r\n      }\r\n\r\n      .footer {\r\n        clear: both;\r\n        margin-top: 10px;\r\n        text-align: center;\r\n        width: 100%; \r\n      }\r\n        .footer td,\r\n        .footer p,\r\n        .footer span,\r\n        .footer a {\r\n          color: #999999;\r\n          font-size: 12px;\r\n          text-align: center; \r\n      }\r\n\r\n      /* -------------------------------------\r\n          TYPOGRAPHY\r\n      ------------------------------------- */\r\n      h1,\r\n      h2,\r\n      h3,\r\n      h4 {\r\n        color: #000000;\r\n        font-family: sans-serif;\r\n        font-weight: 400;\r\n        line-height: 1.4;\r\n        margin: 0;\r\n        margin-bottom: 30px; \r\n      }\r\n\r\n      h1 {\r\n        font-size: 35px;\r\n        font-weight: 300;\r\n        text-align: center;\r\n        text-transform: capitalize; \r\n      }\r\n\r\n      p,\r\n      ul,\r\n      ol {\r\n        font-family: sans-serif;\r\n        font-size: 14px;\r\n        font-weight: normal;\r\n        margin: 0;\r\n        margin-bottom: 15px; \r\n      }\r\n        p li,\r\n        ul li,\r\n        ol li {\r\n          list-style-position: inside;\r\n          margin-left: 5px; \r\n      }\r\n\r\n      a {\r\n        color: #3498db;\r\n        text-decoration: underline; \r\n      }\r\n\r\n      /* -------------------------------------\r\n          BUTTONS\r\n      ------------------------------------- */\r\n      .btn {\r\n        box-sizing: border-box;\r\n        width: 100%; }\r\n        .btn > tbody > tr > td {\r\n          padding-bottom: 15px; }\r\n        .btn table {\r\n          width: auto; \r\n      }\r\n        .btn table td {\r\n          background-color: #ffffff;\r\n          border-radius: 5px;\r\n          text-align: center; \r\n      }\r\n        .btn a {\r\n          background-color: #ffffff;\r\n          border: solid 1px #3498db;\r\n          border-radius: 5px;\r\n          box-sizing: border-box;\r\n          color: #3498db;\r\n          cursor: pointer;\r\n          display: inline-block;\r\n          font-size: 14px;\r\n          font-weight: bold;\r\n          margin: 0;\r\n          padding: 12px 25px;\r\n          text-decoration: none;\r\n          text-transform: capitalize; \r\n      }\r\n\r\n      .btn-primary table td {\r\n        background-color: #3498db; \r\n      }\r\n\r\n      .btn-primary a {\r\n        background-color: #3498db;\r\n        border-color: #3498db;\r\n        color: #ffffff; \r\n      }\r\n\r\n      /* -------------------------------------\r\n          OTHER STYLES THAT MIGHT BE USEFUL\r\n      ------------------------------------- */\r\n      .last {\r\n        margin-bottom: 0; \r\n      }\r\n\r\n      .first {\r\n        margin-top: 0; \r\n      }\r\n\r\n      .align-center {\r\n        text-align: center; \r\n      }\r\n\r\n      .align-right {\r\n        text-align: right; \r\n      }\r\n\r\n      .align-left {\r\n        text-align: left; \r\n      }\r\n\r\n      .clear {\r\n        clear: both; \r\n      }\r\n\r\n      .mt0 {\r\n        margin-top: 0; \r\n      }\r\n\r\n      .mb0 {\r\n        margin-bottom: 0; \r\n      }\r\n\r\n      .preheader {\r\n        color: transparent;\r\n        display: none;\r\n        height: 0;\r\n        max-height: 0;\r\n        max-width: 0;\r\n        opacity: 0;\r\n        overflow: hidden;\r\n        mso-hide: all;\r\n        visibility: hidden;\r\n        width: 0; \r\n      }\r\n\r\n      .powered-by a {\r\n        text-decoration: none; \r\n      }\r\n\r\n      hr {\r\n        border: 0;\r\n        border-bottom: 1px solid #f6f6f6;\r\n        margin: 20px 0; \r\n      }\r\n\r\n      /* -------------------------------------\r\n          RESPONSIVE AND MOBILE FRIENDLY STYLES\r\n      ------------------------------------- */\r\n      @media only screen and (max-width: 620px) {\r\n        table.body h1 {\r\n          font-size: 28px !important;\r\n          margin-bottom: 10px !important; \r\n        }\r\n        table.body p,\r\n        table.body ul,\r\n        table.body ol,\r\n        table.body td,\r\n        table.body span,\r\n        table.body a {\r\n          font-size: 16px !important; \r\n        }\r\n        table.body .wrapper,\r\n        table.body .article {\r\n          padding: 10px !important; \r\n        }\r\n        table.body .content {\r\n          padding: 0 !important; \r\n        }\r\n        table.body .container {\r\n          padding: 0 !important;\r\n          width: 100% !important; \r\n        }\r\n        table.body .main {\r\n          border-left-width: 0 !important;\r\n          border-radius: 0 !important;\r\n          border-right-width: 0 !important; \r\n        }\r\n        table.body .btn table {\r\n          width: 100% !important; \r\n        }\r\n        table.body .btn a {\r\n          width: 100% !important; \r\n        }\r\n        table.body .img-responsive {\r\n          height: auto !important;\r\n          max-width: 100% !important;\r\n          width: auto !important; \r\n        }\r\n      }\r\n\r\n      /* -------------------------------------\r\n          PRESERVE THESE STYLES IN THE HEAD\r\n      ------------------------------------- */\r\n      @media all {\r\n        .ExternalClass {\r\n          width: 100%; \r\n        }\r\n        .ExternalClass,\r\n        .ExternalClass p,\r\n        .ExternalClass span,\r\n        .ExternalClass font,\r\n        .ExternalClass td,\r\n        .ExternalClass div {\r\n          line-height: 100%; \r\n        }\r\n        .apple-link a {\r\n          color: inherit !important;\r\n          font-family: inherit !important;\r\n          font-size: inherit !important;\r\n          font-weight: inherit !important;\r\n          line-height: inherit !important;\r\n          text-decoration: none !important; \r\n        }\r\n        #MessageViewBody a {\r\n          color: inherit;\r\n          text-decoration: none;\r\n          font-size: inherit;\r\n          font-family: inherit;\r\n          font-weight: inherit;\r\n          line-height: inherit;\r\n        }\r\n        .btn-primary table td:hover {\r\n          background-color: #34495e !important; \r\n        }\r\n        .btn-primary a:hover {\r\n          background-color: #34495e !important;\r\n          border-color: #34495e !important; \r\n        } \r\n      }\r\n\r\n    </style>\r\n  </head>\r\n  <body>\r\n    <span class=\"preheader\">This is preheader text. Some clients will show this text as a preview.</span>\r\n    <table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"body\">\r\n      <tr>\r\n        <td>&nbsp;</td>\r\n        <td class=\"container\">\r\n          <div class=\"content\">\r\n\r\n            <!-- START CENTERED WHITE CONTAINER -->\r\n            <table role=\"presentation\" class=\"main\">\r\n\r\n              <!-- START MAIN CONTENT AREA -->\r\n              <tr>\r\n                <td class=\"wrapper\">\r\n                  <table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                    <tr>\r\n                      <td>\r\n                        <p>Hi there,</p>\r\n                        \r\n                        \r\n                        <p>This is a really simple email template. Its sole purpose is to get the recipient to click the button with no distractions.</p>\r\n                        <p>Good luck! Hope it works.</p>\r\n                      </td>\r\n                    </tr>\r\n                  </table>\r\n                </td>\r\n              </tr>\r\n\r\n            <!-- END MAIN CONTENT AREA -->\r\n            </table>\r\n            <!-- END CENTERED WHITE CONTAINER -->\r\n\r\n            <!-- START FOOTER -->\r\n            <div class=\"footer\">\r\n              <table role=\"presentation\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n                <tr>\r\n                  <td class=\"content-block\">\r\n                    <span class=\"apple-link\">Company Inc, 3 Abbey Road, San Francisco CA 94102</span>\r\n                    <br> Don\'t like these emails? <a href=\"http://i.imgur.com/CScmqnj.gif\">Unsubscribe</a>.\r\n                  </td>\r\n                </tr>\r\n                <tr>\r\n                  <td class=\"content-block powered-by\">\r\n                    Powered by <a href=\"http://htmlemail.io\">HTMLemail</a>.\r\n                  </td>\r\n                </tr>\r\n              </table>\r\n            </div>\r\n            <!-- END FOOTER -->\r\n\r\n          </div>\r\n        </td>\r\n        <td>&nbsp;</td>\r\n      </tr>\r\n    </table>\r\n  </body>\r\n</html>', '2022-03-10 23:36:47', '2022-03-10 23:36:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wdt_vehicles`
--

CREATE TABLE `wdt_vehicles` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` text NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wdt_vehicles`
--

INSERT INTO `wdt_vehicles` (`id`, `name`, `description`, `status`, `created_at`) VALUES
(1, 'Audi', 'Audi AG is a German automotive manufacturer of luxury vehicles', '1', '2022-03-10 23:33:29'),
(2, 'Bayerische Motoren Werke AG', 'Bayerische Motoren Werke AG, commonly referred to as BMW, ', '1', '2022-03-10 23:38:06'),
(3, 'van', 'Van ', '1', '2022-03-11 04:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `wdt_vehicle_images`
--

CREATE TABLE `wdt_vehicle_images` (
  `id` int(11) NOT NULL COMMENT 'Primary Key',
  `images_path` varchar(100) NOT NULL COMMENT 'Name',
  `type` varchar(255) NOT NULL COMMENT 'File Type',
  `name` varchar(100) DEFAULT NULL,
  `vehicle_id` int(11) NOT NULL,
  `color_patterns_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='users table';

--
-- Dumping data for table `wdt_vehicle_images`
--

INSERT INTO `wdt_vehicle_images` (`id`, `images_path`, `type`, `name`, `vehicle_id`, `color_patterns_id`) VALUES
(1, 'uploads/vehicles/1646992524_76ab49b6516b1010b517.jpg', 'image/jpeg', '', 1, 1),
(2, 'uploads/vehicles/1646976809_af87fbad93090026e78a.jpg', 'image/jpeg', '', 1, 2),
(3, 'uploads/vehicles/1646976809_563a60b3e18f83ee359f.jpg', 'image/jpeg', '', 1, 3),
(5, 'uploads/vehicles/1646977086_138d9241c3ef384f119f.jpg', 'image/jpeg', '', 2, 1),
(6, 'uploads/vehicles/1646977086_90bd7c40e76b20fe36b5.jpg', 'image/jpeg', '', 2, 2),
(7, 'uploads/vehicles/1646977086_7868973680efb2d8bd0b.jpg', 'image/jpeg', '', 2, 3),
(9, 'uploads/vehicles/1646993591_2edcefe0a8f83f74669f.jpg', 'image/jpeg', '', 3, 1),
(10, 'uploads/vehicles/1646993608_b505b1b5231518553075.jpg', 'image/jpeg', '', 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wdt_color_patterns`
--
ALTER TABLE `wdt_color_patterns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wdt_enquiry`
--
ALTER TABLE `wdt_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wdt_settings`
--
ALTER TABLE `wdt_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wdt_vehicles`
--
ALTER TABLE `wdt_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wdt_vehicle_images`
--
ALTER TABLE `wdt_vehicle_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`),
  ADD KEY `color_patterns_id` (`color_patterns_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wdt_color_patterns`
--
ALTER TABLE `wdt_color_patterns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wdt_enquiry`
--
ALTER TABLE `wdt_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wdt_settings`
--
ALTER TABLE `wdt_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wdt_vehicles`
--
ALTER TABLE `wdt_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wdt_vehicle_images`
--
ALTER TABLE `wdt_vehicle_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wdt_vehicle_images`
--
ALTER TABLE `wdt_vehicle_images`
  ADD CONSTRAINT `wdt_vehicle_images_ibfk_1` FOREIGN KEY (`vehicle_id`) REFERENCES `wdt_vehicles` (`id`),
  ADD CONSTRAINT `wdt_vehicle_images_ibfk_2` FOREIGN KEY (`color_patterns_id`) REFERENCES `wdt_color_patterns` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
