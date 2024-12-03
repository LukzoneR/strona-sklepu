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
$totalPrice = 0;

foreach ($cartItems as $item) {
    $totalPrice += convertPriceToNumber($item['cena']) * $item['ilosc'];
}
?>

<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <style>
    .checkout-container {
        max-width: 1000px;
        margin: 0 auto;
        padding: 20px;
    }

    .cart-items {
        margin-bottom: 30px;
    }

    .cart-items ul {
        list-style: none;
        padding: 0;
    }

    .cart-items ul li {
        display: flex;
        align-items: center;
        justify-content: space-between;
        padding: 10px 0;
        border-bottom: 1px solid #ddd;
    }

    .cart-items img {
        width: 100px;
        height: auto;
    }

    .checkout-form,
    .cart-items {
        background-color: #f8f8f8;
        padding: 20px;
        margin-top: 50px;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .checkout-form h3 {
        margin-bottom: 20px;
    }

    .checkout-form label {
        display: block;
        margin: 10px 0 5px;
        font-weight: bold;
    }

    .checkout-form input,
    .checkout-form select,
    .checkout-form textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }

    .checkout-form button {
        display: block;
        max-width: 500px;
        padding: 10px 20px;
        background-color: #000000;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        margin: auto;
    }

    .checkout-form button:hover {
        background-color: #ff017d;
    }

    .section-title {
        font-size: 20px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .payment-options {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        margin-bottom: 20px;
    }

    .payment-options label {
        display: flex;
        align-items: center;
        margin-bottom: 15px;
        font-size: 16px;
    }

    .payment-options input[type="radio"] {
        margin: auto;
        margin-right: 10px;
        width: 18px;
        height: 18px;
    }
    </style>
    <title>Podsumowanie zakupów</title>
</head>

<body>

    <header>
        <div id="topbar">
            <div>
                <h3><img src="./icons/users.png" alt=""> Tysiące zadowolonych klientów</h3>
            </div>
            <div>
                <h3><img src="./icons/truck.png" alt=""> Darmowa wysyłka w ten sam dzień</h3>
            </div>
            <div>
                <h3><img src="./icons/calendar.png" alt=""> Od 10 lat na rynku</h3>
            </div>
        </div>
        <div id="midbar">
            <div id="logo" onclick="window.location.href='./index.php'">
                <img src="./images/logos/techmart.svg" alt="Logo strony">
            </div>
            <div id="searchbar">
                <form id="searchForm" class="formularz" autocomplete="off">
                    <input type="text" id="searchInput" name="query" placeholder="Szukaj produktów..."
                        oninput="searchProducts()">
                    <a href="/#">
                        <img src="./icons/search.png" alt="Szukaj" class="zdjecie">
                    </a>
                </form>
                <div id="results"></div>
            </div>
            <script src="script.js"></script>
            <div id="user" onclick="window.location.href='./index.php'">
                <a href="#">
                    Konto <img src="./icons/user.png" alt="Użytkownik">
                </a>
            </div>
            <div id="cart" onclick="window.location.href='./index.php'">
                <a href="#">
                    Koszyk <img src="./icons/cart.png" alt="Koszyk">
                </a>
            </div>
        </div>
        <div id="categories">
            <ul>
                <li><a href="index.php?category=smartfony" class="category-link">Telefony</a></li>
                <li><a href="index.php?category=smartwatche" class="category-link">Smartwatche</a></li>
                <li><a href="index.php?category=laptopy" class="category-link">Laptopy</a></li>
                <li><a href="index.php?category=telewizory" class="category-link">Telewizory</a></li>
                <li><a href="index.php?category=myszki_i_klawiatury" class="category-link">Myszki i Klawiatury</a></li>
                <li><a href="index.php?category=monitory" class="category-link">Monitory</a></li>
                <li><a href="index.php?category=promocje" class="category-link highlight">Promocje</a></li>
            </ul>
        </div>

    </header>


    <div class="checkout-container">

        <div class="cart-items">
            <h2>Produkty</h2>
            <ul>
                <?php if (!empty($cartItems)): ?>
                <?php foreach ($cartItems as $item): ?>
                <li>
                    <img src="<?php echo $item['photo']; ?>" alt="Zdjęcie produktu">
                    <div>
                        <p>Marka: <?php echo $item['marka']; ?></p>
                        <p>Model: <?php echo $item['model']; ?></p>
                        <p>Cena: <?php echo $item['cena']; ?></p>
                        <p>Ilość: <?php echo $item['ilosc']; ?></p>
                    </div>
                    <p>Razem: <?php echo number_format($item['ilosc'] * convertPriceToNumber($item['cena']), 2); ?> zł
                    </p>
                </li>
                <?php endforeach; ?>
                <?php else: ?>
                <p>Twój koszyk jest pusty.</p>
                <?php endif; ?>
            </ul>
            </br>
            <h3>Łączna kwota: <?php echo number_format($totalPrice, 2); ?> zł</h3>
        </div>

        <div class="checkout-form">
            <h3>Formularz zakupu</h3>
            <form action="process_order.php" method="post"  autocomplete="off">
                <div>
                    <label for="customer-type">Kupujesz jako:</label>
                    <select id="customer-type" name="customer_type">
                        <option value="private">Osoba prywatna</option>
                        <option value="company">Firma</option>
                    </select>
                </div>

                <div>
                    <label for="name">Imię i nazwisko:</label>
                    <input type="text" id="name" name="name" required autoc>
                </div>

                <div>
                    <label for="customer-type">Sposób dostawy:</label>
                    <select id="customer-type" name="customer_type">
                        <option value="inpost">Paczkomat InPost</option>
                        <option value="dhl">Punkt DHL</option>
                        <option value="deliver">Kurier</option>
                        <option value="self-collect">Odbiór osobisty</option>
                    </select>
                </div>

                <div>
                    <label for="address">Adres dostawy:</label>
                    <textarea id="address" name="address" required></textarea>
                </div>

                <div>
                    <label for="email">E-mail:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                </br>
                <div class="section-title">Płatność</div>
                <div class="payment-options">
                    <label>
                        <input type="radio" name="payment_method" value="online" required>
                        Kod Blik
                    </label>
                    <label>
                        <input type="radio" name="payment_method" value="card">
                        Karta płatnicza
                    </label>
                    <label>
                        <input type="radio" name="payment_method" value="cash">
                        Przy odbiorze
                    </label>
                    <label>
                        <input type="radio" name="payment_method" value="transfer">
                        Przelew
                    </label>
                </div>

                <button type="submit">Złóż zamówienie</button>
            </form>
        </div>
    </div>

    <footer>
        <div id="footer-container">
            <div id="footer-links">
                <h4>Informacje</h4>
                <ul>
                    <li><a href=".\about.php">O nas</a></li>
                    <li><a href=".\privacy policy.php">Polityka prywatności</a></li>
                    <li><a href=".\terms.php">Warunki zakupu</a></li>
                </ul>
            </div>
            <div id="footer-contact">
                <h4>Kontakt</h4>
                <div class="contact-icons">
                    <a href="mailto:kontakt@TechMart.pl" class="contact-item">
                        <img src="./icons/mail.png" alt="Email">
                        kontakt@TechMart.pl
                    </a>
                    <a href="tel:392-267-921" class="contact-item">
                        <img src="./icons/phone.png" alt="Telefon">
                        +48 392-267-921
                    </a>
                </div>
            </div>
            <div id="newsletter-section">
                <h4 class="newsletter-title">Zapisz się do newslettera</h4>
                <div class="newsletter-form">
                    <input type="email" placeholder="Wpisz swój email" required>
                    <button type="button">Zapisz się</button>
                </div>
            </div>
        </div>
        <div id="footer-bottom">
            <div class="social-media">
                <a href="#"><img src="./icons/facebook.png" alt="Facebook"></a>
                <a href="#"><img src="./icons/tiktok.png" alt="Tik-tok"></a>
                <a href="#"><img src="./icons/instagram.png" alt="Instagram"></a>
                <a href="https://www.youtube.com/watch?v=233g2QVTSp8"><img src="./icons/youtube.png" alt="Youtube"></a>
            </div>
            <div class="copyrights"> © 2024 TechMart. Wszelkie prawa zastrzeżone.
            </div>
        </div>
    </footer>
    <script>
    function openModal() {
        var modal = document.getElementById("image-modal");
        var modalImg = document.getElementById("modal-img");
        var productImg = document.getElementById("product-img");

        modal.style.display = "flex";
        modalImg.src = productImg.src;
    }

    function closeModal() {
        document.getElementById("image-modal").style.display = "none";
    }

    function scrollToTop() {
        window.scrollTo({
            top: 0,
            behavior: "smooth"
        });
    }

    window.addEventListener("scroll", function() {
        const swipeUpButton = document.getElementById("swipe-up");
        const footer = document.querySelector("footer");
        const footerPosition = footer.getBoundingClientRect().top;
        const windowHeight = window.innerHeight;

        if (window.scrollY > 100) {
            swipeUpButton.classList.add("show");
        } else {
            swipeUpButton.classList.remove("show");
        }

        if (footerPosition < windowHeight) {
            swipeUpButton.style.bottom = `${windowHeight - footerPosition + 20}px`;
        } else {
            swipeUpButton.style.bottom = "20px";
        }
    });
    </script>

    <div id="swipe-up" onclick="scrollToTop()">
        <img src="./icons/up.png" alt="Swipe Up" />
    </div>

</body>

</html>