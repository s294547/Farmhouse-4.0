DROP TRIGGER IF EXISTS RV36_1;
DELIMITER $$
CREATE TRIGGER RV36_1
AFTER INSERT ON Rilevazioni FOR EACH ROW
	BEGIN 
		DECLARE stato_ordine VARCHAR(100) DEFAULT ' ';
        
        SELECT O.StatoOrdine INTO stato_ordine
        FROM Ordine O NATURAL JOIN Spedizione S 
        WHERE NEW.CodSpedizione=S.CodSpedizione;
        
        IF(NEW.UltimoHUB= 'si') THEN
			UPDATE Spedizione
            SET StatoSpedizione= 'In Consegna'
            WHERE CodSpedizione=NEW.CodSpedizione;
		END IF;
	END $$
DELIMITER ;