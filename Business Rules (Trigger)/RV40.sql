DROP TRIGGER IF EXISTS RV40;
DELIMITER $$
CREATE TRIGGER RV40
AFTER INSERT ON Patologie_Rilevate FOR EACH ROW
	BEGIN
		DECLARE gia_in_corso INT DEFAULT 0;
        
        SELECT COUNT(*) INTO gia_in_corso
        FROM Patologie_Rilevate PR
        WHERE PR.Animale=NEW.Animale AND PR.DataEsordio < NEW.DataEsordio AND PR.DataGuarigione IS NULL;
        
        IF (gia_in_corso>0) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Patologia già in corso!';
		END IF;
        
	END $$
DELIMITER ;

        