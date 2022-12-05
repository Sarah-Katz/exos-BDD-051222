--11:Sélectionner les employés dont la commission est inférieure au salaire. Vérifiez le résultat jusqu’à obtenir la bonne réponse.
SELECT
    *
FROM
    emp
WHERE
    comm < sal
    OR comm IS NULL;

--12:Sélectionner les employés qui ne touchent jamais de commission.
SELECT
    *
FROM
    emp
WHERE
    comm = 0
    OR comm IS NULL;

--13:Sélectionner les employés qui touchent éventuellement une commission et dans l’ordre croissant des commissions.
SELECT
    *
FROM
    emp
WHERE
    comm > 0
ORDER BY
    comm;

--14:Sélectionner les employés qui ont un chef.
SELECT
    *
FROM
    emp
WHERE
    sup IS NULL;

--15:Sélectionner les employés qui n’ont pas de chef.
SELECT
    *
FROM
    emp
WHERE
    sup IS NOT NULL;

--16:Sélectionner les noms, emploi, salaire, numéro de service de tous les employés du service 5 qui gagnent plus de 20000 €.
SELECT
    nom,
    emploi,
    sal,
    noserv
FROM
    emp
WHERE
    noserv = 5
    AND sal >= 20000;

--17:Sélectionner les vendeurs du service 6 qui ont un revenu mensuel supérieur ou égal à 9500 €.
SELECT
    *
FROM
    emp
WHERE
    emploi = 'VENDEUR'
    AND noserv = 6
    AND sal = > 9000;

--18:Sélectionner dans les employés tous les présidents et directeurs. Attention, le français et la logique sont parfois contradictoires.
SELECT
    *
FROM
    emp
WHERE
    emploi = 'DIRECTEUR'
    OR emploi = 'PRESIDENT';

--19:Sélectionner les directeurs qui ne sont pas dans le service 3.
SELECT
    *
FROM
    emp
WHERE
    emploi = 'DIRECTEUR'
    AND noserv != 3;

--20:Sélectionner les directeurs et « les techniciens du service 1 ».
SELECT
    *
FROM
    emp
WHERE
    emploi = 'DIRECTEUR'
    OR (
        emploi = 'TECHNICIEN'
        AND noserv = 1
    );