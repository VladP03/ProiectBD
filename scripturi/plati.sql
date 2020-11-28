-- inserari bune
INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'card',
	TO_DATE('31.03.2017','DD.MM.YYYY'),
	500,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'numerar',
	TO_DATE('18.02.2018','DD.MM.YYYY'),
	500,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Buliga' AND prenume = 'Diana')
);

INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'card',
	TO_DATE('11.04.2018','DD.MM.YYYY'),
	900,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Baltariu' AND prenume = 'John')
);

INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'card',
	TO_DATE('19.04.2018','DD.MM.YYYY'),
	900,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Butnaru' AND prenume = 'Silviu')
);

INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'card',
	TO_DATE('29.07.2018','DD.MM.YYYY'),
	500,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Prelipcean' AND prenume = 'Iulian')
    
);

INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'card',
	TO_DATE('10.01.2019','DD.MM.YYYY'),
	1700,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Arcana' AND prenume = 'Geanina')
);

INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'card',
	TO_DATE('15.03.2019','DD.MM.YYYY'),
	900,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Paval' AND prenume = 'Mihaela')
);

INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'numerar',
	TO_DATE('22.05.2019','DD.MM.YYYY'),
	900,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Bejenariu' AND prenume = 'Razvan')
);

INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'card',
	TO_DATE('07.07.2019','DD.MM.YYYY'),
	500,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Toscariu' AND prenume = 'Alberto')
);

INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'numerar',
	TO_DATE('31.03.2020','DD.MM.YYYY'),
	1700,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Balta' AND prenume = 'Gabriel')
);

-- testarea constrangerilor
-- tipul platii poate fi doar 'numerar' sau 'card'
INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'bistari',
	TO_DATE('31.03.2017','DD.MM.YYYY'),
	500,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

-- suma poate fi doar 500, 900 sau 1700
INSERT INTO plati(tip, data_tranzactie, suma, index_proprietar) VALUES (
	'numerar',
	TO_DATE('31.03.2017','DD.MM.YYYY'),
	700,
        (SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);