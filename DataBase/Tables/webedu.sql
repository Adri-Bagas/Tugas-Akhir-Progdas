-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3308
-- Generation Time: Oct 01, 2022 at 06:50 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webedu`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `Hero` varchar(255) NOT NULL,
  `sub_text` text NOT NULL,
  `li_1` text NOT NULL,
  `li_2` text NOT NULL,
  `img_dir` varchar(300) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`Hero`, `sub_text`, `li_1`, `li_2`, `img_dir`, `id`) VALUES
('About', 'Densetsu is a History-Learning company founded in 2010 by Stephen Brown. Its based in San Antonio and works with schools and individuals to help them learn about history and culture. The company also runs tours and workshops that help clients connect with the past in a way that makes them feel welcome and valued.', 'Densetsu sets his expectations high when working with his clients. He explains the importance of showing respect for people from different cultures while teaching them about history and culture.', 'Densetsu believes that helping people learn about history and culture is a humanitarian task that makes a positive impact on the world. His innovative methods make learning accessible to everyone- even those with physical or mental challenges. Because all of Densetsus work is free, there are no excuses not to learn!', './img_about/63379a22710584.91432712.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `daily`
--

CREATE TABLE `daily` (
  `hero` varchar(255) NOT NULL,
  `quotes` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `daily`
--

INSERT INTO `daily` (`hero`, `quotes`, `id`) VALUES
('Daily Quotes', '\"Lebih baik menerima kejujuran yang pahit, dari pada kebohongan yang manis.\" - Soichiro Yagami', 1),
('Daily Quotes', 'If theres a hole, then there is a way ~AkbarDZ', 2),
('Daily Quotes', 'Lebih baik menerima kejujuran yang pahit daripada kebohongan yang manis', 3),
('Daily Quotes', 'If shes doesnt want to go to bed, shall her mom you take ahead ~Master Oogway', 4),
('Famous Last Word', 'Boku no ch*cin wa Chisai ~ICadgaming', 5),
('Daily Quotes', 'Help mee... im undawater uuuuu ~Some indian dude', 6),
('Inspirational Quotes', 'Ningen ga dogu sukanai ~Kiyotaka-san', 7),
('Quotes \r\n', 'Aku tidaklah bodoh, aku hanya malas menunjukkan betapa pintarnya diriku.\r\n~Oreki ', 8),
('Famous Last Words', 'I have offended God and mankind because my work did not reach the quality it should have. ~ Leonardo da Vinci', 9);

-- --------------------------------------------------------

--
-- Table structure for table `hero`
--

CREATE TABLE `hero` (
  `Hero` varchar(255) NOT NULL,
  `Sub_text` text NOT NULL,
  `img_dir` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hero`
--

INSERT INTO `hero` (`Hero`, `Sub_text`, `img_dir`, `id`) VALUES
('DENSETSU NO YUUSHA', 'Demikianlah penjelasan arti kata \"densetsu (でんせつ)\" jika diterjemakan dari bahasa Jepang ke dalam bahasa Indonesia dalam kamus Jepang-Indonesia. densetsu terdiri dari 8 karakter.', './img_hero/63378ec4e16b80.78316236.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hero` varchar(255) NOT NULL,
  `paraf1` text NOT NULL,
  `paraf2` text NOT NULL,
  `img_dir` varchar(255) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`hero`, `paraf1`, `paraf2`, `img_dir`, `id`) VALUES
('World History', 'Human history, also called world history, is the narrative of humanity past. It is understood and studied through archaeology, anthropology, genetics, and linguistics. Since the invention of writing, human history has been studied through primary and secondary source documents.', 'Everything that ever happened, everywhere and also whenever humanity is there, its all a history we must never forgot. ok', './img_history/633796632d4246.14615275.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `Title` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `Desk` varchar(255) NOT NULL,
  `Isi` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `img_dir` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `Country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`Title`, `kategori`, `Desk`, `Isi`, `author`, `img_dir`, `id`, `date`, `Country`) VALUES
('Battle Of Berlin', 'War', 'The Battle of Berlin was one of the last battles of the European Theater of World War II . The large Soviet Army under Georgy Zhukov and Ivan Konev attacked Berlin from the east. The fighting lasted from late April 1945 to early May. Before the battle end', 'On 22 June 1944, two weeks after the Allied landings in Normandy, the Soviet army initiated its campaign against the German forces. On 16 October Soviet troops crossed the German border. Joseph Stalin, the head of State of the Soviet Union, was in a hurry to get to Berlin before the Americans. He wanted above all to demonstrate Soviet military might and achieve a favourable post-war negotiating position. However, U.S. President Franklin Roosevelt was not interested in conquering Berlin. He wanted the Soviet Union as an ally in the war against Japan, and above all as a partner in the creation of a stable post-war world order.\r\nOn 16 April 1945, the Soviet forces started the final offensive against the German capital. They tried to encircle Berlin in a pincer movement. But the attempted fast breakthrough into Berlin did not materialize. Instead it took them four days and many casualties to get past the Seelow Heights, situated about 70 km east of Berlin.\r\nOn 21 April, the first Soviet units finally entered Berlin. In house-to-house fighting the Soviet soldiers faced desperate German resistance. The Western Allies stopped their air attacks on 16 April 1945. The Soviet Union continued the air war to support the ground offensive in Berlin.\r\nOn 2 May 1945, the Berlin garrison surrendered to the Soviet army. The human cost of the battle of Berlin had been enormous. The Soviets counted over 80.000 dead. German losses are estimated at almost 50.000.\r\n', 'Jefri Malik', './img_materi/6337aa186fcb18.57882378.jpg', 10001, '2022-10-12', 'Berlin, Germany'),
('France Revolution', 'War', 'The French Revolution (French Révolution française 1789–1799), was a period of social radicals and political upheavals in France that had a lasting impact on French history, and more broadly, on Europe as a whole.', 'This revolution is one of the great revolutions of the world that is able to change the order of peoples lives. The absolute monarchy that had ruled France for centuries collapsed within three years. The French people underwent an epic sociopolitical transformation feudalism, aristocracy, and absolute monarchy were torn down by left-wing radical political groups, by the masses in the streets, and by peasant societies in rural areas. Old ideas related to the traditions and hierarchies of the monarchy, aristocrat, and the Catholic Church were overthrown abruptly and replaced by new principles; Liberté, égalité, fraternité (freedom, equality, and brotherhood). Fear of overthrow spread to other monarchies throughout Europe, which sought to restore the traditions of the old monarchy to prevent popular uprisings. Opposition between supporters and opponents of the Revolution continued for the next two centuries.\r\n\r\nIn the midst of the financial crisis that swept France, Louis XVI ascended the throne in 1774. The incompetent reign of Louis XVI further added to the popular hatred of the monarchy. Driven by the development of enlightenment ideas and radical sentiments, the French Revolution began in 1789 with the holding of the Etats-Généraux meeting in May. The first years of the French Revolution began with the proclaimed Oath of Tennis Courts in June by the Third Etats, followed by an attack on the Bastille in July, the Declaration of Human Rights and Citizens in August, and a womens march at Versailles that forced the royal palace to move back to Paris in October. In the next few years, the French Revolution was dominated by the struggles of liberals and left-wing supporters of the monarchy who sought to thwart reforms.\r\nA republican state was established in December 1792 and King Louis XVI was executed a year later. The French Revolutionary War began in 1792 and ended in a spectacular French victory. France managed to conquer the Italian Peninsula, the Low States, and most of the territories west of the Rhine – Frances greatest achievement in centuries.', 'Jeffry Malik', './img_materi/6337aace629db0.26314817.jpg', 10002, '2022-10-19', 'Paris,France'),
('Vietnam War', 'War', 'The Vietnam War (also known by other names) was a conflict in Vietnam, Laos, and Cambodia from 1 November 1955 to the fall of Saigon on 30 April 1975.', 'It was the second of the Indochina Wars and was officially fought between North Vietnam and South Vietnam. North Vietnam was supported by the Soviet Union, China,[13] and other communist allies; South Vietnam was supported by the United States and other anti-communist allies. The war is widely considered to be a Cold War-era proxy war. It lasted almost 20 years, with direct U.S. involvement ending in 1973. The conflict also spilled over into neighboring states, exacerbating the Laotian Civil War and the Cambodian Civil War, which ended with all three countries becoming communist states by 1975.\r\nThe conflict emerged from the First Indochina War between the French colonial government and a left-wing revolutionary movement, the Viet Minh. After the French military withdrawal from Indochina in 1954, the U.S. assumed financial and military support for the South Vietnamese state. The Viet Cong (VC), a South Vietnamese common front under the direction of North Vietnam, initiated a guerrilla war in the south. North Vietnam had also invaded Laos in 1958 in support of insurgents, establishing the Ho Chi Minh Trail to supply and reinforce the Viet Cong.  By 1963, the North Vietnamese had sent 40,000 soldiers to fight in the south.  U.S. involvement escalated under President John F. Kennedy, from just under a thousand military advisors in 1959 to 23,000 in 1964.\r\nIn the Gulf of Tonkin incident in August 1964, a U.S. destroyer clashed with North Vietnamese fast attack craft. In response, the U.S. Congress passed the Gulf of Tonkin Resolution and gave President Lyndon B. Johnson broad authority to increase the U.S. military presence in Vietnam, without a formal declaration of war. Johnson ordered the deployment of combat units for the first time and increased troop levels to 184,000. The Peoples Army of Vietnam (PAVN), also known as the North Vietnamese Army (NVA), engaged in more conventional warfare with U.S. and South Vietnamese forces (Army of the Republic of Vietnam (ARVN)). Despite little progress, the U.S. continued a significant build-up of forces. U.S. and South Vietnam forces relied on air superiority and overwhelming firepower to conduct search and destroy operations, involving ground forces, artillery, and airstrikes. The U.S. also conducted a large-scale strategic bombing campaign against North Vietnam.\r\n', 'Habibi R.A', './img_materi/6337ab11b406a2.70568705.png', 10003, '2022-10-25', 'South Vietnam'),
('Afganisthan War', 'War', 'The War in Afghanistan was an armed conflict in Afghanistan from 2001 to 2021', 'It began when an international military coalition led by the United States launched an invasion of Afghanistan, subsequently toppling the Taliban-ruled Islamic Emirate and establishing the internationally recognized Islamic Republic three years later. The 20-year-long conflict ultimately ended with the 2021 Taliban offensive, which overthrew the Islamic Republic and subsequently re-established the Islamic Emirate. It was the longest war in the military history of the United States, surpassing the length of the Vietnam War (1955–1975) by approximately six months.\r\nFollowing the September 11 attacks, American president George W. Bush demanded that the Taliban, an Afghan Islamist group that had established a de facto state over most of Afghanistan, immediately extradite Osama bin Laden to the United States. Bin Laden was wanted for masterminding the attacks, among other previous charges of terrorism, and had been granted asylum by the Taliban in Afghanistan, where he continued to freely operate; the Talibans refusal to comply with American extradition demands for bin Laden led to the United States declaration of Operation Enduring Freedom as part of the earlier-declared Global War on Terrorism. Shortly after the invasion of Afghanistan, the Taliban and their allies—namely bin Ladens al-Qaeda—were mostly defeated and expelled from major population centers across the country by American-led forces in support of the Northern Alliance, an anti-Taliban Afghan military front. However, the United States failed to kill or capture bin Laden in the Battle of Tora Bora, after which he relocated to neighboring Pakistan. Despite bin Ladens exit from the country, the American-led coalition of over 40 countries (including all of NATO) remained in Afghanistan, forming a security mission—sanctioned by the United Nations and officially known as the International Security Assistance Force (ISAF)—with the goal of consolidating a new democratic authority in the country that would prevent the return to power of the Taliban and al-Qaeda.[77] At the Bonn Conference, new Afghan interim authorities elected Hamid Karzai to head the Afghan Interim Administration, and an international rebuilding effort was also launched across the entire country.\r\n', 'Jeffry Malik', './img_materi/6337ab56ec5900.33249886.jpg', 10004, '2022-10-25', 'Afganisthan'),
('Black Death', 'Pandemic', 'Black Death, pandemic that ravaged Europe between 1347 and 1351, taking a proportionately greater toll of life than any other known epidemic or war up to that time. The Black Death is widely believed to have been the result of plague, caused by infection ', 'Cause and outbreak\r\nHaving originated in China and Inner Asia, the Black Death decimated the army of the Kipchak khan Janibeg while he was besieging the Genoese trading port of Kaffa (now Feodosiya) in Crimea (1347). With his forces disintegrating, Janibeg catapulted plague-infested corpses into the town in an effort to infect his enemies. From Kaffa, Genoese ships carried the epidemic westward to Mediterranean ports, whence it spread inland, affecting Sicily (1347); North Africa, mainland Italy, Spain, and France (1348); and Austria, Hungary, Switzerland, Germany, and the Low Countries (1349). A ship from Calais carried the plague to Melcombe Regis, Dorset, in August 1348. It reached Bristol almost immediately and spread rapidly throughout the southwestern counties of England. London suffered most violently between February and May 1349, East Anglia and Yorkshire during that summer. The Black Death reached the extreme north of England, Scotland, Scandinavia, and the Baltic countries in 1350.\r\nCasualty\r\nThe plague killed an estimated 25 million people, almost a third of the continents population. The Black Death lingered on for centuries, particularly in cities. Outbreaks included the Great Plague of London (1665-66), in which 70,000 residents died.\r\n', 'Habibi R.A', './img_materi/6337ab9722d036.45832068.jpeg', 10005, '2022-10-20', 'Europe'),
('The End Of Pacific War', 'War', 'The Allies reply to the Japanese offer of August 10, 1945, agreed to respect the sovereign status of the Japanese emperor on condition that he should be subject to the directives of the supreme commander of the Allied Powers. On August 14 the Japanese in', 'Emperor Hirohito issued a proclamation to the Japanese people that they should accept the decision to surrender, and every effort was made to persuade them to accept the defeat that they had come to regard as unthinkable. Princes of the Imperial house were dispatched to distant Japanese Army forces in China and Korea to carry the emperors message. A small group of diehard opponents of surrender attempted to assassinate Premier Danshaku Suzuki Kantarō, and other government leaders. It was feared for a time that some fanatical Japanese airmen might launch suicide attacks on the Allied occupation forces, but no such incidents occurred. In retrospect, it appears that the interval between August 14 and September 2, when the formal surrender ceremonies took place, was essential to enable the Japanese government to prepare the way for a peaceful surrender.\r\nTruman designated MacArthur as supreme commander of the Allied Powers to accept the Japanese surrender and to command the troops who were to occupy Japan. Japanese emissaries flew to Manila to confer with U.S. authorities about the procedures to be followed. The formal surrender took place on the deck of the U.S. battleship Missouri, flagship of the Pacific Fleet, anchored in Tokyo Bay. During the last days of August, Allied troops had landed at the forts guarding the bay and at Yokosuka naval base. The Missouri flew from its foremast the flag that had flown over the U.S. Capitol on December 7, 1941, when the Japanese had attacked Pearl Harbor. The Royal Navy was represented by HMS Duke of York, flying the flag of Adm. Sir Bruce Fraser. More than 250 ships representing all the Allied powers were anchored in the bay.\r\n', 'Jefri Malik', './img_materi/6337ac00f06ac4.27566328.jpg', 10006, '2022-10-25', 'Pearl Harbor, Hawaii'),
('Titanic Incident', 'Accident', 'Tells about Titanic Incident hapend in 1912', 'Maiden Voyage\r\nOn April 10, 1912, the Titanic set sail on its maiden voyage, traveling from Southampton, England, to New York City. Nicknamed the “Millionaire’s Special,” the ship was fittingly captained by Edward J. Smith, who was known as the “Millionaire’s Captain” because of his popularity with wealthy passengers. Indeed, onboard were a number of prominent people, including American businessman Benjamin Guggenheim, British journalist William Thomas Stead, and Macy’s department store co-owner Isidor Straus and his wife, Ida. In addition, Ismay and Andrews were also traveling on the Titanic.\r\nThe voyage nearly began with a collision, however, when suction from the Titanic caused the docked New York to swing into the giant liner’s path. After an hour of maneuverings to prevent the accident, the Titanic was under way. On the evening of April 10 the ship stopped at Cherbourg, France. The city’s dock was too small to accommodate the Titanic, so passengers had to be ferried to and from the ship in tenders.\r\ninvestigation\r\nAlthough the majority of dead were crew members and third-class passengers, many of the era’s wealthiest and most prominent families lost members, among them Isidor and Ida Straus and John Jacob Astor. In the popular mind, the glamour associated with the ship, its maiden voyage, and its notable passengers magnified the tragedy of its sinking. Legends arose almost immediately about the night’s events, those who had died, and those who survived. Heroes and heroines—such as American Molly Brown, who helped command a lifeboat, and Capt. Arthur Henry Rostron of the Carpathia—were identified and celebrated by the press. Others—notably Ismay, who had found space in a lifeboat and survived—were vilified. There was a strong desire to explain the tragedy, and inquiries into the sinking were held in the United States and Great Britain.\r\n', 'Habibi R.A', './img_materi/6337ac30470dc3.34988272.jpg', 10007, '2022-10-23', 'Newfoundland, Canada'),
('Reconquista', 'War', 'Reconquista is the process by which the Christians reclaimed Spanish territory from the Muslims. This process took about 800 years.', 'Previously, during the years 711 to 756 AD, the Moors, who embraced Islam and came from North Africa, invaded Spain and defeated the Christian Visigothic Kingdom that ruled there. They later founded the Emirate of Cordoba. Muslim rule in Spain lasted for several hundred years, even in Cordoba they ruled for almost 800 years.\r\nThe Visigoths and Romans then banded together to drive the Moors out of Spain. The Spaniards gradually conquered Spain, starting in northern Spain near France and then moving on to southern Spain.\r\nOne of the famous stories about this battle is the Song of Roland. Roland (in the story) was a soldier in Charlemagnes army who fought in Spain around AD 400. Rolands troops were ambushed by the Moors (possibly the actual ambushers were Basques) and Roland died tragically after fighting valiantly.\r\nTo The End\r\nAfter 1100 AD the Spaniards were assisted by French troops, because France was experiencing a period of peace so troops were not needed there. However, they only really gained the upper hand over the Muslims after the Moorish dynasty in Spain, the Murabitun dynasty, began to weaken due to a number of civil wars and rebellions.\r\nAfter the Murabitun dynasty weakened, the Spanish troops managed to defeat them fairly quickly. The Christians captured Toledo in 1212 AD, then Cordoba in 1236 AD, and around 1250 AD the Moors only controlled the city of Granada in the southernmost part of Spain. Finally in 1492 AD, King Ferdinand and Queen Isabella managed to regain control of the entire territory of Spain and Portugal. Most of the Moors and Jews fled to Africa, where they settled in Tunisia. While some other Jews fled to Greece and Istanbul.\r\n', 'Adri Bagas', './img_materi/6337ac64586e54.41930630.jpg', 10008, '2022-10-23', 'Vigo,Spain'),
('The Viking', 'Organization', 'The Vikings were an Indo-European nation from Scandinavia (modern Denmark, Norway, and Sweden) which around the 400s AD began to carry out routine raids by sea to various regions in Europe, even to the Mediterranean Sea by invading Sicily and southern Ita', 'In 861 AD, another branch of the Vikings migrated to Russia to trade with Constantinople. In Russia, the Vikings gradually mixed with the Slavs who lived there, and founded the Russian state. Together, the Slavs and Vikings sailed the Black Sea, where they traded with various peoples from the east along the Silk Road like the Samanids. The Vikings sold fur and wool to the Samanids, and the Samanids sold silk from China to the Vikings.\r\nThe Vikings and Slavs also invaded the Byzantine territories around Constantinople, although they were unable to capture the city. The Byzantine Empire quickly hired Vikings as soldiers. Many Vikings fought for the Byzantines at the Battle of Manzikert against the Seljuks in 1071 AD. Around 1100 AD, most of the Vikings had converted to Christianity.\r\nIn 1000 AD, several Vikings settled in northern France, and they came to be called the Normans, or Northman, while the area is known as Normandy to this day. They also embraced Christianity. During this time, some Vikings sailed west to areas such as Iceland and Greenland, even as far as Nova Scotia, in modern-day Canada. Some Viking men married local women there. The Vikings also settled in Iceland and Greenland, but only briefly lived in Canada, because the Inuits there were too strong for them, and because a period of global cooling beginning around AD 1300 made the oceans too frozen for their ships.\r\n', 'Adri Bagas', './img_materi/6337aca73597f4.08518490.jpg', 10009, '2022-10-21', 'Scandinavia'),
('America Revolution', 'War', 'The era of revolution began in 1763 when the threat of French restructuring over the British colonies in North America ended. Britain then introduced several series of excise duties and laws over the colony to show its power. ', 'This british basis was not popular with the population especially if the colonies did not have representatives in the Great Britain Parlimen. Many of the inhabitants of the colony felt this act of Britain violated their rights as British. Things were exacerbated on britains mercantilist basis such as trade barriers that only benefited Britain and helped the economic development of the colonies. In 1772, the Patriots began to embody the power that led to their own Territorial Congress in the colony. Within two years, the Regional Congress and its likeness rejected parliment and exchanged the British system of consecration in the colony with its peak in 1774 with the First Continental Congress.\r\n\r\nThe British sent askar in response to patriot protests in Boston. In retaliation, thirteen colonies deployed militia and a riot erupted in 1775. In order to show loyalty to King George III, Congress seduced many times to the kings interference but only the end of it they were martyred as depredations. In 1776, representatives from each Thirteen Colonies drew a vote to accept the use of the Independence Perisytiharan which also rejected the monarchy and the British Parliment. This perisytiharan formed the United States which was originally enshrined as a loose combination through a representative empire elected by the state legislature.\r\n\r\nThe American population formed a pact with the French in 1778 to strengthen their land and sea armies. Although loyalists were budgeted as busy as 15-20%, throughout the war, patriots generally escorted 80-90% of the territory; and the British held only a small number of towns on the coast. The two main British armies surrendered defeating the Battle of Saratoga in 1777 and during the Siege of Yorktown in 1781 it marked a victory for the former colony. Through the Treaty of Paris in 1783, the British ended the claim to the thirteen lands.\r\n', 'Jeffry Malik', './img_materi/6337ace53a1f77.70572181.jpg', 10010, '2022-10-17', 'America'),
('Indonesia Independence', 'History', 'In accordance with the Vienna treaty in 1942, the allied countries agreed to return the territories now occupied by Japan to their respective colony owners if Japan was successfully expelled from its occupied territories.', 'Towards the end of the war, in 1945, part of Indonesia territory was controlled by the Allied forces. Australian army units have landed their troops in Makasar and Banjarmasin, while Balikpapan had been occupied by Australia before Japan declared defeat. Meanwhile, Morotai Island and West Irian are jointly controlled by Australian and United States army units under the leadership of General Douglas MacArthur, Commander of the South West Pacific Area Command (SWPAC).\r\nAfter the war, the Australian army was responsible for Borneo and Eastern Indonesia, the United States controlled the Philippines and the British army in the form of SEAC (South East Asia Command) commands were responsible for India, Burma, Sri Lanka, Malaya, Sumatra, Java and Indochina. Seac with commander Lord Mountbatten as the Supreme Allied Command in Southeast Asia was tasked with disarming Japanese troops and taking care of the return of prisoners of war and prisoners of allied civilians (RAPWI).\r\n', 'Habibi R.A', './img_materi/6337ad0b16d7a1.94104410.jpg', 10011, '2022-10-17', 'Indonesia'),
('Soccer History', 'History', 'The beginning of the history of modern football began to be known when the sport was played in the country of England.', 'But long before that, the Chinese people during the Han Dynasty who lived around the 2nd and 3rd centuries are said to have known this sport first. At that time, the society made a ball out of leather then dribbled and put it in a small net.\r\nQuoted from Britannica, football later became a folk sport that was widely played by city dwellers in England. It is just that the football game at that time was still played in a simple way and a little rule. The sport is also a favorite of the working class as a means of spending time.\r\nAt the beginning of the 20th century, football also spread to various countries in Europe. With so many people who have played football, an organization is needed that can overshadow these various countries in terms of football. In this regard, several representatives from Belgium, Denmark, France, the Netherlands, Spain, Sweden, and Switzerland also held a meeting. As a result, in 1904, the parent organization of world football was born under the name Federation Internationale de Football Association (FIFA).\r\n', 'Arya Rachman.P', './img_materi/6337ad28e3c0f6.66701602.jpg', 10012, '2022-10-19', 'England');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(14) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birth` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `name`, `birth`, `password`, `phone`, `email`, `user_img`) VALUES
('U63367293ecf2b', 'Adri Bagas Witjaksono', '2022-09-10', 'hahaha', '09121908232', 'adri@gmail.com', '../user_img/user.png'),
('U633672e40b81f', 'Adri Bagas Witjaksono', '2022-09-04', 'hahaha', '09121908232', 'adri.genshinhoma@gmail.com', '../user_img/user.png'),
('U6336735514de8', 'anj', '2022-09-21', 'hahaha', '09121908232', 'adri.genshinhoma@gmail.com', '../user_img/user.png'),
('U633673a26f961', 'anj', '2022-09-21', 'hahaha', '09121908232', 'adri.genshinhoma@gmail.com', '../user_img/633673a26f9708.71118401.jpg'),
('U6336bd358ccea', 'Divadan arya putrama', '2022-09-30', 'oiwu89u89213908qwd', '9121908232', 'UUUdin666@yahoomail.co', '../user_img/6336bd358cd027.51485473.jpeg'),
('USiiueq0983018', 'Divadan', '2006-09-14', 'oioqjwe8173081230941bkjqds', '091239879349812', 'Diva@gmail.com', 'user_img/img_div');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily`
--
ALTER TABLE `daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `daily`
--
ALTER TABLE `daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10013;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
