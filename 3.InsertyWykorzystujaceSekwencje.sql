--3. Zawierajacy co najmniej 5-10 polecen INSERT dla kazdej tabeli.
INSERT INTO Rodzaje_napedow (id_rodzaj_napedu, rodzaj)
VALUES (rodzaje_napedow_seq.nextVal, 'RWD');

INSERT INTO Rodzaje_napedow (id_rodzaj_napedu, rodzaj)
VALUES (rodzaje_napedow_seq.nextVal, 'FWD');

INSERT INTO Rodzaje_napedow (id_rodzaj_napedu, rodzaj)
VALUES (rodzaje_napedow_seq.nextVal, 'AWD');

INSERT INTO Rodzaje_napedow (id_rodzaj_napedu, rodzaj)
VALUES (rodzaje_napedow_seq.nextVal, '4WD');



--Zrodla_energii
INSERT INTO Zrodla_energii (id_zrodlo, nazwa)
VALUES (ZRODLA_ENERGII_SEQ.nextval, 'benzyna');

INSERT INTO Zrodla_energii (id_zrodlo, nazwa)
VALUES (ZRODLA_ENERGII_SEQ.nextval, 'diesel');

INSERT INTO Zrodla_energii (id_zrodlo, nazwa)
VALUES (ZRODLA_ENERGII_SEQ.nextval, 'gaz');

INSERT INTO Zrodla_energii (id_zrodlo, nazwa)
VALUES (ZRODLA_ENERGII_SEQ.nextval, 'wodor');

INSERT INTO Zrodla_energii (id_zrodlo, nazwa)
VALUES (ZRODLA_ENERGII_SEQ.nextval, 'elektryczny');

--Marki
INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'BMW', 'Niemcy');

INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'Audi', 'Niemcy');

INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'Seat', 'Hiszpania');

INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'Reanult', 'Francja');

INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'Porsche', 'Niemcy');

INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'Ferrari', 'Wlochy');

INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'Jeep', 'USA');

INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'Opel', 'Niemcy');

INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'Rolls-royce', 'Wielka Brytania');

INSERT INTO Marki (id_marki, nazwa, kraj_pochodzenia)
VALUES (marki_seq.nextval, 'Volvo', 'USA');

--Modele
INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Leon', 3);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Captur', 4);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'E65', 1);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Ibiza', 3);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Megane', 4);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'X3', 1);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'A3', 2);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'A4', 2);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Cayman', 5);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Carrera', 5);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Laferrari', 6);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Testarossa', 6);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Wrangler', 7);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Liberty', 7);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Astra', 8);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Zafira', 8);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Ghost', 9);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'Phantom', 9);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'V40', 10);

INSERT INTO Modele (id_modelu, nazwa, id_marki)
VALUES (modele_seq.nextval, 'XC70', 10);

--Typy
INSERT INTO TYPY (id_typu, nazwa, przeznaczenie)
VALUES (typy_seq.nextval, 'Sedan', 'rodzinny');

INSERT INTO TYPY (id_typu, nazwa, przeznaczenie)
VALUES (typy_seq.nextval, 'Hatchback', 'rodzinny');

INSERT INTO TYPY (id_typu, nazwa, przeznaczenie)
VALUES (typy_seq.nextval, 'Kombi', 'rodzinny');

INSERT INTO TYPY (id_typu, nazwa, przeznaczenie)
VALUES (typy_seq.nextval, 'Cabrio', 'turystyczny');

INSERT INTO TYPY (id_typu, nazwa, przeznaczenie)
VALUES (typy_seq.nextval, 'Coupe', 'sportowy');

INSERT INTO TYPY (id_typu, nazwa, przeznaczenie)
VALUES (typy_seq.nextval, 'SUV', 'terenowy');

--Samochody
INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 2, 3, 4, 5);

INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 3, 4, 4, 1);

INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 11, 3, 3, 3);

INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 13, 2, 4, 4);

INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 18, 4, 4, 4);

INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 19, 5, 2, 6);

INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 4, 5, 2, 5);

INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 5, 1, 1, 6);

INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 1, 1, 1, 2);

INSERT INTO Samochody (id_samochodu, id_modelu, id_zrodlo, id_rodzaj_napedu, id_typu)
VALUES (samochody_seq.nextval, 12, 2, 3, 3);

--Kontakty
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'111222333','klient1@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'222333444','klient2@gmail.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'333444555','klient3@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'444555666','klient4@gmail.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'234567890','klient5@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'345678901','klient6@gmail.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'777888999','klient7@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'888999000','klient8@gmail.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'999888777','klient9@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'000111222','klient10@gmail.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'121113121','pracownik1@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'444222111','pracownik2@gmail.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'555666111','pracownik3@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'333666111','pracownik4@gmail.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'777881812','pracownik5@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'654756123','pracownik6@gmail.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'889128123','pracownik7@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'567234123','pracownik8@gmail.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'999888000','pracownik9@email.com');
INSERT INTO Kontakt(id_kontaktu,telefon,email)
values (kontakt_seq.nextval,'182934120','pracownik10@gmail.com');

--Adresy
INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Swietokrzyskie','Kielce','Krzywa','12');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Swietokrzyskie','Jedrzejow','Prosta','5');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Swietokrzyskie','Kielce','Mala','6');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Mazowieckie','Warszawa','Duza','123');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Wielkopolskie','Poznan','Morka','65');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Kujawsko-Pomosrkie','Torun','Sucha','88');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Swietokrzyskie','Lipnica','Pogodna','112');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Swietokrzyskie','Zlotniki','Pochmurna','231');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Mazowieckie','Ciechanow','Sloneczna','321');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Mazowieckie','Legionowo','Zimna','9');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Mazowieckie','Proszkow','Ciepla','432');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Kujawsko-Pomosrkie','Bydgoszcz','Zakrecona','1');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Kujawsko-Pomosrkie','Tuchola','Wesola','23');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Kujawsko-Pomosrkie','Brodnica','Smutna','25');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Wielkopolskie','Pila','Prosta','68');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Wielkopolskie','Gniezno','Ciepla','70');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Wielkopolskie','Kalisz','Wysoka','420');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Wielkopolskie','Konin','Niska','21');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Slaskie','Katowice','Lubiana','37');

INSERT INTO ADRESY(ID_ADRESU,WOJEWODZTWO,MIASTO,ULICA,NR_DOMU)
VALUES(adresy_seq.nextval,'Slaskie','Czestochowa','Chlodna','66');

--Stanowiska
INSERT INTO Stanowiska(id_stanowiska, nazwa)
VALUES(STANOWISKA_SEQ.nextval, 'mechanik');

INSERT INTO Stanowiska(id_stanowiska, nazwa)
VALUES(STANOWISKA_SEQ.nextval, 'starszy mechanik');

INSERT INTO Stanowiska(id_stanowiska, nazwa)
VALUES(STANOWISKA_SEQ.nextval, 'konserwator');

INSERT INTO Stanowiska(id_stanowiska, nazwa)
VALUES(STANOWISKA_SEQ.nextval, 'starszy konserwator');

INSERT INTO Stanowiska(id_stanowiska, nazwa)
VALUES(STANOWISKA_SEQ.nextval, 'sprzedawca');

INSERT INTO Stanowiska(id_stanowiska, nazwa)
VALUES(STANOWISKA_SEQ.nextval, 'kierownik');

--Osoby
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval ,'Andrzej','Beton', 1, 1);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval,'Stanislaw','Giermasz', 2, 2);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval,'Wlodzimiez','Szaranowicz', 3, 3);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval,'Dariusz','Szpakowski', 4, 4);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval,'Mariusz','Galiusz', 5, 5);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval,'Aneta','Sztacheta', 6, 6);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval,'Monika','Kaszkiet', 7, 7);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval,'Bogdan','Boguduchawinny', 8, 8);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval,'Kasia','Mak', 9, 9);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval,'Basia','Bak', 10, 10);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Stefan', 'Bednar', 11, 11);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Michal', 'Kowalski', 12, 12);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Andrzej', 'Piec', 13, 13);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Bogdan', 'Krzyrkowski', 14, 14);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Marek', 'Krzywy', 15, 15);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Krzysztof', 'Dawny', 16, 16);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Karol', 'Swerdak', 17, 17);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Hubert', 'Biedron', 18, 18);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Marian', 'Bednarek', 19, 19);
INSERT INTO Osoby(id_osoby, imie, nazwisko, id_adresu, id_kontaktu)
VALUES (OSOBY_SEQ.nextval, 'Robert', 'Kriminal', 20, 20);

--Pracownicy
INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval , 11, '3500', 4);

INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval, 12, '4500', 3);

INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval, 13, '5500', 2);

INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval, 14, '3700', 5);

INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval, 15, '3200', 5);

INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval, 16, '3400', 1);

INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval, 17, '4600', 2);

INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval, 18, '5300', 4);

INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval, 19, '6000', 3);

INSERT INTO Pracownicy (id_pracownika, id_osoby, wynagrodzenie, id_stanowiska)
VALUES (pracownicy_seq.nextval, 20, '10000', 6);

--Klienci
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 1, '92061842987');
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 2, '05281291179');
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 3, '92061298535');
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 4, '78111257572');
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 5, '66022181435');
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 6, '53123195335');
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 7, '98022281983');
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 8, '86060231578');
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 9, '79020991887');
INSERT INTO Klienci (id_klienta,id_osoby, pesel)
Values (klienci_seq.nextval, 10, '82042865588');

--Uslugi
INSERT INTO Rodzaje_uslug (ID_Rodzaju_uslugi, Nazwa)
VALUES (rodzaje_usulg_seq.nextval, 'Przeglad');

INSERT INTO Rodzaje_uslug (ID_Rodzaju_uslugi, Nazwa)
VALUES (rodzaje_usulg_seq.nextval, 'Sprzedaz');

INSERT INTO Rodzaje_uslug (ID_Rodzaju_uslugi, Nazwa)
VALUES (rodzaje_usulg_seq.nextval, 'Wypozyczenie');

INSERT INTO Rodzaje_uslug (ID_Rodzaju_uslugi, Nazwa)
VALUES (rodzaje_usulg_seq.nextval, 'Serwis');

INSERT INTO Rodzaje_uslug (ID_Rodzaju_uslugi, Nazwa)
VALUES (rodzaje_usulg_seq.nextval, 'Wymiana oleju');

INSERT INTO Rodzaje_uslug (ID_Rodzaju_uslugi, Nazwa)
VALUES (rodzaje_usulg_seq.nextval, 'Wymiana opon');

INSERT INTO Rodzaje_uslug (ID_Rodzaju_uslugi, Nazwa)
VALUES (rodzaje_usulg_seq.nextval, 'Zbieznosc');

INSERT INTO Rodzaje_uslug (ID_Rodzaju_uslugi, Nazwa)
VALUES (rodzaje_usulg_seq.nextval, 'Usuwanie bledow komputera');

INSERT INTO Rodzaje_uslug (ID_Rodzaju_uslugi, Nazwa)
VALUES (rodzaje_usulg_seq.nextval, 'Diagnostyka komputerowa');

--Faktury
INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('01.03.2016', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval,  TO_DATE('12.04.2016', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('21.04.2016', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('02.10.2016', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('01.07.2017', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('12.08.2018', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('01.03.2019', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('25.06.2019', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('18.11.2019', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('04.05.2020', 'DD.MM.YYYY'));

INSERT INTO Faktury (ID_Faktury, Data_wystawienia)
VALUES (faktury_seq.nextval, TO_DATE('07.12.2020', 'DD.MM.YYYY'));

INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval,1,1,1,3,'250',TO_DATE('28.03.2018','DD-MM-YYYY'),1);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval,2,8,2,2,'1450',TO_DATE('11.04.2016','DD-MM-YYYY'),2);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval,4,9,4,1,'60',TO_DATE('20.04.2016','DD-MM-YYYY'),3);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval,8,1,6,3,'760',TO_DATE('27.03.2018','DD-MM-YYYY'),1);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval,1,5,1,7,'1230',TO_DATE('30.06.2017','DD-MM-YYYY'),5);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval, 4, 5, 3, 1, '1200', TO_DATE('06.12.2020', 'DD.MM.YYYY'), 11);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval, 5, 5, 2, 3, '3200', TO_DATE('03.05.2020', 'DD.MM.YYYY'), 10);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval, 7, 3, 6, 2, '270', TO_DATE('24.06.2019', 'DD.MM.YYYY'), 8);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval, 2, 2, 9, 4, '1560', TO_DATE('17.11.2019', 'DD.MM.YYYY'), 9);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval, 8, 7, 1, 7, '980', TO_DATE('11.08.2018', 'DD.MM.YYYY'), 6);
INSERT INTO Wykonane_uslugi(id_wykonanej_uslugi, id_pracownika, id_klienta, id_rodzaju_uslugi, id_samochodu, cena, data_wykonania, id_faktury)
VALUES (wykonane_uslugi_seq.nextval, 10, 6, 5, 8, '300', TO_DATE('27.02.2019', 'DD.MM.YYYY'), 7);

COMMIT;