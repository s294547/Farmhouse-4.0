DROP TRIGGER IF EXISTS RV11;
DELIMITER $$
-- se la seconda terapia fallisce vuol dire che ho una terza rilevazione della patologia
CREATE TRIGGER RV11
AFTER INSERT ON Rilevazione_Patologie FOR EACH ROW
	BEGIN
		DECLARE tot_rilevazioni INT DEFAULT 0;
        DECLARE tot_animali INT DEFAULT 0;
        DECLARE locale VARCHAR(100) DEFAULT ' ';
        
		SELECT COUNT(*) INTO tot_rilevazioni
        FROM Rilevazione_Patologie 
        WHERE CodiceRilevazionePatologia=NEW.CodiceRilevazionePatologia;
        
        IF(tot_rilevazioni =3) THEN
			SELECT SM.Locale INTO locale
            FROM Locale L INNER JOIN Singola_Mangiatoia SM ON (L.CodiceLocale=SM.Locale) INNER JOIN Animale A ON (SM.Codice=A.Mangiatoia)
				 INNER JOIN Specie S ON(S.NomeSpecie=A.Animale)
            WHERE L.Quarantena='si' AND L.Lunghezza*L.Larghezza*S.DensitaPerM2 > (SELECT COUNT(*)
																				  FROM Locale L1 INNER JOIN Singola_Mangiatoia SM1
																					   ON (L1.CodiceLocale=SM1.Locale)
																				  WHERE L1.CodiceLocale=L.CodiceLocale)
				  AND A.Specie=(SELECT DISTINCT A1.Specie
							    FROM Animale A1 INNER JOIN Patologie_Rilevate PR ON(A1.Codice=PR.Animale)
								WHERE PR.CodiceRilevazionePatologia=NEW.CodiceRilevazionePatologia)
            LIMIT 1;
        
        UPDATE Singola_Mangiatoia SM
        SET SM.Locale=locale
        WHERE SM.Codice=(SELECT A.Mangiatoia
						 FROM Animale A INNER JOIN Patologie_Rilevate PR ON(A.Codice=PR.Animale)
                         WHERE PR.CodiceRilevazionePatologia=NEW.CodiceRilevazionePatologia
                         );
		END IF;
	END $$
DELIMITER ;
        