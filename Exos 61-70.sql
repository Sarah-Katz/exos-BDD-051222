--61:Sélectionner les noms, le numéro de service, l’emplois et le salaires des personnes travaillant dans la même ville que HAVET.
SELECT
    nom,
    noserv,
    emploi,
    sal
FROM
    emp
WHERE
    noserv IN (
        SELECT
            noserv
        FROM
            serv
        WHERE
            ville IN (
                SELECT
                    ville
                FROM
                    serv
                WHERE
                    noserv IN (
                        SELECT
                            noserv
                        FROM
                            emp
                        WHERE
                            nom = 'HAVET'
                    )
            )
    );

--62:Sélectionner les employés du service 1, ayant le même emploi qu'un employé du service N°3.
SELECT
    *
FROM
    emp
WHERE
    noserv = 1
    AND emploi IN (
        SELECT
            emploi
        FROM
            emp
        WHERE
            noserv = 3
    );

--63:Sélectionner les employés du service 1 dont l'emploi n'existe pas dans le service 3.
SELECT
    *
FROM
    emp
WHERE
    noserv = 1
    AND emploi NOT IN (
        SELECT
            emploi
        FROM
            emp
        WHERE
            noserv = 3
    );

--64:Sélectionner nom, prénom, emploi, salaire pour les employés ayant même emploi et un salaire supérieur à celui de CARON.
SELECT
    nom,
    prenom,
    emploi,
    sal
FROM
    emp
WHERE
    emploi IN (
        SELECT
            emploi
        FROM
            emp
        WHERE
            nom = 'CARON'
    )
    AND sal > (
        SELECT
            sal
        FROM
            emp
        WHERE
            nom = 'CARON'
    );

--65:Sélectionner les employés du service N°1 ayant le même emploi qu'un employé du service des VENTES.
SELECT
    *
FROM
    emp
WHERE
    emploi IN (
        SELECT
            emploi
        FROM
            emp
        WHERE
            noserv IN (
                SELECT
                    noserv
                FROM
                    serv
                WHERE
                    service = 'VENTES'
            )
    );

--66:Sélectionner les employés de LILLE ayant le même emploi que RICHARD, trier le résultat dans l'ordre alphabétique des noms.
SELECT
    *
FROM
    emp
WHERE
    noserv IN (
        SELECT
            noserv
        FROM
            serv
        WHERE
            ville = 'LILLE'
    )
    AND emploi IN (
        SELECT
            emploi
        FROM
            emp
        WHERE
            nom = 'RICHARD'
    )
ORDER BY
    nom;

--67:Sélectionner les employés dont le salaire est plus élevé que le salaire moyen de leur service (moyenne des salaires = avg(sal)), résultats triés par numéros de service.
SELECT
    *
FROM
    emp emp1
WHERE
    sal > (
        SELECT
            AVG(sal)
        FROM
            emp emp2
        WHERE
            emp1.noserv = emp2.noserv
    )
ORDER BY
    noserv;

--68:Sélectionner les employés du service INFORMATIQUE embauchés la même année qu'un employé du service VENTES.( année:to_char(embauche,’YYYY’) )
SELECT
    *
FROM
    emp
    INNER JOIN serv on emp.noserv = serv.noserv
WHERE
    TO_CHAR(embauche, 'YYYY') IN (
        SELECT
            TO_CHAR(embauche, 'YYYY')
        FROM
            emp
            INNER JOIN serv on emp.noserv = serv.noserv
        WHERE
            serv.service = 'VENTES'
    )
    AND serv.service = 'INFORMATIQUE';

--69:Sélectionner le nom, l’emploi, la ville pour les employés qui ne travaillent pas dans le même service que leur supérieur hiérarchique direct.
SELECT
    nom,
    emploi,
    ville
FROM
    emp
    INNER JOIN serv ON emp.noserv = serv.noserv
WHERE
    emp.sup NOT IN (
        SELECT
            emp2.noemp
        FROM
            emp emp2
        WHERE
            emp.noserv = emp2.noserv
    );

--70:Sélectionner le nom, le prénom, le service, le revenu des employés qui ont des subalternes, trier le résultat suivant le revenu décroissant.
SELECT
    nom,
    prenom,
    noserv,
    sal
FROM
    emp
WHERE
    emp.noemp IN (
        SELECT
            sup
        FROM
            emp emp2
        WHERE
            emp.noemp = emp2.sup
    )
ORDER BY
    sal DESC;