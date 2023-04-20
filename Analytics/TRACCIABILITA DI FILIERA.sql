-- creazione della mv analizzante le problematiche dei prodotti
DROP TABLE IF EXISTS MV_PROBLEMATICHE_PRODOTTI;
CREATE TABLE MV_PROBLEMATICHE_PRODOTTI(
	Prodotto VARCHAR(100) NOT NULL,
    IndiceQualita DOUBLE,
    ParametriPeggiori TEXT,
    Problema TEXT NOT NULL,
    PunteggioMedio DOUBLE, 
    PRIMARY KEY(Prodotto)
);

-- funzione utilizzata all'interno del trigger azionato ogni volta che è inserita una recensione negativa o che viene effettuato un reso 
-- resitituisce una lista contenente le fasi che hanno riscontrato criticità e per ciascuna fase i parametri target con il rispettivo valore
DROP FUNCTION IF EXISTS trova_problematiche_prodotti;
DELIMITER $$
CREATE FUNCTION trova_problematiche_prodotti (codprodotto VARCHAR(100))
RETURNS TEXT NOT DETERMINISTIC READS SQL DATA 
	BEGIN
		DECLARE parametri_peggiori TEXT DEFAULT  ' ';
        
		SELECT GROUP_CONCAT(CONCAT(D.CodiceFase, ': ', D.ListaParametri )) INTO parametri_peggiori
		FROM(SELECT FP.CodiceFase, GROUP_CONCAT(CONCAT (PR.NomeParametro, '= ', ABS (PR.Valore-PA.Valore)/PA.Valore)) AS ListaParametri
			 FROM Parametro_Reale PR INNER JOIN Fasi_Produzione FP ON(PR.Fase=FP.CodiceFase) INNER JOIN Prodotto P ON (P.CodiceProdotto=FP.Prodotto)
				 INNER JOIN Fase F ON (P.Formaggio=F.Formaggio AND F.NumeroFase=FP.NumeroFase) INNER JOIN Parametro PA ON(PA.Fase=F.CodiceFase AND
				 PA.NomeParametro=PR.NomeParametro)
			 WHERE FP.Prodotto=codprodotto AND  ABS (PR.Valore-PA.Valore)/PA.Valore>=0.5
			 GROUP BY FP.CodiceFase) AS D;
		RETURN parametri_peggiori;
	END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS refresh_mv_problematiche_prodotti;
DELIMITER $$
CREATE PROCEDURE refresh_mv_problematiche_prodotti()
BEGIN
	DECLARE prodotto VARCHAR(250) DEFAULT ' ';
    DECLARE finito INT DEFAULT 0;
    DECLARE reso DATE DEFAULT NULL;
    DECLARE voto DOUBLE DEFAULT 0;
    DECLARE cursoreprodotti CURSOR FOR
    SELECT PO.CodiceProdotto
    FROM Prodotto_Ordine PO LEFT OUTER JOIN Parametri_Recensione PR ON(PR.Prodotto=PO.CodiceProdotto)
    WHERE PO.Reso IS NOT NULL OR ((PR.Gusto+PR.Conservazione+PR.Qualita+PR.Gradimento)/4<=2);
    DECLARE CONTINUE HANDLER  FOR NOT FOUND SET finito=1;
    TRUNCATE TABLE mv_problematiche_prodotti;
    OPEN cursoreprodotti;
    
    scan:LOOP
		FETCH cursoreprodotti INTO prodotto;
        IF(finito=1) THEN
			LEAVE scan;
		END IF;
        SELECT (PR.Gusto+PR.Conservazione+PR.Qualita+PR.Gradimento)/4, PO.Reso INTO voto, reso
        FROM Prodotto_Ordine PO LEFT OUTER JOIN Parametri_Recensione PR ON(PR.Prodotto=PO.CodiceProdotto)
		WHERE PO.CodiceProdotto=prodotto;
        IF(reso IS NOT NULL) THEN
			INSERT INTO MV_PROBLEMATICHE_PRODOTTI
			VALUES(prodotto, trova_indice_qualita_prodotto(prodotto), trova_problematiche_prodotti(prodotto)
					, 'Reso', NULL);
		else
			INSERT INTO MV_PROBLEMATICHE_PRODOTTI
			VALUES(prodotto, trova_indice_qualita_prodotto(prodotto), trova_problematiche_prodotti(prodotto),
                   'Recensione Negativa', voto);
		END IF;
	END LOOP;
    CLOSE cursoreprodotti;
END $$
DELIMITER ;

DROP EVENT IF EXISTS aggiorna_mv_problematiche_prodotti;
DELIMITER $$
CREATE EVENT aggiorna_mv_problematiche_prodotti
ON SCHEDULE EVERY 1 DAY
STARTS '2019-07-25 23:55:00'
DO
	BEGIN 
		CALL refresh_mv_problematiche_prodotti;
	END $$
DELIMITER ;

DROP TABLE IF EXISTS MV_TASSO_PROBLEMATICHE;
CREATE TABLE MV_TASSO_PROBLEMATICHE(
	Formaggio VARCHAR(100) NOT NULL,
    PunteggioMedio DOUBLE,
    FasiParametriCritici TEXT,
    TotProblemiCausati INT,
    TassoGravita DOUBLE,
    PRIMARY KEY(Formaggio)
);

-- vista che porta per ogni parametro ideale il valor medio di scostamento 
CREATE OR REPLACE VIEW MediaScostamentoPerParametro AS
SELECT PA.NomeParametro, PA.Fase, P.Formaggio,  AVG(ABS(PRA.Valore-PA.Valore)/PA.Valore) AS MediaScostamentoParametro
FROM Parametri_Recensione PR RIGHT OUTER JOIN Prodotto_Ordine PO ON(PO.CodiceProdotto=PR.Prodotto) INNER JOIN Prodotto P ON
	 (PO.ProdottoReale=P.CodiceProdotto) INNER JOIN Fasi_Produzione FP ON(FP.Prodotto=P.CodiceProdotto) INNER JOIN Parametro_Reale PRA 
	 ON(PRA.Fase=FP.CodiceFase) INNER JOIN Fase F ON (P.Formaggio=F.Formaggio AND F.NumeroFase=FP.NumeroFase) INNER JOIN Parametro PA ON(PA.Fase=F.CodiceFase AND
	 PA.NomeParametro=PRA.NomeParametro)
WHERE ((PR.Prodotto IS NULL AND PO.Reso IS NOT NULL) OR (PR.Gusto+PR.Conservazione+PR.Qualita+PR.Gradimento)/4<=2) 
GROUP BY PA.NomeParametro, PA.Fase, P.Formaggio;

-- procedura che aggiorna completamente la mv_tasso_problematiche
DROP PROCEDURE IF EXISTS refresh_mv_tasso_problematiche;
DELIMITER $$
CREATE PROCEDURE refresh_mv_tasso_problematiche()
	BEGIN
		DECLARE formaggio VARCHAR(100) DEFAULT ' ';
        DECLARE punteggio_medio DOUBLE DEFAULT NULL;
        DECLARE parametri_critici TEXT;
        DECLARE tot_problemi INT DEFAULT 0;
        DECLARE tasso_gravita DOUBLE DEFAULT NULL;
        DECLARE finito INT DEFAULT 0;
		DECLARE cursoreformaggi CURSOR FOR 
        SELECT DISTINCT Nome
        FROM Formaggio;
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET finito=1;
        
        TRUNCATE TABLE MV_TASSO_PROBLEMATICHE;
        OPEN cursoreformaggi;
        scan:LOOP
			FETCH cursoreformaggi INTO formaggio;
			IF(finito=1) THEN
				LEAVE scan;
			END IF;
            
            
            SELECT AVG((PR.Gusto+PR.Conservazione+PR.Qualita+PR.Gradimento)/4) INTO punteggio_medio
            FROM Parametri_Recensione PR INNER JOIN Prodotto_Ordine PO ON(PO.CodiceProdotto=PR.Prodotto)
            WHERE PO.Formaggio=formaggio;
            
            SELECT COUNT(*) INTO tot_problemi
            FROM Parametri_Recensione PR RIGHT OUTER JOIN Prodotto_Ordine PO ON(PO.CodiceProdotto=PR.Prodotto)
            WHERE ((PR.Prodotto IS NULL AND PO.Reso IS NOT NULL) OR (PR.Gusto+PR.Conservazione+PR.Qualita+PR.Gradimento)/4<=2) AND 
				  PO.Formaggio=formaggio;
             
			SELECT GROUP_CONCAT( CONCAT( MSPP.Fase, ' ', MSPP.NomeParametro, ': ', MSPP.MediaScostamentoParametro)) INTO parametri_critici
			FROM MediaScostamentoPerParametro MSPP
            WHERE MSPP.Formaggio=formaggio AND MSPP.MediaScostamentoParametro>= ALL(SELECT MSPP1.MediaScostamentoParametro
																					FROM MediaScostamentoPerParametro MSPP1
																					WHERE MSPP1.Formaggio=formaggio);
            
            SELECT SUM(IF(PO.Reso IS NOT NULL, 3, IF((PR.Gusto+PR.Conservazione+PR.Qualita+PR.Gradimento)/4<=2,IF((PR.Gusto+PR.Conservazione+PR.Qualita+PR.Gradimento)/4<1, 2, 1) ,0)))/ 
					SUM(IF(PO.Reso IS NOT NULL OR (PR.Gusto+PR.Conservazione+PR.Qualita+PR.Gradimento)/4<=2, 1, 0)) 
					INTO tasso_gravita
            FROM Parametri_Recensione PR RIGHT OUTER JOIN Prodotto_Ordine PO ON(PO.CodiceProdotto=PR.Prodotto)
            WHERE ((PR.Prodotto IS NULL AND PO.Reso IS NOT NULL) OR (PR.Gusto+PR.Conservazione+PR.Qualita+PR.Gradimento)/4<=2) AND 
				  PO.Formaggio=formaggio;
                  
			INSERT INTO MV_TASSO_PROBLEMATICHE
            VALUES (formaggio, punteggio_medio, parametri_critici, tot_problemi, tasso_gravita);
            
		END LOOP;
        CLOSE cursoreformaggi;
	END $$
DELIMITER ;
			
DROP EVENT IF EXISTS aggiorna_mv_tasso_problematiche;
DELIMITER $$
CREATE EVENT aggiorna_mv_tasso_problematiche
ON SCHEDULE EVERY 1 DAY
STARTS '2019-07-25 23:55:00'
DO
	BEGIN 
		CALL refresh_mv_tasso_problematiche;
	END $$
DELIMITER ;

	



