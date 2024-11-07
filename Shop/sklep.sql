-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 31, 2024 at 08:04 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sklep`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `laptopy`
--

CREATE TABLE `laptopy` (
  `id` int(11) NOT NULL,
  `marka` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `procesor` varchar(50) DEFAULT NULL,
  `pamiec_RAM` varchar(10) DEFAULT NULL,
  `dysk` varchar(20) DEFAULT NULL,
  `karta_graficzna` varchar(50) DEFAULT NULL,
  `przekatna_ekranu` varchar(10) DEFAULT NULL,
  `system_operacyjny` varchar(20) DEFAULT NULL,
  `dotykowy_ekran` tinyint(1) DEFAULT NULL,
  `rozdzielczosc_ekranu` varchar(30) DEFAULT NULL,
  `kamera_internetowa` varchar(30) DEFAULT NULL,
  `zlacza` varchar(100) DEFAULT NULL,
  `typ_baterii` varchar(30) DEFAULT NULL,
  `kolor` varchar(30) DEFAULT NULL,
  `zasilacz` varchar(30) DEFAULT NULL,
  `wysokosc` varchar(30) DEFAULT NULL,
  `szerokosc` varchar(30) DEFAULT NULL,
  `waga` varchar(30) DEFAULT NULL,
  `gwarancja` varchar(30) DEFAULT NULL,
  `cena` varchar(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT NULL,
  `opis` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptopy`
--

INSERT INTO `laptopy` (`id`, `marka`, `model`, `procesor`, `pamiec_RAM`, `dysk`, `karta_graficzna`, `przekatna_ekranu`, `system_operacyjny`, `dotykowy_ekran`, `rozdzielczosc_ekranu`, `kamera_internetowa`, `zlacza`, `typ_baterii`, `kolor`, `zasilacz`, `wysokosc`, `szerokosc`, `waga`, `gwarancja`, `cena`, `photo`, `isSale`, `opis`) VALUES
(1, 'Dell', 'XPS 13', 'Intel Core i7-1165G7', '16GB', '512GB SSD', 'Intel Iris Xe', '13.4\"', 'Windows 10', 1, '1920x1200', '720p HD', 'USB-C, Thunderbolt 4', 'Litowo-polimerowa', 'Srebrny', '65W USB-C', '14.8mm', '296mm', '1.2kg', '24 miesiące', '2000zł', 'photos/laptopy/laptop1.png', 0, 'Dell XPS 13 to kompaktowy, wydajny laptop, idealny do codziennej pracy i multimediów. Wyposażony w procesor Intel Core i7, zapewnia płynne działanie nawet przy wymagających zadaniach. Posiada wyświetlacz 13.4” o rozdzielczości Full HD+, co gwarantuje wyraźny obraz i doskonałą jakość kolorów. Solidna bateria i lekkie wykonanie sprawiają, że to idealny wybór dla osób w ruchu. Stylowy, srebrny design i wysoka jakość wykonania przyciągają uwagę!'),
(2, 'Apple', 'MacBook Air', 'Apple M1', '8GB', '256GB SSD', 'Apple 7-core GPU', '13.3\"', 'macOS', 0, '2560x1600', '720p HD', '2x Thunderbolt 3', 'Litowo-jonowa', 'Złoty', '30W USB-C', '16.1mm', '304.1mm', '1.29kg', '12 miesięcy', '2500zł', 'photos/laptopy/laptop2.png', 1, 'Apple MacBook Air to elegancja i potęga zamknięta w lekkiej, smukłej konstrukcji. Z procesorem Apple M1, MacBook oferuje wyjątkową wydajność i szybkość działania. Wyświetlacz Retina 13.3” zapewnia wyraziste kolory i doskonałą ostrość obrazu, idealną do pracy kreatywnej. Niskie zużycie energii pozwala na długi czas pracy bez ładowania. To laptop stworzony dla tych, którzy cenią jakość, styl i niezawodność.'),
(3, 'HP', 'Spectre x360', 'Intel Core i7-1165G7', '16GB', '1TB SSD', 'Intel Iris Xe', '13.5\"', 'Windows 10', 1, '1920x1280', '720p HD', 'USB-C, Thunderbolt 4, HDMI', 'Litowo-polimerowa', 'Czarny', '65W USB-C', '17mm', '306mm', '1.34kg', '24 miesiące', '4000zł', 'photos/laptopy/laptop3.png', 0, 'HP Spectre x360 to wszechstronny laptop 2-w-1, idealny do pracy i rozrywki. Wydajny procesor Intel Core i7 oraz szybki dysk 1TB SSD gwarantują płynną pracę i mnóstwo miejsca na pliki. Dotykowy ekran o rozdzielczości Full HD+ pozwala na wygodne przeglądanie i interakcję, a stylowy design w kolorze czarnym nadaje mu elegancji. Dzięki wytrzymałej baterii i konwertowalnej konstrukcji, to doskonały wybór do pracy mobilnej.'),
(4, 'Lenovo', 'ThinkPad X1 Carbon', 'Intel Core i5-1135G7', '8GB', '512GB SSD', 'Intel Iris Xe', '14\"', 'Windows 10', 0, '1920x1080', '720p HD', '2x USB-A, 2x USB-C, HDMI', 'Litowo-jonowa', 'Czarny', '65W USB-C', '14.9mm', '323mm', '1.09kg', '36 miesięcy', '5000zł', 'photos/laptopy/laptop4.png', 1, 'Lenovo ThinkPad X1 Carbon to ultralekki laptop biznesowy dla wymagających użytkowników. Z procesorem Intel Core i5 i 8GB RAM, ten laptop jest przygotowany na intensywną pracę. Wyświetlacz 14” Full HD zapewnia świetne wrażenia wizualne, a wytrzymała konstrukcja gwarantuje długotrwałą niezawodność. Ciesz się długą gwarancją i portami zwiększającymi wszechstronność pracy. Idealny do pracy biurowej i podróży.'),
(5, 'Asus', 'ZenBook 14', 'AMD Ryzen 7 5800H', '16GB', '512GB SSD', 'NVIDIA GeForce MX450', '14\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-polimerowa', 'Srebrny', '65W USB-C', '15.9mm', '319mm', '1.13kg', '24 miesiące', '7000zł', 'photos/laptopy/laptop5.png', 0, 'Asus ZenBook 14 to laptop dla osób szukających wydajności i stylu. Z procesorem AMD Ryzen 7 oraz kartą graficzną NVIDIA GeForce MX450, ZenBook jest gotowy na wymagające zadania graficzne. Wyświetlacz 14” Full HD zapewnia doskonałą jakość obrazu, a kompaktowa, srebrna konstrukcja sprawia, że laptop wygląda nowocześnie i profesjonalnie. Z baterią o długim czasie pracy, to idealny wybór dla aktywnych osób.'),
(6, 'Microsoft', 'Surface Laptop 4', 'AMD Ryzen 5', '8GB', '256GB SSD', 'AMD Radeon Vega 9', '13.5\"', 'Windows 10', 1, '2256x1504', '720p HD', 'USB-C, USB-A', 'Litowo-jonowa', 'Niebieski', '65W USB-C', '14.5mm', '308mm', '1.2kg', '24 miesiące', '9000zł', 'photos/laptopy/laptop6.png', 1, 'Microsoft Surface Laptop 4 to elegancki i smukły laptop o dużej mocy. Procesor AMD Ryzen 5 i 8GB RAM umożliwiają płynną pracę w wielu aplikacjach jednocześnie. Wyświetlacz o wysokiej rozdzielczości 2256x1504 zapewnia wyjątkową jakość obrazu, a lekka konstrukcja w kolorze niebieskim dodaje mu stylu. Z doskonałą klawiaturą i solidną baterią, Surface Laptop 4 idealnie sprawdzi się w pracy mobilnej.'),
(7, 'Acer', 'Swift 3', 'Intel Core i5-1135G7', '8GB', '512GB SSD', 'Intel Iris Xe', '14\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Szary', '65W USB-C', '15.9mm', '322mm', '1.2kg', '24 miesiące', '1000zł', 'photos/laptopy/laptop7.png', 0, 'Acer Swift 3 to doskonały wybór dla osób szukających wydajności w przystępnej cenie. Procesor Intel Core i5 i 8GB RAM zapewniają płynną pracę z aplikacjami biurowymi i multimedialnymi. Z kompaktowym wyświetlaczem 14” i lekką konstrukcją, Swift 3 jest idealny dla osób w ruchu. Srebrna obudowa dodaje elegancji, a solidna bateria pozwala na wiele godzin pracy bez ładowania.'),
(8, 'Razer', 'Blade 15', 'Intel Core i7-10750H', '16GB', '512GB SSD', 'NVIDIA GeForce GTX 1660 Ti', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-polimerowa', 'Czarny', '180W', '19.9mm', '355mm', '2.1kg', '24 miesiące', '4000zł', 'photos/laptopy/laptop8.png', 1, 'Razer Blade 15 to doskonały wybór dla graczy i profesjonalistów. Z procesorem Intel Core i7 i kartą graficzną NVIDIA GTX 1660 Ti, ten laptop radzi sobie z wymagającymi grami i programami graficznymi. Wyświetlacz 15.6” Full HD zapewnia wspaniałe wrażenia wizualne, a czarna, stylowa konstrukcja dodaje mu charakteru. Solidna bateria i szybkie ładowanie gwarantują komfortową pracę i rozrywkę bez ograniczeń.'),
(9, 'MSI', 'GF63 Thin', 'Intel Core i5-10500H', '8GB', '256GB SSD', 'NVIDIA GTX 1650', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Czerwony', '120W', '21.7mm', '359mm', '1.86kg', '12 miesięcy', '2000zł', 'photos/laptopy/laptop9.png', 0, 'MSI GF63 Thin to laptop stworzony dla graczy, którzy szukają wydajności w przystępnej cenie. Wyposażony w procesor Intel Core i5 i kartę graficzną NVIDIA GTX 1650, GF63 Thin radzi sobie z popularnymi grami i aplikacjami. Wyświetlacz Full HD zapewnia dobre wrażenia wizualne, a lekka konstrukcja ułatwia transport. Solidna obudowa i stylowy czerwony akcent podkreślają jego gamingowy charakter.'),
(10, 'Huawei', 'MateBook X Pro', 'Intel Core i7-1165G7', '16GB', '512GB SSD', 'Intel Iris Xe', '13.9\"', 'Windows 10', 1, '3000x2000', '720p HD', 'USB-C, USB-A', 'Litowo-jonowa', 'Srebrny', '65W USB-C', '14.6mm', '304mm', '1.33kg', '24 miesiące', '900zł', 'photos/laptopy/laptop10.png', 1, 'Huawei MateBook X Pro to stylowy laptop z wysokiej jakości wyświetlaczem 3K, zapewniającym wyjątkową jakość obrazu. Procesor Intel Core i7 oraz 16GB RAM sprawiają, że MateBook radzi sobie z wymagającymi zadaniami biurowymi i multimedialnymi. Srebrna obudowa dodaje mu elegancji, a długi czas pracy na baterii sprawia, że idealnie sprawdzi się w podróży. To laptop dla osób ceniących sobie estetykę i wydajność.'),
(11, 'Samsung', 'Galaxy Book Pro', 'Intel Core i5-1135G7', '8GB', '256GB SSD', 'Intel Iris Xe', '13.3\"', 'Windows 10', 0, '1920x1080', '720p HD', 'USB-C, HDMI', 'Litowo-polimerowa', 'Szary', '65W USB-C', '11.2mm', '304mm', '0.87kg', '24 miesiące', '9500zł', 'photos/laptopy/laptop11.png', 0, 'Samsung Galaxy Book Pro to lekki i ultramobilny laptop stworzony z myślą o produktywności. Wyświetlacz AMOLED 13.3” o rozdzielczości Full HD zapewnia doskonałą jakość kolorów i wyjątkowy kontrast. Procesor Intel Core i5 i 8GB RAM umożliwiają szybkie i płynne działanie. Dzięki wadze poniżej 1 kg i niezwykle smukłej konstrukcji, Galaxy Book Pro to idealny wybór dla osób, które cenią mobilność i styl.'),
(12, 'LG', 'Gram 14', 'Intel Core i7-1165G7', '16GB', '512GB SSD', 'Intel Iris Xe', '14\"', 'Windows 10', 0, '1920x1200', '720p HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Biały', '65W USB-C', '16.8mm', '314mm', '0.99kg', '24 miesiące', '2000zł', 'photos/laptopy/laptop12.png', 1, 'LG Gram 14 to ultralekki i wytrzymały laptop z procesorem Intel Core i7, zapewniającym szybkie działanie w każdych warunkach. Wyświetlacz 14” Full HD+ oferuje wyraźny obraz, a lekka, zaledwie 1 kg konstrukcja jest idealna do pracy w ruchu. Dzięki długiemu czasowi pracy na baterii, LG Gram pozwala na długą i produktywną pracę bez przerw. To doskonały wybór dla wymagających profesjonalistów.'),
(13, 'Asus', 'ROG Zephyrus G14', 'AMD Ryzen 9 5900HS', '16GB', '1TB SSD', 'NVIDIA GeForce RTX 3060', '14\"', 'Windows 10', 0, '2560x1440', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-polimerowa', 'Biały', '180W', '19.9mm', '324mm', '1.7kg', '12 miesięcy', '7000zł', 'photos/laptopy/laptop13.png', 0, 'Asus ROG Zephyrus G14 to potężny laptop gamingowy o kompaktowym rozmiarze. Wyposażony w procesor AMD Ryzen 9 i kartę graficzną NVIDIA GeForce RTX 3060, zapewnia doskonałe osiągi nawet w wymagających grach. Wyświetlacz o rozdzielczości 2560x1440 gwarantuje wyraźny obraz i wysoką jakość kolorów. Ze względu na długą żywotność baterii, Zephyrus sprawdzi się zarówno do gier, jak i do pracy w podróży. Elegancka, biała obudowa dodaje mu niepowtarzalnego charakteru.'),
(14, 'HP', 'Omen 15', 'AMD Ryzen 7 5800H', '16GB', '512GB SSD', 'NVIDIA RTX 3060', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Czarny', '200W', '22.5mm', '357mm', '2.36kg', '24 miesiące', '3000zł', 'photos/laptopy/laptop14.png', 1, 'HP Omen 15 to idealny wybór dla graczy szukających wydajności i wytrzymałości. Dzięki procesorowi AMD Ryzen 7 i karcie graficznej NVIDIA RTX 3060, Omen 15 radzi sobie z najbardziej wymagającymi grami. 15.6-calowy ekran Full HD zapewnia doskonałe wrażenia wizualne, a liczne porty ułatwiają podłączenie dodatkowych akcesoriów. Czarna, nowoczesna obudowa i solidna konstrukcja sprawiają, że laptop wygląda stylowo i sprawdza się w każdej sytuacji.'),
(15, 'Dell', 'Inspiron 15', 'Intel Core i5-11300H', '8GB', '256GB SSD', 'Intel Iris Xe', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-polimerowa', 'Srebrny', '65W', '18.0mm', '359mm', '1.75kg', '12 miesięcy', '4000zł', 'photos/laptopy/laptop15.png', 0, 'Dell Inspiron 15 to wszechstronny laptop, idealny do codziennego użytku i zadań biurowych. Wyposażony w procesor Intel Core i5 i 8GB RAM, zapewnia płynne działanie i wygodną pracę. Ekran 15.6” Full HD dostarcza wyraźnego obrazu, a srebrna, elegancka konstrukcja sprawia, że laptop dobrze prezentuje się w każdym środowisku. Z długą żywotnością baterii i licznymi portami, Inspiron 15 to świetny wybór do codziennych zadań.'),
(16, 'Lenovo', 'Yoga Slim 7', 'AMD Ryzen 7 4800U', '8GB', '512GB SSD', 'AMD Radeon Graphics', '14\"', 'Windows 10', 1, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Szary', '65W USB-C', '14.9mm', '321mm', '1.55kg', '24 miesiące', '5000zł', 'photos/laptopy/laptop16.png', 1, 'Lenovo Yoga Slim 7 to ultramobilny laptop dla tych, którzy cenią styl i wydajność. Wyposażony w procesor AMD Ryzen 7, laptop radzi sobie z wieloma zadaniami jednocześnie. Ekran 14” Full HD oraz lekka konstrukcja w kolorze szarym sprawiają, że laptop wygląda elegancko i profesjonalnie. Yoga Slim 7 posiada również długą żywotność baterii, co czyni go idealnym wyborem dla osób pracujących w podróży.'),
(17, 'Microsoft', 'Surface Book 3', 'Intel Core i7-1065G7', '16GB', '512GB SSD', 'NVIDIA GTX 1660 Ti', '15\"', 'Windows 10', 1, '3240x2160', '1080p HD', 'USB-C, USB-A', 'Litowo-jonowa', 'Srebrny', '102W', '23mm', '343mm', '1.9kg', '24 miesiące', '6000zł', 'photos/laptopy/laptop17.png', 0, 'Microsoft Surface Book 3 to wydajny laptop 2-w-1, który doskonale sprawdza się w pracy kreatywnej. Wyposażony w procesor Intel Core i7 i kartę graficzną NVIDIA GTX 1660 Ti, oferuje moc potrzebną do pracy z zaawansowanymi programami graficznymi i aplikacjami. Dotykowy ekran o wysokiej rozdzielczości 3240x2160 zapewnia świetne wrażenia wizualne, a srebrna obudowa dodaje mu elegancji. Dzięki odłączanemu ekranowi, Surface Book 3 może być używany jako tablet, co zwiększa jego wszechstronność.'),
(18, 'Asus', 'VivoBook S14', 'Intel Core i5-1135G7', '8GB', '512GB SSD', 'Intel Iris Xe', '14\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Zielony', '65W USB-C', '15.9mm', '324mm', '1.4kg', '12 miesięcy', '7000zł', 'photos/laptopy/laptop18.png', 1, 'Asus VivoBook S14 to laptop, który łączy styl i wydajność w atrakcyjnej, kompaktowej konstrukcji. Z procesorem Intel Core i5 i 8GB RAM, VivoBook oferuje płynne działanie podczas pracy i rozrywki. Wyświetlacz 14” Full HD zapewnia jasny i wyraźny obraz, a wyjątkowa, zielona obudowa przyciąga wzrok. VivoBook S14 to idealny wybór dla tych, którzy cenią sobie stylowy wygląd i mobilność.'),
(19, 'HP', 'Pavilion 15', 'Intel Core i7-1165G7', '16GB', '512GB SSD', 'Intel Iris Xe', '15.6\"', 'Windows 10', 0, '1920x1080', '720p HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Srebrny', '65W USB-C', '18mm', '360mm', '1.75kg', '12 miesięcy', '8000zł', 'photos/laptopy/laptop19.png', 0, 'HP Pavilion 15 to laptop o wyjątkowej wydajności i elegancji. Procesor Intel Core i7 i 16GB RAM pozwalają na szybkie działanie nawet przy wielu otwartych aplikacjach. Wyświetlacz Full HD dostarcza doskonałej jakości obrazu, a srebrna obudowa nadaje laptopowi nowoczesny wygląd. Pavilion 15 to laptop, który sprawdzi się zarówno w pracy, jak i w domu, zapewniając komfort użytkowania dzięki solidnej baterii i lekkiej konstrukcji.'),
(20, 'Dell', 'G5 15', 'Intel Core i7-10750H', '16GB', '1TB SSD', 'NVIDIA RTX 2060', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Czarny', '130W', '23mm', '364mm', '2.5kg', '12 miesięcy', '2070zł', 'photos/laptopy/laptop20.png', 1, 'Dell G5 15 to laptop gamingowy stworzony dla wymagających użytkowników. Wyposażony w procesor Intel Core i7 i kartę graficzną NVIDIA RTX 2060, G5 15 zapewnia doskonałą wydajność w grach i aplikacjach graficznych. Ekran Full HD 15.6” oferuje wyraźny obraz, a czarna, solidna konstrukcja podkreśla jego gamingowy charakter. Dzięki efektywnemu chłodzeniu i długiej żywotności baterii, G5 15 zapewnia nieprzerwaną rozrywkę i wydajność.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `monitory`
--

CREATE TABLE `monitory` (
  `id` int(11) NOT NULL,
  `marka` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `rozdzielczosc` varchar(20) DEFAULT NULL,
  `przekatna` varchar(10) DEFAULT NULL,
  `odswiezanie` varchar(10) DEFAULT NULL,
  `typ_panelu` varchar(20) DEFAULT NULL,
  `czas_reakcji` varchar(10) DEFAULT NULL,
  `liczba_wyswietlanych_kolorow` varchar(30) DEFAULT NULL,
  `pobor_mocy` varchar(30) DEFAULT NULL,
  `HDR` varchar(20) DEFAULT NULL,
  `glosniki` tinyint(1) DEFAULT NULL,
  `regulacja_wysokosci` tinyint(1) DEFAULT NULL,
  `kolor` varchar(30) DEFAULT NULL,
  `gwarancja` varchar(50) DEFAULT NULL,
  `cena` varchar(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT NULL,
  `opis` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monitory`
--

INSERT INTO `monitory` (`id`, `marka`, `model`, `rozdzielczosc`, `przekatna`, `odswiezanie`, `typ_panelu`, `czas_reakcji`, `liczba_wyswietlanych_kolorow`, `pobor_mocy`, `HDR`, `glosniki`, `regulacja_wysokosci`, `kolor`, `gwarancja`, `cena`, `photo`, `isSale`, `opis`) VALUES
(1, 'Dell', 'UltraSharp U2720Q', '4K UHD', '27"', '60Hz', 'IPS', '5ms', '1.07 miliarda', '45W', 'HDR400', 1, 1, 'Czarny', '36 miesięcy', '600zł', 'photos/monitory/monitor1.png', 1, 'Dell UltraSharp U2720Q to wysokiej jakości monitor 4K, idealny do pracy z grafiką i projektowania. Wyposażony w matrycę IPS o przekątnej 27 cali, zapewnia szerokie kąty widzenia i doskonałą jakość kolorów. HDR400 i 1.07 miliarda kolorów pozwalają na realistyczne odwzorowanie barw, a elegancki, czarny design dopełnia profesjonalny wygląd. Z 36-miesięczną gwarancją, UltraSharp U2720Q jest idealny dla wymagających użytkowników.'),

(2, 'LG', '27GN950-B', '4K UHD', '27"', '144Hz', 'Nano IPS', '1ms', '1.07 miliarda', '80W', 'HDR600', 1, 1, 'Czarny', '24 miesiące', '500zł', 'photos/monitory/monitor2.png', 1, 'LG 27GN950-B to zaawansowany monitor 4K stworzony dla graczy, którzy cenią sobie szybki czas reakcji i płynność obrazu. Nano IPS zapewnia doskonałe odwzorowanie kolorów, a odświeżanie 144Hz i czas reakcji 1ms sprawiają, że monitor radzi sobie w dynamicznych scenach. Dzięki HDR600 obraz jest bardziej wyrazisty, a 27 cali to optymalny rozmiar dla intensywnych gier.'),

(3, 'Samsung', 'Odyssey G7', 'QHD', '27"', '240Hz', 'VA', '1ms', '16.7 miliona', '70W', 'HDR600', 1, 1, 'Czarny', '24 miesiące', '800zł', 'photos/monitory/monitor3.png', 1, 'Samsung Odyssey G7 to monitor QHD o zakrzywionym ekranie 27 cali, idealny dla graczy. Z odświeżaniem 240Hz i czasem reakcji 1ms, zapewnia płynność i szybkość w dynamicznych grach. Technologia VA gwarantuje głębokie kolory i kontrast, a HDR600 zwiększa realizm obrazu. Monitor w czarnej obudowie wygląda nowocześnie i przyciąga uwagę.'),

(4, 'ASUS', 'ROG Swift PG32UQ', '4K UHD', '32"', '144Hz', 'IPS', '4ms', '1.07 miliarda', '80W', 'HDR600', 1, 1, 'Czarny', '36 miesięcy', '2000zł', 'photos/monitory/monitor4.png', 1, 'ASUS ROG Swift PG32UQ to zaawansowany monitor dla graczy, oferujący rozdzielczość 4K i ekran 32 cale. IPS i odświeżanie 144Hz zapewniają doskonałą jakość obrazu i płynność. HDR600 oraz 1.07 miliarda kolorów dodają realizmu, a 36-miesięczna gwarancja zapewnia długotrwałe użytkowanie.'),

(5, 'Acer', 'Predator X27', '4K UHD', '27"', '144Hz', 'IPS', '4ms', '1.07 miliarda', '100W', 'HDR1000', 1, 1, 'Czarny', '24 miesiące', '900zł', 'photos/monitory/monitor5.png', 0, 'Acer Predator X27 to potężny monitor 4K z odświeżaniem 144Hz, przeznaczony dla graczy i profesjonalistów. HDR1000 zapewnia doskonałą jakość obrazu, a 1.07 miliarda kolorów dodaje głębi i szczegółowości. Czarny, gamingowy design wyróżnia się solidną konstrukcją i stylowym wykończeniem.'),

(6, 'BenQ', 'SW271', '4K UHD', '27"', '60Hz', 'IPS', '5ms', '1.07 miliarda', '60W', 'HDR10', 1, 1, 'Czarny', '36 miesięcy', '400zł', 'photos/monitory/monitor6.png', 1, 'BenQ SW271 to monitor 4K idealny dla fotografów i grafików, oferujący szerokie pokrycie barw i precyzję kolorów. Matryca IPS oraz HDR10 gwarantują świetną jakość obrazu, a 27 cali zapewnia odpowiednią przestrzeń roboczą. Monitor wyróżnia się eleganckim, czarnym wykończeniem.'),

(7, 'ViewSonic', 'VP2768a-4K', '4K UHD', '27"', '60Hz', 'IPS', '5ms', '1.07 miliarda', '50W', 'HDR10', 1, 1, 'Czarny', '24 miesiące', '500zł', 'photos/monitory/monitor7.png', 1, 'ViewSonic VP2768a-4K to monitor 4K o przekątnej 27 cali, idealny do pracy kreatywnej. IPS zapewnia szerokie kąty widzenia i precyzyjne kolory. HDR10 i 1.07 miliarda kolorów gwarantują doskonałą jakość obrazu. Monitor jest stylowy i świetnie pasuje do biura.'),

(8, 'LG', '34GN850-B', 'QHD', '34"', '144Hz', 'Nano IPS', '1ms', '1.07 miliarda', '80W', 'HDR600', 1, 1, 'Czarny', '24 miesiące', '600zł', 'photos/monitory/monitor8.png', 1, 'LG 34GN850-B to monitor ultrapanoramiczny QHD, idealny dla graczy. Z odświeżaniem 144Hz i czasem reakcji 1ms, zapewnia płynność w grach. Nano IPS i HDR600 dodają głębi kolorom, a szeroki ekran o przekątnej 34 cali gwarantuje intensywne wrażenia wizualne.'),

(9, 'Dell', 'P2720DC', 'QHD', '27"', '60Hz', 'IPS', '5ms', '16.7 miliona', '50W', 'HDR', 0, 1, 'Czarny', '36 miesięcy', '800zł', 'photos/monitory/monitor9.png', 1, 'Dell P2720DC to monitor QHD o przekątnej 27 cali, przeznaczony do pracy biurowej. Wyposażony w IPS, zapewnia dobrą jakość obrazu, a elegancki, czarny design nadaje mu profesjonalny wygląd. Dzięki HDR i 36-miesięcznej gwarancji jest solidnym wyborem do codziennego użytku.'),

(10, 'Samsung', 'LF27T350FHW', 'Full HD', '27"', '75Hz', 'IPS', '5ms', '16.7 miliona', '25W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '900zł', 'photos/monitory/monitor10.png', 0, 'Samsung LF27T350FHW to monitor Full HD o rozdzielczości 27 cali, idealny do codziennego użytkowania. Z odświeżaniem 75Hz i czasem reakcji 5ms, zapewnia płynność w podstawowych zastosowaniach. Stylowy, czarny design sprawia, że świetnie prezentuje się na biurku.'),

(11, 'Acer', 'R271', 'Full HD', '27"', '60Hz', 'IPS', '4ms', '16.7 miliona', '30W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '1000zł', 'photos/monitory/monitor11.png', 1, 'Acer R271 to monitor Full HD o przekątnej 27 cali, doskonały do pracy biurowej. IPS i czas reakcji 4ms zapewniają przyjemny obraz. Czarne wykończenie oraz elegancki design dobrze sprawdzają się w każdym środowisku pracy.'),

(12, 'HP', 'Pavilion 27', 'QHD', '27"', '60Hz', 'IPS', '5ms', '16.7 miliona', '45W', 'HDR', 1, 1, 'Biały', '24 miesiące', '1000zł', 'photos/monitory/monitor12.png', 1, 'HP Pavilion 27 to monitor QHD o przekątnej 27 cali, który idealnie nadaje się do biura. Matryca IPS oraz HDR zapewniają dobrą jakość obrazu, a biały design dodaje elegancji.'),

(13, 'Gigabyte', 'AORUS AD27QD', 'QHD', '27"', '144Hz', 'IPS', '1ms', '1.07 miliarda', '65W', 'HDR400', 1, 1, 'Czarny', '24 miesiące', '2040zł', 'photos/monitory/monitor13.png', 1, 'Gigabyte AORUS AD27QD to monitor gamingowy QHD o przekątnej 27 cali z odświeżaniem 144Hz, dedykowany graczom. HDR400 oraz 1.07 miliarda kolorów gwarantują doskonałą jakość obrazu, a czarny design dodaje mu nowoczesności.'),

(14, 'Lenovo', 'ThinkVision P32u-10', '4K UHD', '32"', '60Hz', 'IPS', '6ms', '1.07 miliarda', '75W', 'HDR400', 1, 1, 'Czarny', '36 miesięcy', '600zł', 'photos/monitory/monitor14.png', 1, 'Lenovo ThinkVision P32u-10 to profesjonalny monitor 4K o przekątnej 32 cale, idealny do pracy kreatywnej i biurowej. Matryca IPS zapewnia szerokie kąty widzenia i doskonałą jakość obrazu. Z HDR400 i 1.07 miliarda kolorów, monitor oferuje realistyczne odwzorowanie barw. Elegancka, czarna obudowa i 36-miesięczna gwarancja czynią go solidnym wyborem dla profesjonalistów.'),

(15, 'MSI', 'Optix MAG272CQR', 'QHD', '27"', '165Hz', 'VA', '1ms', '16.7 miliona', '60W', 'HDR400', 1, 1, 'Czarny', '24 miesiące', '800zł', 'photos/monitory/monitor15.png', 1, 'MSI Optix MAG272CQR to monitor QHD dla graczy, oferujący zakrzywiony ekran o przekątnej 27 cali. Z odświeżaniem 165Hz i czasem reakcji 1ms, zapewnia doskonałą płynność obrazu. Technologia VA i HDR400 gwarantują głębokie kolory i kontrast. Czarne wykończenie dodaje mu nowoczesnego wyglądu.'),

(16, 'Philips', '328P6VJEB', '4K UHD', '32"', '60Hz', 'IPS', '5ms', '1.07 miliarda', '60W', 'HDR10', 1, 1, 'Czarny', '24 miesiące', '400zł', 'photos/monitory/monitor16.png', 1, 'Philips 328P6VJEB to monitor 4K UHD o przekątnej 32 cale, idealny do zadań profesjonalnych i biurowych. Matryca IPS zapewnia szerokie kąty widzenia, a HDR10 gwarantuje wysoką jakość obrazu i realistyczne odwzorowanie barw. Czarna obudowa sprawia, że monitor prezentuje się elegancko.'),

(17, 'Samsung', 'S24F350', 'Full HD', '24"', '60Hz', 'PLS', '5ms', '16.7 miliona', '25W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '200zł', 'photos/monitory/monitor17.png', 1, 'Samsung S24F350 to monitor Full HD o przekątnej 24 cale, stworzony do codziennego użytku. Matryca PLS oferuje szerokie kąty widzenia, a elegancki, czarny design dodaje mu uniwersalnego charakteru. Monitor jest energooszczędny i świetnie sprawdzi się w biurze lub domu.'),

(18, 'BenQ', 'Zowie XL2411K', 'Full HD', '24"', '144Hz', 'TN', '1ms', '16.7 miliona', '45W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '500zł', 'photos/monitory/monitor18.png', 1, 'BenQ Zowie XL2411K to monitor Full HD o przekątnej 24 cale, dedykowany graczom. Z odświeżaniem 144Hz i czasem reakcji 1ms, gwarantuje płynność i szybkość w dynamicznych grach. Matryca TN i kompaktowy rozmiar sprawiają, że jest idealnym wyborem dla miłośników e-sportu.'),

(19, 'ViewSonic', 'XG2405', 'Full HD', '24"', '144Hz', 'IPS', '1ms', '16.7 miliona', '30W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '800zł', 'photos/monitory/monitor19.png', 1, 'ViewSonic XG2405 to monitor Full HD o przekątnej 24 cale, zaprojektowany z myślą o graczach. IPS zapewnia szerokie kąty widzenia, a odświeżanie 144Hz i czas reakcji 1ms umożliwiają płynną grę. Monitor wyróżnia się nowoczesnym, czarnym designem i wysoką jakością obrazu.'),

(20, 'Acer', 'CB272U', 'QHD', '27"', '75Hz', 'IPS', '1ms', '1.07 miliarda', '40W', 'HDR10', 1, 1, 'Czarny', '36 miesięcy', '700zł', 'photos/monitory/monitor20.png', 1, 'Acer CB272U to monitor QHD o przekątnej 27 cali, idealny do pracy i rozrywki. IPS zapewnia doskonałe odwzorowanie kolorów i szerokie kąty widzenia. HDR10 i 1.07 miliarda kolorów gwarantują realistyczny obraz, a elegancki, czarny design dodaje monitorowi nowoczesnego stylu.');



-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `myszki_i_klawiatury`
--

CREATE TABLE `myszki_i_klawiatury` (
  `id` int(11) NOT NULL,
  `typ` varchar(20) DEFAULT NULL,
  `marka` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `rodzaj_polaczenia` varchar(20) DEFAULT NULL,
  `podswietlenie` tinyint(1) DEFAULT NULL,
  `programowalne_przyciski` int(11) DEFAULT NULL,
  `cena` varchar(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT NULL,
  `opis` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myszki_i_klawiatury`
--

INSERT INTO `myszki_i_klawiatury` (`id`, `typ`, `marka`, `model`, `rodzaj_polaczenia`, `podswietlenie`, `programowalne_przyciski`, `cena`, `photo`, `isSale`, `opis`) VALUES
(1, 'Mysz', 'Logitech', 'G502 HERO', 'Bezprzewodowe', 1, 11, '100zł', 'photos/myszki_klawiatury/mysz1.png', 1, 'Logitech G502 HERO to bezprzewodowa mysz zaprojektowana z myślą o zaawansowanych graczach. Wyposażona w precyzyjny sensor HERO, oferuje niezawodną dokładność ruchu nawet przy szybkich reakcjach. Mysz posiada aż 11 programowalnych przycisków, umożliwiając pełną personalizację i dostosowanie do różnych gier. Ergonomiczny kształt zapewnia wygodę użytkowania nawet podczas długich sesji. Dodatkowo, G502 HERO ma wytrzymałą konstrukcję, co gwarantuje jej trwałość.'),

(2, 'Mysz', 'Razer', 'DeathAdder V2', 'Przewodowe', 1, 5, '200zł', 'photos/myszki_klawiatury/mysz2.png', 1, 'Razer DeathAdder V2 to przewodowa mysz stworzona dla graczy szukających wysokiej jakości i ergonomii. Mysz wyposażona jest w zaawansowany sensor optyczny Focus+, co pozwala na niezwykle precyzyjne śledzenie ruchu. DeathAdder V2 ma 5 programowalnych przycisków, które można dostosować do indywidualnych potrzeb. Charakterystyczny kształt myszy idealnie pasuje do dłoni, co zmniejsza zmęczenie podczas intensywnego użytkowania. Dodatkowo, eleganckie podświetlenie Razer Chroma dodaje stylu i personalizacji.'),

(3, 'Klawiatura', 'Corsair', 'K95 RGB Platinum', 'Przewodowe', 1, 6, '600zł', 'photos/myszki_klawiatury/klawiatura1.png', 1, 'Corsair K95 RGB Platinum to flagowa klawiatura mechaniczna stworzona z myślą o zaawansowanych graczach. Wysokiej jakości przełączniki mechaniczne zapewniają szybki czas reakcji, co jest kluczowe w dynamicznych grach. Klawiatura posiada 6 programowalnych klawiszy makro, które można dostosować do różnych funkcji. Podświetlenie RGB pozwala na szeroką personalizację, co dodaje niepowtarzalnego charakteru. Solidna aluminiowa konstrukcja gwarantuje wytrzymałość nawet podczas intensywnego użytkowania.'),

(4, 'Mysz', 'SteelSeries', 'Rival 600', 'Przewodowe', 1, 7, '500zł', 'photos/myszki_klawiatury/mysz3.png', 0, 'SteelSeries Rival 600 to mysz gamingowa, która wyróżnia się unikalnym systemem podwójnego czujnika TrueMove3. Dzięki temu mysz zapewnia precyzyjne śledzenie ruchu i niezawodność na każdym etapie rozgrywki. Mysz posiada 7 programowalnych przycisków, które można dopasować do indywidualnych wymagań. Dodatkowo, możliwość regulacji wagi pozwala użytkownikowi na pełne dostosowanie komfortu pracy. Ergonomiczny design i stylowe podświetlenie LED dodają urządzeniu nowoczesnego wyglądu.'),

(5, 'Klawiatura', 'Razer', 'BlackWidow V3', 'Przewodowe', 1, 5, '150zł', 'photos/myszki_klawiatury/klawiatura2.png', 1, 'Razer BlackWidow V3 to klasyczna klawiatura mechaniczna, która oferuje wysoką wydajność i wygodę użytkowania. Wyposażona w pięć programowalnych klawiszy, pozwala na łatwe dostosowanie funkcji do potrzeb gracza. Mechaniczne przełączniki Razer zapewniają szybki czas reakcji, co sprawdza się idealnie w grach wymagających refleksu. Podświetlenie RGB dodaje charakteru i umożliwia personalizację kolorów. Solidna konstrukcja gwarantuje trwałość, a antypoślizgowa powierzchnia sprawia, że klawiatura stabilnie trzyma się powierzchni.'),

(6, 'Mysz', 'HyperX', 'Pulsefire FPS', 'Bezprzewodowe', 1, 6, '150zł', 'photos/myszki_klawiatury/mysz4.png', 1, 'HyperX Pulsefire FPS to bezprzewodowa mysz idealna dla fanów gier FPS, oferująca wyjątkową precyzję i komfort. Sensor myszy został zaprojektowany tak, aby umożliwić szybką reakcję w intensywnych sytuacjach. Pulsefire posiada 6 programowalnych przycisków, co pozwala na pełną personalizację w grach. Ergonomiczny kształt myszy minimalizuje zmęczenie dłoni podczas długotrwałego użytkowania. Solidna konstrukcja i elegancki design sprawiają, że mysz wygląda świetnie i jest wytrzymała.'),

(7, 'Klawiatura', 'Logitech', 'G Pro X', 'Przewodowe', 1, 3, '200zł', 'photos/myszki_klawiatury/klawiatura3.png', 0, 'Logitech G Pro X to kompaktowa klawiatura mechaniczna, która jest idealna dla profesjonalnych graczy. Posiada trzy programowalne przyciski, które można dostosować do własnych preferencji. Mechaniczne przełączniki zapewniają szybki czas reakcji, co jest niezbędne w grach wymagających precyzji. Dzięki kompaktowej konstrukcji klawiatura zajmuje mniej miejsca na biurku. Dodatkowo, minimalistyczny wygląd i solidne wykonanie sprawiają, że jest ona estetyczna i wytrzymała.'),

(8, 'Mysz', 'Zowie', 'EC2', 'Przewodowe', 0, 0, '300zł', 'photos/myszki_klawiatury/mysz5.png', 0, 'Zowie EC2 to przewodowa mysz zaprojektowana z myślą o profesjonalnych graczach. Wyróżnia się prostym i ergonomicznym designem, który minimalizuje zmęczenie dłoni podczas długich sesji. Mysz zapewnia precyzyjne śledzenie ruchu, co jest istotne dla osiągania wysokich wyników w dynamicznych grach. Dzięki solidnej konstrukcji jest trwała i odporna na intensywne użytkowanie. Mysz Zowie EC2 jest także łatwa w obsłudze, co czyni ją popularnym wyborem wśród graczy FPS.'),

(9, 'Klawiatura', 'Cooler Master', 'MK730', 'Przewodowe', 1, 5, '400zł', 'photos/myszki_klawiatury/klawiatura4.png', 1, 'Cooler Master MK730 to kompaktowa klawiatura mechaniczna stworzona dla wymagających graczy. Jej 5 programowalnych klawiszy pozwala na dostosowanie klawiatury do indywidualnych potrzeb. Wyposażona w przełączniki Cherry MX, oferuje precyzyjny i szybki czas reakcji. Podświetlenie RGB dodaje nowoczesnego wyglądu i umożliwia personalizację kolorów. Solidna konstrukcja z metalowym panelem zapewnia trwałość, a magnetyczna podkładka pod nadgarstki zwiększa komfort użytkowania.'),

(10, 'Mysz', 'Razer', 'Viper Ultimate', 'Bezprzewodowe', 1, 8, '500zł', 'photos/myszki_klawiatury/mysz6.png', 1, 'Razer Viper Ultimate to bezprzewodowa mysz dla graczy szukających precyzji i wygody. Dzięki sensorowi Focus+ Optical Sensor, oferuje niezawodność i wyjątkową dokładność śledzenia ruchu. Mysz wyposażona jest w 8 programowalnych przycisków, co pozwala na szeroką personalizację. Lekka konstrukcja i ergonomiczny kształt sprawiają, że Viper Ultimate jest komfortowa w użytkowaniu. Dodatkowo, mysz oferuje czas pracy na baterii sięgający do 70 godzin.'),

(11, 'Klawiatura', 'Corsair', 'K70 RGB MK.2', 'Przewodowe', 1, 6, '400zł', 'photos/myszki_klawiatury/klawiatura5.png', 0, 'Corsair K70 RGB MK.2 to klawiatura mechaniczna, która idealnie łączy funkcjonalność i styl. Wyposażona w przełączniki Cherry MX, gwarantuje szybki czas reakcji i precyzję działania. Posiada 6 programowalnych klawiszy, co daje duże możliwości konfiguracji. Dzięki podświetleniu RGB klawiatura pozwala na pełną personalizację kolorów, co dodaje charakteru. Konstrukcja z aluminium zapewnia wytrzymałość i nowoczesny wygląd.'),

(12, 'Mysz', 'Logitech', 'G703', 'Bezprzewodowe', 1, 6, '300zł', 'photos/myszki_klawiatury/mysz7.png', 1, 'Logitech G703 to bezprzewodowa mysz gamingowa, która wyróżnia się wygodą i precyzją. Posiada zaawansowany sensor HERO, który oferuje wyjątkową dokładność śledzenia ruchu. Wyposażona w 6 programowalnych przycisków, mysz umożliwia dostosowanie funkcji do potrzeb gracza. Lekka i ergonomiczna konstrukcja sprawia, że G703 jest idealna do długotrwałego użytkowania. Dodatkowo, mysz oferuje czas pracy na baterii wynoszący do 35 godzin.'),

(13, 'Klawiatura', 'SteelSeries', 'Apex 7', 'Przewodowe', 1, 5, '180zł', 'photos/myszki_klawiatury/klawiatura6.png', 1, 'SteelSeries Apex 7 to solidna klawiatura mechaniczna o wysokiej funkcjonalności. Wyposażona w 5 programowalnych klawiszy, pozwala na pełną personalizację funkcji. Przełączniki mechaniczne QX2 gwarantują szybki czas reakcji i trwałość. Podświetlenie RGB oraz wyświetlacz OLED dodają nowoczesnego stylu i możliwości dostosowania wyglądu. Metalowa konstrukcja zapewnia trwałość, a funkcje multimedialne zwiększają komfort użytkowania.'),

(14, 'Mysz', 'Asus', 'ROG Gladius III', 'Przewodowe', 1, 6, '100zł', 'photos/myszki_klawiatury/mysz8.png', 0, 'Asus ROG Gladius III to przewodowa mysz gamingowa zaprojektowana z myślą o graczach szukających precyzji i wygody. Posiada zaawansowany sensor optyczny, który gwarantuje dokładność ruchu i niezawodność. Mysz wyposażona jest w 6 programowalnych przycisków, co umożliwia szeroką personalizację. Ergonomiczny kształt zapewnia wygodę podczas długotrwałego użytkowania. Dzięki wytrzymałej konstrukcji mysz sprawdzi się nawet przy intensywnym użytkowaniu.'),

(15, 'Klawiatura', 'Razer', 'Ornata V2', 'Przewodowe', 1, 4, '200zł', 'photos/myszki_klawiatury/klawiatura7.png', 1, 'Razer Ornata V2 to innowacyjna klawiatura hybrydowa, łącząca zalety przełączników mechanicznych i membranowych. Posiada 4 programowalne klawisze, co pozwala na dostosowanie jej do różnych potrzeb. Klawiatura oferuje wygodne podświetlenie RGB z możliwością personalizacji kolorów. Konstrukcja z wytrzymałych materiałów gwarantuje trwałość, a ergonomiczna podpórka na nadgarstki zwiększa komfort użytkowania. Ornata V2 sprawdzi się zarówno w grach, jak i w codziennym użytkowaniu.'),

(16, 'Mysz', 'Logitech', 'MX Master 3', 'Bezprzewodowe', 1, 2, '300zł', 'photos/myszki_klawiatury/mysz9.png', 1, 'Logitech MX Master 3 to bezprzewodowa mysz dla profesjonalistów, którzy cenią wygodę i funkcjonalność. Posiada sensor Darkfield, który umożliwia precyzyjne śledzenie na każdej powierzchni, nawet na szkle. Dzięki ergonomicznemu kształtowi MX Master 3 idealnie leży w dłoni, co redukuje zmęczenie. Mysz posiada 2 programowalne przyciski, co pozwala na dostosowanie funkcji do potrzeb użytkownika. Długi czas pracy na baterii i szybkie ładowanie sprawiają, że MX Master 3 to idealny wybór do pracy biurowej.'),

(17, 'Klawiatura', 'HyperX', 'Alloy FPS Pro', 'Przewodowe', 1, 4, '700zł', 'photos/myszki_klawiatury/klawiatura8.png', 0, 'HyperX Alloy FPS Pro to kompaktowa klawiatura mechaniczna zaprojektowana z myślą o graczach FPS. Wyposażona w przełączniki mechaniczne, zapewnia precyzyjną reakcję i szybki czas reakcji. Klawiatura ma 4 programowalne klawisze, co pozwala na personalizację funkcji. Jej minimalistyczny design sprawia, że zajmuje niewiele miejsca na biurku, idealnie nadając się do mobilnych zastosowań. Solidna stalowa konstrukcja gwarantuje trwałość i wytrzymałość nawet przy intensywnym użytkowaniu.'),

(18, 'Mysz', 'BenQ', 'Zowie S2', 'Przewodowe', 0, 0, '400zł', 'photos/myszki_klawiatury/mysz10.png', 0, 'BenQ Zowie S2 to przewodowa mysz zaprojektowana specjalnie dla profesjonalnych graczy. Posiada ergonomiczny kształt, który minimalizuje zmęczenie dłoni, co jest idealne podczas długich sesji gamingowych. Mysz oferuje precyzyjne śledzenie ruchu i szybki czas reakcji. Dzięki solidnej konstrukcji jest trwała i odporna na intensywne użytkowanie. BenQ Zowie S2 to niezawodny wybór dla osób ceniących sobie minimalizm i efektywność.'),

(19, 'Klawiatura', 'Logitech', 'K120', 'Przewodowe', 0, 0, '150zł', 'photos/myszki_klawiatury/klawiatura9.png', 1, 'Logitech K120 to klasyczna klawiatura przewodowa, idealna do codziennego użytku biurowego. Ergonomiczny kształt i niska konstrukcja klawiszy zapewniają wygodę podczas długotrwałej pracy. Klawiatura jest odporna na zalania, co zwiększa jej trwałość i bezpieczeństwo. Dzięki standardowemu układowi klawiszy jest łatwa w obsłudze i intuicyjna. Logitech K120 to solidny wybór dla osób szukających prostoty i niezawodności w rozsądnej cenie.'),

(20, 'Mysz', 'Razer', 'Naga X', 'Bezprzewodowe', 1, 16, '300zł', 'photos/myszki_klawiatury/mysz11.png', 1, 'Razer Naga X to bezprzewodowa mysz stworzona z myślą o graczach MMO, posiadająca aż 16 programowalnych przycisków. Dzięki temu użytkownik może przypisać kluczowe funkcje i makra, co znacznie ułatwia grę. Ergonomiczny kształt i lekka konstrukcja sprawiają, że mysz idealnie leży w dłoni. Wysoka czułość sensora optycznego umożliwia precyzyjne śledzenie ruchów. Podświetlenie RGB dodaje efektowności i pozwala na personalizację wizualną, dostosowaną do indywidualnych preferencji użytkownika.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `smartfony`
--

CREATE TABLE `smartfony` (
  `id` int(11) NOT NULL,
  `marka` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `procesor` varchar(50) DEFAULT NULL,
  `pamiec_RAM` varchar(10) DEFAULT NULL,
  `pamiec_wewnetrzna` varchar(10) DEFAULT NULL,
  `aparat` varchar(20) DEFAULT NULL,
  `zoom_kamery` varchar(20) DEFAULT NULL,
  `bateria` varchar(10) DEFAULT NULL,
  `system_operacyjny` varchar(20) DEFAULT NULL,
  `przekatna_ekranu` varchar(20) DEFAULT NULL,
  `czestotliwosc_odswiezania` varchar(20) DEFAULT NULL,
  `rozdzielczosc_ekranu` varchar(20) DEFAULT NULL,
  `aparat_przod` varchar(20) DEFAULT NULL,
  `czytnik_linii_papilarnych` varchar(20) DEFAULT NULL,
  `zlacza` varchar(20) DEFAULT NULL,
  `kolor` varchar(20) DEFAULT NULL,
  `wysokosc` varchar(20) DEFAULT NULL,
  `szerokosc` varchar(20) DEFAULT NULL,
  `grubosc` varchar(20) DEFAULT NULL,
  `waga` varchar(20) DEFAULT NULL,
  `gwarancja` varchar(20) DEFAULT NULL,
  `cena` varchar(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT NULL,
  `opis` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartfony`
--

INSERT INTO `smartfony` (`id`, `marka`, `model`, `procesor`, `pamiec_RAM`, `pamiec_wewnetrzna`, `aparat`, `zoom_kamery`, `bateria`, `system_operacyjny`, `przekatna_ekranu`, `czestotliwosc_odswiezania`, `rozdzielczosc_ekranu`, `aparat_przod`, `czytnik_linii_papilarnych`, `zlacza`, `kolor`, `wysokosc`, `szerokosc`, `grubosc`, `waga`, `gwarancja`, `cena`, `photo`, `isSale`, `opis`) VALUES
(1, 'Samsung', 'Galaxy S21', 'Exynos 2100', '8GB', '128GB', '108MP', '30x', '4000mAh', 'Android', '6.2"', '120Hz', '2400x1080', '10MP', 'Tak', 'USB-C', 'Fantomowa Szarość', '151.7mm', '71.2mm', '7.9mm', '169g', '24 miesiące', '1500zł', 'photos/smartfony/smartfon1.png', 1, 'Samsung Galaxy S21 oferuje nowoczesny procesor Exynos 2100 i 8GB RAM, co zapewnia szybkie i płynne działanie. Aparat o rozdzielczości 108MP pozwala na robienie szczegółowych zdjęć, a 30-krotne przybliżenie zwiększa możliwości fotografowania. Dzięki wyświetlaczowi 6.2" z odświeżaniem 120Hz, użytkownicy mogą cieszyć się wyrazistym obrazem i płynnym przewijaniem. Bateria o pojemności 4000mAh zapewnia wystarczający czas pracy na jednym ładowaniu. Urządzenie posiada elegancki design w kolorze fantomowej szarości.'),

(2, 'Apple', 'iPhone 13', 'A15 Bionic', '6GB', '128GB', '12MP', '5x', '3240mAh', 'iOS', '6.1"', '60Hz', '2532x1170', '12MP', 'Tak', 'Lightning', 'Niebieski', '146.7mm', '71.5mm', '7.65mm', '174g', '12 miesięcy', '3000zł', 'photos/smartfony/smartfon2.png', 0, 'Apple iPhone 13 napędza szybki procesor A15 Bionic, który zapewnia płynne działanie i wydajność. 6GB RAM i 128GB pamięci pozwalają na przechowywanie wielu plików i aplikacji. Aparat 12MP umożliwia robienie wyraźnych zdjęć z pięciokrotnym zoomem optycznym. Wyświetlacz 6.1" o wysokiej rozdzielczości i odświeżaniu 60Hz zapewnia wyraźny i płynny obraz. Bateria 3240mAh zapewnia długotrwałe działanie.'),

(3, 'Xiaomi', 'Mi 11', 'Snapdragon 888', '8GB', '256GB', '108MP', '50x', '4600mAh', 'Android', '6.81"', '120Hz', '3200x1440', '20MP', 'Tak', 'USB-C', 'Biały', '164.3mm', '74.6mm', '8.06mm', '196g', '24 miesiące', '6000zł', 'photos/smartfony/smartfon3.png', 1, 'Xiaomi Mi 11 to zaawansowany smartfon z procesorem Snapdragon 888 i 8GB RAM, co gwarantuje szybką i płynną pracę. Posiada 108MP aparat oraz 50-krotny zoom, pozwalający uchwycić każdy detal. Wyświetlacz 6.81" z rozdzielczością 3200x1440 i odświeżaniem 120Hz zapewnia doskonałą jakość obrazu. Bateria 4600mAh pozwala na długie korzystanie bez potrzeby ładowania. Wersja w białym kolorze prezentuje się stylowo i elegancko.'),

(4, 'OnePlus', '9 Pro', 'Snapdragon 888', '12GB', '256GB', '48MP', '30x', '4500mAh', 'Android', '6.7"', '120Hz', '3216x1440', '16MP', 'Tak', 'USB-C', 'Zielony', '163.2mm', '73.6mm', '8.7mm', '197g', '24 miesiące', '2000zł', 'photos/smartfony/smartfon4.png', 0, 'OnePlus 9 Pro to smartfon z procesorem Snapdragon 888 i 12GB RAM, który sprosta wymaganiom nawet zaawansowanych użytkowników. Wyposażony w aparat 48MP z 30-krotnym zoomem optycznym, doskonale nadaje się do fotografii. Ekran 6.7" z odświeżaniem 120Hz zapewnia płynność i wysoką jakość obrazu. Bateria o pojemności 4500mAh zapewnia długi czas pracy. Zielony kolor obudowy nadaje urządzeniu elegancji.'),

(5, 'Google', 'Pixel 5', 'Snapdragon 765G', '8GB', '128GB', '12.2MP', '10x', '4080mAh', 'Android', '6.0"', '90Hz', '2340x1080', '8MP', 'Tak', 'USB-C', 'Czarny', '144.7mm', '70.4mm', '8mm', '151g', '12 miesięcy', '8000zł', 'photos/smartfony/smartfon5.png', 1, 'Google Pixel 5 z procesorem Snapdragon 765G i 8GB RAM oferuje płynne działanie i wydajność. Jego aparat o rozdzielczości 12.2MP z 10-krotnym zoomem jest idealny do zdjęć o wysokiej jakości. Wyświetlacz 6.0" z odświeżaniem 90Hz oferuje płynny obraz i wygodę użytkowania. Bateria 4080mAh wystarcza na długie godziny użytkowania. Klasyczny czarny kolor dodaje urządzeniu elegancji.'),

(6, 'Huawei', 'P40 Pro', 'Kirin 990', '8GB', '256GB', '50MP', '50x', '4200mAh', 'Android', '6.58"', '90Hz', '2640x1200', '32MP', 'Tak', 'USB-C', 'Srebrny', '158.2mm', '72.6mm', '9mm', '209g', '24 miesiące', '1400zł', 'photos/smartfony/smartfon6.png', 0, 'Huawei P40 Pro z procesorem Kirin 990 i 8GB RAM zapewnia wysoką wydajność i sprawną pracę. Wyposażony w aparat 50MP z 50-krotnym zoomem, pozwala na robienie szczegółowych zdjęć. Ekran 6.58" z odświeżaniem 90Hz oferuje płynny obraz o wysokiej jakości. Bateria 4200mAh zapewnia długi czas pracy na jednym ładowaniu. Srebrny kolor dodaje smartfonowi elegancki wygląd.'),

(7, 'Sony', 'Xperia 1 III', 'Snapdragon 888', '12GB', '256GB', '12MP', '70x', '4500mAh', 'Android', '6.5"', '120Hz', '3840x1644', '8MP', 'Tak', 'USB-C', 'Fioletowy', '165mm', '71mm', '8.2mm', '186g', '24 miesiące', '2000zł', 'photos/smartfony/smartfon7.png', 1, 'Sony Xperia 1 III to smartfon z wysokiej jakości procesorem Snapdragon 888 i 12GB RAM, oferujący doskonałą wydajność. Aparat 12MP z 70-krotnym zoomem optycznym umożliwia robienie zdjęć o wysokiej jakości. Wyświetlacz 6.5" z rozdzielczością 3840x1644 i odświeżaniem 120Hz zapewnia niezwykłą jakość obrazu. Bateria 4500mAh wystarcza na długie godziny użytkowania. Fioletowa obudowa nadaje mu oryginalny wygląd.'),

(8, 'Oppo', 'Find X3 Pro', 'Snapdragon 888', '12GB', '256GB', '50MP', '60x', '4500mAh', 'Android', '6.7"', '120Hz', '3216x1440', '32MP', 'Tak', 'USB-C', 'Czarny', '163.6mm', '74mm', '8.26mm', '193g', '24 miesiące', '7000zł', 'photos/smartfony/smartfon8.png', 0, 'Oppo Find X3 Pro to elegancki smartfon z procesorem Snapdragon 888 i 12GB RAM, idealny do zaawansowanych zadań. Aparat 50MP z 60-krotnym zoomem pozwala na fotografowanie z niezwykłą precyzją. Wyświetlacz 6.7" z odświeżaniem 120Hz oferuje doskonały obraz i płynność działania. Bateria o pojemności 4500mAh zapewnia długotrwałe użytkowanie bez konieczności częstego ładowania. Klasyczny czarny kolor podkreśla elegancki styl urządzenia.'),

(9, 'Motorola', 'Edge 20 Pro', 'Snapdragon 870', '12GB', '256GB', '108MP', '50x', '4500mAh', 'Android', '6.7"', '144Hz', '2400x1080', '32MP', 'Tak', 'USB-C', 'Biały', '163mm', '76mm', '8mm', '185g', '24 miesiące', '3000zł', 'photos/smartfony/smartfon9.png', 1, 'Motorola Edge 20 Pro oferuje szybki procesor Snapdragon 870 i 12GB RAM, zapewniając płynne działanie nawet przy wymagających aplikacjach. Aparat 108MP z 50-krotnym zoomem oferuje wyjątkową jakość zdjęć. Wyświetlacz 6.7" o częstotliwości 144Hz sprawia, że obraz jest niezwykle płynny i szczegółowy. Bateria 4500mAh umożliwia długotrwałe użytkowanie bez częstego ładowania. Smartfon dostępny jest w eleganckim białym kolorze.'),

(10, 'Asus', 'ROG Phone 5', 'Snapdragon 888', '16GB', '512GB', '64MP', '30x', '6000mAh', 'Android', '6.78"', '144Hz', '2448x1080', '24MP', 'Tak', 'USB-C', 'Czarny', '172.8mm', '77.2mm', '10.3mm', '238g', '24 miesiące', '4000zł', 'photos/smartfony/smartfon10.png', 0, 'Asus ROG Phone 5 z 16GB RAM i Snapdragonem 888 to idealny wybór dla graczy. Posiada aparat 64MP z 30-krotnym zoomem, umożliwiający robienie szczegółowych zdjęć. Ekran 6.78" z odświeżaniem 144Hz zapewnia niezwykle płynny obraz podczas gry. Bateria o pojemności 6000mAh gwarantuje długi czas pracy bez potrzeby częstego ładowania. Czerń obudowy nadaje urządzeniu agresywny i elegancki wygląd.'),
(11, 'Realme', 'GT', 'Snapdragon 888', '12GB', '256GB', '64MP', '20x', '4500mAh', 'Android', '6.43"', '120Hz', '2400x1080', '16MP', 'Tak', 'USB-C', 'Żółty', '158.5mm', '73.3mm', '8.4mm', '186g', '24 miesiące', '2000zł', 'photos/smartfony/smartfon11.png', 1, 'Realme GT to nowoczesny smartfon z procesorem Snapdragon 888 i 12GB RAM, zapewniający wyjątkową płynność działania. Aparat o rozdzielczości 64MP oraz 20-krotny zoom pozwalają na robienie wysokiej jakości zdjęć. Ekran o przekątnej 6.43" z częstotliwością odświeżania 120Hz sprawia, że obraz jest ostry i płynny. Pojemna bateria 4500mAh gwarantuje długie godziny użytkowania bez potrzeby ładowania. Smartfon wyróżnia się odważnym żółtym kolorem, który przyciąga uwagę.'),

(12, 'Nokia', 'G50', 'Snapdragon 480', '4GB', '128GB', '48MP', '5x', '5000mAh', 'Android', '6.82"', '60Hz', '1640x720', '8MP', 'Nie', 'USB-C', 'Niebieski', '173.8mm', '77.7mm', '8.9mm', '220g', '12 miesięcy', '1050zł', 'photos/smartfony/smartfon12.png', 0, 'Nokia G50 to solidny telefon z procesorem Snapdragon 480 i 4GB RAM, idealny do codziennego użytku. Aparat 48MP z 5-krotnym zoomem pozwala na uzyskanie dobrych zdjęć. Wyświetlacz 6.82" o częstotliwości odświeżania 60Hz oferuje jasny obraz i komfort użytkowania. Dzięki baterii o pojemności 5000mAh, smartfon działa długo na jednym ładowaniu. Niebieski kolor dodaje urządzeniu elegancji i stylu.'),

(13, 'Samsung', 'Galaxy Z Fold 3', 'Snapdragon 888', '12GB', '512GB', '12MP', '20x', '4400mAh', 'Android', '7.6"', '120Hz', '2208x1768', '10MP', 'Tak', 'USB-C', 'Czarny', '158.2mm', '128.1mm', '6.4mm', '271g', '24 miesiące', '1050zł', 'photos/smartfony/smartfon13.png', 1, 'Samsung Galaxy Z Fold 3 to innowacyjny smartfon z rozkładanym ekranem o przekątnej 7.6", zapewniający unikalne wrażenia użytkowe. Procesor Snapdragon 888 i 12GB RAM zapewniają wysoką wydajność. Aparat 12MP z 20-krotnym zoomem pozwala uchwycić szczegóły w jakości premium. Bateria o pojemności 4400mAh wystarcza na długie godziny użytkowania. Klasyczny czarny kolor nadaje mu profesjonalny wygląd.'),

(14, 'Xiaomi', 'Redmi Note 10 Pro', 'Snapdragon 732G', '6GB', '128GB', '108MP', '10x', '5020mAh', 'Android', '6.67"', '120Hz', '2400x1080', '16MP', 'Tak', 'USB-C', 'Niebieski', '164mm', '76.5mm', '8.1mm', '193g', '12 miesięcy', '3000zł', 'photos/smartfony/smartfon14.png', 0, 'Xiaomi Redmi Note 10 Pro oferuje 108MP aparat oraz 10-krotny zoom, umożliwiając wykonanie doskonałych zdjęć. Procesor Snapdragon 732G i 6GB RAM zapewniają sprawne działanie i płynność systemu. Wyświetlacz 6.67" z odświeżaniem 120Hz oferuje wyjątkową jakość obrazu. Bateria o pojemności 5020mAh pozwala na długotrwałe użytkowanie bez ładowania. Smartfon dostępny jest w eleganckim niebieskim kolorze.'),

(15, 'Google', 'Pixel 6', 'Google Tensor', '8GB', '128GB', '50MP', '7x', '4614mAh', 'Android', '6.4"', '90Hz', '2400x1080', '8MP', 'Tak', 'USB-C', 'Koralowy', '158.6mm', '74.8mm', '8.9mm', '207g', '24 miesiące', '4000zł', 'photos/smartfony/smartfon15.png', 1, 'Google Pixel 6 posiada procesor Google Tensor i 8GB RAM, oferując płynne działanie i wysoką wydajność. Aparat 50MP z 7-krotnym zoomem pozwala na robienie świetnych zdjęć. Wyświetlacz 6.4" z odświeżaniem 90Hz zapewnia wyrazisty obraz. Bateria 4614mAh gwarantuje długotrwałe użytkowanie. Koralowy kolor dodaje unikalnego charakteru temu urządzeniu.'),

(16, 'Huawei', 'Mate 40 Pro', 'Kirin 9000', '8GB', '256GB', '50MP', '50x', '4400mAh', 'Android', '6.76"', '90Hz', '2772x1344', '13MP', 'Tak', 'USB-C', 'Srebrny', '162.9mm', '75.5mm', '9.1mm', '212g', '24 miesiące', '1000zł', 'photos/smartfony/smartfon16.png', 0, 'Huawei Mate 40 Pro z procesorem Kirin 9000 i 8GB RAM gwarantuje wysoką wydajność i płynne działanie. Aparat 50MP z 50-krotnym zoomem zapewnia szczegółowe zdjęcia o wysokiej jakości. Wyświetlacz 6.76" z odświeżaniem 90Hz sprawia, że obraz jest wyjątkowo płynny. Bateria 4400mAh pozwala na długie godziny użytkowania. Srebrny kolor nadaje smartfonowi elegancki i nowoczesny wygląd.'),

(17, 'Sony', 'Xperia 5 III', 'Snapdragon 888', '8GB', '128GB', '12MP', '50x', '4500mAh', 'Android', '6.1"', '120Hz', '2520x1080', '8MP', 'Tak', 'USB-C', 'Czarny', '157mm', '68mm', '8.2mm', '168g', '24 miesiące', '1000zł', 'photos/smartfony/smartfon17.png', 1, 'Sony Xperia 5 III to kompaktowy smartfon z procesorem Snapdragon 888 i 8GB RAM, oferujący wysoką wydajność. Aparat 12MP z 50-krotnym zoomem umożliwia robienie szczegółowych zdjęć. Wyświetlacz 6.1" z odświeżaniem 120Hz oferuje doskonałą jakość obrazu. Bateria o pojemności 4500mAh zapewnia długotrwałe działanie. Czarny kolor obudowy nadaje mu elegancki i minimalistyczny wygląd.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `smartwatche`
--

CREATE TABLE `smartwatche` (
  `id` int(11) NOT NULL,
  `marka` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `ekran` varchar(20) DEFAULT NULL,
  `pamiec_RAM` varchar(20) DEFAULT NULL,
  `rozdzielczosc_wyswietlacza` varchar(20) DEFAULT NULL,
  `typ_paska` varchar(50) DEFAULT NULL,
  `kolor_paska` varchar(50) DEFAULT NULL,
  `rozmiar_koperty` varchar(20) DEFAULT NULL,
  `grubosc` varchar(20) DEFAULT NULL,
  `waga` varchar(20) DEFAULT NULL,
  `gwarancja` varchar(20) DEFAULT NULL,
  `bateria` varchar(10) DEFAULT NULL,
  `system_operacyjny` varchar(20) DEFAULT NULL,
  `GPS` tinyint(1) DEFAULT NULL,
  `monitor_snu` tinyint(1) DEFAULT NULL,
  `wodoodpornosc` varchar(10) DEFAULT NULL,
  `cena` varchar(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT NULL,
  `opis` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartwatche`
--

INSERT INTO `smartwatche` (`id`, `marka`, `model`, `ekran`, `pamiec_RAM`, `rozdzielczosc_wyswietlacza`, `typ_paska`, `kolor_paska`, `rozmiar_koperty`, `grubosc`, `waga`, `gwarancja`, `bateria`, `system_operacyjny`, `GPS`, `monitor_snu`, `wodoodpornosc`, `cena`, `photo`, `isSale`, `opis`) VALUES
(1, 'Apple', 'Watch Series 7', 'OLED', '1GB', '396x484', 'Silikonowy', 'Czarny', '41mm', '10.7mm', '32g', '12 miesięcy', '300mAh', 'watchOS', 1, 1, '5ATM', '600zł', 'photos/smartwatche/smartwatch1.png', 0, 'Apple Watch Series 7 to smartwatch z wyświetlaczem OLED, który zapewnia doskonałą jakość obrazu. Wyposażony w 1GB RAM i ekran 396x484, jest idealny do codziennego użytku. Posiada również funkcję odporności na wodę (5ATM), co sprawia, że jest odporny na deszcz i zanurzenie w wodzie. Z baterią 300mAh, smartwatch może działać przez cały dzień bez konieczności ładowania. Czarny silikonowy pasek dodaje mu elegancji i sprawia, że jest wygodny w noszeniu.'),

(2, 'Samsung', 'Galaxy Watch 4', 'Super AMOLED', '1.5GB', '450x450', 'Fluoroelastomer', 'Srebrny', '44mm', '9.8mm', '30g', '24 miesiące', '361mAh', 'Wear OS', 1, 1, 'IP68', '700zł', 'photos/smartwatche/smartwatch2.png', 1, 'Samsung Galaxy Watch 4 to smartwatch z wyświetlaczem Super AMOLED o rozdzielczości 450x450, który oferuje wyjątkową jakość obrazu. Z 1.5GB RAM i baterią 361mAh, zapewnia płynne działanie przez cały dzień. Posiada również klasę wodoodporności IP68, co oznacza, że jest odporny na pył i zanurzenie w wodzie. Srebrny fluoroelastomerowy pasek jest trwały i wygodny, idealny na każdą okazję. Dzięki Wear OS, użytkownik ma dostęp do szerokiego wyboru aplikacji.'),

(3, 'Garmin', 'Forerunner 945', 'MIP', '1GB', '240x240', 'Silikonowy', 'Czarny', '47mm', '13.7mm', '50g', '12 miesięcy', '500mAh', 'Garmin OS', 1, 1, '5ATM', '650zł', 'photos/smartwatche/smartwatch3.png', 0, 'Garmin Forerunner 945 to smartwatch stworzony z myślą o aktywnych użytkownikach, oferujący wyświetlacz MIP o rozdzielczości 240x240. Dzięki 1GB RAM i baterii 500mAh, urządzenie zapewnia długi czas pracy i płynność działania. Posiada funkcję wodoodporności (5ATM), co sprawia, że jest idealny do sportów wodnych. Czarny silikonowy pasek zapewnia wygodę podczas noszenia, a Garmin OS oferuje wiele funkcji fitnessowych. Dzięki solidnej konstrukcji, smartwatch jest odporny na warunki atmosferyczne.'),

(4, 'Fitbit', 'Versa 3', 'AMOLED', '512MB', '336x336', 'Silikonowy', 'Różowy', '40mm', '12.2mm', '28g', '24 miesiące', '270mAh', 'Fitbit OS', 1, 1, 'IP68', '600zł', 'photos/smartwatche/smartwatch4.png', 1, 'Fitbit Versa 3 to smartwatch z wyświetlaczem AMOLED, który oferuje żywe kolory i doskonałą jakość obrazu. Wyposażony w 512MB RAM i baterię 270mAh, zapewnia wygodną i długotrwałą pracę. Dzięki wodoodporności IP68, smartwatch jest odporny na deszcz oraz zanurzenie w wodzie. Różowy silikonowy pasek dodaje mu subtelnego, kobiecego wyglądu. Fitbit OS oferuje szeroką gamę funkcji zdrowotnych i fitnessowych, które ułatwiają codzienne monitorowanie aktywności.'),

(5, 'Huawei', 'Watch GT 2 Pro', 'AMOLED', '32MB', '454x454', 'Skórzany', 'Brązowy', '46mm', '11.4mm', '52g', '12 miesięcy', '455mAh', 'LiteOS', 1, 1, '5ATM', '500zł', 'photos/smartwatche/smartwatch5.png', 0, 'Huawei Watch GT 2 Pro to elegancki smartwatch z wyświetlaczem AMOLED o rozdzielczości 454x454. Jego 32MB pamięci RAM i bateria 455mAh zapewniają długi czas pracy na jednym ładowaniu. Z funkcją wodoodporności 5ATM, urządzenie jest odporne na deszcz i zanurzenie w wodzie. Brązowy skórzany pasek dodaje klasy i luksusowego wyglądu. LiteOS zapewnia proste i funkcjonalne interfejsy, idealne do codziennego użytkowania.'),
(6, 'Amazfit', 'GTR 3 Pro', 'AMOLED', '1GB', '480x480', 'Skórzany', 'Szary', '46mm', '10.8mm', '40g', '24 miesiące', '450mAh', 'Zepp OS', 1, 1, '5ATM', '200zł', 'photos/smartwatche/smartwatch6.png', 1, 'Amazfit GTR 3 Pro to smartwatch z wyświetlaczem AMOLED o rozdzielczości 480x480, który zapewnia wyraziste kolory i szczegółowy obraz. Posiada 1GB RAM i baterię 450mAh, co gwarantuje długotrwałe użytkowanie. Dzięki wodoodporności 5ATM jest odporny na deszcz i pływanie. Szary skórzany pasek daje mu elegancki i stylowy wygląd. Zepp OS oferuje intuicyjny interfejs z wieloma funkcjami zdrowotnymi i fitnessowymi.'),

(7, 'Fossil', 'Gen 6', 'AMOLED', '1GB', '416x416', 'Skórzany', 'Brązowy', '44mm', '12mm', '43g', '24 miesiące', '400mAh', 'Wear OS', 1, 1, '3ATM', '1600zł', 'photos/smartwatche/smartwatch7.png', 0, 'Fossil Gen 6 to smartwatch z wyświetlaczem AMOLED o rozdzielczości 416x416, który oferuje wyraźny obraz i wysoką jakość kolorów. Wyposażony w 1GB RAM i baterię 400mAh, zapewnia płynne działanie przez cały dzień. Posiada odporność na wodę (3ATM), co sprawia, że jest odporny na deszcz. Brązowy skórzany pasek nadaje mu klasyczny i elegancki wygląd. Wear OS umożliwia dostęp do szerokiego zakresu aplikacji i funkcji.'),

(8, 'Suunto', '7', 'AMOLED', '1GB', '454x454', 'Silikonowy', 'Czarny', '50mm', '15.3mm', '70g', '24 miesiące', '450mAh', 'Wear OS', 1, 1, 'IP68', '700zł', 'photos/smartwatche/smartwatch8.png', 1, 'Suunto 7 to smartwatch wyposażony w wyświetlacz AMOLED o rozdzielczości 454x454, który oferuje doskonałą jakość obrazu. Posiada 1GB RAM i baterię 450mAh, co zapewnia długą żywotność na jednym ładowaniu. Dzięki klasie wodoodporności IP68 jest odporny na pył i zanurzenie w wodzie. Czarny silikonowy pasek zapewnia wygodę i trwałość. Wear OS pozwala na pełną personalizację oraz dostęp do wielu aplikacji fitnessowych i zdrowotnych.'),

(9, 'TicWatch', 'Pro 3', 'Dual-layer Display', '1GB', '454x454', 'Silikonowy', 'Szary', '47mm', '12.2mm', '41g', '24 miesiące', '415mAh', 'Wear OS', 1, 1, 'IP68', '900zł', 'photos/smartwatche/smartwatch9.png', 0, 'TicWatch Pro 3 to smartwatch z innowacyjnym wyświetlaczem Dual-layer Display, który umożliwia oszczędność energii i doskonałą widoczność nawet w pełnym słońcu. Z 1GB RAM i baterią 415mAh zapewnia płynne działanie przez długi czas. Jest odporny na wodę dzięki klasie IP68, co pozwala na użytkowanie w trudniejszych warunkach. Szary silikonowy pasek jest wygodny i odporny na uszkodzenia. Wear OS umożliwia łatwy dostęp do licznych aplikacji i funkcji zdrowotnych.'),

(10, 'Xiaomi', 'Mi Watch', 'AMOLED', '512MB', '360x360', 'Silikonowy', 'Czarny', '46mm', '11.8mm', '32g', '12 miesięcy', '420mAh', 'LiteOS', 1, 1, '5ATM', '400zł', 'photos/smartwatche/smartwatch10.png', 1, 'Xiaomi Mi Watch to smartwatch z wyświetlaczem AMOLED o rozdzielczości 360x360, który oferuje wyrazisty obraz i świetną jakość kolorów. Wyposażony w 512MB RAM i baterię 420mAh, zapewnia długotrwałe użytkowanie bez konieczności częstego ładowania. Posiada klasę wodoodporności 5ATM, co sprawia, że jest odporny na wodę i deszcz. Czarny silikonowy pasek jest lekki i komfortowy. LiteOS oferuje prosty interfejs z funkcjami monitorowania aktywności fizycznej.'),

(11, 'Polar', 'Vantage V2', 'MIP', '64MB', '240x240', 'Silikonowy', 'Czerwony', '47mm', '12.8mm', '52g', '12 miesięcy', '346mAh', 'Polar OS', 1, 1, 'IP68', '500zł', 'photos/smartwatche/smartwatch11.png', 0, 'Polar Vantage V2 to smartwatch z wyświetlaczem MIP o rozdzielczości 240x240, który oferuje dużą czytelność w każdych warunkach oświetleniowych. Posiada 64MB RAM i baterię 346mAh, co zapewnia solidną żywotność urządzenia. Dzięki wodoodporności IP68 jest odporny na warunki atmosferyczne. Czerwony silikonowy pasek dodaje energicznego wyglądu i komfortu. Polar OS oferuje funkcje dedykowane dla sportowców, takie jak monitorowanie tętna i aktywności.'),

(12, 'Withings', 'ScanWatch', 'PMOLED', '64MB', '240x240', 'Stalowy', 'Czarny', '38mm', '13.7mm', '58g', '24 miesiące', '250mAh', 'Withings OS', 0, 1, '5ATM', '700zł', 'photos/smartwatche/smartwatch12.png', 1, 'Withings ScanWatch to smartwatch z wyświetlaczem PMOLED o rozdzielczości 240x240, który zapewnia dobrą widoczność i oszczędność energii. Posiada 64MB RAM i baterię 250mAh, co zapewnia długi czas pracy na jednym ładowaniu. Jest odporny na wodę dzięki klasie wodoodporności 5ATM, co czyni go idealnym do pływania. Stalowa koperta i czarny pasek nadają mu elegancki i nowoczesny wygląd. Withings OS oferuje funkcje monitorowania zdrowia, takie jak pomiar tętna i aktywności fizycznej.'),

(13, 'Realme', 'Watch S Pro', 'AMOLED', '512MB', '454x454', 'Skórzany', 'Brązowy', '46mm', '11.1mm', '63g', '12 miesięcy', '420mAh', 'Realme OS', 1, 1, '5ATM', '400zł', 'photos/smartwatche/smartwatch13.png', 0, 'Realme Watch S Pro to smartwatch z wyświetlaczem AMOLED o rozdzielczości 454x454, który zapewnia doskonałą jakość obrazu. Z 512MB RAM i baterią 420mAh, urządzenie gwarantuje długi czas działania. Posiada klasę wodoodporności 5ATM, co sprawia, że jest odporny na zanurzenie w wodzie. Brązowy skórzany pasek dodaje mu elegancji i wygody. Realme OS oferuje funkcje zdrowotne, w tym monitorowanie aktywności fizycznej i snu.'),

(14, 'Oppo', 'Watch 2', 'AMOLED', '1GB', '402x476', 'Silikonowy', 'Czarny', '46mm', '12mm', '52g', '24 miesiące', '510mAh', 'Wear OS', 1, 1, '5ATM', '500zł', 'photos/smartwatche/smartwatch14.png', 1, 'Oppo Watch 2 to smartwatch z wyświetlaczem AMOLED o rozdzielczości 402x476, który oferuje doskonałą jakość obrazu. Wyposażony w 1GB RAM i baterię 510mAh, zapewnia długi czas pracy na jednym ładowaniu. Jest wodoodporny (5ATM), dzięki czemu można go używać podczas pływania. Czarny silikonowy pasek jest komfortowy i odporny na uszkodzenia. Wear OS zapewnia szeroką gamę aplikacji do zarządzania zdrowiem i aktywnością fizyczną.'),

(15, 'Huawei', 'Watch Fit', 'AMOLED', '512MB', '430x430', 'Silikonowy', 'Czarny', '46mm', '10.7mm', '21g', '12 miesięcy', '180mAh', 'LiteOS', 0, 1, '5ATM', '250zł', 'photos/smartwatche/smartwatch15.png', 1, 'Huawei Watch Fit to smartwatch z wyświetlaczem AMOLED o rozdzielczości 430x430, który zapewnia doskonałą jakość obrazu i wyraziste kolory. Posiada 512MB RAM i baterię 180mAh, zapewniając długi czas pracy na jednym ładowaniu. Jest odporny na wodę (5ATM), co sprawia, że nadaje się do pływania i ćwiczeń. Czarny silikonowy pasek gwarantuje wygodę noszenia. LiteOS zapewnia łatwy dostęp do funkcji monitorowania aktywności fizycznej.'),
(16, 'OnePlus', 'Watch', 'AMOLED', '512MB', '454x454', 'Fluoroelastomer', 'Czarny', '46mm', '10.9mm', '45g', '24 miesiące', '402mAh', 'OnePlus OS', 1, 1, '5ATM', '600zł', 'photos/smartwatche/smartwatch16.png', 1, 'OnePlus Watch to smartwatch z wyświetlaczem AMOLED o rozdzielczości 454x454, oferujący wyraźne kolory i wysoką jakość obrazu. Wyposażony w 512MB RAM i baterię 402mAh, zapewnia długotrwałe użytkowanie. Jego odporność na wodę (5ATM) czyni go idealnym do pływania i ćwiczeń na świeżym powietrzu. Czarny fluoroelastomerowy pasek zapewnia wygodę i trwałość. OnePlus OS oferuje funkcje monitorowania zdrowia i aktywności fizycznej.'),

(17, 'Samsung', 'Galaxy Watch Active 2', 'Super AMOLED', '768MB', '360x360', 'Silikonowy', 'Różowy', '40mm', '10.9mm', '26g', '12 miesięcy', '247mAh', 'Tizen OS', 1, 1, 'IP68', '600zł', 'photos/smartwatche/smartwatch17.png', 0, 'Samsung Galaxy Watch Active 2 to smartwatch z wyświetlaczem Super AMOLED o rozdzielczości 360x360, zapewniający doskonałą jakość obrazu. Posiada 768MB RAM i baterię 247mAh, co gwarantuje długie użytkowanie bez częstych ładowań. Dzięki klasie wodoodporności IP68, jest odporny na deszcz i zanurzenie w wodzie. Różowy silikonowy pasek jest lekki i wygodny. Tizen OS oferuje szeroką gamę funkcji fitnessowych i zdrowotnych.'),

(18, 'Amazfit', 'T-Rex Pro', 'AMOLED', '256MB', '360x360', 'Silikonowy', 'Niebieski', '47mm', '13.5mm', '59g', '24 miesiące', '390mAh', 'Zepp OS', 1, 1, '10ATM', '600zł', 'photos/smartwatche/smartwatch18.png', 1, 'Amazfit T-Rex Pro to smartwatch z wyświetlaczem AMOLED o rozdzielczości 360x360, który zapewnia wysoką jakość obrazu i świetną widoczność w każdych warunkach. Posiada 256MB RAM i baterię 390mAh, co pozwala na długie użytkowanie. Dzięki klasie wodoodporności 10ATM, jest odporny na ekstremalne warunki i głębokie zanurzenie w wodzie. Niebieski silikonowy pasek zapewnia komfort i trwałość. Zepp OS oferuje funkcje zdrowotne i fitnessowe, idealne dla aktywnych użytkowników.'),

(19, 'Garmin', 'Fenix 6 Pro', 'MIP', '64MB', '260x260', 'Silikonowy', 'Czarny', '47mm', '14.7mm', '83g', '12 miesięcy', '510mAh', 'Garmin OS', 1, 1, '10ATM', '690zł', 'photos/smartwatche/smartwatch19.png', 0, 'Garmin Fenix 6 Pro to smartwatch z wyświetlaczem MIP o rozdzielczości 260x260, który zapewnia świetną widoczność w każdych warunkach, szczególnie podczas intensywnych aktywności na świeżym powietrzu. Wyposażony w 64MB RAM i baterię 510mAh, oferuje długą żywotność na jednym ładowaniu. Dzięki wodoodporności 10ATM, jest idealny do pływania i nurkowania. Czarny silikonowy pasek zapewnia wygodę noszenia. Garmin OS oferuje funkcje nawigacyjne i monitorujące zdrowie, dostosowane do sportowców i podróżników.'),

(20, 'Mobvoi', 'TicWatch E3', 'LCD', '1GB', '360x360', 'Silikonowy', 'Żółty', '44mm', '12.6mm', '32g', '12 miesięcy', '380mAh', 'Wear OS', 1, 1, 'IP68', '400zł', 'photos/smartwatche/smartwatch20.png', 1, 'Mobvoi TicWatch E3 to smartwatch z wyświetlaczem LCD o rozdzielczości 360x360, zapewniający wyraźny obraz w różnych warunkach. Z 1GB RAM i baterią 380mAh, zapewnia długie działanie na jednym ładowaniu. Posiada klasę wodoodporności IP68, co pozwala na korzystanie z niego w deszczu i podczas pływania. Żółty silikonowy pasek jest lekki i wygodny. Wear OS zapewnia dostęp do aplikacji zdrowotnych i fitnessowych, które pomagają w codziennej aktywności.');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `telewizory`
--

CREATE TABLE `telewizory` (
  `id` int(11) NOT NULL,
  `marka` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `rozdzielczosc` varchar(20) DEFAULT NULL,
  `przekatna` varchar(10) DEFAULT NULL,
  `technologia_panelu` varchar(20) DEFAULT NULL,
  `czestotliwosc_odswiezania` varchar(30) DEFAULT NULL,
  `glosniki` varchar(30) DEFAULT NULL,
  `kolor_obudowy` varchar(30) DEFAULT NULL,
  `szerokosc` varchar(30) DEFAULT NULL,
  `wysokosc` varchar(30) DEFAULT NULL,
  `waga` varchar(30) DEFAULT NULL,
  `gwarancja` varchar(30) DEFAULT NULL,
  `zlacza` varchar(100) DEFAULT NULL,
  `HDR` tinyint(1) DEFAULT NULL,
  `Smart_TV` tinyint(1) DEFAULT NULL,
  `liczba_portow_HDMI` int(11) DEFAULT NULL,
  `cena` varchar(20) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `isSale` tinyint(1) DEFAULT NULL,
  `opis` varchar(700) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `telewizory`
--

INSERT INTO `telewizory` (`id`, `marka`, `model`, `rozdzielczosc`, `przekatna`, `technologia_panelu`, `czestotliwosc_odswiezania`, `glosniki`, `kolor_obudowy`, `szerokosc`, `wysokosc`, `waga`, `gwarancja`, `zlacza`, `HDR`, `Smart_TV`, `liczba_portow_HDMI`, `cena`, `photo`, `isSale`, `opis`) VALUES
(1, 'Samsung', 'QLED Q60A', '4K UHD', '55"', 'QLED', '60Hz', '20W', 'Czarny', '123cm', '71cm', '17.2kg', '24 miesiące', 'HDMI, USB, LAN, Wi-Fi', 1, 1, 3, '1500zł', 'photos/telewizory/telewizor1.png', 1, 'Samsung QLED Q60A to telewizor o rozdzielczości 4K UHD i 55-calowym ekranie, oferujący wysoką jakość obrazu dzięki technologii QLED. Posiada 60Hz częstotliwość odświeżania, co zapewnia płynność w dynamicznych scenach. Jego głośniki o mocy 20W gwarantują dobrą jakość dźwięku. Jest wyposażony w liczne porty, w tym HDMI, USB, LAN i Wi-Fi, co umożliwia łatwą integrację z innymi urządzeniami. Ten model wyróżnia się eleganckim, czarnym designem, który pasuje do różnych wnętrz.'),

(2, 'LG', 'OLED CX', '4K UHD', '65"', 'OLED', '120Hz', '40W', 'Srebrny', '145cm', '83cm', '25kg', '36 miesięcy', 'HDMI, USB, LAN, Bluetooth', 1, 1, 4, '1000zł', 'photos/telewizory/telewizor2.png', 0, 'LG OLED CX to zaawansowany telewizor z technologią OLED, oferujący wyrazisty obraz w jakości 4K UHD na 65-calowym ekranie. Dzięki 120Hz częstotliwości odświeżania zapewnia wyjątkową płynność w grach i filmach. Głośniki o mocy 40W oferują bogaty dźwięk, a dodatkowe funkcje Bluetooth umożliwiają łatwą łączność z zewnętrznymi urządzeniami. Wbudowane porty HDMI i USB zapewniają wygodę podłączenia do różnych źródeł. Srebrna obudowa tego modelu wpasowuje się w nowoczesne wnętrza.'),

(3, 'Sony', 'Bravia XR A80J', '4K UHD', '55"', 'OLED', '120Hz', '30W', 'Czarny', '122cm', '70cm', '18kg', '24 miesiące', 'HDMI, USB, Wi-Fi, LAN', 1, 1, 4, '2500zł', 'photos/telewizory/telewizor3.png', 1, 'Sony Bravia XR A80J to telewizor OLED 4K UHD o przekątnej 55 cali, który zapewnia wyjątkowy kontrast i żywe kolory. Dzięki 120Hz częstotliwości odświeżania, idealnie nadaje się do oglądania sportów i gier. Jego głośniki o mocy 30W dostarczają pełniejszego dźwięku. Wyposażony w liczne porty HDMI, USB oraz Wi-Fi i LAN, telewizor oferuje szeroką funkcjonalność. Czarna obudowa wpasowuje się w każdy styl wnętrz.'),

(4, 'Philips', 'Ambilight 7500', '4K UHD', '50"', 'LED', '60Hz', '25W', 'Srebrny', '112cm', '65cm', '14.5kg', '24 miesiące', 'HDMI, USB, Wi-Fi', 1, 1, 3, '3500zł', 'photos/telewizory/telewizor4.png', 0, 'Philips Ambilight 7500 to telewizor LED 4K UHD o przekątnej 50 cali, który zapewnia wysoką jakość obrazu i wyjątkowe doświadczenie dzięki technologii Ambilight. Z częstotliwością odświeżania 60Hz jest idealny do oglądania filmów i seriali. Głośniki o mocy 25W zapewniają odpowiednią jakość dźwięku. Z portami HDMI, USB oraz Wi-Fi, użytkownicy mogą łatwo połączyć go z innymi urządzeniami. Srebrna obudowa telewizora pasuje do eleganckich wnętrz.'),

(5, 'TCL', 'C715', '4K UHD', '55"', 'QLED', '60Hz', '20W', 'Szary', '123cm', '71cm', '15.2kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1550zł', 'photos/telewizory/telewizor5.png', 0, 'TCL C715 to telewizor 4K UHD z technologią QLED, oferujący żywe kolory na 55-calowym ekranie. Jego częstotliwość odświeżania 60Hz sprawia, że obraz jest płynny i wyrazisty. Głośniki o mocy 20W oferują odpowiednią jakość dźwięku. Dzięki portom HDMI, USB i LAN, telewizor jest kompatybilny z wieloma urządzeniami. Szara obudowa nadaje mu nowoczesny, subtelny wygląd.'),
(6, 'Samsung', 'The Frame', '4K UHD', '55"', 'QLED', '120Hz', '40W', 'Czarny', '123cm', '70cm', '19kg', '24 miesiące', 'HDMI, USB, LAN, Wi-Fi', 1, 1, 3, '1500zł', 'photos/telewizory/telewizor6.png', 1, 'Samsung The Frame to wyjątkowy telewizor 4K UHD o przekątnej 55 cali, który łączy funkcje telewizora i dzieła sztuki. Wyposażony w technologię QLED i częstotliwość odświeżania 120Hz, zapewnia doskonałą jakość obrazu. Głośniki o mocy 40W oferują pełny dźwięk, a możliwość połączenia z Wi-Fi, HDMI i USB zwiększa jego funkcjonalność. Jego czarna obudowa pasuje do eleganckich wnętrz, a opcja wyświetlania dzieł sztuki w trybie Art Mode nadaje mu unikalny charakter.'),

(7, 'Sony', 'X90J', '4K UHD', '65"', 'LED', '120Hz', '30W', 'Czarny', '145cm', '84cm', '22kg', '24 miesiące', 'HDMI, USB, Wi-Fi', 1, 1, 4, '1700zł', 'photos/telewizory/telewizor7.png', 1, 'Sony X90J to telewizor LED 4K UHD o dużej przekątnej 65 cali, zapewniający niesamowitą jakość obrazu i dźwięku. Z częstotliwością odświeżania 120Hz idealnie sprawdzi się w oglądaniu sportów i filmów akcji. Głośniki o mocy 30W oferują czysty i potężny dźwięk. Dzięki portom HDMI, USB i Wi-Fi łatwo połączyć go z innymi urządzeniami. Czarna obudowa nadaje telewizorowi nowoczesny wygląd, pasujący do każdego wnętrza.'),

(8, 'LG', 'NanoCell 80', '4K UHD', '50"', 'LED', '60Hz', '20W', 'Srebrny', '112cm', '65cm', '13.8kg', '36 miesięcy', 'HDMI, USB, Bluetooth', 1, 1, 3, '2500zł', 'photos/telewizory/telewizor8.png', 0, 'LG NanoCell 80 to telewizor LED o rozdzielczości 4K UHD i przekątnej 50 cali, który zapewnia doskonałą jakość obrazu dzięki technologii NanoCell. Z częstotliwością odświeżania 60Hz jest świetnym wyborem do codziennego oglądania filmów i programów telewizyjnych. Głośniki o mocy 20W oferują solidny dźwięk. Dzięki funkcjom Bluetooth, HDMI i USB, telewizor jest bardzo funkcjonalny. Srebrna obudowa wprowadza nowoczesny akcent do każdego wnętrza.'),

(9, 'Panasonic', 'HX800', '4K UHD', '58"', 'LED', '60Hz', '20W', 'Czarny', '130cm', '76cm', '16.5kg', '24 miesiące', 'HDMI, USB, LAN, Wi-Fi', 1, 1, 3, '1580zł', 'photos/telewizory/telewizor9.png', 0, 'Panasonic HX800 to telewizor LED 4K UHD o przekątnej 58 cali, oferujący świetną jakość obrazu i zadowalający dźwięk. Z częstotliwością odświeżania 60Hz zapewnia płynność podczas oglądania programów i filmów. Głośniki o mocy 20W oferują przyzwoitą jakość dźwięku. Posiada porty HDMI, USB, LAN oraz Wi-Fi, dzięki czemu można łatwo podłączyć różne urządzenia. Jego czarna obudowa jest elegancka i pasuje do każdego typu wnętrza.'),

(10, 'Philips', 'PUS8506', '4K UHD', '50"', 'LED', '60Hz', '20W', 'Szary', '112cm', '64cm', '14kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1500zł', 'photos/telewizory/telewizor10.png', 1, 'Philips PUS8506 to telewizor LED 4K UHD o przekątnej 50 cali, zapewniający wysoką jakość obrazu. Posiada częstotliwość odświeżania 60Hz, która zapewnia płynność przy oglądaniu filmów i programów. Głośniki o mocy 20W oferują przyzwoity dźwięk. Z portami HDMI, USB i LAN, telewizor jest bardzo funkcjonalny. Szara obudowa nadaje mu elegancki wygląd, pasujący do nowoczesnych wnętrz.'),

(11, 'Hisense', 'U7QF', '4K UHD', '65"', 'ULED', '60Hz', '30W', 'Czarny', '144cm', '83cm', '19kg', '24 miesiące', 'HDMI, USB, Wi-Fi', 1, 1, 4, '1590zł', 'photos/telewizory/telewizor11.png', 0, 'Hisense U7QF to telewizor ULED 4K UHD o przekątnej 65 cali, który zapewnia doskonałą jakość obrazu i kontrast. Częstotliwość odświeżania 60Hz sprawia, że jest idealny do oglądania filmów. Głośniki o mocy 30W oferują solidny dźwięk. Dzięki portom HDMI, USB i Wi-Fi telewizor jest bardzo funkcjonalny. Jego czarna obudowa pasuje do wielu nowoczesnych wnętrz.'),

(12, 'Samsung', 'Crystal UHD TU8000', '4K UHD', '55"', 'LED', '60Hz', '20W', 'Czarny', '123cm', '71cm', '15kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1400zł', 'photos/telewizory/telewizor12.png', 1, 'Samsung Crystal UHD TU8000 to telewizor LED 4K UHD o przekątnej 55 cali, oferujący dobrą jakość obrazu za rozsądne pieniądze. Posiada częstotliwość odświeżania 60Hz, co sprawia, że jest odpowiedni do oglądania filmów i programów telewizyjnych. Głośniki o mocy 20W zapewniają wystarczającą jakość dźwięku. Z portami HDMI, USB i LAN telewizor jest kompatybilny z wieloma urządzeniami. Jego czarna obudowa pasuje do każdego wnętrza.'),

(13, 'Sony', 'Bravia X85J', '4K UHD', '50"', 'LED', '120Hz', '30W', 'Czarny', '111cm', '65cm', '13kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1800zł', 'photos/telewizory/telewizor13.png', 0, 'Sony Bravia X85J to telewizor LED 4K UHD o przekątnej 50 cali, który zapewnia wyrazisty obraz i szybkie odświeżanie dzięki 120Hz. Głośniki o mocy 30W oferują doskonały dźwięk. Z portami HDMI, USB i LAN telewizor oferuje szeroką kompatybilność z urządzeniami zewnętrznymi. Jego czarna obudowa świetnie komponuje się z nowoczesnymi wnętrzami.'),

(14, 'LG', 'QNED MiniLED 90', '4K UHD', '65"', 'MiniLED', '120Hz', '40W', 'Czarny', '145cm', '83cm', '23kg', '36 miesięcy', 'HDMI, USB, Wi-Fi', 1, 1, 4, '1900zł', 'photos/telewizory/telewizor14.png', 1, 'LG QNED MiniLED 90 to telewizor 4K UHD z technologią MiniLED o przekątnej 65 cali, który zapewnia wyjątkowy kontrast i głębię obrazu. Dzięki 120Hz częstotliwości odświeżania idealnie nadaje się do dynamicznych scen i gier. Głośniki o mocy 40W oferują doskonałą jakość dźwięku. Wyposażony w porty HDMI, USB i Wi-Fi, telewizor jest bardzo funkcjonalny. Jego czarna obudowa pasuje do eleganckich wnętrz.'),

(15, 'Samsung', 'QLED Q80A', '4K UHD', '65"', 'QLED', '120Hz', '40W', 'Czarny', '144cm', '82cm', '24kg', '24 miesiące', 'HDMI, USB, LAN, Wi-Fi', 1, 1, 4, '2100zł', 'photos/telewizory/telewizor15.png', 0, 'Samsung QLED Q80A to telewizor 4K UHD z technologią QLED o przekątnej 65 cali, który oferuje doskonałą jakość obrazu, pełne kolory i wysoki kontrast. Z częstotliwością odświeżania 120Hz idealnie nadaje się do dynamicznych treści, jak sport i gry. Głośniki o mocy 40W oferują potężny dźwięk. Posiada liczne porty HDMI, USB, LAN i Wi-Fi, dzięki czemu jest bardzo wszechstronny. Jego czarna obudowa pasuje do nowoczesnych wnętrz.'),
(16, 'Panasonic', 'GX800', '4K UHD', '55"', 'LED', '60Hz', '20W', 'Srebrny', '123cm', '71cm', '16kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1500zł', 'photos/telewizory/telewizor16.png', 1, 'Panasonic GX800 to telewizor LED 4K UHD o przekątnej 55 cali, który zapewnia wyjątkową jakość obrazu z naturalnymi kolorami. Z częstotliwością odświeżania 60Hz idealnie sprawdza się w codziennym oglądaniu filmów i seriali. Głośniki o mocy 20W oferują przyzwoitą jakość dźwięku. Dzięki portom HDMI, USB i LAN telewizor jest kompatybilny z wieloma urządzeniami. Srebrna obudowa nadaje elegancki wygląd i pasuje do nowoczesnych wnętrz.'),

(17, 'Samsung', 'QLED Q70T', '4K UHD', '65"', 'QLED', '120Hz', '40W', 'Czarny', '145cm', '83cm', '21kg', '24 miesiące', 'HDMI, USB, Wi-Fi', 1, 1, 4, '1300zł', 'photos/telewizory/telewizor17.png', 1, 'Samsung QLED Q70T to telewizor 4K UHD z technologią QLED o przekątnej 65 cali, oferujący wspaniałą jakość obrazu i pełną gamę kolorów. Z częstotliwością odświeżania 120Hz idealnie nadaje się do oglądania dynamicznych treści, jak sport czy filmy akcji. Głośniki o mocy 40W zapewniają czysty i mocny dźwięk. Posiada porty HDMI, USB oraz Wi-Fi, co zapewnia dużą funkcjonalność. Czarna obudowa pasuje do każdego wnętrza.'),

(18, 'LG', 'NanoCell NANO90', '4K UHD', '55"', 'LED', '120Hz', '30W', 'Czarny', '124cm', '72cm', '15.6kg', '36 miesięcy', 'HDMI, USB, Bluetooth', 1, 1, 4, '1580zł', 'photos/telewizory/telewizor18.png', 0, 'LG NanoCell NANO90 to telewizor LED 4K UHD z technologią NanoCell o przekątnej 55 cali, który zapewnia niesamowitą jakość obrazu. Dzięki częstotliwości odświeżania 120Hz telewizor świetnie sprawdza się w oglądaniu filmów i sportów. Głośniki o mocy 30W oferują solidny dźwięk. Telewizor obsługuje HDMI, USB i Bluetooth, co daje wiele opcji połączeń. Jego czarna obudowa pasuje do eleganckich wnętrz.'),

(19, 'Sony', 'Bravia X950H', '4K UHD', '75"', 'LED', '120Hz', '30W', 'Srebrny', '167cm', '96cm', '30kg', '24 miesiące', 'HDMI, USB, Wi-Fi, LAN', 1, 1, 4, '1100zł', 'photos/telewizory/telewizor19.png', 1, 'Sony Bravia X950H to telewizor LED 4K UHD o ogromnej przekątnej 75 cali, który zapewnia doskonałą jakość obrazu i wyraźny dźwięk. Z częstotliwością odświeżania 120Hz telewizor świetnie nadaje się do dynamicznych treści, jak gry czy filmy akcji. Głośniki o mocy 30W zapewniają przyzwoitą jakość dźwięku. Z portami HDMI, USB, Wi-Fi i LAN telewizor oferuje dużą funkcjonalność. Srebrna obudowa nadaje telewizorowi nowoczesny wygląd, który wpasuje się w każde wnętrze.'),

(20, 'Philips', 'OLED 805', '4K UHD', '65"', 'OLED', '120Hz', '50W', 'Czarny', '145cm', '83cm', '22kg', '24 miesiące', 'HDMI, USB, LAN, Wi-Fi', 1, 1, 4, '1500zł', 'photos/telewizory/telewizor20.png', 0, 'Philips OLED 805 to telewizor OLED 4K UHD o przekątnej 65 cali, który oferuje doskonałą jakość obrazu i perfekcyjny kontrast. Dzięki częstotliwości odświeżania 120Hz idealnie nadaje się do oglądania dynamicznych treści. Głośniki o mocy 50W zapewniają pełen, głęboki dźwięk. Telewizor obsługuje HDMI, USB, LAN oraz Wi-Fi, zapewniając wszechstronność w połączeniach. Czarna obudowa nadaje elegancki i nowoczesny wygląd.');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `laptopy`
--
ALTER TABLE `laptopy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `monitory`
--
ALTER TABLE `monitory`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `myszki_i_klawiatury`
--
ALTER TABLE `myszki_i_klawiatury`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `smartfony`
--
ALTER TABLE `smartfony`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `smartwatche`
--
ALTER TABLE `smartwatche`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `telewizory`
--
ALTER TABLE `telewizory`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laptopy`
--
ALTER TABLE `laptopy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `monitory`
--
ALTER TABLE `monitory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `myszki_i_klawiatury`
--
ALTER TABLE `myszki_i_klawiatury`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `smartfony`
--
ALTER TABLE `smartfony`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `smartwatche`
--
ALTER TABLE `smartwatche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `telewizory`
--
ALTER TABLE `telewizory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
