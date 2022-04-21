PROMPT Podaj id faktury ktora chcesz wystawic
ACCEPT f_id NUMBER DEFAULT '0' PROMPT '?: '
$CLS
SET ECHO ON
EXEC proc4(&f_id);
SET ECHO OFF