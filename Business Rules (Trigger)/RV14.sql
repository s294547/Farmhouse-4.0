DROP TRIGGER IF EXISTS RV14;
DELIMITER $$
CREATE TRIGGER RV14
AFTER INSERT ON Estrazione_Latte FOR EACH ROW
	BEGIN
		DECLARE specie_formaggio VARCHAR(100) DEFAULT ' ';
        DECLARE tipo_silos VARCHAR(100) DEFAULT ' ';
        
        SELECT S.TipoLatteContenuto INTO tipo_silos
        FROM Silos S
        WHERE S.Codice=NEW.Silos;
        
        SELECT F.Specie INTO specie_formaggio
        FROM Prodotto P INNER JOIN Formaggio F ON (F.Nome=P.Formaggio)
        WHERE P.CodiceProdotto=NEW.Prodotto;
        
        IF(tipo_silos <>specie_formaggio) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Per creare questo formaggio è necessario estrarre un tipo di latte idoneo!';
		END IF;
	END $$
DELIMITER ;
            
        
        