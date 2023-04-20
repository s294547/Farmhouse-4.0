-- PROCEDURA PER LA CREAZIONE DELL'ORDINE
DROP PROCEDURE IF EXISTS crea_ordine;
DELIMITER $$
CREATE PROCEDURE crea_ordine(IN utente VARCHAR(100), IN codice_ordine VARCHAR(100))
	BEGIN 
		INSERT INTO Ordine
        VALUES (codice_ordine, utente, 'pendente', CURRENT_TIMESTAMP, 0);
	END $$
DELIMITER ;

-- PROCEDURA PER L'INSERIMENTO DI UN PRODOTTO IN UN ORDINE GIA' CREATO
DROP PROCEDURE IF EXISTS inserisci_prodotto_ordine;
DELIMITER $$
CREATE PROCEDURE inserisci_prodotto_ordine(IN codice_ordine VARCHAR(100),IN codice_prodotto VARCHAR(100), IN formaggio VARCHAR(100), IN peso INT)
	BEGIN
		DECLARE prodotto_disponibile VARCHAR(100) DEFAULT ' ' ;
        DECLARE stato_ordine VARCHAR(100) DEFAULT ' ';
        DECLARE quantita INT DEFAULT 0;
        
		INSERT INTO Prodotto_Ordine
        VALUES (codice_prodotto, NULL, peso, codice_ordine, formaggio, NULL);
		
        SELECT COUNT(*) INTO quantita
        FROM Disponibilita_Prodotto DP INNER JOIN Prodotto P ON(P.CodiceProdotto=DP.Prodotto)
        WHERE P.Formaggio=formaggio;
        
        SELECT P.CodiceProdotto INTO prodotto_disponibile
        FROM Disponibilita_Prodotto DP INNER JOIN Prodotto P ON(P.CodiceProdotto=DP.Prodotto)
        WHERE P.Formaggio=formaggio 
        ORDER BY DP.TimestampInserimento
        LIMIT 1;
        
        IF(quantita>0) THEN            
            UPDATE Prodotto_Ordine
            SET ProdottoReale=prodotto_disponibile
            WHERE CodiceProdotto=codice_prodotto;
            
		ELSE
			UPDATE Ordine
            SET StatoOrdine= 'Pendente'
            WHERE CodOrdine=codice_ordine;
		END IF;
        
        SELECT IF(COUNT(*)>0, 'Pendente', 'In Processazione') INTO stato_ordine
        FROM Prodotto_Ordine
        WHERE CodOrdine=codice_ordine AND ProdottoReale IS NULL;
        
        UPDATE Ordine
        SET StatoOrdine=stato_ordine
        WHERE CodOrdine=codice_ordine;
	END $$
DELIMITER ;

-- TRIGGER PER AGGIORNARE L'ATTRIBUTO RIDONDANTE SPESA TOTALE
DROP TRIGGER IF EXISTS aggiorna_spesa_ordine;
DELIMITER $$
CREATE TRIGGER aggiorna_spesa_ordine
AFTER INSERT ON Prodotto_Ordine FOR EACH ROW
	BEGIN
		DECLARE spesa_attuale INT DEFAULT 0;
        SELECT SpesaTotale INTO spesa_attuale
        FROM Ordine
        WHERE CodOrdine=NEW.CodOrdine;
        
        SELECT PrezzoPerPezzo*NEW.Peso+spesa_attuale INTO spesa_attuale
        FROM Formaggio
        WHERE Nome=NEW.Formaggio;
        
        UPDATE Ordine
        SET SpesaTotale=spesa_attuale
        WHERE CodOrdine=NEW.CodOrdine;
    END $$
DELIMITER ;
 -- TRIGGER PER AGGIORNARE LA RELAZIONE RIDONDANTE DISPONIBILITA' PRODOTTO
DROP TRIGGER IF EXISTS aggiorna_magazzino;
DELIMITER $$
CREATE TRIGGER aggiorna_magazzino
AFTER UPDATE ON Prodotto_Ordine FOR EACH ROW
	BEGIN
	  IF(NEW.ProdottoReale IS NOT NULL AND OLD.ProdottoReale IS NULL) THEN
		DELETE FROM Disponibilita_Prodotto
        WHERE Prodotto=NEW.ProdottoReale;
        
        UPDATE Allocazione_Magazzino
        SET TimestampPrelievo=current_timestamp
        WHERE Prodotto=NEW.ProdottoReale;
        
        UPDATE Scaffale_Magazzino SM
        SET SM.SpazioDisponibile=SM.SpazioDisponibile+1, SM.TimestampUltimaEstrazione=CURRENT_TIMESTAMP
        WHERE SM.CodiceScaffale=(SELECT AM.Scaffale
								 FROM Allocazione_Magazzino AM
                                 WHERE AM.Prodotto=NEW.ProdottoReale);
	  END IF;
	END $$
DELIMITER ;

-- PROCEDURA CHE PER OGNI ORDINE PENDENTE CONTROLLA SE I PRODOTTI MANCANTI SONO TORNATI DISPONIBILI
DROP PROCEDURE IF EXISTS controlla_ordine;
DELIMITER $$
CREATE PROCEDURE controlla_ordine (IN ordine VARCHAR(100))
	BEGIN
		DECLARE prodotto_disponibile VARCHAR(100) DEFAULT ' ';
        DECLARE prodotto VARCHAR(100) DEFAULT ' ';
		DECLARE finito INT DEFAULT 0;
        DECLARE formaggio VARCHAR(100) DEFAULT ' ';
        DECLARE peso INT DEFAULT 0;
        DECLARE cursoreprodotti CURSOR FOR
        SELECT PO.CodiceProdotto, PO.Formaggio, PO.Peso
        FROM Prodotto_Ordine PO
        WHERE PO.CodOrdine=ordine AND PO.ProdottoReale IS NULL;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;

        
        OPEN cursoreprodotti;
        scan:LOOP
			IF(finito=1) THEN
				LEAVE scan;
			END IF;
            FETCH cursoreprodotti INTO prodotto, formaggio, peso;
            SELECT P.CodiceProdotto INTO prodotto_disponibile
			FROM Disponibilita_Prodotto DP INNER JOIN Prodotto P ON(P.CodiceProdotto=DP.Prodotto)
			WHERE P.Formaggio=formaggio AND P.Peso=peso;
        
			IF(prodotto_disponibile IS NOT NULL) THEN

				
                UPDATE Prodotto_Ordine
                SET ProdottoReale=prodotto_disponibile
                WHERE CodiceProdotto=prodotto;

			ELSE
				UPDATE Ordine
				SET StatoOrdine= 'Pendente'
				WHERE CodOrdine=codice_ordine;
			END IF;
		END LOOP;
		CLOSE cursoreprodotti;
	END $$
DELIMITER ;

-- EVENTO CHE CONTROLLA QUALI SONO GLI ORDINI PENDENTI E SE I PRODOTTI MANCANTI SONO TORNATI DISPONIBILI
DROP EVENT IF EXISTS aggiorna_stato_ordine;
DELIMITER $$
CREATE EVENT aggiorna_stato_ordine
ON SCHEDULE EVERY 1 HOUR
	DO
	  BEGIN
		DECLARE finito INT DEFAULT 0;
        DECLARE ordine VARCHAR(100) DEFAULT ' ';
        DECLARE prodotti_pendenti INT DEFAULT 0;
        DECLARE cursorependenti CURSOR FOR
        SELECT CodiceOrdine
        FROM Ordine
        WHERE Stato='Pendente'
        ORDER BY DataOrdine;
        
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
        OPEN cursorependenti;
        scan:LOOP
			IF(finito=1) THEN
				LEAVE scan;
			END IF;
            FETCH cursorependenti INTO ordine;
            CALL controlla_ordine (ordine);
            
            SELECT COUNT(*) INTO prodotti_pendenti
            FROM Prodotto_Ordine
            WHERE CodOrdine=ordine AND ProdottoReale IS NULL;
            
            IF(prodotti_pendenti >0) THEN
				UPDATE Ordine
                SET StatoOrdine='Pendente'
                WHERE CodiceOrdine= ordine;
			ELSE
				UPDATE Ordine
                SET StatoOrdine='In Processazione'
                WHERE CodiceOrdine=ordine;
			END IF;
		END LOOP;
        CLOSE cursorependenti;
	END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS mostra_stato_ordine;
DELIMITER $$
CREATE PROCEDURE mostra_stato_ordine (IN codordine VARCHAR(100))
	BEGIN
		DECLARE stato_ordine VARCHAR(100) DEFAULT ' ';
        DECLARE stampa VARCHAR(250) DEFAULT 'I Prodotti Sono ';
        
        SELECT StatoOrdine INTO stato_ordine
        FROM Ordine
        WHERE CodOrdine=codordine;
        
        IF(stato_ordine='Spedito' OR stato_ordine='Evaso') THEN
			SET stampa= 'Lo stato della spezione è:';
            
			SELECT CONCAT(stampa, StatoSpedizione) INTO stampa
            FROM Spedizione
            WHERE CodOrdine=codordine;
            
            SELECT stampa;
		else	
			SET stampa=CONCAT(stampa, stato_ordine);
		END IF;
	END $$
DELIMITER ;
            

        

            
        