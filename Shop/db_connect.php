<?php
$host = 'localhost';
$dbname = 'sklep';
$user = 'root';
$pass = '';

try {
    $conn = new mysqli($host, $user, $pass, $dbname);

    if ($conn->connect_errno) {
        throw new Exception("Błąd połączenia z bazą danych: " . $conn->connect_error, $conn->connect_errno);
    }

    $result = $conn->query("SELECT * FROM koszyk_produkty");
    if (!$result) {
        if ($conn->errno == 1146) {
            throw new Exception("Tabela 'koszyk_produkty' nie istnieje w bazie danych.", 1146);
        } else {
            throw new Exception("Błąd zapytania do bazy danych: " . $conn->error, $conn->errno);
        }
    }
} catch (Exception $e) {
    echo '<div style="display: flex; justify-content: center; align-items: center; height: 100vh; background-color: #f4f4f4;">';
    echo '<div style="text-align: center; padding: 80px; border-radius: 20px; background: white; box-shadow: 0 10px 40px rgba(0, 0, 0, 0.3); width: 60%; max-width: 800px;">';

    if ($e->getCode() == 1049) {
        echo '<h1 style="color: #ff6f61; font-size: 48px; margin-bottom: 20px;">Brak połączenia z bazą danych!</h1>';
        echo '<p style="font-size: 24px; color: #333; margin-bottom: 30px;">Kod błędu: ' . $e->getCode() . '</p>';
        echo '<p style="font-size: 24px; color: #333; margin-bottom: 30px;">Opis błędu: ' . $e->getMessage() . '</p>';
        echo '<img src="images/brak-bazy-danych.png" alt="Brak bazy danych" style="max-width: 350px; margin-bottom: 30px;">';
    } elseif ($e->getCode() == 1146) {
        echo '<h1 style="color: #ff6f61; font-size: 48px; margin-bottom: 20px;">Brak tabeli w bazie danych!</h1>';
        echo '<p style="font-size: 24px; color: #333; margin-bottom: 30px;">Kod błędu: ' . $e->getCode() . '</p>';
        echo '<p style="font-size: 24px; color: #333; margin-bottom: 30px;">Opis błędu: ' . $e->getMessage() . '</p>';
        echo '<img src="images/brak-tabeli.png" alt="Brak tabeli" style="max-width: 350px; margin-bottom: 30px;">';
    } else {
        echo '<h1 style="color: #ff6f61; font-size: 48px; margin-bottom: 20px;">Błąd bazy danych!</h1>';
        echo '<p style="font-size: 24px; color: #333; margin-bottom: 30px;">Kod błędu: ' . $e->getCode() . '</p>';
        echo '<p style="font-size: 24px; color: #333; margin-bottom: 30px;">Opis błędu: ' . $e->getMessage() . '</p>';
        echo '<img src="images/brak-bazy-danych.png" alt="Błąd bazy danych" style="max-width: 350px; margin-bottom: 30px;">';
    }

    echo '<p style="margin-top: 30px;"><a href="/" style="text-decoration: none; color: #007bff; font-size: 20px;">Powrót na stronę główną</a></p>';
    echo '</div>';
    echo '</div>';
    exit;
}
?>
