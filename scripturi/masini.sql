-- 10 inserari bune

INSERT INTO masini VALUES (
	'VW',
	'Golf',
	'NT-01-ANV',
	'negru',
	1989,
    	TO_DATE('10.10.2014', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

INSERT INTO masini VALUES (
	'VW',
	'Golf',
	'SV-99-DIA',
	'alb',
	1598,
    	TO_DATE('03.03.2001', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Buliga' AND prenume = 'Diana')
);

INSERT INTO masini VALUES (
	'VW',
	'Jetta',
	'BT-09-BUT',
	'maro',
	1600,
    	TO_DATE('17.05.2015', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Baltariu' AND prenume = 'John')
);

INSERT INTO masini VALUES (
	'BMW',
	'Seria 3',
	'BT-19-SIL',
	'negru',
	1989,
    	TO_DATE('21.02.2018', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Butnaru' AND prenume = 'Silviu')
);

INSERT INTO masini VALUES (
	'VW',
	'Polo',
	'SV-99-IUL',
	'gri',
	1398,
    	TO_DATE('12.12.2001', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Prelipcean' AND prenume = 'Iulian')
);

INSERT INTO masini VALUES (
	'VW',
	'Golf Plus',
	'NT-18-BGA',
	'negru',
	1899,
    	TO_DATE('17.06.2007', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Arcana' AND prenume = 'Geanina')
);

INSERT INTO masini VALUES (
	'Renault',
	'Laguna',
	'IS-99-RAZ',
	'gri',
	2198,
    	TO_DATE('13.04.2018', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paval' AND prenume = 'Mihaela')
);

INSERT INTO masini VALUES (
	'Audi',
	'A4',
	'IS-10-RAZ',
	'rosu',
	1989,
    	TO_DATE('28.08.2012', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Bejenariu' AND prenume = 'Razvan')
);

INSERT INTO masini VALUES (
	'Audi',
	'A6',
	'IS-01-ALB',
	'verde',
	1989,
    	TO_DATE('12.05.2016', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Toscariu' AND prenume = 'Alberto')
);

INSERT INTO masini VALUES (
	'BMW',
	'X1',
	'BT-01-GAB',
	'maro',
	1899,
    	TO_DATE('19.03.2014', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Balta' AND prenume = 'Gabriel')
);

INSERT INTO masini VALUES (
	'Audi',
	'18',
	'B-111-ANV',
	'gri',
	1899,
    	TO_DATE('14.09.2017', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);



-- testarea constrangerilor
-- marca contine cifre
INSERT INTO masini VALUES (
	'Pors4che',
	'911',
	'B-999-ANV',
	'negru',
	1989,
    	TO_DATE('10.10.2014', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- numarul de inmatriculare se afla deja in tabela
INSERT INTO masini VALUES (
	'Porsche',
	'911',
	'NT-01-ANV',
	'negru',
	1989,
    	TO_DATE('10.10.2014', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- numarul de inmatriculare sa fie in una din formele : L-DD-LLL, L-DDD-LLL, LL-DD-LLL ( L-litera, D-cifra )
INSERT INTO masini VALUES (
	'Porsche',
	'911',
	'NT-1-ANV',
	'negru',
	1989,
    	TO_DATE('10.10.2014', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);
INSERT INTO masini VALUES (
	'Porsche',
	'911',
	'NT-111-ANV',
	'negru',
	1989,
    	TO_DATE('10.10.2014', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- capacitatea motor sa fie intre 0 si 9999
INSERT INTO masini VALUES (
	'Porsche',
	'911',
	'B-999-ANV',
	'negru',
	99999,
    	TO_DATE('10.10.2014', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);


-- culoarea sa nu contina cifre
INSERT INTO masini VALUES (
	'Porsche',
	'911',
	'B-999-ANV',
	'negr4u',
	9999,
    	TO_DATE('10.10.2014', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- data fabricatie sa fie mai mica decat data curenta
INSERT INTO masini VALUES (
	'Porsche',
	'911',
	'B-999-ANV',
	'negr4u',
	9999,
    	TO_DATE('10.10.2021', 'DD.MM.YYYY'),
	(SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);
