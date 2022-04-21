PROMPT
SET ECHO ON
SELECT o.imie, o.nazwisko, r.nazwa FROM Osoby o JOIN Pracownicy p ON o.id_osoby=p.id_osoby JOIN Wykonane_uslugi w ON p.id_pracownika = w.id_pracownika JOIN Samochody s ON
w.id_samochodu = s.id_samochodu JOIN Rodzaje_uslug r ON w.id_rodzaju_uslugi=r.id_rodzaju_uslugi WHERE w.id_samochodu = 3;
SET ECHO OFF
PROMPT