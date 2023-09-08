-- 1
SELECT COUNT(*) as NumeroVerbali
FROM Verbale

--2
SELECT COUNT(*) as NumeroVerbaliPerAnagrafica
FROM Verbale
GROUP BY FKAnagrafica

--3
SELECT COUNT(*) as NumeroVerbaliPerViolazione
FROM Verbale
GROUP BY FKTipoViolazione

--4
SELECT SUM(DecurtamentoPunti) as SommaPuntiDecurtati
FROM Verbale
GROUP BY FKAnagrafica

--5
SELECT Cognome, 
	   Nome, 
	   DataViolazione, 
	   IndirizzoViolazione,
	   Importo,
	   DecurtamentoPunti
FROM Verbale
INNER JOIN Anagrafica ON Anagrafica.IDAnagrafica = FKAnagrafica
WHERE Citta = 'Palermo'

--6
SELECT Cognome, 
	   Nome, 
	   DataViolazione, 
	   IndirizzoViolazione,
	   Importo,
	   DecurtamentoPunti
FROM Verbale
INNER JOIN Anagrafica ON Anagrafica.IDAnagrafica = FKAnagrafica
WHERE DataViolazione BETWEEN '01-02-09' AND '01-07-09'

--7
SELECT SUM(Importo) as TotaleImportoPerAnagrafico, 
	   FkAnagrafica
FROM Verbale
GROUP BY FKAnagrafica

--8 
SELECT *
FROM Anagrafica
WHERE Citta = 'Palermo'

--10
SELECT NominativoAgente,
	   COUNT(Contestata) as NumeroContestamenti
FROM Verbale
WHERE Contestata = 1
GROUP BY NominativoAgente

--11
SELECT Cognome, 
	   Nome, 
	   IndirizzoViolazione,
	   DataViolazione, 
	   Importo,
	   DecurtamentoPunti
FROM Verbale
INNER JOIN Anagrafica ON Anagrafica.IDAnagrafica = FKAnagrafica
WHERE DecurtamentoPunti > 5

--12
SELECT Cognome, 
	   Nome, 
	   IndirizzoViolazione,
	   DataViolazione, 
	   Importo,
	   DecurtamentoPunti
FROM Verbale
INNER JOIN Anagrafica ON Anagrafica.IDAnagrafica = FKAnagrafica
WHERE Importo > 700
