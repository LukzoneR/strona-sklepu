<?php
include("db_connect.php");

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    mysqli_query($conn, "DELETE FROM koszyk_produkty");
    header("Location: cart.php");
    exit;
}
?>
