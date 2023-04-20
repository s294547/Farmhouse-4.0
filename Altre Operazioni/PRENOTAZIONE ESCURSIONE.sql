DROP PROCEDURE IF EXISTS prenotazione_escursione;
DELIMITER $$
CREATE PROCEDURE prenotazione_escursione (IN codescrusione VARCHAR(100),IN utente VARCHAR(100), IN persone INT)
	BEGIN
		INSERT INTO Prenota_Escursione
        VALUES (utente, codescursione, CURRENT_DATE, persone);
	END $$
DELIMITER ;