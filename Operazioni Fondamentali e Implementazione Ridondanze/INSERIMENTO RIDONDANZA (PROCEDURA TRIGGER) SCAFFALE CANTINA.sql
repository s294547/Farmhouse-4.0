DROP PROCEDURE IF EXISTS inserisci_prodotto_cantina;
DELIMITER $$
CREATE PROCEDURE inserisci_prodotto_cantina (IN prodotto VARCHAR(100), IN attimo TIMESTAMP )
	BEGIN
		DECLARE tipo_formaggio VARCHAR(100) DEFAULT ' ';
        DECLARE ultimo_scaffale VARCHAR(100) DEFAULT ' ';
        DECLARE spazio INT DEFAULT 0;
        DECLARE inseriti INT DEFAULT 0;
        
        
        SELECT Formaggio INTO tipo_formaggio
        FROM Prodotto 
        WHERE CodiceProdotto=prodotto;
        
        SELECT COUNT(*) into inseriti
        FROM Cantina C INNER JOIN Scaffale_Cantina SC ON (SC.Cantina=C.CodiceCantina)
		WHERE C.Formaggio=tipo_formaggio AND SC.TimestampUltimoInserimento IS NOT NULL;
        
        IF(inseriti=0) THEN 
			SELECT SC.CodiceScaffale INTO ultimo_scaffale
            FROM Cantina C INNER JOIN Scaffale_Cantina SC ON (SC.Cantina=C.CodiceCantina)
			WHERE C.Formaggio=tipo_formaggio 
            ORDER BY SC.CodiceScaffale
            LIMIT 1;
		ELSE
        
        
        SELECT LAST_VALUE(SC.CodiceScaffale) OVER( ORDER BY SC.TimestampUltimoInserimento
													ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) INTO ultimo_scaffale
        FROM Cantina C INNER JOIN Scaffale_Cantina SC ON (SC.Cantina=C.CodiceCantina)
		WHERE C.Formaggio=tipo_formaggio AND SC.TimestampUltimoInserimento IS NOT NULL
        LIMIT 1;
        
        
        
        SELECT SC.SpazioDisponibile INTO spazio
        FROM Scaffale_Cantina SC
        WHERE SC.CodiceScaffale=ultimo_scaffale;
        
			IF(spazio =0) THEN
				SELECT SC.ScaffaleSuccessivo INTO ultimo_scaffale
				FROM Scaffale_Cantina SC
				WHERE SC.CodiceScaffale=ultimo_scaffale;
			END IF;
		END IF;
         
		
        
        INSERT INTO Allocazione_Cantina
        VALUES (ultimo_scaffale, prodotto, attimo, NULL);
	END $$
 
 DELIMITER ;
DROP TRIGGER IF EXISTS aggiorna_ridondanza_scaffale_cantina1;
DELIMITER $$
    
    CREATE TRIGGER aggiorna_ridondanza_scaffale_cantina1
    AFTER INSERT ON Allocazione_Cantina FOR EACH ROW
		BEGIN
			UPDATE Scaffale_Cantina
            SET SpazioDisponibile=Spaziodisponibile-1, TimestampUltimoInserimento=CURRENT_TIMESTAMP
            WHERE CodiceScaffale=NEW.Scaffale;
		END $$
DELIMITER ;
DROP TRIGGER IF EXISTS aggiorna_ridondanza_scaffale_cantina2;
DELIMITER $$
	CREATE TRIGGER aggiorna_ridondanza_scaffale_cantina2
    AFTER UPDATE ON Allocazione_Cantina FOR EACH ROW
		BEGIN
			IF(NEW.TimestampPrelievo IS NOT NULL AND OLD.TimestampPrelievo IS NULL) THEN
				UPDATE Scaffale_Cantina
				SET SpazioDisponibile=Spaziodisponibile+1, TimestampUltimoPrelievo=CURRENT_TIMESTAMP
				WHERE CodiceScaffale=NEW.Scaffale;
			END IF;
		END $$
DELIMITER ;
    
DROP EVENT IF EXISTS termine_stagionatura;
DELIMITER $$
CREATE EVENT termine_stagionatura
ON SCHEDULE EVERY 15 second
STARTS '2019-09-13 9:41:00'
	DO
		BEGIN
			DECLARE finito INT DEFAULT 0;
            DECLARE prodotto VARCHAR(100) DEFAULT ' ';
			DECLARE cursoreprodotti CURSOR FOR
				SELECT AC.Prodotto
                FROM Allocazione_Cantina AC
                WHERE AC.TimestampPrelievo IS NULL and DATEDIFF(CURRENT_TIMESTAMP, AC.TimestampInserimento)>=(SELECT F.Stagionatura
																										 FROM Formaggio F INNER JOIN Prodotto P
																											  ON (P.Formaggio=F.Nome)
																										 WHERE P.CodiceProdotto=AC.Prodotto);
			DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
            
            OPEN cursoreprodotti;
            
            scan:LOOP
				IF finito=1 THEN
					LEAVE scan;
				END IF;
                
                FETCH cursoreprodotti INTO prodotto;
                UPDATE Allocazione_Cantina
                SET TimestampPrelievo=CURRENT_TIMESTAMP
                WHERE Prodotto=prodotto;
				CALL inserisci_prodotto_magazzino(prodotto);
			END LOOP scan;
            CLOSE cursoreprodotti;
		END $$
DELIMITER ;
				
        
        

        