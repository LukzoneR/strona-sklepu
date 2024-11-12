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

function checkPasswordStrength() {
    const password = document.getElementById("reg-password").value;
    const strengthIndicator = document.getElementById("password-strength");
    const requirements = {
        length: document.getElementById("length"),
        uppercase: document.getElementById("uppercase"),
        number: document.getElementById("number"),
        special: document.getElementById("special")
    };

    
    strengthIndicator.className = "password-strength";
    Object.values(requirements).forEach(req => {
        req.classList.remove("hidden");
        req.style.opacity = "1";
    });

    let strength = 0;

    if (password.length >= 8) {
        strength++;
        requirements.length.classList.add("hidden");
    }
    if (/[A-Z]/.test(password)) {
        strength++;
        requirements.uppercase.classList.add("hidden");
    }
    if (/\d/.test(password)) {
        strength++;
        requirements.number.classList.add("hidden");
    }
    if (/[!@#$%^&*]/.test(password)) {
        strength++;
        requirements.special.classList.add("hidden");
    }

    
    if (strength === 0) {
        strengthIndicator.classList.add("strength-weak");
        strengthIndicator.style.width = "0%";
    } else if (strength === 1) {
        strengthIndicator.classList.add("strength-weak");
        strengthIndicator.style.width = "25%";
    } else if (strength === 2) {
        strengthIndicator.classList.add("strength-medium");
        strengthIndicator.style.width = "50%";
    } else if (strength === 3) {
        strengthIndicator.classList.add("strength-strong");
        strengthIndicator.style.width = "75%";
    } else {
        strengthIndicator.classList.add("strength-strong");
        strengthIndicator.style.width = "100%";
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