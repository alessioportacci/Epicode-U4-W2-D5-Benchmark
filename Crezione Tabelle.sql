CREATE TABLE Anagrafica
(
	IDAnagrafica INT PRIMARY KEY IDENTITY,
	Cognome NVARCHAR(100),
	Nome NVARCHAR(100),
	Indirizzo NVARCHAR(200),
	Citta NVARCHAR(50),
	CAP NVARCHAR(10),
	CodFiscale NVARCHAR(15) UNIQUE
)

CREATE TABLE TipoViolazione
(
	IdViolazione INT PRIMARY KEY IDENTITY,
	Descrizione NVARCHAR(300) NOT NULL
)

CREATE TABLE Verbale
(
	IdVerbale INT PRIMARY KEY IDENTITY,
	DataViolazione DATETIME,
	IndirizzoViolazione NVARCHAR(200),
	NominativoAgente NVARCHAR(300),
	DataTrascrizioneVerbale DATETIME,
	Importo MONEY,
	DecurtamentoPunti INT,
	Contestata BIT,			--Aggiunta successivamente a causa dell'esercizio 10

	--Collegamento con la tipologia di violazione
	FKTipoViolazione INT,
	FOREIGN KEY (FKTipoViolazione) REFERENCES TipoViolazione(IdViolazione),
	--Collegamento sul povero utente che sta ricevendo un verbale
	FKAnagrafica INT,
	FOREIGN KEY (FKAnagrafica) REFERENCES Anagrafica(IDAnagrafica)
)