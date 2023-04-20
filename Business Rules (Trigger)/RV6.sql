DROP TRIGGER IF EXISTS RV6;
DELIMITER $$
-- prima è inserita la visita, poi viene aggiornato l'attributo visita di intevento programmato.
CREATE TRIGGER RV6
AFTER UPDATE ON Intervento_Programmato FOR EACH ROW
	BEGIN
		DECLARE animale_gestante VARCHAR(100) DEFAULT ' ';
        DECLARE animale_visitato VARCHAR(100) DEFAULT ' ';
		IF(NEW.CodiceVisita IS NOT NULL AND OLD.CodiceVisita IS NULL) THEN
			SELECT T.Madre INTO animale_gestante
            FROM Intervento_Programmato IP INNER JOIN Tentativo T ON(IP.CodiceGestazione=T.CodiceTentativo)
            WHERE IP.CodiceIntervento=NEW.CodiceIntervento;
            
            SELECT Animale INTO animale_visitato
            FROM Visita
            WHERE CodiceVisita=NEW.CodiceVisita;
            
            IF animale_visitato<>animale_gestante THEN
				SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT= 'L''''animale visitato è diverso da quello gestante';
            END IF;
		END IF;
	END $$
DELIMITER ;