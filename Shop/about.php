<?php
include("connect.php")
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>O nas!</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

    <style>
        main {
            max-width: 80%;
            margin: 30px auto;
            padding: 20px;
            background-color: white;
        }

        h2 {
            font-size: 32px;
            color: #333;
            font-weight: bold;
           margin-bottom: 15px;
           text-align: center;
        }

        .about >p {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        .about >ul {
            list-style-type: disc;
            margin-left: 30px;
            font-size: 16px;
            margin-bottom: 20px;
        }

        .about > ul li {
            line-height: 1.6;
            margin-bottom: 10px;
        }

        .about > ul li strong {
            color: #000;
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
                <li><a href="index.php?category=promocje" class="category-link highlight">Promocje</a></li>
            </ul>
        </div>

    </header>
    <main class="about">
        <h2>Witaj w TechMart!</h2>
        <p>TechMart to nowoczesny sklep internetowy, który od lat dostarcza najlepsze rozwiązania z zakresu elektroniki, RTV, IT i AGD. Jako firma z pasją do technologii, stawiamy na wysoką jakość produktów i obsługę klienta. Nasza oferta obejmuje najnowsze urządzenia, a także akcesoria elektroniczne, które ułatwiają codzienne życie w erze cyfrowej.</p>

        <h3>Nasza misja</h3>
        <p>Naszą misją jest dostarczanie klientom produktów, które odpowiadają na ich potrzeby i pomagają im rozwijać pasje. Zależy nam na tym, aby nasze produkty były dostępne w konkurencyjnych cenach, a zakupy przebiegały szybko, bezpiecznie i bez zbędnych komplikacji.</p>

        <h3>Oferujemy szeroki wybór produktów:</h3>
            <ul>
                <li><strong>Sprzęt RTV</strong> – telewizory, kina domowe, soundbary, głośniki, dekodery i inne akcesoria</li>
                <li><strong>Sprzęt komputerowy</strong> – laptopy, komputery stacjonarne, monitory, podzespoły, akcesoria gamingowe i biurowe</li>
                <li><strong>Smartfony i tablety</strong> – najnowsze modele w najlepszych cenach</li>
                <li><strong>AGD</strong> – pralki, lodówki, mikrofale, ekspresy do kawy i inne urządzenia</li>
                <li><strong>Akcesoria elektroniczne</strong> – etui, ładowarki, słuchawki, głośniki, powerbanki, urządzenia do smart home</li>
            </ul>

        <h3>Dlaczego warto wybrać TechMart?</h3>
            <ul>
                <li><strong>Najwyższa jakość produktów</strong> – współpracujemy tylko z zaufanymi dostawcami, oferując urządzenia sprawdzone przez ekspertów.</li>
                <li><strong>Konkurencyjne ceny</strong> – dzięki współpracy z wieloma producentami, jesteśmy w stanie zaoferować atrakcyjne ceny na wszystkie produkty.</li>
                <li><strong>Szeroka gama produktów</strong> – od elektroniki użytkowej po sprzęt AGD, każdy znajdzie coś dla siebie.</li>
                <li><strong>Bezpieczne zakupy</strong> – dbamy o to, by zakupy w naszym sklepie były wygodne, szybkie i bezpieczne. Oferujemy szeroką gamę metod płatności i szybką dostawę.</li>
                <li><strong>Obsługa klienta</strong> – nasz zespół ekspertów zawsze chętnie pomoże w dokonaniu najlepszego wyboru, zarówno przed, jak i po zakupie.</li>
            </ul>

        <h3>Nasze cele</h3>
        <p>TechMart to firma, która nieustannie dąży do rozwoju. Nasze cele to:</p>
            <ul>
                <li>Stałe poszerzanie oferty o najnowsze i najbardziej innowacyjne produkty elektroniczne</li>
                <li>Rozwój kanałów sprzedaży, aby dotrzeć do szerszego grona klientów</li>
                <li>Zapewnienie jak najlepszej jakości obsługi klienta – zależy nam na zadowoleniu naszych użytkowników</li>
                <li>Wprowadzenie nowych rozwiązań, które umożliwią jeszcze szybszą i łatwiejszą obsługę naszych klientów</li>
            </ul>

        <h3>Historia TechMart</h3>
        <p>TechMart powstał z pasji do technologii i chęci dzielenia się z innymi najlepszymi rozwiązaniami elektronicznymi. Zaczynaliśmy jako mały sklep internetowy, a dziś jesteśmy jednym z czołowych dostawców elektroniki w Polsce. Zawsze stawialiśmy na jakość i zadowolenie klientów, dzięki czemu zyskaliśmy ich zaufanie oraz lojalność. Nasza historia to również historia pasji, zaangażowania i nieustannego rozwoju w świecie technologii.</p>
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
