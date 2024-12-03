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
    // Przygotowanie zapytania SQL
    $stmt = $conn->prepare("
        SELECT 'laptopy' AS category, id, marka, model FROM laptopy WHERE marka LIKE ? OR model LIKE ?
        UNION
        SELECT 'monitory' AS category, id, marka, model FROM monitory WHERE marka LIKE ? OR model LIKE ?
        UNION
        SELECT 'myszki_i_klawiatury' AS category, id, marka, model FROM myszki_i_klawiatury WHERE marka LIKE ? OR model LIKE ?
        UNION
        SELECT 'promocje' AS category, id, marka, model FROM promocje WHERE marka LIKE ? OR model LIKE ?
        UNION
        SELECT 'smartfony' AS category, id, marka, model FROM smartfony WHERE marka LIKE ? OR model LIKE ?
        UNION
        SELECT 'smartwatche' AS category, id, marka, model FROM smartwatche WHERE marka LIKE ? OR model LIKE ?
        UNION
        SELECT 'telewizory' AS category, id, marka, model FROM telewizory WHERE marka LIKE ? OR model LIKE ?
    ");
    
    // Przygotowanie zmiennej do zapytania
    $searchTerm = "%$query%"; // Użycie procentów, żeby dopasować frazę w dowolnym miejscu tekstu
    
    // Dopasowanie zmiennej dla każdego z parametrów w zapytaniu
    $stmt->bind_param('ssssssssssssss', 
        $searchTerm, $searchTerm, // laptopy
        $searchTerm, $searchTerm, // monitory
        $searchTerm, $searchTerm, // myszki_i_klawiatury
        $searchTerm, $searchTerm, // promocje
        $searchTerm, $searchTerm, // smartfony
        $searchTerm, $searchTerm, // smartwatche
        $searchTerm, $searchTerm  // telewizory
    );
    
    $stmt->execute();
    $result = $stmt->get_result();

    // Tablica do przechowywania wyników
    $results = [];

    // Grupowanie wyników po kategorii
    while ($row = $result->fetch_assoc()) {
        $results[] = [
            'category' => $row['category'],
            'id' => $row['id'],
            'marka' => $row['marka'],
            'model' => $row['model']
        ];
    }

    // Zwracamy wyniki w formie JSON
    echo json_encode($results);
    
    $stmt->close();
}

$conn->close();
?>
