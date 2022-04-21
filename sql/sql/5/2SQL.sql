PROMPT
SET ECHO ON
SELECT AVG(w.cena) FROM Wykonane_uslugi w JOIN Rodzaje_uslug r ON w.id_rodzaju_uslugi=r.id_rodzaju_uslugi WHERE r.nazwa='Sprzedaz';
SET ECHO OFF
PROMPT