-- Il latte ha composizione simile se proviene dallo stesso animale
-- per controllare che il latte inserito abbia stessa composizione, ogni inserimento si verifica che il latte precedente provenga dallo stesso animale
-- o che il silos sia vuoto
DROP TRIGGER IF EXISTS RV12;
DELIMITER $$

CREATE TRIGGER RV12
AFTER INSERT ON Travaso FOR EACH ROW
	BEGIN
		DECLARE specie_mungitura VARCHAR(100) DEFAULT ' ';
        DECLARE livello_riempimento INT DEFAULT 0;
        DECLARE specie_prec VARCHAR(100) DEFAULT ' ';
        
        SELECT LivelloRiempimento INTO livello_riempimento
        FROM Silos
        WHERE NEW.Silos=Codice;
        
        IF(livello_riempimento > 0) THEN
			SELECT A.Specie, LAG(T.Specie, 1) OVER () INTO specie_mungitura, specie_prec
            FROM Travaso T INNER JOIN Animale A ON(A.Codice=T.Animale) 
            WHERE T.Silos=NEW.Silos;
			IF( specie_mungitura <> specie_prec) THEN
				SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT= 'La composizione del latte da inserire è diversa dalla composizione del latte presente nel Silos!';
			END IF;
		END IF;
	END $$
DELIMITER ;