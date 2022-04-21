PROMPT
SET ECHO ON
SELECT EXTRACT(YEAR FROM w.data_wykonania) AS rok, COUNT(w.id_wykonanej_uslugi) AS ilosc_uslug FROM Wykonane_uslugi w GROUP BY EXTRACT(YEAR FROM w.data_wykonania);
SET ECHO OFF
PROMPT