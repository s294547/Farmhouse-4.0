-- funzione che permette di individuare l'indice di qualità di un prodotto
DROP FUNCTION IF EXISTS trova_indice_qualita_prodotto;
DELIMITER $$
CREATE FUNCTION trova_indice_qualita_prodotto (codprodotto VARCHAR(100))
RETURNS DOUBLE NOT DETERMINISTIC READS SQL DATA
	BEGIN 
			DECLARE indice DOUBLE DEFAULT 0;
            SELECT AVG(D.MediaFase) INTO indice 
			FROM(SELECT AVG(ABS (PR.Valore-PA.Valore)/PA.Valore) OVER (PARTITION BY FP.CodiceFase) AS MediaFase
				 FROM Parametro_Reale PR INNER JOIN Fasi_Produzione FP ON(PR.Fase=FP.CodiceFase) INNER JOIN Prodotto P ON (P.CodiceProdotto=FP.Prodotto)
					  INNER JOIN Fase F ON (P.Formaggio=F.Formaggio AND F.NumeroFase=FP.NumeroFase) INNER JOIN Parametro PA ON(PA.Fase=F.CodiceFase AND
					  PA.NomeParametro=PR.NomeParametro)
					  WHERE FP.Prodotto=codprodotto) AS D;
            
            RETURN indice;
	END $$
DELIMITER ;
-- funzione che permette di individuare l'indice di qualità di un lotto
DROP FUNCTION IF EXISTS trova_indice_qualita_lotto;
DELIMITER $$
CREATE FUNCTION trova_indice_qualita_lotto (codlotto VARCHAR(100))
RETURNS DOUBLE NOT DETERMINISTIC READS SQL DATA
	BEGIN
		DECLARE indice DOUBLE DEFAULT 0;
        SELECT AVG(trova_indice_qualita_prodotto(P.CodiceProdotto)) INTO indice
        FROM Prodotto P INNER JOIN Lotto L ON (L.CodiceLotto=P.Lotto)
        WHERE L.CodiceLotto=codlotto;
        
        RETURN indice;
	END $$
DELIMITER ;

-- funzione che permette di individuare l'indice di qualità dei processi di produzione della farmhouse
DROP FUNCTION IF EXISTS trova_indice_qualita;
DELIMITER $$
CREATE FUNCTION trova_indice_qualita ()
RETURNS DOUBLE NOT DETERMINISTIC READS SQL DATA
	BEGIN
		DECLARE indice DOUBLE DEFAULT 0;
        SELECT AVG(trova_indice_qualita_lotto(L.CodiceLotto)) INTO indice
        FROM  Lotto L;

        RETURN indice;
	END $$
DELIMITER ;

-- creo la materialized view aggiornata con full refresh ogni sera che monitora la qualità della produzione dei lotti
DROP TABLE IF EXISTS MV_QUALITA_PRODUZIONE;
CREATE TABLE MV_QUALITA_PRODUZIONE(
	Lotto VARCHAR(100) NOT NULL,
    DataProduzione VARCHAR(100) NOT NULL,
    IndiceQualitaLotto DOUBLE NOT NULL,
    TotProdottiPossibiliProblemi INT NOT NULL,
    ProdottiDaEliminare TEXT,
    PRIMARY KEY(Lotto)
);

-- procedura utilizzata sia per il build della materialized view sia per l'aggiornamento
DROP PROCEDURE IF EXISTS refresh_mv_qualita_produzione;
DELIMITER $$
CREATE PROCEDURE refresh_mv_qualita_produzione()
	BEGIN
		DECLARE finito INT DEFAULT 0;
        DECLARE lotto VARCHAR(100) DEFAULT ' ';
        DECLARE cursorelotti CURSOR FOR
        SELECT DISTINCT CodiceLotto
        FROM Lotto;
        DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
		TRUNCATE TABLE MV_QUALITA_PRODUZIONE;
        OPEN cursorelotti;
        scan:LOOP
        FETCH cursorelotti INTO lotto;
        IF(finito=1) THEN
			LEAVE scan;
		END IF;
		
        INSERT INTO MV_QUALITA_PRODUZIONE
		SELECT L.CodiceLotto, L.DataProduzione, trova_indice_qualita_lotto(lotto),
												(SELECT COUNT(*)
												 FROM Prodotto 	P
                                                 WHERE P.Lotto=lotto AND trova_indice_qualita_prodotto(P.CodiceProdotto)>0.3) AS TotProdotti,
			   (SELECT GROUP_CONCAT(P.CodiceProdotto)
                FROM Prodotto P
                WHERE P.Lotto=lotto AND trova_indice_qualita_prodotto(P.CodiceProdotto)>0.5) AS ListaProdotti
        FROM Lotto L
        WHERE L.CodiceLotto=lotto;
        END LOOP scan;
        CLOSE cursorelotti;
        
	END $$
DELIMITER ;

-- BUILD
CALL refresh_mv_qualita_produzione;

-- event che mantiene aggiornata la tabella
DROP EVENT IF EXISTS aggiorna_mv_qualita_produzione;
DELIMITER $$
CREATE EVENT aggiorna_mv_qualita_produzione 
ON SCHEDULE EVERY 1 DAY 
STARTS '2019-07-24 23:55:00'
DO 	
	BEGIN
		CALL refresh_mv_qualita_produzione;
	END $$
DELIMITER ;
        