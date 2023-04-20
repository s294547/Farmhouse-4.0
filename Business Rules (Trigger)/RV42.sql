DROP TRIGGER IF EXISTS RV42;
DELIMITER $$
CREATE TRIGGER RV42
AFTER INSERT ON Tappa FOR EACH ROW
	BEGIN
	   DECLARE timestamp_prec TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
        
	   SELECT TimestampPrec INTO timestamp_prec
       FROM(SELECT TimestampArrivo, LAG(TimestampSpostamento, 1) OVER () AS TimestampPrec
            FROM Tappa
            WHERE Escursione=NEW.Escursione) AS D
	   WHERE D.TimestampArrivo=NEW.TimestampArrivo;
	   IF(timestamp_prec IS NOT NULL AND NEW.TimestampArrivo < timestamp_prec) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Non si può aggiungere una tappa se quella precedente non è ancora terminata!!';
		END IF;
	END $$
DELIMITER ;