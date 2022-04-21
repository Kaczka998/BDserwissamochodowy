PROMPT
SET ECHO ON
SELECT r.nazwa, COUNT(w.id_rodzaju_uslugi) AS ilosc FROM Wykonane_uslugi w JOIN Rodzaje_uslug r ON w.id_rodzaju_uslugi=r.id_rodzaju_uslugi GROUP BY r.nazwa;
SET ECHO OFF
PROMPT