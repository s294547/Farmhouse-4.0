DROP PROCEDURE IF EXISTS Reso_Oggetto;
DELIMITER $$
CREATE PROCEDURE Reso_Oggetto (IN prodotto VARCHAR(100))
	BEGIN
		DECLARE stato_spedizione VARCHAR(100) DEFAULT ' ';
        
        SELECT S.StatoSpedizione INTO stato_spedizione
        FROM Prodotto_Ordine PO NATURAL JOIN Ordine O NATURAL JOIN Spedizione S 
        WHERE PO.CodiceProdotto=prodotto;
        
        IF(stato_spedizione <> 'Consegnata') THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Non è possibile effettuare il reso se il prodotto non è stato ancora consegnato!';
		ELSE        
			UPDATE Prodotto_Ordine
            SET Reso=CURRENT_DATE
            WHERE CodiceProdotto=prodotto;
		END IF;
	END $$
DELIMITER ;