<?php
session_start();
include("db_connect.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Pobranie danych z formularza
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Sprawdzamy, czy użytkownik już istnieje w bazie danych
    $stmt = $conn->prepare("SELECT * FROM uzytkownicy WHERE nazwa_uzytkownika = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        // Użytkownik już istnieje
        echo json_encode(["status" => "error", "message" => "Użytkownik o tej nazwie już istnieje."]);
        exit;
    } else {
        // Hashowanie hasła
        $hashed_password = password_hash($password, PASSWORD_DEFAULT);

        // Wstawienie nowego użytkownika do bazy danych
        $stmt = $conn->prepare("INSERT INTO uzytkownicy (nazwa_uzytkownika, haslo) VALUES (?, ?)");
        $stmt->bind_param("ss", $username, $hashed_password);
        $stmt->execute();

        header("Location: index.php");
        exit;
    }
}
?>
