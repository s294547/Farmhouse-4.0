DROP TABLE IF EXISTS Tappa;
DROP TABLE IF EXISTS Area;
DROP TABLE IF EXISTS Prenota_Escursione;
DROP TABLE IF EXISTS Escursione;
DROP TABLE IF EXISTS Guida;
DROP TABLE IF EXISTS Pagamento_Soggiorno;
DROP TABLE IF EXISTS Riservazione_Suite;
DROP TABLE IF EXISTS Riservazione_Stanza_Semplice;
DROP TABLE IF EXISTS Suite;
DROP TABLE IF EXISTS Stanza_Semplice;
DROP TABLE IF EXISTS Richiesta_Optional;
DROP TABLE IF EXISTS Servizi_Aggiuntivi;
DROP TABLE IF EXISTS Prenotazione;
DROP TABLE IF EXISTS Prodotto_Inviato;
DROP TABLE IF EXISTS Testo;
DROP TABLE IF EXISTS Parametri_Recensione;
DROP TABLE IF EXISTS Prodotto_Ordine;
DROP TABLE IF EXISTS Rilevazioni;
DROP TABLE IF EXISTS HUB_Smistamento;
DROP TABLE IF EXISTS Spedizione;
DROP TABLE IF EXISTS Pagamento;
DROP TABLE IF EXISTS Ordine;
DROP TABLE IF EXISTS Account;
DROP TABLE IF EXISTS Registrato;
DROP TABLE IF EXISTS Utente;
DROP TABLE IF EXISTS Allocazione_Cantina;
DROP TABLE IF EXISTS Disponibilita_Prodotto;
DROP TABLE IF EXISTS Rilevazione_Dati_Impianti_Condizionamento;
DROP TABLE IF EXISTS Scaffale_Cantina;
DROP TABLE IF EXISTS Cantina;
DROP TABLE IF EXISTS Allocazione_Magazzino;
DROP TABLE IF EXISTS Scaffale_Magazzino;
DROP TABLE IF EXISTS Magazzino;
DROP TABLE IF EXISTS Estrazione_Latte;
DROP TABLE IF EXISTS Parametro_Reale;
DROP TABLE IF EXISTS Fasi_Produzione;
DROP TABLE IF EXISTS Prodotto;
DROP TABLE IF EXISTS Turno;
DROP TABLE IF EXISTS Lotto;
DROP TABLE IF EXISTS Impiegato;
DROP TABLE IF EXISTS Laboratorio;
DROP TABLE IF EXISTS Parametro;
DROP TABLE IF EXISTS Fase;
DROP TABLE IF EXISTS Formaggio;
DROP TABLE IF EXISTS Composizione_Latte;
DROP TABLE IF EXISTS Sostanza_Latte;
DROP TABLE IF EXISTS Travaso;
DROP TABLE IF EXISTS Dati_Latte_Munto;
DROP TABLE IF EXISTS Silos;
DROP TABLE IF EXISTS Storico_Posizione_Mungitrice;
DROP TABLE IF EXISTS Mungitrice;
DROP TABLE IF EXISTS Posizione_Animale;
DROP TABLE IF EXISTS Zona_Agriturismo;
DROP TABLE IF EXISTS Somministrazione_Per_Ora;
DROP TABLE IF EXISTS Posologia_Farmaco;
DROP TABLE IF EXISTS Farmaco;
DROP TABLE IF EXISTS Terapia;
DROP TABLE IF EXISTS Rilevazione_Patologie;
DROP TABLE IF EXISTS Patologie_Rilevate;
DROP TABLE IF EXISTS Patologia;
DROP TABLE IF EXISTS Rilevazione_Disturbi; 
DROP TABLE IF EXISTS Disturbi_Comportamentali;
DROP TABLE IF EXISTS Rilevazione_Lesioni;
DROP TABLE IF EXISTS Lesioni;
DROP TABLE IF EXISTS Indicatori_Soggettivi;
DROP TABLE IF EXISTS Indicatori_Oggettivi;
DROP TABLE IF EXISTS Diagnosi;
DROP TABLE IF EXISTS Utilizzo_Macchinario_Esame;
DROP TABLE IF EXISTS Macchinario;
DROP TABLE IF EXISTS Esame;
DROP TABLE IF EXISTS Intervento_Programmato;
DROP TABLE IF EXISTS Visita;
DROP TABLE IF EXISTS Nascita;
DROP TABLE IF EXISTS Interruzione_Gravidanza;
DROP TABLE IF EXISTS Causa_Fine_Gravidanza;
DROP TABLE IF EXISTS Tentativo;
DROP TABLE IF EXISTS Veterinario;
DROP TABLE IF EXISTS Maschio;
DROP TABLE IF EXISTS Femmina;
DROP TABLE IF EXISTS Animale;
DROP TABLE IF EXISTS Contenuto_Mangiatoia_Recente;
DROP TABLE IF EXISTS Dati_Cibo;
DROP TABLE IF EXISTS Singola_Mangiatoia;
DROP TABLE IF EXISTS Foraggio;
DROP TABLE IF EXISTS Gruppo_Mungitura;
DROP TABLE IF EXISTS Rilevazione_Sali;
DROP TABLE IF EXISTS Rilevazione_Vitamine;
DROP TABLE IF EXISTS Dati_Acqua;
DROP TABLE IF EXISTS Sali_Minerali;
DROP TABLE IF EXISTS Vitamina;
DROP TABLE IF EXISTS Singolo_Abbeveratoio;
DROP TABLE IF EXISTS Allestimento;
DROP TABLE IF EXISTS Singolo_Condizionatore;
DROP TABLE IF EXISTS Singolo_Dispositivo_Illuminazione;
DROP TABLE IF EXISTS Rilevazione;
DROP TABLE IF EXISTS Sensori_Ambiente;
DROP TABLE IF EXISTS Pulizia_Locale;
DROP TABLE IF EXISTS Intervento_Pulizia;
DROP TABLE IF EXISTS Macchinario_Pulizia;
DROP TABLE IF EXISTS Operatore;
DROP TABLE IF EXISTS Rilevazione_Sporcizia;
DROP TABLE IF EXISTS Locale;
DROP TABLE IF EXISTS Stalla;
DROP TABLE IF EXISTS Agriturismo;
DROP TABLE IF EXISTS Mangiatoie;
DROP TABLE IF EXISTS Abbeveratoi;
DROP TABLE IF EXISTS Condizionatori;
DROP TABLE IF EXISTS Dispositivi_Illuminazione;
DROP TABLE IF EXISTS Specie;
DROP TABLE IF EXISTS Fornitore;

CREATE TABLE Specie(
	NomeSpecie  VARCHAR(7) NOT NULL,
    DensitaPerM2 INT NOT NULL,
    PRIMARY KEY(NomeSpecie)
);

CREATE TABLE Fornitore(
	PartitaIva VARCHAR(100) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    RagioneSociale VARCHAR(100) NOT NULL,
    Indirizzo VARCHAR(250) NOT NULL,
    PRIMARY KEY(PartitaIva)
);

CREATE TABLE Agriturismo (
	IdentificatoreAgriturismo VARCHAR(1) NOT NULL,
    PRIMARY KEY(IdentificatoreAgriturismo)
);

CREATE TABLE Stalla(
	CodiceStalla VARCHAR(100) NOT NULL,
    Agriturismo VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceStalla),
	CONSTRAINT FK_Agriturismo
    FOREIGN KEY (Agriturismo)
    REFERENCES Agriturismo(IdentificatoreAgriturismo)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Locale(
	CodiceLocale VARCHAR(100) NOT NULL,
    Pavimentazione VARCHAR(100) NOT NULL,
    DirezioneCardinale VARCHAR(100) NOT NULL,
    Quarantena VARCHAR(2) NOT NULL, 
    Stalla VARCHAR(100) NOT NULL,
    Larghezza DOUBLE NOT NULL,
    Lunghezza DOUBLE NOT NULL,
    Altezza DOUBLE NOT NULL,
	PRIMARY KEY(CodiceLocale),
    CONSTRAINT FK_Stalla
    FOREIGN KEY (Stalla)
    REFERENCES Stalla(CodiceStalla)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Gruppo_Mungitura(
	TimestampStabilito TIMESTAMP NOT NULL,
    CodiceLocale VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceLocale, TimestampStabilito),
    CONSTRAINT FK_Locale
    FOREIGN KEY (CodiceLocale)
    REFERENCES Locale(CodiceLocale)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);
CREATE TABLE Mangiatoie(
	Tipologia VARCHAR(50) NOT NULL,
    Capacita DOUBLE NOT NULL,
    PRIMARY KEY(Tipologia)
);

CREATE TABLE Abbeveratoi(
	Tipologia VARCHAR(50) NOT NULL,
    Capacita DOUBLE NOT NULL,
    PRIMARY KEY(Tipologia)
);

CREATE TABLE Condizionatori(
	Tipologia VARCHAR(50) NOT NULL,
    PRIMARY KEY(Tipologia)
);

CREATE TABLE Dispositivi_Illuminazione(
	Tipologia VARCHAR(50) NOT NULL,
    PRIMARY KEY(Tipologia)
);

CREATE TABLE Allestimento(
	CodiceLocale VARCHAR(100) NOT NULL,
	NumeroDispCondizionamento INT NOT NULL,
    NumeroMangiatoie INT NOT NULL,
    NumeroDispIlluminazione INT NOT NULL, 
    NumeroAbbeveratoi INT NOT NULL,
    TipoMangiatoie VARCHAR(100) NOT NULL,
    TipoAbbeveratoi VARCHAR(100) NOT NULL,
    TipoCondizionatori VARCHAR(100) NOT NULL,
    TipoIlluminazione VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceLocale),
    CONSTRAINT FK_Locale1
    FOREIGN KEY (CodiceLocale)
    REFERENCES Locale(CodiceLocale)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Mangiatoia
    FOREIGN KEY (TipoMangiatoie)
    REFERENCES Mangiatoie(Tipologia)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    CONSTRAINT FK_Abbeveratoio
    FOREIGN KEY (TipoAbbeveratoi)
    REFERENCES Abbeveratoi(Tipologia)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    CONSTRAINT FK_Condizionatori
    FOREIGN KEY (TipoCondizionatori)
    REFERENCES Condizionatori(Tipologia)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	CONSTRAINT FK_Dispositivi_Illuminazione
    FOREIGN KEY (TipoIlluminazione)
    REFERENCES Dispositivi_Illuminazione(Tipologia)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Singola_Mangiatoia(
	Codice VARCHAR(100) NOT NULL,
    Locale VARCHAR(100) NOT NULL,
	PRIMARY KEY (Codice),
    CONSTRAINT FK_Locale2
    FOREIGN KEY (Locale)
    REFERENCES Locale(CodiceLocale)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE Foraggio(
	CodiceForaggio VARCHAR(100) NOT NULL,
    Glucidi DOUBLE NOT NULL,
    Proteine DOUBLE NOT NULL,
    Fibra DOUBLE NOT NULL,
    Frutta DOUBLE NOT NULL,
    Piante DOUBLE NOT NULL,
    Cereali DOUBLE NOT NULL,
    Kcal_Kg DOUBLE NOT NULL,
    Conservazione VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceForaggio)
);

CREATE TABLE Dati_Cibo(
	Mangiatoia VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    Foraggio VARCHAR(100) NOT NULL,
    QuantitaForaggio DOUBLE NOT NULL,
    PRIMARY KEY(Mangiatoia, Timestamp_),
    CONSTRAINT FK_MangiatoiaCod
    FOREIGN KEY (Mangiatoia)
    REFERENCES Singola_Mangiatoia(Codice)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Foraggio
    FOREIGN KEY (Foraggio)
    REFERENCES Foraggio(CodiceForaggio)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Contenuto_Mangiatoia_Recente(
	Mangiatoia VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    PRIMARY KEY (Mangiatoia, Timestamp_),
	CONSTRAINT FK_DatiCibo
    FOREIGN KEY (Mangiatoia, Timestamp_)
    REFERENCES Dati_Cibo(Mangiatoia, Timestamp_)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Singolo_Abbeveratoio(
	Codice VARCHAR(100) NOT NULL,
    Locale VARCHAR(100) NOT NULL, 
    PRIMARY KEY(Codice),
    CONSTRAINT FK_Locale3
    FOREIGN KEY (Locale)
    REFERENCES Locale(CodiceLocale)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Dati_Acqua(
	Abbeveratoio VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    QuantitaAcqua DOUBLE NOT NULL,
    PRIMARY KEY(Abbeveratoio, Timestamp_),
	CONSTRAINT FK_Dati_Acqua
    FOREIGN KEY (Abbeveratoio)
    REFERENCES Singolo_Abbeveratoio(Codice)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Sali_Minerali(
	Nome VARCHAR(100) NOT NULL,
    PRIMARY KEY(Nome)
);

CREATE TABLE Rilevazione_Sali(
	Abbeveratoio VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    SaleMinerale  VARCHAR(100) NOT NULL,
    QuantitaSale DOUBLE NOT NULL,
    PRIMARY KEY(Abbeveratoio, Timestamp_, SaleMinerale),
    CONSTRAINT FK_Sale
    FOREIGN KEY (SaleMinerale)
    REFERENCES Sali_Minerali(Nome)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	CONSTRAINT FK_Rilevazione_Sali
    FOREIGN KEY (Abbeveratoio, Timestamp_)
    REFERENCES Dati_Acqua(Abbeveratoio, Timestamp_)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Vitamina(
	Nome VARCHAR(100) NOT NULL,
    PRIMARY KEY(Nome)
);

CREATE TABLE Rilevazione_Vitamine(
	Abbeveratoio VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    Vitamina  VARCHAR(100) NOT NULL,
    QuantitaVitamina DOUBLE NOT NULL,
    PRIMARY KEY(Abbeveratoio, Timestamp_, Vitamina),
    CONSTRAINT FK_Vitamina 
    FOREIGN KEY (Vitamina)
    REFERENCES Vitamina(Nome)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	CONSTRAINT FK_Rilevazione_Vitamine
    FOREIGN KEY (Abbeveratoio, Timestamp_)
    REFERENCES Dati_Acqua(Abbeveratoio, Timestamp_)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Singolo_Condizionatore(
	Codice VARCHAR(100) NOT NULL,
    Locale VARCHAR(100) NOT NULL, 
    PRIMARY KEY(Codice),
    CONSTRAINT FK_Locale4
    FOREIGN KEY (Locale)
    REFERENCES Locale(CodiceLocale)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Singolo_Dispositivo_Illuminazione(
	Codice VARCHAR(100) NOT NULL,
    Locale VARCHAR(100) NOT NULL, 
    PRIMARY KEY(Codice),
    CONSTRAINT FK_Locale5
    FOREIGN KEY (Locale)
    REFERENCES Locale(CodiceLocale)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Sensori_Ambiente(
	Codice VARCHAR(100) NOT NULL,
    Locale VARCHAR(100) NOT NULL, 
    PRIMARY KEY(Codice),
    CONSTRAINT FK_Locale6
    FOREIGN KEY (Locale)
    REFERENCES Locale(CodiceLocale)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Rilevazione(
	Sensore VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    Temperatura DOUBLE NOT NULL,
    Umidita DOUBLE NOT NULL,
    PRIMARY KEY(Sensore, Timestamp_),
    CONSTRAINT FK_Sensori_Ambiente
	FOREIGN KEY (Sensore)
    REFERENCES Sensori_Ambiente(Codice)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Rilevazione_Sporcizia(
	Locale VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    LivelloSporcizia INT NOT NULL,
    CompostiVolatili INT NOT NULL,
    PRIMARY KEY(Locale, Timestamp_),
    CONSTRAINT FK_Locale7
    FOREIGN KEY (Locale)
    REFERENCES Locale(CodiceLocale)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
); 
CREATE TABLE Macchinario_Pulizia(
	NomeMacchinario VARCHAR(100) NOT NULL,
    PRIMARY KEY(NomeMacchinario)
);

CREATE TABLE Operatore(
	CodiceOperatore VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceOperatore)
);

CREATE TABLE Intervento_Pulizia(
	CodiceRichiesta VARCHAR(100) NOT NULL,
    Locale VARCHAR(100) NOT NULL,
    IstanteRilevazione TIMESTAMP NOT NULL,
    Macchinario VARCHAR(100),
    Operatore VARCHAR(100),
    PRIMARY KEY(CodiceRichiesta),
	CONSTRAINT FK_Intervento_Pulizia
    FOREIGN KEY (Locale, IstanteRilevazione)
    REFERENCES Rilevazione_Sporcizia(Locale, Timestamp_)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    CONSTRAINT FK_Macchinario
    FOREIGN KEY (Macchinario)
    REFERENCES Macchinario_Pulizia(NomeMacchinario)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    CONSTRAINT FK_Operatore
    FOREIGN KEY (Operatore)
    REFERENCES Operatore(CodiceOperatore)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    UNIQUE (Locale, IstanteRilevazione)
);

CREATE TABLE Pulizia_Locale(
	RichiestaPulizia VARCHAR(100) NOT NULL,
    DataPulizia DATE NOT NULL,
    PRIMARY KEY(RichiestaPulizia),
	CONSTRAINT FK_Pulizia_Locale
    FOREIGN KEY (RichiestaPulizia)
    REFERENCES Intervento_Pulizia(CodiceRichiesta)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Animale (
	Codice VARCHAR(100) NOT NULL,
    Famiglia VARCHAR(100) NOT NULL,
    Razza VARCHAR(100) NOT NULL,
    Peso DOUBLE NOT NULL,
    Altezza INT NOT NULL,
    DataNascita TIMESTAMP NOT NULL,
    DataMorte TIMESTAMP,
    IndicatoreTendenzaRibellione DOUBLE,
    Specie VARCHAR(100) NOT NULL,
    Mangiatoia VARCHAR(100) NOT NULL,
    Abbeveratoio VARCHAR(100) NOT NULL,
    Fornitore VARCHAR(100), 
    DataArrivo VARCHAR(100),
    DataAcquisto VARCHAR(100),
	PRIMARY KEY (Codice),
    CONSTRAINT FK_Specie
    FOREIGN KEY (Specie)
    REFERENCES Specie(NomeSpecie)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Mangiatoia1
    FOREIGN KEY (Mangiatoia)
    REFERENCES Singola_Mangiatoia(Codice)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
	CONSTRAINT FK_Abbeveratoio1
    FOREIGN KEY (Abbeveratoio)
    REFERENCES Singolo_Abbeveratoio(Codice)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    CONSTRAINT FK_Fornitore 
    FOREIGN KEY (Fornitore)
    REFERENCES Fornitore(PartitaIva)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Femmina(
	CodiceAnimale VARCHAR(100) NOT NULL,
    PRIMARY KEY (CodiceAnimale),
    CONSTRAINT FK_AnimaleFemmina
    FOREIGN KEY (CodiceAnimale)
    REFERENCES Animale(Codice)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE Maschio(
	CodiceAnimale VARCHAR(100) NOT NULL,
    PRIMARY KEY (CodiceAnimale),
    CONSTRAINT FK_AnimaleMaschio
    FOREIGN KEY (CodiceAnimale)
    REFERENCES Animale(Codice)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE Veterinario(
	CodiceVeterinario VARCHAR(100) NOT NULL, 
    Indirizzo VARCHAR(100) NOT NULL,
    DataNascita DATE NOT NULL,
    PRIMARY KEY(CodiceVeterinario)
);

CREATE TABLE Tentativo(
	CodiceTentativo VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    Padre VARCHAR(100) NOT NULL,
    Madre VARCHAR(100) NOT NULL,
    VeterinarioTentativo VARCHAR(100) NOT NULL,
    VeterinarioGestazione VARCHAR(100),
    PRIMARY KEY(CodiceTentativo),
    UNIQUE (Timestamp_, Madre, Padre),
	CONSTRAINT FK_Madre
    FOREIGN KEY (Madre)
    REFERENCES Animale(Codice)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    CONSTRAINT FK_Padre
    FOREIGN KEY (Padre)
    REFERENCES Animale(Codice)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	CONSTRAINT FK_VeterinarioTentativo
    FOREIGN KEY (VeterinarioTentativo)
    REFERENCES Veterinario(CodiceVeterinario)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    CONSTRAINT FK_VeterinarioGestazione
    FOREIGN KEY (VeterinarioGestazione)
    REFERENCES Veterinario(CodiceVeterinario)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Nascita(
	Animale VARCHAR(100) NOT NULL,
    CodiceGestazione VARCHAR(100) NOT NULL,
    PRIMARY KEY(Animale, CodiceGestazione),
    CONSTRAINT FK_Figlio
    FOREIGN KEY (Animale)
    REFERENCES Animale(Codice)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    CONSTRAINT FK_Nascita
    FOREIGN KEY (CodiceGestazione)
    REFERENCES Tentativo(CodiceTentativo)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Interruzione_Gravidanza(
	 CodiceGestazione VARCHAR(100) NOT NULL,
     DataFine DATE NOT NULL,
	 PRIMARY KEY(CodiceGestazione),
     CONSTRAINT FK_Interruzione
     FOREIGN KEY (CodiceGestazione)
     REFERENCES Tentativo(CodiceTentativo)
     ON UPDATE CASCADE
     ON DELETE NO ACTION
);

CREATE TABLE Causa_Fine_Gravidanza(
	 CodiceGestazione VARCHAR(100) NOT NULL,
     TipoCausa VARCHAR(100) NOT NULL,
	 PRIMARY KEY(CodiceGestazione, TipoCausa),
     CONSTRAINT FK_Fine_Gravidanza
     FOREIGN KEY (CodiceGestazione)
     REFERENCES Tentativo(CodiceTentativo)
     ON UPDATE CASCADE
     ON DELETE NO ACTION
);

CREATE TABLE Visita(
	CodiceVisita VARCHAR(100) NOT NULL,
    Animale VARCHAR(100) NOT NULL,
    Veterinario VARCHAR(100) NOT NULL,
    DataVisita DATE NOT NULL,
    InterruzioneGravidanza VARCHAR(10),
    Esito VARCHAR(20) NOT NULL,
    PRIMARY KEY (CodiceVisita),
    CONSTRAINT FK_Animale_Visitato
    FOREIGN KEY (Animale)
    REFERENCES Animale(Codice)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	CONSTRAINT FK_Veterinario_Visita
    FOREIGN KEY (Veterinario)
    REFERENCES Veterinario(CodiceVeterinario)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    UNIQUE(Animale, Veterinario, DataVisita)
);

CREATE TABLE Intervento_Programmato(
	CodiceIntervento VARCHAR(100) NOT NULL,
    CodiceGestazione VARCHAR(100) NOT NULL,
    DataVisitaProgrammata DATE NOT NULL,
    CodiceVisita VARCHAR(100),
    PRIMARY KEY(CodiceIntervento),
    CONSTRAINT FK_Visita_Reale
    FOREIGN KEY (CodiceVisita)
    REFERENCES Visita(CodiceVisita)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    CONSTRAINT FK_Intervento_Programmato
    FOREIGN KEY (CodiceGestazione)
    REFERENCES Tentativo(CodiceTentativo)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    UNIQUE(CodiceGestazione, DataVisitaProgrammata)
);

CREATE TABLE Esame(
	CodiceEsame VARCHAR(100) NOT NULL,
    Visita VARCHAR(100) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Data DATE NOT NULL,
    DescrizioneProcedura VARCHAR(100),
	PRIMARY KEY(CodiceEsame),
    CONSTRAINT FK_VisitaEsame
    FOREIGN KEY (Visita)
    REFERENCES Visita(CodiceVisita)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    UNIQUE (Visita, Nome, Data)
);

CREATE TABLE Macchinario(
	NomeMacchinario VARCHAR(100) NOT NULL,
    PRIMARY KEY(NomeMacchinario)
);

CREATE TABLE Utilizzo_Macchinario_Esame(
	CodiceEsame VARCHAR(100) NOT NULL,
    Macchinario VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceEsame, Macchinario),
    CONSTRAINT FK_Macchinario_Esame
    FOREIGN KEY (Macchinario)
    REFERENCES Macchinario(NomeMacchinario)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
	CONSTRAINT FK_Esame
    FOREIGN KEY (CodiceEsame)
    REFERENCES Esame(CodiceEsame)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Diagnosi(
	CodiceVisita VARCHAR(100) NOT NULL,
    MassaGrassa DOUBLE NOT NULL,
    MassaMagra DOUBLE NOT NULL,
    PRIMARY KEY(CodiceVisita),
    CONSTRAINT FK_VisitaDiagnosi
    FOREIGN KEY (CodiceVisita)
    REFERENCES Visita(CodiceVisita)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Indicatori_Oggettivi(
	CodiceVisita VARCHAR(100) NOT NULL,
    IndicatoreCuore VARCHAR(100),
    IndicatorePancreas VARCHAR(100),
    Emocromo VARCHAR(100),
    RispostaOcuolare VARCHAR(100),
    SpessoreZoccolo VARCHAR(100),
    IndicatoreFegato VARCHAR(100),
    PRIMARY KEY(CodiceVisita),
	CONSTRAINT FK_Diagnosi_Oggettiva
    FOREIGN KEY (CodiceVisita)
    REFERENCES Diagnosi(CodiceVisita)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE Indicatori_Soggettivi(
		CodiceVisita VARCHAR(100) NOT NULL,
        LivelloVigilanza VARCHAR(100),
        LivelloDeambulazione VARCHAR(100),
        LivelloIdratazione VARCHAR(100),
        TipoRespirazione VARCHAR(100),
        LucentezzaPelo VARCHAR(100),
        PRIMARY KEY(CodiceVisita),
        CONSTRAINT FK_Diagnosi_Soggettiva
		FOREIGN KEY (CodiceVisita)
		REFERENCES Diagnosi(CodiceVisita)
		ON UPDATE CASCADE
		ON DELETE NO ACTION
);

CREATE TABLE Lesioni(
	CodiceLesione VARCHAR(100) NOT NULL,
    ParteCorpo VARCHAR(100) NOT NULL,
    Tipo VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceLesione),
    UNIQUE (ParteCorpo, Tipo)
);

CREATE TABLE Rilevazione_Lesioni(
	CodiceVisita VARCHAR(100) NOT NULL,
    Lesione VARCHAR(100) NOT NULL,
    Entita VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceVisita, Lesione),
	CONSTRAINT FK_Visita_Lesioni
	FOREIGN KEY (CodiceVisita)
	REFERENCES Indicatori_Soggettivi(CodiceVisita)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Lesione
	FOREIGN KEY (Lesione)
	REFERENCES Lesioni(CodiceLesione)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Disturbi_Comportamentali(
	NomeDisturbo VARCHAR(100) NOT NULL,
    PRIMARY KEY(NomeDisturbo)
);

CREATE TABLE Rilevazione_Disturbi(
	CodiceVisita VARCHAR(100) NOT NULL,
    Disturbo VARCHAR(100) NOT NULL,
    Entita VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceVisita, Disturbo),
	CONSTRAINT FK_Visita_Disturbo
	FOREIGN KEY (CodiceVisita)
	REFERENCES Indicatori_Soggettivi(CodiceVisita)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Disturbo
	FOREIGN KEY (Disturbo)
	REFERENCES Disturbi_Comportamentali(NomeDisturbo)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Patologia(
	Nome VARCHAR(100) NOT NULL,
    PRIMARY KEY(Nome)
);

CREATE TABLE Patologie_Rilevate(
	CodiceRilevazionePatologia VARCHAR(100) NOT NULL,
    DataEsordio DATE NOT NULL,
    DataGuarigione DATE,
    Veterinario VARCHAR(100) NOT NULL,
    Animale VARCHAR(100) NOT NULL,
    Patologia VARCHAR(100) NOT NULL,
    PRIMARY KEY (CodiceRilevazionePatologia),
    CONSTRAINT FK_Patologia_Rilevata
	FOREIGN KEY (Patologia)
	REFERENCES Patologia(Nome)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Animale_Affetto
	FOREIGN KEY (Animale)
	REFERENCES Animale(Codice)
    ON UPDATE CASCADE
	ON DELETE CASCADE ,
    CONSTRAINT FK_Veterinario_Patologia
	FOREIGN KEY (Veterinario)
	REFERENCES Veterinario(CodiceVeterinario)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    UNIQUE (DataEsordio, Animale, Patologia)
);

CREATE TABLE Rilevazione_Patologie(
	CodiceRilevazionePatologia VARCHAR(100) NOT NULL,
    CodiceVisita VARCHAR(100) NOT NULL,
    CONSTRAINT FK_Esordio
	FOREIGN KEY (CodiceRilevazionePatologia)
	REFERENCES Patologie_Rilevate(CodiceRilevazionePatologia)
    ON UPDATE CASCADE
	ON DELETE CASCADE,
    CONSTRAINT FK_Visita_Patologia
	FOREIGN KEY (CodiceVisita)
	REFERENCES Visita(CodiceVisita)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Terapia(
	CodiceTerapia VARCHAR(100) NOT NULL,
    PatologiaRilevata VARCHAR(100) NOT NULL,
    DataInizioTerapia DATE NOT NULL,
    Durata INT NOT NULL,
    PRIMARY KEY(CodiceTerapia),
    CONSTRAINT FK_Esordio_Terapia
	FOREIGN KEY (PatologiaRilevata)
	REFERENCES Patologie_Rilevate(CodiceRilevazionePatologia)
    ON UPDATE CASCADE
	ON DELETE CASCADE,
    UNIQUE (PatologiaRilevata, DataInizioTerapia)
);

CREATE TABLE Farmaco(
	NomeCommerciale VARCHAR(100) NOT NULL,
    PrincipioAttivo VARCHAR(100) NOT NULL,
    PRIMARY KEY(NomeCommerciale)
);

CREATE TABLE Posologia_Farmaco(
	CodicePosologiaFarmacoTerapia VARCHAR(100) NOT NULL,
    CodiceTerapia VARCHAR(100) NOT NULL,
    Farmaco VARCHAR(100) NOT NULL,
    GiorniPausa VARCHAR(250) NOT NULL,
    PRIMARY KEY(CodicePosologiaFarmacoTerapia),
	CONSTRAINT FK_Posologia_Terapia
	FOREIGN KEY (CodiceTerapia)
	REFERENCES Terapia(CodiceTerapia)
    ON UPDATE CASCADE
	ON DELETE CASCADE,
    CONSTRAINT FK_Farmaco
	FOREIGN KEY (Farmaco)
	REFERENCES Farmaco(NomeCommerciale)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    UNIQUE(CodiceTerapia, Farmaco)
);

CREATE TABLE Somministrazione_Per_Ora(
	CodicePosologiaFarmacoTerapia VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    Dosaggio DOUBLE NOT NULL,
    PRIMARY KEY (CodicePosologiaFarmacoTerapia, Timestamp_),
	CONSTRAINT FK_Posologia_Terapia_Farmaco
	FOREIGN KEY (CodicePosologiaFarmacoTerapia)
	REFERENCES Posologia_Farmaco(CodicePosologiaFarmacoTerapia)
    ON UPDATE CASCADE
	ON DELETE CASCADE
);

CREATE TABLE Zona_Agriturismo(
	CodiceZona VARCHAR(100) NOT NULL,
    TipoZona VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceZona)
);

CREATE TABLE Posizione_Animale(
	Animale VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    Latitudine DOUBLE NOT NULL,
    Longitudine DOUBLE NOT NULL,
    LocazioneRecinzioni VARCHAR(250),
    Zona VARCHAR(100) NOT NULL,
    PRIMARY KEY (Animale, Timestamp_),
    CONSTRAINT FK_Posizione_Animale
	FOREIGN KEY (Animale)
	REFERENCES Animale(Codice)
    ON UPDATE CASCADE
	ON DELETE CASCADE,
    CONSTRAINT FK_Zona_Animale
	FOREIGN KEY (Zona)
	REFERENCES Zona_Agriturismo(CodiceZona)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Mungitrice (
	Codice VARCHAR(100) NOT NULL,
    Modello  VARCHAR(100) NOT NULL,
    Marca  VARCHAR(100) NOT NULL,
    PRIMARY KEY(Codice)
);

CREATE TABLE Storico_Posizione_Mungitrice(
	Mungitrice  VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    CoordinateGPS  VARCHAR(100) NOT NULL,
    Zona  VARCHAR(100) NOT NULL,
    PRIMARY KEY(Mungitrice, Timestamp_),
    CONSTRAINT FK_Posizione_Mungitrice
	FOREIGN KEY (Mungitrice)
	REFERENCES Mungitrice(Codice)
    ON UPDATE CASCADE
	ON DELETE CASCADE,
    CONSTRAINT FK_Zona_Mungitrice
	FOREIGN KEY (Zona)
	REFERENCES Zona_Agriturismo(CodiceZona)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Silos(
	Codice VARCHAR(100) NOT NULL,
    LivelloRiempimento DOUBLE NOT NULL,
    Capacita DOUBLE NOT NULL,
    TipoLatteContenuto VARCHAR(100),
    PRIMARY KEY(Codice)
);

CREATE TABLE Dati_Latte_Munto(
	Animale VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    Mungitrice VARCHAR(100) NOT NULL,
    VolumeLatte DOUBLE NOT NULL,
    PRIMARY KEY(Animale, Timestamp_),
	CONSTRAINT FK_Animale_Mungitura
	FOREIGN KEY (Animale)
	REFERENCES Animale(Codice)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Mungitrice_Usata
	FOREIGN KEY (Mungitrice)
	REFERENCES Mungitrice(Codice)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Travaso(
	Animale VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    Silos VARCHAR(100) NOT NULL,
    Quantita DOUBLE NOT NULL,
    PRIMARY KEY(Animale, Timestamp_, Silos),
	CONSTRAINT FK_Silos_Usato
	FOREIGN KEY (Silos)
	REFERENCES Silos(Codice)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Mungitura_Silos
	FOREIGN KEY (Animale, Timestamp_)
	REFERENCES Dati_Latte_Munto(Animale, Timestamp_)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Sostanza_Latte(
	NomeSostanza VARCHAR(100) NOT NULL,
    PRIMARY KEY(NomeSostanza)
);

CREATE TABLE Composizione_Latte(
	Animale VARCHAR(100) NOT NULL,
    Timestamp_ TIMESTAMP NOT NULL,
    Sostanza VARCHAR(100) NOT NULL,
    QuantitaSostanza DOUBLE NOT NULL,
    PRIMARY KEY(Animale, Timestamp_, Sostanza),
    CONSTRAINT FK_Mungitura
	FOREIGN KEY (Animale, Timestamp_)
	REFERENCES Dati_Latte_Munto(Animale, Timestamp_)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
	CONSTRAINT FK_Sost_Latte
	FOREIGN KEY (Sostanza)
	REFERENCES Sostanza_Latte(NomeSostanza)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Formaggio(
	Nome VARCHAR(100) NOT NULL,
    GradoDeperibilita VARCHAR(100) NOT NULL,
    ZonaCreazione VARCHAR(100) NOT NULL,
    PrezzoPerPezzo DOUBLE NOT NULL, 
    TipoPasta VARCHAR(100) NOT NULL,
    Stagionatura INT,
    Specie VARCHAR(100) NOT NULL,
    QuantitaLattePerPezzo DOUBLE NOT NULL,
    PRIMARY KEY(Nome),
    CONSTRAINT FK_Specie_Formaggio
	FOREIGN KEY (Specie)
	REFERENCES Specie(NomeSpecie)
);

CREATE TABLE Fase(
	CodiceFase VARCHAR(100) NOT NULL,
    Formaggio VARCHAR(100) NOT NULL,
    NumeroFase INT NOT NULL,
    DurataFase DOUBLE NOT NULL,
    PRIMARY KEY(CodiceFase),
	CONSTRAINT FK_Formaggio_Fase
	FOREIGN KEY (Formaggio)
	REFERENCES Formaggio(Nome)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    UNIQUE (Formaggio, NumeroFase)
);

CREATE TABLE Parametro(
	Fase VARCHAR(100) NOT NULL,
    NomeParametro VARCHAR(100) NOT NULL,
    Valore DOUBLE NOT NULL,
    PRIMARY KEY(Fase, NomeParametro),
    CONSTRAINT FK_Parametro_Fase
	FOREIGN KEY (Fase)
	REFERENCES Fase(CodiceFase)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Laboratorio(
	CodiceLaboratorio VARCHAR(100) NOT NULL,
    PRIMARY KEY (CodiceLaboratorio)
);

CREATE TABLE Impiegato (
	CodiceImpiegato VARCHAR(100) NOT NULL,
    PRIMARY KEY (CodiceImpiegato)
);

CREATE TABLE Lotto (
	CodiceLotto VARCHAR(100) NOT NULL,
    DataProduzione DATE NOT NULL,
    DataScadenza DATE NOT NULL,
    Laboratorio VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceLotto),
    CONSTRAINT FK_Laboratorio_Produzione
	FOREIGN KEY (Laboratorio)
	REFERENCES Laboratorio(CodiceLaboratorio)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Turno(
	TimestampInizioTurno TIMESTAMP NOT NULL,
    Impiegato VARCHAR(100) NOT NULL,
    Laboratorio VARCHAR(100) NOT NULL,
    Durata INT NOT NULL,
    PRIMARY KEY(TimestampInizioTurno, Impiegato),
	CONSTRAINT FK_Impiegato_Turno
	FOREIGN KEY (Impiegato)
	REFERENCES Impiegato(CodiceImpiegato)
    ON UPDATE CASCADE
	ON DELETE CASCADE,
	CONSTRAINT FK_Laboratorio_Turno
	FOREIGN KEY (Laboratorio)
	REFERENCES Laboratorio(CodiceLaboratorio)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Prodotto(
	CodiceProdotto VARCHAR(100) NOT NULL,
    Peso DOUBLE NOT NULL,
    Formaggio VARCHAR(100) NOT NULL,
    Lotto VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceProdotto),
    CONSTRAINT FK_Formaggio_Prodotto
	FOREIGN KEY (Formaggio)
	REFERENCES Formaggio(Nome)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Lotto_Prodotto
	FOREIGN KEY (Lotto)
	REFERENCES Lotto(CodiceLotto)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Fasi_Produzione(
	CodiceFase VARCHAR(100) NOT NULL,
    NumeroFase INT NOT NULL,
    Prodotto VARCHAR(100) NOT NULL,
    DurataFase DOUBLE NOT NULL,
    PRIMARY KEY (CodiceFase),
	CONSTRAINT FK_Fase_Prodotto
	FOREIGN KEY (Prodotto)
	REFERENCES Prodotto(CodiceProdotto)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    UNIQUE (NumeroFase, Prodotto)
);

CREATE TABLE Parametro_Reale(
	Fase VARCHAR(100) NOT NULL,
    NomeParametro VARCHAR(100) NOT NULL,
    Valore DOUBLE NOT NULL,
    PRIMARY KEY(Fase, NomeParametro),
    CONSTRAINT FK_Fase_Parametro
	FOREIGN KEY (Fase)
	REFERENCES Fasi_Produzione(CodiceFase)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Estrazione_Latte(
	Silos VARCHAR(100) NOT NULL,
    Prodotto VARCHAR(100) NOT NULL,
    QuantitaLatte DOUBLE NOT NULL,
    PRIMARY KEY(Silos, Prodotto),
	CONSTRAINT FK_Silos_Prodotto
	FOREIGN KEY (Silos)
	REFERENCES Silos(Codice)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Prodotto_Latte
	FOREIGN KEY (Prodotto)
	REFERENCES Prodotto(CodiceProdotto)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Magazzino(
	CodiceMagazzino VARCHAR(100) NOT NULL,
    PRIMARY KEY (CodiceMagazzino)
);

CREATE TABLE Scaffale_Magazzino(
	CodiceScaffale VARCHAR(100) NOT NULL,
    Magazzino VARCHAR(100) NOT NULL,
    NumeroPostazioni INT NOT NULL,
    ScaffaleSuccessivo VARCHAR(100),
    TimestampUltimoInserimento TIMESTAMP,
    TimestampUltimaEstrazione TIMESTAMP,
    SpazioDisponibile INT NOT NULL,
    PRIMARY KEY(CodiceScaffale),
    CONSTRAINT FK_Magazzino_Scaffale
	FOREIGN KEY (Magazzino)
	REFERENCES Magazzino(CodiceMagazzino)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Magazzino_Scaffale_SUCC
	FOREIGN KEY (ScaffaleSuccessivo)
	REFERENCES Scaffale_Magazzino(CodiceScaffale)
    ON UPDATE NO ACTION
	ON DELETE NO ACTION
);

CREATE TABLE Allocazione_Magazzino(
	Prodotto VARCHAR(100) NOT NULL,
    Scaffale VARCHAR(100) NOT NULL,
    TimestampInserimento TIMESTAMP NOT NULL,
    TimestampPrelievo TIMESTAMP,
    PRIMARY KEY (Prodotto),
    CONSTRAINT FK_Scaffale_Prod_Magazzino
	FOREIGN KEY (Scaffale)
	REFERENCES Scaffale_Magazzino(CodiceScaffale)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Prodotto_Magazzino
	FOREIGN KEY (Prodotto)
	REFERENCES Prodotto(CodiceProdotto)
    ON UPDATE NO ACTION
	ON DELETE NO ACTION
);

CREATE TABLE Disponibilita_Prodotto(
	Prodotto VARCHAR(100) NOT NULL,
    Scaffale VARCHAR(100) NOT NULL,
    TimestampInserimento TIMESTAMP NOT NULL,
    PRIMARY KEY(Prodotto),
    CONSTRAINT FK_Scaffale_ProdDisp_Magazzino
	FOREIGN KEY (Scaffale)
	REFERENCES Scaffale_Magazzino(CodiceScaffale)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Prodotto_Disp
	FOREIGN KEY (Prodotto)
	REFERENCES Prodotto(CodiceProdotto)
    ON UPDATE no action
	ON DELETE NO ACTION
);

CREATE TABLE Cantina(
	CodiceCantina VARCHAR(100) NOT NULL,
    Formaggio VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceCantina),
	CONSTRAINT FK_Formaggio_Cantina
	FOREIGN KEY (Formaggio)
	REFERENCES Formaggio(Nome)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Rilevazione_Dati_Impianti_Condizionamento(
	Cantina VARCHAR(100) NOT NULL,
    Timestamp_ VARCHAR(100) NOT NULL,
    Temperatura DOUBLE NOT NULL,
    LivelloVentilazione DOUBLE NOT NULL,
    LivelloUmidita DOUBLE NOT NULL,
    PRIMARY KEY(Cantina, Timestamp_),
    CONSTRAINT FK_Rilevazione_Cantina
	FOREIGN KEY (Cantina)
	REFERENCES Cantina(CodiceCantina)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Scaffale_Cantina(
	CodiceScaffale VARCHAR(100) NOT NULL,
    Cantina VARCHAR(100) NOT NULL,
    NumeroPostazioni INT NOT NULL,
    ScaffaleSuccessivo VARCHAR(100),
    TimestampUltimoInserimento TIMESTAMP,
    TimestampUltimaEstrazione TIMESTAMP,
    SpazioDisponibile INT NOT NULL,
    PRIMARY KEY (CodiceScaffale),
	CONSTRAINT FK_Cantina_Scaffale
	FOREIGN KEY (Cantina)
	REFERENCES Cantina(CodiceCantina)
    ON UPDATE NO ACTION
	ON DELETE NO ACTION,
    CONSTRAINT FK_Cantina_Scaffale_succ
	FOREIGN KEY (ScaffaleSuccessivo)
	REFERENCES Scaffale_Cantina(CodiceScaffale)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Allocazione_Cantina(
	Scaffale VARCHAR(100) NOT NULL,
    Prodotto VARCHAR(100) NOT NULL,
    TimestampInserimento TIMESTAMP NOT NULL,
    TimestampPrelievo TIMESTAMP ,
    PRIMARY KEY(Scaffale, Prodotto),
	CONSTRAINT FK_Scaffale_Prod_Cantina
	FOREIGN KEY (Scaffale)
	REFERENCES Scaffale_Cantina(CodiceScaffale)
    ON UPDATE NO ACTION
	ON DELETE NO ACTION,
    CONSTRAINT FK_Prodotto_Cantina
	FOREIGN KEY (Prodotto)
	REFERENCES Prodotto(CodiceProdotto)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Utente(
	CodFiscale VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodFiscale)
);

CREATE TABLE Registrato(
	CodFiscale VARCHAR(100) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Cognome VARCHAR(100) NOT NULL,
    CodiceCarta VARCHAR(100) NOT NULL,
    Ente VARCHAR(100) NOT NULL,
    Tipologia VARCHAR(100) NOT NULL,
    Numero VARCHAR(100) NOT NULL,
    Scadenza DATE NOT NULL,
    Indirizzo VARCHAR(250) NOT NULL,
    DataIscrizione DATE NOT NULL,
    PRIMARY KEY(CodFiscale),
	CONSTRAINT FK_Utente_Registrato
	FOREIGN KEY (CodFiscale)
	REFERENCES Utente(CodFiscale)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    UNIQUE(Ente, Tipologia, Numero)
);


CREATE TABLE Account(
	NomeUtente VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    RispostaDomanda VARCHAR(250) NOT NULL,
    CodFiscale VARCHAR(100) NOT NULL,
    PRIMARY KEY(NomeUtente),
    CONSTRAINT FK_Account_Utente
	FOREIGN KEY (CodFiscale)
	REFERENCES Utente(CodFiscale)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    UNIQUE (CodFiscale)
);

CREATE TABLE Ordine (
	CodOrdine VARCHAR(100) NOT NULL,
    Account VARCHAR(100) NOT NULL,
    StatoOrdine VARCHAR(100) NOT NULL,
    DataOrdine TIMESTAMP NOT NULL,
    SpesaTotale DOUBLE NOT NULL,
    PRIMARY KEY(CodOrdine),
    CONSTRAINT FK_Account_Ordine
	FOREIGN KEY (Account)
	REFERENCES Account(NomeUtente)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Pagamento (
	CodOrdine VARCHAR(100) NOT NULL,
    DataPagamento DATE NOT NULL,
    PRIMARY KEY(CodOrdine),
	CONSTRAINT FK_Pagamento_Ordine
	FOREIGN KEY (CodOrdine)
	REFERENCES Ordine(CodOrdine)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Spedizione (
	CodSpedizione VARCHAR(100) NOT NULL,
    CodOrdine VARCHAR(100) NOT NULL,
    DataConsegnaPrevista DATE NOT NULL,
    StatoSpedizione VARCHAR(100) NOT NULL,
    TimestampConsegna TIMESTAMP,
    PRIMARY KEY(CodSpedizione), 
	CONSTRAINT FK_Ordine_Spedizione
	FOREIGN KEY (CodOrdine)
	REFERENCES Ordine(CodOrdine)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    UNIQUE(CodOrdine)
);

CREATE TABLE HUB_Smistamento(
	CodiceHUB VARCHAR(100) NOT NULL,
    IndirizzoHUB VARCHAR(250) NOT NULL,
    PRIMARY KEY(CodiceHUB)
);

CREATE TABLE Rilevazioni (
	CodSpedizione VARCHAR(100) NOT NULL,
    TimestampRilevazione TIMESTAMP NOT NULL,
    HUB VARCHAR(100) NOT NULL,
    UltimoHUB VARCHAR(2) NOT NULL,
    PRIMARY KEY(CodSpedizione, TimestampRilevazione),
	CONSTRAINT FK_Rilevazione_Spedizione
	FOREIGN KEY (CodSpedizione)
	REFERENCES Spedizione(CodSpedizione)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Rilevazione_HUB
	FOREIGN KEY (HUB)
	REFERENCES HUB_Smistamento(CodiceHUB)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Prodotto_Ordine(
	CodiceProdotto VARCHAR(100) NOT NULL,
    Reso DATE,
    Peso DOUBLE NOT NULL,
    CodOrdine VARCHAR(100) NOT NULL,
    Formaggio VARCHAR(100) NOT NULL,
    ProdottoReale VARCHAR(100),
    PRIMARY KEY(CodiceProdotto),
    CONSTRAINT FK_Ordine_Prodotto
	FOREIGN KEY (CodOrdine)
	REFERENCES Ordine(CodOrdine)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Prodotto_Reale
	FOREIGN KEY (ProdottoReale)
	REFERENCES Prodotto(CodiceProdotto)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Formaggio_Ordine
	FOREIGN KEY (Formaggio)
	REFERENCES Formaggio(Nome)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Parametri_Recensione(
	Prodotto VARCHAR(100) NOT NULL,
    Gusto INT NOT NULL,
    Conservazione INT NOT NULL,
    Qualita INT NOT NULL,
    Gradimento INT NOT NULL,
    PRIMARY KEY(Prodotto),
    CONSTRAINT FK_Recensione_Prodotto
	FOREIGN KEY (Prodotto)
	REFERENCES Prodotto_Ordine(CodiceProdotto)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Testo(
	Prodotto VARCHAR(100) NOT NULL,
    OpinioneConsumatore TEXT NOT NULL,
    PRIMARY KEY (Prodotto),
    CONSTRAINT FK_RecensioneTesto_Prodotto
	FOREIGN KEY (Prodotto)
	REFERENCES Parametri_Recensione(Prodotto)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);


CREATE TABLE Prenotazione(
	CodPrenotazione VARCHAR(100) NOT NULL,
    DataPrenotazione DATE NOT NULL,
    DataCheckIn DATE NOT NULL,
    DataCheckOut DATE NOT NULL,
    Utente VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodPrenotazione),
    CONSTRAINT FK_Utente_Prenotazione
	FOREIGN KEY (Utente)
	REFERENCES Utente(CodFiscale)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Servizi_Aggiuntivi(
	NomeServizio VARCHAR(100) NOT NULL,
    CostoGiornaliero INT NOT NULL,
    PRIMARY KEY(NomeServizio)
);

CREATE TABLE Richiesta_Optional(
	CodPrenotazione VARCHAR(100) NOT NULL,
    Servizio VARCHAR(100) NOT NULL,
    DataInizio DATE NOT NULL,
    DataFine DATE NOT NULL,
    PRIMARY KEY(CodPrenotazione, Servizio),
    CONSTRAINT FK_Richiesta_Prenotazione
	FOREIGN KEY (CodPrenotazione)
	REFERENCES Prenotazione(CodPrenotazione)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
	CONSTRAINT FK_Richiesta_Optional
	FOREIGN KEY (Servizio)
	REFERENCES Servizi_Aggiuntivi(NomeServizio)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Stanza_Semplice(
	CodiceStanza VARCHAR(100) NOT NULL,
    CostoGiornaliero INT NOT NULL,
    TipoLetto VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceStanza)
);

CREATE TABLE Suite(
	CodiceStanza VARCHAR(100) NOT NULL,
    CostoGiornaliero INT NOT NULL,
    NLettiMatrimoniali INT NOT NULL,
    NLettiSingoli INT NOT NULL,
    PRIMARY KEY(CodiceStanza)
);

CREATE TABLE Riservazione_Stanza_Semplice(
	CodiceStanza VARCHAR(100) NOT NULL,
    CodicePrenotazione VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceStanza, CodicePrenotazione),
    CONSTRAINT FK_Prenotazione_Stanza_Semplice
	FOREIGN KEY (CodicePrenotazione)
	REFERENCES Prenotazione(CodPrenotazione)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Stanza_Semplice
	FOREIGN KEY (CodiceStanza)
	REFERENCES Stanza_Semplice(CodiceStanza)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Riservazione_Suite(
	CodiceStanza VARCHAR(100) NOT NULL,
    CodicePrenotazione VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceStanza, CodicePrenotazione),
    CONSTRAINT FK_Prenotazione_Suite
	FOREIGN KEY (CodicePrenotazione)
	REFERENCES Prenotazione(CodPrenotazione)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Suite
	FOREIGN KEY (CodiceStanza)
	REFERENCES Suite(CodiceStanza)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Pagamento_Soggiorno(
	CodPrenotazione VARCHAR(100) NOT NULL,
    Timestamp_ VARCHAR(100) NOT NULL,
    TipoPagamento VARCHAR(100) NOT NULL,
    CifraPagata INT NOT NULL,
    PRIMARY KEY(CodPrenotazione, Timestamp_),
    CONSTRAINT FK_Prenotazione_Pagamento
	FOREIGN KEY (CodPrenotazione)
	REFERENCES Prenotazione(CodPrenotazione)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Guida(
	CodiceGuida VARCHAR(100) NOT NULL,
    Cognome VARCHAR(100) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    PRIMARY KEY(CodiceGuida)
);

CREATE TABLE Escursione(
	CodiceEscursione VARCHAR(100) NOT NULL,
    Guida VARCHAR(100) NOT NULL,
    OraInizio VARCHAR(100) NOT NULL,
    Data DATE NOT NULL,
    MassimoPartecipanti INT NOT NULL,
    PRIMARY KEY (CodiceEscursione),
    CONSTRAINT FK_Guida_Escursione
	FOREIGN KEY (Guida)
	REFERENCES Guida(CodiceGuida)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    UNIQUE(Guida, OraInizio, Data)
    
);

CREATE TABLE Prenota_Escursione(
	Cliente VARCHAR(100) NOT NULL,
    Escursione VARCHAR(100) NOT NULL,
    DataPrenotazione DATE NOT NULL,
    Partecipanti INT NOT NULL,
    PRIMARY KEY (Cliente, Escursione),
    CONSTRAINT FK_Escursione_Prenotata
	FOREIGN KEY (Escursione)
	REFERENCES Escursione(CodiceEscursione)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Escursione_Cliente
	FOREIGN KEY (Cliente)
	REFERENCES Utente(CodFiscale)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);

CREATE TABLE Area(
	CodArea VARCHAR(100) NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (CodArea)
);

CREATE TABLE Tappa(
	Escursione VARCHAR (100) NOT NULL,
    TimestampArrivo TIMESTAMP NOT NULL,
    Area VARCHAR (100) NOT NULL,
    TimestampSpostamento TIMESTAMP NOT NULL,
    PRIMARY KEY(Escursione, TimestampArrivo),
    CONSTRAINT FK_Escursione_Tappa
	FOREIGN KEY (Escursione)
	REFERENCES Escursione(CodiceEscursione)
    ON UPDATE CASCADE
	ON DELETE NO ACTION,
    CONSTRAINT FK_Escursione_Area
	FOREIGN KEY (Area)
	REFERENCES Area(CodArea)
    ON UPDATE CASCADE
	ON DELETE NO ACTION
);