SET ECHO ON
SET SERVEROUTPUT ON

--Procedura do przydzielania wynagrodzenia mechanikom
CREATE OR REPLACE PROCEDURE proc1 IS
BEGIN
    UPDATE Pracownicy SET wynagrodzenie = DBMS_RANDOM.VALUE(4000,5000) WHERE id_stanowiska = 1;
    UPDATE Pracownicy SET wynagrodzenie = DBMS_RANDOM.VALUE(7000,8000) WHERE id_stanowiska = 2;
END;
/
--Procedura do sprawdzania poprawnosci nr telefonow
CREATE OR REPLACE PROCEDURE proc2 IS
CURSOR dane IS
    SELECT telefon FROM Kontakt;
c_dane kontakt.telefon%TYPE;
length_exception EXCEPTION;
BEGIN
    OPEN dane;
    FETCH dane INTO c_dane;
    IF (LENGTH(c_dane) != 9 ) THEN RAISE length_exception;
    ELSE DBMS_OUTPUT.PUT_LINE('Wszystkie numery telefonow sa poprawne.');
    END IF;
EXCEPTION
    WHEN length_exception THEN DBMS_OUTPUT.PUT_LINE('Nr telefonu musi skladac sie z 9 cyfr!');
END;
/
--Procedura wyswietlajaca dane o wybranym samochodzie
CREATE OR REPLACE PROCEDURE proc3(s_id IN INT) IS
CURSOR auta IS
    SELECT o.imie, o.nazwisko, m.nazwa AS marka, mo.nazwa AS model, z.nazwa AS paliwo, r.rodzaj, t.nazwa AS typ FROM Osoby o JOIN Klienci k ON o.id_osoby=k.id_osoby JOIN Wykonane_uslugi w
    ON k.id_klienta=w.id_klienta JOIN Samochody s ON w.id_samochodu=s.id_samochodu JOIN Zrodla_energii z ON s.id_zrodlo=z.id_zrodlo JOIN Rodzaje_napedow r ON s.id_rodzaj_napedu = r.id_rodzaj_napedu JOIN Typy t ON s.id_typu = t.id_typu
    JOIN Modele mo ON s.id_modelu=mo.id_modelu JOIN Marki m ON mo.id_marki=m.id_marki WHERE s.id_samochodu = s_id; 
c_imie osoby.imie%TYPE;
c_nazwisko osoby.nazwisko%TYPE;
c_marka marki.nazwa%TYPE;
c_model modele.nazwa%TYPE;
c_paliwo zrodla_energii.nazwa%TYPE;
c_typ typy.nazwa%TYPE;
c_naped rodzaje_napedow.rodzaj%TYPE;
BEGIN
    OPEN auta;
    FETCH auta INTO c_imie, c_nazwisko, c_marka, c_model, c_paliwo, c_typ, c_naped;
    DBMS_OUTPUT.PUT_LINE('Dane samochodu o id: ' || s_id);
    DBMS_OUTPUT.PUT_LINE('Wlasciciel: ' || c_imie || ' ' || c_nazwisko || ' Marka: ' || c_marka || ' Model: ' || c_model || ' Rodzaj paliwa: ' || c_paliwo || ' Typ nadwozia: ' || c_typ || ' Rodzaj napedu: ' || c_naped);
END;
/

--Procedura do wystawiania faktur
CREATE OR REPLACE PROCEDURE proc4(f_id IN INT) IS
CURSOR faktura IS
    SELECT f.data_wystawienia, r.nazwa AS Usluga, w.data_wykonania, m.nazwa AS Model, mr.nazwa AS marka, o.nazwisko AS Klient, o2.nazwisko AS Pracownik FROM Faktury f JOIN Wykonane_uslugi w ON f.id_faktury=w.id_faktury
    JOIN Rodzaje_uslug r ON w.id_rodzaju_uslugi=r.id_rodzaju_uslugi JOIN Samochody s ON w.id_samochodu = s.id_samochodu JOIN Modele m ON s.id_modelu = m.id_modelu JOIN Marki mr ON m.id_marki = mr.id_marki
    JOIN Klienci k ON w.id_klienta=k.id_klienta JOIN Osoby o ON k.id_osoby=o.id_osoby JOIN Pracownicy p ON w.id_pracownika=p.id_pracownika JOIN Osoby o2 ON p.id_osoby=o2.id_osoby WHERE f.id_faktury=f_id;
c_data_wys faktury.data_wystawienia%TYPE;
c_usluga rodzaje_uslug.nazwa%TYPE;
c_data_wyk wykonane_uslugi.data_wykonania%TYPE;
c_model modele.nazwa%TYPE;
c_marka marki.nazwa%TYPE;
c_klient osoby.nazwisko%TYPE;
c_pracownik osoby.nazwisko%TYPE;
BEGIN
    OPEN faktura;
    FETCH faktura INTO c_data_wys, c_usluga, c_data_wyk, c_model, c_marka, c_klient, c_pracownik;
    DBMS_OUTPUT.PUT_LINE('Dane faktury nr: ' || f_id);
    DBMS_OUTPUT.PUT_LINE('Data wystawienia faktury: ' || c_data_wys ||  ' Wykonana usluga: ' || c_usluga || ' Data wykonania uslugi: ' || c_data_wyk || ' Model auta: ' || c_model || ' Marka auta: ' || c_marka || ' Klient: ' || c_klient || ' Pracownik: ' || c_pracownik);
END;
/
--Funkcja wyliczajaca srednie wynagrodzenie pracownikow
CREATE OR REPLACE FUNCTION func1
RETURN NUMBER
IS
srednia NUMBER :=0;
BEGIN
    SELECT AVG(wynagrodzenie) INTO srednia FROM Pracownicy;
    RETURN srednia;
END;
/
--Procedura obslugujaca operacje na tabeli Kontakt
CREATE OR REPLACE PROCEDURE proc5(operacja VARCHAR,t_id IN kontakt.id_kontaktu%TYPE, t_telefon IN kontakt.telefon%TYPE, t_email IN kontakt.email%TYPE) IS
BEGIN
    CASE
    WHEN operacja='INSERT' THEN INSERT INTO Kontakt VALUES(kontakt_seq.nextval, t_telefon, t_email);
    WHEN operacja='UPDATE' THEN UPDATE Kontakt SET telefon=t_telefon, email=t_email WHERE id_kontaktu=t_id;
    WHEN operacja='DELETE' THEN DELETE FROM Kontakt WHERE id_kontaktu=t_id;
    END CASE;
END;
/
--Funckja do wyliczania maxymum zarobkow

CREATE OR REPLACE FUNCTION func2
RETURN NUMBER
IS
maksymum NUMBER :=0;
BEGIN
    SELECT MAX(wynagrodzenie) INTO maksymum FROM Pracownicy;
    RETURN maksymum;
END;
/
--Funckja do wyliczania minimum zarobkow

CREATE OR REPLACE FUNCTION func3
RETURN NUMBER
IS
minimum NUMBER :=0;
BEGIN
    SELECT MIN(wynagrodzenie) INTO minimum FROM Pracownicy;
    RETURN minimum;
END;
/
SET ECHO OFF