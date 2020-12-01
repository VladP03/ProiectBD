-- Generated by Oracle SQL Developer Data Modeler 20.2.0.167.1538
--   at:        2020-12-01 17:22:03 EET
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE carti_de_identitate (
    cnp               CHAR(13) NOT NULL,
    serie             CHAR(2) NOT NULL,
    numar             CHAR(6) NOT NULL,
    data_nastere      DATE NOT NULL,
    sex               CHAR(1) NOT NULL,
    adresa            VARCHAR2(40) NOT NULL,
    localitate        VARCHAR2(15) NOT NULL,
    index_proprietar  NUMBER(3) NOT NULL
)
LOGGING;

ALTER TABLE carti_de_identitate
    ADD CONSTRAINT cnp_ck CHECK ( REGEXP_LIKE ( cnp,
                                                '(1|2|5|6)[0-9][0-9](0|1)[0-9](0|1|2|3)[0-9](0|1|2|3|4|5)[0-9][0-9][0-9][0-9][0-9]' ) );

ALTER TABLE carti_de_identitate
    ADD CONSTRAINT serie_ck CHECK ( REGEXP_LIKE ( serie,
                                                  '^[a-zA-Z .''-]+$' ) );

ALTER TABLE carti_de_identitate
    ADD CONSTRAINT numar_ck CHECK ( REGEXP_LIKE ( numar,
                                                  '[0-9][0-9][0-9][0-9][0-9][0-9]' ) );

ALTER TABLE carti_de_identitate
    ADD CONSTRAINT sex_ck CHECK ( sex IN ( 'F', 'M' ) );

ALTER TABLE carti_de_identitate
    ADD CONSTRAINT localitate_ck CHECK ( REGEXP_LIKE ( localitate,
                                                       '^[a-zA-Z .''-]+$' ) );

CREATE UNIQUE INDEX carti_de_identitate__idx ON
    carti_de_identitate (
        index_proprietar
    ASC )
        LOGGING;

ALTER TABLE carti_de_identitate ADD CONSTRAINT cnp_unique UNIQUE ( cnp );

ALTER TABLE carti_de_identitate ADD CONSTRAINT serie_numar_unique UNIQUE ( numar,
                                                                           serie );

CREATE TABLE locuri_de_parcare (
    index_loc_parcare  NUMBER(3) NOT NULL,
    durata             NUMBER(2) NOT NULL,
    data_inceput       DATE NOT NULL,
    data_expirare      DATE NOT NULL,
    index_strada       NUMBER(3) NOT NULL,
    id_plata           NUMBER(3) NOT NULL,
    nr_inmatriculare   CHAR(9) NOT NULL
)
LOGGING;

ALTER TABLE locuri_de_parcare
    ADD CONSTRAINT durata_ck CHECK ( durata IN ( 6, 12, 24 ) );

CREATE UNIQUE INDEX locuri_de_parcare__idx ON
    locuri_de_parcare (
        nr_inmatriculare
    ASC )
        LOGGING;

CREATE UNIQUE INDEX locuri_de_parcare__idxv1v1 ON
    locuri_de_parcare (
        id_plata
    ASC )
        LOGGING;

ALTER TABLE locuri_de_parcare ADD CONSTRAINT locuri_de_parcare_pk PRIMARY KEY ( index_loc_parcare );

CREATE TABLE masini (
    marca             VARCHAR2(15) NOT NULL,
    model             VARCHAR2(15) NOT NULL,
    nr_inmatriculare  CHAR(9) NOT NULL,
    culoare           VARCHAR2(10) NOT NULL,
    capacitate_motor  NUMBER(4) NOT NULL,
    data_fabricatie   DATE NOT NULL,
    index_proprietar  NUMBER(3) NOT NULL
)
LOGGING;

ALTER TABLE masini
    ADD CONSTRAINT marca_ck CHECK ( REGEXP_LIKE ( marca,
                                                  '^[a-zA-Z .''-]+$' ) );

ALTER TABLE masini
    ADD CONSTRAINT nr_inmatriculare_ck CHECK ( REGEXP_LIKE ( nr_inmatriculare,
                                                             '[A-Z][A-Z]-[0-9][0-9]-[A-Z][A-Z][A-Z]' )
                                               OR REGEXP_LIKE ( nr_inmatriculare,
                                                                '[A-Z]-[0-9][0-9]-[A-Z][A-Z][A-Z]' )
                                               OR REGEXP_LIKE ( nr_inmatriculare,
                                                                '[A-Z]-[0-9][0-9][0-9]-[A-Z][A-Z][A-Z]' ) );

ALTER TABLE masini
    ADD CONSTRAINT culoare_ck CHECK ( REGEXP_LIKE ( culoare,
                                                    '^[a-zA-Z .''-]+$' ) );

ALTER TABLE masini
    ADD CONSTRAINT capacitate_motor_ck CHECK ( capacitate_motor BETWEEN 1 AND 9999 );

ALTER TABLE masini ADD CONSTRAINT nr_inmatriculare_unique UNIQUE ( nr_inmatriculare );

CREATE TABLE plati (
    id_plata          NUMBER(3) NOT NULL,
    tip               VARCHAR2(7) NOT NULL,
    data_tranzactie   DATE NOT NULL,
    suma              NUMBER(4) NOT NULL,
    index_proprietar  NUMBER(3) NOT NULL
)
LOGGING;

ALTER TABLE plati
    ADD CONSTRAINT "tip_plata-ck" CHECK ( tip IN ( 'card', 'numerar' ) );

ALTER TABLE plati
    ADD CONSTRAINT suma_plata_ck CHECK ( suma IN ( 500, 900, 1700 ) );

ALTER TABLE plati ADD CONSTRAINT modalitati_plata_pk PRIMARY KEY ( id_plata );

CREATE TABLE proprietari (
    index_proprietar  NUMBER(3) NOT NULL,
    nume              VARCHAR2(15) NOT NULL,
    prenume           VARCHAR2(15) NOT NULL,
    telefon           CHAR(10) NOT NULL,
    email             VARCHAR2(30) DEFAULT NULL
)
LOGGING;

ALTER TABLE proprietari
    ADD CONSTRAINT nume_ck CHECK ( REGEXP_LIKE ( nume,
                                                 '^[a-zA-Z .''-]+$' ) );

ALTER TABLE proprietari
    ADD CONSTRAINT prenume_ck CHECK ( REGEXP_LIKE ( prenume,
                                                    '^[a-zA-Z .''-]+$' ) );

ALTER TABLE proprietari
    ADD CONSTRAINT telefon_ck CHECK ( REGEXP_LIKE ( telefon,
                                                    '^0(2|7)\d{8}$' ) );

ALTER TABLE proprietari
    ADD CONSTRAINT email_ck CHECK ( REGEXP_LIKE ( email,
                                                  '[a-z0-9._%-]+@[a-z0-9._%-]+\.[a-z]{2,4}' ) );

ALTER TABLE proprietari ADD CONSTRAINT propietari_pk PRIMARY KEY ( index_proprietar );

ALTER TABLE proprietari ADD CONSTRAINT telefon_unique UNIQUE ( telefon );

ALTER TABLE proprietari ADD CONSTRAINT email_unique UNIQUE ( email );

CREATE TABLE strazi (
    index_strada  NUMBER(3) NOT NULL,
    denumire      VARCHAR2(35) NOT NULL,
    cartier       VARCHAR2(20) NOT NULL
)
LOGGING;

ALTER TABLE strazi
    ADD CONSTRAINT denumire_ck CHECK ( REGEXP_LIKE ( denumire,
                                                     '^[a-zA-Z .''-]+$' ) );

ALTER TABLE strazi
    ADD CONSTRAINT cartier_ck CHECK ( REGEXP_LIKE ( cartier,
                                                    '^[a-zA-Z .''-]+$' ) );

ALTER TABLE strazi ADD CONSTRAINT strazi_pk PRIMARY KEY ( index_strada );

ALTER TABLE strazi ADD CONSTRAINT strazi_denumire_cartier_unique UNIQUE ( denumire,
                                                                          cartier );

ALTER TABLE locuri_de_parcare
    ADD CONSTRAINT masini_locuri_parcare FOREIGN KEY ( nr_inmatriculare )
        REFERENCES masini ( nr_inmatriculare )
    NOT DEFERRABLE;

ALTER TABLE locuri_de_parcare
    ADD CONSTRAINT modalitati_plata_parcare FOREIGN KEY ( id_plata )
        REFERENCES plati ( id_plata )
    NOT DEFERRABLE;

ALTER TABLE carti_de_identitate
    ADD CONSTRAINT proprietari_buletine_fk FOREIGN KEY ( index_proprietar )
        REFERENCES proprietari ( index_proprietar )
    NOT DEFERRABLE;

ALTER TABLE masini
    ADD CONSTRAINT proprietari_masini FOREIGN KEY ( index_proprietar )
        REFERENCES proprietari ( index_proprietar )
    NOT DEFERRABLE;

ALTER TABLE plati
    ADD CONSTRAINT proprietari_plati FOREIGN KEY ( index_proprietar )
        REFERENCES proprietari ( index_proprietar )
    NOT DEFERRABLE;

ALTER TABLE locuri_de_parcare
    ADD CONSTRAINT strazi_locuri_de_parcare FOREIGN KEY ( index_strada )
        REFERENCES strazi ( index_strada )
    NOT DEFERRABLE;

CREATE OR REPLACE TRIGGER trg_carti_de_identitate_data_nastere 
    BEFORE INSERT OR UPDATE ON Carti_de_identitate 
    FOR EACH ROW 
BEGIN
 IF ( :new.data_nastere > SYSDATE )
  THEN
   RAISE_APPLICATION_ERROR ( -20001,
   		'Data invalida: ' || TO_CHAR ( :new.data_nastere, 'DD.MM.YYYY' ) || ' trebuie sa fie mai mica decat data curenta.' );
   END IF;
END; 
/

CREATE OR REPLACE TRIGGER trg_masini_data_fabricatie 
    BEFORE INSERT OR UPDATE ON Masini 
    FOR EACH ROW 
BEGIN
 IF ( :new.data_fabricatie > SYSDATE )
  THEN
   RAISE_APPLICATION_ERROR ( -20001,
   		'Data invalida: ' || TO_CHAR ( :new.data_fabricatie, 'DD.MM.YYYY' ) || ' trebuie sa fie mai mica decat data curenta.' );
   END IF;
END; 
/

CREATE OR REPLACE TRIGGER trg_plati_data_tranzactie 
    BEFORE INSERT OR UPDATE ON Plati 
    FOR EACH ROW 
BEGIN
 IF ( :new.data_tranzactie > SYSDATE )
  THEN
   RAISE_APPLICATION_ERROR ( -20001,
   		'Data invalida: ' || TO_CHAR ( :new.data_tranzactie, 'DD.MM.YYYY' ) || ' trebuie sa fie mai mica decat data curenta.' );
   END IF;
END; 
/

CREATE SEQUENCE index_loc_parcare_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER index_loc_parcare_trg BEFORE
    INSERT ON locuri_de_parcare
    FOR EACH ROW
    WHEN ( new.index_loc_parcare IS NULL )
BEGIN
    :new.index_loc_parcare := index_loc_parcare_seq.nextval;
END;
/

CREATE SEQUENCE id_plata_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER id_plata_trg BEFORE
    INSERT ON plati
    FOR EACH ROW
    WHEN ( new.id_plata IS NULL )
BEGIN
    :new.id_plata := id_plata_seq.nextval;
END;
/

CREATE SEQUENCE index_proprietar_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER index_proprietar_trg BEFORE
    INSERT ON proprietari
    FOR EACH ROW
    WHEN ( new.index_proprietar IS NULL )
BEGIN
    :new.index_proprietar := index_proprietar_seq.nextval;
END;
/

CREATE SEQUENCE index_strada_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER index_strada_trg BEFORE
    INSERT ON strazi
    FOR EACH ROW
    WHEN ( new.index_strada IS NULL )
BEGIN
    :new.index_strada := index_strada_seq.nextval;
END;
/



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             6
-- CREATE INDEX                             3
-- ALTER TABLE                             34
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           7
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          4
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
