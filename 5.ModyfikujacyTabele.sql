--5. Modyfikujacy dowolnie wybrana tabele:
-- 1* dodajacy kolumne (np. test VARCHAR2(20)),
-- 2* dodajacy ograniczenia do dodanej kolumny (np. NOT NULL),
-- 3* usuwajacy ograniczenia dotyczace dodanej kolumny,
-- 4* usuwajacy dodana kolumne.

--1
ALTER TABLE Klienci 
ADD test VARCHAR2(20);
--2
ALTER TABLE Klienci 
ADD CONSTRAINT test_ograniczenia UNIQUE(test);
--3
ALTER TABLE Klienci 
DROP CONSTRAINT test_ograniczenia;
--4
ALTER TABLE Klienci 
DROP COLUMN  test;