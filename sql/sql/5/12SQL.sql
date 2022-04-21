PROMPT
SET ECHO ON
SELECT o.imie, o.nazwisko, s.nazwa FROM Osoby o JOIN Pracownicy p On o.id_osoby=p.id_osoby JOIN Stanowiska s ON p.id_stanowiska=s.id_stanowiska;
SET ECHO OFF
PROMPT