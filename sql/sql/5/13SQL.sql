PROMPT
SET ECHO ON
SELECT s.nazwa, AVG(p.wynagrodzenie) AS srednie_wynagrodzenie FROM Stanowiska s JOIN Pracownicy p ON s.id_stanowiska=p.id_stanowiska GROUP BY s.nazwa;
SET ECHO OFF
PROMPT