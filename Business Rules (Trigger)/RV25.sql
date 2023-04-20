DROP TRIGGER IF EXISTS RV25;
DELIMITER $$
CREATE TRIGGER RV25
AFTER INSERT ON Pagamento_Soggiorno FOR EACH ROW
	BEGIN
		DECLARE registrato INT DEFAULT 0;
		DECLARE data_fine DATE DEFAULT CURRENT_DATE;
        DECLARE secondo INT DEFAULT 0;
        
		SELECT COUNT(*) INTO registrato 
        FROM Prenotazione P INNER JOIN Utente U ON (U.CodFiscale=P.Utente) NATURAL JOIN Registrato R
        WHERE NEW.CodPrenotazione=P.CodPrenotazione;
        
        SELECT P.DataCheckOut into data_fine
        FROM Prenotazione P 
        WHERE NEW.CodPrenotazione=P.CodPrenotazione;
        
        IF(registrato=1 AND data_fine <> CURRENT_DATE) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Gli utenti registrati devono pagare alla fine del soggiorno!';
		END IF;
		
       SELECT COUNT(*) INTO secondo
	   FROM Pagamento_Soggiorno PS
	   WHERE PS.CodPrenotazione=NEW.CodPrenotazione;
        
	   IF(registrato=0 AND data_fine <> CURRENT_DATE AND secondo=2) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Gli utenti non registrati devono terminare il pagamento alla fine del soggiorno!';
		END IF;
    END $$
DELIMITER ;