DROP TRIGGER IF EXISTS RV23;
DELIMITER $$
CREATE TRIGGER RV23
AFTER INSERT ON Pagamento_Soggiorno FOR EACH ROW
	BEGIN
		DECLARE registrato INT DEFAULT 0;
        DECLARE spesa_semplice INT DEFAULT 0;
        DECLARE spesa_suite INT DEFAULT 0;
        DECLARE spesa_aggiuntiva INT DEFAULT 0;
		SELECT COUNT(*) INTO registrato 
        FROM Prenotazione P INNER JOIN Utente U ON (U.CodFiscale=P.Utente) NATURAL JOIN Registrato R
        WHERE NEW.CodPrenotazione=P.CodPrenotazione;
        
        SELECT SUM(DATEDIFF(P.DataChekOut,P.DataCheckIn)*SS.CostoGiornaliero) INTO spesa_semplice
        FROM Penotazione P INNER JOIN Riservazione_Stanza_Semplice RSS ON (P.CodPrenotazione=RSS.CodicePrenotazione)
			 NATURAL JOIN Stanza_Semplice SS
        WHERE P.CodPrenotazione=NEW.CodPrenotazione;
        
        SELECT SUM(DATEDIFF(P.DataChekOut,P.DataCheckIn)*S.CostoGiornaliero) INTO spesa_suite
        FROM Penotazione P INNER JOIN Riservazione_Suite RS ON (P.CodPrenotazione=RS.CodicePrenotazione)
			 NATURAL JOIN Suite
        WHERE P.CodPrenotazione=NEW.CodPrenotazione;
        
		SELECT SUM(DATEDIFF(RO.DataInizio, RO.DataFine)*SA.CostoGiornaliero) INTO spesa_aggiuntiva
        FROM Penotazione P NATURAL JOIN Richiesta_Optional RO INNER JOIN Servizi_Aggiuntivi SA ON(RO.Servizio=SA.NomeServizio)
        WHERE P.CodPrenotazione=NEW.CodPrenotazione;
        
        IF( registrato=0 AND NEW.CifraPagata <> (spesa_semplice+spesa_suite+spesa_aggiuntiva)/2) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Il cliente deve pagare metà del soggiorno!';
        END IF;
	END $$
DELIMITER ;