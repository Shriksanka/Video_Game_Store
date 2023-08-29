-- 2 Zapytania które łączą przynajmniej dwie tabele poprzez JOIN
-- Pobierz nazwę gry, nazwę kategorii oraz nazwę dewelopera dla wszystkich gier
SELECT Gry.Nazwa AS NazwaGry, Kategoria_Gry.Nazwa AS NazwaKategorii, Deweloper.Nazwa AS NazwaDewelopera
FROM Gry
JOIN Kategoria_Gry ON Gry.Kategoria_Gry_ID = Kategoria_Gry.ID
JOIN Deweloper ON Gry.Deweloper_ID = Deweloper.ID;

-- Pobierz zamówienia, nazwisko klienta oraz nazwisko pracownika odpowiedzialnego za zamówienie
SELECT Zamowienie.ID AS NumerZamowienia, Klient.Nazwisko AS NazwiskoKlienta, Pracownik.Nazwisko AS NazwiskoPracownika
FROM Zamowienie
JOIN Klient ON Zamowienie.Klient_ID = Klient.ID
JOIN Pracownik ON Zamowienie.Pracownik_ID = Pracownik.ID;


-- 2 Zapytania z funkcjami agregującymi
-- Oblicz sumę cen wszystkich gier
SELECT SUM(Cena) AS SumaCenGier
FROM Gry;

-- Oblicz średnią ocenę gier dla każdego rodzaju gry
SELECT Rodzaj_Gry.Nazwa AS NazwaRodzaju, AVG(Gry.Ocena) AS SredniaOcena
FROM Gry
JOIN Rodzaj_Gry ON Gry.Rodzaj_Gry_ID = Rodzaj_Gry.ID
GROUP BY Rodzaj_Gry.Nazwa;


-- 2 Zapytania z podzapytaniem
-- Pobierz nazwę kategorii gier, które mają przynajmniej jedną grę wydaną na określonej platformie
SELECT Nazwa
FROM Kategoria_Gry
WHERE ID IN (
    SELECT Kategoria_Gry_ID
    FROM Gry
    WHERE Platforma = 'PC'
);

-- Wybierz wszystkie gry, których cena jest wyższa niż średnia cena wszystkich gier.
SELECT ID, Nazwa, Cena, Platforma
FROM Gry
WHERE Cena > (SELECT AVG(Cena) FROM Gry);



-- 1 Zapytanie z podzapytaniem skorelowanym
-- Zapytanie: Pobierz nazwę gry i nazwisko dewelopera dla gier, których cena jest wyższa niż średnia cena wszystkich gier
SELECT Gry.Nazwa AS NazwaGry, Deweloper.Nazwa AS NazwaDewelopera
FROM Gry
JOIN Deweloper ON Gry.Deweloper_ID = Deweloper.ID
WHERE Gry.Cena > (SELECT AVG(Cena) FROM Gry);
