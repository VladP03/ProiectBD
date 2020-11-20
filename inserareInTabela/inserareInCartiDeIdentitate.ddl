-- 10 inserari bune

INSERT INTO carti_de_identitate VALUES (
    '1000000000000',
    TO_DATE('31.03.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Tudor Vladimirescu',
    'IS12345678',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000001',
    TO_DATE('18.10.1999', 'DD.MM.YYYY'),
    'F',
    'Bulevard Alexandru cel Bun',
    'IS09764367',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Buliga' AND prenume = 'Diana')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000002',
    TO_DATE('31.05.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Arbore Luca',
    'IS12345679',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Baltariu' AND prenume = 'John')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000003',
    TO_DATE('26.12.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Bas Ceaus',
    'IS12345680',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Butnaru' AND prenume = 'Silviu')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000004',
    TO_DATE('06.02.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Cihac Iosif',
    'IS12345681',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Prelipcean' AND prenume = 'Iulian')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000005',
    TO_DATE('05.07.1999', 'DD.MM.YYYY'),
    'F',
    'Strada Dacia',
    'IS12345682',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Paval' AND prenume = 'Mihaela')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000006',
    TO_DATE('18.02.2000', 'DD.MM.YYYY'),
    'F',
    'Strada Egalitatii',
    'IS12345685',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Arcana' AND prenume = 'Geanina')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000007',
    TO_DATE('1.05.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Fulger',
    'IS12345691',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Bejenariu' AND prenume = 'Razvan')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000008',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'IS12345693',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Toscariu' AND prenume = 'Alberto')
);

INSERT INTO carti_de_identitate VALUES (
    '1000000000009',
    TO_DATE('29.10.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Moldovei',
   'IS12345699',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Balta' AND prenume = 'Gabriel')
);
