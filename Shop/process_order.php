<?php
include("db_connect.php");

// Usuwanie wszystkich produktów z koszyka
function clearCart($conn) {
    $query = "DELETE FROM koszyk_produkty";
    mysqli_query($conn, $query);
}

// Obsługa danych formularza
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $customerType = $_POST['customer_type'];
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $address = mysqli_real_escape_string($conn, $_POST['address']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $paymentMethod = $_POST['payment_method'];

    // Czyszczenie koszyka
    clearCart($conn);

    // Przekierowanie na stronę główną
    header("Location: index.php");
    exit();
}
