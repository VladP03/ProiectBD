INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    6,
    TO_DATE('31.03.2017','DD.MM.YYYY'),
    TO_DATE('30.09.2017','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Paraschiv' and prenume = 'Vlad'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Tudor Vladimirescu'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Paraschiv' and prenume = 'Vlad')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    6,
    TO_DATE('18.02.2018','DD.MM.YYYY'),
    TO_DATE('18.08.2018','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Buliga' and prenume = 'Diana'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Bulevard Alexandru cel Bun'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Buliga' and prenume = 'Diana')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    12,
    TO_DATE('11.04.2018','DD.MM.YYYY'),
    TO_DATE('11.04.2019','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Baltariu' and prenume = 'John'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Arbore Luca'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Baltariu' and prenume = 'John')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    12,
    TO_DATE('19.04.2018','DD.MM.YYYY'),
    TO_DATE('19.04.2019','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Butnaru' and prenume = 'Silviu'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Bas Ceaus'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Butnaru' and prenume = 'Silviu')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    6,
    TO_DATE('29.07.2018','DD.MM.YYYY'),
    TO_DATE('29.01.2019','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Prelipcean' and prenume = 'Iulian'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Cihac Iosif'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Prelipcean' and prenume = 'Iulian')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    24,
    TO_DATE('10.01.2019','DD.MM.YYYY'),
    TO_DATE('10.01.2021','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Paval' and prenume = 'Mihaela'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Dacia'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Paval' and prenume = 'Mihaela')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    12,
    TO_DATE('15.03.2019','DD.MM.YYYY'),
    TO_DATE('15.03.2020','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Arcana' and prenume = 'Geanina'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Egalitatii'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Arcana' and prenume = 'Geanina')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    12,
    TO_DATE('22.05.2019','DD.MM.YYYY'),
    TO_DATE('22.05.2020','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Bejenariu' and prenume = 'Razvan'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Fulger'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Bejenariu' and prenume = 'Razvan')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    6,
    TO_DATE('07.07.2019','DD.MM.YYYY'),
    TO_DATE('07.01.2020','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Toscariu' and prenume = 'Alberto'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Iepurilor'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Toscariu' and prenume = 'Alberto')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, index_proprietar, index_strada, id_plata) VALUES (
    24,
    TO_DATE('31.03.2020','DD.MM.YYYY'),
    TO_DATE('31.03.2022','DD.MM.YYYY'),
    (SELECT index_proprietar FROM proprietari WHERE nume = 'Balta' and prenume = 'Gabriel'),
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Moldovei'),
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
       WHERE nume = 'Balta' and prenume = 'Gabriel')
);