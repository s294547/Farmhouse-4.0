DROP TRIGGER IF EXISTS RV33;
DELIMITER $$
CREATE TRIGGER RV33
AFTER INSERT ON Spedizione FOR EACH ROW
	BEGIN 
		DECLARE stato_ordine VARCHAR(100) DEFAULT ' ';
        
        SELECT StatoOrdine INTO stato_ordine
        FROM Ordine
        WHERE CodOrdine=NEW.CodOrdine;
        
        IF(stato_ordine <> 'In Preparazione') THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT='Non è possibile spedire un ordine se non è in preparazione!';
		ELSE 
			UPDATE Ordine
            SET StatoOrdine= 'Spedito'
            WHERE CodOrdine=NEW.CodOrdine;
		END IF;
	END $$
DELIMITER ;