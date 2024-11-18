<?php
// db_connect.php
$host = 'localhost';
$dbname = 'sklep';
$user = 'root';
$pass = '';

// Tworzenie połączenia
$conn = new mysqli($host, $user, $pass, $dbname);

// Sprawdzanie połączenia
if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
}
?>
