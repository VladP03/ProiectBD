-- 10 inserari bune

INSERT INTO carti_de_identitate VALUES (
    '1990331220000',
    'IS',
    '123456',
    TO_DATE('31.03.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Tudor Vladimirescu',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' AND prenume = 'Vlad')
);

INSERT INTO carti_de_identitate VALUES (
    '2991018220001',
    'IS',
    '097643',
    TO_DATE('18.10.1999', 'DD.MM.YYYY'),
    'F',
    'Bulevard Alexandru cel Bun',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Buliga' AND prenume = 'Diana')
);

INSERT INTO carti_de_identitate VALUES (
    '1990531220002',
    'IS',
    '523456',
    TO_DATE('31.05.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Arbore Luca',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Baltariu' AND prenume = 'John')
);

INSERT INTO carti_de_identitate VALUES (
    '1991226220003',
    'IS',
    '123459',  
    TO_DATE('26.12.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Bas Ceaus',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Butnaru' AND prenume = 'Silviu')
);

INSERT INTO carti_de_identitate VALUES (
    '1990206220004',
    'IS',
    '126456',   
    TO_DATE('06.02.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Cihac Iosif',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Prelipcean' AND prenume = 'Iulian')
);

INSERT INTO carti_de_identitate VALUES (
    '2990705220005',
    'IS',
    '120456',
    TO_DATE('05.07.1999', 'DD.MM.YYYY'),
    'F',
    'Strada Dacia',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Paval' AND prenume = 'Mihaela')
);

INSERT INTO carti_de_identitate VALUES (
    '6000218220006',
    'IS',
    '123496',
    TO_DATE('18.02.2000', 'DD.MM.YYYY'),
    'F',
    'Strada Egalitatii',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Arcana' AND prenume = 'Geanina')
);

INSERT INTO carti_de_identitate VALUES (
    '1990501220007',
    'IS',
    '323456',
    TO_DATE('01.05.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Fulger',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Bejenariu' AND prenume = 'Razvan')
);

INSERT INTO carti_de_identitate VALUES (
    '1990722220008',
    'IS',
    '123406',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Toscariu' AND prenume = 'Alberto')
);

INSERT INTO carti_de_identitate VALUES (
    '1991029220009',
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
    '1990331220000', -- cnp-ul este deja folosit
    'IS',
    '999999',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- cnp-ul trebuie sa inceapa cu 1/2/5/6
INSERT INTO carti_de_identitate VALUES (
    '9990331220099',
    'IS',
    '999999',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- luna din cnp e intre 01-12
INSERT INTO carti_de_identitate VALUES (
    '1992331220099',
    'IS',
    '999999',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- seria sa contina doar 2 litere
INSERT INTO carti_de_identitate VALUES (
    '1990331220080',
    'I9',
    '999999',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- numarul sa contina doar 6 cifre
INSERT INTO carti_de_identitate VALUES (
    '1990331220080',
    'I9',
    '9999A9',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- data nasterii sa fie mai mica ca data curenta
INSERT INTO carti_de_identitate VALUES (
    '1990331220080',
    'IS',
    '999999',
    TO_DATE('22.07.2021', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- sex-ul sa fie M/F
INSERT INTO carti_de_identitate VALUES (
    '1990331220080',
    'IS',
    '123457',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'A',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
);

-- seria si nr sa fie unic -> pot sa am acelasi numar pe 2 serii diferite
INSERT INTO carti_de_identitate VALUES (
    '1990331220080',
    'NT',
    '123457', -- numarul deja exista pe seria IS
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Costache' AND prenume = 'Adrian')
); -- aceasta va functiona

INSERT INTO carti_de_identitate VALUES (
    '1990331220089',
    'NT',
    '123457',
    TO_DATE('22.07.1999', 'DD.MM.YYYY'),
    'M',
    'Strada Iepurilor',
    'Iasi',
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Mircea' AND prenume = 'Bravo')
);



