DROP TRIGGER IF EXISTS RV31;
DELIMITER $$
CREATE TRIGGER RV31
AFTER UPDATE ON Ordine FOR EACH ROW
BEGIN
	IF((NEW.StatoOrdine='In Processazione' AND OLD.StatoOrdine<>'Pendente') OR 
		(NEW.StatoOrdine='In Preparazione' AND OLD.StatoOrdine<>'In Processazione') OR
        (NEW.StatoOrdine='Spedito' AND OLD.StatoOrdine<>'In Preparazione ') OR
        (NEW.StatoOrdine='Evaso' AND OLD.StatoOrdine<>'Spedito')) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Non è stata rispettata la sequenza di passaggi per i prodotti ordinati!';
		END IF;
END $$
DELIMITER ;
		