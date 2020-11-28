-- inserari bune
INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Tudor Vladimirescu',
	'T Vladimirescu'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Bulevard Alexandru cel Bun',
	'Podu de Fier'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Arbore Luca',
	'Agronomie'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Cihac Iosif',
	'T Vladimirescu'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Dacia',
	'Dacia'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Egalitatii',
	'Agronomie'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Fulger',
	'Copou'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Iepurilor',
	'Agronomie'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Moldovei',
	'Copou'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Bas Ceaus',
	'Dacia'
);

-- testarea constrangerilor
-- Nu pot exista 2 strazi cu acelasi nume intr-un cartier, dar pot exista 2 strazi cu acelasi nume in cartiere diferite
INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Bas Ceaus',
	'ABCD'
);

INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Bas Ceaus',
	'ABCD'
);

-- numele strazii trebuie sa contina doar litere
INSERT INTO strazi(denumire,cartier) VALUES (
	'Strad123132a Bas Ceaus',
	'ABC3D'
);

-- numele cartierului trebuie sa contina doar litere
INSERT INTO strazi(denumire,cartier) VALUES (
	'Strada Bas Ceaus',
	'ABCD4'
);