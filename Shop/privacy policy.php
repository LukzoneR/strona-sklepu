<?php
include("db_connect.php")
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Polityka Prywatności</title>
    <link rel="stylesheet" href="style.css">
    <script src="script.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.css" />

    <style>
        p {
            
            font-size: 18px;
            line-height: 1.8;
            margin-bottom: 20px;
        }

        main.policy {
            padding: 40px 150px;
            background-color: #ffffff;
        }

        h1 {
            color: #000000;
            font-size: 36px;
            margin-bottom: 20px;
            text-align: center;
        }

        .accordion-item {
            border-top: 1px solid #ebebeb;
            padding: 10px 0;
        }

        .accordion-button {
            width: 100%;
            background: none;
            border: none;
            outline: none;
            text-align: left;
            color: #111;
            font-size: 18px;
            font-weight: 600;
            padding: 10px 0;
            cursor: pointer;
            transition: background-color 0.3s ease, color 0.3s ease;
            padding-left: 10px:
        }

        .accordion-button:hover {
            background-color: #444444;
            color: #f9f9f9;
        }

        .accordion-button.active {
            background-color: #333333;
            color: #f9f9f9;
        }

        .accordion-content {
            max-height: 0;
            overflow: hidden;
            transition: max-height 0.3s ease;
            padding-left: 20px;
        }

        .accordion-content p, .accordion-content ul {
            color: black;
            font-size: 16px;
            line-height: 1.6;
            margin: 10px 0;
        }

        .accordion-content ul {
            list-style-type: disc;
            margin-left: 20px;
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
    <main class="policy">
        <h1>Polityka Prywatności</h1>
        <p>Drogi Użytkowniku, szanujemy Twoją prywatność i dbamy o ochronę danych osobowych. Niniejsza polityka prywatności opisuje zasady przetwarzania danych osobowych przez nasz sklep internetowy oraz cele, w jakich przetwarzamy dane, czas ich przechowywania, a także przysługujące Ci prawa.</p>
    
        <div class="accordion">
            <div class="accordion-item">
                <button class="accordion-button">1. Administrator Danych Osobowych</button>
                <div class="accordion-content" >
                    <p>Administratorem Twoich danych osobowych jest TechMart, z siedzibą w [adres]. Administrator odpowiada za zapewnienie, że Twoje dane osobowe są przetwarzane zgodnie z obowiązującymi przepisami prawa oraz że wszelkie niezbędne zabezpieczenia techniczne i organizacyjne są wdrożone w celu ochrony Twoich danych.</p>
                    <p>W sprawach związanych z ochroną danych osobowych możesz skontaktować się z nami pod adresem e-mail: kontakt@TechMart.pl lub pisemnie na adres naszej siedziby. Współpracujemy również z inspektorem ochrony danych, który czuwa nad właściwym przetwarzaniem Twoich danych osobowych.</p>
                </div>
            </div>
        
            <div class="accordion-item">
                <button class="accordion-button">2. Zakres Przetwarzania Danych</button>
                <div class="accordion-content">
                    <p>Przetwarzamy dane osobowe, które są niezbędne do realizacji zamówień, kontaktu z klientem oraz poprawy jakości naszych usług. Dane te mogą obejmować:</p>
                    <ul>
                        <li>Imię i nazwisko</li>
                        <li>Adres e-mail</li>
                        <li>Numer telefonu</li>
                        <li>Adres dostawy</li>
                        <li>Historię zakupów i preferencje zakupowe</li>
                    </ul>
                    <p>Przetwarzamy również dane techniczne, takie jak adres IP, rodzaj przeglądarki i czas korzystania ze strony w celu zapewnienia bezpieczeństwa oraz poprawy komfortu użytkowania strony.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">3. Cel Przetwarzania Danych</button>
                <div class="accordion-content">
                    <ul>
                        <li><strong>Realizacja umowy sprzedaży:</strong> Przetwarzamy dane osobowe, aby móc zrealizować zamówienie, wysłać towar, skontaktować się z Tobą w sprawie zamówienia i zapewnić wsparcie po zakupie.</li>
                        <li><strong>Marketing:</strong> Za Twoją zgodą przetwarzamy dane w celu wysyłania informacji marketingowych, ofert specjalnych oraz informacji o nowych produktach.</li>
                        <li><strong>Analiza zachowań:</strong> Analizujemy dane dotyczące aktywności użytkowników na naszej stronie, co pozwala nam lepiej dostosować ofertę oraz usprawniać funkcjonowanie serwisu.</li>
                        <li><strong>Przestrzeganie przepisów prawa:</strong> W niektórych sytuacjach jesteśmy zobowiązani do przechowywania i przetwarzania danych w celu wywiązania się z obowiązków prawnych (np. w zakresie rachunkowości).</li>
                    </ul>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">4. Prawa Użytkownika</button>
                <div class="accordion-content">
                    <p>Masz prawo do kontrolowania swoich danych osobowych oraz podejmowania decyzji dotyczących ich przetwarzania. Twoje prawa obejmują:</p>
                    <ul>
                        <li><strong>Prawo dostępu:</strong> Masz prawo do uzyskania informacji o tym, jakie dane osobowe przetwarzamy, oraz uzyskania kopii swoich danych.</li>
                        <li><strong>Prawo do sprostowania:</strong> Możesz zażądać poprawienia swoich danych, jeśli są nieprawidłowe lub nieaktualne.</li>
                        <li><strong>Prawo do usunięcia:</strong> Możesz zażądać usunięcia swoich danych osobowych, jeśli nie są już potrzebne do celów, dla których zostały zebrane.</li>
                        <li><strong>Prawo do ograniczenia przetwarzania:</strong> Możesz ograniczyć przetwarzanie swoich danych, jeśli kwestionujesz ich prawidłowość lub przetwarzanie jest niezgodne z prawem.</li>
                        <li><strong>Prawo do przenoszenia danych:</strong> Masz prawo do otrzymania swoich danych osobowych w ustrukturyzowanym formacie, aby móc je przekazać innemu administratorowi.</li>
                        <li><strong>Prawo sprzeciwu:</strong> Masz prawo do wniesienia sprzeciwu wobec przetwarzania Twoich danych w celach marketingowych.</li>
                    </ul>
                    <p>W celu skorzystania ze swoich praw, prosimy o kontakt poprzez e-mail lub pisemnie na adres naszej siedziby.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">5. Cookies</button>
                <div class="accordion-content">
                    <p>Strona używa plików cookies, które są małymi plikami tekstowymi przechowywanymi na Twoim urządzeniu. Cookies pomagają nam analizować ruch na stronie, dostosowywać treści oraz zapewniają wygodę korzystania z naszego serwisu. Wyróżniamy następujące rodzaje cookies:</p>
                    <ul>
                        <li><strong>Cookies niezbędne:</strong> Są to pliki, które umożliwiają korzystanie z podstawowych funkcji strony, takich jak logowanie czy koszyk zakupowy.</li>
                        <li><strong>Cookies analityczne:</strong> Pomagają nam zrozumieć, jak użytkownicy korzystają z naszej strony, co pozwala nam ulepszać jej funkcjonalności.</li>
                        <li><strong>Cookies marketingowe:</strong> Używane do wyświetlania reklam dostosowanych do Twoich preferencji.</li>
                    </ul>
                    <p>Możesz zarządzać ustawieniami cookies w swojej przeglądarce, a także wyłączyć ich przechowywanie, co może wpłynąć na funkcjonalność niektórych części strony.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-button">6. Okres Przechowywania Danych</button>
                <div class="accordion-content">
                    <p>Dane osobowe przechowujemy tylko przez okres niezbędny do realizacji celów, dla których zostały zebrane, lub przez czas wymagany przez obowiązujące przepisy prawa. Obejmuje to:</p>
                    <ul>
                        <li><strong>Realizacja zamówień:</strong> Przechowujemy dane przez czas realizacji zamówienia oraz przez okres potrzebny do spełnienia wymogów prawnych dotyczących przechowywania dokumentacji księgowej.</li>
                        <li><strong>Marketing:</strong> Dane przetwarzane w celach marketingowych przechowujemy do momentu wycofania przez Ciebie zgody.</li>
                        <li><strong>Rozpatrywanie reklamacji:</strong> W przypadku zgłoszenia reklamacji dane przechowujemy do czasu zakończenia procesu reklamacyjnego oraz przez okres wynikający z przepisów prawa.</li>
                    </ul>
                    <p>Po upływie tych okresów dane są usuwane lub anonimizowane w sposób uniemożliwiający ich identyfikację.</p>
                </div>
            </div>
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

    <script>
        document.querySelectorAll('.accordion-button').forEach(button => {
            button.addEventListener('click', () => {
               const content = button.nextElementSibling;

                if (content.style.maxHeight) {
                    content.style.maxHeight = null;
                        button.classList.remove('active');
                } else {
                    document.querySelectorAll('.accordion-content').forEach(item => {
                        item.style.maxHeight = null;
                    });
                    document.querySelectorAll('.accordion-button').forEach(btn => {
                        btn.classList.remove('active');
                    });

                    content.style.maxHeight = content.scrollHeight + 'px';
                    button.classList.add('active');
                }
            });
        });



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
