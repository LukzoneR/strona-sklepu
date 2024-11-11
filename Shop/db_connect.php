<?php
$host = 'localhost';
$dbname = 'sklep';
$user = 'root';
$pass = '';

$conn = new mysqli($host, $user, $pass, $dbname);
if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
}
