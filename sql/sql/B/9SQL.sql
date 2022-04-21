PROMPT Podaj nazwisko studenta
ACCEPT nazwisko_studenta CHAR DEFAULT '0' PROMPT '?: '
PROMPT Podaj imiê studenta
ACCEPT imie_studenta CHAR DEFAULT '0' PROMPT '?: '
$CLS
EXEC dodaj_studenta('&nazwisko_studenta', '&imie_studenta');