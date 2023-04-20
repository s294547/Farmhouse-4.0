DROP TRIGGER IF EXISTS RV30;
DELIMITER $$
CREATE TRIGGER RV30
AFTER INSERT ON Prenota_Escursione FOR EACH ROW
	BEGIN
		DECLARE massimo_partecipanti INT DEFAULT 0;
        DECLARE prenotazioni_totali INT DEFAULT 0;
         
		SELECT MassimoPartecipanti INTO massimo_partecipanti
        FROM Escursione
        WHERE CodiceEscursione=NEW.Escursione;
        
        SELECT SUM(Partecipanti) INTO prenotazioni_totali
        FROM Prenota_Escursione
        WHERE Escursione=NEW.Escursione;
        
        IF(prenotazioni_totali >massimo_partecipanti) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Non è possibile prenotare, è stato raggiunto il massimo numero di partecipanti!';
		END IF;
        
	END $$
DELIMITER ;