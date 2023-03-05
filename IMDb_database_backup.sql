-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: team08_0202
-- ------------------------------------------------------
-- Server version 8.0.23
CREATE DATABASE  IF NOT EXISTS `team08_0202` /*!40100 DEFAULT CHARACTER SET utf8mb4
COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `team08_0202`;
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
--
-- Temporary view structure for view `actor_born_before_1900`
--
DROP TABLE IF EXISTS `actor_born_before_1900`;
/*!50001 DROP VIEW IF EXISTS `actor_born_before_1900`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `actor_born_before_1900` AS SELECT 
 1 AS `Actor Name`,
 1 AS `Show Title`,
 1 AS `Director Name`,
 1 AS `Producer Name`,
 1 AS `Release Date`*/;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `actor_movie_award`
--
DROP TABLE IF EXISTS `actor_movie_award`;
/*!50001 DROP VIEW IF EXISTS `actor_movie_award`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `actor_movie_award` AS SELECT 
 1 AS `Name`,
 1 AS `Movie Name`,
 1 AS `Award Name`,
 1 AS `Received Year`*/;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `actor_movie_show`
--
DROP TABLE IF EXISTS `actor_movie_show`;
/*!50001 DROP VIEW IF EXISTS `actor_movie_show`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `actor_movie_show` AS SELECT 
 1 AS `Actor Name`,
 1 AS `Movie Title`,
 1 AS `Show Title`*/;
SET character_set_client = @saved_cs_client;
--
-- Temporary view structure for view `avg_actor_born_year`
--
DROP TABLE IF EXISTS `avg_actor_born_year`;
/*!50001 DROP VIEW IF EXISTS `avg_actor_born_year`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_actor_born_year` AS SELECT 
 1 AS `Actor or Actress`,
 1 AS `Average of born year`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `awards`
--
DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `awards_id` int NOT NULL AUTO_INCREMENT,
  `people_id` int NOT NULL,
  `award_name` varchar(45) DEFAULT NULL,
  `date_received_year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`awards_id`),
  KEY `fk_Awards_Peoples1_idx` (`people_id`),
  CONSTRAINT `fk_Awards_Peoples1` FOREIGN KEY (`people_id`) REFERENCES `peoples` 
(`people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `awards`
--
LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (1,1,'Grammy Hall of Fame','1937'),(2,2,'Cecil B. 
DeMille Award','1977'),(3,3,'BAFTA Awards','1967'),(4,4,'Primetime Emmy 
Awards','1977'),(5,5,'Academy Awards, USA','1984'),(6,6,'Academy Awards, 
USA','1979'),(7,7,'BAFTA Awards','1953'),(8,8,'Golden Globes, USA','1974'),
(9,9,'Academy Awards, USA','1978'),(10,10,'American Film Institute, USA','1974'),
(11,11,'Academy Awards, USA','1953'),(12,12,'Academy Awards, USA','1963'),
(13,13,'Golden Globes, USA','1989'),(14,14,'Academy Awards, USA','1950'),
(15,15,'Bravo Otto','1957'),(16,16,'Academy Awards, USA','1986');
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `decent_rating`
--
DROP TABLE IF EXISTS `decent_rating`;
/*!50001 DROP VIEW IF EXISTS `decent_rating`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `decent_rating` AS SELECT 
 1 AS `movie_title`,
 1 AS `description`,
 1 AS `Date_correction`,
 1 AS `movie_genre`,
 1 AS `MAX(movie_rating)`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `movies`
--
DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `movie_detail_id` int NOT NULL,
  `movie_title` varchar(45) NOT NULL,
  `director_name` varchar(45) DEFAULT NULL,
  `producer_name` varchar(45) DEFAULT NULL,
  `actor_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `fk_Moives_Movies_detail1_idx` (`movie_detail_id`),
  CONSTRAINT `fk_Moives_Movies_detail1` FOREIGN KEY (`movie_detail_id`) REFERENCES 
`movies_detail` (`movie_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `movies`
--
LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,1,'Shoot the Piano Plyaer','François Roland 
Truffaut','Pierre Braunberger','Georges Delerue'),(2,2,'Smiles of a Summer 
Night','Jarl Kulle','Allan Ekelund','Ingmar Bergman'),(3,3,'East of Eden','Elia 
Kazan','Warner Bros. Pictures','James Dean'),(4,4,'Apocalypse Now','Francis Ford 
Coppola','Kim Aubry','Marlon Brando'),(5,5,'The Gay Divorcee','Mark 
Sandrich','Pandro S.Berman','Fred Astaire'),(6,6,'High noon','Fred 
Zinnemann','Stanley Kramer Company','Gary Cooper'),(7,7,'Cleopatra','Joseph L. 
Mankiewicz','20th Century Studios','Richard Burton'),(8,8,'The mirror has two 
faces','Barbra Streisand','Richard LaGravenese','Lauren Bacall'),(9,9,'The public 
enemy','William A.Wellman','Warner Bros.Pictures','James Cagney'),(10,10,'And God 
Created Woman','Roger Vadim and starring Brigitte Bardot','lena','Brigitte 
Bardot'),(11,11,'What Ever Happened to Baby Jane?','Robert Aldrich','Robert 
Aldrich','Bette Davis'),(12,12,'Neighbors','Nicholas Stoller','Seth Rogen,James 
Weaver and Evan Goldberg','John Belushi'),(13,13,'Pillow Talk','Michael 
Gordon','Ross Hunter Martin Melcher','Doris Day'),(14,14,'Casablanca','Michael 
Curtiz','Hal B. Wallis','Humphrey Bogart'),(15,15,'Notorious','George Tillman 
Jr','Voletta Wallace','Ingrid Bergman'),(16,16,'Gone with the Wind','Victor 
Fleming','David O. Selznick','Olivia de Havilland');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `movies_detail`
--
DROP TABLE IF EXISTS `movies_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies_detail` (
  `movie_detail_id` int NOT NULL,
  `description` longtext,
  `release_date` date DEFAULT NULL,
  `movie_genre` varchar(45) DEFAULT NULL,
  `movie_rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`movie_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `movies_detail`
--
LOCK TABLES `movies_detail` WRITE;
/*!40000 ALTER TABLE `movies_detail` DISABLE KEYS */;
INSERT INTO `movies_detail` VALUES (1,'Shoot the Piano Player (French: Tirez sur le
pianiste; UK title: Shoot the Pianist) is a 1960 French New Wave crime drama film 
directed by François Truffaut and starring Charles Aznavour as the titular pianist.
It is based on the novel Down There by David Goodis.','1962-07-23','Comedy',7.5),
(2,'Smiles of a Summer Night (Swedish: Sommarnattens leende) is a 1955 Swedish 
comedy film written and directed by Ingmar 
Bergman.','1957-12-23','Romance/Comedy',7.8),(3,'East of Eden is a 1955 drama film,
directed by Elia Kazan, and loosely based on the fourth and final part of the 1952 
novel of the same name by John Steinbeck.','1955-04-10','Romance/Drama',7.9),(4,'A 
U.S. Army officer serving in Vietnam is tasked with assassinating a renegade 
Special Forces Colonel who sees himself as a 
god.','1979-08-15','War/Drama/Epic',8.4),(5,'A woman thinks a flirting man is the 
co-respondent her lawyer has hired to expedite her 
divorce.','1934-10-12','Comedy/Musical/Romance',7.5),(6,'A town Marshal, despite 
the disagreements of his newlywed bride and the townspeople around him, must face a
gang of deadly killers alone at high noon when the gang leader, an outlaw he sent 
up years ago, arrives on the noon train.','1952-07-30','Drama',8.0),(7,'Queen 
Cleopatra VII of Egypt experiences both triumph and tragedy as she attempts to 
resist the imperial ambitions of Rome.','1963-07-31','Biography',7.0),(8,'A teacher
runs an ad in the newspaper to find a wife. Afraid of beautiful ladies, he weds an 
ugly woman. After a car accident, he meets a doctor who offers to reveal his 
wife\'s beauty.','1958-10-15','Drama',6.7),(9,'An Irish-American street punk tries 
to make it big in the world of organized crime.','1931-05-15','Crime/Drama',7.7),
(10,'In sunny St. Tropez, a young sexpot loves one brother but marries the 
other.','1957-10-21','Drama/Romance',6.3),(11,'A former child star torments her 
paraplegic sister in their decaying Hollywood mansion.','1962-10-31','Drama',8.1),
(12,'A quiet man\'s peaceful suburban lifestyle is threatened by the new, obnoxious
couple that moves in next door.','1981-12-18','Comedy',5.6),(13,'An interior 
decorator and a playboy songwriter share a telephone party line and size each other
up.','1959-10-07','Comedy',7.4),(14,'A cynical expatriate American cafe owner 
struggles to decide whether or not to help his former lover and her fugitive 
husband escape the Nazis in French Morocco.','1943-01-23','Drama/Romance/War',8.5),
(15,'A woman is asked to spy on a group of Nazi friends in South America. How far 
will she have to go to ingratiate herself with them?','1946-09-06','Drama/Film-
Noir/Romance',8.0),(16,'A manipulative woman and a roguish man conduct a turbulent 
romance during the American Civil War and Reconstruction periods.','1940-01-
17','Drama/History/Romance',8.1);
/*!40000 ALTER TABLE `movies_detail` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `people_type`
--
DROP TABLE IF EXISTS `people_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `people_type` (
  `people_type_id` int NOT NULL AUTO_INCREMENT,
  `actor` varchar(45) DEFAULT NULL,
  `director` varchar(45) DEFAULT NULL,
  `producer` varchar(45) DEFAULT NULL,
  `artist` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`people_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `people_type`
--
LOCK TABLES `people_type` WRITE;
/*!40000 ALTER TABLE `people_type` DISABLE KEYS */;
INSERT INTO `people_type` VALUES (1,'Actor',NULL,NULL,NULL),
(2,'Actress','Director','Producer',NULL),(3,'Actress','Director',NULL,'Artist'),
(4,'Actor',NULL,'Producer','Artist'),(5,NULL,'Director','Producer',NULL),
(6,'Actress',NULL,NULL,NULL),(7,'Actor',NULL,NULL,NULL),
(8,'Actor','Director',NULL,NULL),(9,'Actor',NULL,NULL,NULL),
(10,'Actor',NULL,NULL,'Artist'),(11,'Actor',NULL,NULL,NULL),
(12,'Actress',NULL,NULL,NULL),(13,'Actress',NULL,NULL,'Artist'),
(14,'Actress',NULL,NULL,NULL),(15,'Actor',NULL,NULL,NULL),
(16,NULL,'Director','Producer',NULL);
/*!40000 ALTER TABLE `people_type` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `peoples`
--
DROP TABLE IF EXISTS `peoples`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peoples` (
  `people_id` int NOT NULL AUTO_INCREMENT,
  `people_type_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `show_id` int DEFAULT NULL,
  `birth_name` varchar(45) DEFAULT NULL,
  `born_year` int DEFAULT NULL,
  `height_in` varchar(45) DEFAULT NULL,
  `spouse` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`people_id`),
  KEY `Fk_People_type_id_idx` (`people_type_id`),
  KEY `Fk_Movie_id_idx` (`movie_id`),
  KEY `Fk_Television_show_id_idx` (`show_id`),
  CONSTRAINT `Fk_Movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movies` 
(`movie_id`),
  CONSTRAINT `Fk_People_Type_id` FOREIGN KEY (`people_type_id`) REFERENCES 
`people_type` (`people_type_id`),
  CONSTRAINT `Fk_Television_show_id` FOREIGN KEY (`show_id`) REFERENCES 
`television_show` (`show_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `peoples`
--
LOCK TABLES `peoples` WRITE;
/*!40000 ALTER TABLE `peoples` DISABLE KEYS */;
INSERT INTO `peoples` VALUES (1,1,5,1,'Fred Astaire',1899,'5\'9\"','Robyn Smith'),
(2,2,8,2,'Lauren Bacall',1924,'5\'9\"',NULL),(3,3,10,3,'Brigitte 
Bardot',1934,'5\'5\"','Bernard d\'Ormale'),(4,4,12,4,'John 
Belushi',1949,'5\'7\"','Judith Belushi Pisano'),(5,5,2,5,'Ingmar 
Bergman',1918,'5\'9\"','Ingrid von Rosen'),(6,6,15,6,'Ingrid 
Bergman',1915,'5\'9\"',NULL),(7,7,14,7,'Humphrey Bogart',1899,'5\'8\"','Lauren 
Bacall'),(8,8,4,8,'Marlon Brando',1924,'5\'7\"','Tarita Teriipaia'),
(9,9,7,9,'Richard Burton',1925,'5\'10\"','Sally Burton'),(10,10,9,10,'James 
Cagney',1899,'5\'5\"','Frances Willard Vernon'),(11,11,6,11,'Gary 
Cooper',1901,'6\'3\"','Veronica Balfe'),(12,12,11,12,'Bette Davis',1908,NULL,'Gary 
Merrill'),(13,13,13,13,'Doris Day',1922,NULL,' Barry Comden'),(14,14,16,14,'Olivia 
de Havilland',1916,'5\'4\"','  Pierre Galante '),(15,15,3,15,'James 
Dean',1931,'5\'8\"',NULL),(16,16,1,16,'Georges Delerue',1925,'5\'7\"','Micheline 
Gautron');
/*!40000 ALTER TABLE `peoples` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `television_show`
--
DROP TABLE IF EXISTS `television_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `television_show` (
  `show_id` int NOT NULL AUTO_INCREMENT,
  `detail_id` int NOT NULL,
  `show_title` varchar(60) DEFAULT NULL,
  `director_name` varchar(45) DEFAULT NULL,
  `producer_name` varchar(45) DEFAULT NULL,
  `actor_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`show_id`),
  KEY `fk_Television_show_Television_show_detail1_idx` (`detail_id`),
  CONSTRAINT `fk_Television_show_Television_show_detail1` FOREIGN KEY (`detail_id`)
REFERENCES `television_show_detail` (`show_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `television_show`
--
LOCK TABLES `television_show` WRITE;
/*!40000 ALTER TABLE `television_show` DISABLE KEYS */;
INSERT INTO `television_show` VALUES (1,1,'Funny Face','Stanley Donen','Roger 
Edens','Fred Astaire'),(2,2,'To Have and Have Not','Howard Hawks','Howard 
Hawks','Lauren Bacall'),(3,3,'Le mépris','Jean-Luc Godard','Georges de 
Beauregard','Brigitte Bardot'),(4,4,'National Lampoom\'s Animal House','John 
Landis','Ivan Reitman','John Belushi'),(5,5,'Ingmar Bergman through the 
Choreographer\'s eye','Fredrik Stattin','Ingmar Bergman Jr.','Ingmar Bergman'),
(6,6,'Casablanca','Michael Curtiz','Hal B. Wallis','Ingrid Bergman'),(7,7,'The 
Maltese Falcon','John Huston','Henry Blanke','Humphrey Bogart'),(8,8,'Apocalypse 
Now','Francis Ford Coppola','John Ashley','Marlon Brando'),(9,9,'Who\'s Afraid of 
Virginia Woolf?','Mike Nichols','Ernest Lehman','Richard Burton'),(10,10,'Angels 
with Dirty','Michael Curtiz','Samuel Bischoff','James Cagney'),(11,11,'High 
Noon','Fred Zinnemann','Carl Foreman','Gary Cooper'),(12,12,'Gunsmoke','Andrew V. 
McLaglen','Norman MacDonnell','Bette Davis'),(13,13,'The Doris Day Show','William 
Wiard','Terry Melcher','Doris Day'),(14,14,'The Woman He Loved','Charles 
Jarrott','Marie Angello','Olivia de Havilland'),(15,15,'The Big Story','Leonard 
Valenta','Bernard J. Prockter','James Dean'),(16,16,'Screen Two','Tristram 
Powell','Mark Shivas','Georges Delerue');
/*!40000 ALTER TABLE `television_show` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `television_show_detail`
--
DROP TABLE IF EXISTS `television_show_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `television_show_detail` (
  `show_detail_id` int NOT NULL AUTO_INCREMENT,
  `description` blob,
  `release_date` date DEFAULT NULL,
  `show_genre` varchar(45) DEFAULT NULL,
  `show_rating` decimal(2,1) DEFAULT NULL,
  PRIMARY KEY (`show_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `television_show_detail`
--
LOCK TABLES `television_show_detail` WRITE;
/*!40000 ALTER TABLE `television_show_detail` DISABLE KEYS */;
INSERT INTO `television_show_detail` VALUES (1,_binary 'An impromptu fashion shoot 
at a book store brings about a new fashion model discovery in the shop 
clerk.','1957-04-25','Comedy/Musical/Romance',7.0),(2,_binary 'During World War II,
American expatriate Harry Morgan helps transport a French Resistance leader and his
beautiful wife to Martinique while romancing a sensuous lounge singer.','1945-01-
20','Adventure/Comedy/Film-Noir',7.8),(3,_binary 'Screenwriter Paul Javal\'s 
marriage to his wife Camille disintegrates during movie production as she spends 
time with the producer. Layered conflicts between art and business ensue.','1964-
12-18','Drama/Romance',7.6),(4,_binary 'At a 1962 college, Dean Vernon Wormer is 
determined to expel the entire Delta Tau Chi Fraternity, but those troublemakers 
have other plans for him.','1978-07-28','Comedy',7.5),(5,_binary 'Four of Sweden\'s
most innovative choreographers travel to Ingmar Bergman\'s home on F?r? to explore 
and get inspired. The result is a unique contemporary dance film.The renowned 
Swedish choreographers Alexander Ekman, P?r Isberg, Pontus Lidberg and Joakim 
Stephenson, with principal dancers Jenny Nilson, Nathalie Nordquist, Oscar 
Salomonsson and Nadja Sellrup from the Royal Swedish Ballet, interpret Ingmar 
Bergman through four unique dance performances reflecting on human relations and 
intense feelings. The dances are linked together with images of the epic natural 
beauty of F?r? and Bergman\'s poetic home Hammars, including the voice of the 
master himself - Ingmar Bergman - revealing his thoughts about movements and 
music.','2016-11-14','Documentary',7.2),(6,_binary 'A cynical expatriate American 
cafe owner struggles to decide whether or not to help his former lover and her 
fugitive husband escape the Nazis in French 
Morocco.','1947-01-23','Drama/Romance/War',8.5),(7,_binary 'A private detective 
takes on a case that involves him with three eccentric criminals, a gorgeous liar, 
and their quest for a priceless 
statuette.','1941-10-18','Crime/Film-Noir/Mystery',8.0),(8,_binary 'A U.S. Army 
officer serving in Vietnam is tasked with assassinating a renegade Special Forces 
Colonel who sees himself as a god.','1979-08-15','Drama/Mystery/War',8.4),
(9,_binary 'A bitter, aging couple, with the help of alcohol, use their young 
houseguests to fuel anguish and emotional pain towards each other over the course 
of a distressing night.','1966-06-22','Drama',8.0),(10,_binary 'A priest tries to 
stop a gangster from corrupting a group of street kids.','1938-11-26','Crime/Film-
Noir/Drama',7.9),(11,_binary 'A town Marshal, despite the disagreements of his 
newlywed bride and the townspeople around him, must face a gang of deadly killers 
alone at high noon when the gang leader, an outlaw he sent up years ago, arrives on
the noon train.','1952-07-30','Drama/Thriller?westerm',8.0),(12,_binary 'Marshal 
Matt Dillon keeps the peace in rough and tumble Dodge City.','1955-03-
02','Western',7.9),(13,_binary 'After spending most of her life in big cities, 
widow Doris Martin decides to move back to the family ranch.','1968-07-
03','Comedy',7.3),(14,_binary 'The love story between American divorcee Wallis 
Simpson and Edward VIII, that ended in his abdication for the woman he 
loved.','1988-04-03','Drama/Romance',6.2),(15,_binary 'Based on a popular radio 
series, each show tells a different reporter\'s Big Story, a true story selected 
from newspapers across the United States. Comments from the actual reporter open 
and','1949-05-09','Drama',7.6),(16,_binary 'Producer Kenith Trodd was part of a 
1984 team brought together to study how the BBC should respond to Channel Four\'s 
pioneering efforts in making movies for television and theatrical release. The 
result was a transition from the earlier concept of studio-made plays, such 
as \"Play for Today\" and the introduction of the new BBC anthology movie 
series, \"Screen One\" and \"Screen Two\", with Trodd\'s supervision of the initial
group of titles in 1985.','1985-01-02','Drama',6.2);
/*!40000 ALTER TABLE `television_show_detail` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Final view structure for view `actor_born_before_1900`
--
/*!50001 DROP VIEW IF EXISTS `actor_born_before_1900`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `actor_born_before_1900` AS select `p`.`birth_name` AS `Actor 
Name`,`ts`.`show_title` AS `Show Title`,`ts`.`director_name` AS `Director 
Name`,`ts`.`producer_name` AS `Producer Name`,`td`.`release_date` AS `Release Date`
from ((`peoples` `p` join `television_show` `ts` on((`p`.`show_id` = 
`ts`.`show_id`))) join `television_show_detail` `td` on((`ts`.`detail_id` = 
`td`.`show_detail_id`))) where `p`.`people_id` in (select `peoples`.`people_id` 
from `peoples` where (`peoples`.`born_year` < 1900)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
--
-- Final view structure for view `actor_movie_award`
--
/*!50001 DROP VIEW IF EXISTS `actor_movie_award`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `actor_movie_award` AS select `p`.`birth_name` AS 
`Name`,`m`.`movie_title` AS `Movie Name`,`a`.`award_name` AS `Award 
Name`,`a`.`date_received_year` AS `Received Year` from ((`peoples` `p` join 
`movies` `m` on((`p`.`movie_id` = `m`.`movie_id`))) join `awards` `a` 
on((`p`.`people_id` = `a`.`people_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
--
-- Final view structure for view `actor_movie_show`
--
/*!50001 DROP VIEW IF EXISTS `actor_movie_show`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `actor_movie_show` AS select `p`.`birth_name` AS `Actor 
Name`,`m`.`movie_title` AS `Movie Title`,`television_show`.`show_title` AS `Show 
Title` from ((`peoples` `p` join `movies` `m` on((`p`.`movie_id` = 
`m`.`movie_id`))) join `television_show` on((`p`.`show_id` = 
`television_show`.`show_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
--
-- Final view structure for view `avg_actor_born_year`
--
/*!50001 DROP VIEW IF EXISTS `avg_actor_born_year`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_actor_born_year` AS select `pt`.`actor` AS `Actor or 
Actress`,round(avg(`p`.`born_year`),0) AS `Average of born year` from 
(`people_type` `pt` join `peoples` `p` on((`pt`.`people_type_id` = 
`p`.`people_type_id`))) where (`pt`.`actor` is not null) group by `pt`.`actor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
--
-- Final view structure for view `decent_rating`
--
/*!50001 DROP VIEW IF EXISTS `decent_rating`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `decent_rating` AS select `movies`.`movie_title` AS 
`movie_title`,`movies_detail`.`description` AS 
`description`,date_format(`movies_detail`.`release_date`,'%M %D %Y') AS 
`Date_correction`,`movies_detail`.`movie_genre` AS 
`movie_genre`,max(`movies_detail`.`movie_rating`) AS `MAX(movie_rating)` from 
(`movies` join `movies_detail` on((`movies`.`movie_detail_id` = 
`movies_detail`.`movie_detail_id`))) where (`movies_detail`.`movie_rating` >= 7.0) 
group by `movies`.`movie_title` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Dump completed on 2021-05-14 23:00:02