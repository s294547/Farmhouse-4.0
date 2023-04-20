DROP TRIGGER IF EXISTS RV37;
DELIMITER $$
CREATE TRIGGER RV37
AFTER UPDATE ON Prodotto_Ordine FOR EACH ROW
	BEGIN 
		DECLARE timestamp_consegna DATE DEFAULT CURRENT_DATE;
        DECLARE Cod_Ordine VARCHAR(100) DEFAULT ' ';
        
        SELECT CodOrdine INTO Cod_Ordine
        FROM Prodotto_Ordine
        WHERE NEW.CodiceProdotto=CodiceProdotto;
        
		IF(NEW.Reso IS NOT NULL AND OLD.Reso IS NULL) THEN
			SELECT TimestampConsegna INTO timestamp_consegna
            FROM Spedizione
            WHERE CodOrdine=Cod_Ordine;
			
            IF(timestamp_consegna +INTERVAL 2 DAY < CURRENT_TIMESTAMP) THEN
				SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT= 'Sono passate più di 48 ore dalla consegna, dunque non è più possibile effettuare il reso!';
            END IF;
		END IF;
	END $$
DELIMITER ;