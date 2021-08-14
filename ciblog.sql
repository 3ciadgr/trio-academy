-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 12:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Web Development', '2021-07-20 02:02:57'),
(2, 'Mobile Development', '2021-07-20 02:02:57'),
(3, 'Game Development', '2021-07-20 09:06:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(34, 2, 0, 'How to Make Mobile Applications Using Kotlin', 'How-to-Make-Mobile-Applications-Using-Kotlin', '<p>Bacon ipsum dolor amet prosciutto pancetta ribeye doner cupim short loin capicola short ribs meatball flank spare ribs. Turducken kielbasa chicken doner, tail jowl ball tip landjaeger ham boudin porchetta. Cupim strip steak biltong pork, pastrami tenderloin corned beef meatball tongue kevin boudin shank pancetta. Short ribs prosciutto pork loin, pork chop burgdoggen picanha cupim sirloin jowl shankle andouille. Alcatra biltong pork loin bresaola, salami pork spare ribs corned beef t-bone andouille shankle beef chislic.</p>\r\n\r\n<p>Turkey picanha bacon jowl chicken. Chicken sausage picanha venison turkey, meatloaf short loin tenderloin turducken. Pork loin shoulder chicken doner, pork chop venison chuck. Pig beef short loin meatball pork chop tail tri-tip, alcatra shoulder. Shankle prosciutto kielbasa jowl hamburger pig ball tip pork chop flank spare ribs biltong strip steak.</p>\r\n\r\n<p>Porchetta buffalo tri-tip short ribs filet mignon hamburger ham hock, bresaola venison pork belly beef turducken pig landjaeger. Corned beef strip steak rump shankle pork t-bone buffalo. Pancetta buffalo chuck shank meatball beef kielbasa flank chislic ground round pork loin capicola ball tip chicken beef ribs. Venison flank chislic landjaeger tongue meatball jowl ham hock tenderloin t-bone drumstick ground round ball tip.</p>\r\n\r\n<p>Rump swine chislic shoulder filet mignon jerky. Chislic short loin pork loin salami meatball, pancetta tri-tip doner prosciutto picanha. Shankle landjaeger tenderloin spare ribs beef ribs pork chop boudin t-bone short ribs cupim. Kevin tail chuck pig, flank cupim shankle short ribs swine jowl hamburger. Doner spare ribs frankfurter filet mignon, swine meatball pork belly chicken short loin. Andouille spare ribs burgdoggen shankle short loin chislic filet mignon turducken chuck. Short loin prosciutto strip steak alcatra, ground round filet mignon spare ribs frankfurter corned beef pork loin salami burgdoggen t-bone tenderloin.</p>\r\n\r\n<p>Landjaeger corned beef kielbasa ham hock boudin. Rump ribeye sausage chuck. Shoulder rump boudin, ground round andouille cupim pancetta alcatra hamburger drumstick beef ribs pork belly picanha fatback. Filet mignon tri-tip landjaeger tongue turkey. Filet mignon salami bresaola pork chop, prosciutto ball tip cow sirloin. Bacon cupim shankle pancetta biltong meatball pig meatloaf porchetta.</p>\r\n\r\n<p>Does your lorem ipsum text long for something a little meatier? Give our generator a try&hellip; it&rsquo;s tasty!</p>\r\n', 'android.jpg', '2021-07-22 08:36:33'),
(35, 1, 0, 'JavaScript Tutorial: From Beginners to Master!', 'JavaScript-Tutorial-From-Beginners-to-Master', '<p>Bacon ipsum dolor amet prosciutto pancetta ribeye doner cupim short loin capicola short ribs meatball flank spare ribs. Turducken kielbasa chicken doner, tail jowl ball tip landjaeger ham boudin porchetta. Cupim strip steak biltong pork, pastrami tenderloin corned beef meatball tongue kevin boudin shank pancetta. Short ribs prosciutto pork loin, pork chop burgdoggen picanha cupim sirloin jowl shankle andouille. Alcatra biltong pork loin bresaola, salami pork spare ribs corned beef t-bone andouille shankle beef chislic.</p>\r\n\r\n<p>Turkey picanha bacon jowl chicken. Chicken sausage picanha venison turkey, meatloaf short loin tenderloin turducken. Pork loin shoulder chicken doner, pork chop venison chuck. Pig beef short loin meatball pork chop tail tri-tip, alcatra shoulder. Shankle prosciutto kielbasa jowl hamburger pig ball tip pork chop flank spare ribs biltong strip steak.</p>\r\n\r\n<p>Porchetta buffalo tri-tip short ribs filet mignon hamburger ham hock, bresaola venison pork belly beef turducken pig landjaeger. Corned beef strip steak rump shankle pork t-bone buffalo. Pancetta buffalo chuck shank meatball beef kielbasa flank chislic ground round pork loin capicola ball tip chicken beef ribs. Venison flank chislic landjaeger tongue meatball jowl ham hock tenderloin t-bone drumstick ground round ball tip.</p>\r\n\r\n<p>Rump swine chislic shoulder filet mignon jerky. Chislic short loin pork loin salami meatball, pancetta tri-tip doner prosciutto picanha. Shankle landjaeger tenderloin spare ribs beef ribs pork chop boudin t-bone short ribs cupim. Kevin tail chuck pig, flank cupim shankle short ribs swine jowl hamburger. Doner spare ribs frankfurter filet mignon, swine meatball pork belly chicken short loin. Andouille spare ribs burgdoggen shankle short loin chislic filet mignon turducken chuck. Short loin prosciutto strip steak alcatra, ground round filet mignon spare ribs frankfurter corned beef pork loin salami burgdoggen t-bone tenderloin.</p>\r\n\r\n<p>Landjaeger corned beef kielbasa ham hock boudin. Rump ribeye sausage chuck. Shoulder rump boudin, ground round andouille cupim pancetta alcatra hamburger drumstick beef ribs pork belly picanha fatback. Filet mignon tri-tip landjaeger tongue turkey. Filet mignon salami bresaola pork chop, prosciutto ball tip cow sirloin. Bacon cupim shankle pancetta biltong meatball pig meatloaf porchetta.</p>\r\n\r\n<p>Does your lorem ipsum text long for something a little meatier? Give our generator a try&hellip; it&rsquo;s tasty!</p>\r\n', 'javascript.jpg', '2021-07-22 08:44:28'),
(43, 1, 0, 'A Practical HTML Guide for Beginners (2021)', 'A-Practical-HTML-Guide-for-Beginners-2021', '<p>Bacon ipsum dolor amet prosciutto pancetta ribeye doner cupim short loin capicola short ribs meatball flank spare ribs. Turducken kielbasa chicken doner, tail jowl ball tip landjaeger ham boudin porchetta. Cupim strip steak biltong pork, pastrami tenderloin corned beef meatball tongue kevin boudin shank pancetta. Short ribs prosciutto pork loin, pork chop burgdoggen picanha cupim sirloin jowl shankle andouille. Alcatra biltong pork loin bresaola, salami pork spare ribs corned beef t-bone andouille shankle beef chislic.</p>\r\n\r\n<p>Turkey picanha bacon jowl chicken. Chicken sausage picanha venison turkey, meatloaf short loin tenderloin turducken. Pork loin shoulder chicken doner, pork chop venison chuck. Pig beef short loin meatball pork chop tail tri-tip, alcatra shoulder. Shankle prosciutto kielbasa jowl hamburger pig ball tip pork chop flank spare ribs biltong strip steak.</p>\r\n\r\n<p>Porchetta buffalo tri-tip short ribs filet mignon hamburger ham hock, bresaola venison pork belly beef turducken pig landjaeger. Corned beef strip steak rump shankle pork t-bone buffalo. Pancetta buffalo chuck shank meatball beef kielbasa flank chislic ground round pork loin capicola ball tip chicken beef ribs. Venison flank chislic landjaeger tongue meatball jowl ham hock tenderloin t-bone drumstick ground round ball tip.</p>\r\n\r\n<p>Rump swine chislic shoulder filet mignon jerky. Chislic short loin pork loin salami meatball, pancetta tri-tip doner prosciutto picanha. Shankle landjaeger tenderloin spare ribs beef ribs pork chop boudin t-bone short ribs cupim. Kevin tail chuck pig, flank cupim shankle short ribs swine jowl hamburger. Doner spare ribs frankfurter filet mignon, swine meatball pork belly chicken short loin. Andouille spare ribs burgdoggen shankle short loin chislic filet mignon turducken chuck. Short loin prosciutto strip steak alcatra, ground round filet mignon spare ribs frankfurter corned beef pork loin salami burgdoggen t-bone tenderloin.</p>\r\n\r\n<p>Landjaeger corned beef kielbasa ham hock boudin. Rump ribeye sausage chuck. Shoulder rump boudin, ground round andouille cupim pancetta alcatra hamburger drumstick beef ribs pork belly picanha fatback. Filet mignon tri-tip landjaeger tongue turkey. Filet mignon salami bresaola pork chop, prosciutto ball tip cow sirloin. Bacon cupim shankle pancetta biltong meatball pig meatloaf porchetta.</p>\r\n\r\n<p>Does your lorem ipsum text long for something a little meatier? Give our generator a try&hellip; it&rsquo;s tasty!</p>\r\n', 'html.jpg', '2021-07-22 08:58:20'),
(44, 1, 0, 'Master The Back-End Using Ruby on Rails!', 'Master-The-Back-End-Using-Ruby-on-Rails', '<p>Bacon ipsum dolor amet prosciutto pancetta ribeye doner cupim short loin capicola short ribs meatball flank spare ribs. Turducken kielbasa chicken doner, tail jowl ball tip landjaeger ham boudin porchetta. Cupim strip steak biltong pork, pastrami tenderloin corned beef meatball tongue kevin boudin shank pancetta. Short ribs prosciutto pork loin, pork chop burgdoggen picanha cupim sirloin jowl shankle andouille. Alcatra biltong pork loin bresaola, salami pork spare ribs corned beef t-bone andouille shankle beef chislic.</p>\r\n\r\n<p>Turkey picanha bacon jowl chicken. Chicken sausage picanha venison turkey, meatloaf short loin tenderloin turducken. Pork loin shoulder chicken doner, pork chop venison chuck. Pig beef short loin meatball pork chop tail tri-tip, alcatra shoulder. Shankle prosciutto kielbasa jowl hamburger pig ball tip pork chop flank spare ribs biltong strip steak.</p>\r\n\r\n<p>Porchetta buffalo tri-tip short ribs filet mignon hamburger ham hock, bresaola venison pork belly beef turducken pig landjaeger. Corned beef strip steak rump shankle pork t-bone buffalo. Pancetta buffalo chuck shank meatball beef kielbasa flank chislic ground round pork loin capicola ball tip chicken beef ribs. Venison flank chislic landjaeger tongue meatball jowl ham hock tenderloin t-bone drumstick ground round ball tip.</p>\r\n\r\n<p>Rump swine chislic shoulder filet mignon jerky. Chislic short loin pork loin salami meatball, pancetta tri-tip doner prosciutto picanha. Shankle landjaeger tenderloin spare ribs beef ribs pork chop boudin t-bone short ribs cupim. Kevin tail chuck pig, flank cupim shankle short ribs swine jowl hamburger. Doner spare ribs frankfurter filet mignon, swine meatball pork belly chicken short loin. Andouille spare ribs burgdoggen shankle short loin chislic filet mignon turducken chuck. Short loin prosciutto strip steak alcatra, ground round filet mignon spare ribs frankfurter corned beef pork loin salami burgdoggen t-bone tenderloin.</p>\r\n\r\n<p>Landjaeger corned beef kielbasa ham hock boudin. Rump ribeye sausage chuck. Shoulder rump boudin, ground round andouille cupim pancetta alcatra hamburger drumstick beef ribs pork belly picanha fatback. Filet mignon tri-tip landjaeger tongue turkey. Filet mignon salami bresaola pork chop, prosciutto ball tip cow sirloin. Bacon cupim shankle pancetta biltong meatball pig meatloaf porchetta.</p>\r\n\r\n<p>Does your lorem ipsum text long for something a little meatier? Give our generator a try&hellip; it&rsquo;s tasty!</p>\r\n', 'ruby.jpg', '2021-07-22 09:03:58'),
(45, 3, 0, 'How to Develop Games Using Unity', 'How-to-Develop-Games-Using-Unity', '<p>Bacon ipsum dolor amet prosciutto pancetta ribeye doner cupim short loin capicola short ribs meatball flank spare ribs. Turducken kielbasa chicken doner, tail jowl ball tip landjaeger ham boudin porchetta. Cupim strip steak biltong pork, pastrami tenderloin corned beef meatball tongue kevin boudin shank pancetta. Short ribs prosciutto pork loin, pork chop burgdoggen picanha cupim sirloin jowl shankle andouille. Alcatra biltong pork loin bresaola, salami pork spare ribs corned beef t-bone andouille shankle beef chislic.</p>\r\n\r\n<p>Turkey picanha bacon jowl chicken. Chicken sausage picanha venison turkey, meatloaf short loin tenderloin turducken. Pork loin shoulder chicken doner, pork chop venison chuck. Pig beef short loin meatball pork chop tail tri-tip, alcatra shoulder. Shankle prosciutto kielbasa jowl hamburger pig ball tip pork chop flank spare ribs biltong strip steak.</p>\r\n\r\n<p>Porchetta buffalo tri-tip short ribs filet mignon hamburger ham hock, bresaola venison pork belly beef turducken pig landjaeger. Corned beef strip steak rump shankle pork t-bone buffalo. Pancetta buffalo chuck shank meatball beef kielbasa flank chislic ground round pork loin capicola ball tip chicken beef ribs. Venison flank chislic landjaeger tongue meatball jowl ham hock tenderloin t-bone drumstick ground round ball tip.</p>\r\n\r\n<p>Rump swine chislic shoulder filet mignon jerky. Chislic short loin pork loin salami meatball, pancetta tri-tip doner prosciutto picanha. Shankle landjaeger tenderloin spare ribs beef ribs pork chop boudin t-bone short ribs cupim. Kevin tail chuck pig, flank cupim shankle short ribs swine jowl hamburger. Doner spare ribs frankfurter filet mignon, swine meatball pork belly chicken short loin. Andouille spare ribs burgdoggen shankle short loin chislic filet mignon turducken chuck. Short loin prosciutto strip steak alcatra, ground round filet mignon spare ribs frankfurter corned beef pork loin salami burgdoggen t-bone tenderloin.</p>\r\n\r\n<p>Landjaeger corned beef kielbasa ham hock boudin. Rump ribeye sausage chuck. Shoulder rump boudin, ground round andouille cupim pancetta alcatra hamburger drumstick beef ribs pork belly picanha fatback. Filet mignon tri-tip landjaeger tongue turkey. Filet mignon salami bresaola pork chop, prosciutto ball tip cow sirloin. Bacon cupim shankle pancetta biltong meatball pig meatloaf porchetta.</p>\r\n\r\n<p>Does your lorem ipsum text long for something a little meatier? Give our generator a try&hellip; it&rsquo;s tasty!</p>\r\n', 'unity.jpg', '2021-07-22 09:07:29'),
(46, 3, 0, 'Develop iOS Application using Swift', 'Develop-iOS-Application-using-Swift', '<p>Bacon ipsum dolor amet prosciutto pancetta ribeye doner cupim short loin capicola short ribs meatball flank spare ribs. Turducken kielbasa chicken doner, tail jowl ball tip landjaeger ham boudin porchetta. Cupim strip steak biltong pork, pastrami tenderloin corned beef meatball tongue kevin boudin shank pancetta. Short ribs prosciutto pork loin, pork chop burgdoggen picanha cupim sirloin jowl shankle andouille. Alcatra biltong pork loin bresaola, salami pork spare ribs corned beef t-bone andouille shankle beef chislic.</p>\r\n\r\n<p>Turkey picanha bacon jowl chicken. Chicken sausage picanha venison turkey, meatloaf short loin tenderloin turducken. Pork loin shoulder chicken doner, pork chop venison chuck. Pig beef short loin meatball pork chop tail tri-tip, alcatra shoulder. Shankle prosciutto kielbasa jowl hamburger pig ball tip pork chop flank spare ribs biltong strip steak.</p>\r\n\r\n<p>Porchetta buffalo tri-tip short ribs filet mignon hamburger ham hock, bresaola venison pork belly beef turducken pig landjaeger. Corned beef strip steak rump shankle pork t-bone buffalo. Pancetta buffalo chuck shank meatball beef kielbasa flank chislic ground round pork loin capicola ball tip chicken beef ribs. Venison flank chislic landjaeger tongue meatball jowl ham hock tenderloin t-bone drumstick ground round ball tip.</p>\r\n\r\n<p>Rump swine chislic shoulder filet mignon jerky. Chislic short loin pork loin salami meatball, pancetta tri-tip doner prosciutto picanha. Shankle landjaeger tenderloin spare ribs beef ribs pork chop boudin t-bone short ribs cupim. Kevin tail chuck pig, flank cupim shankle short ribs swine jowl hamburger. Doner spare ribs frankfurter filet mignon, swine meatball pork belly chicken short loin. Andouille spare ribs burgdoggen shankle short loin chislic filet mignon turducken chuck. Short loin prosciutto strip steak alcatra, ground round filet mignon spare ribs frankfurter corned beef pork loin salami burgdoggen t-bone tenderloin.</p>\r\n\r\n<p>Landjaeger corned beef kielbasa ham hock boudin. Rump ribeye sausage chuck. Shoulder rump boudin, ground round andouille cupim pancetta alcatra hamburger drumstick beef ribs pork belly picanha fatback. Filet mignon tri-tip landjaeger tongue turkey. Filet mignon salami bresaola pork chop, prosciutto ball tip cow sirloin. Bacon cupim shankle pancetta biltong meatball pig meatloaf porchetta.</p>\r\n\r\n<p>Does your lorem ipsum text long for something a little meatier? Give our generator a try&hellip; it&rsquo;s tasty!</p>\r\n', 'swift.jpg', '2021-07-22 09:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_status` tinyint(1) NOT NULL,
  `user_verification` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `register_date`, `user_status`, `user_verification`) VALUES
(1, 'trio', 'trcrlx@gmail.com', 'trioacademy', '3a81b4227cff025aa3a198377f3a849b', '2021-07-22 10:10:33', 1, '051017da5a5883684ae972a07bd9c452');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
