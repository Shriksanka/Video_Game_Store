CREATE TABLE Kategoria_Gry (
    ID INT PRIMARY KEY,
    Nazwa VARCHAR(255),
    Opis VARCHAR(255),
    Rodzaj_Gry_ID INT,
    FOREIGN KEY (Rodzaj_Gry_ID) REFERENCES Rodzaj_Gry(ID)
);
CREATE TABLE Rodzaj_Gry (
    ID INT PRIMARY KEY,
    Nazwa VARCHAR(255),
    Opis VARCHAR(255)
);
CREATE TABLE Deweloper (
    ID INT PRIMARY KEY,
    Nazwa VARCHAR(255),
    Kraj VARCHAR(255),
    Rok_Zalozenia DATE
);
CREATE TABLE Gry (
    ID INT PRIMARY KEY,
    Nazwa VARCHAR(255),
    Cena DECIMAL(10, 2),
    Platforma VARCHAR(255),
    Ocena DECIMAL(3, 1),
    Data_Premiery DATE,
    Wydawca_ID INT,
    Deweloper_ID INT,
    Kategoria_Gry_ID INT,
    Rodzaj_Gry_ID INT,
    FOREIGN KEY (Wydawca_ID) REFERENCES Wydawca(ID),
    FOREIGN KEY (Deweloper_ID) REFERENCES Deweloper(ID),
    FOREIGN KEY (Kategoria_Gry_ID) REFERENCES Kategoria_Gry(ID),
    FOREIGN KEY (Rodzaj_Gry_ID) REFERENCES Rodzaj_Gry(ID)
);
CREATE TABLE Wydawca (
    ID INT PRIMARY KEY,
    Nazwa VARCHAR(255),
    Kraj VARCHAR(255),
    Rok_Zalozenia DATE,
    Liczba_Gier_Wydanych INT
);
CREATE TABLE Zamowienie_Gry (
    Zamowienie_ID INT,
    Gry_ID INT,
    FOREIGN KEY (Zamowienie_ID) REFERENCES Zamowienie(ID),
    FOREIGN KEY (Gry_ID) REFERENCES Gry(ID),
    PRIMARY KEY (Zamowienie_ID, Gry_ID)
);
CREATE TABLE Zamowienie (
    ID INT PRIMARY KEY,
    Data DATE,
    Status VARCHAR(255),
    Klient_ID INT,
    Pracownik_ID INT,
    FOREIGN KEY (Klient_ID) REFERENCES Klient(ID),
    FOREIGN KEY (Pracownik_ID) REFERENCES Pracownik(ID)
);
CREATE TABLE Klient (
    ID INT PRIMARY KEY,
    Imie VARCHAR(255),
    Nazwisko VARCHAR(255),
    Email VARCHAR(255),
    Data_Rejestracji DATE
);
CREATE TABLE Pracownik (
    ID INT PRIMARY KEY,
    Imie VARCHAR(255),
    Nazwisko VARCHAR(255),
    PESEL VARCHAR(11),
    Email VARCHAR(255),
    Stanowisko_ID INT,
    FOREIGN KEY (Stanowisko_ID) REFERENCES Stanowisko(ID)
);
CREATE TABLE Stanowisko (
    ID INT PRIMARY KEY,
    Nazwa VARCHAR(255),
    Pensja DECIMAL(10, 2)
);
