DROP TRIGGER IF EXISTS RV7;
DELIMITER $$
-- verifica della negatività dell'esito

CREATE TRIGGER RV7
AFTER UPDATE ON Esame FOR EACH ROW
	BEGIN	
		DECLARE esito VARCHAR(100) DEFAULT ' ';
        SELECT Esito INTO esito
        FROM Visita
        WHERE CodiceVisita=NEW.Visita;
        
        IF(esito <> 'Negativo') THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT='Non si possono prescrivere esami se la visita ha esito non negativo!';
		END IF;
	END $$
DELIMITER ;