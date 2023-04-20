DROP TRIGGER IF EXISTS RV13;
DELIMITER $$
CREATE TRIGGER RV13
AFTER INSERT ON Travaso FOR EACH ROW
	BEGIN
		DECLARE livello_riempimento INT DEFAULT 0;
        DECLARE capacita VARCHAR(100) DEFAULT ' ';
        
        SELECT LivelloRiempimento, Capacita INTO livello_riempimento, capacita
        FROM Silos
        WHERE NEW.Silos=Codice;
        
        IF (livello_riempimento + NEW.Quantita > capacita OR livello_riempimento>capacita) THEN -- si suppone che la modifica di capacita e livello riempimento sia fatta solo dopo l'inserimento in travaso)
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT='Non è possibile inserire altro latte nel Silos poichè risulta essere pieno!';
		END IF;
	END $$
DELIMITER ;
        