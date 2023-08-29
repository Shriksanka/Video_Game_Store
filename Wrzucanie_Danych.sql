INSERT ALL
    INTO Kategoria_Gry (ID, Nazwa, Opis, Rodzaj_Gry_ID) VALUES (1, 'Akcja', 'Gry z intensywną akcją i dynamicznym gameplayem.', 1)
    INTO Kategoria_Gry (ID, Nazwa, Opis, Rodzaj_Gry_ID) VALUES (2, 'RPG', 'Gry fabularne z rozbudowaną mechaniką postaci i światem.', 2)
    INTO Kategoria_Gry (ID, Nazwa, Opis, Rodzaj_Gry_ID) VALUES (3, 'Strategia', 'Gry strategiczne, gdzie planowanie jest kluczowe.', 3)
SELECT 1 FROM DUAL;

INSERT ALL
    INTO Rodzaj_Gry (ID, Nazwa, Opis) VALUES (1, 'FPS', 'Gry pierwszoosobowe z akcją z perspektywy oczu bohatera.')
    INTO Rodzaj_Gry (ID, Nazwa, Opis) VALUES (2, 'MMORPG', 'Gry wieloosobowe online z rozbudowanym światem i interakcjami.')
    INTO Rodzaj_Gry (ID, Nazwa, Opis) VALUES (3, 'RTS', 'Gry strategiczne czasu rzeczywistego z elementami taktyki')
SELECT 1 FROM DUAL;

INSERT ALL
    INTO Deweloper (ID, Nazwa, Kraj, Rok_Zalozenia) VALUES (1, 'CD Projekt Red', 'Polska', TO_DATE('2002-01-02', 'YYYY-MM-DD'))
    INTO Deweloper (ID, Nazwa, Kraj, Rok_Zalozenia) VALUES (2, 'Ubisoft', 'Francja', TO_DATE('1986-03-04', 'YYYY-MM-DD'))
    INTO Deweloper (ID, Nazwa, Kraj, Rok_Zalozenia) VALUES (3, 'Blizzard Entertainment', 'USA', TO_DATE('1991-04-12', 'YYYY-MM-DD'))
SELECT 1 FROM DUAL;

INSERT ALL
    INTO Gry (ID, Nazwa, Cena, Platforma, Ocena, Data_Premiery, Wydawca_ID, Deweloper_ID, Kategoria_Gry_ID, Rodzaj_Gry_ID)
        VALUES (1, 'The Witcher 3: Wild Hunt', 49.99, 'PC', 9.5, TO_DATE('2015-05-19', 'YYYY-MM-DD'), 1, 1, 1, 1)
    INTO Gry (ID, Nazwa, Cena, Platforma, Ocena, Data_Premiery, Wydawca_ID, Deweloper_ID, Kategoria_Gry_ID, Rodzaj_Gry_ID)
        VALUES (2, 'Assassins Creed Valhalla', 59.99, 'PS5', 8.8, TO_DATE('2020-11-10', 'YYYY-MM-DD'), 2, 2, 1, 1)
    INTO Gry (ID, Nazwa, Cena, Platforma, Ocena, Data_Premiery, Wydawca_ID, Deweloper_ID, Kategoria_Gry_ID, Rodzaj_Gry_ID)
        VALUES (3, 'StarCraft II', 19.99, 'PC', 9.2, TO_DATE('2010-07-27', 'YYYY-MM-DD'), 3, 3, 3, 3)
SELECT 1 FROM DUAL;

INSERT ALL
    INTO Gry (ID, Nazwa, Cena, Platforma, Ocena, Data_Premiery, Wydawca_ID, Deweloper_ID, Kategoria_Gry_ID, Rodzaj_Gry_ID)
        VALUES (4, 'The Witcher 3: Wild Hunt', 59.99, 'PC', 9.5, '2015-05-19', 1, 1, 1, 1)
    INTO Gry (ID, Nazwa, Cena, Platforma, Ocena, Data_Premiery, Wydawca_ID, Deweloper_ID, Kategoria_Gry_ID, Rodzaj_Gry_ID)
        VALUES (5, 'Red Dead Redemption 2', 49.99, 'PlayStation 4', 9.7, '2018-10-26', 2, 1, 2, 3)
    INTO Gry (ID, Nazwa, Cena, Platforma, Ocena, Data_Premiery, Wydawca_ID, Deweloper_ID, Kategoria_Gry_ID, Rodzaj_Gry_ID)
        VALUES (6, 'The Legend of Zelda: Breath of the Wild', 59.99, 'Nintendo Switch', 9.8, '2017-03-03', 3, 3, 3, 3)
SELECT 1 FROM DUAL;

INSERT ALL
    INTO Wydawca (ID, Nazwa, Kraj, Rok_Zalozenia, Liczba_Gier_Wydanych)
        VALUES (1, 'Electronic Arts', 'USA', TO_DATE('1982-08-01', 'YYYY-MM-DD'), 1500)
    INTO Wydawca (ID, Nazwa, Kraj, Rok_Zalozenia, Liczba_Gier_Wydanych)
        VALUES (2, 'Activision Blizzard', 'USA', TO_DATE('2008-10-22', 'YYYY-MM-DD'), 1000)
    INTO Wydawca (ID, Nazwa, Kraj, Rok_Zalozenia, Liczba_Gier_Wydanych)
        VALUES (3, 'Square Enix', 'Japonia', TO_DATE('1975-12-30', 'YYYY-MM-DD'), 500)
SELECT 1 FROM DUAL;

INSERT ALL
    INTO Zamowienie (ID, Data, Status, Klient_ID, Pracownik_ID)
        VALUES (1, TO_DATE('2023-06-01', 'YYYY-MM-DD'), 'Zrealizowane', 1, 1)
    INTO Zamowienie (ID, Data, Status, Klient_ID, Pracownik_ID)
        VALUES (2, TO_DATE('2023-06-05', 'YYYY-MM-DD'), 'W trakcie realizacji', 2, 1)
    INTO Zamowienie (ID, Data, Status, Klient_ID, Pracownik_ID)
        VALUES (3, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 'Zrealizowane', 3, 2)
SELECT 1 FROM DUAL;

Shriksanka, [14.06.2023 22:37]
INSERT ALL
    INTO Klient (ID, Imie, Nazwisko, Email, Data_Rejestracji)
        VALUES (1, 'Jan', 'Kowalski', 'jan.kowalski@example.com', TO_DATE('2022-01-10', 'YYYY-MM-DD'))
    INTO Klient (ID, Imie, Nazwisko, Email, Data_Rejestracji)
        VALUES (2, 'Anna', 'Nowak', 'anna.nowak@example.com', TO_DATE('2022-03-15', 'YYYY-MM-DD'))
    INTO Klient (ID, Imie, Nazwisko, Email, Data_Rejestracji)
        VALUES (3, 'Piotr', 'Wójcik', 'piotr.wojcik@example.com', TO_DATE('2022-05-20', 'YYYY-MM-DD'))
SELECT 1 FROM DUAL;

INSERT ALL
    INTO Pracownik (ID, Imie, Nazwisko, PESEL, Email, Stanowisko_ID)
        VALUES (1, 'Adam', 'Nowak', '90010112345', 'adam.nowak@example.com', 1)
    INTO Pracownik (ID, Imie, Nazwisko, PESEL, Email, Stanowisko_ID)
        VALUES (2, 'Maria', 'Kowalska', '87121298765', 'maria.kowalska@example.com', 2)
    INTO Pracownik (ID, Imie, Nazwisko, PESEL, Email, Stanowisko_ID)
        VALUES (3, 'Andrzej', 'Kowalczyk', '80030365432', 'andrzej.kowalczyk@example.com', 3)
SELECT 1 FROM DUAL;

INSERT ALL
    INTO Stanowisko (ID, Nazwa, Pensja)
        VALUES (1, 'Menadżer', 10000)
    INTO Stanowisko (ID, Nazwa, Pensja)
        VALUES (2, 'Konsultant', 8000)
    INTO Stanowisko (ID, Nazwa, Pensja)
        VALUES (3, 'Programista', 6000)
SELECT 1 FROM DUAL;
