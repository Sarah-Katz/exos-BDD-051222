--21:Sélectionner les « directeurs et les techniciens » du service 1.
SELECT
    *
FROM
    emp
WHERE
    noserv = 1
    AND emploi = 'DIRECTEUR'
    OR emploi = 'TECHNICIEN';

--22:Sélectionner les employés du service 1 qui sont directeurs ou techniciens.
SELECT
    *
FROM
    emp
WHERE
    noserv = 1
    AND emploi = 'DIRECTEUR'
    OR emploi = 'TECHNICIEN';

--23:Sélectionner les employés qui ne sont ni directeur, ni technicien et travaillant dans le service 1.
SELECT
    *
FROM
    emp
WHERE
    noserv = 1
    AND emploi != 'DIRECTEUR'
    OR emploi != 'TECHNICIEN';

--24:Sélectionner les employés qui sont techniciens, comptables ou vendeurs.
SELECT
    *
FROM
    emp
WHERE
    emploi = 'VENDEUR'
    OR emploi = 'COMPTABLE'
    OR emploi = 'TECHNICIEN';

--25:Sélectionner les employés qui ne sont ni technicien, ni comptable, ni vendeur.
SELECT
    *
FROM
    emp
WHERE
    emploi != 'VENDEUR'
    OR emploi != 'COMPTABLE'
    OR emploi != 'TECHNICIEN';

--26:Sélectionner les directeurs des services 2, 4 et 5.
SELECT
    *
FROM
    emp
WHERE
    emploi = 'DIRECTEUR'
    AND noserv IN (2, 4, 5);

--27:Sélectionner les subalternes qui ne sont pas dans les services 1, 3, 5.
SELECT
    *
FROM
    emp
WHERE
    sup IS NOT NULL
    AND noserv NOT IN (1, 3, 5);

--28:Sélectionner les employés qui gagnent entre 20000 et 40000 euros, bornes comprises.
SELECT
    *
FROM
    emp
WHERE
    sal BETWEEN 20000
    AND 40000;

--29:Sélectionner les employés qui gagnent moins de 20000 et plus de 40000 euros.
SELECT
    *
FROM
    emp
WHERE
    sal NOT BETWEEN 20000
    AND 40000;

--30:Sélectionner les employés qui ne sont pas directeur et qui ont été embauchés en 88.
SELECT
    *
FROM
    emp
WHERE
    embauche >= '01-01-1998'