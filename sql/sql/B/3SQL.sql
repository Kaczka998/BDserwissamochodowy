PROMPT Podaj id auta ktorego infromacje chcesz wyswietlic
ACCEPT s_id NUMBER DEFAULT '0' PROMPT '?: '
$CLS
SET ECHO ON
EXEC proc3(&s_id);
SET ECHO OFF