<?php
    include("db_connect.php");

    $productId = isset($_GET['id']) ? $_GET['id'] : null;
    $selectedCategory = isset($_GET['category']) ? $_GET['category'] : null;

    if (!$productId || !$selectedCategory) {
        echo "Nie znaleziono produktu!";
        exit;
    }

    try {
        $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $user, $pass);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        
        $query = "SELECT id, marka, model, cena, photo, opis FROM " . $selectedCategory . " WHERE id = :id";
        $stmt = $pdo->prepare($query);
        $stmt->bindParam(':id', $productId, PDO::PARAM_INT);
        $stmt->execute();

        
        $product = $stmt->fetch(PDO::FETCH_ASSOC);

        if (!$product) {
            echo "Nie znaleziono produktu w tej kategorii.";
            exit;
        }

    } catch (PDOException $e) {
        echo "Błąd połączenia z bazą danych: " . $e->getMessage();
        exit;
    }
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($product['marka']) . ' ' . htmlspecialchars($product['model']); ?></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="product-page">
        <h1><?php echo htmlspecialchars($product['marka']) . ' ' . htmlspecialchars($product['model']); ?></h1>
        <div class="product-details">
            <div class="product-image">
                <img src="<?php echo htmlspecialchars($product['photo']); ?>" alt="Zdjęcie produktu">
            </div>
            <div class="product-info">
                <p><strong>Cena: </strong><?php echo htmlspecialchars($product['cena']); ?> PLN</p>
                <p><strong>Opis: </strong><?php echo nl2br(htmlspecialchars($product['opis'])); ?></p>
                
            </div>
        </div>
        <a href="index.php" class="back-button">Wróć do kategorii</a>
        <form action="add_to_cart.php" method="POST">
            <input type="hidden" name="produkt_id" value="<?php echo $productId?>">
            <input type="hidden" name="kategoria" value="<?php echo $selectedCategory?>">
            <button type="submit">Dodaj do koszyka</button>
        </form>
    </div>
</body>
</html>
