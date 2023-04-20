DROP TRIGGER IF EXISTS RV5;
DELIMITER $$
-- si verifica che l'abbeveratoio non sia vuoto
CREATE TRIGGER RV5
BEFORE INSERT ON Dati_Acqua FOR EACH ROW
	BEGIN
		IF(NEW.QuantitaAcqua=0) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'La ciotola è vuota!';
		END IF;
	END $$
DELIMITER ;
        
            