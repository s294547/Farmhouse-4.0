DROP TRIGGER IF EXISTS RV24;
DELIMITER $$
CREATE TRIGGER RV24
AFTER INSERT ON Pagamento_Soggiorno FOR EACH ROW
	BEGIN
		DECLARE registrato INT DEFAULT 0;
		DECLARE data_pren DATE DEFAULT CURRENT_DATE;
        DECLARE primo INT DEFAULT 0;
        
		SELECT COUNT(*) INTO registrato 
        FROM Prenotazione P INNER JOIN Utente U ON (U.CodFiscale=P.Utente) NATURAL JOIN Registrato R
        WHERE NEW.CodPrenotazione=P.CodPrenotazione;
        
        SELECT P.DataPren INTO data_pren
        FROM Prenotazione P
        WHERE P.CodPrenotazione=NEW.CodPrenotazione;
        
        SELECT COUNT(*) INTO primo
        FROM Pagamento_Soggiorno PS
        WHERE PS.CodPrenotazione=NEW.CodPrenotazione;
        
        IF( registrato =0 AND primo=1 AND data_pren <> DATE(CURRENT_TIMESTAMP)) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Il cliente deve pagare metà del soggiorno il giorno stesso della prenotazione!';
		END IF;
    END $$    
	DELIMITER ;

        
        