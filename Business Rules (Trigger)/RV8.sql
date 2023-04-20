DROP TRIGGER IF EXISTS RV8;
DELIMITER $$
-- si verifica che tutti gli indicatori richiesti siano inseriti
CREATE TRIGGER RV8
AFTER UPDATE ON Indicatori_Soggettivi FOR EACH ROW
	BEGIN	
		DECLARE interruzione VARCHAR(100) DEFAULT 'si';
        
        SELECT InterruzioneGravidanza INTO interruzione
        FROM Visita
        WHERE CodiceVisita=NEW.CodiceVisita;
        
        IF(interruzione='si' AND (NEW.LivelloVigilanza IS NULL OR NEW.LivelloDeambulazione IS NULL OR
								  NEW.LucentezzaPelo IS NULL OR NEW.TipoRespirazione IS NULL OR 
								  NEW.LivelloIdratazione IS NULL)) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Mancano delle rilevazioni per la visita relativa alla fine della gravidanza!';
		END IF;
	END $$
DELIMITER ;