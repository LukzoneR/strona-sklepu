<?php
    include("db_connect.php");

    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        $koszykId = $_POST['koszyk_id'];
        $quantity = $_POST['quantity'];

        if ($quantity > 0) {
            $query = "UPDATE koszyk_produkty SET ilosc = ? WHERE id = ?";
            $stmt = mysqli_prepare($conn, $query);
            mysqli_stmt_bind_param($stmt, "ii", $quantity, $koszykId);
            mysqli_stmt_execute($stmt);
        }

        echo "Ilość została zaktualizowana.";
    }

