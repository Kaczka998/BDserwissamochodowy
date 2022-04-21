PROMPT Podaj operacje jaka chcesz wykonac INSERT/DELETE/UPDATE
ACCEPT operacja CHAR DEFAULT '0' PROMPT '?: '
PROMPT Podaj id konaktu
ACCEPT k_id NUMBER DEFAULT '0' PROMPT '?: '
PROMPT Podaj nr telefonu
ACCEPT tel CHAR DEFAULT '0' PROMPT '?: '
PROMPT Podaj email
ACCEPT mail CHAR DEFAULT '0' PROMPT '?: '
EXEC proc5('&operacja', &k_id, '&tel', '&mail');