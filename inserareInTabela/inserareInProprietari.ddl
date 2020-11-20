-- 10 inserari bune

INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Paraschiv',
    'Vlad',
    '0763917294',
    'vladparaschiv@gmail.com'
);

INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Buliga',
    'Diana',
    '0739104921',
    'dianabuliga@gmail.com'
);

INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Baltariu',
    'John',
    '0764829403',
    'alexjohn@gmail.com'
);

INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Butnaru',
    'Silviu',
    '0742845309',
    'butnarusilviu@gmail.com'
);

INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Prelipcean',
    'Iulian',
    '0761230965',
    'iulianprelipcean@gmail.com'
);

INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Paval',
    'Mihaela',
    '0747201677',
    'mihaelapaval@gmail.com'
);

INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Arcana',
    'Geanina',
    '0759024519',
    'geaninaarcana@gmail.com'
);
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Bejenariu',
    'Razvan',
    '0751529430',
    'razvanbejenariu@gmail.com'
);
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Toscariu',
    'Alberto',
    '0760932543',
    'albertotoscariu@gmail.com'
);

INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Balta',
    'Gabriel',
    '0749899645',
    'gabibalta@gmail.com'
);


-- pentru testarea constrangerilor

-- telefonul exista deja in tabela
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    '0739104921',
    'a@b.c'
);

-- email-ul este deja in tabela
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    '079999999',
    'razvanbejenariu@gmail.com'
);