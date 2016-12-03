-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2016 at 08:16 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userfrosting`
--

-- --------------------------------------------------------

--
-- Table structure for table `uf_authorize_group`
--

CREATE TABLE `uf_authorize_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `hook` varchar(200) NOT NULL COMMENT 'A code that references a specific action or URI that the group has access to.',
  `conditions` text NOT NULL COMMENT 'The conditions under which members of this group have access to this hook.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uf_authorize_group`
--

INSERT INTO `uf_authorize_group` (`id`, `group_id`, `hook`, `conditions`) VALUES
(1, 1, 'uri_dashboard', 'always()'),
(2, 2, 'uri_dashboard', 'always()'),
(3, 2, 'uri_users', 'always()'),
(4, 1, 'uri_account_settings', 'always()'),
(5, 1, 'update_account_setting', 'equals(self.id, user.id)&&in(property,["email","locale","password"])'),
(6, 2, 'update_account_setting', '!in_group(user.id,2)&&in(property,["email","display_name","title","locale","flag_password_reset","flag_enabled"])'),
(7, 2, 'view_account_setting', 'in(property,["user_name","email","display_name","title","locale","flag_enabled","groups","primary_group_id"])'),
(8, 2, 'delete_account', '!in_group(user.id,2)'),
(9, 2, 'create_account', 'always()');

-- --------------------------------------------------------

--
-- Table structure for table `uf_authorize_user`
--

CREATE TABLE `uf_authorize_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `hook` varchar(200) NOT NULL COMMENT 'A code that references a specific action or URI that the user has access to.',
  `conditions` text NOT NULL COMMENT 'The conditions under which the user has access to this action.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uf_configuration`
--

CREATE TABLE `uf_configuration` (
  `id` int(10) UNSIGNED NOT NULL,
  `plugin` varchar(50) NOT NULL COMMENT 'The name of the plugin that manages this setting (set to ''userfrosting'' for core settings)',
  `name` varchar(150) NOT NULL COMMENT 'The name of the setting.',
  `value` longtext NOT NULL COMMENT 'The current value of the setting.',
  `description` text NOT NULL COMMENT 'A brief description of this setting.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A configuration table, mapping global configuration options to their values.';

--
-- Dumping data for table `uf_configuration`
--

INSERT INTO `uf_configuration` (`id`, `plugin`, `name`, `value`, `description`) VALUES
(1, 'userfrosting', 'site_title', 'IT''S LIT', 'The title of the site.  By default, displayed in the title tag, as well as the upper left corner of every user page.'),
(2, 'userfrosting', 'admin_email', 'ewduong@gmail.com', 'The administrative email for the site.  Automated emails, such as verification emails and password reset links, will come from this address.'),
(3, 'userfrosting', 'email_login', '1', 'Specify whether users can login via email address or username instead of just username.'),
(4, 'userfrosting', 'can_register', '1', 'Specify whether public registration of new accounts is enabled.  Enable if you have a service that users can sign up for, disable if you only want accounts to be created by you or an admin.'),
(5, 'userfrosting', 'enable_captcha', '1', 'Specify whether new users must complete a captcha code when registering for an account.'),
(6, 'userfrosting', 'require_activation', '0', 'Specify whether email verification is required for newly registered accounts.  Accounts created by another user never need to be verified.'),
(7, 'userfrosting', 'resend_activation_threshold', '0', 'The time, in seconds, that a user must wait before requesting that the account verification email be resent.'),
(8, 'userfrosting', 'reset_password_timeout', '10800', 'The time, in seconds, before a user''s password reset token expires.'),
(9, 'userfrosting', 'create_password_expiration', '86400', 'The time, in seconds, before a new user''s password creation token expires.'),
(10, 'userfrosting', 'default_locale', 'en_US', 'The default language for newly registered users.'),
(11, 'userfrosting', 'guest_theme', 'default', 'The template theme to use for unauthenticated (guest) users.'),
(12, 'userfrosting', 'minify_css', '0', 'Specify whether to use concatenated, minified CSS (production) or raw CSS includes (dev).'),
(13, 'userfrosting', 'minify_js', '0', 'Specify whether to use concatenated, minified JS (production) or raw JS includes (dev).'),
(14, 'userfrosting', 'version', '0.3.1.20', 'The current version of UserFrosting.'),
(15, 'userfrosting', 'author', 'Eric Duong', 'The author of the site.  Will be used in the site''s author meta tag.'),
(16, 'userfrosting', 'show_terms_on_register', '1', 'Specify whether or not to show terms and conditions when registering.'),
(17, 'userfrosting', 'site_location', '', 'The nation or state in which legal jurisdiction for this site falls.'),
(18, 'userfrosting', 'install_status', 'complete', ''),
(19, 'userfrosting', 'root_account_config_token', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uf_group`
--

CREATE TABLE `uf_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Specifies whether this permission is a default setting for new accounts.',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Specifies whether this permission can be deleted from the control panel.',
  `theme` varchar(100) NOT NULL DEFAULT 'default' COMMENT 'The theme assigned to primary users in this group.',
  `landing_page` varchar(200) NOT NULL DEFAULT 'dashboard' COMMENT 'The page to take primary members to when they first log in.',
  `new_user_title` varchar(200) NOT NULL DEFAULT 'New User' COMMENT 'The default title to assign to new primary users.',
  `icon` varchar(100) NOT NULL DEFAULT 'fa fa-user' COMMENT 'The icon representing primary users in this group.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uf_group`
--

INSERT INTO `uf_group` (`id`, `name`, `is_default`, `can_delete`, `theme`, `landing_page`, `new_user_title`, `icon`) VALUES
(1, 'User', 2, 0, 'default', 'dashboard', 'New User', 'fa fa-user'),
(2, 'Administrator', 0, 0, 'nyx', 'dashboard', 'Brood Spawn', 'fa fa-flag'),
(3, 'Zerglings', 0, 1, 'nyx', 'dashboard', 'Tank Fodder', 'sc sc-zergling');

-- --------------------------------------------------------

--
-- Table structure for table `uf_group_user`
--

CREATE TABLE `uf_group_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps users to their group(s)';

--
-- Dumping data for table `uf_group_user`
--

INSERT INTO `uf_group_user` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uf_user`
--

CREATE TABLE `uf_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `title` varchar(150) NOT NULL,
  `locale` varchar(10) NOT NULL DEFAULT 'en_US' COMMENT 'The language and locale to use for this user.',
  `primary_group_id` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'The id of this user''s primary group.',
  `secret_token` varchar(32) NOT NULL DEFAULT '' COMMENT 'The current one-time use token for various user activities confirmed via email.',
  `flag_verified` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Set to ''1'' if the user has verified their account via email, ''0'' otherwise.',
  `flag_enabled` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Set to ''1'' if the user''s account is currently enabled, ''0'' otherwise.  Disabled accounts cannot be logged in to, but they retain all of their data and settings.',
  `flag_password_reset` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Set to ''1'' if the user has an outstanding password reset request, ''0'' otherwise.',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` tinytext,
  `last_name` tinytext,
  `street_address` tinytext,
  `city` tinytext,
  `state` char(2) DEFAULT NULL,
  `zip_code` tinytext,
  `country` tinytext,
  `phone_number` tinytext,
  `card_type` char(4) DEFAULT NULL,
  `card_number` char(16) DEFAULT NULL,
  `exp_date` tinytext,
  `cvv` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uf_user`
--

INSERT INTO `uf_user` (`id`, `user_name`, `display_name`, `email`, `title`, `locale`, `primary_group_id`, `secret_token`, `flag_verified`, `flag_enabled`, `flag_password_reset`, `created_at`, `updated_at`, `password`, `first_name`, `last_name`, `street_address`, `city`, `state`, `zip_code`, `country`, `phone_number`, `card_type`, `card_number`, `exp_date`, `cvv`) VALUES
(1, 'eric', 'eric', 'ewduong@gmail.com', 'ya boi', 'en_US', 2, '', 1, 1, 0, '2016-12-01 14:53:51', '2016-12-02 01:20:42', '$2y$10$2FsMErHjroHos1J0Yddn4.WLhwYBOnD8bnkXnJzacpjbplZanU/ka', 'Eric', 'Duong', '10 Charlotte Lane', 'Randolph', 'MA', '02368', 'USA', '7818882561', 'Visa', '1234123412341234', '04/20', 123),
(2, 'test', 'test', 'test@test.com', 'New User', 'en_US', 1, '', 1, 1, 0, '2016-12-01 15:48:38', '2016-12-01 21:44:07', '$2y$10$hmtgT.GnC0/IXbqxXunH1.GIbZ46TY3FQypKS5a5Qad/DwVqacuOG', 'Test', 'Test', NULL, 'Test', NULL, '02368', NULL, '7818882561', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uf_user_event`
--

CREATE TABLE `uf_user_event` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `event_type` varchar(255) NOT NULL COMMENT 'An identifier used to track the type of event.',
  `occurred_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uf_user_event`
--

INSERT INTO `uf_user_event` (`id`, `user_id`, `event_type`, `occurred_at`, `description`) VALUES
(1, 1, 'sign_up', '2016-12-01 14:53:51', 'User eric successfully registered on 2016-12-01 09:53:51.'),
(2, 1, 'sign_in', '2016-12-01 14:53:57', 'User eric signed in at 2016-12-01 09:53:57.'),
(3, 2, 'sign_up', '2016-12-01 15:48:38', 'User test successfully registered on 2016-12-01 10:48:38.'),
(4, 2, 'sign_in', '2016-12-01 15:48:42', 'User test signed in at 2016-12-01 10:48:42.'),
(5, 1, 'sign_in', '2016-12-01 16:41:08', 'User eric signed in at 2016-12-01 11:41:08.'),
(6, 2, 'sign_in', '2016-12-01 21:26:10', 'User test signed in at 2016-12-01 16:26:10.'),
(7, 1, 'sign_in', '2016-12-02 00:43:26', 'User eric signed in at 2016-12-01 19:43:26.'),
(8, 1, 'sign_in', '2016-12-03 19:07:44', 'User eric signed in at 2016-12-03 14:07:44.');

-- --------------------------------------------------------

--
-- Table structure for table `uf_user_rememberme`
--

CREATE TABLE `uf_user_rememberme` (
  `user_id` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `persistent_token` varchar(40) NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `uf_authorize_group`
--
ALTER TABLE `uf_authorize_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uf_authorize_user`
--
ALTER TABLE `uf_authorize_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uf_configuration`
--
ALTER TABLE `uf_configuration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uf_group`
--
ALTER TABLE `uf_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uf_group_user`
--
ALTER TABLE `uf_group_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uf_user`
--
ALTER TABLE `uf_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uf_user_event`
--
ALTER TABLE `uf_user_event`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `uf_authorize_group`
--
ALTER TABLE `uf_authorize_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `uf_authorize_user`
--
ALTER TABLE `uf_authorize_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `uf_configuration`
--
ALTER TABLE `uf_configuration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `uf_group`
--
ALTER TABLE `uf_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `uf_group_user`
--
ALTER TABLE `uf_group_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `uf_user`
--
ALTER TABLE `uf_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `uf_user_event`
--
ALTER TABLE `uf_user_event`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
