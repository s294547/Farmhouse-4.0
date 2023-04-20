-- inserimento del latte nel silos con aggiornament della ridondanza 
DROP TRIGGER IF EXISTS Inserisci_Latte_Silos;
DELIMITER $$
CREATE TRIGGER Inserisci_Latte_Silos 
AFTER INSERT ON Dati_Latte_Munto FOR EACH ROW
	BEGIN
		 -- Cerco un silos con abbastanza spazio disponibile, se non c'è ne prendo più di uno.
         DECLARE silos_possibile VARCHAR(100) DEFAULT ' ';
         DECLARE tipo_latte VARCHAR(100) DEFAULT ' ';
         DECLARE finito INT DEFAULT 0;
         DECLARE silos VARCHAR(100) DEFAULT ' ';
         DECLARE latte_mancante INT DEFAULT 0;
         DECLARE spazio_silos INT DEFAULT 0;
         
         DECLARE cursoresilos CURSOR FOR
         SELECT Codice
         FROM Silos
		 WHERE TipoLatteContenuto=(SELECT Specie 
								   FROM Animale
                                   WHERE Codice=NEW.Animale) AND Capacita>LivelloRiempimento;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
        SET latte_mancante=NEW.VolumeLatte;
         
         SELECT Specie INTO tipo_latte
         FROM Animale
         WHERE Codice=NEW.Animale;
         
         SELECT Codice INTO silos_possibile
         FROM Silos
         WHERE 	TipoLatteContenuto=tipo_latte AND Capacita-LivelloRiempimento >= NEW.VolumeLatte
         LIMIT 1;
         
         IF(silos_possibile IS NOT NULL) THEN
			INSERT INTO Travaso
            VALUES (NEW.Animale, NEW.Timestamp_, silos_possibile, NEW.VolumeLatte);
		ELSE 
			OPEN cursoresilos;
             scan:LOOP
				IF(finito=1) THEN 
					LEAVE scan;
				END IF;
                
				FETCH cursoresilos INTO silos;
                SELECT Capacita-LivelloRiempimento INTO spazio_silos
                FROM Silos
                WHERE Codice=silos;
                
                IF(spazio_silos >=latte_mancante) THEN
					INSERT INTO Travaso
                    VALUES (NEW.Animale, NEW.Timestamp_, silos, latte_mancante);
					LEAVE scan;
				ELSE
					INSERT INTO Travaso
                    VALUES (NEW.Animale, NEW.Timestamp_, silos, spazio_silos);
                    
                    SET latte_mancante=latte_mancante-spazio_silos;
				END IF;
			 END LOOP;
			END IF;
            CLOSE cursoresilos;
	END $$
DELIMITER ;

DROP TRIGGER IF EXISTS Estrai_Latte_Silos;
DELIMITER $$
CREATE TRIGGER Estrai_Latte_Silos 
AFTER INSERT ON Prodotto FOR EACH ROW
	BEGIN
		 -- Cerco un silos con abbastanza latte disponibile, se non c'è ne prendo più di uno.
         DECLARE silos_possibile VARCHAR(100) DEFAULT ' ';
         DECLARE tipo_latte VARCHAR(100) DEFAULT ' ';
         DECLARE finito INT DEFAULT 0;
         DECLARE silos VARCHAR(100) DEFAULT ' ';
         DECLARE latte_mancante INT DEFAULT 0;
         DECLARE latte_disponibile INT DEFAULT 0;
         
         DECLARE cursoresilos CURSOR FOR
         SELECT S.Codice
         FROM Silos S
		 WHERE S.TipoLatteContenuto=(SELECT F.Specie 
									 FROM Formaggio F 
									 WHERE F.Nome=NEW.Formaggio) AND S.LivelloRiempimento>0;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
        SET latte_mancante=(SELECT QuantitaLattePerPezzo
						    FROM Formaggio
                            WHERE Nome=NEW.Formaggio);
         
         SELECT Specie INTO tipo_latte
         FROM Formaggio 
		 WHERE Nome=NEW.Formaggio;
         
         SELECT Codice INTO silos_possibile
         FROM Silos
         WHERE 	TipoLatteContenuto=tipo_latte AND LivelloRiempimento >= latte_mancante
         LIMIT 1;
         
         IF(silos_possibile IS NOT NULL) THEN
			INSERT INTO Estrazione_Latte
            VALUES (silos_possibile, NEW.CodiceProdotto, latte_mancante);
		ELSE 
			OPEN cursoresilos;
             scan:LOOP
				IF(finito=1) THEN 
					LEAVE scan;
				END IF;
                
				FETCH cursoresilos INTO silos;
                SELECT LivelloRiempimento INTO latte_disponibile
                FROM Silos
                WHERE Codice=silos;
                
                IF(latte_disponibile >=latte_mancante) THEN
					INSERT INTO Estrazione_Latte
                    VALUES (silos_possibile, NEW.CodiceProdotto, latte_mancante);
					LEAVE scan;
				ELSE
					INSERT INTO Estrazione_Latte
                    VALUES (silos_possibile, NEW.CodiceProdotto, latte_disponibile);
                    
                    SET latte_mancante=latte_mancante-latte_disponibile;
				END IF;
			 END LOOP;
			END IF;
            CLOSE cursoresilos;
	END $$
DELIMITER ;

DROP TRIGGER IF EXISTS aggiorna_ridondanza_silos_inserimento;
DELIMITER $$
CREATE TRIGGER aggiorna_ridondanza_silos_inserimento 
AFTER INSERT ON Travaso FOR EACH ROW
BEGIN 
	DECLARE tipo_latte VARCHAR(100) DEFAULT ' ';
    SELECT Specie INTO tipo_latte
    FROM Animale
    WHERE Codice=NEW.Animale;
    
	UPDATE Silos
    SET	TipoLatteContenuto=tipo_latte, LivelloRiempimento=LivelloRiempimento+NEW.Quantita
    WHERE Codice=NEW.Silos;
END $$
DELIMITER ;


DROP TRIGGER IF EXISTS aggiorna_ridondanza_silos_estrazione;
DELIMITER $$
CREATE TRIGGER aggiorna_ridondanza_silos_estrazione
AFTER INSERT ON Estrazione_Latte FOR EACH ROW
BEGIN 
	UPDATE Silos
    SET	LivelloRiempimento=LivelloRiempimento-NEW.QuantitaLatte
    WHERE Codice=NEW.Silos;
END $$
DELIMITER ;

            