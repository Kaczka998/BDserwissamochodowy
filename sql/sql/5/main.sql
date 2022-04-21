$CLS
PROMPT Menu:
PROMPT 1. --Usluga oraz imie i nazwisko pracownika ktorzy pracowali nad autem o id 3;
PROMPT 2. --Srednia cena aut ktore kupuja klienci;
PROMPT 3. --Najczesciej wykonywana usluga;
PROMPT 4. --Ile aut jakiego typu bylo obslugiwane;
PROMPT 5. --Ktory pracownik wykonal najwiecej uslug;
PROMPT 6. --Suma zarobkow serwisu;
PROMPT 7. --Pracownicy ktorzy wykonali uslugi powyzej sredniej;
PROMPT 8. --W jakim roku bylo ile uslug;
PROMPT 9. --Ktory klient ile wydal w serwisie;
PROMPT 10. --Ktore wojewodztwo nie kupilo zadnej uslugi;
PROMPT 11. --Wlasciciele aut i ich specyfikacja;
PROMPT 12. --Pracownicy i ich stanowiska;
PROMPT 13. --Srednie wynagrodzenie na danym stanowisku;
ACCEPT wybor CHAR FORMAT 'A2' DEFAULT '0' PROMPT '?: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.sql'
PROMPT # Wcisnij ENTER #
PAUSE
@main.sql