DROP TRIGGER IF EXISTS RV22;
DELIMITER $$
CREATE TRIGGER RV22
AFTER INSERT ON Pagamento_Soggiorno FOR EACH ROW
	BEGIN
		DECLARE registrato INT DEFAULT 0;
		SELECT COUNT(*) INTO registrato 
        FROM Prenotazione P INNER JOIN Utente U ON (U.CodFiscale=P.Utente) NATURAL JOIN Registrato R
        WHERE NEW.CodPrenotazione=P.CodPrenotazione;
        
        IF( registrato=0 AND (NEW.TipoPagamento <> 'PayPal' AND  NEW.TipoPagamento<> 'Carta di Credito')) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Il pagamento è effettuabile solo con carta di credito o paypal per utenti non registrati!';
        END IF;
	END $$
DELIMITER ;
			