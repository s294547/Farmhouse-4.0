DROP PROCEDURE IF EXISTS Recensione_Oggetto;
DELIMITER $$
CREATE PROCEDURE Recensione_Oggetto (IN prodotto VARCHAR(100), IN gusto INT, IN conservazione INT, IN qualita INT,
							   IN gradimento_generale INT, IN testo TEXT)
	BEGIN
		DECLARE stato_spedizione VARCHAR(100) DEFAULT ' ';
        
        SELECT S.StatoSpedizione INTO stato_spedizione
        FROM Prodotto_Ordine PO NATURAL JOIN Ordine O NATURAL JOIN Spedizione S 
        WHERE PO.CodiceProdotto=prodotto;
        
        IF(stato_spedizione <> 'Consegnata') THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Non è possibile inserire la recensione se il prodotto non è stato ancora consegnato!';
		ELSE        
			INSERT INTO Parametri_Recensione
            VALUES(prodotto, gusto, conservazione, qualita, gradimento_generale);
            IF(testo IS NOT NULL) THEN
				INSERT INTO Testo
				VALUES (prodotto, testo);
			END IF;
		END IF;
	END $$
DELIMITER ;