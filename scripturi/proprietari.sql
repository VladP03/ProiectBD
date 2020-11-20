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
    'Adrian',
    'Costache',
    '0739104921',
    'a@b.c'
);

-- email-ul este deja in tabela
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Adrian',
    'Costache',
    '079999999',
    'razvanbejenariu@gmail.com'
);

-- email-ul nu este de tip a@b.c
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Adrian',
    'Costache',
    '079999999',
    'a@bc'
);

-- telefonul nu incepe cu 07
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Adrian',
    'Costache',
    '0912345678',
    'hahaha@gmail.com'
);

-- telefonul are mai putin de 10 cifre
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Adrian',
    'Costache',
    '071234567',
    'hahaha@gmail.com'
);

-- telefonul are mai mult de 10 cifre
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Adrian',
    'Costache',
    '071234567424',
    'hahaha@gmail.com'
);

-- numele contine cifre
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Adr4ian',
    'Costache',
    '0712345624',
    'hahaha@gmail.com'
);

-- prenumele contine cifre
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Adrian',
    'Costache0',
    '0712345624',
    'hahaha@gmail.com'
);


-- o inserare pentru alte teste
INSERT INTO proprietari(nume,prenume,telefon, email) VALUES (
    'Costache',
    'Adrian',
    '0768204650',
    'adriancostache@gmail.com'
);