DROP PROCEDURE IF EXISTS inserisci_prodotto_magazzino;
DELIMITER $$
CREATE PROCEDURE inserisci_prodotto_magazzino (IN prodotto VARCHAR(100))
	BEGIN
        DECLARE ultimo_scaffale VARCHAR(100) DEFAULT ' ';
        DECLARE spazio INT DEFAULT 0;
        DECLARE inseriti INT DEFAULT 0;
        
        SELECT COUNT(*) INTO inseriti
        FROM Disponibilita_Prodotto;
        
        IF(inseriti=0) THEN
			SELECT CodiceScaffale INTO ultimo_scaffale
            FROM Scaffale_Magazzino 
            ORDER BY CodiceScaffale
            LIMIT 1;
            
        ELSE
        
        SELECT LAST_VALUE(DP.Scaffale) OVER( ORDER BY DP.TimestampInserimento
											ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) INTO ultimo_scaffale
        FROM Disponibilita_Prodotto DP 
        LIMIT 1;
        
        SELECT SM.SpazioDisponibile INTO spazio
        FROM Scaffale_Magazzino SM
        WHERE SM.CodiceScaffale=ultimo_scaffale;
        
        IF(spazio =0) THEN
			SELECT SM.ScaffaleSuccessivo INTO ultimo_scaffale
            FROM Scaffale_Cantina SM
            WHERE SM.CodiceScaffale=ultimo_scaffale;
		END IF;
        END IF;
        

        
        INSERT INTO Allocazione_Magazzino
        VALUES (prodotto, ultimo_scaffale, CURRENT_TIMESTAMP, NULL);
        
        INSERT INTO Disponibilita_Prodotto 
        VALUES (prodotto, ultimo_scaffale, CURRENT_TIMESTAMP);
        
	END $$
     DELIMITER ;
     delimiter $$
    DROP TRIGGER IF EXISTS aggiorna_ridondanza_scaffale_magazzino1;
    CREATE TRIGGER aggiorna_ridondanza_scaffale_magazzino1
    AFTER INSERT ON Allocazione_Magazzino FOR EACH ROW
		BEGIN
			UPDATE Scaffale_Magazzino
            SET SpazioDisponibile=Spaziodisponibile-1, TimestampUltimoInserimento=CURRENT_TIMESTAMP
            WHERE CodiceScaffale=NEW.Scaffale;
            
		END $$
     delimiter ;
     delimiter $$
	DROP TRIGGER IF EXISTS 	 aggiorna_ridondanza_scaffale_magazzino2;
	CREATE TRIGGER aggiorna_ridondanza_scaffale_magazzino2
    AFTER UPDATE ON Allocazione_Magazzino FOR EACH ROW
		BEGIN
			IF(NEW.TimestampPrelievo IS NOT NULL AND OLD.TimestampPrelievo IS NULL) THEN
				UPDATE Scaffale_Magazzino
				SET SpazioDisponibile=Spaziodisponibile+1, TimestampUltimoPrelievo=CURRENT_TIMESTAMP
				WHERE CodiceScaffale=NEW.Scaffale;
                
                DELETE FROM Disponibilita_Prodotto
                WHERE Scaffale=NEW.Scaffale AND Prodotto=NEW.Prodotto;
			END IF;
		END $$
DELIMITER ;