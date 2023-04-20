-- Si è supposto che gli animali mangino 6 volte al giorno. Gli orari di distribuzione del cibo sono dunque 
-- 7:00, 10:00, 13:00, 16:00, 19:00, 22:00
-- se nelle rilevazioni delle 13:00 e nelle rilevazioni delle 22:00  ho lo stesso foraggio  dalle 7:00 alle 13:00 
-- e il quantitativo di ogni ora è maggiore o uguale al quantitativo dell'ora precedente il cibo è rinasto immangiato --> svuoto la ciotola

DROP TRIGGER IF EXISTS RV4;
DELIMITER $$

CREATE TRIGGER RV4 
BEFORE INSERT ON Dati_Cibo FOR EACH ROW
	BEGIN
		DECLARE tot_foraggi INT DEFAULT 0;
        DECLARE quantita_prec INT DEFAULT 0;
        DECLARE quantita_ora INT DEFAULT 0;
        DECLARE conta INT DEFAULT 0;
        DECLARE ora INT DEFAULT HOUR(CURRENT_TIMESTAMP);
        DECLARE finito INT DEFAULT 0;
        DECLARE cursorecibo CURSOR FOR
			SELECT QuantitaForaggio
			FROM Dati_Cibo
			WHERE NEW.Mangiatoia=Mangiatoia AND DAY(Timestamp_)=DAY(CURRENT_TIMESTAMP)
				  AND HOUR(Timestamp_)> IF(ora<=13, 7, 13);
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
                  
                
        
		IF ( (HOUR(CURRENT_TIME)=13 OR HOUR(CURRENT_TIME)=22) AND MINUTE(CURRENT_TIME)<30) THEN
			
            SELECT COUNT(DISTINCT Foraggio) INTO tot_foraggi 
            FROM Dati_Cibo
			WHERE NEW.Mangiatoia=Mangiatoia AND DAY(Timestamp_)=DAY(CURRENT_TIMESTAMP);
			
            IF(tot_foraggi=1) THEN -- se il foraggio è stato cambiato vuol dire che è stato consumato del cibo
				 scan:LOOP
					IF (finito=1) THEN
						LEAVE scan;
					END IF;
                    IF (conta=0) THEN
						SET conta=conta+1;
                        FETCH cursorecibo INTO quantita_prec;
                        ITERATE scan;
					END IF;
					FETCH cursorecibo INTO quantita_ora;
					IF quantita_ora< quantita_prec THEN -- se la rilevazione precedente ha una quantità minore di cibo, vuol dire 
													    -- che esso è stato consumato 
						SET conta= -1;
                        LEAVE scan;
					ELSE
						SET quantita_prec=quantita_ora;
					END IF;
				END LOOP;
                
                IF(conta >=0) THEN
					SET NEW.QuantitaForaggio=quantita_prec; -- svuoto la ciotola, per far ciò elimino il foraggio precedente e ne reinserisco una quanità pari alla quantità
															-- di foraggio precedente.
				END IF;
			END IF;
		END IF;
	END $$
DELIMITER ;

