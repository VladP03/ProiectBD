-- 10 inserari bune

INSERT INTO detalii_masina VALUES (
	'VW',
	'Golf',
	'NT-01-ANV',
	'negru',
	1989,
	2014,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

INSERT INTO detalii_masina VALUES (
	'VW',
	'Golf',
	'SV-99-DIA',
	'rosu',
	1598,
	2001,
	'EURO3',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Buliga' AND prenume = 'Diana')
);

INSERT INTO detalii_masina VALUES (
	'VW',
	'Jetta',
	'BT-09-BUT',
	'maro',
	1600,
	2014,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Baltariu' AND prenume = 'John')
);

INSERT INTO detalii_masina VALUES (
	'BMW',
	'Seria 3',
	'BT-19-SIL',
	'negru',
	1989,
	2014,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Butnaru' AND prenume = 'Silviu')
);

INSERT INTO detalii_masina VALUES (
	'VW',
	'Polo',
	'SV-99-IUL',
	'gri',
	1398,
	2001,
	'EURO4',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Prelipcean' AND prenume = 'Iulian')
);

INSERT INTO detalii_masina VALUES (
	'VW',
	'Golf Plus',
	'NT-18-BGA',
	'negru',
	1899,
	2007,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Arcana' AND prenume = 'Geanina')
);

INSERT INTO detalii_masina VALUES (
	'Renault',
	'Laguna',
	'IS-99-RAZ',
	'gri',
	2198,
	2018,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paval' AND prenume = 'Mihaela')
);

INSERT INTO detalii_masina VALUES (
	'Audi',
	'A4',
	'IS-10-RAZ',
	'rosu',
	1989,
	2014,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Bejenariu' AND prenume = 'Razvan')
);

INSERT INTO detalii_masina VALUES (
	'Audi',
	'A6',
	'IS-01-ALB',
	'verde',
	1989,
	2016,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Toscariu' AND prenume = 'Alberto')
);

INSERT INTO detalii_masina VALUES (
	'BMW',
	'X1',
	'BT-01-GAB',
	'maro',
	1899,
	2012,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Balta' AND prenume = 'Gabriel')
);


-- pentru testarea constrangerilor
-- numarul de inmatriculare se afla deja in tabela
INSERT INTO detalii_masina VALUES (
	'BMW',
	'X7',
	'B-01-ANV',
	'negru',
	3000,
	2020,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

-- numarul de inmatriculare sa fie in una din formele : L-DD-LLL, L-DDD-LLL, LL-DD-LLL ( L-litera, D-cifra )
INSERT INTO detalii_masina VALUES (
	'BMW',
	'X7',
	'B-1-ANV',
	'negru',
	3000,
	2020,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

-- capacitatea motor sa fie intre 1 si 9999
INSERT INTO detalii_masina VALUES (
	'BMW',
	'X7',
	'NT-01-ANV',
	'negru',
	99999,
	2020,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

-- culoarea sa nu contina cifre
INSERT INTO detalii_masina VALUES (
	'BMW',
	'X7',
	'B-01-ANV',
	'neg4ru',
	3000,
	2020,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

-- an fabricatie sa fie intre 1950 si 2020
INSERT INTO detalii_masina VALUES (
	'BMW',
	'X7',
	'B-01-ANV',
	'negru',
	3000,
	2022,
	'EURO5',
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
); 
