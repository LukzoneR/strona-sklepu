<?php
include("db_connect.php");

$isAjaxRequest = isset($_GET['ajax']) && $_GET['ajax'] == '1';

$selectedCategory = isset($_GET['category']) ? $_GET['category'] : null;

$validCategories = ['smartfony', 'smartwatche', 'laptopy', 'telewizory', 'myszki_i_klawiatury', 'monitory', 'promocje'];
if ($selectedCategory && !in_array($selectedCategory, $validCategories)) {
    $selectedCategory = null;
}

try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    
    if ($selectedCategory) {
        $query = "SELECT id, marka, model, cena, photo FROM " . $selectedCategory;
        $stmt = $pdo->prepare($query);
        $stmt->execute();
        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);

        
        $productHtml = '';
        foreach ($products as $product) {        
            $productLink = 'product.php?category=' . urlencode($selectedCategory) . '&id=' . urlencode($product['id']);
            $productHtml .= '
            <a href="' . $productLink . '" class="product-card">
                <div class="product-card-content">
                    <img src="' . htmlspecialchars($product['photo']) . '" alt="Zdjęcie produktu">
                    <h3 style="color:black">' . htmlspecialchars($product['marka']) . ' ' . htmlspecialchars($product['model']) . '</h3>
                    <p class="price">Cena: ' . htmlspecialchars($product['cena']) . '</p>
                </div>
            </a>';
        }
    } else {
        $productHtml = '';
    }

    if ($isAjaxRequest) {
        echo $productHtml;
        exit;
    }
} catch (PDOException $e) {
    echo "Błąd połączenia z bazą danych: " . $e->getMessage();
    exit;
}
?>
