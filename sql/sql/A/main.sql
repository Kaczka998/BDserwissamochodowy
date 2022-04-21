$CLS
PROMPT Menu:
PROMPT 1. Wylicz srednie wynagordzenie pracownikow
PROMPT 2. Wylicz maksymalne wynagordzenie pracownikow
PROMPT 3. Wylicz minimalne wynagordzenie pracownikow
ACCEPT wybor CHAR FORMAT 'A1' DEFAULT '0' PROMPT '?: '
$CLS
DEFINE CURR_DIR='&1'
PROMPT wybor = &wybor
@'&CURR_DIR/&wybor.SQL'
PAUSE
@main.sql                                                                                