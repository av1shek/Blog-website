-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 25, 2020 at 11:42 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `sno` int(50) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'Avishek', '7479734685', 'Testing only', NULL, 'navodayanabhishek@gmail.com'),
(2, 'Avishek', '7479734685', 'Testing only', '2020-03-23 16:25:49', 'navodayanabhishek@gmail.com'),
(3, 'avishek_pratap', '5444445', 'dfefe', '2020-03-23 17:13:52', 'singh_821916@student.nitw.ac.in'),
(4, 'avishek_pratapfedf', '54444457485', 'eriojuyhjjjrf 448ru84 ', '2020-03-23 19:07:12', 'fefef'),
(5, 'avishek_pratapfedf', '54444457485', 'eriojuyhjjjrf 448ru84 ', '2020-03-23 19:08:00', 'fefef'),
(6, 'avishek_pratapfedf', '54444457485', 'eriojuyhjjjrf 448ru84 ', '2020-03-23 19:08:15', 'fefef'),
(7, 'efejmfi', '544444517452', 'fedhfhuehw4io wu8rururururururururururururururururu4eru8i ', '2020-03-23 19:11:08', 'efrtbbbbbbbbbbbbbbbe'),
(8, 'efejmfi', '544444517452', 'fedhfhuehw4io wu8rururururururururururururururururu4eru8i ', '2020-03-23 19:11:53', 'efrtbbbbbbbbbbbbbbbe'),
(9, 'efejmfi', '544444517452', 'fedhfhuehw4io wu8rururururururururururururururururu4eru8i ', '2020-03-23 19:12:02', 'efrtbbbbbbbbbbbbbbbe'),
(10, 'avishek_pratapfedf', '544444517452', 'emfei rjhhhhhhhhhhh4eworrrrrrrrrrrrrrr4uh', '2020-03-23 19:14:12', 'fedfefefe'),
(11, 'avishek_pratapfedf', '544444517452', 'emfei rjhhhhhhhhhhh4eworrrrrrrrrrrrrrr4uh', '2020-03-23 19:16:39', 'fedfefefe'),
(12, 'avishek_pratapfedf', '544444517452', 'emfei rjhhhhhhhhhhh4eworrrrrrrrrrrrrrr4uh', '2020-03-23 19:20:29', 'fedfefefe'),
(13, 'avishek_pratapfedf', '544444517452', 'emfei rjhhhhhhhhhhh4eworrrrrrrrrrrrrrr4uh', '2020-03-23 19:21:06', 'fedfefefe'),
(14, 'yt', '54444457485', 'tyyyyyyyyyyyydh tnrys tt t t t t t t t t 76hhhhhhhhhh ', '2020-03-23 19:22:43', 'rttttttttttttt@tht.guyu'),
(15, 'edefvirng', '54444457485', 'dkfekjr rfeiuri jffinal', '2020-03-23 19:25:14', 'kerjei @gmaill.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'This my first post\'s title.', 'this is first', 'first-post', 'checked This is my first post and i am very exicted and i am using flask framework to make this. checked', 'post-bg.jpg', '2020-03-25 11:07:00'),
(2, 'This is second post', 'this is second', 'second-post', 'checked A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\r\n\r\nBelow is a minimal template that illustrates a few basics using the default Jinja configuration. We will cover the details later in this document:', 'post-bg.jpg', '2020-03-25 11:07:11'),
(3, 'Template File Extension', 'this is third post.', 'third-post', 'checked As stated above, any file can be loaded as a template, regardless of file extension. Adding a .jinja extension, like user.html.jinja may make it easier for some IDEs or editor plugins, but is not required. Autoescaping, introduced later, can be applied based on file extension, so you’ll need to take the extra suffix into account in that case.\r\n\r\nAnother good heuristic for identifying templates is that they are in a templates folder, regardless of extension. This is a common layout for projects.', 'post-bg.jpg', '2020-03-25 11:07:22'),
(4, 'Variables', 'this is fourth post.', 'fourth-post', 'Template variables are defined by the context dictionary passed to the template.\r\n\r\nYou can mess around with the variables in templates provided they are passed in by the application. Variables may have attributes or elements on them you can access too. What attributes a variable has depends heavily on the application providing that variable.\r\n\r\nYou can use a dot (.) to access attributes of a variable in addition to the standard Python __getitem__ “subscript” syntax ([]).\r\n\r\nThe following lines do the same thing:\r\n\r\n{{ foo.bar }}\r\n{{ foo[\'bar\'] }}\r\nIt’s important to know that the outer double-curly braces are not part of the variable, but the print statement. If you access variables inside tags don’t put the braces around them.\r\n\r\nIf a variable or attribute does not exist, you will get back an undefined value. What you can do with that kind of value depends on the application configuration: the default behavior is to evaluate to an empty string if printed or iterated over, and to fail for every other operation.', 'post-bg.jpg', '2020-03-25 11:07:32'),
(5, 'Implementation', 'this is fifth post.', 'slug-next', 'For the sake of convenience, foo.bar in Jinja does the following things on the Python layer:\r\n\r\ncheck for an attribute called bar on foo (getattr(foo, \'bar\'))\r\n\r\nif there is not, check for an item \'bar\' in foo (foo.__getitem__(\'bar\'))\r\n\r\nif there is not, return an undefined object.\r\n\r\nfoo[\'bar\'] works mostly the same with a small difference in sequence:\r\n\r\ncheck for an item \'bar\' in foo. (foo.__getitem__(\'bar\'))\r\n\r\nif there is not, check for an attribute called bar on foo. (getattr(foo, \'bar\'))\r\n\r\nif there is not, return an undefined object.\r\n\r\nThis is important if an object has an item and attribute with the same name. Additionally, the attr() filter only looks up attributes.', 'post-bg.jpg', '2020-03-25 11:07:42'),
(6, 'Filters', 'this is sixth post', 'slug-next3', 'Variables can be modified by filters. Filters are separated from the variable by a pipe symbol (|) and may have optional arguments in parentheses. Multiple filters can be chained. The output of one filter is applied to the next.\r\n\r\nFor example, {{ name|striptags|title }} will remove all HTML Tags from variable name and title-case the output (title(striptags(name))).\r\n\r\nFilters that accept arguments have parentheses around the arguments, just like a function call. For example: {{ listx|join(\', \') }} will join a list with commas (str.join(\', \', listx)).\r\n\r\nThe List of Builtin Filters below describes all the builtin filters.', 'post-bg.jpg', '2020-03-25 11:08:00'),
(7, 'check', 'check', 'check', 'check', 'check', '2020-03-25 15:46:54'),
(8, 'check', 'check', 'check', 'check', 'check', '2020-03-25 15:47:01'),
(9, 'check', 'check', 'check', 'check', 'check', '2020-03-25 15:47:04'),
(10, 'check', 'check', 'check', 'check', 'check', '2020-03-25 15:47:06'),
(11, 'check', 'check', 'check', 'check', 'check', '2020-03-25 15:47:09'),
(12, 'check', 'check', 'check', 'check', 'check', '2020-03-25 15:48:10'),
(13, 'check', 'check', 'check', 'check', 'check', '2020-03-25 15:48:26');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
