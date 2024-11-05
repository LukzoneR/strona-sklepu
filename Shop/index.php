<?php
include("connect.php");
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Techmart</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
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
                <li><a href="#" class="category-link" data-id="1">Telefony</a></li>
                <li><a href="#" class="category-link" data-id="2">Smartwatche</a></li>
                <li><a href="#" class="category-link" data-id="3">Laptopy</a></li>
                <li><a href="#" class="category-link" data-id="4">Telewizory</a></li>
                <li><a href="#" class="category-link" data-id="5">Myszki i Klawiatury</a></li>
                <li><a href="#" class="category-link" data-id="6">Monitory</a></li>
                <li><a href="#" class="category-link highlight" data-id="7">Promocje</a></li>
            </ul>
        </div>
    </header>
    <main>
        
    </main>
    <footer>
    <div id="footer-container">
        <div id="footer-links">
            <h4>Informacje</h4>
            <ul>
                <li><a href="#">O nas</a></li>
                <li><a href="#">Polityka prywatności</a></li>
                <li><a href="#">Warunki zakupu</a></li>
            </ul>
        </div>
        <div id="footer-contact">
        <h4>Kontakt</h4>
            <div class="contact-icons">
                <a href="mailto:kontakt@twojastrona.pl" class="contact-item">
                    <img src="./icons/mail.png" alt="Email">
                    kontakt@twojastrona.pl
                </a>
                <a href="tel:123-456-789" class="contact-item">
                    <img src="./icons/phone.png" alt="Telefon">
                    +48 123-456-789
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
                        <input type="password" id="password" name="password" required>
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
                        <input type="password" id="reg-password" name="password" required oninput="checkPasswordStrength()">
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
</body>
</html>
