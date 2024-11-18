<?php
session_start();
include("db_connect.php");

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Pobieranie danych z formularza
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Sprawdzamy, czy użytkownik istnieje w bazie danych
    $stmt = $conn->prepare("SELECT * FROM uzytkownicy WHERE nazwa_uzytkownika = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    // Jeśli użytkownik istnieje
    if ($result->num_rows > 0) {
        $user = $result->fetch_assoc();
        
        // Sprawdzamy poprawność hasła
        if (password_verify($password, $user['haslo'])) {
            // Hasło jest poprawne, logujemy użytkownika
            $_SESSION['username'] = $username;
            echo 'success'; // Odpowiedź z sukcesem
            exit;
        } else {
            // Hasło błędne
            echo 'incorrect_credentials'; // Błędne hasło
            exit;
        }
    } else {
        // Użytkownik nie istnieje
        echo 'incorrect_credentials'; // Błędny użytkownik
        exit;
    }
}
?>
