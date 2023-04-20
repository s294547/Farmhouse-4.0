DROP TRIGGER IF EXISTS RV32;
DELIMITER $$
CREATE TRIGGER RV32
AFTER INSERT ON Pagamento FOR EACH ROW
	BEGIN 
		DECLARE stato_ordine VARCHAR(100) DEFAULT ' ';
        
        SELECT StatoOrdine INTO stato_ordine
        FROM Ordine
        WHERE CodOrdine=NEW.CodOrdine;
        
        IF(stato_ordine <> 'In Processazione') THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT='Non è possibile pagare un ordine se non è in processazione!';
		ELSE 
			UPDATE Ordine
            SET StatoOrdine= 'In Preparazione'
            WHERE CodOrdine=NEW.CodOrdine;
		END IF;
	END $$
DELIMITER ;
		