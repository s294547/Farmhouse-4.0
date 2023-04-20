-- Si è supposto che gli animali mangino 6 volte al giorno. Gli orari di distribuzione del cibo sono dunque 
-- 7:00, 10:00, 13:00, 16:00, 19:00, 22:00
-- Per controllare che il cibo non resti immangiato devo guardare alle ore : 9:30, 12:30, 15:30, 18:30, 21:30, 00:30
-- FARE EVENT CHE AGGIUNGE AUTOMATICAMENTE CIBO NELLA CIOTOLA O CHE NON NE AGGIUNGE SE E' RIMASTO IMMANGIATO

DROP EVENT IF EXISTS controlla_animali_cibo_immangiato;
DELIMITER $$
CREATE EVENT controlla_animali_cibo_immangiato
ON SCHEDULE EVERY 3 HOUR
	DO
		BEGIN
			DECLARE mangiatoia VARCHAR(100) DEFAULT ' ';
            DECLARE animale VARCHAR(100) DEFAULT ' ';
            DECLARE finito INT DEFAULT 0;
			DECLARE cursoremangiatoie CURSOR FOR
			SELECT DISTINCT DC.Mangiatoia 
            FROM Contenuto_Mangiatoia_Recente CMR NATURAL JOIN  Dati_Cibo DC
            WHERE DC.QuantitaForaggio= ALL( SELECT DC1.QuantitaForaggio
											FROM Contenuto_Mangiatoia_Recente CMR1 NATURAL JOIN  Dati_Cibo DC1
                                            WHERE CMR1.Mangiatoia=CMR.Mangiatoia)
				  AND DC.Foraggio = ALL   ( SELECT DC1.Foraggio
											FROM Contenuto_Mangiatoia_Recente CMR1 NATURAL JOIN  Dati_Cibo DC1
                                            WHERE CMR1.Mangiatoia=CMR.Mangiatoia);
			DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
            
			
            OPEN cursoremangiatoie;
            scan:LOOP
				IF(finito=1) THEN
					LEAVE scan;
				END IF;
                
                FETCH cursoremangiatoie INTO mangiatoia;
                SELECT Codice 
                FROM Animale
                WHERE Mangiatoia=mangiatoia;
			END LOOP;
            
            TRUNCATE Contenuto_Mangiatoia_Recente;
		END $$
	DELIMITER ;
    
    DROP TRIGGER IF EXISTS aggiorna_contenuto_mangiatoia_recente;
    DELIMITER $$
    CREATE TRIGGER aggiorna_contenuto_mangiatoia_recente
    AFTER INSERT ON Dati_Cibo FOR EACH ROW
		BEGIN
			INSERT INTO Contenuto_Mangiatoia_Recente
            VALUES(NEW.Mangiatoia, NEW.Timestamp_);
		END $$
	DELIMITER ;
        
                
            
            