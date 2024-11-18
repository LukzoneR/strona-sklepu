<?php
session_start();
session_unset();  // Usuwamy wszystkie zmienne sesyjne
session_destroy();  // Niszczenie sesji
$_SESSION['logoutMessage'] = "Wylogowano pomyślnie!"; // Komunikat o wylogowaniu
header("Location: index.php"); // Przekierowanie na stronę główną
exit();
?>
