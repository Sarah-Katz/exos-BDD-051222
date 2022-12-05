--21:Sélectionner les « directeurs et les techniciens » du service 1.
SELECT
    *
FROM
    emp
WHERE
    (
        emploi = 'DIRECTEUR'
        OR emploi = 'TECHNICIEN'
    )
    AND noserv = 1;