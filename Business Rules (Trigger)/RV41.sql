DROP TRIGGER IF EXISTS RV41;
DELIMITER $$
CREATE TRIGGER RV41
AFTER INSERT ON Turno FOR EACH ROW
	BEGIN
		DECLARE turnononfinito INT DEFAULT 0;
        
        SELECT COUNT(*) INTO turnononfinito
        FROM Turno
        WHERE Impiegato=NEW.Impiegato  AND TimestampInizioTurno < NEW.TimestampInizioTurno AND 
			  TimestampInizioTurno+Durata > NEW.TimestampInizioTurno ;
              
		IF (turnononfinito>0) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Il turno precedente non è ancora finito!';
		END IF;
	END $$
DELIMITER ;