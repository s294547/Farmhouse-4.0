DROP PROCEDURE IF EXISTS crea_prenotazione;
DELIMITER $$

CREATE PROCEDURE crea_prenotazione(IN utente VARCHAR(100), IN codprenotazione VARCHAR(100), IN datainizio DATE, IN datafine DATE)
	BEGIN
		INSERT INTO Prenotazione
        VALUES (codprenotazione, CURRENT_DATE, datainizio, datafine, utente);
	END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS aggiungi_stanza_semplice;
DELIMITER $$
CREATE PROCEDURE aggiungi_stanza_semplice(IN codprenotazione VARCHAR(100), IN tipoletto VARCHAR(100)) 
	BEGIN
		DECLARE stanza_libera VARCHAR(100) DEFAULT 'nessuna';
        DECLARE inizio_pren DATE DEFAULT CURRENT_DATE;
        DECLARE fine_pren DATE DEFAULT CURRENT_DATE;
        
        SELECT DataChekIn, DataCheckOut INTO inizio_pren, fine_pren
        FROM Prenotazione
        WHERE CodPrenotazione=codprenotazione;
        
        -- si controlla che ci sia una stanza disponibile con le caratteristiche richieste 
        SELECT SS.CodiceStanza INTO stanza_libera
        FROM Stanza_Semplice SS
        WHERE SS.TipoLetto=tipoletto AND SS.CodiceStanza NOT IN(SELECT RSS.CodiceStanza
																 FROM Riservazione_Stanza_Semplice  RSS INNER JOIN Prenotazione P
																	  ON(P.CodPrenotazione=RSS.CodicePrenotazione)
																 WHERE P.DataCheckIn<=fine_pren AND P.DataCheckOut>=inizio_pren)
		LIMIT 1;
        
		IF( stanza_libera IS NULL) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Non sono disponibili stanze con le caratteristiche desiderate nelle date richieste!';
		ELSE
			INSERT INTO Riservazione_Stanza_Semplice 
			VALUES (stanza_libera, codprenotazione);
		END IF;
	END $$
DELIMITER ;
        
        
DROP PROCEDURE IF EXISTS aggiungi_suite;
DELIMITER $$
CREATE PROCEDURE aggiungi_suite(IN codprenotazione VARCHAR(100), IN lettimatrimoniali INT ,IN lettisingoli INT ) 
	BEGIN
		DECLARE stanza_libera VARCHAR(100) DEFAULT 'nessuna';
        DECLARE inizio_pren DATE DEFAULT CURRENT_DATE;
        DECLARE fine_pren DATE DEFAULT CURRENT_DATE;
        
        IF( lettimatrimoniali >2 OR lettisingoli >2) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT='Non esistono stanze con le caratteristiche richieste!';
		END IF;
        
        SELECT DataChekIn, DataCheckOut INTO inizio_pren, fine_pren
        FROM Prenotazione
        WHERE CodPrenotazione=codprenotazione;
        
        -- si controlla che ci sia una stanza disponibile con le caratteristiche richieste 
        SELECT S.CodiceStanza INTO stanza_libera
        FROM Suite S
        WHERE S.NlettiMatrimoniali=lettimatrimoniali AND 
			  S.NlettiSingoli=lettisingoli	AND S.CodiceStanza NOT IN(SELECT RS.CodiceStanza
																	  FROM Riservazione_Suite  RS INNER JOIN Prenotazione P
																		   ON(P.CodPrenotazione=RS.CodicePrenotazione)
																	  WHERE P.DataCheckIn<=fine_pren AND P.DataCheckOut>=inizio_pren)
		LIMIT 1;
        
		IF( stanza_libera IS NULL) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Non sono disponibili stanze con le caratteristiche desiderate nelle date richieste!';
		ELSE
			INSERT INTO Riservazione_Suite
			VALUES (stanza_libera, codprenotazione);
		END IF;
	END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS aggiungi_servizio_aggiuntivo;
DELIMITER $$
CREATE PROCEDURE aggiungi_servizio_aggiuntivo(IN codprenotazione VARCHAR(100), IN nomeservizio VARCHAR(100), IN inizioservizio date,
											  IN fineservizio DATE) 
	BEGIN
        DECLARE inizio_pren DATE DEFAULT CURRENT_DATE;
        DECLARE fine_pren DATE DEFAULT CURRENT_DATE;
        
        SELECT DataChekIn, DataCheckOut INTO inizio_pren, fine_pren
        FROM Prenotazione
        WHERE CodPrenotazione=codprenotazione;
        
        -- si controlla che i giorni in cui è richiesto il servizio siano validi
        
		IF( inizioservizio > fine_pren OR inizioservizio<inizio_pren OR fineservizio>fine_pren OR fineservizio<inizio_pren ) THEN
			SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT= 'Le date inserite non sono valide!';
		ELSE
			INSERT INTO Richiesta_Optional
			VALUES (codprenotazione, nomeservizio, inizioservizio, fineservizio);
		END IF;
	END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS aggiungi_pagamento;
DELIMITER $$
CREATE PROCEDURE aggiungi_pagamento(IN codprenotazione VARCHAR(100), IN tipopagamento VARCHAR(100)) 
	BEGIN
        DECLARE registrato INT DEFAULT 0;
        DECLARE spesa_totale INT DEFAULT 0;
        DECLARE inizio_pren DATE DEFAULT CURRENT_DATE;
        DECLARE fine_pren DATE DEFAULT CURRENT_DATE;
        
        SELECT DataChekIn, DataCheckOut INTO inizio_pren, fine_pren
        FROM Prenotazione
        WHERE CodPrenotazione=codprenotazione;
        
        SELECT COUNT(*) INTO registrato
        FROM Prenotazione P INNER JOIN Registrato R ON (P.Utente=R.CodFiscale)
        WHERE P.CodPrenotazione=codprenotazione;
        
        SELECT SUM(S.CostoGiornaliero*DATEDIFF(fine_pren, inizio_pren)) INTO spesa_totale
        FROM Riservazione_uite RS NATURAL JOIN Suite S
        WHERE RS.CodicePrenotazione=codprenotazione;
        
        SELECT SUM(SS.CostoGiornaliero*DATEDIFF(fine_pren, inizio_pren))+spesa_totale INTO spesa_totale
        FROM Riservazione_Stanza_Semplice RSS NATURAL JOIN Stanza_Semplice SS
        WHERE RSS.CodicePrenotazione=codprenotazione;
        
        SELECT SUM(SA.CostoGiornaliero*DATEDIFF(RO.DataFine, RO.DataInizio))+spesa_totale INTO spesa_totale
        FROM Richiesta_Optional RO INNER JOIN Servizi_Aggiuntivi SA ON(RO.Servizio=SA.NomeServizio)
        WHERE RO.CodPrenotazione=codprenotazione;
		
        INSERT INTO Pagamento_Soggiorno
        VALUES (codprenotazione, CURRENT_TIMESTAMP, tipo_pagamento, IF(registrato=1, spesa_totale, spesa_totale/2));
        
	END $$
DELIMITER ;