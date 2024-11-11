<?php
    include("db_connect.php");

    function convertPriceToNumber($price) {
        // Usuwamy wszystkie znaki inne niż cyfry i kropki (.)
        $numericPrice = preg_replace('/[^0-9.]/', '', $price);
        return floatval($numericPrice);
    }    

    function getCartItems($conn) {
        // Pobierz produkty z tabeli koszyk_produkty
        $query = "SELECT id, koszyk_id, produkt_id, kategoria, ilosc FROM koszyk_produkty";
        $result = mysqli_query($conn, $query);
        
        $products = [];
    
        if ($result && mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $category = $row['kategoria'];
                $productId = $row['produkt_id'];
                
                // Pobierz szczegóły produktu z odpowiedniej tabeli na podstawie kategorii
                $productQuery = "SELECT photo, marka, model, cena FROM $category WHERE id = $productId";
                $productResult = mysqli_query($conn, $productQuery);
    
                if ($productResult && mysqli_num_rows($productResult) > 0) {
                    $productData = mysqli_fetch_assoc($productResult);
                    $productData['ilosc'] = $row['ilosc'];
                    $products[] = $productData;
                }
            }
        }
    
        return $products;
    }
    
    $cartItems = getCartItems($conn);

    $sql = "SELECT * FROM koszyk_produkty";
    $result2 = mysqli_query($conn, $sql);
    $tab = mysqli_fetch_all($result2, MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
    #cart-items li {
        display: flex;
        align-items: center;
        margin-bottom: 15px;
    }

    .product-photo {
        width: 100px;
        height: 100px;
        object-fit: cover;
        margin-right: 20px;
    }

    .product-info {
        flex-grow: 1;
    }

    .product-price {
        font-weight: bold;
    }

    #cart-modal {
        z-index: 20;
    }

    #delete{
        display: flex;
        align-items: center;
        margin-bottom: 15px;
        flex-grow: 1;
    }
    </style>
    <title>Document</title>
</head>

<body>
    <div id="cart-modal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeCartModal()">&times;</span>
            <h2 id="cart-title">Twój Koszyk</h2>
            <div id="cart-container">
                <ul id="cart-items">
                    <?php if (!empty($cartItems)): ?>
                    <?php foreach ($cartItems as $item): ?>
                    <li>
                        <img src="<?php echo $item['photo']; ?>" alt="Zdjęcie produktu" class="product-photo">
                        <div class="product-info">
                            <p>Marka: <?php echo $item['marka']; ?></p>
                            <p>Model: <?php echo $item['model']; ?></p>
                            <p class="product-price">Cena: <?php echo $item['cena']; ?></p>
                            <p>Ilość: <?php echo $item['ilosc']; ?></p>
                        </div>
                    </li>
                    <?php endforeach; ?>
                    <?php foreach($tab as $product): ?>
                    <div id="delete"><a href='delete_cart.php?id=<?php echo $product['id'];?>'
                            onclick="return confirm('Czy na pewno chcesz usunąć ten produkt?')">Usuń</a></div>
                    <?php endforeach; ?>
                    <?php else: ?>
                    <li>Twój koszyk jest pusty.</li>
                    <?php endif; ?>
                </ul>
            </div>

            <!-- Podsumowanie koszyka -->
            <div id="cart-summary">
                <p>Łączna kwota: <span id="total-price">
                        <?php
                    $totalPrice = 0;
                    foreach ($cartItems as $item) {
                        $totalPrice += convertPriceToNumber($item['cena']) * $item['ilosc'];
                    }
                    echo number_format($totalPrice);
                    ?> zł</span>
                </p>
                <button id="checkout-btn">Przejdź do kasy</button>
            </div>
        </div>
    </div>

</body>

</html>