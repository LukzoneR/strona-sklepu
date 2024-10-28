<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sklep</title>
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
            <div id="user">
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
        <div id="contact">

        </div>
    </footer>
</body>
</html>