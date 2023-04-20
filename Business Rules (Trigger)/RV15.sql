DROP TRIGGER IF EXISTS RV15;
DELIMITER $$
-- verifico che i nomi dei parametri reali salvati corrispondano ai nomi dei parametri ideali
CREATE TRIGGER RV15
AFTER INSERT ON Parametro_Reale FOR EACH ROW
	BEGIN
        DECLARE verifica INT DEFAULT 0;
        
        SELECT COUNT(*) INTO verifica
        FROM Parametro_Reale PR INNER JOIN Fasi_Produzione FP ON (PR.Fase=FP.CodiceFase) INNER JOIN Prodotto P 
			 ON (P.CodiceProdotto=FP.Prodotto) 
		WHERE EXISTS (SELECT *
					  FROM  Fase F INNER JOIN Parametro P ON(F.CodiceFase=P.Fase)
                      WHERE F.Formaggio=P.Formaggio AND P.NomeParametro=NEW.NomeParametro AND F.NumeroFase=FP.NumeroFase)
                      AND PR.NomeParametro=NEW.NomeParametro AND PR.Fase=NEW.Fase;
                      
		IF (verifica = 0) THEN 
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Il parametro inserito non fa parte dei parametri ideali della ricetta!';
		END IF;
	END $$
DELIMITER ;