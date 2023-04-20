-- materialized view che mostra le zone preferite dagli animali e gli animali con cui hanno trascorso più tempo
-- in assoluto, nell'ultimo mese e nell'ultima settimana
-- l'aggiornamento sarà on-demand
DROP TABLE IF EXISTS MV_PASCOLO;
CREATE TABLE MV_PASCOLO(
	Animale VARCHAR(100) NOT NULL,
    ZonaPiuVisitata VARCHAR(250),
    ZonaPiuVisitataMese VARCHAR(250),
    ZonaPiuVisitataSettimana VARCHAR(250),
    AnimalePreferito VARCHAR(250),
    AnimalePreferitoMese VARCHAR(250),
    AnimalePreferitoSettimana VARCHAR(250),
	PRIMARY KEY(Animale)
);


-- per ogni animale e zona visitata individua il numero di rilevazioni in tale zona
CREATE OR REPLACE VIEW VisitePerZonaAssolute AS
SELECT DISTINCT PA.Animale, PA.Zona, COUNT(*) OVER (PARTITION BY PA.Animale, PA.Zona) AS TotaleVisite
FROM Posizione_Animale PA;

-- per ogni animale e zona visitata individua il numero di rilevazioni in tale zona dell'ultimo mese
CREATE OR REPLACE VIEW VisitePerZonaMensili AS
SELECT DISTINCT PA.Animale, PA.Zona, COUNT(*) OVER (PARTITION BY PA.Animale, PA.Zona) AS TotaleVisite
FROM Posizione_Animale PA
WHERE PA.Timestamp_>=CURRENT_TIMESTAMP -INTERVAL 1 MONTH;

-- per ogni animale e zona visitata individua il numero di rilevazioni in tale zona nell'ultima settimana
CREATE OR REPLACE VIEW VisitePerZonaSettimanali AS
SELECT DISTINCT PA.Animale, PA.Zona, COUNT(*) OVER (PARTITION BY PA.Animale, PA.Zona) AS TotaleVisite
FROM Posizione_Animale PA
WHERE PA.Timestamp_>=CURRENT_TIMESTAMP -INTERVAL 1 WEEK;

-- trova le zone in cui l'animale target trascorre più tempo in assoluto, nell'ultimo mese e nell'ultima settimana	

DROP FUNCTION IF EXISTS trova_zona_preferita;
DELIMITER $$
CREATE FUNCTION trova_zona_preferita(animale VARCHAR(250))
RETURNS VARCHAR(250) READS SQL DATA NOT DETERMINISTIC 
BEGIN 
	DECLARE preferita VARCHAR(250) DEFAULT ' ';
    SELECT GROUP_CONCAT(VPZ.Zona) INTO preferita
		FROM VisitePerZonaAssolute VPZ INNER JOIN Zona_Agriturismo ZA ON(VPZ.Zona=ZA.CodiceZona)
		WHERE VPZ.Animale=animale AND  ZA.TipoZona='Pascolo' AND
			  VPZ.TotaleVisite>=ALL (SELECT VPZ1.TotaleVisite
									 FROM VisitePerZonaAssolute VPZ1
									 WHERE VPZ1.Animale=VPZ.Animale)
	ORDER BY VPZ.TotaleVisite DESC
    LIMIT 1;
    RETURN preferita;
END $$

DELIMITER ;

DROP FUNCTION IF EXISTS trova_zona_preferita_mese;
DELIMITER $$
CREATE FUNCTION trova_zona_preferita_mese(animale VARCHAR(250))
RETURNS VARCHAR(250) READS SQL DATA NOT DETERMINISTIC 
BEGIN 
	DECLARE preferita_mese VARCHAR(250) DEFAULT ' ';
    SELECT GROUP_CONCAT(VPZ.Zona) INTO preferita_mese
		FROM VisitePerZonaMensili VPZ INNER JOIN Zona_Agriturismo ZA ON(VPZ.Zona=ZA.CodiceZona)
		WHERE VPZ.Animale=animale AND ZA.TipoZona='Pascolo' AND
			  VPZ.TotaleVisite>=ALL (SELECT VPZ1.TotaleVisite
									 FROM VisitePerZonaMensili VPZ1
									 WHERE VPZ1.Animale=VPZ.Animale)
		ORDER BY VPZ.TotaleVisite DESC
        LIMIT 1;
        RETURN preferita_mese;
END $$

DELIMITER ;

DROP FUNCTION IF EXISTS trova_zona_preferita_settimana;
DELIMITER $$
CREATE FUNCTION trova_zona_preferita_settimana(animale VARCHAR(250))
RETURNS VARCHAR(250) READS SQL DATA NOT DETERMINISTIC 
BEGIN 
		DECLARE preferita_settimana VARCHAR(250) DEFAULT ' ';
		SELECT GROUP_CONCAT(VPZ.Zona) INTO preferita_settimana
		FROM VisitePerZonaSettimanali VPZ INNER JOIN Zona_Agriturismo ZA ON(VPZ.Zona=ZA.CodiceZona)
		WHERE VPZ.Animale=animale AND ZA.TipoZona='Pascolo' AND
			  VPZ.TotaleVisite>ALL (SELECT VPZ1.TotaleVisite
									 FROM VisitePerZonaSettimanali VPZ1
									 WHERE VPZ1.Animale=VPZ.Animale)
		ORDER BY VPZ.TotaleVisite DESC
        LIMIT 1;
        RETURN preferita_settimana;
END $$

DELIMITER ;

DROP FUNCTION IF EXISTS trova_animale_preferito;
DELIMITER $$
CREATE FUNCTION trova_animale_preferito(animale VARCHAR(250))
RETURNS VARCHAR(250) READS SQL DATA NOT DETERMINISTIC 
BEGIN
	DECLARE preferito VARCHAR(100) DEFAULT ' ';
		   SELECT D.Animale INTO preferito
		   FROM(SELECT PA2.Animale, AVG(ABS(PA1.Latitudine-PA2.Latitudine)) AS DifferenzaLatitudine,
						AVG(ABS(PA1.Longitudine-PA2.Longitudine)) AS DifferenzaLongitudine
				FROM Posizione_Animale PA1 INNER JOIN Posizione_Animale PA2 ON(PA1.Timestamp_=PA2.Timestamp_)
				WHERE PA1.Animale=animale AND PA2.Animale<>animale
				GROUP BY PA2.Animale) AS D
		   ORDER BY D.DifferenzaLatitudine, D.DifferenzaLongitudine
		   LIMIT 1;
           
		RETURN preferito;
END $$
DELIMITER ;

DROP FUNCTION IF EXISTS trova_animale_preferito_mese;
DELIMITER $$
CREATE FUNCTION trova_animale_preferito_mese(animale VARCHAR(250))
RETURNS VARCHAR(250) READS SQL DATA NOT DETERMINISTIC 
BEGIN
	DECLARE preferito_mese VARCHAR(100) DEFAULT ' ';
		   SELECT D.Animale INTO preferito_mese
		   FROM(SELECT PA2.Animale, AVG(ABS(PA1.Latitudine-PA2.Latitudine)) AS DifferenzaLatitudine,
						AVG(ABS(PA1.Longitudine-PA2.Longitudine)) AS DifferenzaLongitudine
				FROM Posizione_Animale PA1 INNER JOIN Posizione_Animale PA2 ON(PA1.Timestamp_=PA2.Timestamp_)
				WHERE PA1.Animale=animale AND PA2.Animale<>animale AND PA1.Timestamp_>=CURRENT_TIMESTAMP -INTERVAL 1 MONTH
				GROUP BY PA2.Animale) AS D
			ORDER BY D.DifferenzaLatitudine, D.DifferenzaLongitudine
			LIMIT 1;
           
		RETURN preferito_mese;
END $$
DELIMITER ;

DROP FUNCTION IF EXISTS trova_animale_preferito_settimana;
DELIMITER $$
CREATE FUNCTION trova_animale_preferito_settimana(animale VARCHAR(250))
RETURNS VARCHAR(250) READS SQL DATA NOT DETERMINISTIC 
BEGIN
	DECLARE preferito_settimana VARCHAR(100) DEFAULT ' ';
		   SELECT D.Animale INTO preferito_settimana
		   FROM(SELECT PA2.Animale, AVG(ABS(PA1.Latitudine-PA2.Latitudine)) AS DifferenzaLatitudine,
						AVG(ABS(PA1.Longitudine-PA2.Longitudine)) AS DifferenzaLongitudine
				FROM Posizione_Animale PA1 INNER JOIN Posizione_Animale PA2 ON(PA1.Timestamp_=PA2.Timestamp_)
				WHERE PA1.Animale=animale AND PA2.Animale<>animale AND PA1.Timestamp_>=CURRENT_TIMESTAMP -INTERVAL 1 WEEK
				GROUP BY PA2.Animale) AS D
			ORDER BY D.DifferenzaLatitudine, D.DifferenzaLongitudine
			LIMIT 1;
           
		RETURN preferito_settimana;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS OnDemandRefresh_MVPASCOLO;
DELIMITER $$
CREATE PROCEDURE OnDemandRefresh_MVPASCOLO ()
	BEGIN
		DECLARE finito INT DEFAULT 0;
        DECLARE animale VARCHAR(100) DEFAULT ' ';
        DECLARE cursoreanimali CURSOR FOR
        SELECT DISTINCT PA.Animale
        FROM Posizione_Animale PA;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
        TRUNCATE TABLE MV_PASCOLO;
         OPEN cursoreanimali;
        scan:LOOP
			 FETCH cursoreanimali INTO animale;
            
            IF(finito=1) THEN
				LEAVE scan;
			END IF;
           

            
            INSERT INTO MV_PASCOLO
            VALUES (animale, trova_zona_preferita(animale), trova_zona_preferita_mese(animale), trova_zona_preferita_settimana(animale), 
					trova_animale_preferito(animale), trova_animale_preferito_mese(animale), trova_animale_preferito_settimana(animale));
		END LOOP;
        CLOSE cursoreanimali;
        
	END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS mostra_zone_piu_visitate;
DELIMITER $$
CREATE PROCEDURE mostra_zone_piu_visitate (IN _data DATE, IN _K INT)
	BEGIN
		DECLARE finito INT default 0;
        DECLARE animale VARCHAR(100) DEFAULT ' ';
        DECLARE zone TEXT DEFAULT ' ';
		DECLARE cursoreanimali CURSOR FOR
		SELECT DISTINCT PA.Animale
        FROM Posizione_Animale PA;
        
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
		CREATE TEMPORARY TABLE ZonePiuVisitate(
			Animale VARCHAR(100) NOT NULL,
            Zone TEXT,
            PRIMARY KEY(Animale)
        );
		
        OPEN cursoreanimali;
        scan:LOOP
            
            FETCH cursoreanimali INTO animale;
            IF(finito=1) THEN
				LEAVE scan;
			END IF;
            SELECT GROUP_CONCAT(D.Zona) INTO zone
			FROM(SELECT DISTINCT PA.Zona, COUNT(*) OVER (PARTITION BY PA.Animale, PA.Zona) AS TotaleVisite
				 FROM Posizione_Animale PA
				 WHERE DATE(PA.Timestamp_)>=_data AND PA.Animale=animale
				 ORDER BY TotaleVisite DESC
				 LIMIT _K) AS D;
			INSERT INTO ZonePiuVisitate
            VALUES(animale, zone);
            
		END LOOP;
        CLOSE cursoreanimali;
        
        SELECT *
        FROM ZonePiuVisitate;
	END $$
DELIMITER ;