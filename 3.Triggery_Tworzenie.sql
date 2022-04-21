CREATE OR REPLACE TRIGGER AIUD_ARCHIWIZUJ_PRACOWNICY
	AFTER INSERT OR UPDATE OR DELETE
	ON PRACOWNICY
	FOR EACH ROW
	DECLARE
	BEGIN
        IF INSERTING THEN
			INSERT INTO pracownicy_archiwum
		   ( EVENT_DATE,
             EVENT_TYPE,
            OLD_ID_PRACOWNIKA,
            OLD_ID_OSOBY,
            OLD_WYNAGRODZENIE,
            OLD_ID_STANOWISKA,
            NEW_ID_PRACOWNIKA,
            NEW_ID_OSOBY,
            NEW_WYNAGRODZENIE,
            NEW_ID_STANOWISKA)
        VALUES
			(
			  SYSDATE
			, 'INSERT'
			, NULL
			, NULL
			, NULL
			, NULL,
            :NEW.ID_PRACOWNIKA,
            :NEW.ID_OSOBY,
            :NEW.WYNAGRODZENIE,
            :NEW.ID_STANOWISKA	  
			);
		
        ELSIF UPDATING THEN
        
			INSERT INTO pracownicy_archiwum
		   (   EVENT_DATE		      
			, EVENT_TYPE,                     
            OLD_ID_PRACOWNIKA,
            OLD_ID_OSOBY,
            OLD_WYNAGRODZENIE,
            OLD_ID_STANOWISKA,
            NEW_ID_PRACOWNIKA,
            NEW_ID_OSOBY,
            NEW_WYNAGRODZENIE,
            NEW_ID_STANOWISKA
			)
			VALUES
			(
			  SYSDATE
			, 'UPDATE',
			:OLD.ID_PRACOWNIKA,
            :OLD.ID_OSOBY,
            :OLD.WYNAGRODZENIE,
            :OLD.ID_STANOWISKA,
            :NEW.ID_PRACOWNIKA,
            :NEW.ID_OSOBY,
            :NEW.WYNAGRODZENIE,
            :NEW.ID_STANOWISKA		  
			);
        -- deleting
        ELSE
			INSERT INTO pracownicy_archiwum
		   (  EVENT_DATE	     
			, EVENT_TYPE                     
			,  OLD_ID_PRACOWNIKA,
            OLD_ID_OSOBY,
            OLD_WYNAGRODZENIE,
            OLD_ID_STANOWISKA,
            NEW_ID_PRACOWNIKA,
            NEW_ID_OSOBY,
            NEW_WYNAGRODZENIE,
            NEW_ID_STANOWISKA
			)
			VALUES
			(
			   SYSDATE
			, 'DELETE',
			:OLD.ID_PRACOWNIKA,
            :OLD.ID_OSOBY,
            :OLD.WYNAGRODZENIE,
            :OLD.ID_STANOWISKA,
			 NULL
			, NULL
			, NULL
			, NULL
			);
        END IF;
	END;
/

CREATE OR REPLACE TRIGGER AIUD_ARCHIWIZUJ_KLIENCI
	AFTER INSERT OR UPDATE OR DELETE
	ON KLIENCI
	FOR EACH ROW
	DECLARE
	BEGIN
        IF INSERTING THEN
			INSERT INTO klienci_archiwum
		   ( EVENT_DATE,
             EVENT_TYPE,
            OLD_ID_KLIENTA,
            OLD_ID_OSOBY,
            OLD_PESEL,
            NEW_ID_KLIENTA,
            NEW_ID_OSOBY,
            NEW_PESEL)
        VALUES
			(
			  SYSDATE
			, 'INSERT'
			, NULL
			, NULL
			, NULL
            ,:NEW.ID_KLIENTA
            ,:NEW.ID_OSOBY
            ,:NEW.PESEL	  
			);
		
        ELSIF UPDATING THEN
        
			INSERT INTO klienci_archiwum
		   (   EVENT_DATE,
             EVENT_TYPE,
            OLD_ID_KLIENTA,
            OLD_ID_OSOBY,
            OLD_PESEL,
            NEW_ID_KLIENTA,
            NEW_ID_OSOBY,
            NEW_PESEL
			)
			VALUES
			(
			  SYSDATE
			, 'UPDATE'
			, :OLD.ID_KLIENTA
			, :OLD.id_OSOBY
			, :OLD.PESEL
            , :NEW.ID_KLIENTA
            , :NEW.ID_OSOBY
            , :NEW.PESEL	  	  
			);
        -- deleting
        ELSE
			INSERT INTO klienci_archiwum
		   (  EVENT_DATE,
             EVENT_TYPE,
            OLD_ID_KLIENTA,
            OLD_ID_OSOBY,
            OLD_PESEL,
            NEW_ID_KLIENTA,
            NEW_ID_OSOBY,
            NEW_PESEL
			)
			VALUES
			(
			   SYSDATE
			, ' DELETE'
			, :OLD.ID_KLIENTA
			, :OLD.id_OSOBY
			, :OLD.PESEL
            , NULL
            , NULL
            , NULL
            
			);
        END IF;
	END;
/

CREATE OR REPLACE TRIGGER AIUD_WYK_USLUGI
	AFTER INSERT OR UPDATE OR DELETE
	ON wykonane_uslugi
	FOR EACH ROW
	DECLARE
	BEGIN
                IF INSERTING THEN
			INSERT INTO uslugi_archiwum
		   ( EVENT_DATE,
             EVENT_TYPE,
            OLD_ID_WYKONANEJ_USLUGI
            ,OLD_ID_PRACOWNIKA
            ,OLD_ID_KLIENTA,
   OLD_ID_RODZAJU_USLUGI,
   OLD_ID_SAMOCHODU,
   OLD_CENA ,
   OLD_DATA_WYKONANIA,
   OLD_IF_FAKTURY,
   NEW_ID_WYKONANEJ_USLUGI,
   NEW_ID_PRACOWNIKA,
   NEW_ID_KLIENTA,
   NEW_ID_RODZAJU_USLUGI,
   NEW_ID_SAMOCHODU,
   NEW_CENA ,
   NEW_DATA_WYKONANIA ,
   NEW_IF_FAKTURY )
        VALUES
			(
			  SYSDATE
			, 'INSERT'
			, NULL
			, NULL
			, NULL
            , NULL
			, NULL
			, NULL
            ,:NEW.ID_WYKONANEJ_USLUGI,
   :NEW.ID_PRACOWNIKA,
   :NEW.ID_KLIENTA,
   :NEW.ID_RODZAJU_USLUGI,
   :NEW.ID_SAMOCHODU,
   :NEW.CENA ,
   :NEW.DATA_WYKONANIA ,
   :NEW.IF_FAKTURY	  
			);
		
        ELSIF UPDATING THEN
        
			INSERT INTO uslugi_archiwum
		   (  EVENT_DATE,
             EVENT_TYPE,
            OLD_ID_WYKONANEJ_USLUGI
            ,OLD_ID_PRACOWNIKA
            ,OLD_ID_KLIENTA,
   OLD_ID_RODZAJU_USLUGI,
   OLD_ID_SAMOCHODU,
   OLD_CENA ,
   OLD_DATA_WYKONANIA,
   OLD_IF_FAKTURY,
   NEW_ID_WYKONANEJ_USLUGI,
   NEW_ID_PRACOWNIKA,
   NEW_ID_KLIENTA,
   NEW_ID_RODZAJU_USLUGI,
   NEW_ID_SAMOCHODU,
   NEW_CENA ,
   NEW_DATA_WYKONANIA ,
   NEW_IF_FAKTURY
			)
			VALUES
			(
			  SYSDATE
			, 'UPDATE'
			, :OLD.ID_WYKONANEJ_USLUGI,
   :OLD.ID_PRACOWNIKA,
   :OLD.ID_KLIENTA,
   :OLD.ID_RODZAJU_USLUGI,
   :OLD.ID_SAMOCHODU,
   :OLD.CENA ,
   :OLD.DATA_WYKONANIA ,
   :OLD.IF_FAKTURY	
            ,:NEW.ID_WYKONANEJ_USLUGI,
   :NEW.ID_PRACOWNIKA,
   :NEW.ID_KLIENTA,
   :NEW.ID_RODZAJU_USLUGI,
   :NEW.ID_SAMOCHODU,
   :NEW.CENA ,
   :NEW.DATA_WYKONANIA ,
   :NEW.IF_FAKTURY	   	  
			);
        -- deleting
        ELSE
			INSERT INTO uslugi_archiwum
		   (  EVENT_DATE,
             EVENT_TYPE,
            OLD_ID_WYKONANEJ_USLUGI
            ,OLD_ID_PRACOWNIKA
            ,OLD_ID_KLIENTA,
   OLD_ID_RODZAJU_USLUGI,
   OLD_ID_SAMOCHODU,
   OLD_CENA ,
   OLD_DATA_WYKONANIA,
   OLD_IF_FAKTURY,
   NEW_ID_WYKONANEJ_USLUGI,
   NEW_ID_PRACOWNIKA,
   NEW_ID_KLIENTA,
   NEW_ID_RODZAJU_USLUGI,
   NEW_ID_SAMOCHODU,
   NEW_CENA ,
   NEW_DATA_WYKONANIA ,
   NEW_IF_FAKTURY
			)
			VALUES
			(
			   SYSDATE
			, ' DELETE'
			, :OLD.ID_WYKONANEJ_USLUGI,
   :OLD.ID_PRACOWNIKA,
   :OLD.ID_KLIENTA,
   :OLD.ID_RODZAJU_USLUGI,
   :OLD.ID_SAMOCHODU,
   :OLD.CENA ,
   :OLD.DATA_WYKONANIA ,
   :OLD.IF_FAKTURY	
            	, NULL
			, NULL
			, NULL
            , NULL
			, NULL
			, NULL 
            
			);
        END IF;
	END;
/


CREATE OR REPLACE TRIGGER BD_MARKA
BEFORE DELETE ON Marki
FOR EACH ROW
BEGIN
    DELETE FROM Modele WHERE modele.id_marki = :OLD.id_marki;
END;
/
--5 
--usuwanie z osoby to usuwanie kontaktu, pracownicy, klienci

CREATE OR REPLACE TRIGGER BD_OSOBA
BEFORE DELETE ON osoby
FOR EACH ROW
BEGIN
    DELETE FROM kontakt WHERE kontakt.id_kontaktu = :OLD.id_kontaktu;
END;
/