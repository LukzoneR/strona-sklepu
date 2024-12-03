//System logowania i rejestrowania
function closeModal() {
    const modal = document.getElementById("login-modal");
    modal.classList.add("fade-out");
    setTimeout(() => {
        modal.style.display = "none";
        modal.classList.remove("fade-out");
    }, 500);
}

function toggleForms() {
    const loginForm = document.getElementById("login-form");
    const registrationForm = document.getElementById("registration-form");
    const title = document.getElementById("modal-title");
    const toggleLink = document.getElementById("toggle-link");
    const requirements = document.getElementById("requirements");

    if (loginForm.style.display === "none") {
        loginForm.style.display = "block";
        registrationForm.style.display = "none";
        title.innerText = "Logowanie";
        toggleLink.innerText = "Nie masz konta? Zarejestruj się";
        requirements.style.maxHeight = "0";
    } else {
        loginForm.style.display = "none";
        registrationForm.style.display = "block";
        title.innerText = "Rejestracja";
        toggleLink.innerText = "Masz już konto? Zaloguj się";
        requirements.style.maxHeight = requirements.scrollHeight + "px";
    }
}


// Funkcja do pokazywania/ukrywania hasła w formularzu logowania
document.getElementById('toggle-password').addEventListener('click', function() {
    const passwordField = document.getElementById('password');
    const passwordIcon = document.getElementById('toggle-password');

    if (passwordField.type === 'password') {
        passwordField.type = 'text';
        passwordIcon.src = 'icons/eye.png';
    } else {
        passwordField.type = 'password';
        passwordIcon.src = 'icons/eye-crossed.png';
    }
});



// Funkcja do pokazywania/ukrywania hasła w formularzu rejestracji
document.getElementById('toggle-reg-password').addEventListener('click', function() {
    const regPasswordField = document.getElementById('reg-password');
    const regPasswordIcon = document.getElementById('toggle-reg-password');

    if (regPasswordField.type === 'password') {
        regPasswordField.type = 'text';
        regPasswordIcon.src = 'icons/eye.png';
    } else {
        regPasswordField.type = 'password';
        regPasswordIcon.src = 'icons/eye-crossed.png';
    }
});



//Ładowanie produktów według kategorii
document.querySelectorAll('.category-link').forEach(link => {
    link.addEventListener('click', function(event) {
        event.preventDefault();

        const category = this.getAttribute('data-category');

        fetch(`index.php?category=${category}&ajax=1`)
            .then(response => response.text())
            .then(data => {
                const productGrid = document.querySelector('.product-grid');
                productGrid.innerHTML = data;
            })
            .catch(error => console.error('Błąd:', error));
    })
})


//Slider banera
var swiper = new Swiper('.swiper-container', {
    loop: true,
    slidesPerView: 1,
    spaceBetween: 0,
    autoplay: {
        delay: 5000,
        disableOnInteraction: false,
    },
    speed: 700,
    effect: 'slide',
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },
    pagination: {
        el: '.swiper-pagination',
        clickable: true,
    },
});

//Swipe up
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


//wyświetlanie się koszyka w stylu pop up
function closeCartModal() {
    const modal = document.getElementById("cart-modal");
    modal.classList.add("fade-out");
    setTimeout(() => {
        modal.style.display = "none";
        modal.classList.remove("fade-out");
    }, 500);
}

function toggleCartSections() {
    const cartItems = document.getElementById("cart-items");
    const cartSummary = document.getElementById("cart-summary");
    const cartTitle = document.getElementById("cart-title");
    const toggleLink = document.getElementById("cart-toggle-link");

    const isCartItemsVisible = cartItems.style.display !== "none";

    if (isCartItemsVisible) {
        cartItems.style.display = "none";
        cartSummary.style.display = "block";
        cartTitle.innerText = "Podsumowanie Zakupów";
        toggleLink.innerText = "Wróć do koszyka";
    } else {
        cartItems.style.display = "block";
        cartSummary.style.display = "none";
        cartTitle.innerText = "Twój Koszyk";
        toggleLink.innerText = "Przejdź do podsumowania";
    }
}


// Funkcja do rozwijania menu użytkownika
function toggleUserMenu(event) {
    const menu = document.getElementById('user-menu');
    // Sprawdzamy, czy menu jest już otwarte
    if (menu.style.display === 'block') {
        menu.style.display = 'none'; // Jeśli tak, zamykamy menu
    } else {
        menu.style.display = 'block'; // Jeśli nie, otwieramy menu
    }

    // Zatrzymujemy propagację kliknięcia, aby nie zamknąć menu, gdy klikniemy w sam przycisk
    event.stopPropagation();
}

// Funkcja do zamykania menu, gdy klikniemy w dowolne miejsce poza menu
document.addEventListener('click', function(event) {
    const menu = document.getElementById('user-menu');
    const userButton = document.getElementById('user');

    // Sprawdzamy, czy kliknięto poza menu i przyciskiem "Witaj"
    if (!userButton.contains(event.target)) {
        menu.style.display = 'none';
    }
});


// Funkcja do zamykania menu po kliknięciu w wylogowanie
function logoutUser() {
    // Możesz dodać logikę wylogowania, np. usunięcie sesji.
    window.location.href = 'logout.php'; // Zakładając, że logout.php obsługuje wylogowanie
}



function handleLogin(event) {
    event.preventDefault(); // Zatrzymujemy domyślne wysyłanie formularza

    // Pobieramy dane z formularza
    var username = document.getElementById('username').value;
    var password = document.getElementById('password').value;

    // Tworzymy obiekt AJAX
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'login.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    // Definiujemy, co ma się stać po otrzymaniu odpowiedzi
    xhr.onload = function () {
        if (xhr.status === 200) {
            var response = xhr.responseText;

            // Jeśli logowanie się udało
            if (response === 'success') {
                // Zalogowano pomyślnie - opcjonalnie przekieruj do strony
                window.location.href = 'index.php'; 
            } else {
                // Jeśli błędny użytkownik lub hasło
                document.getElementById('error-message').style.display = 'block';
            }
        }
    };

    // Wysyłamy dane z formularza do serwera
    xhr.send('username=' + encodeURIComponent(username) + '&password=' + encodeURIComponent(password));
}


function handleRegister(event) {
    event.preventDefault(); // Zatrzymujemy domyślną akcję formularza (przeładowanie strony)

    // Pobieramy dane z formularza
    var username = document.getElementById('reg-username').value;
    var password = document.getElementById('reg-password').value;

    // Tworzymy obiekt AJAX
    var xhr = new XMLHttpRequest();
    xhr.open('POST', 'register.php', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

    // Definiujemy, co ma się stać po otrzymaniu odpowiedzi
    xhr.onload = function () {
        if (xhr.status === 200) {
            var response = xhr.responseText;

            // Jeśli użytkownik już istnieje
            if (response === 'user_exists') {
                document.getElementById('error-message').style.display = 'block';
            } else if (response === 'success') {
                window.location.href = 'login.php'; // Przekierowanie po udanej rejestracji
            }
        }
    };

    // Wysyłamy dane z formularza do serwera
    xhr.send('username=' + encodeURIComponent(username) + '&password=' + encodeURIComponent(password));
}



// Sprawdzanie siły hasła
function checkPasswordStrength() {
    const password = document.getElementById('reg-password').value;
    const strengthBar = document.getElementById('password-strength');
    const length = document.getElementById('length');
    const uppercase = document.getElementById('uppercase');
    const number = document.getElementById('number');
    const special = document.getElementById('special');
    let strength = 0;

    // Wymagania hasła
    if (password.length >= 8) {
        length.style.color = 'green';
        strength++;
    } else {
        length.style.color = 'red';
    }

    if (/[A-Z]/.test(password)) {
        uppercase.style.color = 'green';
        strength++;
    } else {
        uppercase.style.color = 'red';
    }

    if (/\d/.test(password)) {
        number.style.color = 'green';
        strength++;
    } else {
        number.style.color = 'red';
    }

    if (/[!@#$%^&*(),.?":{}|<>]/.test(password)) {
        special.style.color = 'green';
        strength++;
    } else {
        special.style.color = 'red';
    }

    // Ustawienie paska siły hasła
    if (strength == 4) {
        strengthBar.style.width = '100%';
        strengthBar.style.backgroundColor = 'green';
    } else if (strength >= 3) {
        strengthBar.style.width = '75%';
        strengthBar.style.backgroundColor = 'yellow';
    } else if (strength >= 2) {
        strengthBar.style.width = '50%';
        strengthBar.style.backgroundColor = 'orange';
    } else {
        strengthBar.style.width = '25%';
        strengthBar.style.backgroundColor = 'red';
    }
}

// Walidacja hasła przed wysłaniem formularza
function validatePassword() {
    const password = document.getElementById('reg-password').value;
    const errorMessage = document.getElementById('error-message');
    const passwordRequirements = [
        password.length >= 8,               // Minimum 8 znaków
        /[A-Z]/.test(password),              // Jedna wielka litera
        /\d/.test(password),                 // Jedna cyfra
        /[!@#$%^&*(),.?":{}|<>]/.test(password) // Jeden znak specjalny
    ];

    // Sprawdzamy, czy wszystkie warunki są spełnione
    if (passwordRequirements.every(Boolean)) {
        errorMessage.style.display = 'none';
        return true; // Można wysłać formularz
    } else {
        errorMessage.style.display = 'block';
        return false; // Zatrzymuje wysyłanie formularza
    }
}


function searchProducts() {
    const query = document.getElementById('searchInput').value.trim();
    const resultsContainer = document.getElementById('results');

    // Jeśli zapytanie jest puste, ukryj wyniki
    if (query === '') {
        resultsContainer.style.display = 'none';
        resultsContainer.innerHTML = '';
        return;
    }

    // Wysyłamy zapytanie AJAX
    const xhr = new XMLHttpRequest();
    xhr.open('GET', `search.php?query=${encodeURIComponent(query)}`, true);
    xhr.onload = function() {
        if (xhr.status === 200) {
            const results = JSON.parse(xhr.responseText);

            if (results.length > 0) {
                // Tworzymy listę wyników
                let html = '<ul>';
                results.forEach(product => {
                    html += `<li onclick="redirectToProduct('${product.category}', ${product.id})">${product.marka} ${product.model}</li>`;
                });
                html += '</ul>';

                resultsContainer.innerHTML = html;
                resultsContainer.style.display = 'block'; // Pokazuje kontener wyników
            } else {
                resultsContainer.innerHTML = '<p>Brak wyników</p>';
                resultsContainer.style.display = 'block'; // Pokazuje kontener wyników
            }
        }
    };
    xhr.send();
}

function redirectToProduct(category, id) {
    // Przekierowanie do strony produktu
    window.location.href = `product.php?category=${category}&id=${id}`;
}
