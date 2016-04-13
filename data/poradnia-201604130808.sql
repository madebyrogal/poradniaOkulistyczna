# ************************************************************
# Sequel Pro SQL dump
# Version 4529
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.9)
# Database: poradnia
# Generation Time: 2016-04-13 06:07:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table advertice
# ------------------------------------------------------------

DROP TABLE IF EXISTS `advertice`;

CREATE TABLE `advertice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `advertice` WRITE;
/*!40000 ALTER TABLE `advertice` DISABLE KEYS */;

INSERT INTO `advertice` (`id`, `picture`, `alt`)
VALUES
	(1,'test','test');

/*!40000 ALTER TABLE `advertice` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table disease
# ------------------------------------------------------------

DROP TABLE IF EXISTS `disease`;

CREATE TABLE `disease` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `symptoms` longtext COLLATE utf8_unicode_ci,
  `recommendation` longtext COLLATE utf8_unicode_ci,
  `comments` longtext COLLATE utf8_unicode_ci,
  `picture1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `picture3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inFooter` tinyint(1) DEFAULT NULL,
  `positionInFooter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F3B6AC112469DE2` (`category_id`),
  KEY `IDX_F3B6AC16B899279` (`patient_id`),
  CONSTRAINT `FK_F3B6AC112469DE2` FOREIGN KEY (`category_id`) REFERENCES `disease_category` (`id`),
  CONSTRAINT `FK_F3B6AC16B899279` FOREIGN KEY (`patient_id`) REFERENCES `patient_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;

INSERT INTO `disease` (`id`, `category_id`, `patient_id`, `name`, `type`, `symptoms`, `recommendation`, `comments`, `picture1`, `picture2`, `picture3`, `inFooter`, `positionInFooter`)
VALUES
	(1,1,2,'Perforujące gałkę oczną','A','wywiad w kierunku urazu, silny ból gałki ocznej, pogorszenie ostrości wzroku, uszkodzenie struktur gałki ocznej widoczne w świetle rozproszonym','ocena ostrości wzroku do dali, trzeba zasłonić gałkę oczną jałowym opatrunkiem, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Nie można uciskać gałki ocznej','assets/images/diseases/perforujace-galke-oczna.jpg','','',0,NULL),
	(2,1,2,'Oparzenia chemiczne i termiczne','A','wywiad w kierunku oparzenia (rodzaj substancji – kwas czy zasada, temperatura, światło UV np. spawacze i użytkownicy solarium), silny ból gałki ocznej, pogorszenie ostrości wzroku, światłowstręt, łzawienie','ocena ostrości wzroku do dali, płukanie worka spojówkowego solą fizjologiczną, w przypadku oparzenia kwasem lub zasadą płukanie worka spojówkowego minimum 500 ml 0,9% NaCl, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Nie można zakładać opatrunku na chorą gałkę oczną','assets/images/diseases/oparzenie-chemiczne.jpg',NULL,NULL,1,1),
	(3,1,2,'Ciało obce powierzchni oka','A','wywiad w kierunku urazu, zwłaszcza powstałego wskutek spawania, szlifowania, kucia metalu i rąbania drewna, uczucie ciała obcego, silny ból i przekrwienie gałki ocznej, światłowstręt, łzawienie','należy odwinąć powiekę górną i podać do worka spojówkowego 1–2 krople środka znieczulającego oraz fluoresceiny, ocena barwienia rogówki w świetle rozproszonym lub z zastosowaniem filtra kobaltowego (niebieskiego), jeśli na powierzchni gałki ocznej lub pod powieką górną jest widoczne poruszające się podczas mrugnięć ciało obce – należy worek spojówkowy wypłukać solą fizjologiczną, ew. usunąć ciało obce jałowym gazikiem, jeśli na powierzchni gałki ocznej jest widoczne nieporuszające się podczas mrugnięć ciało obce – należy worek spojówkowy wypłukać solą fizjologiczną, unikać jakichkolwiek manipulacji i odesłać pacjenta na ostry dyżur okulistyczny, w każdym przypadku do worka spojówkowego trzeba podać kroplę antybiotyku',NULL,'assets/images/diseases/cialo-obce-rogowki.jpg',NULL,NULL,0,NULL),
	(4,1,2,'Ciało obce wewnątrzgałkowe','A','wywiad w kierunku urazu – zwłaszcza powstałego wskutek spawania, szlifowania, kucia metalu i rąbania drewna, silny ból gałki ocznej, możliwe są: znaczne pogorszenie ostrości wzroku i wylew podspojówkowy','ocena ostrości wzroku do dali, RTG oczodołów, trzeba zasłonić gałkę oczną jałowym opatrunkiem, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Nie można uciskać gałki ocznej','assets/images/diseases/cialo-obce-w-komorze-przedniej.jpg','assets/images/diseases/cialo-obce-wbite-w-galke-oczna.jpg',NULL,0,NULL),
	(5,1,2,'Uraz tępy','A','wywiad w kierunku urazu (np. uderzenie pięścią czy aktywność sportowa), może dojść do: pogorszenia ostrości wzroku, powstania krwiaka okularowego i wylewu podspojówkowego, zaburzeń ruchomości gałki ocznej, dwojenia, zaburzeń ruchomości źrenicy (szeroka źrenica)','ocena ostrości wzroku do dali, RTG oczodołów, badanie gałki ocznej w świetle rozproszonym – w tym ocena szerokości źrenicy i jej reakcji na światło, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/uraz-tepy-krew-w-komorze-przedniej.jpg',NULL,NULL,0,NULL),
	(6,1,2,'Urazy powiek','A','Wywiad w kierunku urazu, widoczna rana/wylew krwi w obrębie powieki','worek spojówkowy należy wypłukać solą fizjologiczną i podać maść zawierającą antybiotyk, gałkę oczną trzeba zasłonić jałowym opatrunkiem, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/uraz-powieki.jpg',NULL,NULL,0,NULL),
	(7,2,2,'Ostry atak jaskry','A','ból gałki ocznej i głowy, nudności i wymioty, obniżenie ostrości wzroku, światłowstręt, tęczowe koła wokół źródeł światła, w badaniu palpacyjnym bolesna gałka oczna jest twarda przekrwienie gałki ocznej, zmniejszenie przezierności rogówki, źrenica jest szeroka i sztywna wywiad rodzinny dotyczący jaskry, wada refrakcji – nadwzroczność (soczewki okularowe plusowe)','ocena ostrości wzroku do dali, palpacyjna ocena ciśnienia wewnątrzgałkowego, badanie gałki ocznej w świetle rozproszonym, w tym ocena szerokości źrenicy i jej reakcji na światło, należy podać 2 tabletki diuramidu doustnie oraz 1–2 krople 2% pilocarpiny do worka spojówkowego, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/ostry-atak-jaskry.jpg',NULL,NULL,0,NULL),
	(8,2,2,'Ostre zapalenie tęczówki','A','ból gałki ocznej, obniżenie ostrości wzroku, światłowstręt, przekrwienie gałki ocznej źrenica jest wąska i sztywna wywiad w kierunku chorób ogólnych, np. reumatycznych','ocena ostrości wzroku do dali, palpacyjna ocena ciśnienia wewnątrzgałkowego, badanie gałki ocznej w świetle rozproszonym, w tym ocena szerokości źrenicy i jej reakcji na światło, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/ostre-zapalenie-teczowki.jpg',NULL,NULL,0,NULL),
	(9,2,2,'Owrzodzenie rogówki','A','wywiad w kierunku urazu i użytkowania soczewek kontaktowych, silny ból gałki ocznej, obniżenie ostrości wzroku, światłowstręt, przekrwienie gałki ocznej, zmniejszona przezierność rogówki','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu oraz ich zabezpieczenie do ewentualnych badań bakteriologicznych, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Nie wolno podawać antybiotyków do worka spojówkowego, zanim lekarz okulista nie pobierze posiewów','assets/images/diseases/owrzodzenie-rogowki.jpg',NULL,NULL,0,NULL),
	(10,2,2,'Erozja rogówki','A','wywiad w kierunku urazu, np. gałązką, palcem, kosmetykiem, wywiad w kierunku noszenia soczewek kontaktowych, ból gałki ocznej, możliwe obniżenie ostrości wzroku, światłowstręt, przekrwienie gałki ocznej','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu oraz ich zabezpieczenie do ewentualnych badań bakteriologicznych, do worka spojówkowego należy podać 1–2 krople środka znieczulającego oraz fluoresceiny, ocena barwienia rogówki w świetle rozproszonym lub z użyciem filtra kobaltowego (niebieskiego), pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/erozja-rogowki.jpg',NULL,NULL,0,NULL),
	(11,3,2,'Niedrożność naczyń siatkówki','A','nagłe, bezbolesne zaniewidzenie lub znaczne pogorszenie ostrości wzroku, wywiad w kierunku chorób naczyniowych','ocena ostrości wzroku do dali, należy podać 1 tabletkę (500 mg) kwasu acetylosalicylowego, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/zator-tetnicy-srodkowej.jpg','assets/images/diseases/zakrzep-zyly-srodkowej.jpg',NULL,0,NULL),
	(12,3,2,'Zapalenie tętnicy skroniowej (choroba Hortona)','A','nagłe, bezbolesne zaniewidzenie lub znaczne pogorszenie ostrości wzroku, wywiad w kierunku chorób naczyniowych, bóle mięśniowe, bóle odczuwane podczas żucia, osłabienie i utrata masy ciała,\nschorzenie występuje u osób w wieku powyżej 70. roku życia','ocena ostrości wzroku do dali, badania OB i CRP należy wykonać w trybie pilnym, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,0,NULL),
	(13,3,2,'Przednia niedokrwienna neuropatia nerwu wzrokowego','A','nagłe, bezbolesne zaniewidzenie lub znaczne pogorszenie ostrości wzroku zwykle w godzinach porannych, wywiad w kierunku chorób naczyniowych\n','ocena ostrości wzroku do dali, należy podać 1 tabletkę (500 mg) kwasu acetylosalicylowego, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny\n',NULL,'assets/images/diseases/przednia-niedokrwienna-neuropatia.jpg',NULL,NULL,0,NULL),
	(14,3,2,'Zapalenie nerwu wzrokowego','A','nagłe zaniewidzenie lub znaczne pogorszenie ostrości wzroku, wrażenie ciemnej centralnej plamy przed okiem, zaburzenia widzenia barw (zwłaszcza czerwonej i zielonej), ból odczuwany podczas ruchów gałki ocznej, możliwe zaburzenia odruchów źrenicznych, wywiad w kierunku chorób ogólnych (stwardnienie rozsiane), schorzenie występuje zwykle u młodych dorosłych','ocena ostrości wzroku do dali, ocena widzenia barw (czerwieni i zieleni), badanie oka w świetle rozproszonym, w tym ocena szerokości źrenicy i jej reakcji na światło, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/zapalenie-wewnatrzgalkowe.jpg',NULL,NULL,0,NULL),
	(15,3,2,'Odwarstwienie siatkówki','A','nagłe, znaczne pogorszenie ostrości wzroku, często występujące po wysiłku fizycznym lub doznaniu urazu, ograniczenie pola widzenia – wrażenie czarnej zasłony przed okiem, w wywiadzie: błyski i liczne męty przed okiem, wada refrakcji – najczęściej krótkowzroczność (korekcja wady minusowymi soczewkami okularowymi)','ocena ostrości wzroku do dali, konfrontacyjna ocena pola widzenia, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/odwarstwienie-siatkowki.jpg',NULL,NULL,0,NULL),
	(16,3,2,'Wylew krwi do ciała szklistego','A','nagłe, znaczne pogorszenie ostrości wzroku, w wywiadzie: błyski przed okiem, nagłe pojawienie się ciemnych „pływających” punktów, wywiad w kierunku chorób naczyniowych – cukrzyca!','ocena ostrości wzroku do dali, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/wylew-krwi-do-ciala-szklistego.jpg',NULL,NULL,0,NULL),
	(17,3,2,'Wylew krwi do plamki żółtej – np. wysiękowa postać AMD','A','nagłe, znaczne pogorszenie ostrości wzroku, wrażenie centralnej białoszarej plamy przed okiem, krzywienie się widzianego obrazu, podczas czytania wrażenie łamania się liter, wywiad w kierunku chorób naczyniowych, schorzenie występuje u osób w wieku podeszłym','ocena ostrości wzroku do dali i bliży, badanie z wykorzystaniem testu Amslera, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/zwyrodnienie-plamki.jpg',NULL,NULL,0,NULL),
	(18,4,2,'Opadnięcie powiek','A','nagłe opadnięcie powieki górnej, nagłe wystąpienie podwójnego widzenia i zeza, zaburzenia ruchomości gałek ocznych, możliwe pogorszenie ostrości wzroku lub przemijające zaburzenia widzenia, ograniczenie pola widzenia zwykle w obojgu oczach, zaburzenia reakcji źrenic na światło, różna szerokość źrenic obojga oczu, bóle i zawroty głowy, nudności i wymioty. Wywiad w kierunku chorób ogólnych lub urazu','ocena ostrości wzroku do dali, ocena ruchów gałek ocznych i dwojenia, ocena szerokości źrenic i ich reakcji na światło, konfrontacyjna ocena pola widzenia, pacjenta należy pilnie odesłać na ostry dyżur neurologiczny',NULL,'assets/images/diseases/opadniecie-powiek.jpg',NULL,NULL,0,NULL),
	(19,5,2,'Infekcja wirusowa Herpes-Zoster (półpasiec) lub Herpes simplex (opryszczka)\n','B','zaczerwienienie i obrzęk skóry powiek, rozlany ból powiek i głowy, zaburzenie czucia powierzchownego skóry, charakterystyczne są pęcherzykowate zmiany w obrębie skóry powiek i twarzy, zwykle ostrość wzroku nie jest pogorszona','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, maść zawierająca acyclovir aplikowana na zmiany skórne 4 x dziennie, oczna maść zawierająca acyclovir aplikowana na zmiany w obrębie powiek oraz do worka spojówkowego 4 x dziennie, doustnie acyclovir w tabletkach a 400 mg lub 800 mg (zależnie od nasilenia zmian) 5 x dziennie,wskazana konsultacja okulistyczna','Jeżeli dojdzie do pogorszenia ostrości wzroku i wzmożonego bólu gałki ocznej, przypadek należy traktować w kategorii A','assets/images/diseases/wirusowe-zapalenie-rogowki.jpg','assets/images/diseases/wirusowe-zapalenie-rogowki-2.jpg',NULL,0,NULL),
	(20,5,2,'Jęczmień','B','bolesność, obrzęk i zaczerwienienie powieki/ zlokalizowany bolesny guzek w obrębie powieki, ewentualnie ropna wydzielina w worku spojówkowym, ww. objawom nie towarzyszy pogorszenie ostrości wzroku\n','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, wskazane suche, ciepłe okłady na powiekę, na powiekę i do worka spojówkowego konieczna aplikacja ocznej maści i/lub kropli zawierających antybiotyk i steroid – 4 x dziennie minimum przez 7 dni (po jednej kropli) \n','Jeżeli nie dojdzie do poprawy po 4 dniach terapii, konieczna jest konsultacja okulistyczna\n',NULL,NULL,NULL,0,NULL),
	(21,5,2,'Gradówka','B','bezbolesny guzek umiejscowiony w obrębie powieki, utrzymujący się od co najmniej kilku tygodni, nie stwierdza się pogorszenia ostrości wzroku\n','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, na powiekę i do worka spojówkowego konieczna aplikacja ocznej maści i/lub kropli zawierających antybiotyk i steroid – 4 x dziennie minimum przez 7 dni (po jednej kropli) \n','Jeżeli nie dojdzie do poprawy po 4 dniach terapii, konieczna jest konsultacja okulistyczna\n','assets/images/diseases/gradowka.jpg',NULL,NULL,0,NULL),
	(22,5,2,'Zapalenie woreczka łzowego','B','bolesność, obrzęk i zaczerwienienie powieki dolnej poniżej kąta wewnętrznego lub zlokalizowany bolesny guzek w obrębie powieki dolnej poniżej kąta wewnętrznego, ropna wydzielina w worku spojówkowym, nie stwierdza się pogorszenia ostrości wzroku, w wywiadzie: nawracające stany zapalne lub uraz\n','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie kropli zawierających antybiotyk – 4 x dziennie po 1 kropli przez 7 dni – oraz antybiotyku ogólnie, np. amoksycyliny z kwasem klawulanowym (dorośli 500–875 mg przez 10 dni)\n',NULL,NULL,NULL,NULL,0,NULL),
	(23,5,2,'Przedprzegrodowe zapalenie tkanek oczodołu','B','bolesny obrzęk i zaczerwienienie powiek, zwiększone ucieplenie oraz napięcie skóry powiek, ból gałki ocznej, pogorszenie ostrości wzroku, dwojenie, znaczne trudności w otwieraniu powiek lub brak możliwości otwarcia powiek, wywiad w kierunku urazu, infekcji górnych dróg oddechowych (zatoki przynosowe) lub ucha środkowego, schorzenie zwykle występuje u dzieci i młodych dorosłych\n','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, ocena ruchomości gałek ocznych\n','Jeżeli dojdzie do zaburzenia ruchomości, a także dwojenia i wytrzeszczu, przypadek należy traktować w kategorii A Zaleca się podanie antybiotyku ogólnie, np. amoksycyliny z kwasem klawulanowym (dorośli 500–875 mg przez 10 dni)\n','assets/images/diseases/przedprzegrodowe-zapalenie-tkanek-oczodolu.jpg',NULL,NULL,0,NULL),
	(24,5,2,'Alergiczne zapalenie tkanek oczodołu','B','ciastowaty obrzęk i zaczerwienienie powiek, dyskomfort, pieczenie, uczucie ciała obcego, swędzenie oczu i powiek,przekrwienie gałki ocznej, światłowstręt, łzawienie, Wywiad w kierunku alergii, uczucie przepełnionej gałki ocznej (obrzęk spojówek)\n','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie leków przeciwalergicznych ogólnie oraz podanie ocznej maści zawierającej steroid na zmienioną skórę powiek i preparatu antyhistaminowego w kroplach (nowej generacji) 2 x dziennie po 1 kropli do worka spojówkowego\n',NULL,'assets/images/diseases/alergiczny-obrzek-powiek.jpg',NULL,NULL,1,2),
	(25,6,2,'Wytrzesz','B','asymetria szerokości szpar powiekowych, wywiad w kierunku urazu i chorób ogólnych, np. chorób tarczycy i nowotworów,uczucie przepełnionej gałki ocznej, mogą wystąpić: przekrwienie gałki ocznej, zaburzenia ruchomości gałek ocznych – zez, dwojenie, widzenie jest pogorszone\n','ocena ostrości wzroku do dali, ocena powierzchni oka i powiek w świetle rozproszonym, ocena ruchomości gałek ocznych \n','Jeżeli początek objawów jest nagły, przypadek należy traktować w kategorii A\n','assets/images/diseases/wytrzeszcz.jpg',NULL,NULL,0,NULL),
	(26,7,2,'Dwojenie obrazu','B','zez, zaburzenia ruchomości gałek ocznych, może dojść do wytrzeszczu i opadnięcia powieki górnej, wywiad w kierunku urazu, chorób tarczycy, cukrzycy, nadciśnienia tętniczego','ocena ostrości wzroku do dali, ocena ruchomości gałek ocznych i dwojenia ocena reakcji źrenic na światło','Jeżeli początek objawów jest nagły, przypadek należy traktować w kategorii A',NULL,NULL,NULL,0,NULL),
	(27,8,2,'Powieki i powierzchnia oka','B','niegojące się owrzodzenia, nawracające gradówki, powiększające się zmiany rozrostowe w obrębie skóry powiek, przewlekły obrzęk spojówek, nieprawidłowe ustawienie brzegu powiek, może dojść do opadnięcia powieki górnej','ocena ostrości wzroku do dali, ocena powierzchni oka i powiek w świetle rozproszonym, ocena refleksu z dna oka, ocena ruchomości gałek ocznych, konfrontacyjna ocena pola widzenia, zalecana jest konsultacja okulistyczna i neurologiczna!',NULL,'assets/images/diseases/guz-powieki-dolnej.jpg','assets/images/diseases/niegojace-sie-owrzodzenie-powieki-dolnej.jpg',NULL,0,NULL),
	(28,8,2,'Gałka oczna','B','zmiana rozrostowa na powierzchni gałki ocznej, zmiana kształtu źrenicy, utrata różowego refleksu z dna oka, „biała źrenica”, ww. objawom towarzyszy pogorszenie ostrości wzroku, może dojść do opadnięcia powieki górnej, może być odczuwalny ból oka','ocena ostrości wzroku do dali, ocena powierzchni oka i powiek w świetle rozproszonym, ocena refleksu z dna oka, ocena ruchomości gałek ocznych, konfrontacyjna ocena pola widzenia, zalecana jest konsultacja okulistyczna i neurologiczna!',NULL,'assets/images/diseases/guz-rogowki.jpg','assets/images/diseases/znamie-teczowki.jpg',NULL,0,NULL),
	(29,8,2,'Droga wzrokowa w odcinku pozagałkowym, zmiany w OUN','B','pogorszenie ostrości wzroku, mogą wystąpić: wytrzeszcz, zez i dwojenie, zaburzenia reakcji źrenic na światło, pole widzenia może być ograniczone zarówno w jednym oku, jak i w obojgu oczach, zaburzenie równowagi, bóle głowy, nudności, wymioty – typowo w godzinach porannych','ocena ostrości wzroku do dali, ocena powierzchni oka i powiek w świetle rozproszonym, ocena refleksu z dna oka, ocena ruchomości gałek ocznych, konfrontacyjna ocena pola widzenia, zalecana jest konsultacja okulistyczna i neurologiczna!',NULL,NULL,NULL,NULL,0,NULL),
	(30,9,2,'Wady refrakcji','C','stopniowe, bezbolesne, pogorszenie ostrości wzroku do dali lub/i bliży, mrużenie oczu w celu poprawy widzenia, bóle głowy i gałek ocznych','ocena ostrości wzroku do dali i bliży, zaleca się konsultację okulistyczną',NULL,NULL,NULL,NULL,0,NULL),
	(31,9,2,'Sucha postać AMD','C','stopniowe, bezbolesne, powolne pogorszenie ostrości wzroku zwłaszcza do bliży, krzywienie się obrazu: podczas czytania łamanie się linii, „przeskakiwanie” i znikanie liter, wrażenie centralnej białej plamy przed okiem','ocena ostrości wzroku do dali i bliży, ocena krzywienia się obrazu za pomocą testu Amslera, zaleca się suplementację diety luteiną, a także konsultację okulistyczną',NULL,'assets/images/diseases/zwyrodnienie-plamki-postac-sucha.jpg','assets/images/diseases/zwyrodnienie-plamki-postac-sucha-2.jpg',NULL,0,NULL),
	(32,9,2,'Zaćma','C','stopniowe, bezbolesne, powolne pogorszenie ostrości wzroku zwłaszcza do dali, wrażenie „mgły” przed okiem, zmiana wady refrakcji w kierunku krótkowzroczności, wywiad w kierunku cukrzycy i ogólnej steroidoterapii, zwykle schorzenie występuje u osób w wieku powyżej 60. roku życia','ocena ostrości wzroku do dali i bliży, zalecana jest konsultacja okulistyczna',NULL,'assets/images/diseases/zacma-korowa.jpg','assets/images/diseases/zacma-brunatna.jpg',NULL,0,NULL),
	(33,9,2,'Jaskra','C','wywiad rodzinny w kierunku jaskry, naczyniowe czynniki ryzyka wystąpienia jaskry to: niskie ciśnienie tętnicze, nadciśnienie tętnicze, objaw Raynauda i migreny, okresowe bóle gałek ocznych i głowy – odczuwane zwłaszcza w ciemnych pomieszczeniach, okresowo pojawiające się zjawisko „halo” wokół źródeł światła, wady refrakcji – wysoka nadwzroczność, wysoka krótkowzroczność, choroba występuje zwykle u osób w wieku powyżej 40. roku życia. Uwaga! Zwykle w początkowym okresie choroby jej przebieg jest bezobjawowy','ocena ostrości wzroku do dali, palpacyjna ocena ciśnienia wewnątrzgałkowego, badanie gałki ocznej w świetle rozproszonym, w tym ocena szerokości źrenicy i jej reakcji na światło, zaleca się konsultację okulistyczną','Jeżeli pacjent zgłasza okresowe bóle gałek ocznych i głowy – zwłaszcza odczuwalne w ciemnych pomieszczeniach, i pojawienie się zjawiska „halo” wokół źródeł światła, a ponadto ma wysoką nadwzroczność, przypadek należy traktować w kategorii B.',NULL,NULL,NULL,0,NULL),
	(34,10,2,'Wirusowe zapalenie spojówek','C','dyskomfort – pieczenie, ból, uczucie ciała obcego, przekrwienie gałki ocznej, światłowstręt, łzawienie, surowicza wydzielina, Wywiad w kierunku infekcji górnych dróg oddechowych, obrzęk i zaczerwienienie powiek, dolegliwości występują nagle','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu i ich zabezpieczenie do ewentualnych badań bakteriologicznych, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie kropli zawierających antybiotyk 4 x dziennie po 1 kropli przez 7 dni','Jeżeli po 4 dniach przyjmowania leku nie dojdzie do poprawy, konieczna jest konsultacja okulistyczna, a przypadek należy traktować w kategorii B','assets/images/diseases/wirusowe-emidemiczne-zapalenie-spojowek.jpg',NULL,NULL,1,3),
	(35,10,2,'Bakteryjne zapalenie spojówek','C','dyskomfort – pieczenie, ból, uczucie ciała obcego, przekrwienie gałki ocznej, światłowstręt, łzawienie, wywiad w kierunku infekcji górnych dróg oddechowych oraz użytkowania soczewek kontaktowych, ropna wydzielina w worku spojówkowym i na rzęsach, dolegliwości występują nagle','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu i ich zabezpieczenie do ewentualnych badań bakteriologicznych, ocena powierzchni oka i powiek w świetle rozproszonym, zaleca się płukanie gałki ocznej solą fizjologiczną, a następnie wpuszczenie kropli zawierających antybiotyk – 4 x dziennie po 1 kropli przez 7 dni,','Jeżeli po 4 dniach przyjmowania leku nie dojdzie do poprawy, konieczna jest konsultacja okulistyczna, a przypadek należy traktować w kategorii B','assets/images/diseases/bakteryjne-zapalenie-spojowek.jpg',NULL,NULL,1,4),
	(36,10,2,'Alergiczne zapalenie spojówek','C','dyskomfort – pieczenie, uczucie ciała obcego, swędzenie oczu i powiek, przekrwienie gałki ocznej, światłowstręt, łzawienie, wywiad w kierunku alergii, uczucie przepełnionej gałki ocznej (obrzęk spojówek), obrzęk i zaczerwienienie powiek','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu i ich zabezpieczenie do ewentualnych badań bakteriologicznych, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie: preparatu antyhistaminowego w kroplach (nowej generacji) 2 x dziennie po 1 kropli, ogólnie działających leków przeciwalergicznych, preparatów sztucznych łez, które nie zawierają konserwantów, 4 x dziennie po 1 kropli','Jeżeli po 4 dniach przyjmowania leku nie dojdzie do poprawy, konieczna jest konsultacja okulistyczna, a przypadek należy traktować w kategorii B','assets/images/diseases/alergiczne-zapalenie-spojowek.jpg',NULL,NULL,1,5),
	(37,10,2,'Wylew podspojówkowy','C','zaczerwienienie powierzchni gałki ocznej, wylew krwi w obrębie spojówki, uczucie dyskomfortu w oku, w wywiadzie: wysiłek fizyczny, parcie, np. w czasie defekacji lub porodu, nagłe wahania ciśnienia tętniczego, wywiad w kierunku chorób naczyniowych takich jak nadciśnienie tętnicze i cukrzyca, zaburzenia rytmu pracy mięśnia sercowego, a także przyjmowania leków rozrzedzających krew','ocena ostrości wzroku do dali i bliży, kontrola ciśnienia tętniczego, badanie EKG, określenie stężenia glukozy we krwi, zaleca się podanie leków uszczelniających naczynia krwionośne','Jeśli pacjent zgłasza pogorszenie ostrości wzroku lub zaburzenia w polu widzenia, konieczna jest konsultacja okulistyczna, a przypadek należy traktować w kategorii B','assets/images/diseases/wylew-podspojowkowy.jpg',NULL,NULL,0,NULL),
	(38,11,2,'Zespół suchego oka','C','pieczenie, łzawienie, uczucie suchości i piasku pod powiekami, światłowstręt, przemijające pogorszenie widzenia, niewielkie zaczerwienienie gałek ocznych, wywiad w kierunku pracy wzrokowej (pracy przy monitorze i w warunkach klimatyzacji) i użytkowania soczewek kontaktowych, a także chorób ogólnych takich jak cukrzyca, choroby reumatyczne, choroby tarczycy i choroby z autoagresji, leki przyjmowane ogólnie (b-blokery, diuretyki i leki hormonalne)','ocena ostrości wzroku do dali i bliży, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie preparatów sztucznych łez, które nie zawierają konserwantów – 4–5 x dziennie po 1 kropli',NULL,'assets/images/diseases/zespol-suchego-oka.jpg',NULL,NULL,1,6),
	(39,11,2,'Zaburzenia drożności dróg łzowych','C','łzawienie, pieczenie, niewielkie zaczerwienienie gałek ocznych, przewlekłe nawracające zapalenia spojówek','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, należy podać 1–2 krople fluoresceiny do worka spojówkowego, ocena przechodzenia fluoresceiny przez drogi łzowe (po około 2 minutach żółte zabarwienie wydzieliny w nosie), zaleca się podanie preparatów sztucznych łez, które nie zawierają konserwantów – 4 – 5 x dziennie po 1 kropli, konieczna jest konsultacja okulistyczna i ewentualnie kwalifikacja do zabiegu udrożnienia dróg łzowych',NULL,NULL,NULL,NULL,1,7),
	(40,11,2,'Przewlekłe zapalenia brzegów powieki spojówek','C','łzawienie, pieczenie, niewielkie zaczerwienienie gałek ocznych, przewlekłe nawracające zapalenia spojówek, zaczerwienienie, pogrubienie brzegów powiek, charakterystyczne jest nasilenie dolegliwości w godzinach rannych, wywiad w kierunku pracy wzrokowej (pracy przy monitorze i w warunkach klimatyzacji)','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się: higienę brzegów powiek, rozgrzewające masaże powiek i stosowanie preparatów sztucznych łez, które nie zawierają konserwantów – 4–5 x dziennie po 1 kropli, w czasie zaostrzenia objawów natomiast – krople i/lub maść zawierające antybiotyk lub antybiotyk i steroid (dawkowanie zależne od nasilenia procesu)',NULL,'assets/images/diseases/przewlekle-zapalenie-brzegow-powiek.jpg',NULL,NULL,1,8),
	(41,12,2,'Zaburzenia ciała szklistego','C','pojawiające się w polu widzenia ciemne, pływające punkty o różnych kształtach, w wywiadzie możliwe błyski przed okiem, często wada refrakcji – krótkowzroczność (soczewki okularowe minusowe)','ocena ostrości wzroku do dali, zalecenie planowej konsultacji okulistycznej','Nagłe pojawienie się dużej ilości mętów i objaw „sadzy” uwidoczniony w polu widzenia z towarzyszącymi mu błyskawicami od skroni wskazują, że przypadek należy traktować w kategorii A',NULL,NULL,NULL,0,NULL),
	(42,13,1,'Perforujące gałkę oczną','A','wywiad w kierunku urazu silny ból oka, pogorszenie ostrości wzroku, uszkodzenie struktur gałki ocznej widoczne w świetle rozproszonym','ocena ostrości wzroku do dali, trzeba zasłonić gałkę oczną jałowym opatrunkiem, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Uwaga! Nie można uciskać gałki ocznej','assets/images/diseases/perforujace-galke-oczna-child.jpg',NULL,NULL,NULL,NULL),
	(43,13,1,'Oparzenia chemiczne i termiczne','A','wywiad w kierunku oparzenia (rodzaj substancji – kwas czy zasada, temperatura, światło UV), silny ból gałki ocznej, pogorszenie ostrości wzroku, światłowstręt, łzawienie, tarcie oczu','płukanie worka spojówkowego solą fizjologiczną, a w przypadku oparzenia kwasem lub zasadą minimum 500 ml 0,9% NaCl, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Uwaga! Nie można zakładać opatrunku na chorą gałkę oczną','assets/images/diseases/oparzenia-chemiczne-i-termiczne-child.jpg',NULL,NULL,NULL,NULL),
	(44,13,1,'Ciało obce wewnątrzgałkowe','A','wywiad w kierunku urazu, silny ból gałki ocznej, może dojść do znacznego pogorszenia ostrości wzroku i wylewu podspojówkowego','ocena ostrości wzroku do dali, gałkę oczną trzeba zasłonić jałowym opatrunkiem, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Uwaga! Nie można uciskać gałki ocznej',NULL,NULL,NULL,NULL,NULL),
	(45,13,1,'Ciało obce powierzchni oka','A','wywiad w kierunku urazu, uczucie ciała obcego silny ból i przekrwienie gałki ocznej, światłowstręt, łzawienie, tarcie oczu','należy odwinąć powiekę górną i do worka spojówkowego podać 1–2 krople środka znieczulającego oraz fluoresceiny, ocena barwienia rogówki w świetle rozproszonym lub z zastosowaniem filtra kobaltowego (niebieskiego), jeśli na powierzchni gałki ocznej lub pod powieką górną jest widoczne poruszające się podczas mrugnięć ciało obce, należy worek spojówkowy wypłukać solą fizjologiczną, ew. usunąć ciało obce jałowym gazikiem, jeśli na powierzchni gałki ocznej jest widoczne nieporuszające się podczas mrugnięć ciało obce, należy worek spojówkowy wypłukać solą fizjologiczną, unikać jakichkolwiek manipulacji i odesłać pacjenta na ostry dyżur okulistyczny, w każdym przypadku do worka spojówkowego trzeba podać kroplę antybiotyku',NULL,NULL,NULL,NULL,NULL,NULL),
	(46,13,1,'Uraz tępy','A','wywiad w kierunku urazu, może dojść do: pogorszenia ostrości wzroku, powstania krwiaka okularowego i wylewu podspojówkowego, zaburzeń ruchomości gałki ocznej, dwojenia, zaburzeń ruchomości źrenicy (szeroka źrenica)','ocena ostrości wzroku do dali, RTG oczodołów, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,NULL,NULL),
	(47,13,1,'Urazy powiek','A','wywiad w kierunku urazu, w obrębie powieki widoczna rana/wylew krwi','zaleca się płukanie worka spojówkowego solą fizjologiczną i podanie maści zawierającej antybiotyk, gałkę oczną należy zasłonić jałowym opatrunkiem i pilnie odesłać pacjenta na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,NULL,NULL),
	(48,14,1,'Ostre zapalenie tęczówki','A','ból gałki ocznej, obniżenie ostrości wzroku, światłowstręt, przekrwienie gałki ocznej wąska, sztywna źrenica, wywiad w kierunku chorób ogólnych – reumatycznych','ocena ostrości wzroku do dali, palpacyjna ocena ciśnienia wewnątrzgałkowego, badanie gałki ocznej w świetle rozproszonym, w tym ocena szerokości źrenicy i jej reakcji na światło, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,NULL,NULL),
	(49,14,1,'Owrzodzenie rogówki','A','wywiad w kierunku urazu i użytkowania soczewek kontaktowych, silny ból gałki ocznej, obniżenie ostrości wzroku, światłowstręt, przekrwienie gałki ocznej, zmniejszona przezierność rogówki','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu i ich zabezpieczenie do ewentualnych badań bakteriologicznych, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny','Uwaga! Nie wolno podawać antybiotyków do worka spojówkowego, zanim lekarz okulista nie pobierze materiału do posiewów',NULL,NULL,NULL,NULL,NULL),
	(50,14,1,'Przedprzegrodowe zapalenie tkanek oczodołu','A','bolesny obrzęk i zaczerwienienie powiek, zwiększone ucieplenie oraz napięcie skóry powiek, ból gałki ocznej, pogorszenie ostrości wzroku, dwojenie, chory nie może otworzyć powiek, wywiad w kierunku urazu, infekcji górnych dróg oddechowych (zatok przynosowych, zapalenia sitowia) lub ucha środkowego','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, ocena ruchomości gałek ocznych, zaleca się podanie antybiotyku ogólnie, np. amoksycyliny z kwasem klawulanowym, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,NULL,NULL),
	(51,15,1,'Objawy okulistyczne sugerujące nagły stan neurologiczny','A','nagłe opadnięcie powieki górnej, nagłe wystąpienie podwójnego widzenia i zeza, zaburzenia ruchomości gałek ocznych, może dojść do pogorszenia ostrości wzroku lub przemijających zaburzeń widzenia, ograniczenia pola widzenia zwykle obuocznie, zaburzenia reakcji źrenic na światło, różne szerokości źrenic obojga oczu, bóle i zawroty głowy, nudności i wymioty, wywiad w kierunku choró ogólnych lub urazu','ocena ostrości wzroku do dali, ocena ruchów gałek ocznych i dwojenia, ocena szerokości źrenic i reakcji źrenic na światło, konfrontacyjna ocena pola widzenia, pacjenta należy pilnie odesłać na ostry dyżur neurologiczny',NULL,NULL,NULL,NULL,NULL,NULL),
	(52,16,1,'Zapalenie nerwu wzrokowego','A','nagłe zaniewidzenie lub znaczne pogorszenie ostrości wzroku, wrażenie ciemnej centralnej plamy przed okiem, zaburzenia widzenia barw (zwłaszcza czerwonej i zielonej), ból odczuwany podczas ruchów gałki ocznej, może dojść do zaburzenia odruchów źrenicznych, wywiad w kierunku chorób infekcyjnych i neurologicznych','ocena ostrości wzroku do dali, ocena widzenia barw (czerwieni i zieleni), pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/zapalenie-nerwu-wzrokowego-child.jpg',NULL,NULL,NULL,NULL),
	(53,16,1,'Odwarstwienie siatkówki','A','nagłe znaczne pogorszenie ostrości wzroku, ograniczenie pola widzenia – wrażenie czarnej zasłony przed okiem, w wywiadzie: błyski i liczne męty przed okiem oraz uraz, wada refrakcji – krótkowzroczność (korekcja wady minusowymi soczewkami okularowymi)','ocena ostrości wzroku do dali, konfrontacyjna ocena pola widzenia, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,NULL,NULL,NULL,NULL,NULL),
	(54,16,1,'Wylew krwi do ciała szklistego','A','nagłe znaczne pogorszenie ostrości wzroku, w wywiadzie: błyski przed okiem i nagłe pojawienie się ciemnych, pływających punktów, wywiad w kierunku chorób naczyniowych, np. cukrzycy!','ocena ostrości wzroku do dali, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/wylew-krwi-do-ciala-szklistego-child.jpg',NULL,NULL,NULL,NULL),
	(55,16,1,'Zapalenie błony naczyniowej i siatkówki','A','pogorszenie ostrości wzroku, w wywiadzie: pojawienie się ciemnych, pływających punktów w polu widzenia (męty przed okiem), wywiad w kierunku chorób odzwierzęcych takich jak toksoplazmoza, toksokaroza i borelioza','ocena ostrości wzroku do dali, pacjenta należy pilnie odesłać na ostry dyżur okulistyczny',NULL,'assets/images/diseases/zapalenie-blony-naczyniowej-siatkowki-child.jpg',NULL,NULL,NULL,NULL),
	(56,17,1,'Objaw „białej źrenicy”','B','biała źrenica, utrata różowego refleksu z dna oka (może być widoczna na\r\nfotografii), zez obniżenie ostrości wzroku, wywiad w kierunku wcześniactwa, chorób genetycznych i nowotworów gałki ocznej w rodzinie','orientacyjna ocena widzenia, ocena powierzchni gałki ocznej w świetle rozproszonym, ocena refleksu z dna oka',NULL,'assets/images/diseases/objaw-bialej-zrenicy.jpg',NULL,NULL,NULL,NULL),
	(57,17,1,'Woloocze','B','chorują dzieci do 3. roku życia, najczęściej noworodki, charakterystyczne duże oczy, tarcie oczu, zaciskanie powiek, łzawienie, obniżenie ostrości wzroku, światłowstręt, w badaniu palpacyjnym gałka oczna jest twarda i bolesna, przekrwienie gałki ocznej, zmniejszenie przezierności rogówki, częściej chorują chłopcy','orientacyjna ocena widzenia, palpacyjna ocena ciśnienia wewnątrzgałkowego, badanie gałki ocznej w świetle rozproszonym, w tym ocena szerokości źrenic i ich reakcji na światło',NULL,'assets/images/diseases/woloocze.jpg',NULL,NULL,NULL,NULL),
	(58,18,1,'Infekcja wirusowa Herpes-Zoster (ospa wietrzna,  półpasiec)','B','zaczerwienienie i obrzęk skóry powiek, rozlany ból powiek i głowy, charakterystyczne pęcherzykowate zmiany w obrębie skóry powiek i twarzy i/ lub innych części ciała, zwykle bez pogorszenia ostrości wzroku, stany gorączkowe, osłabienie i bóle mięśniowe','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie: maści zawierającej acyclovir na zmiany skórne 4 x dziennie, ocznej maści zawierającej acyclovir na zmiany w obrębie powiek oraz do worka spojówkowego 4 x dziennie, doustnie acycloviru w tabletkach a 400 mg lub 800 mg (zależnie od nasilenia zmian) 5 x dziennie, wskazana jest konsultacja okulistyczna','Uwaga! Jeżeli schorzeniu towarzyszą pogorszenie ostrości wzroku i ból oka, przypadek należy traktować w kategorii A',NULL,NULL,NULL,NULL,NULL),
	(59,18,1,'Jęczmień','B','bolesność, obrzęk i zaczerwienienie powieki/ w obrębie powieki umiejscowiony bolesny guzek, ew. ropna wydzielina w worku spojówkowym, ww. objawom nie towarzyszy pogorszenie ostrości wzroku','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, należy zastosować: suche, ciepłe okłady na powiekę, maść oczną i/lub krople zawierające antybiotyk i steroid na powiekę i do worka spojówkowego 4 x dziennie minimum przez 7 dni (po jednej kropli)','Uwaga! Jeżeli po 4 dniach terapii nie dojdzie do poprawy, konieczna jest konsultacja okulistyczna',NULL,NULL,NULL,NULL,NULL),
	(60,18,1,'Gradówka','B','obrzęk i zaczerwienienie powieki/ bezbolesny guzek umiejscowiony w obrębie powieki, ew. ropna wydzielina w worku spojówkowym, nie stwierdza się pogorszenia ostrości wzroku','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie: maści ocznej i/lub kropli zawierających antybiotyk i steroid na powiekę i do worka spojówkowego 4 x dziennie minimum przez 7 dni (po jednej kropli)','Uwaga! Jeżeli po 4 dniach terapii nie dojdzie do poprawy, konieczna jest konsultacja okulistyczna',NULL,NULL,NULL,NULL,NULL),
	(61,18,1,'Zapalenie woreczka łzowego','B','bolesność, obrzęk i zaczerwienienie powieki dolnej poniżej kąta wewnętrznego/ w obrębie powieki dolnej poniżej kąta wewnętrznego umiejscowiony bolesny guzek, ropna wydzielina w worku spojówkowym, najczęściej dotyczy noworodków i małych niemowląt','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie kropli zawierających antybiotyk 4 x dziennie po 1 kropli przez 7 dni i antybiotyku ogólnie, np. amoksycyliny z kwasem klawulanowym',NULL,NULL,NULL,NULL,NULL,NULL),
	(62,18,1,'Alergiczne zapalenie tkanek oczodołu','B','ciastowaty obrzęk i zaczerwienienie powiek, dyskomfort – pieczenie, uczucie ciała obcego, swędzenie oczu i powiek, przekrwienie gałki ocznej, światłowstręt, łzawienie, wywiad w kierunku alergii, uczucie przepełnionej gałki ocznej (obrzęk spojówek)','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie ogólnie leków przeciwalergicznych, preparatu antyhistaminowego w kroplach (nowej generacji) 2 x dziennie po 1 kropli',NULL,NULL,NULL,NULL,NULL,NULL),
	(63,18,1,'Naczyniaki','B','czerwone wypukłe znamię w obrębie powiek, może dojść do opadnięcia powieki górnej','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym',NULL,NULL,NULL,NULL,NULL,NULL),
	(64,19,1,'Wytrzesz','B','asymetria szerokości szpar powiekowych, wywiad w kierunku urazu i chorób ogólnych – np. chorób tarczycy, nowotworów i malformacji naczyniowych, uczucie przepełnionej gałki ocznej, może dojść do: przekrwienia gałki ocznej, zaburzenia ruchomości gałek ocznych – powstania zeza i dwojenia obrazu, pogorszenia widzenia','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, ocena ruchomości gałek ocznych','Uwaga! Jeżeli początek objawów jest nagły, przypadek należy traktować w kategorii A',NULL,NULL,NULL,NULL,NULL),
	(65,20,1,'Dwojenie obrazu','B','zez, zaburzenia ruchomości gałek ocznych, może dojść do wytrzeszczu i opadnięcia powieki górnej, wywiad w kierunku urazu i chorób ogólnych','ocena ostrości wzroku do dali, ocena ruchomości gałek ocznych, ocena reakcji źrenic na światło','Uwaga! Jeżeli początek objawów jest nagły, przypadek należy traktować w kategorii A',NULL,NULL,NULL,NULL,NULL),
	(66,21,1,'Gałka oczna','B','przewlekły, rozlany obrzęk spojówek, zmiana kształtu źrenicy, utrata różowego refleksu z dna oka, „biała źrenica”, towarzyszące schorzeniu pogorszenie ostrości wzroku, może dojść do opadnięcia powieki górnej i bólu gałki ocznej','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, ocena refleksu z dna oka, ocena ruchomości gałek ocznych, konfrontacyjna ocena pola widzenia, zaleca się konsultacje okulistyczną i neurologiczną!',NULL,NULL,NULL,NULL,NULL,NULL),
	(67,21,1,'Droga wzrokowa w odcinku pozagałkowym, zmiany w OUN','B','pogorszenie ostrości wzroku, może dojść do wytrzeszczu, zeza i dwojenia, zaburzenie reakcji źrenic na światło, pole widzenia może być ograniczone zarówno w jednym oku, jak i w obojgu oczach, bóle głowy, nudności i wymioty – typowo w godzinach porannych',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(68,22,1,'Wady refrakcji','C','pogorszenie ostrości wzroku do dali, mrużenie oczu w celu poprawy widzenia, mogą się pojawić: zez, bóle głowy i oczu','ocena ostrości wzroku do dali, zaleca się wykonanie „cover testu” i konsultację okulistyczną',NULL,NULL,NULL,NULL,NULL,NULL),
	(69,23,1,'Zez','C','nieprawidłowe ustawienie gałek ocznych zbieżnie lub rozbieżnie, bóle głowy odczuwane podczas czytania, może dojść do dwojenia i pogorszenia ostrości wzroku, zwłaszcza w oku zezującym','ocena ostrości wzroku do dali, wykonanie „cover testu”, ocena ruchomości gałek ocznych i dwojenia, ocena refleksu z dna oka, zaleca się konsultację okulistyczną Uwaga! Jeżeli początek objawów jest nagły, przypadek należy traktować w kategorii A',NULL,NULL,NULL,NULL,NULL,NULL),
	(70,24,1,'Wirusowe zapalenie spojówek i rogówki','A','dyskomfort – pieczenie, ból, uczucie ciała obcego, przekrwienie gałki ocznej, światłowstręt, łzawienie, surowicza wydzielina, wywiad w kierunku infekcji górnych dróg oddechowych, obrzęk i zaczerwienienie powiek, dolegliwości występują nagle','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu i ich zabezpieczenie do ewentualnych badań bakteriologicznych, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie kropli zawierających antybiotyk 4 x dziennie po 1 kropli przez 7 dni','Uwaga! Jeżeli po 4 dniach przyjmowania leku nie dojdzie do poprawy, konieczna jest konsultacja okulistyczna, a przypadek należy traktować w kategorii B','assets/images/diseases/wirusowe-zapalenie-spojowek-child.jpg',NULL,NULL,NULL,NULL),
	(71,24,1,'Bakteryjne zapalenie spojówek','C','dyskomfort – pieczenie, ból, uczucie ciała obcego w gałce ocznej, przekrwienie gałki ocznej, światłowstręt, łzawienie, wywiad w kierunku infekcji górnych dróg oddechowych i użytkowania soczewek kontaktowych, ropna wydzielina w worku spojówkowym i na rzęsach, dolegliwości występują nagle Uwaga! Jeżeli mamy do czynienia z nawracającymi zapaleniami u małych dzieci – patrz rozdział niedrożność dróg łzowych','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu i ich zabezpieczenie do ewentualnych badań bakteriologicznych, ocena powierzchni oka i powiek w świetle rozproszonym, zaleca się płukanie gałki ocznej solą fizjologiczną, a następnie wpuszczenie kropli zawierających antybiotyk – 4 x dziennie po 1 kropli przez 7 dni','Uwaga! Jeżeli po 4 dniach przyjmowania leku nie dojdzie do poprawy, konieczna jest konsultacja okulistyczna, a przypadek należy traktować w kategorii B','assets/images/diseases/bakteryjne-zapalenie-spojowek-child.jpg',NULL,NULL,NULL,NULL),
	(72,24,1,'Alergiczne zapalenie spojówek','C','dyskomfort – pieczenie, uczucie ciała obcego, swędzenie oczu i powiek, przekrwienie gałki ocznej, światłowstręt, łzawienie, wywiad w kierunku alergii, uczucie przepełnionej gałki ocznej (obrzęk spojówek), obrzęk i zaczerwienienie powiek','ocena ostrości wzroku do dali, zaleca się zdjęcie soczewek kontaktowych z obojga oczu i ich zabezpieczenie do ewentualnych badań bakteriologicznych, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie: preparatu antyhistaminowego w kroplach (nowej generacji) 2 x dziennie po 1 kropli, ogólnie działających leków przeciwalergicznych, preparatów sztucznych łez, które nie zawierają konserwantów, 4 x dziennie po 1 kropli','Uwaga! Jeżeli po 4 dniach przyjmowania leku nie dojdzie do poprawy, konieczna jest konsultacja okulistyczna, a przypadek należy traktować w kategorii B','assets/images/diseases/alergiczne-zapalenie-spojowek-child.jpg',NULL,NULL,NULL,NULL),
	(73,25,1,'Zespół suchego oka','C','pieczenie, łzawienie, uczucie suchości i piasku pod powiekami, światłowstręt, przemijające pogorszenie widzenia, niewielkie zaczerwienienie gałek ocznych, wywiad w kierunku pracy wzrokowej (pracy przy monitorze i w warunkach klimatyzacji), użytkowania soczewek kontaktowych, chorób ogólnych takich jak cukrzyca, choroby reumatyczne, choroby tarczycy i choroby z autoagresji','ocena ostrości wzroku do dali, ocena powierzchni gałki ocznej i powiek w świetle rozproszonym, zaleca się podanie preparatów sztucznych łez, które nie zawierają konserwantów – 4–5 x dziennie po 1 kropli',NULL,'assets/images/diseases/zespol-suchego-oka-child.jpg',NULL,NULL,NULL,NULL),
	(74,25,1,'Zaburzenia drożności dróg łzowych','C','występują głównie u niemowląt i małych dzieci z charakterystycznym objawem „stojącej łzy”, łzawienie, niewielkie zaczerwienienie gałek ocznych, wydzielina ropna w kącie przyśrodkowym wydobywająca się wskutek ucisku na okolicę woreczka łzowego, przewlekłe nawracające zapalenia spojówek','ocena powierzchni gałek ocznych i powiek w świetle rozproszonym, należy zastosować masaż okolicy woreczka łzowego 4 x dziennie (od kąta przyśrodkowego ku dołowi) oraz płukanie gałki ocznej solą fizjologiczną, zanim zostaną wpuszczone krople zawierające antybiotyk (4 x dziennie po 1 kropli przez 7 dni), wskazane są: konsultacja okulistyczna i ewentualna kwalifikacja do zabiegu udrożnienia dróg łzowych',NULL,NULL,NULL,NULL,NULL,NULL);

/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table disease_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `disease_category`;

CREATE TABLE `disease_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9D29B4A46B899279` (`patient_id`),
  CONSTRAINT `FK_9D29B4A46B899279` FOREIGN KEY (`patient_id`) REFERENCES `patient_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `disease_category` WRITE;
/*!40000 ALTER TABLE `disease_category` DISABLE KEYS */;

INSERT INTO `disease_category` (`id`, `patient_id`, `name`, `hash`)
VALUES
	(1,2,'Urazy','injured'),
	(2,2,'Bolesne „czerwone oko” i jednoczesne pogorszenie ostrości wzroku','red_eye'),
	(3,2,'Nagłe pogorszenie ostrości wzroku bez objawów „czerwonego oka”','without_red_eye'),
	(4,2,'Objawy okulistyczne sugerujące nagły stan neurologiczny','neurological'),
	(5,2,'Obrzęki powiek','eye_lid'),
	(6,2,'Wytrzesz','eye_blow'),
	(7,2,'Dwojenie obrazu','duble_screen'),
	(8,2,'Schorzenia, których objawy wymagają różnicowania z chorobami nowotworowymi','canser'),
	(9,2,'Stopniowe pogorszenie ostrości wzroku','eye_bad'),
	(10,2,'„Czerwone oko” bez jednoczesnego pogorszenia ostrości wzroku','red_eye_c'),
	(11,2,'Łzawienie','lachrymation'),
	(12,2,'Zaburzenia widzenia, które nie mają wpływu na ostrość wzroku','eye_bad_sharp'),
	(13,1,'Urazy','injured_child'),
	(14,1,'Bolesne „czerwone oko” i jednoczesne znaczne pogorszenie ostrości wzroku',''),
	(15,1,'Objawy okulistyczne sugerujące nagły stan neurologiczny',''),
	(16,1,'Nagłe pogorszenie ostrości wzroku bez objawów „czerwonego oka”',''),
	(17,1,'Objawy oczne wymagające konsultacji okulistycznej',''),
	(18,1,'Obrzęki powiek',''),
	(19,1,'Wytrzesz',''),
	(20,1,'Dwojenie obrazu',''),
	(21,1,'Schorzenia, których objawy wymagają różnicowania z chorobami nowotworowymi',''),
	(22,1,'Pogorszenie ostrości wzroku',''),
	(23,1,'Zez',''),
	(24,1,'„Czerwone oko” bez jednoczesnego pogorszenia ostrości wzroku',''),
	(25,1,'Łzawienie','');

/*!40000 ALTER TABLE `disease_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table fos_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fos_user`;

CREATE TABLE `fos_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_957A647992FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_957A6479A0D96FBF` (`email_canonical`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `fos_user` WRITE;
/*!40000 ALTER TABLE `fos_user` DISABLE KEYS */;

INSERT INTO `fos_user` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`)
VALUES
	(1,'admin','admin','agata.menesiak@nuorder.pl','agata.menesiak@nuorder.pl',1,'ifhf2daog1wgk04kg0w4ksog408wk44','$2y$13$ifhf2daog1wgk04kg0w4keuDH..dxeID9NWeteYlju6UhVC4KNulG','2016-04-12 17:18:26',0,0,NULL,NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}',0,NULL);

/*!40000 ALTER TABLE `fos_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table patient_category
# ------------------------------------------------------------

DROP TABLE IF EXISTS `patient_category`;

CREATE TABLE `patient_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `patient_category` WRITE;
/*!40000 ALTER TABLE `patient_category` DISABLE KEYS */;

INSERT INTO `patient_category` (`id`, `name`, `hash`)
VALUES
	(1,'Dziecko','child'),
	(2,'Dorosły','adult');

/*!40000 ALTER TABLE `patient_category` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table symptom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `symptom`;

CREATE TABLE `symptom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `patient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `symptom` WRITE;
/*!40000 ALTER TABLE `symptom` DISABLE KEYS */;

INSERT INTO `symptom` (`id`, `name`, `patient_id`)
VALUES
	(498,'wywiad w kierunku urazu silny ból oka',1),
	(499,'pogorszenie ostrości wzroku',1),
	(500,'uszkodzenie struktur gałki ocznej widoczne w świetle rozproszonym',1),
	(501,'wywiad w kierunku oparzenia (rodzaj substancji – kwas czy zasada',1),
	(502,'temperatura',1),
	(503,'światło UV)',1),
	(504,'silny ból gałki ocznej',1),
	(505,'światłowstręt',1),
	(506,'łzawienie',1),
	(507,'tarcie oczu',1),
	(508,'wywiad w kierunku urazu',1),
	(509,'może dojść do znacznego pogorszenia ostrości wzroku i wylewu podspojówkowego',1),
	(510,'uczucie ciała obcego silny ból i przekrwienie gałki ocznej',1),
	(511,'może dojść do: pogorszenia ostrości wzroku',1),
	(512,'powstania krwiaka okularowego i wylewu podspojówkowego',1),
	(513,'zaburzeń ruchomości gałki ocznej',1),
	(514,'dwojenia',1),
	(515,'zaburzeń ruchomości źrenicy (szeroka źrenica)',1),
	(516,'w obrębie powieki widoczna rana/wylew krwi',1),
	(517,'ból gałki ocznej',1),
	(518,'obniżenie ostrości wzroku',1),
	(519,'przekrwienie gałki ocznej wąska',1),
	(520,'sztywna źrenica',1),
	(521,'wywiad w kierunku chorób ogólnych – reumatycznych',1),
	(522,'wywiad w kierunku urazu i użytkowania soczewek kontaktowych',1),
	(523,'przekrwienie gałki ocznej',1),
	(524,'zmniejszona przezierność rogówki',1),
	(525,'bolesny obrzęk i zaczerwienienie powiek',1),
	(526,'zwiększone ucieplenie oraz napięcie skóry powiek',1),
	(527,'dwojenie',1),
	(528,'chory nie może otworzyć powiek',1),
	(529,'infekcji górnych dróg oddechowych (zatok przynosowych',1),
	(530,'zapalenia sitowia) lub ucha środkowego',1),
	(531,'nagłe opadnięcie powieki górnej',1),
	(532,'nagłe wystąpienie podwójnego widzenia i zeza',1),
	(533,'zaburzenia ruchomości gałek ocznych',1),
	(534,'może dojść do pogorszenia ostrości wzroku lub przemijających zaburzeń widzenia',1),
	(535,'ograniczenia pola widzenia zwykle obuocznie',1),
	(536,'zaburzenia reakcji źrenic na światło',1),
	(537,'różne szerokości źrenic obojga oczu',1),
	(538,'bóle i zawroty głowy',1),
	(539,'nudności i wymioty',1),
	(540,'wywiad w kierunku choró ogólnych lub urazu',1),
	(541,'nagłe zaniewidzenie lub znaczne pogorszenie ostrości wzroku',1),
	(542,'wrażenie ciemnej centralnej plamy przed okiem',1),
	(543,'zaburzenia widzenia barw (zwłaszcza czerwonej i zielonej)',1),
	(544,'ból odczuwany podczas ruchów gałki ocznej',1),
	(545,'może dojść do zaburzenia odruchów źrenicznych',1),
	(546,'wywiad w kierunku chorób infekcyjnych i neurologicznych',1),
	(547,'nagłe znaczne pogorszenie ostrości wzroku',1),
	(548,'ograniczenie pola widzenia – wrażenie czarnej zasłony przed okiem',1),
	(549,'w wywiadzie: błyski i liczne męty przed okiem oraz uraz',1),
	(550,'wada refrakcji – krótkowzroczność (korekcja wady minusowymi soczewkami okularowymi)',1),
	(551,'w wywiadzie: błyski przed okiem i nagłe pojawienie się ciemnych',1),
	(552,'pływających punktów',1),
	(553,'wywiad w kierunku chorób naczyniowych',1),
	(554,'np. cukrzycy!',1),
	(555,'w wywiadzie: pojawienie się ciemnych',1),
	(556,'pływających punktów w polu widzenia (męty przed okiem)',1),
	(557,'wywiad w kierunku chorób odzwierzęcych takich jak toksoplazmoza',1),
	(558,'toksokaroza i borelioza',1),
	(559,'biała źrenica',1),
	(560,'utrata różowego refleksu z dna oka (może być widoczna na\r\nfotografii)',1),
	(561,'zez obniżenie ostrości wzroku',1),
	(562,'wywiad w kierunku wcześniactwa',1),
	(563,'chorób genetycznych i nowotworów gałki ocznej w rodzinie',1),
	(564,'chorują dzieci do 3. roku życia',1),
	(565,'najczęściej noworodki',1),
	(566,'charakterystyczne duże oczy',1),
	(567,'zaciskanie powiek',1),
	(568,'w badaniu palpacyjnym gałka oczna jest twarda i bolesna',1),
	(569,'zmniejszenie przezierności rogówki',1),
	(570,'częściej chorują chłopcy',1),
	(571,'zaczerwienienie i obrzęk skóry powiek',1),
	(572,'rozlany ból powiek i głowy',1),
	(573,'charakterystyczne pęcherzykowate zmiany w obrębie skóry powiek i twarzy i/ lub innych części ciała',1),
	(574,'zwykle bez pogorszenia ostrości wzroku',1),
	(575,'stany gorączkowe',1),
	(576,'osłabienie i bóle mięśniowe',1),
	(577,'bolesność',1),
	(578,'obrzęk i zaczerwienienie powieki/ w obrębie powieki umiejscowiony bolesny guzek',1),
	(579,'ew. ropna wydzielina w worku spojówkowym',1),
	(580,'ww. objawom nie towarzyszy pogorszenie ostrości wzroku',1),
	(581,'obrzęk i zaczerwienienie powieki/ bezbolesny guzek umiejscowiony w obrębie powieki',1),
	(582,'nie stwierdza się pogorszenia ostrości wzroku',1),
	(583,'obrzęk i zaczerwienienie powieki dolnej poniżej kąta wewnętrznego/ w obrębie powieki dolnej poniżej kąta wewnętrznego umiejscowiony bolesny guzek',1),
	(584,'ropna wydzielina w worku spojówkowym',1),
	(585,'najczęściej dotyczy noworodków i małych niemowląt',1),
	(586,'ciastowaty obrzęk i zaczerwienienie powiek',1),
	(587,'dyskomfort – pieczenie',1),
	(588,'uczucie ciała obcego',1),
	(589,'swędzenie oczu i powiek',1),
	(590,'wywiad w kierunku alergii',1),
	(591,'uczucie przepełnionej gałki ocznej (obrzęk spojówek)',1),
	(592,'czerwone wypukłe znamię w obrębie powiek',1),
	(593,'może dojść do opadnięcia powieki górnej',1),
	(594,'asymetria szerokości szpar powiekowych',1),
	(595,'wywiad w kierunku urazu i chorób ogólnych – np. chorób tarczycy',1),
	(596,'nowotworów i malformacji naczyniowych',1),
	(597,'uczucie przepełnionej gałki ocznej',1),
	(598,'może dojść do: przekrwienia gałki ocznej',1),
	(599,'zaburzenia ruchomości gałek ocznych – powstania zeza i dwojenia obrazu',1),
	(600,'pogorszenia widzenia',1),
	(601,'zez',1),
	(602,'może dojść do wytrzeszczu i opadnięcia powieki górnej',1),
	(603,'wywiad w kierunku urazu i chorób ogólnych',1),
	(604,'przewlekły',1),
	(605,'rozlany obrzęk spojówek',1),
	(606,'zmiana kształtu źrenicy',1),
	(607,'utrata różowego refleksu z dna oka',1),
	(608,'„biała źrenica”',1),
	(609,'towarzyszące schorzeniu pogorszenie ostrości wzroku',1),
	(610,'może dojść do opadnięcia powieki górnej i bólu gałki ocznej',1),
	(611,'może dojść do wytrzeszczu',1),
	(612,'zeza i dwojenia',1),
	(613,'zaburzenie reakcji źrenic na światło',1),
	(614,'pole widzenia może być ograniczone zarówno w jednym oku',1),
	(615,'jak i w obojgu oczach',1),
	(616,'bóle głowy',1),
	(617,'nudności i wymioty – typowo w godzinach porannych',1),
	(618,'pogorszenie ostrości wzroku do dali',1),
	(619,'mrużenie oczu w celu poprawy widzenia',1),
	(620,'mogą się pojawić: zez',1),
	(621,'bóle głowy i oczu',1),
	(622,'nieprawidłowe ustawienie gałek ocznych zbieżnie lub rozbieżnie',1),
	(623,'bóle głowy odczuwane podczas czytania',1),
	(624,'może dojść do dwojenia i pogorszenia ostrości wzroku',1),
	(625,'zwłaszcza w oku zezującym',1),
	(626,'ból',1),
	(627,'surowicza wydzielina',1),
	(628,'wywiad w kierunku infekcji górnych dróg oddechowych',1),
	(629,'obrzęk i zaczerwienienie powiek',1),
	(630,'dolegliwości występują nagle',1),
	(631,'uczucie ciała obcego w gałce ocznej',1),
	(632,'wywiad w kierunku infekcji górnych dróg oddechowych i użytkowania soczewek kontaktowych',1),
	(633,'ropna wydzielina w worku spojówkowym i na rzęsach',1),
	(634,'dolegliwości występują nagle Uwaga! Jeżeli mamy do czynienia z nawracającymi zapaleniami u małych dzieci – patrz rozdział niedrożność dróg łzowych',1),
	(635,'pieczenie',1),
	(636,'uczucie suchości i piasku pod powiekami',1),
	(637,'przemijające pogorszenie widzenia',1),
	(638,'niewielkie zaczerwienienie gałek ocznych',1),
	(639,'wywiad w kierunku pracy wzrokowej (pracy przy monitorze i w warunkach klimatyzacji)',1),
	(640,'użytkowania soczewek kontaktowych',1),
	(641,'chorób ogólnych takich jak cukrzyca',1),
	(642,'choroby reumatyczne',1),
	(643,'choroby tarczycy i choroby z autoagresji',1),
	(644,'występują głównie u niemowląt i małych dzieci z charakterystycznym objawem „stojącej łzy”',1),
	(645,'wydzielina ropna w kącie przyśrodkowym wydobywająca się wskutek ucisku na okolicę woreczka łzowego',1),
	(646,'przewlekłe nawracające zapalenia spojówek',1),
	(647,'wywiad w kierunku urazu silny ból oka',2),
	(648,'pogorszenie ostrości wzroku',2),
	(649,'uszkodzenie struktur gałki ocznej widoczne w świetle rozproszonym',2),
	(650,'wywiad w kierunku oparzenia (rodzaj substancji – kwas czy zasada',2),
	(651,'temperatura',2),
	(652,'światło UV)',2),
	(653,'silny ból gałki ocznej',2),
	(654,'światłowstręt',2),
	(655,'łzawienie',2),
	(656,'tarcie oczu',2),
	(657,'wywiad w kierunku urazu',2),
	(658,'może dojść do znacznego pogorszenia ostrości wzroku i wylewu podspojówkowego',2),
	(659,'uczucie ciała obcego silny ból i przekrwienie gałki ocznej',2),
	(660,'może dojść do: pogorszenia ostrości wzroku',2),
	(661,'powstania krwiaka okularowego i wylewu podspojówkowego',2),
	(662,'zaburzeń ruchomości gałki ocznej',2),
	(663,'dwojenia',2),
	(664,'zaburzeń ruchomości źrenicy (szeroka źrenica)',2),
	(665,'w obrębie powieki widoczna rana/wylew krwi',2),
	(666,'ból gałki ocznej',2),
	(667,'obniżenie ostrości wzroku',2),
	(668,'przekrwienie gałki ocznej wąska',2),
	(669,'sztywna źrenica',2),
	(670,'wywiad w kierunku chorób ogólnych – reumatycznych',2),
	(671,'wywiad w kierunku urazu i użytkowania soczewek kontaktowych',2),
	(672,'przekrwienie gałki ocznej',2),
	(673,'zmniejszona przezierność rogówki',2),
	(674,'bolesny obrzęk i zaczerwienienie powiek',2),
	(675,'zwiększone ucieplenie oraz napięcie skóry powiek',2),
	(676,'dwojenie',2),
	(677,'chory nie może otworzyć powiek',2),
	(678,'infekcji górnych dróg oddechowych (zatok przynosowych',2),
	(679,'zapalenia sitowia) lub ucha środkowego',2),
	(680,'nagłe opadnięcie powieki górnej',2),
	(681,'nagłe wystąpienie podwójnego widzenia i zeza',2),
	(682,'zaburzenia ruchomości gałek ocznych',2),
	(683,'może dojść do pogorszenia ostrości wzroku lub przemijających zaburzeń widzenia',2),
	(684,'ograniczenia pola widzenia zwykle obuocznie',2),
	(685,'zaburzenia reakcji źrenic na światło',2),
	(686,'różne szerokości źrenic obojga oczu',2),
	(687,'bóle i zawroty głowy',2),
	(688,'nudności i wymioty',2),
	(689,'wywiad w kierunku choró ogólnych lub urazu',2),
	(690,'nagłe zaniewidzenie lub znaczne pogorszenie ostrości wzroku',2),
	(691,'wrażenie ciemnej centralnej plamy przed okiem',2),
	(692,'zaburzenia widzenia barw (zwłaszcza czerwonej i zielonej)',2),
	(693,'ból odczuwany podczas ruchów gałki ocznej',2),
	(694,'może dojść do zaburzenia odruchów źrenicznych',2),
	(695,'wywiad w kierunku chorób infekcyjnych i neurologicznych',2),
	(696,'nagłe znaczne pogorszenie ostrości wzroku',2),
	(697,'ograniczenie pola widzenia – wrażenie czarnej zasłony przed okiem',2),
	(698,'w wywiadzie: błyski i liczne męty przed okiem oraz uraz',2),
	(699,'wada refrakcji – krótkowzroczność (korekcja wady minusowymi soczewkami okularowymi)',2),
	(700,'w wywiadzie: błyski przed okiem i nagłe pojawienie się ciemnych',2),
	(701,'pływających punktów',2),
	(702,'wywiad w kierunku chorób naczyniowych',2),
	(703,'np. cukrzycy!',2),
	(704,'w wywiadzie: pojawienie się ciemnych',2),
	(705,'pływających punktów w polu widzenia (męty przed okiem)',2),
	(706,'wywiad w kierunku chorób odzwierzęcych takich jak toksoplazmoza',2),
	(707,'toksokaroza i borelioza',2),
	(708,'biała źrenica',2),
	(709,'utrata różowego refleksu z dna oka (może być widoczna na\r\nfotografii)',2),
	(710,'zez obniżenie ostrości wzroku',2),
	(711,'wywiad w kierunku wcześniactwa',2),
	(712,'chorób genetycznych i nowotworów gałki ocznej w rodzinie',2),
	(713,'chorują dzieci do 3. roku życia',2),
	(714,'najczęściej noworodki',2),
	(715,'charakterystyczne duże oczy',2),
	(716,'zaciskanie powiek',2),
	(717,'w badaniu palpacyjnym gałka oczna jest twarda i bolesna',2),
	(718,'zmniejszenie przezierności rogówki',2),
	(719,'częściej chorują chłopcy',2),
	(720,'zaczerwienienie i obrzęk skóry powiek',2),
	(721,'rozlany ból powiek i głowy',2),
	(722,'charakterystyczne pęcherzykowate zmiany w obrębie skóry powiek i twarzy i/ lub innych części ciała',2),
	(723,'zwykle bez pogorszenia ostrości wzroku',2),
	(724,'stany gorączkowe',2),
	(725,'osłabienie i bóle mięśniowe',2),
	(726,'bolesność',2),
	(727,'obrzęk i zaczerwienienie powieki/ w obrębie powieki umiejscowiony bolesny guzek',2),
	(728,'ew. ropna wydzielina w worku spojówkowym',2),
	(729,'ww. objawom nie towarzyszy pogorszenie ostrości wzroku',2),
	(730,'obrzęk i zaczerwienienie powieki/ bezbolesny guzek umiejscowiony w obrębie powieki',2),
	(731,'nie stwierdza się pogorszenia ostrości wzroku',2),
	(732,'obrzęk i zaczerwienienie powieki dolnej poniżej kąta wewnętrznego/ w obrębie powieki dolnej poniżej kąta wewnętrznego umiejscowiony bolesny guzek',2),
	(733,'ropna wydzielina w worku spojówkowym',2),
	(734,'najczęściej dotyczy noworodków i małych niemowląt',2),
	(735,'ciastowaty obrzęk i zaczerwienienie powiek',2),
	(736,'dyskomfort – pieczenie',2),
	(737,'uczucie ciała obcego',2),
	(738,'swędzenie oczu i powiek',2),
	(739,'wywiad w kierunku alergii',2),
	(740,'uczucie przepełnionej gałki ocznej (obrzęk spojówek)',2),
	(741,'czerwone wypukłe znamię w obrębie powiek',2),
	(742,'może dojść do opadnięcia powieki górnej',2),
	(743,'asymetria szerokości szpar powiekowych',2),
	(744,'wywiad w kierunku urazu i chorób ogólnych – np. chorób tarczycy',2),
	(745,'nowotworów i malformacji naczyniowych',2),
	(746,'uczucie przepełnionej gałki ocznej',2),
	(747,'może dojść do: przekrwienia gałki ocznej',2),
	(748,'zaburzenia ruchomości gałek ocznych – powstania zeza i dwojenia obrazu',2),
	(749,'pogorszenia widzenia',2),
	(750,'zez',2),
	(751,'może dojść do wytrzeszczu i opadnięcia powieki górnej',2),
	(752,'wywiad w kierunku urazu i chorób ogólnych',2),
	(753,'przewlekły',2),
	(754,'rozlany obrzęk spojówek',2),
	(755,'zmiana kształtu źrenicy',2),
	(756,'utrata różowego refleksu z dna oka',2),
	(757,'„biała źrenica”',2),
	(758,'towarzyszące schorzeniu pogorszenie ostrości wzroku',2),
	(759,'może dojść do opadnięcia powieki górnej i bólu gałki ocznej',2),
	(760,'może dojść do wytrzeszczu',2),
	(761,'zeza i dwojenia',2),
	(762,'zaburzenie reakcji źrenic na światło',2),
	(763,'pole widzenia może być ograniczone zarówno w jednym oku',2),
	(764,'jak i w obojgu oczach',2),
	(765,'bóle głowy',2),
	(766,'nudności i wymioty – typowo w godzinach porannych',2),
	(767,'pogorszenie ostrości wzroku do dali',2),
	(768,'mrużenie oczu w celu poprawy widzenia',2),
	(769,'mogą się pojawić: zez',2),
	(770,'bóle głowy i oczu',2),
	(771,'nieprawidłowe ustawienie gałek ocznych zbieżnie lub rozbieżnie',2),
	(772,'bóle głowy odczuwane podczas czytania',2),
	(773,'może dojść do dwojenia i pogorszenia ostrości wzroku',2),
	(774,'zwłaszcza w oku zezującym',2),
	(775,'ból',2),
	(776,'surowicza wydzielina',2),
	(777,'wywiad w kierunku infekcji górnych dróg oddechowych',2),
	(778,'obrzęk i zaczerwienienie powiek',2),
	(779,'dolegliwości występują nagle',2),
	(780,'uczucie ciała obcego w gałce ocznej',2),
	(781,'wywiad w kierunku infekcji górnych dróg oddechowych i użytkowania soczewek kontaktowych',2),
	(782,'ropna wydzielina w worku spojówkowym i na rzęsach',2),
	(783,'dolegliwości występują nagle Uwaga! Jeżeli mamy do czynienia z nawracającymi zapaleniami u małych dzieci – patrz rozdział niedrożność dróg łzowych',2),
	(784,'pieczenie',2),
	(785,'uczucie suchości i piasku pod powiekami',2),
	(786,'przemijające pogorszenie widzenia',2),
	(787,'niewielkie zaczerwienienie gałek ocznych',2),
	(788,'wywiad w kierunku pracy wzrokowej (pracy przy monitorze i w warunkach klimatyzacji)',2),
	(789,'użytkowania soczewek kontaktowych',2),
	(790,'chorób ogólnych takich jak cukrzyca',2),
	(791,'choroby reumatyczne',2),
	(792,'choroby tarczycy i choroby z autoagresji',2),
	(793,'występują głównie u niemowląt i małych dzieci z charakterystycznym objawem „stojącej łzy”',2),
	(794,'wydzielina ropna w kącie przyśrodkowym wydobywająca się wskutek ucisku na okolicę woreczka łzowego',2),
	(795,'przewlekłe nawracające zapalenia spojówek',2);

/*!40000 ALTER TABLE `symptom` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
