DROP TRIGGER IF EXISTS RV1;
-- CONTROLLANDO CHE HO SOLO UNA SPECIE PER OGNI STALLA CONTROLLO ANCHE CHE HO SOLO UNA SPECIE PER OGNI LOCALE
DELIMITER $$

CREATE TRIGGER RV1 
AFTER INSERT ON Singola_Mangiatoia FOR EACH ROW
	BEGIN
		DECLARE tot_specie INT DEFAULT 0;
        DECLARE stalla VARCHAR(100) DEFAULT ' ';
        
        SELECT Stalla INTO stalla
        FROM Locale
        WHERE CodiceLocale=NEW.Locale;
        
        SELECT COUNT(DISTINCT A.Specie) INTO tot_specie
        FROM Stalla S INNER JOIN Locale L ON (
			 S.CodiceStalla=L.Stalla) INNER JOIN Singola_Mangiatoia 
             SM ON (SM.Locale=L.CodiceLocale) INNER JOIN Animale A
             ON (A.Mangiatoia=SM.Codice)
		WHERE L.Stalla=stalla;
        
        
        IF tot_specie>1 THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'In una stalla si hanno gli animali di una sola specie!';
		END IF;
	END $$
DELIMITER ;
        
        