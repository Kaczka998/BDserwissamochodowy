-- 4. Zawierajacy po jednej instrukcji INSERT naruszajacej kazdy z typow ograniczen (np. UNIQUE, NOT NULL, CHECK, klucza g��wnego, klucza obcego, itp) dla dowolnej tabeli.

INSERT INTO Klienci (id_klienta,id_osoby, pesel) Values (1, 1, '92061842987'); --unique
INSERT INTO Klienci (id_klienta,id_osoby, pesel) Values (NULL, 1, '92061842987'); --not null
INSERT INTO Klienci (id_klienta,id_osoby, pesel) Values (21, 41, '92061842987'); -- nieistniejacy klucz obcy 
INSERT INTO Klienci (id_klienta,id_osoby, pesel) Values ('a', 1, '92061842987'); -- literka zamiast cyfry 
INSERT INTO Klienci (id_klienta,id_osoby, pesel) Values ('21', 1, '1237'); -- zbyt mala liczba cyfr w peselu
INSERT INTO Klienci (id_klienta,id_osoby, pesel) Values ('21', 1, '1212312312337'); -- zbyt duza liczba cyfr w peselu
INSERT INTO Klienci (id_klienta,id_osoby, pesel) Values ('21', 1, '1111111111a'); -- literka w peselu