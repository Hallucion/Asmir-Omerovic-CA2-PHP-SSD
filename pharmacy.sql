-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2022 at 05:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
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

DROP TABLE IF EXISTS `records`;
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

INSERT INTO `records` (`recordID`, `categoryID`, `name`, `price`, `image`, `details`, `ingredients`, `symptoms`) VALUES
(1, 1, 'Anti-Hist Allergy Cetirizine Tablets', '17.50', 'antihistallergy.jpg', 'Anti-Hist Allergy tablets contain Cetirizine, which is an antihistamine and used to treat hayfever and other allergies. Relieves nasal and ocular symptoms of seasonal and perennial allergic rhinitis (hayfever) and chronic idiopathic urticaria.', 'Each Individual Tablet Contains 10mg Of Cetirizine.', 'Dizziness, diarrhea, nausea, dry mouth, fatigue, somnolence, pharyngitis, rhinitis'),
(2, 1, 'Nurofen Cold & Flu 200mg/30mg Tablets', '13.50', 'nurofencold&flu.jpg', 'Nurofen Cold and Flu Tablets are film-coated tablets used to relive nasal congestion and the symptoms of colds and flus, including headache, sore throat, body ache, fever and pain.', 'Each tablet contains 200mg of ibuprofen and 30mg pseudoephedrine hydrochloride', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(3, 1, 'Benylin Day & Night Tablets', '8.99', 'benylin.jpg', 'Benylin Day & Night Tablets are used to relieve nasal or sinus congestion with headache, fever and pain which are associated with the cold and flu. The white day medication contains 500mg of Paracetamol which reduces inflammation, relieves pain and fever.', 'Active ingredients include Paracetamol 500mg, Diphenhydramine hydrochloride 25mg, Pseudoephedrine hydrochloride 60mg.', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(4, 1, 'Sudafed Decongestant 60mg Pseudoephedrine Tablets', '6.99', 'sudafed.jpg', 'Sudafed Decongestant Tablets are used to relieve nasal congestion (blocked nose) and the symptoms of allergies, colds and flu, including blocked sinuses, stuffy nose and catarrh. Each film coated tablet contains 60mg pseudoephedrine hydrochloride, a decon', 'Each Sudafed tablet contains Pseudoephedrine 60mg', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(5, 1, 'Strepsils Sore Throat & Blocked Nose Lozenges ', '9.50', 'strepsils.jpg', 'Each lozenge contains a combination of 2 antibacterials to help kill the bacteria which can cause sore throats and mouth infections. These strepsils also have a vapour action to help clear the nose.', 'The active ingredient are amylmetacresol, 2,4- dichlorobenzyl alcohol and levomenthol. The other ingredients are glucose, sucrose, sulphur dioxide (E220), tartaric acid, indigo carmine (E132) and eucalyptus oil fragrance containing d-limonene.', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(6, 2, 'Panadol Pain Relief Tablets', '4.20', 'panadol.jpg', 'Paracetamol should taken seriously, very little to none when you need it for your headaches / other pain reliefs, if you take more than instructed there could be a chance of toxicity levels increasing leading to symptoms, if you experience this contact yo', 'Each film-coated tablet contains: Paracetamol 500mg, it also contains: E219,E215,E217', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(7, 2, 'Excedrin Migraine & Headache Tablets', '9.45', 'excedrin.jpg', 'A combination of pain fighting ingredients to help combat a migraine and headache. The triple action formula with the ingredients presented in the tablets is reccomended for treatment of a headache & migraine attacks with or without aura.', 'Contains: 250mg Paracetamol | 250mg Aspirin | 65mg Caffine', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(8, 2, 'Nelsons Arnica Tablets', '6.75', 'nelsons.jpg', 'Nelsons Arnicare Arnica tablets are used for relief of bruising, sprains, muscular aches and swelling after minor cuts.', 'High in natural properties of arnica montana, a vibrant yellow flower recognised for its invaluable natural healing properties since the 16th century.', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(9, 2, 'Paralink 500mg Suppositories', '11.79', 'paralink.jpg', 'It provides effective relief or fever and pain associated with colds and flu, headaches, rheumatism & teething.', 'Contains: 500mg Paracetamol | Traces of Hat/Fat & Macrogol Stearate.', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(10, 2, 'Lemsip Multi Relief Capsules 16s', '9.45', 'lemsip.jpg', 'Lemsip is effective in the treatment of pain, congestion & coughs aswell as other symptoms associated with colds and flu.', 'Contains: 500mg Paracetamol | Phenylephrine Hydrochloride 6.1mg | Guaifenesin 100mg', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(11, 3, 'Nicotinell Cool Mint 4mg Chewing Gum', '28.50', 'nicotinell.jpg', 'This chewing gum that contains nicotine will help you quit smoking as it can easily ease down withdrawl symptoms from smoking. It has a refreshing flavour cool mint and it is sugar free! Just your ordinary gum to a normal person but to help you ease down.', 'Contains: Nicotine | Either 2mg -> 4mg in it.', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(12, 3, 'Nicorette 15mg Inhaler Nicotine Cartridges', '6.30', 'nico.jpg', 'The Nicorette 15mg Inhaler is an aid to help smokers give up cigarettes. This [NRT] Nicotine Replacement Therapy, helps to relieve withdrawl symptoms & cravings associated with intaking nicotine.', 'Contains: 1 Inhalator & 20 Nicotine Inhalation Cartridges || Menthol & 15mg Nicotine', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(13, 3, 'Nicorette Freshfruit Chewing Gum', '36.00', 'fresh.jpg', 'Nicorette Chewing Gum is an aid to help smokers give up. This Nicotine Replacement Therapy [NRT] helps to relieve withdrawl symptoms and cravings associated with stopping in intake of nicotine.', 'Contains: 4mg Of Nicotine', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(14, 3, 'NiQuitin Mini 1.5mg Mint Nicotine Lozenges', '13.99', 'niQ.jpg', 'NiQuiting Mini Lozenges are a handy and easy way to use Nicotine Lozenge to help you stop smoking or to cut down.', 'Contains: 1.5mg Nicotine', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(15, 3, 'Nicorette Fruit Lozenges 4mg 4x20 Pack', '18.99', 'fruit.jpg', 'Nicorette Fruit Lozenge is used to help smokers stop smoking. It has 4mg of nicotine which is released slowly into the body through the mouth when sucked to help combat the craving of cigarettes.', 'Contains: 4mg Nicotine', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(16, 4, 'Omega Eye Omega 3 - 120 Capsules', '32.99', 'omegaeye.jpg', 'Omega eye capsules are specially formulated to promote eye health. Omega Eye contain high levels of DHA to benefit eye health.', 'Contains: rTG Omega 3', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(17, 4, 'Macushield Gold 90 Capsules', '28.99', 'macushield.jpg', 'The Macushield Gold is an all in one capsule that contains [Vitamin C & E | Zinc | Copper].These Vitamins, which are also antioxidants, are widely used in supplements to support eye health. Antioxidants protect the cells of the macula, which are particula', 'Contains: Meso-zeaxanthin: 10mg | Lutein: 10mg | Zeaxanthin: 2mg | Zinc: 25mg | Vitamin C: 500mg | Vitamin E: 268mg | Copper: 2mg', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(18, 4, 'Lutein Omega 3 for AMD 60 Capsules', '17.99', 'lutein.jpg', '', 'Contains: Lutein (from Tagetes erecta L.) 10mg | Zeaxanthin (from Tagetes erecta L.) 2mg | Fish Oil 10/50 TG  401mg | With EPA  40mg | And DHA  200mg | Vitamin C  80mg | Vitamin E  12mg | Zinc 10mg | Copper 1mg', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(19, 4, 'Hy-Opti Sodium Hyaluronate 0.2% Eye Drops 10ml', '9.99', 'hyopti.jpg', 'Hy-Opti Sodium Hyaluronate Eye Drops are used to lubricate, hydrate and protected the eye. It relieves the discomfort of dry eyes. ', 'Contains: Sodium Hyaluronate', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(20, 4, 'Hylo-Night (Vita-Pos) Eye Ointment 5g', '6.99', 'hylo.jpg', 'Vita-Pos is used to improve the tear film of the eye and protect the ocular surface. This ointment contains vitamin A and is preservative free. It spreads easily over the eye to relieve the symptoms of burning, tired and dry eyes.', '------', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(21, 5, 'Ethos Natural Oil 600mg 30ml', '44.99', 'ethos.jpg', 'Ethos Natural CBD Oil 600mg is a premium multi-functional blend. Each bottle includes the entire botanical goodness of the hemp plant, in its most natural form. It also includes MCT Coconut oil which is added to maximise absorption of every drop. ', 'Contains: 600mg : Hemp Seed Oil, Organic MCT Coconut Oil, Hemp flower CBD extract | per serving (CBD - 20mg) | 1200mg : per serving (CBD - 40mg)', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(22, 5, 'Silent Night Kids Weighted Blanket', '49.99', 'silent.jpg', 'The Silent Night Weighted Blanket for children has been designed to help you prepare for better, deeper sleep. The weighted blanket acts like a therapeutic hug, which is known to help ease anxiety and stress.', '----------------------', '--------------------------'),
(23, 5, 'Kalms Day Tablets 100 Pack', '9.99', 'kalms.jpg', 'Kalms Day Tablets are a traditional remedy, that is used to relieve irritability, anxiety and the stresses of everyday life. Kalms Tablets are also used to aid sleep.', 'Contains: Maltodextrin, Colloidal Anhydrous Silica.', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(24, 5, 'I Am Relaxed Wellbeing Mist 100ml', '4.99', 'iamrelaxed.jpg', 'I am...Relaxed Wellbeing Mist is handmade using a blend of four 100% pure, therapeutic-grade essential oils of Lavender, Ylang Ylang, Rosewood and Vetiver which are known to relax and calm the mind and body, aid sleep and help with anxiety.', 'Contains: 2.2 dimethyl-1, 3-dioxolan-4-ylmethanol, Aniba Rosaeodora (Rosewood) oil, Vetiveria Zizaniodes (Vetiver) oil, Lavandula Angustifolia (Lavender) oil, Cananga Odorata (Ylang Ylang) oil.', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(25, 5, 'Bach Rescue Night Spray 20ml', '15.99', 'bach.jpg', 'The Bach Rescue Night Spray has been formulated to help with a natural nights sleep. The alcohol-free spray includes 5 flower essences that help reduce panic, impatience, irritation, shock and also improvesself-control. Spray twice directly on the tongue.', 'Contains: Natural flowers and herbs', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(26, 6, 'Daktarin 20 mg/g Oral Gel 40g', '5.50', 'daktarin.jpg', 'Daktarin 20 mg/g Oral Gel 40g is used in the treatment and prevention of fungal infections in the mouth and throat, such as oral thrush.', 'Contains: Each 5 ml of Daktarin Oral Gel contains 124 mg of miconazole.', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(27, 6, 'Acic 5% Cream Cold Sore Treatment', '5.99', 'acic.jpg', 'Acic 5% Cream Cold Sore Treatment is used to treat cold sores. These are caused by the herpes simplex virus. This cream contains 50 milligrams of aciclovir per gram.', 'Contains: 50 milligrams of aciclovir per gram. ', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(28, 6, 'Aloclair Plus Mouthwash for Mouth Ulcers', '9.99', 'aloclair.jpg', 'Aloclair Plus Mouthwash for Mouth Ulcers is perfect for use by those who are regular suffers of mouth ulcers. It gives fast pain relief and coats the ulcers in the mouth and throat. It is suitable for use by brace or denture wearers. ', 'Constains: Natural Herbs', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(29, 6, 'Cymex Cream For Cold Sores Dry Cracked Lips 5g', '5.99', 'cymex.jpg', 'Cymex Cream has a triple action formula for fast action to soothe and promote healing of cold sores and dry cracked lips.', 'Contains: Urea 1.0% w/w | Dimethicone 350 9.0% w/w | Cetrimide 0.5% w/w | Chlorocresol 0.1% w/w', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(30, 6, 'Oralmedic Mouth Ulcer Treatment', '8.99', 'oralmedic.jpg', 'Oralmedic Mouth Ulcer Treatment is a quick method to treat painful mouth ulcers. Oralmedic will seal the infected area and help promote natural healing. With one application it will eliminate mouth ulcer pain in seconds. ', 'Contains: Natural Healing Oils', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(31, 7, 'Sanitizante Antibacterial Sensitive Hand Sanitizer 65ml', '6.99', 'sanitizante.jpg', 'Sanitizante Hand Sanitiser Antibacterial Gel is a convenient way to disinfect your hands when out and about.  Simply apply onto hands and rub in, leaving no need to rinse. It is perfect for use, even on sensitive skin,  when soap and water are not availab', 'Contains: 99.9% alcohol', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(32, 7, 'Smidge Insect Repellent 75ml', '9.99', 'smidge.jpg', 'The Smidge Insect Repellent offers up to 8 hours protection from midge bites. This powerful waterproof insect repellent comes in a 75ml aluminium pump spray. Designed and tested in Scotland. Suitable for children aged 2+.', '-----------', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(33, 7, 'Foradine Povidone Iodine Spray Strong 10% Solution 500ml', '14.99', 'foradine.jpg', 'Forans Strong Iodine Solution 10% is a general disinfectant that helps fight bacteria and germs. Bacterial spores are killed within 15 minutes of use. Can also be used to treat animal wounds.', 'Contains: Disinfectent 70%', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(34, 7, 'Sudocrem Antiseptic Healing Cream', '10.99', 'sudocrem.jpg', 'Sudocrem Antiseptic Healing Cream has been in nappy bags for 80 years. The cream is clinically proven to ease the discomfort of nappy rash such as sore or inflamed skin. The anaesthetic reduces the pain and irritation while the water resistant components ', 'Contains: Di-F c3A', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(35, 7, 'Ultrapure Hydrogen Peroxide 250ml', '6.99', 'ultrapure.jpg', 'Ultrapure Hydrogen Peroxide 6% can be used as a bleaching agent or if diluted can be used as a sanitizer. Ideal for household stain removal. ', 'Contains: Iodine Solution, Hydrogen Peroxide', 'This medication can have side-effects, like all medicines, although these are usually mild and do not affect everyone.'),
(36, 8, 'Atorvastatin', '59.99', 'atorvastatin.jpg', 'Atorvastatin, sold under the brand name Lipitor among others, is a statin medication used to prevent cardiovascular disease in those at high risk and to treat abnormal lipid levels.', 'Contains: LIPITOR Tablets for oral administration contain 10, 20, 40, or 80 mg of atorvastatin', ' feeling sick (nausea) or indigestion | headaches | aches and pains in your back and joints | nosebleeds | sore throat | cold-like symptoms, such as a runny nose, blocked nose or sneezing | constipation or wind | diarrhoea'),
(37, 8, 'Amoxicillin', '110.99', 'amoxicillin.jpg', 'Amoxicillin is an antibiotic used to treat a number of bacterial infections. These include middle ear infection, strep throat, pneumonia, skin infections, and urinary tract infections among others. ', 'Contains: Amoxicillin 250mg and 500mg capsule shells contain Gelatin, Carmoisine (E122), Quinoline Yellow (E104), Titanium Dioxide (E171), and Iron Oxide Yellow (E172).', 'Abdominal or stomach cramps or tenderness | back, leg, or stomach pains | black, tarry stools | blistering, peeling, or loosening of the skin | bloating | blood in the urine | bloody nose | chest pain'),
(38, 8, 'Lisinopril', '69.50', 'lisinopril.jpg', 'Lisinopril is a medication of the angiotensin-converting enzyme inhibitor and is considered to be a gold standard drug in the treatment of high blood pressure, and is also used to treat heart failure and after heart attacks.', 'Contains: calcium phosphate, mannitol, magnesium stearate, and starch', 'cough | dizziness | headache | excessive tiredness | nausea | diarrhea | weakness | sneezing'),
(39, 8, 'Levothyroxine', '79.99', 'levothyroxine.jpg', 'Levothyroxine is a medicine used to treat an underactive thyroid gland (hypothyroidism). The thyroid gland makes thyroid hormones which help to control energy levels and growth. Levothyroxine is taken to replace the missing thyroid hormone thyroxine. Levo', 'Contains: Colloidal silicon dioxide, lactose, magnesium stearate, microcrystalline cellulose, corn starch, acacia and sodium starch glycolate, D&C Yellow No. 10 Aluminum Lake, FD&C Yellow No. 6 Aluminum Lake.', 'weight gain or loss  | headache | vomiting | diarrhea | changes in appetite | fever | changes in menstrual cycle | sensitivity to heat'),
(40, 8, 'Albuterol', '49.99', 'albuterol.jpg', 'Salbutamol, also known as albuterol and sold under the brand name Ventolin among others, is a medication that opens up the medium and large airways in the lungs.', 'Contains: Microcrystalline suspension of albuterol sulfate in propellant HFA-134a (1,1,1,2-tetrafluoroethane), ethanol, and oleic acid.', 'Side effects of albuterol include nervousness or shakiness, headache, throat or nasal irritation, and muscle aches.');

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
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `recordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
