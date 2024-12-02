# Techmart - Internetowy Sklep Elektroniczny

 
**Autorzy:**  
- Marcin Puzoń
- Grzegorz Mrzyk  
- Wojciech Godziek  

---

## Opis Projektu

**Techmart** to sklep internetowy oferujący szeroki wybór produktów elektronicznych, takich jak laptopy, smartfony, telewizory, smartwatche i wiele więcej. Projekt został stworzony z myślą o przejrzystości i intuicyjnej obsłudze, przyjaznej dla użytkowników.

![B2001F98-F9F6-4DEC-BB02-95F6DCD5EE34](https://github.com/user-attachments/assets/3f107128-335f-447e-9a5c-465a23e6359f)
<i>Widok strony głównej</i>


## Wymagania

Aby uruchomić projekt, niezbędne jest zainstalowanie następujących programów:

1. **XAMPP** - Do uruchamiania lokalnego serwera Apache oraz obsługi bazy danych MySQL.
   - Pobierz XAMPP [tutaj](https://www.apachefriends.org/index.html).
2. **PHP** - Projekt został napisany w PHP, który jest dostarczany razem z XAMPP.
3. **Przeglądarka internetowa** - Rekomendujemy Google Chrome, Mozilla Firefox lub Safari.

---

## Instalacja i Konfiguracja

1. Zainstaluj i uruchom XAMPP.
2. Skopiuj folder projektu **Techmart** do folderu `htdocs` znajdującego się w lokalizacji instalacji XAMPP (np. `C:/xampp/htdocs`).
3. Uruchom XAMPP i włącz moduły **Apache** oraz **MySQL**.
4. Stwórz bazę danych o nazwie *sklep* poprzez phpMyAdmin (`http://localhost/phpmyadmin`).
5. Zaimportuj plik SQL (znajdujący się w folderze projektu) do nowo utworzonej bazy danych, aby stworzyć niezbędne tabele i wprowadzić przykładowe dane.
6. Przejdź do `http://localhost/Shop/index.php`, aby rozpocząć korzystanie ze sklepu.

---

## Struktura Projektu

Projekt **Techmart** składa się z następujących komponentów:

- **index.php** - Strona główna sklepu z główną ofertą i kategoriami produktów.
- **product.php** - Strona produktu, wyświetlająca szczegóły, zdjęcia oraz opcje zakupu.
- **cart.php** - Koszyk użytkownika, który pozwala na dodawanie i usuwanie produktów.
- **db_connect.php** - Skrypt PHP do nawiązania połączenia z bazą danych MySQL.
- **add_to_cart.php** - Skrypt PHP do obsługi dodawania produktów do koszyka.
- **delete_cart.php** - Skrypt PHP do usuwania produktów z koszyka.
- **style.css** - Główny plik CSS, odpowiadający za wygląd strony i layout.
- **images/** - Folder zawierający wszystkie obrazy produktów oraz elementy graficzne strony.
- **icons/** - Folder zawierający ikony używane na stronie (np. koszyk, profil użytkownika).
- **checkout.php** - Skrypt do tworzenia formularza zamówień
- **clear_cart.php** - Skrypt do usuwania zawartości koszyka
- **login.php** - Skrypt PHP logowania do sklepu
- **logout.php** - Skrypt PHP do wylogowywania ze sklepu
- **register.php** - Skrypt PHP do rejestracji nowego konta
- **search.php** - Skrypt PHP do wyszukiwania produktów znajdujących się na stronie

---

## Funkcje

- **Przegląd produktów** - Możliwość przeglądania dostępnych kategorii i produktów.
- **Szczegóły produktu** - Podgląd szczegółowych informacji na temat wybranego produktu, w tym zdjęcia, specyfikacji, ceny.
- **Koszyk** - Możliwość dodawania produktów do koszyka, usuwania ich oraz przeglądania aktualnej wartości zamówienia.

---

## Dalszy Rozwój

- Rozbudowa procesu zamówienia o autoryzację płatności i historię zamówień.
- Wprowadzenie systemu logowania i rejestracji użytkowników.
- Możliwość dodawania opinii i ocen produktów przez użytkowników.

---

## Potencjalne ryzyka

- SQL injection
- HTML injection

---

## Licencja

Projekt **Techmart** jest dostępny do użytku prywatnego. Wszelkie prawa do kodu są zastrzeżone przez autorów projektu.
