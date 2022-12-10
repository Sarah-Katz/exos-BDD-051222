--91:Même chose en écrivant la colonne embauche sous la forme ‘day dd month yyyy'
SELECT
    nom,
    emploi,
    TO_CHAR(embauche :: DATE, 'day dd/mm/yyyy') as embauche
FROM
    emp
WHERE
    noserv = 6;

--92:Même chose en écrivant la colonne embauche sous la forme ‘day dd month(abv) yy'.
SELECT
    nom,
    emploi,
    TO_CHAR(embauche :: DATE, 'day dd/mon/yyyy') as embauche
FROM
    emp
WHERE
    noserv = 6;

--93:Même chose en écrivant la colonne embauche sous la forme ‘yy month(abv) dd'.
SELECT
    nom,
    emploi,
    TO_CHAR(embauche :: DATE, 'yy mon dd') as embauche
FROM
    emp
WHERE
    noserv = 6;

--94:Même chose en écrivant la colonne embauche sous la forme ‘Day-dd-Month-yyyy'.
SELECT
    nom,
    emploi,
    TO_CHAR(embauche :: DATE, 'day-dd-month-yyyy') as embauche
FROM
    emp
WHERE
    noserv = 6;

--95:Sélectionner les employés avec leur ancienneté en jours dans l'entreprise.
SELECT
    nom,
    prenom,
    DATE_PART(
        'day',
        CURRENT_DATE :: timestamp - embauche :: timestamp
    ) as anciennetejour
FROM
    emp;

--96:Sélectionner les employés avec leur ancienneté en mois dans l'entreprise.
SELECT
    nom,
    prenom,
    (
        DATE_PART('year', CURRENT_DATE :: date) - DATE_PART('year', embauche :: date)
    ) * 12 + (
        DATE_PART('month', CURRENT_DATE :: date) - DATE_PART('month', embauche :: date)
    ) as anciennetemois
FROM
    emp;

--97:Sélectionner toutes les dates d’embauche majorées de 12 ans.
SELECT
    embauche + interval '12 year'
FROM
    emp;

--98:Sélectionner les employés ayant plus de 12 ans d’ancienneté.
SELECT
    *
FROM
    emp
WHERE
    DATE_PART('year', CURRENT_DATE :: date) - DATE_PART('year', embauche :: date) > 12;

--99:Depuis combien de jours êtes-vous nés ?
SELECT
    DATE_PART(
        'day',
        CURRENT_DATE :: timestamp - '19/08/1993' :: timestamp
    ) as jours;

--100:Depuis combien de mois êtes-vous nés ?
SELECT
    (
        DATE_PART('year', CURRENT_DATE :: date) - DATE_PART('year', '19/08/1993' :: date)
    ) * 12 + (
        DATE_PART('month', CURRENT_DATE :: date) - DATE_PART('month', '19/08/1993' :: date)
    ) as mois;