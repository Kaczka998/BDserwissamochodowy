PROMPT
SET ECHO ON
SELECT a.wojewodztwo, COUNT(w.id_wykonanej_uslugi) AS ilosc_kupionych_uslug FROM Wykonane_uslugi w JOIN Klienci k ON w.id_klienta=k.id_klienta JOIN Osoby o ON k.id_osoby=o.id_osoby
RIGHT JOIN Adresy a ON o.id_adresu=a.id_adresu GROUP BY a.wojewodztwo HAVING COUNT(w.id_wykonanej_uslugi) = (SELECT MIN(A.CNT) FROM
(SELECT COUNT(w.id_wykonanej_uslugi) AS CNT FROM Wykonane_uslugi w JOIN Klienci k ON w.id_klienta=k.id_klienta JOIN Osoby o ON k.id_osoby=o.id_osoby
RIGHT JOIN Adresy a ON o.id_adresu=a.id_adresu GROUP BY (a.wojewodztwo)) A);
SET ECHO OFF
PROMPT