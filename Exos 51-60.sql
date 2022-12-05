--51:Sélectionner les nom et date d'embauche des employés suivi des nom et date d'embauche de leur supérieur pour les employés plus ancien que leur supérieur, dans l'ordre nom employés, noms supérieurs.
SELECT
    e.nom ,
    e.embauche,
    s.nom,
    s.embauche
FROM
    emp e ,
    emp s
WHERE
    e.embauche < s.embauche
    AND e.sup = s.noemp
ORDER BY
    e.nom ,
    s.nom ;

--52:Sélectionner sans doublon les prénoms des directeurs et « les prénoms des techniciens du service 1 » avec un UNION.
