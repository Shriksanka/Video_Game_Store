-- Trigger BEFORE INSERT dla taeli 'Kategoria gry'
-- Jeśli wartość Nazwa jest pusta,
-- trigger nadaje domyślną wartość "Nieznana kategoria" dla tego pola.
CREATE OR REPLACE TRIGGER before_insert_KG
BEFORE INSERT ON Kategoria_Gry
FOR EACH ROW
BEGIN
    IF :NEW.Nazwa IS NULL THEN
        :NEW.Nazwa := 'Nieznana kategoria';
    END IF;
END;
/

-- BEFORE UPDATE dla tabeli 'Gry'
-- Przed aktualizacją rekordu w tabeli Gry, trigger ten sprawdza, czy nowa wartość pola Cena jest ujemna.
-- Jeśli tak, trigger uniemożliwia wykonanie aktualizacji i
-- zgłasza błąd z komunikatem "Cena gry nie może być ujemna".
CREATE OR REPLACE TRIGGER before_update_G
BEFORE UPDATE ON Gry
FOR EACH ROW
BEGIN
    IF :NEW.Cena < 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Cena gry nie może być ujemna');
    END IF;
END;
/

-- AFTER INSERT dla tabeli 'Zamowienie'
-- Po wstawieniu nowego rekordu do tabeli Zamowienie,
-- trigger ten wyświetla na konsoli komunikat z nazwiskiem klienta,
-- dla którego zostało utworzone zamówienie.
CREATE OR REPLACE TRIGGER after_insert_Z
AFTER INSERT ON Zamowienie
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Nowe zamówienie utworzone dla klienta: ' || :NEW.Klient_ID);
END;
/

-- AFTER DELETE dla tabeli 'Deweloper'
-- Po usunięciu rekordu z tabeli Deweloper, trigger ten aktualizuje rekordy
-- w tabeli Gry, ustawiając pole Deweloper_ID na NULL dla rekordów,
-- które były powiązane z usuniętym deweloperem.
CREATE OR REPLACE TRIGGER after_delete_D
AFTER DELETE ON Deweloper
FOR EACH ROW
BEGIN
    UPDATE Gry SET Deweloper_ID = NULL WHERE Deweloper_ID = :OLD.ID;
    DBMS_OUTPUT.PUT_LINE('Usunięto dewelopera o ID: ' || :OLD.ID);
END;
/
-- PRZYKŁADY:
-- BEFORE INSERT
INSERT INTO Kategoria_Gry (ID, Nazwa, Opis, Rodzaj_Gry_ID)
VALUES (4, NULL, 'Opis kategorii', 1);
SELECT Nazwa FROM Kategoria_Gry WHERE ID = 4;
-- BEFORE UPDATE
UPDATE Gry SET Cena = -10 WHERE ID = 1;
-- AFTER INSERT
INSERT INTO Zamowienie (ID, Data, Status, Klient_ID, Pracownik_ID)
VALUES (4, SYSDATE, 'Nowe zamówienie', 2, 1);
-- AFTER DELETE
DELETE FROM Deweloper WHERE ID = 2;
