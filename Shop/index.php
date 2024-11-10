<?php
include("connect.php")
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Techmart</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />
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
                <img src="./images/logos/RefinedTechMartLogo.svg" alt="Logo strony">
            </div>
            <div id="searchbar">
                <form action="/search" method="GET" class="formularz">
                    <input type="text" name="query" placeholder="Szukaj produktów...">
                    <a href="/#">
                        <img src="./icons/search.png" alt="Szukaj" class="zdjecie">
                    </a>
                </form>       
            </div>
            <div id="user" onclick="document.getElementById('login-modal').style.display='block'">
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
                <form id="login-form" action="/login" method="POST">
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
                    <button type="submit">Zaloguj się</button>
                </form>
                <form id="registration-form" action="/register" method="POST" style="display: none;">
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
                    <button type="submit">Zarejestruj się</button>
                </form>
                <div id="toggle-link" onclick="toggleForms()">Nie masz konta? Zarejestruj się</div>
            </div>
        </div>
    </div>

<script src="script.js"></script>

</body>
</html>
