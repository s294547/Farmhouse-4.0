DROP TRIGGER IF EXISTS RV3;
DELIMITER $$
-- verifico che il numero di animali presenti in un locale non superi il limite consentito dalle dimensioni dello spazio
CREATE TRIGGER RV3 
AFTER INSERT ON Singola_Mangiatoia FOR EACH ROW
	BEGIN
        DECLARE superficie_locale INT DEFAULT 0;
        DECLARE tot_animali INT DEFAULT 0;
        DECLARE densita INT DEFAULT 0;
        
        SELECT Lunghezza*Larghezza INTO superficie_locale
        FROM Locale
        WHERE CodiceLocale=NEW.Locale;
        
        SELECT S.DensitaPerM2 INTO densita
        FROM  Singola_Mangiatoia SM INNER JOIN Animale A
             ON (A.Mangiatoia=SM.Codice) INNER JOIN Specie S ON (A.Specie=S.NomeSpecie)
		WHERE SM.Codice=NEW.Codice;
        
        SELECT COUNT(*) INTO tot_animali
        FROM Singola_Mangiatoia SM INNER JOIN Animale A
             ON (A.Mangiatoia=SM.Codice)
        WHERE SM.Locale=NEW.Locale;
        
        IF (densita*superfice_locale < tot_animali) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Il locale contiene un numero di animali troppo elevato!';
		END IF;
	END $$
DELIMITER ;
        
        