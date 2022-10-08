-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql212.epizy.com
-- Generation Time: Oct 08, 2022 at 06:21 AM
-- Server version: 10.3.27-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `epiz_26689209_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `sno` bigint(20) NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `earnings` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`sno`, `name`, `phone`, `email`, `password`, `earnings`) VALUES
(4, 'Mohd Zaid', '9759955376', 'nmzaid376@gmail.com', 'Zaid@123', '55003'),
(5, 'Mohd Said', '8445540486', 'mohdsaidpasha@gmail.com', 'Said@123', '600'),
(6, 'Upendra', '+91992828632', 'upendargotwal2828@gmail.com', '9928286325', '60'),
(7, 'Shakiv', '8630656076', 'shakiv.ecarter@gmail.com', '@shak132214', '20'),
(8, 'mohd zaid', '8678985898', 'nm@gmail.com', 'Zaid@123', '20'),
(9, 'Mohd Noushad', '97595325533', 'nm@gmai.com', 'Zaid@123', '20'),
(10, 'Pasha', '9769954460', 'nmzaid3706@gmail.com', 'Zaid@123', '20');

-- --------------------------------------------------------

--
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `fname` varchar(25) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `contact` varchar(240) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admission`
--

INSERT INTO `admission` (`fname`, `lname`, `address`, `contact`) VALUES
('Mohd ', 'Shahid', 'Azamgarh', '00786'),
('Mohd', 'Zaid', 'Moradabad', '9759955376'),
('Mohd', 'Zaid', 'Moradabad', '9759955376'),
('6gy', '665', '7yg', '987'),
('Rahul', 'Name to su', 'Mor', '975499'),
('Khe', 'Rul', 'Taharpur', '975'),
('Khe', 'Rul', 'Taharpur', '975'),
('Laxmi', 'Bomb', '22.40 kmpl', '987'),
('', '', '', ''),
('Khe', 'Rul', 'Taharpur', '975'),
('', '', '', ''),
('Raaz', 'Kapoor', 'Mumbai', '9759955376'),
('Gshh', 'Shhh', 'Shhdh', '78566777'),
('Raaz', 'Raza', 'Bihar', '7864332234567'),
('', '', '', ''),
('', '', '', ''),
('hf', 'kjghj', 'jyufrthfmyjhgfvmh', 'ukyrky6tdmmtym'),
('zaid', 'pasha', 'jutg', '8643299999'),
('zaid', 'pasha', 'kg', '9759955376hf');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `issue` text NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `email`, `phone`, `issue`, `description`) VALUES
(1, 'nmzaid376@gmail.com', '9759955376', 'ss', 'ssss'),
(2, 'nmzaid376@gmail.com', '9759955376', 'ss', 'swedds'),
(3, 'nmzaid376@gmail.com', '9759955376', 'Bohot hai', 'Pata na'),
(4, 'hs@gg', '9759955376', 'Hhs', 'Shhs');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `age` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`sno`, `name`, `age`) VALUES
(1, 'Aurangzeb', '22'),
(2, 'Gulam', '23'),
(3, 'Nishat', '15'),
(4, '1', ''),
(5, '1', ''),
(6, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `itweet`
--

CREATE TABLE `itweet` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `topic` text NOT NULL,
  `description` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itweet`
--

INSERT INTO `itweet` (`sno`, `name`, `topic`, `description`, `date`) VALUES
(1, 'Denny D', '', 'Kya ap mere saath kroge....?', '2022-08-31 16:07:04'),
(2, '', '', 'Hhshah', '2022-09-18 17:53:47'),
(3, '', '', 'Kee', '2022-09-18 17:53:52'),
(4, '', '', 'Hhsgvgs', '2022-09-18 17:53:57'),
(5, '', '', 'Hhabbb', '2022-09-18 17:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `sno` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productcategory`
--

INSERT INTO `productcategory` (`sno`, `title`, `description`) VALUES
(2, 'Ladies Shoes', 'Women Footwear -Buy Footwear for Women & girls Online in India. Explore a huge range of heels, casual shoes, boots & more Footwear for Women at Next2Me.Brands available like Haute Curry,Metro,Liberty,Bata,Hush Puppies,Nike,Clarks and many more on high discounts.'),
(4, 'Gents Shirts', 'Shirts For Men: Choose from a wide range of formal shirts and casual shirts for men online.All categories are available with discounts.'),
(7, 'Ladies Jeans', 'Buy Jeans for Women,Girls,Kids online at best prices. Shop stylish ladies jeans, ripped, boyfriend, cropped, high waisted jeans for ladies/girls for all sizes from top to bottom.'),
(8, 'Mens Watches', 'Buy designer leather, stainless steel & more types of Mens Watches Online. Explore latest collection of Mens Watches from top brands at Next2Me.'),
(10, 'Wallets For Mens', 'Buy wallets for men in leather, canvas & more fabrics in a variety of patterns from offered links through Next2Me.'),
(11, 'Smartphones', 'Best Smartphones - List of all the latest and new smartphones available from various mobile companies and brands.'),
(13, 'Dried Fruits', 'Online shopping for Grocery & Gourmet Foods from a great selection of Nuts & Seeds, Dried Fruits & more at everyday low prices.'),
(14, 'Snacks', 'Order your favorite snacks & branded food online at best prices from Next2Me.');

-- --------------------------------------------------------

--
-- Table structure for table `productincategory`
--

CREATE TABLE `productincategory` (
  `sno` bigint(20) NOT NULL,
  `category` text NOT NULL,
  `user` text NOT NULL,
  `image` longtext NOT NULL,
  `title` text NOT NULL,
  `mrp` text NOT NULL,
  `price` text NOT NULL,
  `saving` text NOT NULL,
  `buylink` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productincategory`
--

INSERT INTO `productincategory` (`sno`, `category`, `user`, `image`, `title`, `mrp`, `price`, `saving`, `buylink`) VALUES
(1, 'Ladies Shoes', '', '<a href=\"https://www.amazon.in/dp/B091ZLXFQF?psc=1&pd_rd_i=B091ZLXFQF&pd_rd_w=ffv5R&pf_rd_p=3d347ba3-873a-4950-a530-1b4d5938343e&pd_rd_wg=rK48j&pf_rd_r=N8Z42XCYSXJG7PS65SG5&pd_rd_r=f2a977d3-2ca7-44cf-9d79-b8ab42a2a6ab&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExN0EwOEdMU1dFSEdLJmVuY3J5cHRlZElkPUExMDE3MDUwM0IxMVlKSEQ1RlMwTSZlbmNyeXB0ZWRBZElkPUEwMDkwODg2MjdHV1VKQkw1WDcxOCZ3aWRnZXROYW1lPXNwX2RldGFpbCZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU%3D&linkCode=li3&tag=ninjamohdzaid-21&linkId=02a5bda0d2d3eab3b8c4efeb05f5fc7a&language=en_IN&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B091ZLXFQF&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21&language=en_IN\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&language=en_IN&l=li3&o=31&a=B091ZLXFQF\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Bella Toes Womens Textile Slip-On Lightweight Breathable Running Walking Shoes_ML-39', '999.00', '425.00', '574.00 (57%)', 'https://amzn.to/3lJfIky'),
(2, 'Ladies Shoes', '', '<a href=\"https://www.amazon.in/ASIAN-Womens-Elasto-02-Knitted-Walking/dp/B097YT1J2L?dchild=1&keywords=ladies+shoes&qid=1628308302&sr=8-3-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEzVUdMMldBUDZKRTc4JmVuY3J5cHRlZElkPUEwNjAzOTYyWVdXSzkzSlJETTNJJmVuY3J5cHRlZEFkSWQ9QTA5NDAxMDMyNVJWMjVQVTFPN1BUJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ%3D%3D&linkCode=li3&tag=ninjamohdzaid-21&linkId=42cd8080d17ae2c209bf81982c80f0bf&language=en_IN&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B097YT1J2L&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21&language=en_IN\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&language=en_IN&l=li3&o=31&a=B097YT1J2L\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'ASIAN Womens Elasto-02 Peach Knitted,Sports,Walking,Slipon Shoes UK-6', '1499.00', '674.00', '825.00 (55%)', 'https://amzn.to/3jzIHEG'),
(3, 'Gents Shirts', 'nmzaid376@gmail.com', '<a href=\"https://www.amazon.in/Amazon-Brand-Symbol-Regular-AW-SY-MCS-1146_Black/dp/B08JR2SCDP?dchild=1&keywords=shirts&qid=1628481562&sr=8-27&linkCode=li3&tag=ninjamohdzaid-21&linkId=80acc2706760ce484fe1c86a2e8b16cb&language=en_IN&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08JR2SCDP&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21&language=en_IN\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&language=en_IN&l=li3&o=31&a=B08JR2SCDP\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Amazon Brand - Symbol Mens Solid Regular Casual Shirt', '1399.00', '399.00', '1000.00(71%)', 'https://amzn.to/3CuCdzL'),
(4, 'Ladies Shoes', 'Select an User', '<a href=\"https://www.amazon.in/Denill-Collection-Comfortable-Fashionable-Bellies/dp/B07PCMVYS2?dchild=1&keywords=ladies+shoes&qid=1628492214&sr=8-16&linkCode=li3&tag=ninjamohdzaid-21&linkId=6b59f19046032b4f9fdff3e7f22c57e3&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07PCMVYS2&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07PCMVYS2\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Brown Womens Jazz and Modern Bellies - 7 UK', '999.00', '356.00', '643 (64%)', 'https://amzn.to/37r5xbV'),
(5, 'Ladies Shoes', 'Select an User', '<a href=\"https://www.amazon.in/Tao-Paris-Genuine-Leather-1769408/dp/B01GHY0WVY?dchild=1&keywords=ladies+shoes&qid=1628492214&sr=8-33&linkCode=li3&tag=ninjamohdzaid-21&linkId=932cdde00230941616aa49081155f5b3&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B01GHY0WVY&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B01GHY0WVY\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Womens Café Genuine Leather Sandal', '1999.00', '995.00', '995 (50%)', 'https://amzn.to/3yA9QxN'),
(6, 'Gents Shirts', 'Select an User', '<a href=\"https://www.amazon.in/Dennis-Lingo-Checkered-Casual-C442_Olive_M/dp/B082G9T3YS?dchild=1&keywords=shirts&qid=1628508530&sr=8-10&linkCode=li3&tag=ninjamohdzaid-21&linkId=87ab115356e9338b9a47525d92926c7a&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B082G9T3YS&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B082G9T3YS\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Dennis Lingo Mens Shirt', '2499.00', '649.00', '1,850 (74%)', 'https://amzn.to/3CrvAyh'),
(7, 'Gents Shirts', 'Select an User', '<a href=\"https://www.amazon.in/LookMark-Cotton-Digital-Printed-Rock-L_Large_Multicolor/dp/B09968LF7N?dchild=1&keywords=shirts&qid=1628508530&sr=8-55&linkCode=li3&tag=ninjamohdzaid-21&linkId=4714aa3fcf19e3df9fc15d0eeebe6dd5&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B09968LF7N&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B09968LF7N\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'LookMark Mens Regular Printed Shirt', '1199.00', '459.00', '740 (62%)', 'https://amzn.to/3AhfkOm'),
(8, 'Gents Shirts', 'Select an User', '<a href=\"https://www.amazon.in/LookMark-Digital-Printed-Stitched-X-Large/dp/B094J8JJW4?dchild=1&keywords=shirts&qid=1628508530&sr=8-6&linkCode=li3&tag=ninjamohdzaid-21&linkId=4945c35b25f4e785aa01a0054e10d680&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B094J8JJW4&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B094J8JJW4\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'LookMark Mens Poly Cotton Digital Printed Stitched Half Sleeve Shirt', '1199.00', '419.00', '780 (65%)', 'https://amzn.to/3fKB4KL'),
(9, 'Gents Shirts', 'Select an User', '<a href=\"https://www.amazon.in/IndoPrimo-Cotton-Casual-Shirt-Sleeves/dp/B08JHT17CV?dchild=1&keywords=shirts&qid=1628509126&sr=8-60&linkCode=li3&tag=ninjamohdzaid-21&linkId=5056bc008c38da4484957b01237b0d4b&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08JHT17CV&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08JHT17CV\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'IndoPrimo Mens Regular Fit Casual Shirt', '1999.00', '699.00', '1,300 (65%)', 'https://amzn.to/3xsye2Y'),
(10, 'Ladies Jeans', 'Select an User', '<a href=\"https://www.amazon.in/SLVETE-Womens-Denim-High-Jeans/dp/B07XZNDY8K?cv_ct_cx=ladies+jeans&dchild=1&keywords=ladies+jeans&pd_rd_i=B07XZNDY8K&pd_rd_r=54799c4c-509e-47e9-9feb-56f2903e949b&pd_rd_w=XEe5c&pd_rd_wg=YGXBa&pf_rd_p=732c2c88-394a-4075-bd75-39d1d71bea73&pf_rd_r=9CJ29K265NTGPBP5076H&psc=1&qid=1628509310&sr=1-3-3e688ac6-3b9b-4966-9713-794c1409cb7a&linkCode=li3&tag=ninjamohdzaid-21&linkId=08e93364abd9f5888fb5621f346bfc17&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07XZNDY8K&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07XZNDY8K\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'SLVETE Womens Slim Fit Jeans', '1999.00', '799.00', 'â‚¹1,200 (60%)', 'https://amzn.to/2VDxGds'),
(11, 'Ladies Jeans', 'Select an User', '<a href=\"https://www.amazon.in/Arixty-Womens-Denim-Jeans-Blue-32/dp/B098Q8D2FB?cv_ct_cx=ladies+jeans&dchild=1&keywords=ladies+jeans&pd_rd_i=B098Q8D2FB&pd_rd_r=54799c4c-509e-47e9-9feb-56f2903e949b&pd_rd_w=YQI2o&pd_rd_wg=YGXBa&pf_rd_p=ad84d659-6f26-4f25-8763-9dfae09c1c9a&pf_rd_r=9CJ29K265NTGPBP5076H&psc=1&qid=1628509310&sr=1-3-2e8cdbfb-9e8e-4343-915f-86e954fa3fa6&linkCode=li3&tag=ninjamohdzaid-21&linkId=128ff5d52300b316d9767706e3b17862&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B098Q8D2FB&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B098Q8D2FB\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Arixty Womens Denim Slim Fit Jeans Light Blue', '999.00', '599.00', '400 (40%)', 'https://amzn.to/2VIP7sM'),
(12, 'Ladies Jeans', 'Select an User', '<a href=\"https://www.amazon.in/Raffle-Toss-Womens-Length-Joggers/dp/B08LGQ16K4?dchild=1&keywords=ladies+jeans&qid=1628509310&sr=8-12&linkCode=li3&tag=ninjamohdzaid-21&linkId=248fcb75dc392e0f90ab50d47bc2aafb&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08LGQ16K4&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08LGQ16K4\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Raffle Toss Womens Denim Slim Fit High Waist Ankle Length Joggers and Jeans', '999.00', '252.00', '747 (75%)', 'https://amzn.to/3lKqYND'),
(13, 'Ladies Jeans', 'Select an User', '<a href=\"https://www.amazon.in/Singh-Traders-Womens-SNGHjeggings1_Dark-Blue_Small/dp/B08JTKMYKL?dchild=1&keywords=ladies+jeans&qid=1628509310&sr=8-11&linkCode=li3&tag=ninjamohdzaid-21&linkId=3615b74f85be2f9171e141ba29fece33&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08JTKMYKL&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08JTKMYKL\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Singh Traders Store Womens Slim Fit Jeans (SNGHjeggings1_Dark Blue & Light Blue_Small, 28)', '1099.00', '535.00', '564 (51%)', 'https://amzn.to/2VvZOQ4'),
(14, 'Ladies Jeans', 'Select an User', '<a href=\"https://www.amazon.in/Shopping-Solutions-Womens-Ladies-Regular-Cargos/dp/B08YJG83YN?dchild=1&keywords=ladies+jeans&qid=1628509310&sr=8-15&linkCode=li3&tag=ninjamohdzaid-21&linkId=e51a377dd4c577d40d402d3f98a06583&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08YJG83YN&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08YJG83YN\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Shopping Solutions-Womens/Ladies/Girls Regular Fit Cargos Jeans Jogger(28 to 30 Waist Size)', '555.00', '301.00', '254 (46%)', 'https://amzn.to/3CryZgx'),
(15, 'Ladies Jeans', 'Select an User', '<a href=\"https://www.amazon.in/MANTOCK-Womens-Denim-1372_PBLU_34_Light-Green_34/dp/B08WYF88F6?dchild=1&keywords=ladies+jeans&qid=1628509310&sr=8-24-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExTUlaU1FLRlBIVTNGJmVuY3J5cHRlZElkPUEwNjEwNDE0MkhUTVFaOFNUMlg1TiZlbmNyeXB0ZWRBZElkPUEwMjIyNTA4OElUWVJRR09WV1ZPJndpZGdldE5hbWU9c3BfbXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ%3D%3D&linkCode=li3&tag=ninjamohdzaid-21&linkId=310ab91f1779f9973f2974c9a2cdb993&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08WYF88F6&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08WYF88F6\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'MANTOCK Womens Denim Slim Fit High Waist Jean', '1999.00', '699.00', '1,300 (65%)', 'https://amzn.to/3jBGybG'),
(16, 'Ladies Jeans', 'Select an User', '<a href=\"https://www.amazon.in/AKA-CHIC-Regular-AKCB-1030_Black_36/dp/B07CN629ZB?dchild=1&keywords=ladies+jeans&qid=1628509310&sr=8-42&linkCode=li3&tag=ninjamohdzaid-21&linkId=13f0404c29b92358d19eb13c70bd7daf&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07CN629ZB&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07CN629ZB\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'AKA CHIC Womens High Rise Slim Fit Jeans', '2099.00', '849.00', '1,250 (60%)', 'https://amzn.to/3fNsXgt'),
(17, 'Mens Watches', 'Select an User', '<a href=\"https://www.amazon.in/dp/B094BLFQTM?_encoding=UTF8&aaxitk=0192e46ff2de19830dd3452c06be4964&hsa_cr_id=5270728760502&pd_rd_plhdr=t&pd_rd_r=4716f510-104c-477d-b56e-7800fff5f6ef&pd_rd_w=Y4373&pd_rd_wg=8biqB&linkCode=li3&tag=ninjamohdzaid-21&linkId=3625642f07dfde96e7bf4aefa198b66b&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B094BLFQTM&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B094BLFQTM\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'boAt Flash Edition Smartwatch with Activity Tracker,Multiple Sports Modes,Full Touch 1.3\" Screen,Gesture Control,Sleep Monitor,Camera & Music Control,IP68 Dust,Sweat & Splash Resistance(Moon Red)', '6990.00', '2499.00', '4491(64%)', 'https://amzn.to/3izLgYm'),
(18, 'Mens Watches', 'Select an User', '<a href=\"https://www.amazon.in/Vills-Laurrens-Analogue-Black-Vl-1051/dp/B07CVWLF9D?dchild=1&keywords=man+watches&qid=1628510201&smid=A49W0MQLFO9MY&sr=8-10&linkCode=li3&tag=ninjamohdzaid-21&linkId=65cb056f02da89e5f43fabd378657f86&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07CVWLF9D&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07CVWLF9D\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'VILLS LAURRENS Analogue Mens Watch (Black Dial Silver Colored Strap)', '2299.00', '319.00', '1,980 (86%)', 'https://amzn.to/3fMcJ7c'),
(19, 'Mens Watches', 'Select an User', '<a href=\"https://www.amazon.in/Sonata-Analog-Black-Dial-Watch-NK7924NM01/dp/B00KCOPMWK?dchild=1&keywords=man+watches&qid=1628510201&sr=8-19&linkCode=li3&tag=ninjamohdzaid-21&linkId=f3418b37247be9582e70abbf886f0ac4&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00KCOPMWK&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B00KCOPMWK\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Sonata Formal Analog Black Dial Mens Watch NM7924NM01/NN7924NM01', '1675.00', '1340.00', 'â‚¹335 (20%)', 'https://amzn.to/2VxwtES'),
(20, 'Snacks', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Haldirams-Nagpur-Bhujia-Sev-1kg/dp/B00KL8DX1Y?asc_contentid=amzn1.osa.9cd97616-60c0-4bcf-8da0-ca6aab6bdf75.A21TJRUUN4KGV.en_IN&asc_contenttype=article&ascsubtag=amzn1.osa.9cd97616-60c0-4bcf-8da0-ca6aab6bdf75.A21TJRUUN4KGV.en_IN&cv_ct_cx=snacks&cv_ct_id=amzn1.osa.9cd97616-60c0-4bcf-8da0-ca6aab6bdf75.A21TJRUUN4KGV.en_IN&cv_ct_pg=search&cv_ct_we=asin&cv_ct_wn=osp-single-source-earns-comm&dchild=1&keywords=snacks&pd_rd_i=B00KL8DX1Y&pd_rd_r=011d0d44-895a-49e3-bdcb-1ecf26e103fd&pd_rd_w=rxxzG&pd_rd_wg=aSvEr&pf_rd_p=72b01a95-3cb3-4ec0-b604-c85305b664ac&pf_rd_r=51RRENKA46QXEBGAQXAS&qid=1628519694&sr=1-2-483c64d8-df78-4008-ae20-e69f683e58b1&linkCode=li3&tag=ninjamohdzaid-21&linkId=82799fe5d0b96c63bbb5aa789e8636e5&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00KL8DX1Y&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B00KL8DX1Y\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Haldirams Nagpur Bhujia Sev-1kg', '225', '210', '15 (7%)', 'https://amzn.to/3Cts7z3'),
(21, 'Snacks', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Pintola-Organic-Wholegrain-Natural-Unsalted/dp/B083RXY8T3?dchild=1&keywords=snacks&qid=1628519694&sr=8-35&linkCode=li3&tag=ninjamohdzaid-21&linkId=5a746dabe9b2e2e9d34987e7c6e2d607&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B083RXY8T3&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B083RXY8T3\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Pintola Organic Wholegrain Brown Rice Cakes (All Natural, Unsalted), 125 g', '190', '179', '11.00 (6%)', 'https://amzn.to/2VDlwS6'),
(22, 'Ladies Shoes', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/ASIAN-Womens-Girls-Red-Slipper/dp/B0886BZKXB?dchild=1&keywords=ladies+shoes&qid=1628520206&sr=8-46&linkCode=li3&tag=ninjamohdzaid-21&linkId=5476f3a670675a3ccafd0a01b39cf090&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B0886BZKXB&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B0886BZKXB\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'ASIAN PF-204 Girls Shoes for Women | Ladies Chappal for Women Stylish Flat Heels Slippers for Women | Perfect Walking', '399', '259', '140 (35%)', 'https://amzn.to/3yzgvs7'),
(23, 'Ladies Shoes', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/KazarMax-Ladiess-Chevron-Memory-Slippers/dp/B07F3YSW5B?dchild=1&keywords=ladies+shoes&qid=1628520206&sr=8-3-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyVEg1MDVJUlpWWjlXJmVuY3J5cHRlZElkPUEwNjM3ODUzM0ZLQU9HSUFQTTRaNSZlbmNyeXB0ZWRBZElkPUEwNDAwMjI2MUtJRlIxWE4xUVZXMCZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU%3D&linkCode=li3&tag=ninjamohdzaid-21&linkId=95cefe8e6e9fa206bff75fb7e31ab901&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07F3YSW5B&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07F3YSW5B\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'KazarMax Women Navy Blue & Pink Floral Print Thong Flip-Flop', '1,999', '873', '1,126.00 (56%)', 'https://amzn.to/2VKhZBi'),
(24, 'Ladies Shoes', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Denill-Collection-Comfortable-Fashionable-Bellies/dp/B07PCMVYS2?dchild=1&keywords=ladies+shoes&qid=1628520206&sr=8-17&linkCode=li3&tag=ninjamohdzaid-21&linkId=d72ffe3c66ebf119304d7ab802ce4adf&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07PCMVYS2&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07PCMVYS2\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Denill Brown Womens Jazz and Modern Bellies - 7 UK', '999', '356', '643.00 (64%)', 'https://amzn.to/3xyLi6M'),
(25, 'Gents Shirts', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/LEVIZO-Mens-Regular-Shirt-AZPRSHRT07DUSTGREYXXL_Grey_44/dp/B08425727D?dchild=1&keywords=designer+shirts&qid=1628520635&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExVkg5UlhKNVFWMkVEJmVuY3J5cHRlZElkPUEwNzk3NzI4MTRZS0JJMFIwVkdGSiZlbmNyeXB0ZWRBZElkPUEwNjkxOTQzMzI4OVdSWlUzOUg4UiZ3aWRnZXROYW1lPXNwX2F0ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU%3D&linkCode=li3&tag=ninjamohdzaid-21&linkId=ccf30d5cde1db7f13cf86ff2d7eda576&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08425727D&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08425727D\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'YHA Mens Regular Fit Casual Printed Shirts', '1450', '399', '1,051.00 (72%)', 'https://amzn.to/2VEIx71'),
(26, 'Gents Shirts', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/SANGAM-Checkered-Casual-Shirt-Small/dp/B08T86MS8Z?dchild=1&keywords=designer+shirts&qid=1628521011&sr=8-106&linkCode=li3&tag=ninjamohdzaid-21&linkId=dc051e51f2e91cb9cc7ab82326ba7dec&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08T86MS8Z&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08T86MS8Z\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'SANGAM Mens Checkered Slim fit Casual Shirt', '1499', '458', '1,041 (69%)', 'https://amzn.to/3jET3TL'),
(27, 'Ladies Jeans', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Amazon-Brand-Inkast-DNM-ART013_Lt-Grey_32/dp/B085D5K3C5?cv_ct_cx=ladies+jeans&dchild=1&keywords=ladies+jeans&pd_rd_i=B085D5K3C5&pd_rd_r=35728d40-8f7a-491a-ac00-cddf4081f7a5&pd_rd_w=IjNja&pd_rd_wg=n8RuU&pf_rd_p=ac36c9bf-8edc-4e4d-bb90-55e6fa4ad07f&pf_rd_r=KB6B58DCCWVENN3PRD0Q&psc=1&qid=1628521138&sr=1-2-cc7a04fe-cc55-42ad-b883-1b910070c86a&linkCode=li3&tag=ninjamohdzaid-21&linkId=5831c8522b481c884da3cded85602673&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B085D5K3C5&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B085D5K3C5\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Amazon Brand - Inkast Denim Co. Womens Slim Fit Jeans', '1999', '620', '1,379.00 (69%)', 'https://amzn.to/3jGJbZE'),
(28, 'Ladies Jeans', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Aaina-creations-Womens-Cotton-Jegging/dp/B07V8KG393?dchild=1&keywords=ladies+jeans&qid=1628521138&sr=8-52&linkCode=li3&tag=ninjamohdzaid-21&linkId=1eef2818a6f5a2b51507d1ffdd4cbc4f&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07V8KG393&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07V8KG393\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Aaina creations Womens Slim Fit Jegging (Pack of 2) (Grey_Large)', '599', '425', '174.00 (29%)', 'https://amzn.to/37wsHh6'),
(29, 'Mens Watches', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Goldenize-fashion-Digital-LED-Watches/dp/B08SWNGKH1?dchild=1&keywords=watches&qid=1628521530&sr=8-11&linkCode=li3&tag=ninjamohdzaid-21&linkId=1e36b75e8e0c8b8155adde18a7a16b4b&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08SWNGKH1&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08SWNGKH1\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Goldenize fashion New Digital LED Men & Boys Combo of 2 Watches', '999', '276', '723.00 (72%)', 'https://amzn.to/3AlhXP4'),
(30, 'Mens Watches', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/PIRASO-Analog-Stunning-Stainless-Display/dp/B08PSFHS5Y?dchild=1&keywords=watches&qid=1628521530&smid=AB6V12TMCLSKP&sr=8-25&linkCode=li3&tag=ninjamohdzaid-21&linkId=1aeef48bd60b7691ea8beabbc381b6b6&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08PSFHS5Y&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08PSFHS5Y\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'PIRASO Analogue Classy Look Blue Dial and Brown Chain Watch for Men Boys', '1599', '299', '1,300 (81%)', 'https://amzn.to/3jCWCdf'),
(31, 'Wallets For Mens', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Hammonds-Flycatcher-Tan-Mens-Wallet/dp/B071CKGFV6?dchild=1&keywords=wallets&qid=1628521746&sr=8-2-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUFFUTVSS1dLM0M1V0UmZW5jcnlwdGVkSWQ9QTA3MTkzNjMxVUJXQU9EQU5JQ1c2JmVuY3J5cHRlZEFkSWQ9QTA1MTMwNjIzOTdUMEJKVklGM1I5JndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ%3D%3D&linkCode=li3&tag=ninjamohdzaid-21&linkId=ba23ad3c198c7364b26d88bdaae84f79&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B071CKGFV6&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B071CKGFV6\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'HAMMONDS FLYCATCHER Leather Mens Wallet (HF516_Tan)', '1599', '360', '1,239.00 (77%)', 'https://amzn.to/2VCZApN'),
(32, 'Wallets For Mens', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Generic-Gannet-06-Gannet-Mens-Wallet/dp/B07R1MC8R3?dchild=1&keywords=wallets&qid=1628521746&sr=8-18&linkCode=li3&tag=ninjamohdzaid-21&linkId=ae971eb173b5d6c3df1bd3aecab808d3&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07R1MC8R3&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07R1MC8R3\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Gannet Genuine Leather Wallet for Men-Tan Purse for Men', '899', '179', '720.00 (80%)', 'https://amzn.to/3jBaSmJ'),
(33, 'Smartphones', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Samsung-Galaxy-Ocean-128GB-Storage/dp/B07HGGYWL6?dchild=1&keywords=smartphone&qid=1628522102&sr=8-4&linkCode=li3&tag=ninjamohdzaid-21&linkId=3320363fd9f78aa1b168878aebb0d5a9&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07HGGYWL6&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07HGGYWL6\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Samsung Galaxy M31 (Ocean Blue, 6GB RAM, 128GB Storage)', '19999', '14999', '5,000 (25%)', 'https://amzn.to/3yB9ZAP'),
(34, 'Smartphones', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Redmi-Sky-Blue-64GB-Storage/dp/B08697N43N?dchild=1&keywords=smartphone&qid=1628522102&sr=8-6&linkCode=li3&tag=ninjamohdzaid-21&linkId=023ba66f342ec660efdb0fb70b38d6c3&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08697N43N&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08697N43N\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Redmi 9 (Sky Blue, 4GB RAM, 64GB Storage) | 2.3GHz Mediatek Helio G35 Octa core Processor', '10999', '8999', '2,000.00 (18%)', 'https://amzn.to/3yAgR1y'),
(35, 'Smartphones', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Test-Exclusive_2020_1174-Multi-3GB-Storage/dp/B089MT34QG?dchild=1&keywords=smartphone&qid=1628522102&sr=8-1-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUExVkFYM1AwU1U3TjMmZW5jcnlwdGVkSWQ9QTAxNTQ3MTkxTjRHVEw0TDBINDJNJmVuY3J5cHRlZEFkSWQ9QTEwMjUwMTQxRTVCU1A4RU9FVjFNJndpZGdldE5hbWU9c3BfYXRmJmFjdGlvbj1jbGlja1JlZGlyZWN0JmRvTm90TG9nQ2xpY2s9dHJ1ZQ%3D%3D&linkCode=li3&tag=ninjamohdzaid-21&linkId=ca3f17dad62d8046350b52a4389f49de&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B089MT34QG&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B089MT34QG\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'OnePlus 9 5G (Astral Black, 8GB RAM, 128GB Storage)', '52000', '49999', '2001(3.8%)', 'https://amzn.to/37z9J9y'),
(36, 'Dried Fruits', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Amazon-Brand-Premium-Inshell-Walnuts/dp/B07M8HNNV3?dchild=1&fpw=pantry&keywords=dry+fruits&qid=1628522934&s=pantry&sr=8-23-spons&psc=1&spLa=ZW5jcnlwdGVkUXVhbGlmaWVyPUEyRTlaV0xKUk8zM0cxJmVuY3J5cHRlZElkPUEwOTc0NzE2MUo0WExJWDA5RlNWMCZlbmNyeXB0ZWRBZElkPUEwMjQ5MTgxMURYMEY5S0FIVUlHOSZ3aWRnZXROYW1lPXNwX210ZiZhY3Rpb249Y2xpY2tSZWRpcmVjdCZkb05vdExvZ0NsaWNrPXRydWU%3D&linkCode=li3&tag=ninjamohdzaid-21&linkId=a21bb0cc2c3e6ef526b9dfd43edd745f&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B07M8HNNV3&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B07M8HNNV3\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Amazon Brand - Vedaka Premium Inshell Walnuts, 250g', '250', '235', '15.00 (6%)', 'https://amzn.to/3CyOPWE'),
(37, 'Dried Fruits', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Happilo-Premium-Californian-Roasted-Salted-Pistachios/dp/B01LZ5DFW2?dchild=1&keywords=dry+fruits&qid=1628522934&sr=8-27&linkCode=li3&tag=ninjamohdzaid-21&linkId=1b43c05ded2c494161e1cfc4760421c0&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B01LZ5DFW2&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B01LZ5DFW2\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Happilo Premium Californian Roasted and Salted Pistachios, 200g', '365', '262', '103.00 (28%)', 'https://amzn.to/3fOOtBg'),
(38, 'Dried Fruits', 'upendargotwal2828@gmail.com', '<a href=\"https://www.amazon.in/Nutty-Gritties-Sports-Mixed-Fruit/dp/B08JTBYKDW?dchild=1&keywords=dry+fruits&qid=1628523167&sr=8-28&linkCode=li3&tag=ninjamohdzaid-21&linkId=dd4e850a2cbac1ffc96adebec8881ae8&ref_=as_li_ss_il\" target=\"_blank\"><img border=\"0\" src=\"//ws-in.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B08JTBYKDW&Format=_SL250_&ID=AsinImage&MarketPlace=IN&ServiceVersion=20070822&WS=1&tag=ninjamohdzaid-21\" ></a><img src=\"https://ir-in.amazon-adsystem.com/e/ir?t=ninjamohdzaid-21&l=li3&o=31&a=B08JTBYKDW\" width=\"1\" height=\"1\" border=\"0\" alt=\"\" style=\"border:none !important; margin:0px !important;\" />', 'Nutty Gritties Sports Mixed Nuts and Dry Fruit - Roasted Almonds, Cashews, Pistachios, Dried Blueberries, Cranberries and Raisins, Healthy Snack for all - 200g', '375', '299', '76.00 (20%)', 'https://amzn.to/3xwRU5S');

-- --------------------------------------------------------

--
-- Table structure for table `visited`
--

CREATE TABLE `visited` (
  `v` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visited`
--

INSERT INTO `visited` (`v`) VALUES
('342');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawrequests`
--

CREATE TABLE `withdrawrequests` (
  `sno` bigint(20) NOT NULL,
  `email` text NOT NULL,
  `accountNumber` text NOT NULL,
  `branchName` text NOT NULL,
  `ifsc` text NOT NULL,
  `amount` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdrawrequests`
--

INSERT INTO `withdrawrequests` (`sno`, `email`, `accountNumber`, `branchName`, `ifsc`, `amount`) VALUES
(1, 'nmzaid376@gmail.com', '888888877777', 'ddd', 'trrrr', '10'),
(2, 'nmzaid376@gmail.com', '888888877777', 'ddd', 'trrrr', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `itweet`
--
ALTER TABLE `itweet`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `productincategory`
--
ALTER TABLE `productincategory`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `withdrawrequests`
--
ALTER TABLE `withdrawrequests`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `sno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `itweet`
--
ALTER TABLE `itweet`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productcategory`
--
ALTER TABLE `productcategory`
  MODIFY `sno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `productincategory`
--
ALTER TABLE `productincategory`
  MODIFY `sno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `withdrawrequests`
--
ALTER TABLE `withdrawrequests`
  MODIFY `sno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
