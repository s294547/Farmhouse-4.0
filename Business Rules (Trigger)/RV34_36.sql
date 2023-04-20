DROP TRIGGER IF EXISTS RV34_36;
DELIMITER $$
CREATE TRIGGER RV34_36
AFTER INSERT ON Rilevazioni FOR EACH ROW
	BEGIN 
		DECLARE stato_ordine VARCHAR(100) DEFAULT ' ';
        DECLARE prima_rilevazione INT DEFAULT 0;
        
        SELECT COUNT(*) INTO prima_rilevazione
        FROM Rilevazioni
        WHERE CodSpedizione=NEW.CodSpedizione;
        
        SELECT O.StatoOrdine INTO stato_ordine
        FROM Ordine O NATURAL JOIN Spedizione S 
        WHERE NEW.CodSpedizione=S.CodSpedizione;
        
        IF(stato_ordine <> 'Spedito' AND prima_rilevazione=1) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT='Non è possibile pagare un ordine se non è in processazione!';
		ELSEIF (prima_rilevazione=1) THEN
			UPDATE Ordine O NATURAL JOIN Spedizione S 
            SET O.StatoOrdine= 'Evaso'
            WHERE NEW.CodSpedizione=S.CodSpedizione;
            
            UPDATE Spedizione
            SET StatoSpedizione= 'Spedita'
            WHERE NEW.CodSpedizione=CodSpedizione;
            
		END IF;
        
	END $$
DELIMITER ;