DROP TRIGGER IF EXISTS RV29;
DELIMITER $$
CREATE TRIGGER RV29
AFTER INSERT ON Prenota_Escursione FOR EACH ROW
	BEGIN
		DECLARE data_escursione DATE DEFAULT CURRENT_DATE;
        
        SELECT Data INTO data_escursione
        FROM Escursione
        WHERE CodiceEscursione=NEW.Escursione;
        
        IF(NEW.DataPrenotazione + INTERVAL 2 DAY >data_escursione) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Si deve prenotare al più 48 ore prima!';
		END IF;
	END $$
DELIMITER ;