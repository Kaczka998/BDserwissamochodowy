PROMPT
SET ECHO ON
SELECT o.imie, o.nazwisko, SUM(w.cena) AS wydatki FROM Wykonane_uslugi w RIGHT JOIN Klienci k ON w.id_klienta=k.id_klienta JOIN Osoby o ON k.id_osoby=o.id_osoby GROUP BY o.imie, o.nazwisko;
SET ECHO OFF
PROMPT