--1:Sélectionner toutes les colonnes de la table SERV.
SELECT
    *
FROM
    serv;

--2:Sélectionner d’une autre manière ces colonnes.
SELECT
    noserv,
    service,
    ville
FROM
    serv;

--3:Sélectionner les colonnes SERVICE et NOSERV de la table SERV.
SELECT
    noserv,
    service
FROM
    serv;

--4:Sélectionner toutes les colonnes de la table EMP.
SELECT
    *
FROM
    emp;

--5:Sélectionner les emplois de la table EMP.
SELECT
    emploi
FROM
    emp;

--6:Sélectionner les différents emplois de la table EMP.
SELECT
    emploi
FROM
    emp
GROUP BY
    emploi;

--7:Sélectionner les employés du service N°3.
SELECT
    *
FROM
    emp
WHERE
    noserv = 3;

--8:Sélectionner les noms, prénoms, numéro d’employé, numéro de service de tous les techniciens.
SELECT
    nom,
    prenom,
    noemp,
    noserv
FROM
    emp
WHERE
    emploi = 'TECHNICIEN';

--9:Sélectionner les noms, numéros de service de tous les services dont le numéro est supérieur à 2.
SELECT
    service,
    noserv
FROM
    serv
WHERE
    noserv > 2;

--10:Sélectionner les noms, numéros de service de tous les services dont le numéro est inférieur ou égal à 2.
SELECT
    service,
    noserv
FROM
    serv
WHERE
    noserv <= 2;