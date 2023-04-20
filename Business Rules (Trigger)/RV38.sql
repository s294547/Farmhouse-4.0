DROP TRIGGER IF EXISTS RV38;
DELIMITER $$
CREATE TRIGGER RV38
AFTER UPDATE ON Dati_Latte_Munto FOR EACH ROW
	BEGIN 
        DECLARE locale_animale VARCHAR(100) DEFAULT ' ';
        DECLARE ultimo_orario_mungitura  TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
		
        SELECT M.Locale INTO locale_animale
        FROM Animale A INNER JOIN Mangiatoia M ON (A.Mangiatoia=M.Codice) 
        WHERE A.Codice=NEW.Animale;
        
        SELECT MAX(TimestampStabilito) INTO ultimo_orario_mungitura
        FROM Gruppo_Mungitura
        WHERE CodiceLocale=locale_animale;
		
        IF(ultimo_orario_mungitura + INTERVAL 30 MINUTE < NEW.Timestamp_) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT='Orario di mungitura troppo distante da quello stabilito!';
		END IF;
	END $$
DELIMITER ;