--Usluga oraz imie i nazwisko pracownika ktorzy pracowali nad autem o id 3
SELECT o.imie, o.nazwisko, r.nazwa FROM Osoby o JOIN Pracownicy p ON o.id_osoby=p.id_osoby JOIN Wykonane_uslugi w ON p.id_pracownika = w.id_pracownika JOIN Samochody s ON
w.id_samochodu = s.id_samochodu JOIN Rodzaje_uslug r ON w.id_rodzaju_uslugi=r.id_rodzaju_uslugi WHERE w.id_samochodu = 3;

--Srednia cena aut ktore kupuja klienci
SELECT AVG(w.cena) FROM Wykonane_uslugi w JOIN Rodzaje_uslug r ON w.id_rodzaju_uslugi=r.id_rodzaju_uslugi WHERE r.nazwa='Sprzedaz';

--Najczesciej wykonywana usluga
SELECT r.nazwa, COUNT(w.id_rodzaju_uslugi) AS ilosc FROM Wykonane_uslugi w JOIN Rodzaje_uslug r ON w.id_rodzaju_uslugi=r.id_rodzaju_uslugi GROUP BY r.nazwa;

--Ile aut jakiego typu bylo obslugiwane
SELECT t.nazwa, COUNT(w.id_samochodu) AS ilosc_uslug FROM Wykonane_uslugi w JOIN Samochody s ON w.id_samochodu=s.id_samochodu JOIN Typy t ON
s.id_typu=t.id_typu GROUP BY t.nazwa;

--Ktory pracownik wykonal najwiecej uslug
SELECT o.imie, o.nazwisko, COUNT(w.id_wykonanej_uslugi) AS ilosc_wykonanych_uslug FROM Wykonane_uslugi w JOIN Pracownicy p ON w.id_pracownika=p.id_pracownika JOIN Osoby o ON
p.id_osoby=o.id_osoby GROUP BY o.imie, o.nazwisko HAVING COUNT(w.id_wykonanej_uslugi)=(SELECT MAX(A.CNT) FROM (SELECT COUNT(w.id_wykonanej_uslugi) AS CNT FROM Wykonane_uslugi w JOIN Pracownicy p ON w.id_pracownika=p.id_pracownika JOIN Osoby o ON
p.id_osoby=o.id_osoby GROUP BY (o.imie, o.nazwisko)) A);

--Suma zarobkow serwisu
SELECT SUM(cena) AS Zarobek FROM Wykonane_uslugi;

--Pracownicy ktorzy wykonali uslugi powyzej sredniej
SELECT o.imie, o.nazwisko, COUNT(w.id_wykonanej_uslugi) AS ilosc_wykonanych_uslug FROM Wykonane_uslugi w JOIN Pracownicy p ON w.id_pracownika=p.id_pracownika JOIN Osoby o ON
p.id_osoby=o.id_osoby GROUP BY o.imie, o.nazwisko HAVING COUNT(w.id_wykonanej_uslugi) > (SELECT AVG(COUNT(w.id_wykonanej_uslugi)) FROM Wykonane_uslugi w JOIN Pracownicy p ON w.id_pracownika=p.id_pracownika JOIN Osoby o ON
p.id_osoby=o.id_osoby GROUP BY o.imie, o.nazwisko);

--W jakim roku bylo ile uslug
SELECT EXTRACT(YEAR FROM w.data_wykonania) AS rok, COUNT(w.id_wykonanej_uslugi) AS ilosc_uslug FROM Wykonane_uslugi w GROUP BY EXTRACT(YEAR FROM w.data_wykonania);

--Ktory klient ile wydal w serwisie
SELECT o.imie, o.nazwisko, SUM(w.cena) AS wydatki FROM Wykonane_uslugi w RIGHT JOIN Klienci k ON w.id_klienta=k.id_klienta JOIN Osoby o ON k.id_osoby=o.id_osoby GROUP BY o.imie, o.nazwisko;

--Ktore wojewodztwo nie kupilo zadnej uslugi
SELECT a.wojewodztwo, COUNT(w.id_wykonanej_uslugi) AS ilosc_kupionych_uslug FROM Wykonane_uslugi w JOIN Klienci k ON w.id_klienta=k.id_klienta JOIN Osoby o ON k.id_osoby=o.id_osoby
RIGHT JOIN Adresy a ON o.id_adresu=a.id_adresu GROUP BY a.wojewodztwo HAVING COUNT(w.id_wykonanej_uslugi) = (SELECT MIN(A.CNT) FROM
(SELECT COUNT(w.id_wykonanej_uslugi) AS CNT FROM Wykonane_uslugi w JOIN Klienci k ON w.id_klienta=k.id_klienta JOIN Osoby o ON k.id_osoby=o.id_osoby
RIGHT JOIN Adresy a ON o.id_adresu=a.id_adresu GROUP BY (a.wojewodztwo)) A);

--Wlasciciele aut i ich specyfikacja
SELECT DISTINCT CONCAT(CONCAT(o.imie, ' '),o.nazwisko) AS wlasciciel, m.nazwa AS marka, mo.nazwa AS model, z.nazwa AS paliwo FROM Osoby o JOIN Klienci k ON o.id_osoby=k.id_osoby JOIN Wykonane_uslugi w
ON k.id_klienta=w.id_klienta JOIN Samochody s ON w.id_samochodu=s.id_samochodu JOIN Zrodla_energii z ON s.id_zrodlo=z.id_zrodlo JOIN Modele mo
ON s.id_modelu=mo.id_modelu JOIN Marki m ON mo.id_marki=m.id_marki; 

--Pracownicy i ich stanowiska
SELECT o.imie, o.nazwisko, s.nazwa FROM Osoby o JOIN Pracownicy p On o.id_osoby=p.id_osoby JOIN Stanowiska s ON p.id_stanowiska=s.id_stanowiska;

--Srednie wynagrodzenie na danym stanowisku
SELECT s.nazwa, AVG(p.wynagrodzenie) AS srednie_wynagrodzenie FROM Stanowiska s JOIN Pracownicy p ON s.id_stanowiska=p.id_stanowiska GROUP BY s.nazwa;