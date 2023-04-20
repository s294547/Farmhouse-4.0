DROP TRIGGER IF EXISTS RV44;

DELIMITER $$
CREATE TRIGGER RV44
AFTER INSERT ON Parametri_Recensione FOR EACH ROW
	BEGIN
		IF ((NEW.Gusto>5 OR NEW.Gusto<0) OR (NEW.Qualita>5 OR NEW.Qualita<0) OR (NEW.Conservazione>5 OR NEW.Conservazione<0)
			OR (NEW.Gradimento>5 OR NEW.Gradimento<0)) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Il punteggio inserito non è corretto';
		END IF;
    END $$
DELIMITER ;