SET ECHO ON
CREATE TABLE Zrodla_energii(
id_zrodlo INT PRIMARY KEY NOT NULL,
nazwa VARCHAR(50)
);

CREATE TABLE Rodzaje_napedow(
id_rodzaj_napedu INT PRIMARY KEY NOT NULL,
rodzaj VARCHAR(50)
);

CREATE TABLE Typy(
id_typu INT PRIMARY KEY NOT NULL,
nazwa VARCHAR(50),
przeznaczenie VARCHAR(50)
);

CREATE TABLE Kontakt(
id_kontaktu INT PRIMARY KEY NOT NULL,
telefon VARCHAR(9),
email VARCHAR(30)  
);

CREATE TABLE Marki(
id_marki INT PRIMARY KEY NOT NULL,
nazwa VARCHAR(50),
kraj_pochodzenia VARCHAR(50)
);

CREATE TABLE Modele(
id_modelu INT PRIMARY KEY NOT NULL,
nazwa VARCHAR(50),
id_marki INT,
FOREIGN KEY (id_marki) REFERENCES Marki(id_marki)
);

CREATE TABLE Stanowiska(
id_stanowiska INT PRIMARY KEY NOT NULL,
nazwa VARCHAR(50)
);

CREATE TABLE Samochody(
id_samochodu INT PRIMARY KEY NOT NULL,
id_modelu INT,
id_zrodlo INT,
id_rodzaj_napedu INT,
id_typu INT,
FOREIGN KEY (id_modelu) REFERENCES Modele(id_modelu),
FOREIGN KEY (id_zrodlo) REFERENCES Zrodla_energii(id_zrodlo),
FOREIGN KEY (id_rodzaj_napedu) REFERENCES Rodzaje_napedow(id_rodzaj_napedu),
FOREIGN KEY (id_typu) REFERENCES Typy(id_typu)
);

CREATE TABLE Adresy (
id_adresu INT PRIMARY KEY NOT NULL,
wojewodztwo VARCHAR(50),
miasto VARCHAR(50),
ulica VARCHAR(50),
nr_domu VARCHAR(6)
);

CREATE TABLE Osoby (
id_osoby INT PRIMARY KEY NOT NULL,
imie VARCHAR(50),
nazwisko VARCHAR(50),
id_adresu INT,
id_kontaktu INT,
FOREIGN KEY (id_adresu) REFERENCES Adresy(id_adresu),
FOREIGN KEY (id_kontaktu) REFERENCES Kontakt(id_kontaktu)
);

CREATE TABLE Klienci(
id_klienta INT PRIMARY KEY NOT NULL,
id_osoby INT,
pesel char(11) ,
FOREIGN KEY(id_osoby) REFERENCES Osoby (id_osoby),
CONSTRAINT check_pesel
check(regexp_like(pesel, '^[0-9]{11}$'))
);

CREATE TABLE Pracownicy(
id_pracownika INT PRIMARY KEY NOT NULL,
id_osoby INT,
wynagrodzenie INT,
id_stanowiska INT,
FOREIGN KEY(id_stanowiska) REFERENCES Stanowiska (id_stanowiska),
FOREIGN KEY(id_osoby) REFERENCES Osoby (id_osoby)
);

CREATE TABLE Faktury (
id_faktury INT PRIMARY KEY NOT NULL,
data_wystawienia DATE
);

CREATE TABLE Rodzaje_uslug (
id_rodzaju_uslugi INT PRIMARY KEY NOT NULL,
nazwa VARCHAR(50)
);

CREATE TABLE Wykonane_uslugi (
id_wykonanej_uslugi INT PRIMARY KEY NOT NULL,
id_pracownika INT,
id_klienta INT,
id_rodzaju_uslugi INT,
id_samochodu INT,
cena INT,
data_wykonania DATE,
id_faktury INT,
FOREIGN KEY (id_pracownika) REFERENCES Pracownicy(id_pracownika),
FOREIGN KEY (id_klienta) REFERENCES Klienci(id_klienta),
FOREIGN KEY (id_rodzaju_uslugi) REFERENCES Rodzaje_uslug(id_rodzaju_uslugi),
FOREIGN KEY (id_samochodu) REFERENCES Samochody(id_samochodu),
FOREIGN KEY (id_faktury) REFERENCES Faktury(id_faktury)
);
SET ECHO OFF