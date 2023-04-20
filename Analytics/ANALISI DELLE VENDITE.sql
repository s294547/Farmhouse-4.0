-- materialized view che per ogni tipo di formaggio mostra la percentuale di prodotti invenduti nell'ultimo mese, nell'ultimo anno,
-- nell'ultima settimana e da sempre
DROP TABLE IF EXISTS MV_ANALISI_VENDITE_FORMAGGI;
CREATE TABLE MV_ANALISI_VENDITE_FORMAGGI(
	Formaggio VARCHAR(100) NOT NULL,
    PercentualeInvenduti DOUBLE,
    PercentualeInvendutiAnno DOUBLE,
    PercentualeInvendutiMese DOUBLE,
    PercentualeInvendutiSettimana DOUBLE,
    PRIMARY KEY (Formaggio)
);

-- procedura utilizzata per l'aggiornamento della materialied view basata sui tipi di formaggi
DROP PROCEDURE IF EXISTS refresh_mv_analisi_vendite_formaggi;
DELIMITER $$
CREATE PROCEDURE refresh_mv_analisi_vendite_formaggi()
	BEGIN
		DECLARE formaggio VARCHAR(100) DEFAULT ' ';
        DECLARE percentuale DOUBLE DEFAULT 0;
        DECLARE percentuale_anno DOUBLE DEFAULT 0;
        DECLARE percentuale_mese DOUBLE DEFAULT 0;
        DECLARE percentuale_settimana DOUBLE DEFAULT 0;
		DECLARE finito INT DEFAULT 0;
		DECLARE cursoreformaggi CURSOR FOR 
        SELECT DISTINCT Nome
        FROM Formaggio;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
        TRUNCATE TABLE MV_ANALISI_VENDITE_FORMAGGI;
        OPEN cursoreformaggi;
        
        scan:LOOP
			
            FETCH cursoreformaggi INTO formaggio;
            IF (finito=1) THEN
				LEAVE scan;
			END IF;
            
            SELECT SUM(IF(PO.ProdottoReale IS NULL, 1, 0))/COUNT(*) INTO percentuale
            FROM Allocazione_Magazzino AM INNER JOIN Prodotto P ON (P.CodiceProdotto=AM.Prodotto) LEFT OUTER JOIN Prodotto_Ordine PO
				 ON (PO.ProdottoReale=P.CodiceProdotto)
            WHERE AM.TimestampPrelievo IS NOT NULL AND P.Formaggio=formaggio;
            
			SELECT SUM(IF(PO.ProdottoReale IS NULL, 1, 0))/COUNT(*) INTO percentuale_anno
            FROM Allocazione_Magazzino AM INNER JOIN Prodotto P ON (P.CodiceProdotto=AM.Prodotto) LEFT OUTER JOIN Prodotto_Ordine PO
				 ON (PO.ProdottoReale=P.CodiceProdotto)
            WHERE AM.TimestampPrelievo IS NOT NULL AND P.Formaggio=formaggio AND AM.TimestampPrelievo >=CURRENT_TIMESTAMP-INTERVAL 1 year;
            
            SELECT SUM(IF(PO.ProdottoReale IS NULL, 1, 0))/COUNT(*) INTO percentuale_mese
            FROM Allocazione_Magazzino AM INNER JOIN Prodotto P ON (P.CodiceProdotto=AM.Prodotto) LEFT OUTER JOIN Prodotto_Ordine PO
				 ON (PO.ProdottoReale=P.CodiceProdotto)
            WHERE AM.TimestampPrelievo IS NOT NULL AND P.Formaggio=formaggio AND AM.TimestampPrelievo >=CURRENT_TIMESTAMP-INTERVAL 1 MONTH;
            
            SELECT SUM(IF(PO.ProdottoReale IS NULL, 1, 0))/COUNT(*) INTO percentuale_settimana
            FROM Allocazione_Magazzino AM INNER JOIN Prodotto P ON (P.CodiceProdotto=AM.Prodotto) LEFT OUTER JOIN Prodotto_Ordine PO
				 ON (PO.ProdottoReale=P.CodiceProdotto)
            WHERE AM.TimestampPrelievo IS NOT NULL AND P.Formaggio=formaggio AND AM.TimestampPrelievo >=CURRENT_TIMESTAMP-INTERVAL 1 WEEK;
             
			INSERT INTO MV_ANALISI_VENDITE_FORMAGGI
            VALUES (formaggio, percentuale, percentuale_anno, percentuale_mese, percentuale_settimana);
        END LOOP;
        CLOSE cursoreformaggi;
	END $$
DELIMITER ;

-- creo una tabella contenente tre fasce di prezzo. tale tabella va aggiornata ogni volta prima di aggiornare la materialized
-- view basata su essa poichè i prezzi dei prodotti possono spesso cambiare
DROP TABLE IF EXISTS Fasce_Prezzi;
CREATE TABLE Fasce_Prezzi(
	Fascia VARCHAR(50) NOT NULL,
    PrezzoMin INT NOT NULL,
    PrezzoMax INT NOT NULL,
	PRIMARY KEY(Fascia)
);


DROP PROCEDURE IF EXISTS trova_fasce_prezzi;
DELIMITER $$
CREATE PROCEDURE trova_fasce_prezzi()
	BEGIN
		DECLARE prezzo_max DOUBLE DEFAULT 0;
		DECLARE prezzo_min DOUBLE DEFAULT 0;
        DECLARE intervallo DOUBLE DEFAULT 0;
		TRUNCATE Fasce_Prezzi;
        
        SELECT MAX(PrezzoPerPezzo) INTO prezzo_max
        FROM Formaggio;
        
        SELECT MIN(PrezzoPerPezzo) INTO prezzo_min
        FROM Formaggio;
        
        SET intervallo=(prezzo_max-prezzo_min)/3;
        
        REPLACE INTO Fasce_Prezzi
        VALUES ('Economica', prezzo_min, prezzo_min+intervallo);
        REPLACE INTO Fasce_Prezzi
        VALUES ('Media', prezzo_min+intervallo, prezzo_min+intervallo*2);
        REPLACE INTO Fasce_Prezzi
        VALUES ('Alta', prezzo_min+intervallo*2, prezzo_max);
	END $$
DELIMITER ;

-- materialized view che per ogni fascia di prezzo mostra la percentuale di prodotti invenduti nell'ultimo mese, nell'ultimo anno,
-- nell'ultima settimana e da sempre
DROP TABLE IF EXISTS MV_ANALISI_VENDITE_FASCIA;
CREATE TABLE MV_ANALISI_VENDITE_FASCIA(
	Fascia VARCHAR(100) NOT NULL,
    PercentualeInvenduti DOUBLE,
    PrencentualeInvendutiAnno DOUBLE,
    PercentualeInvendutiMese DOUBLE,
    PercentualeInvendutiSettimana DOUBLE,
    PRIMARY KEY (Fascia)
);


DROP FUNCTION IF EXISTS trova_percentuale;
DELIMITER $$
CREATE FUNCTION trova_percentuale(fascia VARCHAR(250))
RETURNS DOUBLE READS SQL DATA NOT DETERMINISTIC
BEGIN
	DECLARE percentuale DOUBLE DEFAULT 0;
	SELECT SUM(IF(PO.ProdottoReale IS NULL, 1, 0))/COUNT(*) INTO percentuale
	FROM Allocazione_Magazzino AM INNER JOIN Prodotto P ON (P.CodiceProdotto=AM.Prodotto) LEFT OUTER JOIN Prodotto_Ordine PO
		  ON(PO.ProdottoReale=P.CodiceProdotto) INNER JOIN Formaggio F ON(F.Nome=P.Formaggio) INNER JOIN Fasce_Prezzi FP
		  ON (FP.PrezzoMin <=F.PrezzoPerPezzo AND FP.PrezzoMax >=F.PrezzoPerPezzo)
	WHERE AM.TimestampPrelievo IS NOT NULL AND FP.Fascia=fascia;
    RETURN percentuale;
END $$
DELIMITER ;

DROP FUNCTION IF EXISTS trova_percentuale_anno;
DELIMITER $$
CREATE FUNCTION trova_percentuale_anno(fascia VARCHAR(250))
RETURNS DOUBLE READS SQL DATA NOT DETERMINISTIC
BEGIN
	DECLARE percentuale_anno DOUBLE DEFAULT 0;
	SELECT SUM(IF(PO.ProdottoReale IS NULL, 1, 0))/COUNT(*) INTO percentuale_anno
	FROM Allocazione_Magazzino AM INNER JOIN Prodotto P ON (P.CodiceProdotto=AM.Prodotto) LEFT OUTER JOIN Prodotto_Ordine PO
		 ON(PO.ProdottoReale=P.CodiceProdotto) INNER JOIN Formaggio F ON(F.Nome=P.Formaggio) INNER JOIN Fasce_Prezzi FP
		 ON (FP.PrezzoMin <=F.PrezzoPerPezzo AND FP.PrezzoMax >=F.PrezzoPerPezzo)
	WHERE AM.TimestampPrelievo IS NOT NULL AND FP.Fascia=fascia AND AM.TimestampPrelievo >=CURRENT_TIMESTAMP-INTERVAL 1 YEAR;
    RETURN percentuale_anno;
END $$
DELIMITER ;

DROP FUNCTION IF EXISTS trova_percentuale_mese;
DELIMITER $$
CREATE FUNCTION trova_percentuale_mese(fascia VARCHAR(250))
RETURNS DOUBLE READS SQL DATA NOT DETERMINISTIC
BEGIN
	DECLARE percentuale_mese DOUBLE DEFAULT 0;
	SELECT SUM(IF(PO.ProdottoReale IS NULL, 1, 0))/COUNT(*) INTO percentuale_mese
	FROM Allocazione_Magazzino AM INNER JOIN Prodotto P ON (P.CodiceProdotto=AM.Prodotto) LEFT OUTER JOIN Prodotto_Ordine PO
		 ON(PO.ProdottoReale=P.CodiceProdotto) INNER JOIN Formaggio F ON(F.Nome=P.Formaggio) INNER JOIN Fasce_Prezzi FP
		 ON (FP.PrezzoMin <=F.PrezzoPerPezzo AND FP.PrezzoMax >=F.PrezzoPerPezzo )
	WHERE AM.TimestampPrelievo IS NOT NULL AND FP.Fascia=fascia AND AM.TimestampPrelievo >=CURRENT_TIMESTAMP-INTERVAL 1 MONTH;
    RETURN percentuale_mese;
END $$
DELIMITER ;

DROP FUNCTION IF EXISTS trova_percentuale_settimana;
DELIMITER $$
CREATE FUNCTION trova_percentuale_settimana(fascia VARCHAR(250))
RETURNS DOUBLE READS SQL DATA NOT DETERMINISTIC
BEGIN
	DECLARE percentuale_settimana DOUBLE DEFAULT 0;
	SELECT SUM(IF(PO.ProdottoReale IS NULL, 1, 0))/COUNT(*) INTO percentuale_settimana
	FROM Allocazione_Magazzino AM INNER JOIN Prodotto P ON (P.CodiceProdotto=AM.Prodotto) LEFT OUTER JOIN Prodotto_Ordine PO
		 ON(PO.ProdottoReale=P.CodiceProdotto) INNER JOIN Formaggio F ON(F.Nome=P.Formaggio) INNER JOIN Fasce_Prezzi FP
		 ON (FP.PrezzoMin <=F.PrezzoPerPezzo AND FP.PrezzoMax >=F.PrezzoPerPezzo )
	WHERE AM.TimestampPrelievo IS NOT NULL AND FP.Fascia=fascia AND AM.TimestampPrelievo >=CURRENT_TIMESTAMP-INTERVAL 1 MONTH;
    RETURN percentuale_settimana;
END $$
DELIMITER ;

-- procedura utilizzata per l'aggiornamento della materialied view basata sulle fasce di prezzo
DROP PROCEDURE IF EXISTS refresh_mv_analisi_vendite_fasce;
DELIMITER $$
CREATE PROCEDURE refresh_mv_analisi_vendite_fasce()
	BEGIN
			TRUNCATE TABLE mv_analisi_vendite_fascia;
			INSERT INTO MV_ANALISI_VENDITE_FASCIA
            VALUES ('Economica', trova_percentuale('Economica'), trova_percentuale_anno('Economica'), trova_percentuale_mese('Economica'), trova_percentuale_settimana('Economica'));
            
            INSERT INTO MV_ANALISI_VENDITE_FASCIA
            VALUES ('Media', trova_percentuale('Media'), trova_percentuale_anno('Media'), trova_percentuale_mese('Media'), trova_percentuale_settimana('Media'));
			
            INSERT INTO MV_ANALISI_VENDITE_FASCIA
            VALUES ('Alta', trova_percentuale('Alta'), trova_percentuale_anno('Alta'), trova_percentuale_mese('Alta'), trova_percentuale_settimana('Alta'));

	END $$
DELIMITER ;

-- event che ogni sera aggiorna from scratch le materialized view analizzanti la percentuale di prodotti invenduti
DROP EVENT IF EXISTS aggiorna_analisi_vendite;
DELIMITER $$
CREATE EVENT aggiorna_analisi_vendite
ON SCHEDULE EVERY 1 DAY 
STARTS '2019-07-25 23:55:00'
	DO
		BEGIN
			call trova_fasce_prezzi;
            call refresh_mv_analisi_vendite_fasce;
            call refresh_mv_analisi_vendite_formaggi;
		END $$
DELIMITER ;

-- tabella che mantiene le promozioni attuali di un determinato formaggio da applicare
-- essa è aggiornata settimanalmente
DROP TABLE IF EXISTS Promozione;

CREATE TABLE Promozione(
	Formaggio VARCHAR(100) NOT NULL,
    TipoPromozione TEXT,
    Formaggio1 VARCHAR(100),
    Formaggio2 VARCHAR(100),
    Formaggio3 VARCHAR(100),
    PRIMARY KEY(Formaggio)
);

-- procedura che individua per un tipo di formaggio preso in ingresso i tipi di formaggio con cui esso è maggiormente venduto
DROP PROCEDURE IF EXISTS trova_prodotti_piu_venduti;
DELIMITER $$
CREATE PROCEDURE trova_prodotti_piu_venduti (IN formaggio VARCHAR(100), INOUT formaggio1 VARCHAR(100),  INOUT formaggio2 VARCHAR(100),
											  INOUT formaggio3 VARCHAR(100))
	BEGIN
					DECLARE finito INT DEFAULT 0;
                    DECLARE form VARCHAR(100) DEFAULT ' ';
                    DECLARE conta INT DEFAULT 1;
					DECLARE cursoreformaggi CURSOR FOR
                    SELECT PO.Formaggio
					FROM(SELECT PO.Formaggio, COUNT(DISTINCT PO.CodOrdine) as TotaleOrdini
						 FROM Prodotto_Ordine PO 
						 WHERE  PO.Formaggio <>formaggio AND
								EXISTS (SELECT *
										FROM Prodotto_Ordine PO1
										WHERE PO1.Formaggio =formaggio AND PO1.CodOrdine=PO.CodOrdine)
						 GROUP BY PO.Formaggio) AS D
					ORDER BY D.TotaleOrdini DESC
                    LIMIT 3;
                    DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
                    OPEN cursoreformaggi;
                    scan:LOOP
							
							
                            FETCH cursoreformaggi INTO form;
                            IF(finito=1) THEN 
								LEAVE scan;
							END IF;
                            IF(conta=1) THEN
								SET formaggio1=form;
							ELSEIF(conta=2) THEN
								SET formaggio2=form;
							ELSEIF(conta=3) THEN
								SET formaggio3=form;
							END IF;
                             SET conta=conta+1;
						
					END LOOP;
				CLOSE cursoreformaggi;
    END $$
DELIMITER ;

DROP EVENT IF EXISTS promozione_analisi_vendite;
DELIMITER $$
CREATE EVENT promozione_analisi_vendite
ON SCHEDULE EVERY 1 WEEK
STARTS '2019-07-26 02:00:00'
	DO
		BEGIN
			DECLARE finito INT DEFAULT 0;
            DECLARE promozione DOUBLE DEFAULT 0;
            DECLARE formaggio VARCHAR(100) DEFAULT ' ';
            DECLARE formaggio1 VARCHAR(100) DEFAULT ' ';
            DECLARE formaggio2 VARCHAR(100) DEFAULT ' ';
            DECLARE formaggio3 VARCHAR(100) DEFAULT ' ';
			DECLARE percentuale DOUBLE DEFAULT 0;
			DECLARE percentuale_anno DOUBLE DEFAULT 0;
			DECLARE percentuale_mese DOUBLE DEFAULT 0;
            DECLARE percentuale_fascia DOUBLE DEFAULT 0;
			DECLARE percentuale_anno_fascia DOUBLE DEFAULT 0;
			DECLARE percentuale_mese_fascia DOUBLE DEFAULT 0;
            DECLARE cursoresconti CURSOR FOR 
            SELECT Formaggio
            FROM MV_ANALISI_VENDITE_FORMAGGI
            WHERE PercentualeInvendutiSettimana >=0.4;
            DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
            
            TRUNCATE TABLE Promozione;
            OPEN cursoresconti;
            scan:LOOP
				
                FETCH cursoresconti INTO formaggio;
                IF(finito=1) THEN
					LEAVE scan;
				END IF;
                SELECT PercentualeInvendutiMese, PercentualeInvendutiAnno, PercentualeInvenduti INTO
						percentuale, percentuale_mese, percentuale_anno
				FROM MV_ANALISI_VENDITE_FORMAGGI
				WHERE Formaggio=formaggio;
                
                SELECT MA.PercentualeInvendutiMese, MA.PercentualeInvendutiAnno, MA.PercentualeInvenduti INTO
						percentuale_fascia, percentuale_mese_fascia, percentuale_anno_fascia
				FROM MV_ANALISI_VENDITE_FASCE MA INNER JOIN Formaggio F ON(F.PrezzoPerKG>=MA.PrezzoMin AND F.PrezzoPerKG <=MA.PrezzoMax)
				WHERE F.Nome=formaggio;
				
                IF(percentuale_mese < 0.4) THEN 
					SET promozione=3;
                    IF(percentuale_settimana_fascia>=0.4) THEN
						SET promozione=2;
					END IF;
                    SET promozione= CONCAT('Prendi ', promozione, 'paghi ', IF(promozione=2, 1, 2));
                    INSERT INTO Promozione
                    VALUES (formaggio, promozione, NULL, NULL, NULL);
                    
				ELSEIF (percentuale_anno <0.4) THEN
					SET promozione=0.5;
                    IF(percentuale_mese_fascia>=0.4) THEN
						SET promozione=0.75;
					END IF;
                    CALL trova_prodotti_piu_venduti(formaggio, formaggio1, formaggio2, formaggio3);
                    SET promozione=CONCAT('Assieme ai formaggi più venduti sconto del ', promozione*100, '%');
                    INSERT INTO Promozione
                    VALUES (formaggio, promozione, formaggio1, formaggio2, formaggio3);
				ELSEIF(percentuale <0.4) THEN
					SET promozione=0.025;
                    IF(percentuale_anno_fascia>=0.4) THEN
						SET promozione=0.05;
					END IF;
					UPDATE Formaggio
                    SET PrezzoPerKG=PrezzoPerKG-promozione*PrezzoPerKG
                    WHERE Nome=formaggio;
				else
					SET promozione=0.075;
                    IF(percentuale_fascia>=0.4) THEN
						SET promozione=0.1;
					END IF;
					UPDATE Formaggio
                    SET PrezzoPerKG=PrezzoPerKG-promozione*PrezzoPerKG
                    WHERE Nome=formaggio;
                END IF;
            END LOOP;
		END $$
DELIMITER ;


-- ogni volta che viene un prodotto in un ordine, il trigger controlla che esso faccia parte dei prodotti in promozione.
-- se è nei prodotti in promozione, si legge che tipo di offerta è presente per esso e nel caso sia possibile è
-- applicata
DROP TRIGGER IF EXISTS applica_promozione;
DELIMITER $$
CREATE TRIGGER applica_promozione
AFTER INSERT ON Prodotto_Ordine FOR EACH ROW
	BEGIN
        DECLARE promozione TEXT DEFAULT ' ';
        DECLARE quantita INT DEFAULT 0;
        DECLARE riduzione DOUBLE DEFAULT 0;
		DECLARE formaggio1 VARCHAR(100) DEFAULT ' ';
		DECLARE formaggio2 VARCHAR(100) DEFAULT ' ';
		DECLARE formaggio3 VARCHAR(100) DEFAULT ' ';
        DECLARE quantita2 INT DEFAULT 0;
        
        SELECT TipoPromozione INTO promozione
        FROM Promozione
        WHERE Formaggio=NEW.Formaggio;
        
        IF(presente >0) THEN
				SELECT COUNT(*) INTO quantita
                FROM Prodotto_Ordine 
                WHERE CodOrdine=NEW.CodOrdine AND Formaggio=NEW.Formaggio;
                
                SELECT F.PrezzoPerKG*NEW.Peso INTO riduzione
                FROM Prodotto_Ordine PO INNER JOIN Formaggio F ON (F.Nome=PO.Formaggio)
                WHERE PO.CodiceProdotto=NEW.CodiceProdotto;
			IF(promozione= 'Prendi 2 paghi 1') THEN                
                IF(quantita%2=0) THEN
					UPDATE Ordine
                    SET SpesaTotale=SpesaTotale-riduzione
                    WHERE CodOrdine=NEW.CodOrdine;
				END IF;
			ELSEIF(promozione= 'Prendi 3 paghi 2') THEN                
                IF(quantita%3=0) THEN
					UPDATE Ordine
                    SET SpesaTotale=SpesaTotale-riduzione
                    WHERE CodOrdine=NEW.CodOrdine;
				END IF;
			ELSEIF(promozione='Assieme ai formaggi più venduti sconto del 50%') THEN
				SELECT Formaggio1, Formaggio2, Formaggio3 INTO formaggio1, formaggio2, formaggio3
                FROM Promozione
                WHERE Formaggio=NEW.Formaggio;
                
                SELECT COUNT(*) INTO quantita2
                FROM Prodotto_Ordine
                WHERE CodOrdine=NEW.CodOrdine AND (Formaggio=formaggio1 OR Formaggio=formaggio2 OR Formaggio=formaggio3);
                
                SET riduzione=riduzione*0.5;
                
                IF (quantita2>=quantita) THEN
					UPDATE Ordine
                    SET SpesaTotale=SpesaTotale-riduzione
                    WHERE CodOrdine=NEW.CodOrdine;
                    
                END IF;
                
			ELSEIF(promozione='Assieme ai formaggi più venduti sconto del 75%') THEN
				SELECT Formaggio1, Formaggio2, Formaggio3 INTO formaggio1, formaggio2, formaggio3
                FROM Promozione
                WHERE Formaggio=NEW.Formaggio;
                
                SELECT COUNT(*) INTO quantita2
                FROM Prodotto_Ordine
                WHERE CodOrdine=NEW.CodOrdine AND (Formaggio=formaggio1 OR Formaggio=formaggio2 OR Formaggio=formaggio3);
                
                SET riduzione=riduzione*0.75;
                
                IF (quantita2>=quantita) THEN
					UPDATE Ordine
                    SET SpesaTotale=SpesaTotale-riduzione
                    WHERE CodOrdine=NEW.CodOrdine;
				END IF;
                
				
            END IF;
            
        END IF;
	END $$
DELIMITER ;
			
