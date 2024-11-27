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
            $productHtml .= '<a href="' . $productLink . '" class="product-card">
                <div class="product-card-content">
                    <img src="' . htmlspecialchars($product['photo']) . '" alt="Zdjęcie produktu">
                    <h3 style="color:black";>' . htmlspecialchars($product['marka']) . ' ' . htmlspecialchars($product['model']) . '</h3>';
            
            // Sprawdzenie, czy to kategoria promocje, aby dodać rabat
            if ($selectedCategory === 'promocje') {
                // Oryginalna cena (przekreślona)
                $originalPrice = floatval($product['cena']); // Upewniamy się, że cena to liczba zmiennoprzecinkowa
                $discountedPrice = $originalPrice * 0.8; // 20% rabat
                
                // Dodajemy kontener dla obu cen
                $productHtml .= '<div class="prices-container">
                    <p class="original-price"><s>' . number_format($originalPrice, 2) . ' zł</s></p>
                    <p class="discounted-price">' . number_format($discountedPrice, 2) . ' zł</p>
                </div>';
            } else {
                // Cena dla pozostałych kategorii
                $productHtml .= '<p class="price" style="color:red";>' . number_format(floatval($product['cena']), 2) . ' zł</p>';
            }

            $productHtml .= '</div></a>';
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




<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Techmart</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
    <style>
        /* Stylizacja dla rozwijanego menu */
#user {
    position: relative;
}

/* Ukrywanie menu na początku */
/* Styl dla konta użytkownika */
#user {
    position: relative;
    display: inline-block;
    cursor: pointer;
}

#user a {
    color: #333;
    text-decoration: none;
    font-size: 16px;
    display: flex;
    align-items: center;
}

#user img {
    margin-left: 8px;
    width: 20px;
    height: 20px;
}

/* Styl rozwijanego menu użytkownika */
.user-menu {
    position: absolute;
    top: 100%;
    right: 0;
    background-color: #ffffff;
    border: 1px solid #ccc;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    border-radius: 4px;
    width: 200px;
    display: none;
    padding: 10px 0;
    z-index: 9999;
}

.user-menu a {
    display: block;
    padding: 10px 20px;
    color: #333;
    text-decoration: none;
    font-size: 14px;
    transition: background-color 0.3s ease;
}

.user-menu a:hover {
    background-color: #f0f9ff;
}

.user-menu a:active {
    background-color: #e6f7ff;
}

/* Kolor dla linku "Wyloguj się" */
#logout-link {
    color: #ff017d;
    font-weight: bold;
}

#logout-link:hover {
    color: #ff4c95;
}

/* Stylowanie komunikatów o błędach */
.error-message {
    color: red;
    font-size: 14px;
    margin-top: 5px;
    display: block;
}

#error-message {
    background-color: rgba(255, 0, 0, 0.1);
    padding: 10px;
    border-radius: 5px;
    margin-top: 10px;
}

#error-message.show {
    display: block;
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
<?php
session_start(); // Upewnij się, że sesja jest rozpoczęta
if (isset($_SESSION['username'])):
    $username = $_SESSION['username'];
    ?>
    <div id="user" onclick="toggleUserMenu(event)">
        <a href="javascript:void(0);">
            Witaj, <span id="username-display"><?php echo htmlspecialchars($username); ?></span>
            <img src="icons/user.png" alt="Użytkownik">
        </a>
        <div id="user-menu" class="user-menu" style="display:none;">
            <a href="orders.php">Moje zamówienia</a>
            <a href="logout.php" id="logout-link">Wyloguj się</a>
        </div>
    </div>
<?php else: ?>
    <div id="user" onclick="document.getElementById('login-modal').style.display='block'">
        <a href="#">Konto <img src="./icons/user.png" alt="Użytkownik"></a>
    </div>
<?php endif; ?>


            <div id="cart" onclick="document.getElementById('cart-modal').style.display='block'">
                <a href="#">
                    Koszyk <img src="./icons/cart.png" alt="Koszyk">
                </a>
            </div>
        </div>
        <div id="categories">
            <ul>
                <li><a href="#" class="category-link" data-category="smartfony">Telefony</a></li>
                <li><a href="#" class="category-link" data-category="smartwatche">Smartwatche</a></li>
                <li><a href="#" class="category-link" data-category="laptopy">Laptopy</a></li>
                <li><a href="#" class="category-link" data-category="telewizory">Telewizory</a></li>
                <li><a href="#" class="category-link" data-category="myszki_i_klawiatury">Myszki i Klawiatury</a></li>
                <li><a href="#" class="category-link" data-category="monitory">Monitory</a></li>
                <li><a href="#" class="category-link highlight" data-category="promocje">Promocje</a></li>
            </ul>
        </div>

    </header>
    <main>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="images/baner numia.png" alt="Baner 1">
                </div>
                <div class="swiper-slide">
                    <img src="images/baner samsung.png" alt="Baner 2">
                </div>
                <div class="swiper-slide">
                    <img src="images/baner mac.png" alt="Baner 3">
                </div>
                <div class="swiper-slide">
                    <img src="images/baner telewizor.png" alt="Baner 4">
                </div>
                <div class="swiper-slide">
                    <img src="images/baner xiaomi.png" alt="Baner 5">
                </div>
            </div>

            <div class="swiper-button-next"></div>

            <div class="swiper-button-prev"></div>

            <div class="swiper-pagination"></div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

        <div class="product-grid">
            <?php
                if (isset($productHtml) && !empty($productHtml)) {
                    echo $productHtml;
                }
            ?>
        </div>
        </div>

        <div id="swipe-up" onclick="scrollToTop()">
            <img src="./icons/up.png" alt="Swipe Up" />
        </div>

    </main>




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




    <div id="login-modal" class="modal">
    <div class="modal-content">
        <span class="close" onclick="closeModal()">&times;</span>
        <h2 id="modal-title">Logowanie</h2>
        <div id="form-container">
            <!-- Formularz logowania -->
            <form id="login-form" action="login.php" method="POST" onsubmit="return handleLogin(event)">
                <div class="form-group">
                    <label for="username">Nazwa użytkownika:</label>
                    <input type="text" id="username" name="username" required autocomplete="off">
                </div>
                <div class="form-group">
                    <label for="password">Hasło:</label>
                    <div class="password-container">
                        <input type="password" id="password" name="password" required>
                        <img src="icons/eye-crossed.png" alt="Pokaż hasło" id="toggle-password" class="eye-icon">
                    </div>
                </div>
                <!-- Komunikat o błędnym haśle -->
                <div id="error-message" style="color: red; display: none;">Niepoprawna nazwa użytkownika lub hasło!</div>
                <button type="submit">Zaloguj się</button>
            </form>


            <form id="registration-form" action="register.php" method="POST" style="display: none;" onsubmit="return validatePassword()">
    <div class="form-group">
        <label for="reg-username">Nazwa użytkownika:</label>
        <input type="text" id="reg-username" name="username" required autocomplete="off">
    </div>
    <div class="form-group">
        <label for="reg-password">Hasło:</label>
        <div class="password-container">
            <input type="password" id="reg-password" name="password" required oninput="checkPasswordStrength()">
            <img src="icons/eye-crossed.png" alt="Pokaż hasło" id="toggle-reg-password" class="eye-icon">
        </div>
        <div class="password-strength" id="password-strength"></div>
        <div id="requirements">
            <div id="length" class="requirement">Minimum 8 znaków</div>
            <div id="uppercase" class="requirement">Jedna wielka litera</div>
            <div id="number" class="requirement">Jedna cyfra</div>
            <div id="special" class="requirement">Jedno specjalne znaki</div>
        </div>
    </div>
    <!-- Komunikat o błędzie -->
    <div id="password-error" class="error-message" style="display: none;">Hasło nie spełnia wymagań!</div>
    <div id="username-error" class="error-message" style="display: none;">Użytkownik o tej nazwie już istnieje!</div>
    <button type="submit">Zarejestruj się</button>
</form>



            <div id="toggle-link" onclick="toggleForms()">Nie masz konta? Zarejestruj się</div>
        </div>
    </div>
</div>
    <?php include("cart.php")?>
    <script src="script.js"></script>
    <script>
    </script>
</body>

</html>