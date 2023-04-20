DROP TRIGGER IF EXISTS RV36_2;
DELIMITER $$
CREATE TRIGGER RV36_2
AFTER UPDATE ON Spedizione FOR EACH ROW
	BEGIN 
        
        IF((NEW.StatoSpedizione= 'In Transito' AND OLD.StatoSpedizione <> 'Spedita') OR
		  (NEW.StatoSpedizione= 'In Consegna' AND OLD.StatoSpedizione <> 'Spedita') OR
		  (NEW.StatoSpedizione= 'Consegnata' AND OLD.StatoSpedizione <> 'In Consegna')) THEN
				SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT= 'Non è stata rispettata la sequenza degli stati della spedizione!';
		END IF;
	END $$
DELIMITER ;