-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 04, 2021 at 08:25 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `postid` int(11) NOT NULL,
  `uname` varchar(128) NOT NULL,
  `date` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `postid`, `uname`, `date`, `message`) VALUES
(24, 58, 'Alex', '2021-03-03 13:44:39', 'This is my comment '),
(25, 57, 'Alex', '2021-03-03 13:45:00', 'I think this is nice '),
(28, 54, 'testi', '2021-03-03 13:59:36', 'They are so high omg!'),
(29, 58, 'coolcommentsguy', '2021-03-03 14:01:00', 'Yes this is cool!'),
(30, 58, 'coolcommentsguy', '2021-03-03 16:24:52', 'Ohh yes!'),
(31, 58, 'coolcommentsguy', '2021-03-04 15:32:34', '1 comment'),
(32, 59, 'aki', '2021-03-04 16:37:14', 'This is an awesome post'),
(33, 59, 'hmm', '2021-03-04 16:48:07', 'Omg that is great'),
(34, 44, 'testi', '2021-03-04 20:01:57', 'oh yeah'),
(35, 41, 'testi', '2021-03-04 20:16:54', 'meow meow'),
(36, 41, 'testi', '2021-03-04 20:17:10', 'hell yeah'),
(37, 58, 'testi', '2021-03-04 20:20:50', 'asdfsdfdasfgasdrgasdg'),
(38, 58, 'testi', '2021-03-04 20:21:12', 'this is awesome'),
(39, 61, 'testi', '2021-03-04 21:07:16', 'asdasd'),
(40, 43, 'testi', '2021-03-04 21:08:05', 'woah'),
(41, 59, 'Mary', '2021-03-04 22:02:29', 'Who is this handsome guy?'),
(42, 59, 'testi', '2021-03-04 22:09:36', 'sdfdsfgdrfarg'),
(43, 58, 'Romantic Arrow', '2021-03-04 22:10:34', 'oh yeah');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL DEFAULT 'defaultpostimg.png',
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 5, 'Why you should go to Finland?', 'why-you-should-go-to-finland', 201, '4.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n\r\nPellentesque quis lectus at turpis convallis molestie id sit amet neque. Aenean sollicitudin nisi sit amet arcu tincidunt egestas fermentum vitae enim. Curabitur non dictum velit, eu efficitur nisl. Proin non posuere dolor. Nullam a ultricies dolor. Maecenas in nisi sit amet sapien tempor mollis. Curabitur in condimentum augue, in feugiat enim. Curabitur rutrum arcu ac neque interdum ullamcorper. Nunc maximus vehicula mauris, vel accumsan ex varius at. Suspendisse hendrerit venenatis blandit. Phasellus quis mi id ipsum bibendum ornare.\r\n\r\nSuspendisse sit amet vulputate sem. Vivamus sollicitudin gravida tempus. Morbi at tellus eu orci molestie vehicula quis vel ex. In pretium, velit eget pulvinar placerat, nisl sem facilisis nisl, eget aliquet nulla nisi vitae sapien. Pellentesque vestibulum molestie nisi a sodales. Nullam lobortis metus eu tempor ullamcorper. Nam sed lectus congue, feugiat eros vitae, iaculis magna. Sed bibendum lacus eget lacus cursus ultrices. Morbi massa lectus, vehicula eget dolor at, porttitor semper massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. In sed laoreet risus. Donec at porta dolor. Curabitur eget turpis ut purus rhoncus dapibus.\r\n\r\nSed placerat dolor nisl, ut vulputate metus elementum dictum. Quisque quis hendrerit velit, vitae laoreet mi. Proin congue, erat in imperdiet vehicula, odio massa mattis est, non aliquam nunc nisl ac felis. Donec sit amet aliquam arcu, nec mollis turpis. Nullam pellentesque bibendum nunc volutpat volutpat. Sed tempus augue at est tempor sagittis. Cras varius aliquam orci lobortis suscipit. Donec cursus mollis molestie. In tempus a massa nec facilisis. Mauris mollis ut turpis eu euismod. Aenean dictum vestibulum mi. Ut euismod neque rutrum, pretium libero et, viverra sem. Cras in egestas lacus. In hac habitasse platea dictumst.\r\n\r\nVestibulum id dui massa. Nullam condimentum pellentesque dapibus. Morbi lacus massa, tincidunt dignissim posuere non, convallis eu lacus. Nunc tristique libero a nulla tincidunt pulvinar. Nunc ornare, velit eget interdum elementum, metus odio pharetra enim, vitae cursus arcu urna ut elit. Nam in purus at nibh hendrerit tempus. Integer quis libero eget elit congue consequat. In blandit leo ut suscipit consectetur. Pellentesque non lectus pharetra purus fringilla suscipit nec at augue. Curabitur id nulla libero. Aliquam et auctor leo, a viverra quam. Nam non ex velit. Integer bibendum leo non lectus consequat rhoncus.\r\n\r\nUt sodales arcu eu purus rhoncus, eu gravida velit pretium. Donec maximus, massa in hendrerit facilisis, mauris nunc placerat lorem, non eleifend neque lorem eu leo. Praesent vehicula at neque non tincidunt. Vivamus commodo placerat odio non feugiat. Vestibulum ac arcu eget ipsum rutrum auctor eleifend eu erat. Donec tincidunt odio nisl, eget vehicula urna dapibus vitae. Nulla ut massa a risus tincidunt ultrices. Donec tincidunt dolor in justo malesuada pulvinar. Aenean luctus quis urna ac sagittis. Mauris vel metus velit. Donec nisi nunc, pulvinar non turpis et, pulvinar maximus odio. Integer vel mauris ornare, rhoncus turpis ut, dictum neque. Pellentesque sed efficitur lorem, in efficitur tellus. Donec dictum sit amet elit ac sollicitudin.\r\n\r\nSed risus eros, porta in orci mollis, congue condimentum arcu. Donec eget malesuada eros. Pellentesque venenatis, enim id consequat fringilla, lectus mauris posuere ex, eu hendrerit dui turpis nec sapien. Fusce auctor maximus enim, sit amet tristique elit tincidunt eget. Pellentesque venenatis nisl sapien, eu venenatis purus dignissim non. Nam id diam in tellus vestibulum ultrices. Vestibulum sollicitudin pretium mauris id bibendum. Aenean ut fermentum sem. Sed sit amet maximus libero, a congue elit.\r\n\r\nSuspendisse pulvinar scelerisque nisi, ac gravida tellus aliquet vel. Etiam at odio felis. Vivamus semper, metus ac interdum auctor, augue massa faucibus quam, vitae tempor metus mauris ac justo. Nam nisl lectus, vulputate vitae leo vitae, commodo consectetur ante. Vivamus non sollicitudin lorem, sit amet consectetur est. Maecenas bibendum hendrerit euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel aliquet enim. Sed non faucibus libero.\r\n\r\nVestibulum tincidunt lectus at orci rhoncus finibus. Vestibulum laoreet suscipit libero sed iaculis. Nulla sit amet feugiat ligula. Aliquam malesuada suscipit molestie. Aliquam feugiat risus ultricies, porta lectus et, malesuada libero. Proin dolor velit, semper a nulla quis, aliquet vestibulum turpis. Aliquam ut scelerisque nisi. Donec at mollis metus. Morbi enim elit, gravida et libero in, lobortis luctus neque. Nulla facilisi. Donec vitae consequat nulla. Quisque a sapien diam. Phasellus tempus pretium leo. Curabitur commodo auctor nisi, sit amet dignissim risus porta consequat.\r\n\r\nNunc eget ipsum lacinia, bibendum tortor vitae, fermentum odio. Sed auctor neque id est venenatis, non sagittis libero facilisis. In quis enim blandit lectus placerat efficitur. Vestibulum scelerisque enim ac congue hendrerit. Curabitur elementum felis in dolor pulvinar euismod. Aenean sit amet libero faucibus, lacinia elit non, faucibus nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ac magna vitae tortor volutpat blandit eu nec lorem. Nullam blandit elit vitae lectus fringilla, sit amet convallis magna imperdiet. Nullam ut luctus justo, non ornare erat. Cras gravida pellentesque dui in varius. Integer orci ligula, euismod quis elit ac, luctus lacinia ipsum. Nullam ac ex ipsum.', 1, '2021-02-15 21:26:52', '2021-03-04 20:20:57'),
(2, 3, 'Second post on LifeBlog', 'second-post-on-lifeblog', 2, 'banner.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n\r\nPellentesque quis lectus at turpis convallis molestie id sit amet neque. Aenean sollicitudin nisi sit amet arcu tincidunt egestas fermentum vitae enim. Curabitur non dictum velit, eu efficitur nisl. Proin non posuere dolor. Nullam a ultricies dolor. Maecenas in nisi sit amet sapien tempor mollis. Curabitur in condimentum augue, in feugiat enim. Curabitur rutrum arcu ac neque interdum ullamcorper. Nunc maximus vehicula mauris, vel accumsan ex varius at. Suspendisse hendrerit venenatis blandit. Phasellus quis mi id ipsum bibendum ornare.\r\n\r\nSuspendisse sit amet vulputate sem. Vivamus sollicitudin gravida tempus. Morbi at tellus eu orci molestie vehicula quis vel ex. In pretium, velit eget pulvinar placerat, nisl sem facilisis nisl, eget aliquet nulla nisi vitae sapien. Pellentesque vestibulum molestie nisi a sodales. Nullam lobortis metus eu tempor ullamcorper. Nam sed lectus congue, feugiat eros vitae, iaculis magna. Sed bibendum lacus eget lacus cursus ultrices. Morbi massa lectus, vehicula eget dolor at, porttitor semper massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. In sed laoreet risus. Donec at porta dolor. Curabitur eget turpis ut purus rhoncus dapibus.\r\n\r\nSed placerat dolor nisl, ut vulputate metus elementum dictum. Quisque quis hendrerit velit, vitae laoreet mi. Proin congue, erat in imperdiet vehicula, odio massa mattis est, non aliquam nunc nisl ac felis. Donec sit amet aliquam arcu, nec mollis turpis. Nullam pellentesque bibendum nunc volutpat volutpat. Sed tempus augue at est tempor sagittis. Cras varius aliquam orci lobortis suscipit. Donec cursus mollis molestie. In tempus a massa nec facilisis. Mauris mollis ut turpis eu euismod. Aenean dictum vestibulum mi. Ut euismod neque rutrum, pretium libero et, viverra sem. Cras in egestas lacus. In hac habitasse platea dictumst.\r\n\r\nVestibulum id dui massa. Nullam condimentum pellentesque dapibus. Morbi lacus massa, tincidunt dignissim posuere non, convallis eu lacus. Nunc tristique libero a nulla tincidunt pulvinar. Nunc ornare, velit eget interdum elementum, metus odio pharetra enim, vitae cursus arcu urna ut elit. Nam in purus at nibh hendrerit tempus. Integer quis libero eget elit congue consequat. In blandit leo ut suscipit consectetur. Pellentesque non lectus pharetra purus fringilla suscipit nec at augue. Curabitur id nulla libero. Aliquam et auctor leo, a viverra quam. Nam non ex velit. Integer bibendum leo non lectus consequat rhoncus.\r\n\r\nUt sodales arcu eu purus rhoncus, eu gravida velit pretium. Donec maximus, massa in hendrerit facilisis, mauris nunc placerat lorem, non eleifend neque lorem eu leo. Praesent vehicula at neque non tincidunt. Vivamus commodo placerat odio non feugiat. Vestibulum ac arcu eget ipsum rutrum auctor eleifend eu erat. Donec tincidunt odio nisl, eget vehicula urna dapibus vitae. Nulla ut massa a risus tincidunt ultrices. Donec tincidunt dolor in justo malesuada pulvinar. Aenean luctus quis urna ac sagittis. Mauris vel metus velit. Donec nisi nunc, pulvinar non turpis et, pulvinar maximus odio. Integer vel mauris ornare, rhoncus turpis ut, dictum neque. Pellentesque sed efficitur lorem, in efficitur tellus. Donec dictum sit amet elit ac sollicitudin.\r\n\r\nSed risus eros, porta in orci mollis, congue condimentum arcu. Donec eget malesuada eros. Pellentesque venenatis, enim id consequat fringilla, lectus mauris posuere ex, eu hendrerit dui turpis nec sapien. Fusce auctor maximus enim, sit amet tristique elit tincidunt eget. Pellentesque venenatis nisl sapien, eu venenatis purus dignissim non. Nam id diam in tellus vestibulum ultrices. Vestibulum sollicitudin pretium mauris id bibendum. Aenean ut fermentum sem. Sed sit amet maximus libero, a congue elit.\r\n\r\nSuspendisse pulvinar scelerisque nisi, ac gravida tellus aliquet vel. Etiam at odio felis. Vivamus semper, metus ac interdum auctor, augue massa faucibus quam, vitae tempor metus mauris ac justo. Nam nisl lectus, vulputate vitae leo vitae, commodo consectetur ante. Vivamus non sollicitudin lorem, sit amet consectetur est. Maecenas bibendum hendrerit euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel aliquet enim. Sed non faucibus libero.\r\n\r\nVestibulum tincidunt lectus at orci rhoncus finibus. Vestibulum laoreet suscipit libero sed iaculis. Nulla sit amet feugiat ligula. Aliquam malesuada suscipit molestie. Aliquam feugiat risus ultricies, porta lectus et, malesuada libero. Proin dolor velit, semper a nulla quis, aliquet vestibulum turpis. Aliquam ut scelerisque nisi. Donec at mollis metus. Morbi enim elit, gravida et libero in, lobortis luctus neque. Nulla facilisi. Donec vitae consequat nulla. Quisque a sapien diam. Phasellus tempus pretium leo. Curabitur commodo auctor nisi, sit amet dignissim risus porta consequat.\r\n\r\nNunc eget ipsum lacinia, bibendum tortor vitae, fermentum odio. Sed auctor neque id est venenatis, non sagittis libero facilisis. In quis enim blandit lectus placerat efficitur. Vestibulum scelerisque enim ac congue hendrerit. Curabitur elementum felis in dolor pulvinar euismod. Aenean sit amet libero faucibus, lacinia elit non, faucibus nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ac magna vitae tortor volutpat blandit eu nec lorem. Nullam blandit elit vitae lectus fringilla, sit amet convallis magna imperdiet. Nullam ut luctus justo, non ornare erat. Cras gravida pellentesque dui in varius. Integer orci ligula, euismod quis elit ac, luctus lacinia ipsum. Nullam ac ex ipsum.', 1, '2021-02-11 20:28:33', '2021-03-02 18:54:47'),
(3, 10, 'Another post this is', 'Another-post-this-is', 1, 'banner.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n\r\nPellentesque quis lectus at turpis convallis molestie id sit amet neque. Aenean sollicitudin nisi sit amet arcu tincidunt egestas fermentum vitae enim. Curabitur non dictum velit, eu efficitur nisl. Proin non posuere dolor. Nullam a ultricies dolor. Maecenas in nisi sit amet sapien tempor mollis. Curabitur in condimentum augue, in feugiat enim. Curabitur rutrum arcu ac neque interdum ullamcorper. Nunc maximus vehicula mauris, vel accumsan ex varius at. Suspendisse hendrerit venenatis blandit. Phasellus quis mi id ipsum bibendum ornare.\r\n\r\nSuspendisse sit amet vulputate sem. Vivamus sollicitudin gravida tempus. Morbi at tellus eu orci molestie vehicula quis vel ex. In pretium, velit eget pulvinar placerat, nisl sem facilisis nisl, eget aliquet nulla nisi vitae sapien. Pellentesque vestibulum molestie nisi a sodales. Nullam lobortis metus eu tempor ullamcorper. Nam sed lectus congue, feugiat eros vitae, iaculis magna. Sed bibendum lacus eget lacus cursus ultrices. Morbi massa lectus, vehicula eget dolor at, porttitor semper massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. In sed laoreet risus. Donec at porta dolor. Curabitur eget turpis ut purus rhoncus dapibus.\r\n\r\nSed placerat dolor nisl, ut vulputate metus elementum dictum. Quisque quis hendrerit velit, vitae laoreet mi. Proin congue, erat in imperdiet vehicula, odio massa mattis est, non aliquam nunc nisl ac felis. Donec sit amet aliquam arcu, nec mollis turpis. Nullam pellentesque bibendum nunc volutpat volutpat. Sed tempus augue at est tempor sagittis. Cras varius aliquam orci lobortis suscipit. Donec cursus mollis molestie. In tempus a massa nec facilisis. Mauris mollis ut turpis eu euismod. Aenean dictum vestibulum mi. Ut euismod neque rutrum, pretium libero et, viverra sem. Cras in egestas lacus. In hac habitasse platea dictumst.\r\n\r\nVestibulum id dui massa. Nullam condimentum pellentesque dapibus. Morbi lacus massa, tincidunt dignissim posuere non, convallis eu lacus. Nunc tristique libero a nulla tincidunt pulvinar. Nunc ornare, velit eget interdum elementum, metus odio pharetra enim, vitae cursus arcu urna ut elit. Nam in purus at nibh hendrerit tempus. Integer quis libero eget elit congue consequat. In blandit leo ut suscipit consectetur. Pellentesque non lectus pharetra purus fringilla suscipit nec at augue. Curabitur id nulla libero. Aliquam et auctor leo, a viverra quam. Nam non ex velit. Integer bibendum leo non lectus consequat rhoncus.\r\n\r\nUt sodales arcu eu purus rhoncus, eu gravida velit pretium. Donec maximus, massa in hendrerit facilisis, mauris nunc placerat lorem, non eleifend neque lorem eu leo. Praesent vehicula at neque non tincidunt. Vivamus commodo placerat odio non feugiat. Vestibulum ac arcu eget ipsum rutrum auctor eleifend eu erat. Donec tincidunt odio nisl, eget vehicula urna dapibus vitae. Nulla ut massa a risus tincidunt ultrices. Donec tincidunt dolor in justo malesuada pulvinar. Aenean luctus quis urna ac sagittis. Mauris vel metus velit. Donec nisi nunc, pulvinar non turpis et, pulvinar maximus odio. Integer vel mauris ornare, rhoncus turpis ut, dictum neque. Pellentesque sed efficitur lorem, in efficitur tellus. Donec dictum sit amet elit ac sollicitudin.\r\n\r\nSed risus eros, porta in orci mollis, congue condimentum arcu. Donec eget malesuada eros. Pellentesque venenatis, enim id consequat fringilla, lectus mauris posuere ex, eu hendrerit dui turpis nec sapien. Fusce auctor maximus enim, sit amet tristique elit tincidunt eget. Pellentesque venenatis nisl sapien, eu venenatis purus dignissim non. Nam id diam in tellus vestibulum ultrices. Vestibulum sollicitudin pretium mauris id bibendum. Aenean ut fermentum sem. Sed sit amet maximus libero, a congue elit.\r\n\r\nSuspendisse pulvinar scelerisque nisi, ac gravida tellus aliquet vel. Etiam at odio felis. Vivamus semper, metus ac interdum auctor, augue massa faucibus quam, vitae tempor metus mauris ac justo. Nam nisl lectus, vulputate vitae leo vitae, commodo consectetur ante. Vivamus non sollicitudin lorem, sit amet consectetur est. Maecenas bibendum hendrerit euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel aliquet enim. Sed non faucibus libero.\r\n\r\nVestibulum tincidunt lectus at orci rhoncus finibus. Vestibulum laoreet suscipit libero sed iaculis. Nulla sit amet feugiat ligula. Aliquam malesuada suscipit molestie. Aliquam feugiat risus ultricies, porta lectus et, malesuada libero. Proin dolor velit, semper a nulla quis, aliquet vestibulum turpis. Aliquam ut scelerisque nisi. Donec at mollis metus. Morbi enim elit, gravida et libero in, lobortis luctus neque. Nulla facilisi. Donec vitae consequat nulla. Quisque a sapien diam. Phasellus tempus pretium leo. Curabitur commodo auctor nisi, sit amet dignissim risus porta consequat.\r\n\r\nNunc eget ipsum lacinia, bibendum tortor vitae, fermentum odio. Sed auctor neque id est venenatis, non sagittis libero facilisis. In quis enim blandit lectus placerat efficitur. Vestibulum scelerisque enim ac congue hendrerit. Curabitur elementum felis in dolor pulvinar euismod. Aenean sit amet libero faucibus, lacinia elit non, faucibus nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ac magna vitae tortor volutpat blandit eu nec lorem. Nullam blandit elit vitae lectus fringilla, sit amet convallis magna imperdiet. Nullam ut luctus justo, non ornare erat. Cras gravida pellentesque dui in varius. Integer orci ligula, euismod quis elit ac, luctus lacinia ipsum. Nullam ac ex ipsum.', 1, '2021-02-12 20:28:36', '2021-03-03 11:17:22'),
(4, 1, 'Testing post', 'testing-post-123', 10, '5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n\r\nPellentesque quis lectus at turpis convallis molestie id sit amet neque. Aenean sollicitudin nisi sit amet arcu tincidunt egestas fermentum vitae enim. Curabitur non dictum velit, eu efficitur nisl. Proin non posuere dolor. Nullam a ultricies dolor. Maecenas in nisi sit amet sapien tempor mollis. Curabitur in condimentum augue, in feugiat enim. Curabitur rutrum arcu ac neque interdum ullamcorper. Nunc maximus vehicula mauris, vel accumsan ex varius at. Suspendisse hendrerit venenatis blandit. Phasellus quis mi id ipsum bibendum ornare.\r\n\r\nSuspendisse sit amet vulputate sem. Vivamus sollicitudin gravida tempus. Morbi at tellus eu orci molestie vehicula quis vel ex. In pretium, velit eget pulvinar placerat, nisl sem facilisis nisl, eget aliquet nulla nisi vitae sapien. Pellentesque vestibulum molestie nisi a sodales. Nullam lobortis metus eu tempor ullamcorper. Nam sed lectus congue, feugiat eros vitae, iaculis magna. Sed bibendum lacus eget lacus cursus ultrices. Morbi massa lectus, vehicula eget dolor at, porttitor semper massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. In sed laoreet risus. Donec at porta dolor. Curabitur eget turpis ut purus rhoncus dapibus.\r\n\r\nSed placerat dolor nisl, ut vulputate metus elementum dictum. Quisque quis hendrerit velit, vitae laoreet mi. Proin congue, erat in imperdiet vehicula, odio massa mattis est, non aliquam nunc nisl ac felis. Donec sit amet aliquam arcu, nec mollis turpis. Nullam pellentesque bibendum nunc volutpat volutpat. Sed tempus augue at est tempor sagittis. Cras varius aliquam orci lobortis suscipit. Donec cursus mollis molestie. In tempus a massa nec facilisis. Mauris mollis ut turpis eu euismod. Aenean dictum vestibulum mi. Ut euismod neque rutrum, pretium libero et, viverra sem. Cras in egestas lacus. In hac habitasse platea dictumst.\r\n\r\nVestibulum id dui massa. Nullam condimentum pellentesque dapibus. Morbi lacus massa, tincidunt dignissim posuere non, convallis eu lacus. Nunc tristique libero a nulla tincidunt pulvinar. Nunc ornare, velit eget interdum elementum, metus odio pharetra enim, vitae cursus arcu urna ut elit. Nam in purus at nibh hendrerit tempus. Integer quis libero eget elit congue consequat. In blandit leo ut suscipit consectetur. Pellentesque non lectus pharetra purus fringilla suscipit nec at augue. Curabitur id nulla libero. Aliquam et auctor leo, a viverra quam. Nam non ex velit. Integer bibendum leo non lectus consequat rhoncus.\r\n\r\nUt sodales arcu eu purus rhoncus, eu gravida velit pretium. Donec maximus, massa in hendrerit facilisis, mauris nunc placerat lorem, non eleifend neque lorem eu leo. Praesent vehicula at neque non tincidunt. Vivamus commodo placerat odio non feugiat. Vestibulum ac arcu eget ipsum rutrum auctor eleifend eu erat. Donec tincidunt odio nisl, eget vehicula urna dapibus vitae. Nulla ut massa a risus tincidunt ultrices. Donec tincidunt dolor in justo malesuada pulvinar. Aenean luctus quis urna ac sagittis. Mauris vel metus velit. Donec nisi nunc, pulvinar non turpis et, pulvinar maximus odio. Integer vel mauris ornare, rhoncus turpis ut, dictum neque. Pellentesque sed efficitur lorem, in efficitur tellus. Donec dictum sit amet elit ac sollicitudin.\r\n\r\nSed risus eros, porta in orci mollis, congue condimentum arcu. Donec eget malesuada eros. Pellentesque venenatis, enim id consequat fringilla, lectus mauris posuere ex, eu hendrerit dui turpis nec sapien. Fusce auctor maximus enim, sit amet tristique elit tincidunt eget. Pellentesque venenatis nisl sapien, eu venenatis purus dignissim non. Nam id diam in tellus vestibulum ultrices. Vestibulum sollicitudin pretium mauris id bibendum. Aenean ut fermentum sem. Sed sit amet maximus libero, a congue elit.\r\n\r\nSuspendisse pulvinar scelerisque nisi, ac gravida tellus aliquet vel. Etiam at odio felis. Vivamus semper, metus ac interdum auctor, augue massa faucibus quam, vitae tempor metus mauris ac justo. Nam nisl lectus, vulputate vitae leo vitae, commodo consectetur ante. Vivamus non sollicitudin lorem, sit amet consectetur est. Maecenas bibendum hendrerit euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel aliquet enim. Sed non faucibus libero.\r\n\r\nVestibulum tincidunt lectus at orci rhoncus finibus. Vestibulum laoreet suscipit libero sed iaculis. Nulla sit amet feugiat ligula. Aliquam malesuada suscipit molestie. Aliquam feugiat risus ultricies, porta lectus et, malesuada libero. Proin dolor velit, semper a nulla quis, aliquet vestibulum turpis. Aliquam ut scelerisque nisi. Donec at mollis metus. Morbi enim elit, gravida et libero in, lobortis luctus neque. Nulla facilisi. Donec vitae consequat nulla. Quisque a sapien diam. Phasellus tempus pretium leo. Curabitur commodo auctor nisi, sit amet dignissim risus porta consequat.\r\n\r\nNunc eget ipsum lacinia, bibendum tortor vitae, fermentum odio. Sed auctor neque id est venenatis, non sagittis libero facilisis. In quis enim blandit lectus placerat efficitur. Vestibulum scelerisque enim ac congue hendrerit. Curabitur elementum felis in dolor pulvinar euismod. Aenean sit amet libero faucibus, lacinia elit non, faucibus nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ac magna vitae tortor volutpat blandit eu nec lorem. Nullam blandit elit vitae lectus fringilla, sit amet convallis magna imperdiet. Nullam ut luctus justo, non ornare erat. Cras gravida pellentesque dui in varius. Integer orci ligula, euismod quis elit ac, luctus lacinia ipsum. Nullam ac ex ipsum.', 1, '2021-02-13 21:50:33', '2021-03-02 19:15:58'),
(5, 3, 'Amazing day', 'amazing-day', 2, '7.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n\r\nPellentesque quis lectus at turpis convallis molestie id sit amet neque. Aenean sollicitudin nisi sit amet arcu tincidunt egestas fermentum vitae enim. Curabitur non dictum velit, eu efficitur nisl. Proin non posuere dolor. Nullam a ultricies dolor. Maecenas in nisi sit amet sapien tempor mollis. Curabitur in condimentum augue, in feugiat enim. Curabitur rutrum arcu ac neque interdum ullamcorper. Nunc maximus vehicula mauris, vel accumsan ex varius at. Suspendisse hendrerit venenatis blandit. Phasellus quis mi id ipsum bibendum ornare.\r\n\r\nSuspendisse sit amet vulputate sem. Vivamus sollicitudin gravida tempus. Morbi at tellus eu orci molestie vehicula quis vel ex. In pretium, velit eget pulvinar placerat, nisl sem facilisis nisl, eget aliquet nulla nisi vitae sapien. Pellentesque vestibulum molestie nisi a sodales. Nullam lobortis metus eu tempor ullamcorper. Nam sed lectus congue, feugiat eros vitae, iaculis magna. Sed bibendum lacus eget lacus cursus ultrices. Morbi massa lectus, vehicula eget dolor at, porttitor semper massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. In sed laoreet risus. Donec at porta dolor. Curabitur eget turpis ut purus rhoncus dapibus.\r\n\r\nSed placerat dolor nisl, ut vulputate metus elementum dictum. Quisque quis hendrerit velit, vitae laoreet mi. Proin congue, erat in imperdiet vehicula, odio massa mattis est, non aliquam nunc nisl ac felis. Donec sit amet aliquam arcu, nec mollis turpis. Nullam pellentesque bibendum nunc volutpat volutpat. Sed tempus augue at est tempor sagittis. Cras varius aliquam orci lobortis suscipit. Donec cursus mollis molestie. In tempus a massa nec facilisis. Mauris mollis ut turpis eu euismod. Aenean dictum vestibulum mi. Ut euismod neque rutrum, pretium libero et, viverra sem. Cras in egestas lacus. In hac habitasse platea dictumst.\r\n\r\nVestibulum id dui massa. Nullam condimentum pellentesque dapibus. Morbi lacus massa, tincidunt dignissim posuere non, convallis eu lacus. Nunc tristique libero a nulla tincidunt pulvinar. Nunc ornare, velit eget interdum elementum, metus odio pharetra enim, vitae cursus arcu urna ut elit. Nam in purus at nibh hendrerit tempus. Integer quis libero eget elit congue consequat. In blandit leo ut suscipit consectetur. Pellentesque non lectus pharetra purus fringilla suscipit nec at augue. Curabitur id nulla libero. Aliquam et auctor leo, a viverra quam. Nam non ex velit. Integer bibendum leo non lectus consequat rhoncus.\r\n\r\nUt sodales arcu eu purus rhoncus, eu gravida velit pretium. Donec maximus, massa in hendrerit facilisis, mauris nunc placerat lorem, non eleifend neque lorem eu leo. Praesent vehicula at neque non tincidunt. Vivamus commodo placerat odio non feugiat. Vestibulum ac arcu eget ipsum rutrum auctor eleifend eu erat. Donec tincidunt odio nisl, eget vehicula urna dapibus vitae. Nulla ut massa a risus tincidunt ultrices. Donec tincidunt dolor in justo malesuada pulvinar. Aenean luctus quis urna ac sagittis. Mauris vel metus velit. Donec nisi nunc, pulvinar non turpis et, pulvinar maximus odio. Integer vel mauris ornare, rhoncus turpis ut, dictum neque. Pellentesque sed efficitur lorem, in efficitur tellus. Donec dictum sit amet elit ac sollicitudin.\r\n\r\nSed risus eros, porta in orci mollis, congue condimentum arcu. Donec eget malesuada eros. Pellentesque venenatis, enim id consequat fringilla, lectus mauris posuere ex, eu hendrerit dui turpis nec sapien. Fusce auctor maximus enim, sit amet tristique elit tincidunt eget. Pellentesque venenatis nisl sapien, eu venenatis purus dignissim non. Nam id diam in tellus vestibulum ultrices. Vestibulum sollicitudin pretium mauris id bibendum. Aenean ut fermentum sem. Sed sit amet maximus libero, a congue elit.\r\n\r\nSuspendisse pulvinar scelerisque nisi, ac gravida tellus aliquet vel. Etiam at odio felis. Vivamus semper, metus ac interdum auctor, augue massa faucibus quam, vitae tempor metus mauris ac justo. Nam nisl lectus, vulputate vitae leo vitae, commodo consectetur ante. Vivamus non sollicitudin lorem, sit amet consectetur est. Maecenas bibendum hendrerit euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel aliquet enim. Sed non faucibus libero.\r\n\r\nVestibulum tincidunt lectus at orci rhoncus finibus. Vestibulum laoreet suscipit libero sed iaculis. Nulla sit amet feugiat ligula. Aliquam malesuada suscipit molestie. Aliquam feugiat risus ultricies, porta lectus et, malesuada libero. Proin dolor velit, semper a nulla quis, aliquet vestibulum turpis. Aliquam ut scelerisque nisi. Donec at mollis metus. Morbi enim elit, gravida et libero in, lobortis luctus neque. Nulla facilisi. Donec vitae consequat nulla. Quisque a sapien diam. Phasellus tempus pretium leo. Curabitur commodo auctor nisi, sit amet dignissim risus porta consequat.\r\n\r\nNunc eget ipsum lacinia, bibendum tortor vitae, fermentum odio. Sed auctor neque id est venenatis, non sagittis libero facilisis. In quis enim blandit lectus placerat efficitur. Vestibulum scelerisque enim ac congue hendrerit. Curabitur elementum felis in dolor pulvinar euismod. Aenean sit amet libero faucibus, lacinia elit non, faucibus nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ac magna vitae tortor volutpat blandit eu nec lorem. Nullam blandit elit vitae lectus fringilla, sit amet convallis magna imperdiet. Nullam ut luctus justo, non ornare erat. Cras gravida pellentesque dui in varius. Integer orci ligula, euismod quis elit ac, luctus lacinia ipsum. Nullam ac ex ipsum.', 1, '2021-02-14 20:28:41', '2021-03-02 19:07:35'),
(6, 1, 'Sports are awesome', 'sports-are-awesome', 1, '3.jpg', '111 111 111 \"lala\" - me & youLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n\r\nPellentesque quis lectus at turpis convallis molestie id sit amet neque. Aenean sollicitudin nisi sit amet arcu tincidunt egestas fermentum vitae enim. Curabitur non dictum velit, eu efficitur nisl. Proin non posuere dolor. Nullam a ultricies dolor. Maecenas in nisi sit amet sapien tempor mollis. Curabitur in condimentum augue, in feugiat enim. Curabitur rutrum arcu ac neque interdum ullamcorper. Nunc maximus vehicula mauris, vel accumsan ex varius at. Suspendisse hendrerit venenatis blandit. Phasellus quis mi id ipsum bibendum ornare.\r\n\r\nSuspendisse sit amet vulputate sem. Vivamus sollicitudin gravida tempus. Morbi at tellus eu orci molestie vehicula quis vel ex. In pretium, velit eget pulvinar placerat, nisl sem facilisis nisl, eget aliquet nulla nisi vitae sapien. Pellentesque vestibulum molestie nisi a sodales. Nullam lobortis metus eu tempor ullamcorper. Nam sed lectus congue, feugiat eros vitae, iaculis magna. Sed bibendum lacus eget lacus cursus ultrices. Morbi massa lectus, vehicula eget dolor at, porttitor semper massa. Interdum et malesuada fames ac ante ipsum primis in faucibus. In sed laoreet risus. Donec at porta dolor. Curabitur eget turpis ut purus rhoncus dapibus.\r\n\r\nSed placerat dolor nisl, ut vulputate metus elementum dictum. Quisque quis hendrerit velit, vitae laoreet mi. Proin congue, erat in imperdiet vehicula, odio massa mattis est, non aliquam nunc nisl ac felis. Donec sit amet aliquam arcu, nec mollis turpis. Nullam pellentesque bibendum nunc volutpat volutpat. Sed tempus augue at est tempor sagittis. Cras varius aliquam orci lobortis suscipit. Donec cursus mollis molestie. In tempus a massa nec facilisis. Mauris mollis ut turpis eu euismod. Aenean dictum vestibulum mi. Ut euismod neque rutrum, pretium libero et, viverra sem. Cras in egestas lacus. In hac habitasse platea dictumst.\r\n\r\nVestibulum id dui massa. Nullam condimentum pellentesque dapibus. Morbi lacus massa, tincidunt dignissim posuere non, convallis eu lacus. Nunc tristique libero a nulla tincidunt pulvinar. Nunc ornare, velit eget interdum elementum, metus odio pharetra enim, vitae cursus arcu urna ut elit. Nam in purus at nibh hendrerit tempus. Integer quis libero eget elit congue consequat. In blandit leo ut suscipit consectetur. Pellentesque non lectus pharetra purus fringilla suscipit nec at augue. Curabitur id nulla libero. Aliquam et auctor leo, a viverra quam. Nam non ex velit. Integer bibendum leo non lectus consequat rhoncus.\r\n\r\nUt sodales arcu eu purus rhoncus, eu gravida velit pretium. Donec maximus, massa in hendrerit facilisis, mauris nunc placerat lorem, non eleifend neque lorem eu leo. Praesent vehicula at neque non tincidunt. Vivamus commodo placerat odio non feugiat. Vestibulum ac arcu eget ipsum rutrum auctor eleifend eu erat. Donec tincidunt odio nisl, eget vehicula urna dapibus vitae. Nulla ut massa a risus tincidunt ultrices. Donec tincidunt dolor in justo malesuada pulvinar. Aenean luctus quis urna ac sagittis. Mauris vel metus velit. Donec nisi nunc, pulvinar non turpis et, pulvinar maximus odio. Integer vel mauris ornare, rhoncus turpis ut, dictum neque. Pellentesque sed efficitur lorem, in efficitur tellus. Donec dictum sit amet elit ac sollicitudin.\r\n\r\nSed risus eros, porta in orci mollis, congue condimentum arcu. Donec eget malesuada eros. Pellentesque venenatis, enim id consequat fringilla, lectus mauris posuere ex, eu hendrerit dui turpis nec sapien. Fusce auctor maximus enim, sit amet tristique elit tincidunt eget. Pellentesque venenatis nisl sapien, eu venenatis purus dignissim non. Nam id diam in tellus vestibulum ultrices. Vestibulum sollicitudin pretium mauris id bibendum. Aenean ut fermentum sem. Sed sit amet maximus libero, a congue elit.\r\n\r\nSuspendisse pulvinar scelerisque nisi, ac gravida tellus aliquet vel. Etiam at odio felis. Vivamus semper, metus ac interdum auctor, augue massa faucibus quam, vitae tempor metus mauris ac justo. Nam nisl lectus, vulputate vitae leo vitae, commodo consectetur ante. Vivamus non sollicitudin lorem, sit amet consectetur est. Maecenas bibendum hendrerit euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vel aliquet enim. Sed non faucibus libero.\r\n\r\nVestibulum tincidunt lectus at orci rhoncus finibus. Vestibulum laoreet suscipit libero sed iaculis. Nulla sit amet feugiat ligula. Aliquam malesuada suscipit molestie. Aliquam feugiat risus ultricies, porta lectus et, malesuada libero. Proin dolor velit, semper a nulla quis, aliquet vestibulum turpis. Aliquam ut scelerisque nisi. Donec at mollis metus. Morbi enim elit, gravida et libero in, lobortis luctus neque. Nulla facilisi. Donec vitae consequat nulla. Quisque a sapien diam. Phasellus tempus pretium leo. Curabitur commodo auctor nisi, sit amet dignissim risus porta consequat.\r\n\r\nNunc eget ipsum lacinia, bibendum tortor vitae, fermentum odio. Sed auctor neque id est venenatis, non sagittis libero facilisis. In quis enim blandit lectus placerat efficitur. Vestibulum scelerisque enim ac congue hendrerit. Curabitur elementum felis in dolor pulvinar euismod. Aenean sit amet libero faucibus, lacinia elit non, faucibus nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Maecenas ac magna vitae tortor volutpat blandit eu nec lorem. Nullam blandit elit vitae lectus fringilla, sit amet convallis magna imperdiet. Nullam ut luctus justo, non ornare erat. Cras gravida pellentesque dui in varius. Integer orci ligula, euismod quis elit ac, luctus lacinia ipsum. Nullam ac ex ipsum.', 1, '2021-02-15 20:48:01', '2021-03-04 17:58:26'),
(41, 12, 'Inspiration Category Post', 'inspiration-category-post', 44, '603d6522c6bb46.73035148.jpg', 'Cras id pharetra felis. Phasellus eu tincidunt mi. Suspendisse nec ipsum imperdiet, lobortis ante et, euismod est. Sed nec ultrices neque. Donec gravida porttitor tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla quam nunc, ullamcorper eget dui in, varius luctus arcu. Nullam malesuada neque id arcu tempus, molestie rutrum nisi eleifend. Cras ultrices porta erat id venenatis. In est mi, pharetra a venenatis et, tristique ac mi. Etiam venenatis pretium ex eu elementum. Fusce fringilla dolor et metus cursus, vitae ullamcorper arcu pulvinar. Pellentesque malesuada porttitor velit vitae aliquam. Pellentesque nec molestie est. Quisque eu semper diam.', 1, '2021-03-01 22:05:22', '2021-03-04 19:19:21'),
(42, 12, 'Motivation Category Post', 'motivation-category-post', 300, '603d66963583c1.84450162.jpg', 'Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed mollis a lorem in ultrices. Vivamus hendrerit auctor tellus at semper. Morbi sit amet lacus dolor. Donec tristique finibus bibendum. Sed porta eget est sed malesuada. Maecenas ligula lorem, porta non nibh at, commodo varius erat. Ut a venenatis metus, id volutpat dolor. Aliquam eros metus, pellentesque sit amet mattis in, ultricies id eros.', 1, '2021-03-01 22:11:34', '2021-03-04 20:18:25'),
(43, 12, 'Diary Category Post', 'diary-category-post', 13, '603d66ba95d4c5.95406599.jpg', 'Duis aliquam felis tellus, eget tincidunt libero bibendum et. Sed ut nibh tellus. Fusce auctor at sem eget porta. Aenean dictum purus vitae mi interdum, in fermentum nisi convallis. Mauris luctus enim ac sapien efficitur, nec rutrum elit hendrerit. Nam vitae sagittis urna. Suspendisse potenti.', 1, '2021-03-01 22:12:10', '2021-03-04 19:09:06'),
(44, 12, 'Travel Category Post', 'travel-category-post', 55, '603d66dc2e5871.80296030.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque facilisis est a lectus aliquam, ac porta ex luctus. Suspendisse ut ornare est, non bibendum tellus. Cras vitae eleifend nibh. Duis tincidunt, mi eu sodales pretium, erat purus rutrum magna, eu vehicula eros nisi sed ipsum. Curabitur ultricies, orci et condimentum tempus, arcu nibh fermentum nibh, in volutpat felis mi quis augue. Ut porta, ante ut malesuada tincidunt, massa purus sodales quam, at commodo ligula erat ac lectus. Donec iaculis eros a ante laoreet ultricies. Morbi cursus egestas nisi, non lacinia purus commodo eu. Praesent suscipit porta risus vel rutrum. In at metus sit amet sapien finibus tristique sit amet et justo. Donec pellentesque, massa sit amet laoreet posuere, tortor magna consectetur augue, vitae vulputate ante nunc ac lectus. Donec a sem ut nulla ultrices volutpat.', 1, '2021-03-01 22:12:44', '2021-03-04 20:16:05'),
(45, 12, 'Health Category Post', 'health-category-post', 10, '603d66f9a19078.43295630.jpg', 'Cras id pharetra felis. Phasellus eu tincidunt mi. Suspendisse nec ipsum imperdiet, lobortis ante et, euismod est. Sed nec ultrices neque. Donec gravida porttitor tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla quam nunc, ullamcorper eget dui in, varius luctus arcu. Nullam malesuada neque id arcu tempus, molestie rutrum nisi eleifend. Cras ultrices porta erat id venenatis. In est mi, pharetra a venenatis et, tristique ac mi. Etiam venenatis pretium ex eu elementum. Fusce fringilla dolor et metus cursus, vitae ullamcorper arcu pulvinar. Pellentesque malesuada porttitor velit vitae aliquam. Pellentesque nec molestie est. Quisque eu semper diam.', 1, '2021-03-01 22:13:13', '2021-03-02 18:54:01'),
(50, 12, '\"Test @#! weird title\"', 'test-weird-title', 0, '603d6cc97559b4.37796822.jpg', 'Cras id pharetra felis. Phasellus eu tincidunt mi. Suspendisse nec ipsum imperdiet, lobortis ante et, euismod est. Sed nec ultrices neque. Donec gravida porttitor tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla quam nunc, ullamcorper eget dui in, varius luctus arcu. Nullam malesuada neque id arcu tempus, molestie rutrum nisi eleifend. Cras ultrices porta erat id venenatis. In est mi, phar&quot;etra a venenatis et, tristique ac mi. Etiam venenatis pretium ex eu elementum. Fusce fringilla dolor et metus cursus, vitae ullamcorper arcu pulvinar. Pellentesque malesuada porttitor velit vitae aliquam. Pellentesque nec molestie est. Quisque eu semper diam.&quot;', 1, '2021-03-01 22:38:01', '2021-03-01 22:38:07'),
(51, 12, 'Cokolwiek', 'cokolwiek', 4, '603e1e50142a26.11701632.jpg', 'Cras id pharetra felis. Phasellus eu tincidunt mi. Suspendisse nec ipsum imperdiet, lobortis ante et, euismod est. Sed nec ultrices neque. Donec gravida porttitor tortor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla quam nunc, ullamcorper eget dui in, varius luctus arcu. Nullam malesuada neque id arcu tempus, molestie rutrum nisi eleifend. Cras ultrices porta erat id venenatis. In est mi, pharetra a venenatis et, tristique ac mi. Etiam venenatis pretium ex eu elementum. Fusce fringilla dolor et metus cursus, vitae ullamcorper arcu pulvinar. Pellentesque malesuada porttitor velit vitae aliquam. Pellentesque nec molestie est. Quisque eu semper diam.\r\n\r\n', 1, '2021-03-02 11:15:28', '2021-03-04 19:03:13'),
(53, 12, 'Arctic', 'arctic', 5, '603e228f59c276.13944520.jpg', 'Nulla luctus mollis lorem, a laoreet tellus viverra eu. Morbi et mattis velit, aliquam suscipit libero. Duis iaculis mauris id elementum vestibulum. Integer dictum fermentum leo id posuere. Suspendisse imperdiet pretium enim in sodales. Nulla facilisi. Cras varius odio vel dapibus tincidunt. Integer gravida tortor non lacinia faucibus. In auctor, mi sit amet gravida varius, odio dolor molestie libero, vel ultrices purus erat et nisl. Donec placerat sagittis dui at viverra. Praesent rutrum porta felis vel sodales. Morbi vestibulum libero nec molestie sodales. Fusce sagittis nisl ligula, nec accumsan libero luctus in. Vivamus ut neque a ipsum elementum aliquet. Sed tincidunt eros sodales dolor finibus, hendrerit aliquet felis mattis. Donec nec pharetra purus.&lt;/p&gt;\r\n', 1, '2021-03-02 11:33:35', '2021-03-04 20:15:33'),
(54, 12, 'Mountain high', 'mountain-high', 30, '603e4522071ac2.41803213.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n', 1, '2021-03-02 13:05:55', '2021-03-04 20:14:37'),
(57, 12, 'Testing one two', 'testing-one-two', 26, '603e5f04c526d1.01810054.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n', 1, '2021-03-02 15:51:32', '2021-03-04 20:14:36'),
(58, 12, 'A lower power A lower power', 'a-lower-power-a-lower-power', 153, '603e756b05b531.59013644.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n', 1, '2021-03-02 17:27:07', '2021-03-04 20:17:55'),
(59, 14, 'Hamk is awesome', 'hamk-is-awesome', 45, '6041058d8614d0.96840248.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n', 1, '2021-03-04 14:36:57', '2021-03-04 20:14:52'),
(61, 12, 'power of gray', 'power-of-gray', 250, '60412a9f270cb8.62637862.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec quis sollicitudin lectus. Aliquam sollicitudin, dui ac porta dictum, nunc tortor dignissim urna, non ultricies arcu nisi vitae sem. Ut at commodo libero. Vivamus pretium ligula ut justo commodo accumsan. Duis tempor lacus dignissim diam cursus, in tempor sem aliquam. Duis molestie lorem in tortor commodo varius. Vestibulum vehicula scelerisque eros, sed feugiat nunc hendrerit et. Etiam gravida lorem consectetur, molestie arcu quis, rutrum nulla. Vestibulum ullamcorper ex et faucibus molestie. Pellentesque elementum ante leo, id tempor lorem elementum nec. Maecenas neque lorem, mattis et massa sed, imperdiet congue metus.\r\n', 1, '2021-03-04 18:44:47', '2021-03-04 20:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `topic_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 4),
(4, 4, 2),
(5, 5, 3),
(6, 6, 3),
(15, 41, 1),
(16, 42, 1),
(17, 43, 3),
(18, 44, 4),
(19, 45, 5),
(24, 50, 3),
(25, 51, 3),
(27, 53, 4),
(28, 54, 2),
(29, 57, 2),
(30, 58, 5),
(31, 59, 5),
(33, 61, 4);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Inspiration', 'inspiration'),
(2, 'Motivation', 'motivation'),
(3, 'Diary', 'diary'),
(4, 'Travel', 'travel'),
(5, 'Health', 'health');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gender` enum('Male','Female','Other') DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT 'profileplaceholder.jpg',
  `about` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `uname`, `email`, `role`, `password`, `city`, `phone`, `gender`, `profile_pic`, `about`, `created_at`, `updated_at`) VALUES
(1, 'Cihan', 'cihan', 'anna@cihan.com', 'Author', 'mypassword', 'Hameenlinna', '00 000 0000', 'Other', 'profileplaceholder.jpg', NULL, '2021-02-16 10:52:58', '2021-02-28 21:11:33'),
(3, 'Anna', 'kota', 'anna2@cihan.com', 'Author', '12345', 'ada', '22 222 2222', 'Female', 'profileplaceholder.jpg', NULL, '2021-02-16 15:47:41', '2021-02-28 22:06:07'),
(4, 'Aleksander', 'Alex', 'alex11@hmm.com', NULL, '29ec5de521e579f7b5cbfbab1af94805', NULL, '212312312313', NULL, 'profileplaceholder.jpg', NULL, '2021-02-20 12:48:31', '2021-02-28 21:11:31'),
(5, 'Michael', 'michael', 't@blablabla.com', NULL, '44f88b9c3d617c8a69b1bdb3405f3b19', NULL, '55555555555', NULL, 'profileplaceholder.jpg', NULL, '2021-02-25 12:25:29', '2021-02-28 21:11:27'),
(6, 'lahmenderpe', 'lahmenderpe', 'lahmenderpe@gmail.com', NULL, '29b394b684c14270f7c69f792972f6a7', NULL, '11-11-1111111', NULL, 'profileplaceholder.jpg', NULL, '2021-02-25 20:26:17', '2021-02-28 21:11:25'),
(7, 'Jane White', 'jane', 'jane@gmail.com', NULL, '38ecb2f7e6507810817b112bd2865ca1', NULL, '11111111111', NULL, 'profileplaceholder.jpg', NULL, '2021-02-25 20:36:41', '2021-02-28 21:11:22'),
(10, 'This is me', 'Tsufi', 'annanwnansd@tes.testimony.fi', NULL, '9bec43ca72d069c6da797b480e69aee5', 'Neverland', '4982392758247', 'Female', '603be8e93e37f3.10076269.jpg', 'IT WORKS NOW', '2021-02-26 14:42:59', '2021-02-28 19:03:05'),
(11, 'Cezar', 'ghost', '3413434234@blabla.pl', NULL, '9bec43ca72d069c6da797b480e69aee5', NULL, '+358457364827', NULL, 'profileplaceholder.jpg', NULL, '2021-02-27 18:37:32', NULL),
(12, 'Testuser', 'testi', 'tt@blablablaa.com', NULL, '2ac9cb7dc02b3c0083eb70898e549b63', 'Trololo', '232232131231', 'Female', '603ca2e74d1bf8.17237351.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam rhoncus ante sit amet sem luctus ultricies. Pellentesque vel fringilla augue. Integer hendrerit vulputate facilisis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Praesent ac faucibus nunc. Aenean volutpat, quam eu tempor fringilla, risus felis scelerisque lorem, non hendrerit arcu massa sed nibh. Phasellus faucibus, mauris non gravida aliquet, magna justo mattis ipsum, sit amet maximus mauris diam ut dui. Donec dui ipsum, blandit sit amet tempor nec, facilisis sit amet felis.', '2021-02-28 21:15:05', '2021-03-04 18:44:00'),
(13, 'iamcoolcommentguy', 'coolcommentsguy', 'coolcomments@gmail.com', NULL, '2ac9cb7dc02b3c0083eb70898e549b63', NULL, '+375402012341', NULL, 'profileplaceholder.jpg', NULL, '2021-03-03 14:00:45', NULL),
(14, 'Cihan', 'aki', 'aki@gmail.com', NULL, '2ac9cb7dc02b3c0083eb70898e549b63', 'Adana', '111111111', 'Male', '6041055b6415f8.08064564.jpg', 'I am awesome', '2021-03-04 14:29:52', '2021-03-04 16:05:47'),
(15, 'Bra', 'bra', 'bra@gmail.com', NULL, '2ac9cb7dc02b3c0083eb70898e549b63', '', '2222222', 'Male', '60413f6b2634e8.52017326.jpg', 'Great guy ', '2021-03-04 14:38:12', '2021-03-04 20:13:44'),
(17, 'asd', 'cla', 'cla@gmail.com', NULL, '2ac9cb7dc02b3c0083eb70898e549b63', 'Adana', '1111111', 'Male', '604104851bd743.18708128.jpg', 'asdasd', '2021-03-04 14:50:18', '2021-03-04 16:02:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `post_topic`
--
ALTER TABLE `post_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
