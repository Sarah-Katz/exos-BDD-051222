--81:Sélectionner nom, emploi pour les employés en ajoutant une colonne "CODE EMPLOI", trier le résultat sur ce code. 0 signifie que le code emploi n’existe pas.
--82:Sélectionner les employés en remplaçant les noms par '*****' dans le service n°1, trier le résultat suivant le N° de service.
SELECT
    *,
    REPLACE(nom, nom, '*****')
FROM
    emp
WHERE
    noserv = 1
ORDER BY
    noserv;

--83:Sélectionner les noms des services en affichant que les 5 premiers caractères.
SELECT
    LEFT(service, 5) as service
FROM
    serv;

--84:Sélectionner les employés embauchés en 1988.
SELECT
    *
FROM
    emp
WHERE
    EXTRACT(
        YEAR
        FROM
            embauche
    ) = '1988';

--85:Sélectionner les noms des employés sur 3 colonnes la première en majuscules, la seconde avec l'initiale en majuscule et le reste en minuscules, la troisième en minuscules.
SELECT
    nom,
    CONCAT(UPPER(LEFT(nom, 1)), LOWER(SUBSTRING(nom, 2))),
    LOWER(nom)
FROM
    emp;

--86:Sélectionner les positions des premiers M et E dans les noms des employés.