

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` longtext NOT NULL,
  `image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `about` (`id`, `title`, `content`, `image`) VALUES
(10, 'About Us', '<p>Welcome to Apartment Management System, a pioneering force in the realm of Apartment Management Systems, where innovation meets efficiency. At Apartment Management System, we specialize in providing a comprehensive solution for agent managers, offering a seamless and intuitive platform for effective apartment management. Experience the ease of managing day-to-day operations through our user-friendly interface, designed to save time and enhance productivity.</p>\r\n<p>An Apartment Management System is a program or system that offers online management tools to make agent&rsquo;s daily responsibilities easier. These solutions enable property or apartment administration, rent collection, and client information gathering. The goal of the apartment management system is to provide a digital platform for the entire process. Given that some apartment managers find it difficult to organize rent collection or get in touch with their clients, this tool is extremely beneficial.</p>\r\n<p>The primary goal of the project is to create an online apartment management system that will enable the user fast and easily. This system is implemented by JS, CSS, BOOTSTRAP and HTML. MySQL is used as the main database server.</p>', 'apartment-building-in-sampaloc-manila-the-philippines-FFEF92.jpg');


CREATE TABLE `admin` (
  `aid` int(10) NOT NULL,
  `auser` varchar(50) NOT NULL,
  `aemail` varchar(50) NOT NULL,
  `apass` varchar(50) NOT NULL,
  `adob` date NOT NULL,
  `aphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `admin` (`aid`, `auser`, `aemail`, `apass`, `adob`, `aphone`) VALUES
(9, 'admin', 'admin@gmail.com', 'Password', '2002-04-23', '1470002569'),
(10, 'FRANZ CATUDAY', 'franzcatuday@gmail.com', '12345', '2002-04-23', '0977767678');


CREATE TABLE `feedback` (
  `fid` int(50) NOT NULL,
  `uid` int(50) NOT NULL,
  `fdescription` varchar(300) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `feedback` (`fid`, `uid`, `fdescription`, `date`) VALUES
(10, 40, 'jansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfnjansfkasjfn', '2024-02-10 18:48:14');


CREATE TABLE `property` (
  `pid` int(50) NOT NULL,
  `title` varchar(200) NOT NULL,
  `pcontent` longtext NOT NULL,
  `type` varchar(100) NOT NULL,
  `stype` varchar(100) NOT NULL,
  `bedroom` int(50) NOT NULL,
  `bathroom` int(50) NOT NULL,
  `kitchen` int(50) NOT NULL,
  `floor` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `province` varchar(100) NOT NULL,
  `feature` longtext NOT NULL,
  `pimage` varchar(300) NOT NULL,
  `pimage1` varchar(300) NOT NULL,
  `pimage2` varchar(300) NOT NULL,
  `pimage3` varchar(300) NOT NULL,
  `pimage4` varchar(300) NOT NULL,
  `uid` int(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `isFeatured` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `property` (`pid`, `title`, `pcontent`, `type`, `stype`, `bedroom`, `bathroom`, `kitchen`, `floor`, `price`, `location`, `city`, `province`, `feature`, `pimage`, `pimage1`, `pimage2`, `pimage3`, `pimage4`, `uid`, `status`, `date`, `isFeatured`) VALUES
(3, 'Maras Apartment', '<p>2minutes drive away from shool and has a very nice road</p>', 'apartment', 'rent', 1, 1, 1, '1st Floor', 30000, 'Macaria vill', 'lipa', 'batangas', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', '80ff4cb1b1c5d2.jpg', 'Apartment_Buy_2.jpg', 'images (1).jpg', 'up-the-alley-apartments.jpg', 'apartment-building-in-sampaloc-manila-the-philippines-FFEF92.jpg', 2, 'available', '2024-02-10 23:09:15', 1),
(4, 'Mark Apartment', '<p>15 minutes drive from tagaytay city</p>', 'apartment', 'rent', 2, 2, 1, '2nd Floor', 10000, 'mckinley hills', 'silang', 'cavite', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'YOO-C-Apartment-in-Dumaguete-City.jpg', 'images (1).jpg', 'up-the-alley-apartments.jpg', 'Apartment_Buy_2.jpg', 'Apartment_Buy_2.jpg', 3, 'available', '2024-02-10 23:16:18', 1),
(5, 'JED APARTMENT', '<p>Near at beach resorts</p>', 'apartment', 'rent', 5, 3, 2, '2nd Floor', 20000, 'kamelyo', 'nasugbu', 'batangas', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'images (1).jpg', 'up-the-alley-apartments.jpg', 'Apartment_Buy_2.jpg', 'apartment-building-in-sampaloc-manila-the-philippines-FFEF92.jpg', 'up-the-alley-apartments.jpg', 4, 'available', '2024-02-10 23:19:59', 1),
(6, 'joyce apartment', '<p>Gubat vibes apartment</p>', 'apartment', 'rent', 3, 3, 1, '1st Floor', 30000, 'delapaz homes', 'binan', 'laguna', '<p>&nbsp;</p>\r\n<!---feature area start--->\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Property Age : </span>10 Years</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Swiming Pool : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Parking : </span>Yes</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Type : </span>Apartment</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Security : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Dining Capacity : </span>10 People</li>\r\n</ul>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<ul>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">CCTV : </span>Yes</li>\r\n<li class=\"mb-3\"><span class=\"text-secondary font-weight-bold\">Water Supply : </span>Ground Water / Tank</li>\r\n</ul>\r\n</div>\r\n<!---feature area end---->\r\n<p>&nbsp;</p>', 'Apartment_Buy_2.jpg', 'up-the-alley-apartments.jpg', 'download (2).jpg', 'up-the-alley-apartments.jpg', 'YOO-C-Apartment-in-Dumaguete-City.jpg', 5, 'available', '2024-02-10 23:23:59', 1);



CREATE TABLE `user` (
  `uid` int(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `uphone` varchar(20) NOT NULL,
  `upass` varchar(50) NOT NULL,
  `utype` varchar(50) NOT NULL,
  `uimage` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;



INSERT INTO `user` (`uid`, `uname`, `uemail`, `uphone`, `upass`, `utype`, `uimage`) VALUES
(2, 'MARA SANTOS', 'mara@gmail.com', '0876763787', '8cb2237d0679ca88db6464eac60da96345513964', 'agent', 'WIN_20240208_21_00_25_Pro.jpg'),
(3, 'MARK BORRETA', 'markborreta0951@gmail.com', '0963563553', '8cb2237d0679ca88db6464eac60da96345513964', 'agent', 'WIN_20240208_18_22_55_Pro.jpg'),
(4, 'JED GONZALES', 'jedpapera@gmail.com', '0973665566', '8cb2237d0679ca88db6464eac60da96345513964', 'agent', 'WIN_20240208_18_20_52_Pro.jpg'),
(5, 'Joyce Sarcia', 'joyce@gmail.com', '0976267267', '8cb2237d0679ca88db6464eac60da96345513964', 'agent', 'WIN_20240208_18_28_16_Pro.jpg');


ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);


ALTER TABLE `feedback`
  ADD PRIMARY KEY (`fid`);


ALTER TABLE `property`
  ADD PRIMARY KEY (`pid`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);


ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `admin`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `feedback`
  MODIFY `fid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


ALTER TABLE `property`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `user`
  MODIFY `uid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;


