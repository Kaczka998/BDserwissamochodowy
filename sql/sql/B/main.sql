$CLS
PROMPT Menu:
PROMPT 1. losowanie wynagordzenia mechanikom
PROMPT 2. sprawdz poprawnosc telefonow
PROMPT 3. wyswietl dane o wybranym samochodzie
PROMPT 4. wystaw fakture
PROMPT 5. operacje na tabeli kontakt
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT '?: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.SQL'
PAUSE
@main.sql