DROP TRIGGER IF EXISTS RV28;
DELIMITER $$
CREATE TRIGGER RV28
AFTER INSERT ON Pagamento_Soggiorno FOR EACH ROW
	BEGIN
		DECLARE registrato INT DEFAULT 0;
        
        SELECT COUNT(*) INTO registrato 
        FROM Prenotazione P INNER JOIN Utente U ON (U.CodFiscale=P.Utente) NATURAL JOIN Registrato R
        WHERE NEW.CodPrenotazione=P.CodPrenotazione;
        
        IF (registrato=1 AND NEW.TipoPagamento<>'Contanti' AND NEW.TipoPagamento <>'Carta di Credito' AND NEW.TipoPagamento <> 'Carta di Debito') THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Gli utenti registrati devono effettuare il pagamento con uno dei metodi riportati: contanti, carta di credito, carta di debito';
		END IF;
	END $$
DELIMITER ;