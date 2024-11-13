<?php
// Połączenie z bazą danych
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

    $query = "SELECT * FROM " . $selectedCategory . " WHERE id = :id";
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
    <style>
        .product-page {
    margin: 20px auto; /* Ustawi równy margines nad i pod sekcją produktu */
    max-width: 1200px; /* Ustawienia szerokości, aby sekcja była czytelna */
    padding: 20px;
    background-color: #f5f5f5; /* Jeśli chcesz tło białe */
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Subtelny cień */
    border-radius: 8px; /* Zaokrąglone rogi */
}


.product-top {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    margin-bottom: 40px;
}

.product-image {
    flex: 1;
    max-width: 500px;
    margin-right: 30px;
    background-color: #fff;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.product-image img {
    width: 100%;
    height: auto;
}

.product-info {
    flex: 1;
    max-width: 600px;
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.product-info h1 {
    font-size: 26px;
    font-weight: 600;
    color: #333;
}

.product-price {
    font-size: 22px;
    color: #f97316;
    font-weight: bold;
    margin-top: 10px;
}

.add-to-cart-btn {
    margin: 20px auto; /* Wyśrodkowanie przycisku */
    display: block;
    width: 50%;
    padding: 12px 30px;
    font-size: 18px;
    background-color: black;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.add-to-cart-btn:hover {
    background-color: #ff017d;
}

.product-description {
    background-color: #ffffff;
    padding: 20px;
    margin-top: 30px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.product-description h2 {
    font-size: 22px;
    font-weight: 600;
    margin-bottom: 15px;
}

.product-description p {
    font-size: 16px;
    line-height: 1.6;
    color: #555;
}

.product-full-details {
    background-color: #ffffff;
    padding: 20px;
    margin-top: 30px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.product-full-details h2 {
    font-size: 22px;
    font-weight: 600;
    margin-bottom: 20px;
}

.product-specs {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
}

.spec-item {
    background-color: #f9f9f9;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}

.spec-item:hover {
    background-color: #d1d1d1;
    transition: 0.3s;
}

.spec-item strong {
    font-weight: bold;
    color: #333;
}

.spec-item span {
    color: #555;
}

.back-to-category {
    display: inline-block;
    margin-top: 20px;
    font-size: 16px;
    color: #007bff;
    text-decoration: none;
}

.back-to-category:hover {
    text-decoration: underline;
}


/* Styl dla modala */
/* Efekt hover na obrazie produktu */
/* Efekt hover na obrazie produktu */
.product-image img {
    cursor: zoom-in;
    transition: transform 0.3s ease, filter 0.3s ease;
}

.product-image img:hover {
    transform: scale(1.05);
    filter: brightness(0.9);
}

/* Modal styl */
.modal {
    display: none;
    position: fixed;
    z-index: 1000;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.8);
    justify-content: center;
    align-items: center;
}

.modal-content {
    max-width: 90%;
    max-height: 90%;
    margin: auto;
    display: block;
    border-radius: 8px;
}

/* Przycisk zamykania blisko obrazu */
/* Przycisk zamykania stylizowany jako ikona */
.close {
    position: absolute;
    top: 15px;
    right: 15px;
    width: 35px;
    height: 35px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-color: rgba(0, 0, 0, 0.6);
    border-radius: 50%;
    cursor: pointer;
    transition: background 0.3s ease;
}

.close svg {
    width: 24px;
    height: 24px;
    fill: white;
    transition: fill 0.3s ease;
}

.close:hover {
    background-color: rgba(255, 255, 255, 0.4);
}

.close:hover svg {
    fill: #333; /* Zmieniamy kolor na ciemniejszy przy najechaniu */
}
    </style>
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
                <form action="/search" method="GET" class="formularz" autocomplete="off">
                    <input type="text" name="query" placeholder="Szukaj produktów...">
                    <a href="/#">
                        <img src="./icons/search.png" alt="Szukaj" class="zdjecie">
                    </a>
                </form>       
            </div>
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


    <div class="product-page">
    <div class="product-top">
    <div class="product-image">
    <img src="<?php echo htmlspecialchars($product['photo']); ?>" alt="Zdjęcie produktu" id="product-img" onclick="openModal()">
</div>

<div id="image-modal" class="modal" onclick="closeModal()">
    <span class="close" onclick="closeModal()">&times;</span>
    <img class="modal-content" id="modal-img">
</div>



        <div class="product-info">
            <h1><?php echo htmlspecialchars($product['marka']) . ' ' . htmlspecialchars($product['model']); ?></h1>
            <p class="product-price"><?php echo htmlspecialchars($product['cena']); ?> PLN</p>
            <form action="add_to_cart.php" method="POST">
                <input type="hidden" name="produkt_id" value="<?php echo $productId; ?>">
                <input type="hidden" name="kategoria" value="<?php echo $selectedCategory; ?>">
                <button type="submit" class="add-to-cart-btn">Dodaj do koszyka</button>
            </form>
        </div>
    </div>

    <div class="product-description">
        <h2>Opis produktu</h2>
        <p><?php echo nl2br(htmlspecialchars($product['opis'])); ?></p>
    </div>

    <div class="product-full-details">
        <h2>Szczegóły produktu</h2>
        <div class="product-specs">
    <?php
    foreach ($product as $key => $value) {
        if (!in_array($key, ['id', 'marka', 'model', 'cena', 'photo', 'opis', 'isSale'])) {
            if ($value === 1) {
                $value = "Tak";
            } elseif ($value === 0) {
                $value = "Nie";
            }

            echo "<div class='spec-item'>
                    <strong>" . ucfirst(str_replace('_', ' ', $key)) . ":</strong>
                    <span>" . htmlspecialchars($value) . "</span>
                  </div>";
        }
    }
    ?>
</div>

    </div>

    <a href="index.php" class="back-to-category">Wróć do strony głównej</a>
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
            window.scrollTo({ top: 0, behavior: "smooth" });
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
