DROP TRIGGER IF EXISTS RV26;
DELIMITER $$
CREATE TRIGGER RV26
AFTER INSERT ON Richiesta_Optional FOR EACH ROW
	BEGIN
		DECLARE suite INT DEFAULT 0;
        
        SELECT COUNT(*) INTO suite
        FROM Riservazione_Suite RS
        WHERE NEW.CodPrenotazione=RS.CodicePrenotazione;
        
        IF(suite=0) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Non è possibile riservare servizi aggiuntivi se non è stata prenotata una suite!';
		END IF;
	END $$
DELIMITER ;