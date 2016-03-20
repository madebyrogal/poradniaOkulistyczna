-- MySQL dump 10.13  Distrib 5.5.47, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: poradnia
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `symptoms` longtext COLLATE utf8_unicode_ci,
  `recommendation` longtext COLLATE utf8_unicode_ci,
  `comments` longtext COLLATE utf8_unicode_ci,
  `picture1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F3B6AC112469DE2` (`category_id`),
  KEY `IDX_F3B6AC16B899279` (`patient_id`),
  CONSTRAINT `FK_F3B6AC112469DE2` FOREIGN KEY (`category_id`) REFERENCES `disease_category` (`id`),
  CONSTRAINT `FK_F3B6AC16B899279` FOREIGN KEY (`patient_id`) REFERENCES `patient_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES (1,1,'Perforujące gałkę oczną','A','wywiad w kierunku urazu, silny ból gałki ocznej, pogorszenie ostrości wzroku, uszkodzenie struktur gałki ocznej widoczne w świetle rozproszonym','ocena ostrości wzroku do dali, trzeba zasłonić gałkę oczną jałowym opatrunkiem, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Uwaga! Nie można uciskać gałki ocznej','','','',2),(2,1,'Oparzenia chemiczne i termiczne','A','wywiad w kierunku oparzenia (rodzaj substancji – kwas czy zasada, temperatura, światło UV np. spawacze i użytkownicy solarium), silny ból gałki ocznej, pogorszenie ostrości wzroku, światłowstręt, łzawienie','ocena ostrości wzroku do dali, płukanie worka spojówkowego solą fizjologiczną, w przypadku oparzenia kwasem lub zasadą płukanie worka spojówkowego minimum 500 ml 0,9% NaCl, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Uwaga! Nie można zakładać opatrunku na chorą gałkę oczną',NULL,NULL,NULL,2),(3,1,'Ciało obce powierzchni oka','A','wywiad w kierunku urazu, zwłaszcza powstałego wskutek spawania, szlifowania, kucia metalu i rąbania drewna, uczucie ciała obcego, silny ból i przekrwienie gałki ocznej, światłowstręt, łzawienie','należy odwinąć powiekę górną i podać do worka spojówkowego 1–2 krople środka znieczulającego oraz fluoresceiny, ocena barwienia rogówki w świetle rozproszonym lub z zastosowaniem filtra kobaltowego (niebieskiego), jeśli na powierzchni gałki ocznej lub pod powieką górną jest widoczne poruszające się podczas mrugnięć ciało obce – należy worek spojówkowy wypłukać solą fizjologiczną, ew. usunąć ciało obce jałowym gazikiem, jeśli na powierzchni gałki ocznej jest widoczne nieporuszające się podczas mrugnięć ciało obce – należy worek spojówkowy wypłukać solą fizjologiczną, unikać jakichkolwiek manipulacji i odesłać pacjenta na ostry dyżur okulistyczny, w każdym przypadku do worka spojówkowego trzeba podać kroplę antybiotyku',NULL,NULL,NULL,NULL,2),(4,1,'Ciało obce wewnątrzgałkowe','A','wywiad w kierunku urazu – zwłaszcza powstałego wskutek spawania, szlifowania, kucia metalu i rąbania drewna, silny ból gałki ocznej, możliwe są: znaczne pogorszenie ostrości wzroku i wylew podspojówkowy','ocena ostrości wzroku do dali, RTG oczodołów, trzeba zasłonić gałkę oczną jałowym opatrunkiem, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Uwaga! Nie można uciskać gałki ocznej',NULL,NULL,NULL,2),(5,1,'Uraz tępy','A','wywiad w kierunku urazu (np. uderzenie pięścią czy aktywność sportowa), może dojść do: pogorszenia ostrości wzroku, powstania krwiaka okularowego i wylewu podspojówkowego, zaburzeń ruchomości gałki ocznej, dwojenia, zaburzeń ruchomości źrenicy (szeroka źrenica)','ocena ostrości wzroku do dali, RTG oczodołów, badanie gałki ocznej w świetle rozproszonym – w tym ocena szerokości źrenicy i jej reakcji na światło, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(6,1,'Urazy powiek','A','Wywiad w kierunku urazu, widoczna rana/wylew krwi w obrębie powieki','worek spojówkowy należy wypłukać solą fizjologiczną i podać maść zawierającą antybiotyk, gałkę oczną trzeba zasłonić jałowym opatrunkiem, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(7,2,'Ostry atak jaskry','A','ból gałki ocznej i głowy, nudności i wymioty, obniżenie ostrości wzroku, światłowstręt, tęczowe koła wokół źródeł światła, w badaniu palpacyjnym bolesna gałka oczna jest twarda przekrwienie gałki ocznej, zmniejszenie przezierności rogówki, źrenica jest szeroka i sztywna wywiad rodzinny dotyczący jaskry, wada refrakcji – nadwzroczność (soczewki okularowe plusowe)','ocena ostrości wzroku do dali, palpacyjna ocena ciśnienia wewnątrzgałkowego, badanie gałki ocznej w świetle rozproszonym, w tym ocena szerokości źrenicy i jej reakcji na światło, należy podać 2 tabletki diuramidu doustnie oraz 1–2 krople 2% pilocarpiny do worka spojówkowego, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(8,2,'Ostre zapalenie tęczówki','A','ból gałki ocznej, obniżenie ostrości wzroku, światłowstręt, przekrwienie gałki ocznej źrenica jest wąska i sztywna wywiad w kierunku chorób ogólnych, np. reumatycznych','ocena ostrości wzroku do dali, palpacyjna ocena ciśnienia wewnątrzgałkowego, badanie gałki ocznej w świetle rozproszonym, w tym ocena szerokości źrenicy i jej reakcji na światło, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(9,2,'Owrzodzenie rogówki','A','wywiad w kierunku urazu i użytkowania soczewek kontaktowych, silny ból gałki ocznej, obniżenie ostrości wzroku, światłowstręt, przekrwienie gałki ocznej, zmniejszona przezierność rogówki','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu oraz ich zabezpieczenie do ewentualnych badań bakteriologicznych, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Uwaga! Nie wolno podawać antybiotyków do worka spojówkowego, zanim lekarz okulista nie pobierze posiewów',NULL,NULL,NULL,2),(10,2,'Erozja rogówki','A','wywiad w kierunku urazu, np. gałązką, palcem, kosmetykiem, wywiad w kierunku noszenia soczewek kontaktowych, ból gałki ocznej, możliwe obniżenie ostrości wzroku, światłowstręt, przekrwienie gałki ocznej','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu oraz ich zabezpieczenie do ewentualnych badań bakteriologicznych, do worka spojówkowego należy podać 1–2 krople środka znieczulającego oraz fluoresceiny, ocena barwienia rogówki w świetle rozproszonym lub z użyciem filtra kobaltowego (niebieskiego), pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(11,3,'Niedrożność naczyń siatkówki','A','nagłe, bezbolesne zaniewidzenie lub znaczne pogorszenie ostrości wzroku, wywiad w kierunku chorób naczyniowych','ocena ostrości wzroku do dali, należy podać 1 tabletkę (500 mg) kwasu acetylosalicylowego, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(12,3,'Zapalenie tętnicy skroniowej (choroba Hortona)\n','A','nagłe, bezbolesne zaniewidzenie lub znaczne pogorszenie ostrości wzroku, wywiad w kierunku chorób naczyniowych, bóle mięśniowe, bóle odczuwane podczas żucia, osłabienie i utrata masy ciała,\nschorzenie występuje u osób w wieku powyżej 70. roku życia','ocena ostrości wzroku do dali, badania OB i CRP należy wykonać w trybie pilnym, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(13,3,'Przednia niedokrwienna neuropatia nerwu wzrokowego','A','nagłe, bezbolesne zaniewidzenie lub znaczne pogorszenie ostrości wzroku zwykle w godzinach porannych, wywiad w kierunku chorób naczyniowych\n','ocena ostrości wzroku do dali, należy podać 1 tabletkę (500 mg) kwasu acetylosalicylowego, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny\n',NULL,NULL,NULL,NULL,2),(14,3,'Zapalenie nerwu wzrokowego','A','nagłe zaniewidzenie lub znaczne pogorszenie ostrości wzroku, wrażenie ciemnej centralnej plamy przed okiem, zaburzenia widzenia barw (zwłaszcza czerwonej i zielonej), ból odczuwany podczas ruchów gałki ocznej, możliwe zaburzenia odruchów źrenicznych, wywiad w kierunku chorób ogólnych (stwardnienie rozsiane), schorzenie występuje zwykle u młodych dorosłych','ocena ostrości wzroku do dali, ocena widzenia barw (czerwieni i zieleni), badanie oka w świetle rozproszonym, w tym ocena szerokości źrenicy i jej reakcji na światło, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(15,3,'Odwarstwienie siatkówki','A','nagłe, znaczne pogorszenie ostrości wzroku, często występujące po wysiłku fizycznym lub doznaniu urazu, ograniczenie pola widzenia – wrażenie czarnej zasłony przed okiem, w wywiadzie: błyski i liczne męty przed okiem, wada refrakcji – najczęściej krótkowzroczność (korekcja wady minusowymi soczewkami okularowymi)','ocena ostrości wzroku do dali, konfrontacyjna ocena pola widzenia, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(16,3,'Wylew krwi do ciała szklistego','A','nagłe, znaczne pogorszenie ostrości wzroku, w wywiadzie: błyski przed okiem, nagłe pojawienie się ciemnych „pływających” punktów, wywiad w kierunku chorób naczyniowych – cukrzyca!','ocena ostrości wzroku do dali, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(17,3,'Wylew krwi do plamki żółtej – np. wysiękowa postać AMD','A','nagłe, znaczne pogorszenie ostrości wzroku, wrażenie centralnej białoszarej plamy przed okiem, krzywienie się widzianego obrazu, podczas czytania wrażenie łamania się liter, wywiad w kierunku chorób naczyniowych, schorzenie występuje u osób w wieku podeszłym','ocena ostrości wzroku do dali i bliży, badanie z wykorzystaniem testu Amslera, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,2),(18,4,'Opadnięcie powiek','A','nagłe opadnięcie powieki górnej, nagłe wystąpienie podwójnego widzenia i zeza, zaburzenia ruchomości gałek ocznych, możliwe pogorszenie ostrości wzroku lub przemijające zaburzenia widzenia, ograniczenie pola widzenia zwykle w obojgu oczach, zaburzenia reakcji źrenic na światło, różna szerokość źrenic obojga oczu, bóle i zawroty głowy, nudności i wymioty\nWywiad w kierunku chorób ogólnych lub urazu','ocena ostrości wzroku do dali, ocena ruchów gałek ocznych i dwojenia, ocena szerokości źrenic i ich reakcji na światło, konfrontacyjna ocena pola widzenia, pacjenta należy pilnie odesłać na ostry dyżur neurologiczny',NULL,NULL,NULL,NULL,2),(19,5,'Infekcja wirusowa Herpes-Zoster (półpasiec) lub Herpes simplex (opryszczka)\n','B','zaczerwienienie i obrzęk skóry powiek, rozlany ból powiek i głowy, zaburzenie czucia powierzchownego skóry, charakterystyczne są pęcherzykowate zmiany w obrębie skóry powiek i twarzy, zwykle ostrość wzroku nie jest pogorszona','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, maść zawierająca acyclovir aplikowana na zmiany skórne 4 x dziennie, oczna maść zawierająca acyclovir aplikowana na zmiany w obrębie powiek oraz do worka spojówkowego 4 x dziennie, doustnie acyclovir w tabletkach a 400 mg lub 800 mg (zależnie od nasilenia zmian) 5 x dziennie,wskazana konsultacja okulistyczna','Uwaga! Jeżeli dojdzie do pogorszenia ostrości wzroku i wzmożonego bólu gałki ocznej, przypadek należy traktować w kategorii A',NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease_category`
--

DROP TABLE IF EXISTS `disease_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease_category`
--

LOCK TABLES `disease_category` WRITE;
/*!40000 ALTER TABLE `disease_category` DISABLE KEYS */;
INSERT INTO `disease_category` VALUES (1,'Urazy','injured'),(2,'Bolesne „czerwone oko” i jednoczesne pogorszenie ostrości wzroku','red_eye'),(3,'Nagłe pogorszenie ostrości wzroku bez objawów „czerwonego oka”','without_red_eye'),(4,'Objawy okulistyczne sugerujące nagły stan neurologiczny','neurological'),(5,'Obrzęki powiek','eyelid');
/*!40000 ALTER TABLE `disease_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_category`
--

DROP TABLE IF EXISTS `patient_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_category`
--

LOCK TABLES `patient_category` WRITE;
/*!40000 ALTER TABLE `patient_category` DISABLE KEYS */;
INSERT INTO `patient_category` VALUES (1,'Dziecko','child'),(2,'Dorosły','adult');
/*!40000 ALTER TABLE `patient_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'poradnia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-20 23:31:35
