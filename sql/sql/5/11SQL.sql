PROMPT
SET ECHO ON
SELECT DISTINCT CONCAT(CONCAT(o.imie, ' '),o.nazwisko) AS wlasciciel, m.nazwa AS marka, mo.nazwa AS model, z.nazwa AS paliwo FROM Osoby o JOIN Klienci k ON o.id_osoby=k.id_osoby JOIN Wykonane_uslugi w
ON k.id_klienta=w.id_klienta JOIN Samochody s ON w.id_samochodu=s.id_samochodu JOIN Zrodla_energii z ON s.id_zrodlo=z.id_zrodlo JOIN Modele mo
ON s.id_modelu=mo.id_modelu JOIN Marki m ON mo.id_marki=m.id_marki; 
SET ECHO OFF
PROMPT