-- 10 inserari bune

INSERT INTO carti_de_identitate VALUES (
    '1000000000000',
    'IS',
    '123456',
    TO_DATE('31.03.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Tudor Vladimirescu',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000001',
    'IS',
    '097643',
    TO_DATE('18.10.1999', 'DD.MM.YYYY'),
    'F',
    'Bulevard Alexandru cel Bun',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Buliga' AND prenume = 'Diana')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000002',
    'IS',
    '523456',
    TO_DATE('31.05.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Arbore Luca',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Baltariu' AND prenume = 'John')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000003',
    'IS',
    '123459',  
    TO_DATE('26.12.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Bas Ceaus',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Butnaru' AND prenume = 'Silviu')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000004',
    'IS',
    '126456',   
    TO_DATE('06.02.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Cihac Iosif',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Prelipcean' AND prenume = 'Iulian')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000005',
    'IS',
    '120456',
    TO_DATE('05.07.1999', 'DD.MM.YYYY'),
    'F',
    'Strada Dacia',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Paval' AND prenume = 'Mihaela')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000006',
    'IS',
    '123496',
    TO_DATE('18.02.2000', 'DD.MM.YYYY'),
    'F',
    'Strada Egalitatii',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Arcana' AND prenume = 'Geanina')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000007',
    'IS',
    '323456',
    TO_DATE('1.05.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Fulger',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Bejenariu' AND prenume = 'Razvan')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000008',
    'IS',
    '123406',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Toscariu' AND prenume = 'Alberto')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000009',
    'IS',
    '823456',
    TO_DATE('29.10.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Moldovei',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Balta' AND prenume = 'Gabriel')
);

-- testarea constrangerilor
-- cnp trebuie sa fie unique
INSERT INTO carti_de_identitate VALUES (
    '1000000000008',
    'IS',
    '123457',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- serie_nr trebuie sa fie unique
INSERT INTO carti_de_identitate VALUES (
    '1000000600008',
    'IS',
    123456',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

