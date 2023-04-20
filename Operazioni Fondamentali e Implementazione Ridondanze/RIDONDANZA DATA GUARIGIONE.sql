-- PER CONTROLLARE SE UNA PATOLOGIA E' GUARITA, SI VERIFICA CHE NON VI SIANO RILEVAZIONI DI TALE PATOLOGIA NELLA DIAGNOSI.
-- E' NECESSARIO DUNQUE INSERIRE PRIMA LA RILEVAZIONE DELLA PATOLOGIA DELLA DIAGNOSI IN FASE DI IMPLEMENTAZIONE DEL CODICE!!
DROP TRIGGER IF EXISTS controlla_diagnosi;
DELIMITER $$
CREATE TRIGGER controlla_diagnosi
AFTER INSERT ON Diagnosi FOR EACH ROW
  BEGIN
    DECLARE finito INT DEFAULT 0;
    DECLARE patologia VARCHAR(100) DEFAULT ' ';
    DECLARE animale VARCHAR(100) DEFAULT ' ';
    DECLARE patologia_rilevata INT DEFAULT 0;
	DECLARE cursorepatologie CURSOR FOR
    SELECT PR.Patologia
    FROM Patologie_Rilevate PR
    WHERE PR.DataGuarigione IS NULL AND PR.Animale=(SELECT V.Animale
													FROM Visita V
                                                    WHERE V.CodiceVisita=NEW.CodiceVisita);
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
    
    SELECT V.Animale INTO animale
    FROM Visita V
    WHERE V.CodiceVisita=NEW.CodiceVisita;
    
    OPEN cursorepatologie;
    scan:LOOP
		IF(finito=1) THEN
			LEAVE scan;
		END IF;
        
        FETCH cursorepatologie INTO patologia;
        SELECT COUNT(*) INTO patologia_rilevata
        FROM Rilevazione_Patologie RP NATURAL JOIN Patologie_Rilevate PR 
        WHERE PR.Patologia=patologia AND PR.DataGuarigione IS NULL AND RP.CodiceVisita=NEW.CodiceVisita;
        
        IF(patologia_rilevata =0) THEN
			UPDATE patologie_rilevate PR
            SET PR.DataGuarigione=CURRENT_DATE
            WHERE PR.Patologia=patologia AND PR.Animale=animale AND PR.DataGuarigione IS NULL;
		END IF;
	END LOOP;
 END $$
DELIMITER ;
        
        