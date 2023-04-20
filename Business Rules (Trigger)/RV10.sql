DROP TRIGGER IF EXISTS RV10;
DELIMITER $$
-- prima è inserita la visita, poi la rilevazione della patologia 
CREATE TRIGGER RV10
AFTER INSERT ON Rilevazione_Patologie FOR EACH ROW
	BEGIN
		DECLARE animale_patologia VARCHAR(100) DEFAULT ' ';
        DECLARE animale_visitato VARCHAR(100) DEFAULT ' ';
        DECLARE primo_veterinario VARCHAR(100) DEFAULT ' ';
        DECLARE veterinario_visita VARCHAR(100) DEFAULT ' ';
        DECLARE tot_rilevazioni INT DEFAULT 0;
        
		
			SELECT Animale INTO animale_patologia
            FROM Patologie_Rilevate
            WHERE CodiceRilevazionePatologia=NEW.CodiceRilevazionePatologia;
            
            SELECT Animale INTO animale_visitato
            FROM Visita
            WHERE CodiceVisita=NEW.CodiceVisita;
            
            IF animale_visitato<>animale_patologia THEN
				SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT= 'L''''animale visitato è diverso da quello per cui è rilevata la patologia!';
            END IF;
            
            SELECT COUNT(*) INTO tot_rilevazioni
            FROM Rilevazione_Patologie
            WHERE CodiceRilevazionePatologia=NEW.CodiceRilevazionePatologia;
            
            IF( tot_rilevazioni=1) THEN
				SELECT Veterinario INTO primo_veterinario
                FROM Patologie_Rilevate
				WHERE CodiceRilevazionePatologia=NEW.CodiceRilevazionePatologia;
				
                SELECT Veterinario INTO veterinario_visita
				FROM Visita
				WHERE CodiceVisita=NEW.CodiceVisita;
                
				IF primo_veterunario<>veterinario_visita THEN
					SIGNAL SQLSTATE '45000'
					SET MESSAGE_TEXT= 'Il veterinario della visita della prima rilevazione è diverso dal veterinario della rilevazione';
				END IF;
			END IF;
            
		
	END $$
DELIMITER ;