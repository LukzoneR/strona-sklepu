<?php
$host = 'localhost';
$dbname = 'sklep';
$user = 'root';
$pass = '';

error_reporting(E_ALL);
ini_set('display_errors', 1);

$isAjaxRequest = isset($_GET['ajax']) && $_GET['ajax'] == '1';

$selectedCategory = isset($_GET['category']) ? $_GET['category'] : null; // Zmienna jest null, jeśli brak wyboru kategorii

$validCategories = ['smartfony', 'smartwatche', 'laptopy', 'telewizory', 'myszki_i_klawiatury', 'monitory', 'promocje'];
if ($selectedCategory && !in_array($selectedCategory, $validCategories)) {
    $selectedCategory = null; // Jeśli kategoria nie jest prawidłowa, ustawia na null
}

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Sprawdzamy, czy kategoria jest ustawiona
    if ($selectedCategory) {
        // Pobieramy produkty z wybranej kategorii
        $query = "SELECT id, marka, model, cena, photo FROM " . $selectedCategory;
        $stmt = $pdo->prepare($query);
        $stmt->execute();

        // Pobranie wyników
        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);

        // Generowanie HTML dla produktów
        $productHtml = '';
        foreach ($products as $product) {
            // Generowanie linku do strony produktu
            $productLink = 'product.php?category=' . urlencode($selectedCategory) . '&id=' . urlencode($product['id']);
            
            // Tworzenie kafelka produktu
            $productHtml .= '
            <a href="' . $productLink . '" class="product-card">
                <div class="product-card-content">
                    <img src="' . htmlspecialchars($product['photo']) . '" alt="Zdjęcie produktu">
                    <h3 style="color:black">' . htmlspecialchars($product['marka']) . ' ' . htmlspecialchars($product['model']) . '</h3>
                    <p class="price">Cena: ' . htmlspecialchars($product['cena']) . ' PLN</p>
                </div>
            </a>';
        }
    } else {
        $productHtml = ''; // Na stronie głównej nic nie pokazujemy
    }

    // Jeżeli to żądanie Ajax, wyświetlamy HTML dla produktów
    if ($isAjaxRequest) {
        echo $productHtml;
        exit;
    }
} catch (PDOException $e) {
    echo "Błąd połączenia z bazą danych: " . $e->getMessage();
    exit;
}
?>
