DROP TRIGGER IF EXISTS RV43;
DELIMITER $$
CREATE TRIGGER RV43
AFTER INSERT ON Allocazione_Cantina FOR EACH ROW
	BEGIN 
		DECLARE tipo_cantina VARCHAR(100) DEFAULT ' ';
        DECLARE tipo_prodotto VARCHAR(100) DEFAULT ' ';
        
        SELECT C.Formaggio INTO tipo_cantina
        FROM Scaffale_Cantina SC INNER JOIN Cantina C ON (SC.Cantina=C.CodiceCantina)
        WHERE SC.CodiceScaffale=NEW.Scaffale;
        
        SELECT Formaggio INTO tipo_prodotto
        FROM Prodotto
        WHERE CodiceProdotto=NEW.Prodotto;
        
		IF(tipo_prodotto <> tipo_cantina) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Non posso inserire un formaggio in una cantina ospitante formaggi diversi!';
		END IF;
	END $$
DELIMITER ;