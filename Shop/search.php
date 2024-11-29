<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sklep";

// Połączenie z bazą danych
$conn = new mysqli($servername, $username, $password, $dbname);

// Sprawdzenie połączenia
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Pobieramy zapytanie z GET
$query = isset($_GET['query']) ? $_GET['query'] : '';

// Jeśli zapytanie nie jest puste, przeprowadzamy wyszukiwanie
if (!empty($query)) {
    // Rozdzielamy zapytanie na słowa
    $keywords = explode(" ", $query);

    // Przygotowanie zapytania SQL
    $sql = "
        SELECT 'laptopy' AS category, marka, model FROM laptopy WHERE 
        (marka LIKE ? OR model LIKE ?)
        UNION
        SELECT 'monitory' AS category, marka, model FROM monitory WHERE 
        (marka LIKE ? OR model LIKE ?)
        UNION
        SELECT 'myszki_i_klawiatury' AS category, marka, model FROM myszki_i_klawiatury WHERE 
        (marka LIKE ? OR model LIKE ?)
        UNION
        SELECT 'promocje' AS category, marka, model FROM promocje WHERE 
        (marka LIKE ? OR model LIKE ?)
        UNION
        SELECT 'smartfony' AS category, marka, model FROM smartfony WHERE 
        (marka LIKE ? OR model LIKE ?)
        UNION
        SELECT 'smartwatche' AS category, marka, model FROM smartwatche WHERE 
        (marka LIKE ? OR model LIKE ?)
        UNION
        SELECT 'telewizory' AS category, marka, model FROM telewizory WHERE 
        (marka LIKE ? OR model LIKE ?)
    ";

    // Przygotowanie zmiennych do użycia w zapytaniu SQL
    $stmt = $conn->prepare($sql);

    // Jeśli zapytanie zawiera tylko jedno słowo
    if (count($keywords) == 1) {
        $searchTerm = "%" . $keywords[0] . "%";
        $stmt->bind_param('ssssssssssssss',
            $searchTerm, $searchTerm, // laptopy
            $searchTerm, $searchTerm, // monitory
            $searchTerm, $searchTerm, // myszki_i_klawiatury
            $searchTerm, $searchTerm, // promocje
            $searchTerm, $searchTerm, // smartfony
            $searchTerm, $searchTerm, // smartwatche
            $searchTerm, $searchTerm  // telewizory
        );
    } else {
        // Jeśli zapytanie zawiera więcej niż jedno słowo
        // Przypisujemy oba słowa do zmiennych
        $searchTerm1 = "%" . $keywords[0] . "%";
        $searchTerm2 = "%" . $keywords[1] . "%";
        $stmt->bind_param('ssssssssssssss',
            $searchTerm1, $searchTerm2, // laptopy
            $searchTerm1, $searchTerm2, // monitory
            $searchTerm1, $searchTerm2, // myszki_i_klawiatury
            $searchTerm1, $searchTerm2, // promocje
            $searchTerm1, $searchTerm2, // smartfony
            $searchTerm1, $searchTerm2, // smartwatche
            $searchTerm1, $searchTerm2  // telewizory
        );
    }

    // Wykonaj zapytanie
    $stmt->execute();
    $result = $stmt->get_result();

    // Tablica do przechowywania wyników
    $products = [];

    // Pobieramy wyniki
    while ($row = $result->fetch_assoc()) {
        $products[] = ['marka' => $row['marka'], 'model' => $row['model']];
    }

    // Wyświetlanie wyników w formacie JSON
    echo json_encode($products);

    $stmt->close();
}

$conn->close();
?>
