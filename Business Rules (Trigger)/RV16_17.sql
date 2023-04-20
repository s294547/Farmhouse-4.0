DROP TRIGGER IF EXISTS RV16_17;
DELIMITER $$
CREATE TRIGGER RV16_17
AFTER INSERT ON Disponibilita_Prodotto FOR EACH ROW
	BEGIN
		DECLARE stagionatura VARCHAR(100) DEFAULT 'no';
        DECLARE verifica INT DEFAULT 1;
        
        SELECT F.Stagionatura INTO stagionatura
        FROM Prodotto P INNER JOIN Formaggio F ON(F.Nome=P.Formaggio)
        WHERE P.CodiceProdotto=NEW.Prodotto;
        
        IF (stagionatura<> 'no') THEN
			SELECT DATEDIFF(IF(AC.DataPrelievo IS NULL, CURRENT_DATE, AC.DataPrelievo), AC.DataInserimento) INTO verifica
            FROM Allocazione_Cantina AC
            WHERE AC.Prodotto=NEW.Prodotto;
            
            IF(verifica <> stagionatura) THEN
				SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT= 'Non è possibile inserire un prodotto in magazzino se non è stato stagionato o se non è tascorso il tempo di stagionatura necessario!';
			END IF;
		END IF;
	END $$
DELIMITER ;

