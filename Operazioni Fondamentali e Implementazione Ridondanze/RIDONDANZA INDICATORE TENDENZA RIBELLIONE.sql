DROP PROCEDURE IF EXISTS aggiorna_indice_ribellione;
DELIMITER $$
CREATE PROCEDURE aggiorna_indice_ribellione()
BEGIN
	DECLARE animale VARCHAR(100) DEFAULT ' ';
    DECLARE finito INT DEFAULT 0;
    DECLARE cursoreanimali CURSOR FOR
    SELECT Codice
    FROM Animale;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
    OPEN cursoreanimali;
    scan:LOOP
		FETCH cursoreanimali INTO animale;
        IF(finito=1) THEN
			LEAVE scan;
		END IF;
        UPDATE Animale A
        SET A.IndicatoreTendenzaRibellione=(SELECT COUNT(DISTINCT DATE(PA.Timestamp_))
											FROM Posizione_Animale PA INNER JOIN Zona_Agriturismo ZA ON(PA.Zona=ZA.CodiceZona)
											WHERE PA.Animale=animale AND ZA.TipoZona='Pascolo' AND HOUR(PA.Timestamp_)>=20)/DATEDIFF(CURRENT_DATE, A.DataNascita)
										
        WHERE A.Codice=animale;
        
	END LOOP;
END $$
DELIMITER ;

DROP EVENT IF EXISTS refresh_indicatore_tendenza_ribellione;
DELIMITER $$
CREATE EVENT refresh_indicatore_tendenza_ribellione
ON SCHEDULE EVERY 1 DAY
STARTS '2019-09-19 23:55:00'
DO
	BEGIN
		CALL aggiorna_indice_ribellione;
	END $$
DELIMITER ;