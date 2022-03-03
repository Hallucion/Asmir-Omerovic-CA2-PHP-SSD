-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Feb 20, 2022 at 06:31 PM
-- Server version: 5.7.34
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ca2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP DATABASE Pharmacy; 
CREATE DATABASE Pharmacy;

DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `records`;

CREATE TABLE `categories` 
(
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'Cough, Cold & Flus'),
(2, 'Pain Relief'),
(3, 'Nicotine Replacement'),
(4, 'Eye & Ear Health'),
(5, 'Selfcare & Skincare'),
(6, 'Mouth & Oral Care'),
(7, 'First Aid'),
(8, 'Prescribed Illnesses');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `recordID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `ingredients` varchar(255) NOT NULL,
  `symptoms` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`recordID`, `categoryID`, `name`, `price`, `image`, `details`,`ingredients`,`symptoms`) VALUES
(1, 1, 'Anti-Hist Allergy Cetirizine Tablets', '17.50','antihistallergy.jpg','Anti-Hist Allergy tablets contain Cetirizine, which is an antihistamine and used to treat hayfever and other allergies. Relieves nasal and ocular symptoms of seasonal and perennial allergic rhinitis (hayfever) and chronic idiopathic urticaria.','Each Individual Tablet Contains 10mg Of Cetirizine.','Dizziness, diarrhea, nausea, dry mouth, fatigue, somnolence, pharyngitis, rhinitis'),
(2, 1, 'Nurofen Cold & Flu 200mg/30mg Tablets', '13.50','nurofencold&flu.jpg','Nurofen Cold and Flu Tablets are film-coated tablets used to relive nasal congestion and the symptoms of colds and flus, including headache, sore throat, body ache, fever and pain.','Each tablet contains 200mg of ibuprofen and 30mg pseudoephedrine hydrochloride','This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(3, 1, 'Benylin Day & Night Tablets', '8.99','benylin.jpg','Benylin Day & Night Tablets are used to relieve nasal or sinus congestion with headache, fever and pain which are associated with the cold and flu. The white day medication contains 500mg of Paracetamol which reduces inflammation, relieves pain and fever. It also contains 60mg of pseudoephedrine hydrochloride, a decongestant, which clears the nasal passage. The night medication also contains Paracetamol as well as 25mg diphenhydramine hydrochloride which helps relieve coughing and sneezing.','Active ingredients include Paracetamol 500mg, Diphenhydramine hydrochloride 25mg, Pseudoephedrine hydrochloride 60mg.','This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(4, 1, 'Sudafed Decongestant 60mg Pseudoephedrine Tablets', '6.99','sudafed.jpg','Sudafed Decongestant Tablets are used to relieve nasal congestion (blocked nose) and the symptoms of allergies, colds and flu, including blocked sinuses, stuffy nose and catarrh. Each film coated tablet contains 60mg pseudoephedrine hydrochloride, a decongestant which relieves a blocked or a runny nose. These tables are non-drowsy and fast acting.','Each Sudafed tablet contains Pseudoephedrine 60mg','This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(5, 1, 'Strepsils Sore Throat & Blocked Nose Lozenges ', '9.50','strepsils.jpg','Each lozenge contains a combination of 2 antibacterials to help kill the bacteria which can cause sore throats and mouth infections. These strepsils also have a vapour action to help clear the nose.','The active ingredient are amylmetacresol, 2,4- dichlorobenzyl alcohol and levomenthol. The other ingredients are glucose, sucrose, sulphur dioxide (E220), tartaric acid, indigo carmine (E132) and eucalyptus oil fragrance containing d-limonene.','This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(6, 2, 'Some text', '16.00','373465.jpg','test','test','test'),
(7, 2, 'Some text', '19.00','373989.jpg','test','test','test'),
(8, 2, 'Some text', '12.00','374104.jpg','test','test','test'),
(9, 2, 'Some text', '10.00','4733.jpg','test','test','test'),
(10, 2, 'Some text', '15.00','834551.jpg','test','test','test'),
(11, 3, 'Some text', '13.00','908783.jpg','test','test','test'),
(12, 3, 'Some text', '17.00','835545.jpg','test','test','test'),
(13, 3, 'Some text', '19.00','119273.jpg','test','test','test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`recordID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `recordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

