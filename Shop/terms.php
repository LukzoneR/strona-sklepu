<?php
include("connect.php")
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Warunki zakupu</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

    <style>
        main.terms {
            max-width: 80%;
            margin: 40px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 12px;
        }

        main.terms h2 {
            font-size: 30px;
            color: #333;
            margin-top: 0;
            text-align: center;
            border-top: 2px solid #ebebeb;
            padding: 10px 0;
        }

        main.terms h3 {
            font-size: 24px;
            color: #333;
            margin-top: 30px;
            margin-bottom: 15px;
            border-top: 2px solid #ebebeb;
            padding: 10px 0;
        }

        main.terms p {
            font-size: 16px;
            color: #000;
            margin-bottom: 20px;
            line-height: 1.6;
            text-align: justify;
        }

        main.terms ul {
            margin-left: 20px;
            margin-bottom: 20px;
        }

        main.terms ul li {
            font-size: 16px;
            color: #000;
            margin-bottom: 10px;
        }

        main.terms a {
            color: #FF017D;
            text-decoration: none;
            font-weight: bold;
        }

        main.terms a:hover {
            text-decoration: underline;
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
                <li><a href="index.php?category=smartfony" class="category-link">Telefony</a></li>
                <li><a href="index.php?category=smartwatche" class="category-link">Smartwatche</a></li>
                <li><a href="index.php?category=laptopy" class="category-link">Laptopy</a></li>
                <li><a href="index.php?category=telewizory" class="category-link">Telewizory</a></li>
                <li><a href="index.php?category=myszki_i_klawiatury" class="category-link">Myszki i Klawiatury</a></li>
                <li><a href="index.php?category=monitory" class="category-link">Monitory</a></li>
                <li><a href="index.php?category=promocje" class="category-link">Promocje</a></li>
            </ul>
        </div>
    </header>
    <main class="terms">
        <h2>Warunki zakupu w sklepie TechMart</h2>
        <p>Zakupy w sklepie internetowym TechMart są łatwe, bezpieczne i komfortowe. Zanim dokonasz zakupu, prosimy zapoznać się z poniższymi warunkami, które opisują proces zamówienia, płatności, dostawy oraz procedury zwrotów.</p>

        <h3>1. Proces składania zamówienia</h3>
        <p>Aby złożyć zamówienie w sklepie TechMart, należy wybrać produkty, które chcemy kupić, dodać je do koszyka, a następnie przejść do procesu finalizacji zamówienia. Na tym etapie klient może dokonać zmian w zamówieniu, takich jak ilość produktów czy adres dostawy.</p>

        <h3>2. Ceny i płatności</h3>
        <p>Wszystkie ceny produktów w sklepie TechMart są podane w złotych polskich (PLN) i zawierają podatek VAT. Koszt dostawy jest naliczany osobno, w zależności od wybranego sposobu dostawy. Możliwe metody płatności to:</p>
        <ul>
            <li>Przelew tradycyjny</li>
            <li>Karta kredytowa/debetowa</li>
            <li>Płatności online (np. PayU, Przelewy24)</li>
            <li>Za pobraniem przy dostawie</li>
        </ul>
        <p>Po dokonaniu płatności, zamówienie zostanie przekazane do realizacji, a klient otrzyma potwierdzenie zakupu na podany adres e-mail.</p>

        <h3>3. Wysyłka i dostawa</h3>
        <p>Wszystkie zamówienia są wysyłane za pośrednictwem firm kurierskich lub poczty polskiej. Przewidywany czas dostawy wynosi od 1 do 5 dni roboczych w zależności od wybranej metody dostawy oraz miejsca doręczenia. Koszt dostawy zależy od wybranej opcji i jest widoczny podczas składania zamówienia.</p>
        <p>Możliwe metody dostawy to:</p>
        <ul>
            <li>Dostawa kurierska</li>
            <li>Dostawa do paczkomatów</li>
            <li>Odbiór osobisty w naszym punkcie</li>
        </ul>

        <h3>4. Prawo do odstąpienia od umowy</h3>
        <p>Zgodnie z obowiązującymi przepisami prawa, klient ma prawo do odstąpienia od umowy zakupu w terminie 14 dni kalendarzowych od dnia otrzymania zamówionego towaru bez podania przyczyny. Aby skorzystać z tego prawa, należy poinformować nas o chęci odstąpienia od umowy oraz odesłać produkt na nasz adres.</p>
        <p>Warunkiem zwrotu jest to, aby produkt był w stanie nienaruszonym, nieużywanym i w oryginalnym opakowaniu. Koszty przesyłki zwrotnej ponosi klient.</p>

        <h3>5. Reklamacje</h3>
        <p>W przypadku stwierdzenia wadliwości zakupionego produktu, klient ma prawo do zgłoszenia reklamacji. Reklamację należy składać na adres e-mail lub wysłać ją pocztą tradycyjną. Koszty przesyłki reklamacyjnej ponosi sklep, jeśli reklamacja zostanie uznana.</p>
        <p>Reklamacje rozpatrujemy w ciągu 14 dni roboczych od daty otrzymania przesyłki reklamacyjnej.</p>

        <h3>6. Zwroty i wymiany</h3>
        <p>Po zaakceptowaniu zwrotu towaru, klient otrzyma zwrot zapłaconej kwoty na konto, z którego dokonano płatności. Zwrot środków następuje nie później niż w ciągu 14 dni roboczych od daty odstąpienia od umowy.</p>
        <p>W przypadku wymiany towaru, prosimy o kontakt z naszym działem obsługi klienta, który pomoże w zorganizowaniu wymiany na odpowiedni produkt.</p>

        <h3>7. Ochrona danych osobowych</h3>
        <p>Bezpieczeństwo Twoich danych osobowych jest dla nas bardzo ważne. Wszystkie dane zbierane podczas procesu zakupowego są chronione zgodnie z polityką prywatności i obowiązującymi przepisami prawa. Więcej informacji na ten temat znajduje się w naszej <a href="./privacy policy.php">Polityce Prywatności</a>.</p>

        <h3>8. Kontakt</h3>
        <p>W razie jakichkolwiek pytań dotyczących warunków zakupu lub innych kwestii, prosimy o kontakt z naszym działem obsługi klienta:</p>
        <ul>
            <li>Telefon: <a href="tel:392-267-921">+48 392-267-921</a></li>
            <li>Email: <a href="mailto:kontakt@TechMart.pl">kontakt@TechMart.pl</a></li>
            <li>Adres: ul.Senatorska 6/8, 00-917 Warszawa</li>
        </ul>
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

    <script>
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
