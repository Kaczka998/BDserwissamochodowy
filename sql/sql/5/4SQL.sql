PROMPT
SET ECHO ON
SELECT t.nazwa, COUNT(w.id_samochodu) AS ilosc_uslug FROM Wykonane_uslugi w JOIN Samochody s ON w.id_samochodu=s.id_samochodu JOIN Typy t ON
s.id_typu=t.id_typu GROUP BY t.nazwa;
SET ECHO OFF
PROMPT