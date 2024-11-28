<?php
    include("db_connect.php");

    function convertPriceToNumber($price) {
        $numericPrice = preg_replace('/[^0-9.]/', '', $price);
        return floatval($numericPrice);
    }    

    function getCartItems($conn) {
        $query = "SELECT id, koszyk_id, produkt_id, kategoria, ilosc FROM koszyk_produkty";
        $result = mysqli_query($conn, $query);
        
        $products = [];
    
        if ($result && mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $category = $row['kategoria'];
                $productId = $row['produkt_id'];
                
                $productQuery = "SELECT photo, marka, model, cena FROM $category WHERE id = $productId";
                $productResult = mysqli_query($conn, $productQuery);
    
                if ($productResult && mysqli_num_rows($productResult) > 0) {
                    $productData = mysqli_fetch_assoc($productResult);
                    $productData['ilosc'] = $row['ilosc'];
                    $productData['koszyk_id'] = $row['id'];
                    $products[] = $productData;
                }
            }
        }
    
        return $products;
    }
    
    $cartItems = getCartItems($conn);
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
            justify-content: space-between;
            margin-bottom: 15px;
            border-bottom: 1px solid #ddd;
            padding-bottom: 10px;
        }

        #cart-modal {
            z-index: 20;
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

        #delete {
            margin-left: 20px;
        }

        #delete a {
            color: red;
            text-decoration: none;
            font-weight: bold;
        }

        #delete a:hover {
            text-decoration: underline;
        }

        .sumary {
            margin-top: 20px;
            margin-bottom: 20px;
        }

        .number-input {
            display: inline-block;
            width: 30px;
        }


/* Przycisk zamykania */
/* Okno modalu */
.modal-content2 {
    background-color: #ffffff;
    margin: 8% auto;
    padding: 30px;
    border: 1px solid #888;
    border-radius: 8px;
    width: 400px; /* Zmniejszona szerokość okna */
    max-width: 100%; /* Zapewnia responsywność */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    animation: slideIn 0.5s;
    margin-top: 13%;
    
}

/* Przycisk zamykania */
.close-btn {
    font-size: 30px;
    font-weight: bold;
    cursor: pointer;
    color: #888;
    background: none;
    border: none;
    transition: color 0.3s ease;
     /* Pozycjonowanie przycisku względem kontenera modalu */
    top: 20px;
    right: 20px;
}

/* Przycisk zamykania po najechaniu */
.close-btn:hover,
.close-btn:focus {
    color: #333; 
    text-decoration: none;
}

/* Treść modalu */
.modal-body {
    padding: 20px 0;
    font-size: 16px;
    text-align: center;
    color: #333;
}

/* Przycisk potwierdzenia usunięcia */
.modal-footer {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}

/* Przycisk 'Tak' */
.btn-confirm {
    background-color: #ff017d; 
    color: white;
    padding: 12px 30px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    border: none;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

.btn-confirm:hover {
    background-color: #b3005b;
}

.btn-confirm:active {
    transform: translateY(2px);
}

/* Przycisk 'Nie' */
.btn-cancel {
    background-color: #dc3545;
    color: white;
    padding: 12px 30px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    border: none;
    transition: background-color 0.3s ease, transform 0.2s ease;
}



/* Przycisk 'Anuluj' */
.btn-secondary {
    background-color: #6c757d;
    color: white;
    padding: 12px 30px;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    border: none;
}

.btn-secondary:hover {
    background-color: #495057;
}

.btn-secondary:active {
    transform: translateY(2px);
}

/* Użyj małych odstępów pomiędzy przyciskami */
.modal-footer button + button {
    margin-left: 10px;
}



    </style>
    <title>Document</title>
</head>

<body>
    <div id="cart-modal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeCartModal(); location.reload()">&times;</span>
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
                            <form id="quantity-form-<?php echo $item['koszyk_id']; ?>" onsubmit="return false;">
                                <label>Ilość:</label>
                                <input type="number" class="number-input" id="number-input-<?php echo $item['koszyk_id']; ?>" name="quantity"
                                    value="<?php echo $item['ilosc']; ?>" min="1" required
                                    onchange="handleQuantityChange(<?php echo $item['koszyk_id']; ?>, this);">
                            </form>

                        </div>
                        <div id="delete">
    <a href="#" onclick="showDeleteModal('<?php echo $item['koszyk_id']; ?>')">Usuń</a>
</div>

<!-- Modal potwierdzenia usunięcia -->
<div id="delete-modal" class="modal">
    <div class="modal-content2">
        <div class="modal-header">
            <span class="close-btn" onclick="hideDeleteModal()">&times;</span>
            <h2 style="text-align: center;">Potwierdzenie</h2>
        </div>
        <div class="modal-body">
            <p>Czy na pewno chcesz usunąć ten produkt?</p>
        </div>
        <div class="modal-footer">
            <button id="confirm-delete" class="btn-confirm">Tak</button>
            <button class="btn-secondary" onclick="hideDeleteModal()">Nie</button>
        </div>
    </div>
</div>


                    </li>
                    <?php endforeach; ?>
                    <?php else: ?>
                    <li>Twój koszyk jest pusty.</li>
                    <?php endif; ?>
                </ul>
            </div>

            <!-- Podsumowanie koszyka -->
            <div id="cart-summary">
                <p class="sumary">Łączna kwota: <span id="total-price">
                        <?php
                    $totalPrice = 0;
                    foreach ($cartItems as $item) {
                        $totalPrice += convertPriceToNumber($item['cena']) * $item['ilosc'];
                    }
                    echo number_format($totalPrice);
                    ?> zł</span>
                </p>
                <form action="summary.php" method="get">
                    <button type="submit">Przejdź do kasy</button>
                </form>

            </div>
        </div>
    </div>

    
    <script>
        function updateQuantity(koszykId, newQuantity) {
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "update_quantity.php", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

            var data = "koszyk_id=" + koszykId + "&quantity=" + newQuantity;

            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    document.getElementById("total-price").innerHTML = xhr.responseText;
                }
            };

            xhr.send(data);
        }

        function handleQuantityChange(koszykId, inputElement) {
            var newQuantity = inputElement.value;
            updateQuantity(koszykId, newQuantity);
        }
       
       
       
       
        function showDeleteModal(cartId) {
    document.getElementById("delete-modal").style.display = "block";
    document.getElementById("confirm-delete").onclick = function() {
        window.location.href = `delete_cart.php?id=${cartId}`;
    };
}

function hideDeleteModal() {
    document.getElementById("delete-modal").style.display = "none";
}


    </script>

</body>

</html>