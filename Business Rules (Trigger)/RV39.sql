DROP TRIGGER IF EXISTS RV39;

DELIMITER $$
CREATE TRIGGER RV39
AFTER INSERT ON Foraggio FOR EACH ROW
	BEGIN
		IF (NEW.Conservazione<>'Fieno' AND NEW.Conservazione<>'Nessuno') THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Il tipo di conservazione del foraggio inserito non esiste!';
		END IF;
    END $$
DELIMITER ;