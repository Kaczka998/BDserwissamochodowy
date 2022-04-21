ALTER TABLE Klienci 
ADD test VARCHAR2(20);

ALTER TABLE Klienci 
ADD CONSTRAINT test_ograniczenia UNIQUE(test);

ALTER TABLE Klienci 
DROP CONSTRAINT test_ograniczenia;

ALTER TABLE Klienci 
DROP COLUMN  test;