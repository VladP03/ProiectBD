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
