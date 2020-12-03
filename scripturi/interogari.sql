-- afisam proprietarii carora le incepe email-ul cu 'vl'
SELECT nume, prenume FROM proprietari
 WHERE email like 'vl%';
 
 -- afisam proprietarii carora li se sfarseste numarul de telefon in 7
SELECT nume,prenume FROM proprietari
  WHERE telefon like '%7';

-- afisam proprietarii care nu au email
SELECT nume, prenume FROM proprietari
 WHERE email IS NULL;

-- afisam toti proprietarii de sex feminin
SELECT nume, prenume FROM proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE sex = 'F';
 
-- afisam toti proprietarii care nu au localitatea in Iasi
SELECT nume, prenume FROM proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE localitate != 'Iasi';
 
-- afisam toti proprietarii care s-au nascut pe 31 in orice luna
SELECT nume, prenume FROM proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE TO_CHAR(buletin.data_nastere,'DDTH') = '31ST';
 
-- afisam toti proprietarii care s-au nascut in luna a 2-a
SELECT nume, prenume FROM proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE TO_CHAR(buletin.data_nastere,'MM') = 02; 
 
-- afisam toti proprietarii care s-au nascut in luna Iulie
SELECT nume, prenume FROM proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE TO_CHAR(buletin.data_nastere,'MON') = 'JUL';
 
-- afisam toti proprietarii carora li se termina cnp-ul in 5
SELECT nume, prenume FROM proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE CNP LIKE '%5';
 
-- afisam toti proprietarii care au culoarea masinii negru
SELECT nume, prenume, masini.marca, masini.model FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE culoare = 'negru';
  
-- afisam toti proprietarii care se termina numarul de inmatriculare in A
SELECT nume, prenume, masini.nr_inmatriculare FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE nr_inmatriculare LIKE '%A';
  
-- afisam toti proprietarii carora le incepe nr de inmatriculare cu 9 sau se sfarseste in 9
SELECT nume, prenume, masini.nr_inmatriculare FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE nr_inmatriculare LIKE '%_9%' or nr_inmatriculare LIKE '%9_%';
 
-- afisam toate masinile care au anul de fabricatie intre 2010 si 2019
SELECT nume, prenume, masini.marca, masini.model, masini.data_fabricatie FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE TO_CHAR(data_fabricatie,'YYYY') BETWEEN 2010 AND 2019;
 
 
-- afisam toti proprietarii care au o capacitate la motor mai mica de 1900
SELECT nume, prenume, masini.marca, masini.model FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE capacitate_motor < 1900;

-- afisam toti proprietarii carora le incep numarul de inamtriculare cu SV
SELECT nume, prenume, masini.marca, masini.model FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE nr_inmatriculare LIKE 'SV%';
  
-- afisam toti proprietarii care au 3 cifre in nr de inmatriculare
SELECT nume, prenume, masini.marca, masini.model FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE nr_inmatriculare LIKE '%-___-%';

-- afisam toti proprietarii care detin marca VW
SELECT nume, prenume FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE marca = 'VW';
  
-- afisam toti proprietarii de VW care au anul fabricatiei > 2010 si capacitate motor <1700
SELECT nume, prenume FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE marca = 'VW' AND TO_CHAR(data_fabricatie, 'YYYY') > 2010 AND capacitate_motor < 1700;
  
-- afisam toti proprietarii care au un VW negru
SELECT nume, prenume FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE marca = 'VW' and culoare = 'negru';
  
-- afisam toate platile efectuate din 2019 pana in prezent
SELECT id_plata, tip FROM plati
 WHERE TO_CHAR(data_tranzactie,'YYYY') >= 2019;
 
-- afisam toate platile efectuate numerar
SELECT id_plata FROM plati
 WHERE tip = 'numerar';
 
-- afisam toate platile mai mari de 550 lei
SELECT id_plata FROM plati
 WHERE suma > 550;
 
-- afisam cate plati s-au efectuat in total
SELECT COUNT(id_plata) FROM plati;
 
-- afisam toate platile mai mari de 900 de lei efectuate din 2018 in prezent
SELECT id_plata FROM plati
 WHERE TO_CHAR(data_tranzactie, 'YYYY') >= 2018 AND suma>900;
 
-- afisam platile efectuate in luna martie din orice an
SELECT id_plata FROM plati
 WHERE TO_CHAR(data_tranzactie, 'MON' ) = 'MAR';
 
 -- afisam proprietarii care au platit 900 de lei
SELECT nume, prenume FROM proprietari prop
 JOIN plati ON (prop.index_proprietar = plati.index_proprietar)
  WHERE suma = 900;
 
-- afisam proprietarii si masinile care au rezervat locul de parcare in luna martie
SELECT nume, prenume, masini.marca, masini.model FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
 JOIN locuri_de_parcare loc ON (loc.nr_inmatriculare = masini.nr_inmatriculare)
  WHERE TO_CHAR(data_inceput,'MON') = 'MAR';
  
-- afisam proprietarii si masinile carora le expira locul de parcare in 2019
SELECT nume, prenume, masini.marca, masini.model FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
 JOIN locuri_de_parcare loc ON (loc.nr_inmatriculare = masini.nr_inmatriculare)
  WHERE TO_CHAR(data_expirare,'YY') = 20;
  
-- afisam proprietarii care si-au achizionat locul pe 12 luni
SELECT nume, prenume FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
 JOIN locuri_de_parcare loc ON (loc.nr_inmatriculare = masini.nr_inmatriculare)
  WHERE durata = 12;
  
-- afisam CNP-ul persoanei care are locul de parcare cu numarul 5
SELECT CNP FROM carti_de_identitate buletin
 JOIN masini ON (buletin.index_proprietar = masini.index_proprietar)
 JOIN locuri_de_parcare loc ON (loc.nr_inmatriculare = masini.nr_inmatriculare)
  WHERE index_loc_parcare = 5;
  
-- afisam persoanele si masinile persoanelor care au achizitionat un loc de parcare pe cel putin 12 luni si s-au nascut in in una dintre lunile februarie,martie,aprilie,mai
SELECT nume, prenume, masini.marca, masini.model FROM proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
 JOIN locuri_de_parcare loc ON (loc.nr_inmatriculare = masini.nr_inmatriculare)
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
  WHERE loc.durata >= 12 AND TO_CHAR(data_nastere,'MON') IN ('FEB', 'MAR', 'APR'); 

-- afisam cartierele
SELECT distinct(cartier) FROM strazi;

-- afisam numele si prenumele persoanei care detine un loc de parcare in cartierul 'T Vladimirescu'
SELECT nume,prenume FROM Proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
 JOIN locuri_de_parcare loc ON (loc.nr_inmatriculare = masini.nr_inmatriculare)
 JOIN Strazi ON (loc.index_strada = strazi.index_strada)
  WHERE cartier = 'T Vladimirescu';

-- afisam numele si prenumele persoanei care detine un loc de parcare in cartierul 'Agronomie'  
SELECT nume,prenume from Proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
 JOIN locuri_de_parcare loc ON (loc.nr_inmatriculare = masini.nr_inmatriculare)
 JOIN Strazi ON (loc.index_strada = strazi.index_strada)
  WHERE cartier = 'Agronomie';
  
 -- afisam strazile si cartierele
SELECT denumire, cartier FROM strazi;

-- afisam numele, prenumele si numarul de inmatriculare persoanei care detine un loc de parcare 'Strada Iepurilor'  
SELECT nume,prenume, masini.nr_inmatriculare FROM Proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
 JOIN locuri_de_parcare loc ON (loc.nr_inmatriculare = masini.nr_inmatriculare)
 JOIN Strazi ON (loc.index_strada = strazi.index_strada)
  WHERE denumire = 'Strada Iepurilor';

-- afisam cate locuri de parcare are 'Paraschiv Vlad'
SELECT COUNT(index_loc_parcare) from locuri_de_parcare loc 
 JOIN masini ON (masini.nr_inmatriculare = loc.nr_inmatriculare)
 JOIN proprietari prop ON (masini.index_proprietar = prop.index_proprietar)
  WHERE nume = 'Paraschiv' AND prenume = 'Vlad';

-- afisam masinile lui 'Paraschiv Vlad'
SELECT marca, model FROM masini
 JOIN proprietari prop ON (prop.index_proprietar = masini.index_proprietar)
  WHERE nume = 'Paraschiv' AND prenume = 'Vlad';
