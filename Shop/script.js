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
    loop: true, // Slider w pętli
    slidesPerView: 1, // Jeden slajd na raz
    spaceBetween: 0, // Brak przestrzeni między slajdami
    autoplay: {
        delay: 5000, // Przewijanie co 5 sekund
        disableOnInteraction: false, // Utrzymanie autoplay po interakcji użytkownika
    },
    speed: 700, // Prędkość animacji przejścia między slajdami (600 ms)
    effect: 'slide', // Efekt przejścia - przesunięcie
    navigation: {
        nextEl: '.swiper-button-next', // Przycisk do przejścia do następnego slajdu
        prevEl: '.swiper-button-prev', // Przycisk do przejścia do poprzedniego slajdu
    },
    pagination: {
        el: '.swiper-pagination', // Kropki do paginacji
        clickable: true, // Możliwość kliknięcia w kropki
    },
});
