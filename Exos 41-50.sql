--41:Trier les employés (nom, prénom, n° de service , salaire) du service 3 par ordre de salaire décroissant.
SELECT
    nom,
    prenom,
    noserv,
    sal
FROM
    emp
WHERE
    noserv = 3
ORDER BY
    sal DESC;

--42:Idem en indiquant le numéro de colonne à la place du nom colonne.
SELECT
    noemp,
    prenom,
    noserv,
    sal
FROM
    emp
WHERE
    noserv = 3
ORDER BY
    4 DESC;

--43:Trier les employés (nom, prénom, n° de service, salaire, emploi) par emploi, et pour chaque emploi par ordre décroissant de salaire.
SELECT
    nom,
    prenom,
    noserv,
    sal,
    emploi
FROM
    emp
ORDER BY
    emploi,
    sal DESC;

--44:Idem en indiquant les numéros de colonnes.
SELECT
    nom,
    prenom,
    noserv,
    sal,
    emploi
FROM
    emp
ORDER BY
    5,
    4 DESC;

--45:Trier les employés (nom, prénom, n° de service, commission) du service3 par ordre croissant de commission.
SELECT
    nom,
    prenom,
    noserv,
    comm
FROM
    emp
WHERE
    noserv = 3
ORDER BY
    comm;

--46:Trier les employés (nom, prénom, n° de service, commission) du service 3 par ordre décroissant de commission, en considérant que celui dont la commission est nulle ne touche pas de commission.
SELECT
    nom,
    prenom,
    noserv,
    comm
FROM
    emp
WHERE
    noserv = 3
    AND comm IS NOT NULL
ORDER BY
    comm DESC;

--47:Sélectionner le nom, le prénom, l'emploi, le nom du service de l'employé pour tous les employés.
SELECT
    nom,
    prenom,
    emploi,
    serv.service
FROM
    emp,
    serv;

--48:Sélectionner le nom, l'emploi, le numéro de service, le nom du service pour tous les employés.
SELECT
    nom,
    emploi,
    emp.noserv,
    serv.service
FROM
    emp,
    serv;

--49:Idem en utilisant des alias pour les noms de tables.
SELECT
    nom,
    emploi,
    employes.noserv,
    services.service
FROM
    emp as employes,
    serv as services;

--50:Sélectionner le nom, l'emploi, suivis de toutes les colonnes de la table SERV pour tous les employés.
SELECT
    nom,
    emploi,
    serv.*
FROM
    emp,
    serv;