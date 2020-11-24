INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'NT-01-ANV'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'NT-01-ANV'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'NT-01-ANV'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'NT-01-ANV')),
    
    -- nr_inmatriculare
    'NT-01-ANV',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Tudor Vladimirescu'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'NT-01-ANV')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'SV-99-DIA'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'SV-99-DIA'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'SV-99-DIA'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'SV-99-DIA')),
    
    -- nr_inmatriculare
    'SV-99-DIA',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Bulevard Alexandru cel Bun'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'SV-99-DIA')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'BT-09-BUT'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'BT-09-BUT'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'BT-09-BUT'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'BT-09-BUT')),
    
    -- nr_inmatriculare
    'BT-09-BUT',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Arbore Luca'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'BT-09-BUT')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'BT-19-SIL'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'BT-19-SIL'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'BT-19-SIL'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'BT-19-SIL')),
    
    -- nr_inmatriculare
    'BT-19-SIL',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Bas Ceaus'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'BT-19-SIL')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'SV-99-IUL'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'SV-99-IUL'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'SV-99-IUL'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'SV-99-IUL')),
    
    -- nr_inmatriculare
    'SV-99-IUL',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Cihac Iosif'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'SV-99-IUL')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'IS-99-RAZ'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'IS-99-RAZ'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'IS-99-RAZ'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'IS-99-RAZ')),
    
    -- nr_inmatriculare
    'IS-99-RAZ',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Dacia'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'IS-99-RAZ')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'NT-18-BGA'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'NT-18-BGA'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'NT-18-BGA'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'NT-18-BGA')),
    
    -- nr_inmatriculare
    'NT-18-BGA',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Egalitatii'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'NT-18-BGA')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'IS-10-RAZ'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'IS-10-RAZ'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'IS-10-RAZ'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'IS-10-RAZ')),
    
    -- nr_inmatriculare
    'IS-10-RAZ',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Fulger'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'IS-10-RAZ')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'IS-01-ALB'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'IS-01-ALB'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'IS-01-ALB'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'IS-01-ALB')),
    
    -- nr_inmatriculare
    'IS-01-ALB',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Iepurilor'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'IS-01-ALB')
);

INSERT INTO locuri_de_parcare(durata, data_inceput, data_expirare, nr_inmatriculare, index_strada, id_plata) VALUES (
    -- durata
    (SELECT CASE suma
        WHEN 500 THEN 6
        WHEN 900 then 12
        WHEN 1700 then 24
    END AS durata from plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'BT-01-GAB'),
     
     -- data_inceput
    (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'BT-01-GAB'),
    
    -- data_expirare
    ADD_MONTHS( (SELECT TO_DATE(data_tranzactie,'DD.MM.YYYY') FROM plati
                 JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                  WHERE nr_inmatriculare = 'BT-01-GAB'),(SELECT CASE suma
                                                        WHEN 500 THEN 6
                                                        WHEN 900 then 12
                                                        WHEN 1700 then 24
                                                    END AS durata from plati
                                                    JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
                                                    JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
                                                     WHERE nr_inmatriculare = 'BT-01-GAB')),
    
    -- nr_inmatriculare
    'BT-01-GAB',
    
    -- index_strada
    (SELECT index_strada FROM strazi WHERE denumire = 'Strada Moldovei'),
    
    -- id_plata
    (SELECT id_plata FROM plati
      JOIN proprietari prop ON (prop.index_proprietar = plati.index_proprietar)
      JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
      WHERE nr_inmatriculare = 'BT-01-GAB')
);