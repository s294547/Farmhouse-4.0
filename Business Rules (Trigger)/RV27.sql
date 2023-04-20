DROP TRIGGER IF EXISTS RV27;
DELIMITER $$
CREATE TRIGGER RV27
AFTER INSERT ON Pagamento_Soggiorno FOR EACH ROW
	BEGIN
		DECLARE registrato INT DEFAULT 0;
        DECLARE secondo INT DEFAULT 0;
        
        SELECT COUNT(*) INTO registrato 
        FROM Prenotazione P INNER JOIN Utente U ON (U.CodFiscale=P.Utente) NATURAL JOIN Registrato R
        WHERE NEW.CodPrenotazione=P.CodPrenotazione;
        
	    SELECT COUNT(*) INTO secondo
	    FROM Pagamento_Soggiorno PS
	    WHERE PS.CodPrenotazione=NEW.CodPrenotazione;
        
        IF (registrato=1 AND secondo>1) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Gli utenti registrati devono effettuare un solo pagamento';
		END IF;
	END $$
DELIMITER ;