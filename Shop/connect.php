<?php

$host = 'localhost'; 
$user = 'root'; 
$password = '';
$database = 'sklep';

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
}

// echo "Połączenie z bazą danych zostało nawiązane pomyślnie";

$conn->close();

?>