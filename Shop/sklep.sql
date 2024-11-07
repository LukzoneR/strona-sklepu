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
  `isSale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptopy`
--

INSERT INTO `laptopy` (`id`, `marka`, `model`, `procesor`, `pamiec_RAM`, `dysk`, `karta_graficzna`, `przekatna_ekranu`, `system_operacyjny`, `dotykowy_ekran`, `rozdzielczosc_ekranu`, `kamera_internetowa`, `zlacza`, `typ_baterii`, `kolor`, `zasilacz`, `wysokosc`, `szerokosc`, `waga`, `gwarancja`, `cena`, `photo`, `isSale`) VALUES
(1, 'Dell', 'XPS 13', 'Intel Core i7-1165G7', '16GB', '512GB SSD', 'Intel Iris Xe', '13.4\"', 'Windows 10', 1, '1920x1200', '720p HD', 'USB-C, Thunderbolt 4', 'Litowo-polimerowa', 'Srebrny', '65W USB-C', '14.8mm', '296mm', '1.2kg', '24 miesiące', '2000zł', 'photos/laptopy/laptop1.png', 0),
(2, 'Apple', 'MacBook Air', 'Apple M1', '8GB', '256GB SSD', 'Apple 7-core GPU', '13.3\"', 'macOS', 0, '2560x1600', '720p HD', '2x Thunderbolt 3', 'Litowo-jonowa', 'Złoty', '30W USB-C', '16.1mm', '304.1mm', '1.29kg', '12 miesięcy', '2500zł', 'photos/laptopy/laptop2.png', 1),
(3, 'HP', 'Spectre x360', 'Intel Core i7-1165G7', '16GB', '1TB SSD', 'Intel Iris Xe', '13.5\"', 'Windows 10', 1, '1920x1280', '720p HD', 'USB-C, Thunderbolt 4, HDMI', 'Litowo-polimerowa', 'Czarny', '65W USB-C', '17mm', '306mm', '1.34kg', '24 miesiące', '4000zł', 'photos/laptopy/laptop3.png', 0),
(4, 'Lenovo', 'ThinkPad X1 Carbon', 'Intel Core i5-1135G7', '8GB', '512GB SSD', 'Intel Iris Xe', '14\"', 'Windows 10', 0, '1920x1080', '720p HD', '2x USB-A, 2x USB-C, HDMI', 'Litowo-jonowa', 'Czarny', '65W USB-C', '14.9mm', '323mm', '1.09kg', '36 miesięcy', '5000zł', 'photos/laptopy/laptop4.png', 1),
(5, 'Asus', 'ZenBook 14', 'AMD Ryzen 7 5800H', '16GB', '512GB SSD', 'NVIDIA GeForce MX450', '14\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-polimerowa', 'Srebrny', '65W USB-C', '15.9mm', '319mm', '1.13kg', '24 miesiące', '7000zł', 'photos/laptopy/laptop5.png', 0),
(6, 'Microsoft', 'Surface Laptop 4', 'AMD Ryzen 5', '8GB', '256GB SSD', 'AMD Radeon Vega 9', '13.5\"', 'Windows 10', 1, '2256x1504', '720p HD', 'USB-C, USB-A', 'Litowo-jonowa', 'Niebieski', '65W USB-C', '14.5mm', '308mm', '1.2kg', '24 miesiące', '9000zł', 'photos/laptopy/laptop6.png', 1),
(7, 'Acer', 'Swift 3', 'Intel Core i5-1135G7', '8GB', '512GB SSD', 'Intel Iris Xe', '14\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Szary', '65W USB-C', '15.9mm', '322mm', '1.2kg', '24 miesiące', '1000zł', 'photos/laptopy/laptop7.png', 0),
(8, 'Razer', 'Blade 15', 'Intel Core i7-10750H', '16GB', '512GB SSD', 'NVIDIA GeForce GTX 1660 Ti', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-polimerowa', 'Czarny', '180W', '19.9mm', '355mm', '2.1kg', '24 miesiące', '4000zł', 'photos/laptopy/laptop8.png', 1),
(9, 'MSI', 'GF63 Thin', 'Intel Core i5-10500H', '8GB', '256GB SSD', 'NVIDIA GTX 1650', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Czerwony', '120W', '21.7mm', '359mm', '1.86kg', '12 miesięcy', '2000zł', 'photos/laptopy/laptop9.png', 0),
(10, 'Huawei', 'MateBook X Pro', 'Intel Core i7-1165G7', '16GB', '512GB SSD', 'Intel Iris Xe', '13.9\"', 'Windows 10', 1, '3000x2000', '720p HD', 'USB-C, USB-A', 'Litowo-jonowa', 'Srebrny', '65W USB-C', '14.6mm', '304mm', '1.33kg', '24 miesiące', '900zł', 'photos/laptopy/laptop10.png', 1),
(11, 'Samsung', 'Galaxy Book Pro', 'Intel Core i5-1135G7', '8GB', '256GB SSD', 'Intel Iris Xe', '13.3\"', 'Windows 10', 0, '1920x1080', '720p HD', 'USB-C, HDMI', 'Litowo-polimerowa', 'Szary', '65W USB-C', '11.2mm', '304mm', '0.87kg', '24 miesiące', '9500zł', 'photos/laptopy/laptop11.png', 0),
(12, 'LG', 'Gram 14', 'Intel Core i7-1165G7', '16GB', '512GB SSD', 'Intel Iris Xe', '14\"', 'Windows 10', 0, '1920x1200', '720p HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Biały', '65W USB-C', '16.8mm', '314mm', '0.99kg', '24 miesiące', '2000zł', 'photos/laptopy/laptop12.png', 1),
(13, 'Asus', 'ROG Zephyrus G14', 'AMD Ryzen 9 5900HS', '16GB', '1TB SSD', 'NVIDIA GeForce RTX 3060', '14\"', 'Windows 10', 0, '2560x1440', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-polimerowa', 'Biały', '180W', '19.9mm', '324mm', '1.7kg', '12 miesięcy', '7000zł', 'photos/laptopy/laptop13.png', 0),
(14, 'HP', 'Omen 15', 'AMD Ryzen 7 5800H', '16GB', '512GB SSD', 'NVIDIA RTX 3060', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Czarny', '200W', '22.5mm', '357mm', '2.36kg', '24 miesiące', '3000zł', 'photos/laptopy/laptop14.png', 1),
(15, 'Dell', 'Inspiron 15', 'Intel Core i5-11300H', '8GB', '256GB SSD', 'Intel Iris Xe', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-polimerowa', 'Srebrny', '65W', '18.0mm', '359mm', '1.75kg', '12 miesięcy', '4000zł', 'photos/laptopy/laptop15.png', 0),
(16, 'Lenovo', 'Yoga Slim 7', 'AMD Ryzen 7 4800U', '8GB', '512GB SSD', 'AMD Radeon Graphics', '14\"', 'Windows 10', 1, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Szary', '65W USB-C', '14.9mm', '321mm', '1.55kg', '24 miesiące', '5000zł', 'photos/laptopy/laptop16.png', 1),
(17, 'Microsoft', 'Surface Book 3', 'Intel Core i7-1065G7', '16GB', '512GB SSD', 'NVIDIA GTX 1660 Ti', '15\"', 'Windows 10', 1, '3240x2160', '1080p HD', 'USB-C, USB-A', 'Litowo-jonowa', 'Srebrny', '102W', '23mm', '343mm', '1.9kg', '24 miesiące', '6000zł', 'photos/laptopy/laptop17.png', 0),
(18, 'Asus', 'VivoBook S14', 'Intel Core i5-1135G7', '8GB', '512GB SSD', 'Intel Iris Xe', '14\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Zielony', '65W USB-C', '15.9mm', '324mm', '1.4kg', '12 miesięcy', '7000zł', 'photos/laptopy/laptop18.png', 1),
(19, 'HP', 'Pavilion 15', 'Intel Core i7-1165G7', '16GB', '512GB SSD', 'Intel Iris Xe', '15.6\"', 'Windows 10', 0, '1920x1080', '720p HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Srebrny', '65W USB-C', '18mm', '360mm', '1.75kg', '12 miesięcy', '8000zł', 'photos/laptopy/laptop19.png', 0),
(20, 'Dell', 'G5 15', 'Intel Core i7-10750H', '16GB', '1TB SSD', 'NVIDIA RTX 2060', '15.6\"', 'Windows 10', 0, '1920x1080', 'HD', 'USB-C, USB-A, HDMI', 'Litowo-jonowa', 'Czarny', '130W', '23mm', '364mm', '2.5kg', '12 miesięcy', '2070zł', 'photos/laptopy/laptop20.png', 1);

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
  `isSale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monitory`
--

INSERT INTO `monitory` (`id`, `marka`, `model`, `rozdzielczosc`, `przekatna`, `odswiezanie`, `typ_panelu`, `czas_reakcji`, `liczba_wyswietlanych_kolorow`, `pobor_mocy`, `HDR`, `glosniki`, `regulacja_wysokosci`, `kolor`, `gwarancja`, `cena`, `photo`, `isSale`) VALUES
(1, 'Dell', 'UltraSharp U2720Q', '4K UHD', '27\"', '60Hz', 'IPS', '5ms', '1.07 miliarda', '45W', 'HDR400', 1, 1, 'Czarny', '36 miesięcy', '600zł', 'photos/monitory/monitor1.png', 1),
(2, 'LG', '27GN950-B', '4K UHD', '27\"', '144Hz', 'Nano IPS', '1ms', '1.07 miliarda', '80W', 'HDR600', 1, 1, 'Czarny', '24 miesiące', '500zł', 'photos/monitory/monitor2.png', 1),
(3, 'Samsung', 'Odyssey G7', 'QHD', '27\"', '240Hz', 'VA', '1ms', '16.7 miliona', '70W', 'HDR600', 1, 1, 'Czarny', '24 miesiące', '800zł', 'photos/monitory/monitor3.png', 1),
(4, 'ASUS', 'ROG Swift PG32UQ', '4K UHD', '32\"', '144Hz', 'IPS', '4ms', '1.07 miliarda', '80W', 'HDR600', 1, 1, 'Czarny', '36 miesięcy', '2000zł', 'photos/monitory/monitor4.png', 1),
(5, 'Acer', 'Predator X27', '4K UHD', '27\"', '144Hz', 'IPS', '4ms', '1.07 miliarda', '100W', 'HDR1000', 1, 1, 'Czarny', '24 miesiące', '900zł', 'photos/monitory/monitor5.png', 0),
(6, 'BenQ', 'SW271', '4K UHD', '27\"', '60Hz', 'IPS', '5ms', '1.07 miliarda', '60W', 'HDR10', 1, 1, 'Czarny', '36 miesięcy', '400zł', 'photos/monitory/monitor6.png', 1),
(7, 'ViewSonic', 'VP2768a-4K', '4K UHD', '27\"', '60Hz', 'IPS', '5ms', '1.07 miliarda', '50W', 'HDR10', 1, 1, 'Czarny', '24 miesiące', '500zł', 'photos/monitory/monitor7.png', 1),
(8, 'LG', '34GN850-B', 'QHD', '34\"', '144Hz', 'Nano IPS', '1ms', '1.07 miliarda', '80W', 'HDR600', 1, 1, 'Czarny', '24 miesiące', '600zł', 'photos/monitory/monitor8.png', 1),
(9, 'Dell', 'P2720DC', 'QHD', '27\"', '60Hz', 'IPS', '5ms', '16.7 miliona', '50W', 'HDR', 0, 1, 'Czarny', '36 miesięcy', '800zł', 'photos/monitory/monitor9.png', 1),
(10, 'Samsung', 'LF27T350FHW', 'Full HD', '27\"', '75Hz', 'IPS', '5ms', '16.7 miliona', '25W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '900zł', 'photos/monitory/monitor10.png', 0),
(11, 'Acer', 'R271', 'Full HD', '27\"', '60Hz', 'IPS', '4ms', '16.7 miliona', '30W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '1000zł', 'photos/monitory/monitor11.png', 1),
(12, 'HP', 'Pavilion 27', 'QHD', '27\"', '60Hz', 'IPS', '5ms', '16.7 miliona', '45W', 'HDR', 1, 1, 'Biały', '24 miesiące', '1000zł', 'photos/monitory/monitor12.png', 1),
(13, 'Gigabyte', 'AORUS AD27QD', 'QHD', '27\"', '144Hz', 'IPS', '1ms', '1.07 miliarda', '65W', 'HDR400', 1, 1, 'Czarny', '24 miesiące', '2040zł', 'photos/monitory/monitor13.png', 1),
(14, 'Lenovo', 'ThinkVision P32u-10', '4K UHD', '32\"', '60Hz', 'IPS', '6ms', '1.07 miliarda', '75W', 'HDR400', 1, 1, 'Czarny', '36 miesięcy', '600zł', 'photos/monitory/monitor14.png', 1),
(15, 'MSI', 'Optix MAG272CQR', 'QHD', '27\"', '165Hz', 'VA', '1ms', '16.7 miliona', '60W', 'HDR400', 1, 1, 'Czarny', '24 miesiące', '800zł', 'photos/monitory/monitor15.png', 1),
(16, 'Philips', '328P6VJEB', '4K UHD', '32\"', '60Hz', 'IPS', '5ms', '1.07 miliarda', '60W', 'HDR10', 1, 1, 'Czarny', '24 miesiące', '400zł', 'photos/monitory/monitor16.png', 1),
(17, 'Samsung', 'S24F350', 'Full HD', '24\"', '60Hz', 'PLS', '5ms', '16.7 miliona', '25W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '200zł', 'photos/monitory/monitor17.png', 1),
(18, 'BenQ', 'Zowie XL2411K', 'Full HD', '24\"', '144Hz', 'TN', '1ms', '16.7 miliona', '45W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '500zł', 'photos/monitory/monitor18.png', 1),
(19, 'ViewSonic', 'XG2405', 'Full HD', '24\"', '144Hz', 'IPS', '1ms', '16.7 miliona', '30W', 'HDR', 0, 0, 'Czarny', '24 miesiące', '800zł', 'photos/monitory/monitor19.png', 1),
(20, 'Acer', 'CB272U', 'QHD', '27\"', '75Hz', 'IPS', '1ms', '1.07 miliarda', '40W', 'HDR10', 1, 1, 'Czarny', '36 miesięcy', '700zł', 'photos/monitory/monitor20.png', 1);

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
  `isSale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myszki_i_klawiatury`
--

INSERT INTO `myszki_i_klawiatury` (`id`, `typ`, `marka`, `model`, `rodzaj_polaczenia`, `podswietlenie`, `programowalne_przyciski`, `cena`, `photo`, `isSale`) VALUES
(1, 'Mysz', 'Logitech', 'G502 HERO', 'Bezprzewodowe', 1, 11, '100zł', 'photos/myszki_klawiatury/mysz1.png', 1),
(2, 'Mysz', 'Razer', 'DeathAdder V2', 'Przewodowe', 1, 5, '200zł', 'photos/myszki_klawiatury/mysz2.png', 1),
(3, 'Klawiatura', 'Corsair', 'K95 RGB Platinum', 'Przewodowe', 1, 6, '600zł', 'photos/myszki_klawiatury/klawiatura1.png', 1),
(4, 'Mysz', 'SteelSeries', 'Rival 600', 'Przewodowe', 1, 7, '500zł', 'photos/myszki_klawiatury/mysz3.png', 0),
(5, 'Klawiatura', 'Razer', 'BlackWidow V3', 'Przewodowe', 1, 5, '150zł', 'photos/myszki_klawiatury/klawiatura2.png', 1),
(6, 'Mysz', 'HyperX', 'Pulsefire FPS', 'Bezprzewodowe', 1, 6, '150zł', 'photos/myszki_klawiatury/mysz4.png', 1),
(7, 'Klawiatura', 'Logitech', 'G Pro X', 'Przewodowe', 1, 3, '200zł', 'photos/myszki_klawiatury/klawiatura3.png', 0),
(8, 'Mysz', 'Zowie', 'EC2', 'Przewodowe', 0, 0, '300zł', 'photos/myszki_klawiatury/mysz5.png', 0),
(9, 'Klawiatura', 'Cooler Master', 'MK730', 'Przewodowe', 1, 5, '400zł', 'photos/myszki_klawiatury/klawiatura4.png', 1),
(10, 'Mysz', 'Razer', 'Viper Ultimate', 'Bezprzewodowe', 1, 8, '500zł', 'photos/myszki_klawiatury/mysz6.png', 1),
(11, 'Klawiatura', 'Corsair', 'K70 RGB MK.2', 'Przewodowe', 1, 6, '400zł', 'photos/myszki_klawiatury/klawiatura5.png', 0),
(12, 'Mysz', 'Logitech', 'G703', 'Bezprzewodowe', 1, 6, '300zł', 'photos/myszki_klawiatury/mysz7.png', 1),
(13, 'Klawiatura', 'SteelSeries', 'Apex 7', 'Przewodowe', 1, 5, '180zł', 'photos/myszki_klawiatury/klawiatura6.png', 1),
(14, 'Mysz', 'Asus', 'ROG Gladius III', 'Przewodowe', 1, 6, '100zł', 'photos/myszki_klawiatury/mysz8.png', 0),
(15, 'Klawiatura', 'Razer', 'Ornata V2', 'Przewodowe', 1, 4, '200zł', 'photos/myszki_klawiatury/klawiatura7.png', 1),
(16, 'Mysz', 'Logitech', 'MX Master 3', 'Bezprzewodowe', 1, 2, '300zł', 'photos/myszki_klawiatury/mysz9.png', 1),
(17, 'Klawiatura', 'HyperX', 'Alloy FPS Pro', 'Przewodowe', 1, 4, '700zł', 'photos/myszki_klawiatury/klawiatura8.png', 0),
(18, 'Mysz', 'BenQ', 'Zowie S2', 'Przewodowe', 0, 0, '400zł', 'photos/myszki_klawiatury/mysz10.png', 0),
(19, 'Klawiatura', 'Logitech', 'K120', 'Przewodowe', 0, 0, '150zł', 'photos/myszki_klawiatury/klawiatura9.png', 1),
(20, 'Mysz', 'Razer', 'Naga X', 'Bezprzewodowe', 1, 16, '300zł', 'photos/myszki_klawiatury/mysz11.png', 1);

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
  `isSale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartfony`
--

INSERT INTO `smartfony` (`id`, `marka`, `model`, `procesor`, `pamiec_RAM`, `pamiec_wewnetrzna`, `aparat`, `zoom_kamery`, `bateria`, `system_operacyjny`, `przekatna_ekranu`, `czestotliwosc_odswiezania`, `rozdzielczosc_ekranu`, `aparat_przod`, `czytnik_linii_papilarnych`, `zlacza`, `kolor`, `wysokosc`, `szerokosc`, `grubosc`, `waga`, `gwarancja`, `cena`, `photo`, `isSale`) VALUES
(1, 'Samsung', 'Galaxy S21', 'Exynos 2100', '8GB', '128GB', '108MP', '30x', '4000mAh', 'Android', '6.2\"', '120Hz', '2400x1080', '10MP', 'Tak', 'USB-C', 'Fantomowa Szarość', '151.7mm', '71.2mm', '7.9mm', '169g', '24 miesiące', '1500zł', 'photos/smartfony/smartfon1.png', 1),
(2, 'Apple', 'iPhone 13', 'A15 Bionic', '6GB', '128GB', '12MP', '5x', '3240mAh', 'iOS', '6.1\"', '60Hz', '2532x1170', '12MP', 'Tak', 'Lightning', 'Niebieski', '146.7mm', '71.5mm', '7.65mm', '174g', '12 miesięcy', '3000zł', 'photos/smartfony/smartfon2.png', 0),
(3, 'Xiaomi', 'Mi 11', 'Snapdragon 888', '8GB', '256GB', '108MP', '50x', '4600mAh', 'Android', '6.81\"', '120Hz', '3200x1440', '20MP', 'Tak', 'USB-C', 'Biały', '164.3mm', '74.6mm', '8.06mm', '196g', '24 miesiące', '6000zł', 'photos/smartfony/smartfon3.png', 1),
(4, 'OnePlus', '9 Pro', 'Snapdragon 888', '12GB', '256GB', '48MP', '30x', '4500mAh', 'Android', '6.7\"', '120Hz', '3216x1440', '16MP', 'Tak', 'USB-C', 'Zielony', '163.2mm', '73.6mm', '8.7mm', '197g', '24 miesiące', '2000zł', 'photos/smartfony/smartfon4.png', 0),
(5, 'Google', 'Pixel 5', 'Snapdragon 765G', '8GB', '128GB', '12.2MP', '10x', '4080mAh', 'Android', '6.0\"', '90Hz', '2340x1080', '8MP', 'Tak', 'USB-C', 'Czarny', '144.7mm', '70.4mm', '8mm', '151g', '12 miesięcy', '8000zł', 'photos/smartfony/smartfon5.png', 1),
(6, 'Huawei', 'P40 Pro', 'Kirin 990', '8GB', '256GB', '50MP', '50x', '4200mAh', 'Android', '6.58\"', '90Hz', '2640x1200', '32MP', 'Tak', 'USB-C', 'Srebrny', '158.2mm', '72.6mm', '9mm', '209g', '24 miesiące', '1400zł', 'photos/smartfony/smartfon6.png', 0),
(7, 'Sony', 'Xperia 1 III', 'Snapdragon 888', '12GB', '256GB', '12MP', '70x', '4500mAh', 'Android', '6.5\"', '120Hz', '3840x1644', '8MP', 'Tak', 'USB-C', 'Fioletowy', '165mm', '71mm', '8.2mm', '186g', '24 miesiące', '2000zł', 'photos/smartfony/smartfon7.png', 1),
(8, 'Oppo', 'Find X3 Pro', 'Snapdragon 888', '12GB', '256GB', '50MP', '60x', '4500mAh', 'Android', '6.7\"', '120Hz', '3216x1440', '32MP', 'Tak', 'USB-C', 'Czarny', '163.6mm', '74mm', '8.26mm', '193g', '24 miesiące', '7000zł', 'photos/smartfony/smartfon8.png', 0),
(9, 'Motorola', 'Edge 20 Pro', 'Snapdragon 870', '12GB', '256GB', '108MP', '50x', '4500mAh', 'Android', '6.7\"', '144Hz', '2400x1080', '32MP', 'Tak', 'USB-C', 'Biały', '163mm', '76mm', '8mm', '185g', '24 miesiące', '3000zł', 'photos/smartfony/smartfon9.png', 1),
(10, 'Asus', 'ROG Phone 5', 'Snapdragon 888', '16GB', '512GB', '64MP', '30x', '6000mAh', 'Android', '6.78\"', '144Hz', '2448x1080', '24MP', 'Tak', 'USB-C', 'Czarny', '172.8mm', '77.2mm', '10.3mm', '238g', '24 miesiące', '4000zł', 'photos/smartfony/smartfon10.png', 0),
(11, 'Realme', 'GT', 'Snapdragon 888', '12GB', '256GB', '64MP', '20x', '4500mAh', 'Android', '6.43\"', '120Hz', '2400x1080', '16MP', 'Tak', 'USB-C', 'Żółty', '158.5mm', '73.3mm', '8.4mm', '186g', '24 miesiące', '2000zł', 'photos/smartfony/smartfon11.png', 1),
(12, 'Nokia', 'G50', 'Snapdragon 480', '4GB', '128GB', '48MP', '5x', '5000mAh', 'Android', '6.82\"', '60Hz', '1640x720', '8MP', 'Nie', 'USB-C', 'Niebieski', '173.8mm', '77.7mm', '8.9mm', '220g', '12 miesięcy', '1050zł', 'photos/smartfony/smartfon12.png', 0),
(13, 'Samsung', 'Galaxy Z Fold 3', 'Snapdragon 888', '12GB', '512GB', '12MP', '20x', '4400mAh', 'Android', '7.6\"', '120Hz', '2208x1768', '10MP', 'Tak', 'USB-C', 'Czarny', '158.2mm', '128.1mm', '6.4mm', '271g', '24 miesiące', '1050zł', 'photos/smartfony/smartfon13.png', 1),
(14, 'Xiaomi', 'Redmi Note 10 Pro', 'Snapdragon 732G', '6GB', '128GB', '108MP', '10x', '5020mAh', 'Android', '6.67\"', '120Hz', '2400x1080', '16MP', 'Tak', 'USB-C', 'Niebieski', '164mm', '76.5mm', '8.1mm', '193g', '12 miesięcy', '3000zł', 'photos/smartfony/smartfon14.png', 0),
(15, 'Google', 'Pixel 6', 'Google Tensor', '8GB', '128GB', '50MP', '7x', '4614mAh', 'Android', '6.4\"', '90Hz', '2400x1080', '8MP', 'Tak', 'USB-C', 'Koralowy', '158.6mm', '74.8mm', '8.9mm', '207g', '24 miesiące', '4000zł', 'photos/smartfony/smartfon15.png', 1),
(16, 'Huawei', 'Mate 40 Pro', 'Kirin 9000', '8GB', '256GB', '50MP', '50x', '4400mAh', 'Android', '6.76\"', '90Hz', '2772x1344', '13MP', 'Tak', 'USB-C', 'Srebrny', '162.9mm', '75.5mm', '9.1mm', '212g', '24 miesiące', '1000zł', 'photos/smartfony/smartfon16.png', 0),
(17, 'Sony', 'Xperia 5 III', 'Snapdragon 888', '8GB', '128GB', '12MP', '50x', '4500mAh', 'Android', '6.1\"', '120Hz', '2520x1080', '8MP', 'Tak', 'USB-C', 'Czarny', '157mm', '68mm', '8.2mm', '168g', '24 miesiące', '1000zł', 'photos/smartfony/smartfon17.png', 1);

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
  `isSale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smartwatche`
--

INSERT INTO `smartwatche` (`id`, `marka`, `model`, `ekran`, `pamiec_RAM`, `rozdzielczosc_wyswietlacza`, `typ_paska`, `kolor_paska`, `rozmiar_koperty`, `grubosc`, `waga`, `gwarancja`, `bateria`, `system_operacyjny`, `GPS`, `monitor_snu`, `wodoodpornosc`, `cena`, `photo`, `isSale`) VALUES
(1, 'Apple', 'Watch Series 7', 'OLED', '1GB', '396x484', 'Silikonowy', 'Czarny', '41mm', '10.7mm', '32g', '12 miesięcy', '300mAh', 'watchOS', 1, 1, '5ATM', '600zł', 'photos/smartwatche/smartwatch1.png', 0),
(2, 'Samsung', 'Galaxy Watch 4', 'Super AMOLED', '1.5GB', '450x450', 'Fluoroelastomer', 'Srebrny', '44mm', '9.8mm', '30g', '24 miesiące', '361mAh', 'Wear OS', 1, 1, 'IP68', '700zł', 'photos/smartwatche/smartwatch2.png', 1),
(3, 'Garmin', 'Forerunner 945', 'MIP', '1GB', '240x240', 'Silikonowy', 'Czarny', '47mm', '13.7mm', '50g', '12 miesięcy', '500mAh', 'Garmin OS', 1, 1, '5ATM', '650zł', 'photos/smartwatche/smartwatch3.png', 0),
(4, 'Fitbit', 'Versa 3', 'AMOLED', '512MB', '336x336', 'Silikonowy', 'Różowy', '40mm', '12.2mm', '28g', '24 miesiące', '270mAh', 'Fitbit OS', 1, 1, 'IP68', '600zł', 'photos/smartwatche/smartwatch4.png', 1),
(5, 'Huawei', 'Watch GT 2 Pro', 'AMOLED', '32MB', '454x454', 'Skórzany', 'Brązowy', '46mm', '11.4mm', '52g', '12 miesięcy', '455mAh', 'LiteOS', 1, 1, '5ATM', '500zł', 'photos/smartwatche/smartwatch5.png', 0),
(6, 'Amazfit', 'GTR 3 Pro', 'AMOLED', '1GB', '480x480', 'Skórzany', 'Szary', '46mm', '10.8mm', '40g', '24 miesiące', '450mAh', 'Zepp OS', 1, 1, '5ATM', '200zł', 'photos/smartwatche/smartwatch6.png', 1),
(7, 'Fossil', 'Gen 6', 'AMOLED', '1GB', '416x416', 'Skórzany', 'Brązowy', '44mm', '12mm', '43g', '24 miesiące', '400mAh', 'Wear OS', 1, 1, '3ATM', '1600zł', 'photos/smartwatche/smartwatch7.png', 0),
(8, 'Suunto', '7', 'AMOLED', '1GB', '454x454', 'Silikonowy', 'Czarny', '50mm', '15.3mm', '70g', '24 miesiące', '450mAh', 'Wear OS', 1, 1, 'IP68', '700zł', 'photos/smartwatche/smartwatch8.png', 1),
(9, 'TicWatch', 'Pro 3', 'Dual-layer Display', '1GB', '454x454', 'Silikonowy', 'Szary', '47mm', '12.2mm', '41g', '24 miesiące', '415mAh', 'Wear OS', 1, 1, 'IP68', '900zł', 'photos/smartwatche/smartwatch9.png', 0),
(10, 'Xiaomi', 'Mi Watch', 'AMOLED', '512MB', '360x360', 'Silikonowy', 'Czarny', '46mm', '11.8mm', '32g', '12 miesięcy', '420mAh', 'LiteOS', 1, 1, '5ATM', '400zł', 'photos/smartwatche/smartwatch10.png', 1),
(11, 'Polar', 'Vantage V2', 'MIP', '64MB', '240x240', 'Silikonowy', 'Czerwony', '47mm', '12.8mm', '52g', '12 miesięcy', '346mAh', 'Polar OS', 1, 1, 'IP68', '500zł', 'photos/smartwatche/smartwatch11.png', 0),
(12, 'Withings', 'ScanWatch', 'PMOLED', '64MB', '240x240', 'Stalowy', 'Czarny', '38mm', '13.7mm', '58g', '24 miesiące', '250mAh', 'Withings OS', 0, 1, '5ATM', '700zł', 'photos/smartwatche/smartwatch12.png', 1),
(13, 'Realme', 'Watch S Pro', 'AMOLED', '512MB', '454x454', 'Skórzany', 'Brązowy', '46mm', '11.1mm', '63g', '12 miesięcy', '420mAh', 'Realme OS', 1, 1, '5ATM', '400zł', 'photos/smartwatche/smartwatch13.png', 0),
(14, 'Oppo', 'Watch 2', 'AMOLED', '1GB', '402x476', 'Silikonowy', 'Czarny', '46mm', '12mm', '52g', '24 miesiące', '510mAh', 'Wear OS', 1, 1, '5ATM', '500zł', 'photos/smartwatche/smartwatch14.png', 1),
(15, 'Honor', 'MagicWatch 2', 'AMOLED', '32MB', '454x454', 'Skórzany', 'Brązowy', '46mm', '10.7mm', '41g', '12 miesięcy', '455mAh', 'LiteOS', 1, 1, '5ATM', '800zł', 'photos/smartwatche/smartwatch15.png', 0),
(16, 'OnePlus', 'Watch', 'AMOLED', '512MB', '454x454', 'Fluoroelastomer', 'Czarny', '46mm', '10.9mm', '45g', '24 miesiące', '402mAh', 'OnePlus OS', 1, 1, '5ATM', '600zł', 'photos/smartwatche/smartwatch16.png', 1),
(17, 'Samsung', 'Galaxy Watch Active 2', 'Super AMOLED', '768MB', '360x360', 'Silikonowy', 'Różowy', '40mm', '10.9mm', '26g', '12 miesięcy', '247mAh', 'Tizen OS', 1, 1, 'IP68', '600zł', 'photos/smartwatche/smartwatch17.png', 0),
(18, 'Amazfit', 'T-Rex Pro', 'AMOLED', '256MB', '360x360', 'Silikonowy', 'Niebieski', '47mm', '13.5mm', '59g', '24 miesiące', '390mAh', 'Zepp OS', 1, 1, '10ATM', '600zł', 'photos/smartwatche/smartwatch18.png', 1),
(19, 'Garmin', 'Fenix 6 Pro', 'MIP', '64MB', '260x260', 'Silikonowy', 'Czarny', '47mm', '14.7mm', '83g', '12 miesięcy', '510mAh', 'Garmin OS', 1, 1, '10ATM', '690zł', 'photos/smartwatche/smartwatch19.png', 0),
(20, 'Mobvoi', 'TicWatch E3', 'LCD', '1GB', '360x360', 'Silikonowy', 'Żółty', '44mm', '12.6mm', '32g', '12 miesięcy', '380mAh', 'Wear OS', 1, 1, 'IP68', '400zł', 'photos/smartwatche/smartwatch20.png', 1);

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
  `isSale` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `telewizory`
--

INSERT INTO `telewizory` (`id`, `marka`, `model`, `rozdzielczosc`, `przekatna`, `technologia_panelu`, `czestotliwosc_odswiezania`, `glosniki`, `kolor_obudowy`, `szerokosc`, `wysokosc`, `waga`, `gwarancja`, `zlacza`, `HDR`, `Smart_TV`, `liczba_portow_HDMI`, `cena`, `photo`, `isSale`) VALUES
(1, 'Samsung', 'QLED Q60A', '4K UHD', '55\"', 'QLED', '60Hz', '20W', 'Czarny', '123cm', '71cm', '17.2kg', '24 miesiące', 'HDMI, USB, LAN, Wi-Fi', 1, 1, 3, '1500zł', 'photos/telewizory/telewizor1.png', 1),
(2, 'LG', 'OLED CX', '4K UHD', '65\"', 'OLED', '120Hz', '40W', 'Srebrny', '145cm', '83cm', '25kg', '36 miesięcy', 'HDMI, USB, LAN, Bluetooth', 1, 1, 4, '1000zł', 'photos/telewizory/telewizor2.png', 0),
(3, 'Sony', 'Bravia XR A80J', '4K UHD', '55\"', 'OLED', '120Hz', '30W', 'Czarny', '122cm', '70cm', '18kg', '24 miesiące', 'HDMI, USB, Wi-Fi, LAN', 1, 1, 4, '2500zł', 'photos/telewizory/telewizor3.png', 1),
(4, 'Philips', 'Ambilight 7500', '4K UHD', '50\"', 'LED', '60Hz', '25W', 'Srebrny', '112cm', '65cm', '14.5kg', '24 miesiące', 'HDMI, USB, Wi-Fi', 1, 1, 3, '3500zł', 'photos/telewizory/telewizor4.png', 0),
(5, 'TCL', 'C715', '4K UHD', '55\"', 'QLED', '60Hz', '20W', 'Szary', '123cm', '71cm', '15.2kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1550zł', 'photos/telewizory/telewizor5.png', 0),
(6, 'Samsung', 'The Frame', '4K UHD', '55\"', 'QLED', '120Hz', '40W', 'Czarny', '123cm', '70cm', '19kg', '24 miesiące', 'HDMI, USB, LAN, Wi-Fi', 1, 1, 3, '1500zł', 'photos/telewizory/telewizor6.png', 1),
(7, 'Sony', 'X90J', '4K UHD', '65\"', 'LED', '120Hz', '30W', 'Czarny', '145cm', '84cm', '22kg', '24 miesiące', 'HDMI, USB, Wi-Fi', 1, 1, 4, '1700zł', 'photos/telewizory/telewizor7.png', 1),
(8, 'LG', 'NanoCell 80', '4K UHD', '50\"', 'LED', '60Hz', '20W', 'Srebrny', '112cm', '65cm', '13.8kg', '36 miesięcy', 'HDMI, USB, Bluetooth', 1, 1, 3, '2500zł', 'photos/telewizory/telewizor8.png', 0),
(9, 'Panasonic', 'HX800', '4K UHD', '58\"', 'LED', '60Hz', '20W', 'Czarny', '130cm', '76cm', '16.5kg', '24 miesiące', 'HDMI, USB, LAN, Wi-Fi', 1, 1, 3, '1580zł', 'photos/telewizory/telewizor9.png', 0),
(10, 'Philips', 'PUS8506', '4K UHD', '50\"', 'LED', '60Hz', '20W', 'Szary', '112cm', '64cm', '14kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1500zł', 'photos/telewizory/telewizor10.png', 1),
(11, 'Hisense', 'U7QF', '4K UHD', '65\"', 'ULED', '60Hz', '30W', 'Czarny', '144cm', '83cm', '19kg', '24 miesiące', 'HDMI, USB, Wi-Fi', 1, 1, 4, '1590zł', 'photos/telewizory/telewizor11.png', 0),
(12, 'Samsung', 'Crystal UHD TU8000', '4K UHD', '55\"', 'LED', '60Hz', '20W', 'Czarny', '123cm', '71cm', '15kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1400zł', 'photos/telewizory/telewizor12.png', 1),
(13, 'Sony', 'Bravia X85J', '4K UHD', '50\"', 'LED', '120Hz', '30W', 'Czarny', '111cm', '65cm', '13kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1800zł', 'photos/telewizory/telewizor13.png', 0),
(14, 'LG', 'QNED MiniLED 90', '4K UHD', '65\"', 'MiniLED', '120Hz', '40W', 'Czarny', '145cm', '83cm', '23kg', '36 miesięcy', 'HDMI, USB, Wi-Fi', 1, 1, 4, '1900zł', 'photos/telewizory/telewizor14.png', 1),
(15, 'TCL', 'P715', '4K UHD', '43\"', 'LED', '60Hz', '16W', 'Czarny', '96cm', '56cm', '8kg', '24 miesiące', 'HDMI, USB, Wi-Fi', 1, 1, 3, '2500zł', 'photos/telewizory/telewizor15.png', 0),
(16, 'Panasonic', 'GX800', '4K UHD', '55\"', 'LED', '60Hz', '20W', 'Srebrny', '123cm', '71cm', '16kg', '24 miesiące', 'HDMI, USB, LAN', 1, 1, 3, '1500zł', 'photos/telewizory/telewizor16.png', 1),
(17, 'Samsung', 'QLED Q70T', '4K UHD', '65\"', 'QLED', '120Hz', '40W', 'Czarny', '145cm', '83cm', '21kg', '24 miesiące', 'HDMI, USB, Wi-Fi', 1, 1, 4, '1300zł', 'photos/telewizory/telewizor17.png', 1),
(18, 'LG', 'NanoCell NANO90', '4K UHD', '55\"', 'LED', '120Hz', '30W', 'Czarny', '124cm', '72cm', '15.6kg', '36 miesięcy', 'HDMI, USB, Bluetooth', 1, 1, 4, '1580zł', 'photos/telewizory/telewizor18.png', 0),
(19, 'Sony', 'Bravia X950H', '4K UHD', '75\"', 'LED', '120Hz', '30W', 'Srebrny', '167cm', '96cm', '30kg', '24 miesiące', 'HDMI, USB, Wi-Fi, LAN', 1, 1, 4, '1100zł', 'photos/telewizory/telewizor19.png', 1),
(20, 'Philips', 'OLED 805', '4K UHD', '65\"', 'OLED', '120Hz', '50W', 'Czarny', '145cm', '83cm', '22kg', '24 miesiące', 'HDMI, USB, LAN, Wi-Fi', 1, 1, 4, '1500zł', 'photos/telewizory/telewizor20.png', 0);

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
