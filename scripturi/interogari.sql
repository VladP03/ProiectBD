-- afisam proprietarii carora le incepe email-ul cu 'vl'
select nume, prenume from proprietari
 WHERE email like 'vl%';
 
 -- afisam proprietarii carora li se sfarseste numarul de telefon in 7
select nume,prenume from proprietari
  WHERE telefon like '%7';

-- afisam proprietarii care nu au email
select nume, prenume from proprietari
 WHERE email IS NULL;

-- afisam toti proprietarii de sex feminin
select nume, prenume from proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE sex = 'F';
 
-- afisam toti proprietarii care nu au localitatea in Iasi
select nume, prenume from proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE localitate != 'Iasi';
 
-- afisam toti proprietarii care s-au nascut pe 31 in orice luna
select nume, prenume from proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE TO_CHAR(buletin.data_nastere,'DDTH') = '31ST';
 
-- afisam toti proprietarii care s-au nascut in luna a 2-a
select nume, prenume from proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE TO_CHAR(buletin.data_nastere,'MM') = 02; 
 
-- afisam toti proprietarii care s-au nascut in luna Iulie
select nume, prenume from proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE TO_CHAR(buletin.data_nastere,'MON') = 'JUL';
 
-- afisam toti proprietarii carora li se termina cnp-ul in 5
select nume, prenume from proprietari prop
 JOIN carti_de_identitate buletin ON (prop.index_proprietar = buletin.index_proprietar)
 WHERE CNP LIKE '%5';
 
-- afisam toti proprietarii care au culoarea masinii negru
select nume, prenume, masini.marca, masini.model from proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE culoare = 'negru';
  
-- afisam toti proprietarii care se termina numarul de inmatriculare in A
select nume, prenume, masini.nr_inmatriculare from proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE nr_inmatriculare LIKE '%A';
  
-- afisam toti proprietarii carora le incepe nr de inmatriculare cu 9 sau se sfarseste in 9
select nume, prenume, masini.nr_inmatriculare from proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE nr_inmatriculare LIKE '%_9%' or nr_inmatriculare LIKE '%9_%';
 
-- afisam toate masinile care au anul de fabricatie intre 2010 si 2019
select nume, prenume, masini.marca, masini.model from proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE an_fabricatie BETWEEN 2010 AND 2019;
 
 
-- afisam toti proprietarii care au o capacitate la motor mai mica de 1900
select nume, prenume, masini.marca, masini.model from proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE capacitate_motor < 1900;

-- afisam toti proprietarii carora le incep numarul de inamtriculare cu SV
select nume, prenume, masini.marca, masini.model from proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
  WHERE nr_inmatriculare LIKE 'SV%';
  
-- afisam toti proprietarii care au 3 cifre in nr de inmatriculare



-- afisam cartierele
select distinct(cartier) from strazi;

-- afisam numele si prenumele persoanei care detine un loc de parcare in cartierul 'T Vladimirescu'
select nume,prenume from Proprietari prop
 JOIN locuri_de_parcare loc ON (prop.index_proprietar = loc.index_proprietar)
 JOIN Strazi ON (loc.index_strada = strazi.index_strada)
  WHERE cartier = 'T Vladimirescu';

-- afisam numele si prenumele persoanei care detine un loc de parcare in cartierul 'Agronomie'  
select nume,prenume from Proprietari prop
 JOIN locuri_de_parcare loc ON (prop.index_proprietar = loc.index_proprietar)
 JOIN Strazi ON (loc.index_strada = strazi.index_strada)
  WHERE cartier = 'Agronomie';
  
 -- afisam strazile
select denumire from strazi;

-- afisam numele, prenumele si numarul de inmatriculare persoanei care detine un loc de parcare 'Strada Iepurilor'  
select nume,prenume, masini.nr_inmatriculare from Proprietari prop
 JOIN masini ON (prop.index_proprietar = masini.index_proprietar)
 JOIN locuri_de_parcare loc ON (prop.index_proprietar = loc.index_proprietar)
 JOIN Strazi ON (loc.index_strada = strazi.index_strada)
  WHERE denumire = 'Strada Iepurilor';
