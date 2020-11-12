-- Afficher le nombre de Candidats selon une formation spécifique --

SELECT count(candidat.id)         
FROM ((Candidat 
INNER JOIN cv ON Candidat.id = cv.candidat) 
INNER JOIN formation ON cv.candidat = formation.cv) 
WHERE formation.titre = 'Ingeniero en Sistemas'
;

-- Afficher les Candidats selon une formation spécifique --

SELECT Candidat.nom, Candidat.prenom         
FROM ((Candidat 
INNER JOIN cv ON Candidat.id = cv.candidat) 
INNER JOIN formation ON cv.candidat = formation.cv) 
WHERE formation.titre = 'Ingeniero en Sistemas'
;

-- Afficher les Candidats ayant comme competence Base de Donnes et une experience de plus de 5 ans--

SELECT Candidat.nom, Candidat.prenom
FROM ((Candidat INNER JOIN cv ON Candidat.id = cv.candidat) INNER JOIN experience_profesionnelle ON experience_profesionnelle.cv= Candidat.id) 
WHERE experience_profesionnelle.secteur = 'Informatique' AND date_part('year', experience_profesionnelle.date_fin::date) - date_part('year', experience_profesionnelle.date_debut::date) >= 2 
;

-- Creer VIEW pour afficher les years d'experience dans le secteur "informatique"

CREATE VIEW Temps_Experience_Informatique AS
SELECT Candidat.nom, Candidat.prenom, SUM(DATE_PART('year', experience_profesionnelle.date_fin::date) - date_part('year', experience_profesionnelle.date_debut::date)) AS years_informatique
FROM ((Candidat INNER JOIN cv ON Candidat.id = cv.candidat) INNER JOIN experience_profesionnelle ON experience_profesionnelle.cv= Candidat.id) 
WHERE (experience_profesionnelle.secteur = 'Informatique') 
GROUP BY (Candidat.id)
;

-- Afficher le nombre de langues qui maitrise chaque candidat --

CREATE VIEW Nombre_Langues AS 
SELECT Candidat.id , Candidat.nom, Candidat.prenom, count(*) AS nb_langues FROM
((Candidat INNER JOIN cv ON Candidat.id = cv.candidat) INNER JOIN niveau ON niveau.candidat= Candidat.id)
GROUP BY (Candidat.id)
ORDER BY (Candidat.id) asc
;

-- Afficher le nombre d'experiences de chaque candidat --

CREATE VIEW Nombre_Experiences AS 
SELECT Candidat.id , Candidat.nom, Candidat.prenom, count(*) AS nb_experiences FROM
((Candidat INNER JOIN cv ON Candidat.id = cv.candidat) INNER JOIN experience_profesionnelle ON experience_profesionnelle.cv= Candidat.id)
GROUP BY (Candidat.id)
ORDER BY (Candidat.id) asc
;

-- Jointure des nombres d'experiences, nombre de langues --

SELECT nombre_experiences.nom, nombre_experiences.prenom, nombre_experiences.nb_experiences, nombre_langues.nb_langues 
FROM (nombre_experiences FULL JOIN nombre_langues ON nombre_experiences.id = nombre_langues.id);





