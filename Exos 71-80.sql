--71 :Sélectionner le nom, l’emploi, le revenu mensuel (nommé Revenu) avec deux décimales pour tous les employés, dans l’ordre des revenus décroissants.
SELECT
    nom,
    emploi,
    ROUND(sal + COALESCE(comm, 0), 2) as revenu
FROM
    emp
ORDER BY
    revenu DESC;

--72:Sélectionner le nom, le salaire, commission des employés dont la commission représente plus que le double du salaire.
SELECT
    nom,
    sal,
    comm
FROM
    emp
WHERE
    comm >= (sal * 2);

--73:Sélectionner nom, prénom, emploi, le pourcentage de commission (deux décimales) par rapport au revenu mensuel ( renommé "% Commissions") , pour tous les vendeurs dans l'ordre décroissant de ce pourcentage.
SELECT
    nom,
    prenom,
    emploi,
    ROUND((COALESCE(comm, 0) * 100) / sal) as commissions
FROM
    emp
WHERE
    emploi = 'VENDEUR'
ORDER BY
    commissions DESC;

--74:Sélectionner le nom, l’emploi, le service et le revenu annuel ( à l’euro près) de tous les vendeurs.
SELECT
    nom,
    emploi,
    noserv,
    ROUND((sal + COALESCE(comm, 0)) * 12) as revenuAnnuel
FROM
    emp
WHERE
    emploi = 'VENDEUR';

--75:Sélectionner nom, prénom, emploi, salaire, commissions, revenu mensuel pour les employés des services 3,5,6.
SELECT
    nom,
    prenom,
    emploi,
    sal,
    comm,
    ROUND(sal + COALESCE(comm, 0), 2) as revenu
FROM
    emp
WHERE
    noserv = 3
    OR noserv = 5
    OR noserv = 6;

--76:Idem pour les employés des services 3,5,6 en remplaçant les noms des colonnes:SAL par SALAIRE, COMM par COMMISSIONS, SAL+IFNULL(COMM,0) par GAIN_MENSUEL.
SELECT
    nom,
    prenom,
    emploi,
    sal as salaire,
    comm as commissions,
    ROUND(sal + COALESCE(comm, 0), 2) as gain_mensuel
FROM
    emp
WHERE
    noserv = 3
    OR noserv = 5
    OR noserv = 6;

--77:Idem pour les employés des services 3,5,6 en remplaçant GAIN_MENSUEL par GAINMENSUEL.
SELECT
    nom,
    prenom,
    emploi,
    sal as salaire,
    comm as commissions,
    ROUND(sal + COALESCE(comm, 0), 2) as gainmensuel
FROM
    emp
WHERE
    noserv = 3
    OR noserv = 5
    OR noserv = 6;

--78:Afficher le nom, l'emploi, les salaires journalier et horaire pour les employés des services 3,5,6 (22 jours/mois et 8 heures/jour), sans arrondi, arrondi au centime près.
SELECT
    nom,
    emploi,
    ROUND(sal + COALESCE(comm, 0) / 30, 2) as journalier,
    ROUND((sal + COALESCE(comm, 0) / 30) / 8, 2) as horaire
FROM
    emp
WHERE
    noserv = 3
    OR noserv = 5
    OR noserv = 6;

--79:Idem sans arrondir mais en tronquant.
SELECT
    nom,
    emploi,
    TRUNC(sal + COALESCE(comm, 0) / 30, 2) as journalier,
    TRUNC((sal + COALESCE(comm, 0) / 30) / 8, 2) as horaire
FROM
    emp
WHERE
    noserv = 3
    OR noserv = 5
    OR noserv = 6;

--80:Concaténer les colonnes Service et Ville en les reliant par " ----> ", les premières lettres des noms de villes doivent se trouver sur une même verticale.
--(Impossible d'aligner sous Oracle)
SELECT
    CONCAT (service, ' ----> ', ville)
FROM
    serv;