<?php
session_start();

include("db_connect.php");

// Sprawdzenie, czy użytkownik jest zalogowany
// if (!isset($_SESSION['uzytkownik_id'])) {
//     echo "Musisz być zalogowany, aby dodać produkty do koszyka.";
//     exit;
// }

//$uzytkownik_id = $_SESSION['uzytkownik_id'];
$produkt_id = $_POST['produkt_id'];
$kategoria = $_POST['kategoria'];
$ilosc = 1;

// Sprawdzenie, czy koszyk istnieje
$koszyk_id = null;
$query = "SELECT koszyk_id FROM koszyki WHERE uzytkownik_id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("i", $uzytkownik_id);
$stmt->execute();
$stmt->bind_result($koszyk_id);
$stmt->fetch();
$stmt->close();

// Jeśli koszyk nie istnieje, utwórz nowy
//if (!$koszyk_id) {
    $query = "INSERT INTO koszyki (uzytkownik_id) VALUES (?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param("i", $uzytkownik_id);
    $stmt->execute();
    $koszyk_id = $stmt->insert_id;
    $stmt->close();
//}

// Dodanie produktu do koszyka
$query = "INSERT INTO koszyk_produkty (koszyk_id, produkt_id, kategoria, ilosc) 
          VALUES (?, ?, ?, ?)";
$stmt = $conn->prepare($query);
$stmt->bind_param("iisi", $koszyk_id, $produkt_id, $kategoria, $ilosc);
$stmt->execute();
$stmt->close();

header("Location: index.php");
