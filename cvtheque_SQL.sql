CREATE TABLE Telephone(
  numero VARCHAR(10),
  type VARCHAR NOT NULL,
  CHECK (type in ('maison', 'mobile')),
  PRIMARY KEY(numero)
  
);

CREATE TABLE Candidat(

  id SERIAL,
  password VARCHAR NOT NULL,
  nom VARCHAR NOT NULL,
  prenom VARCHAR NOT NULL,
  email VARCHAR CHECK (email like '%@%.%') NOT NULL, 
  numero VARCHAR(10),
  PRIMARY KEY(id),
  FOREIGN KEY(numero) REFERENCES Telephone(numero),
  UNIQUE (nom, prenom, email)
  

);

CREATE TABLE Referents(

  nom VARCHAR NOT NULL,
  prenom VARCHAR NOT NULL,
  email VARCHAR CHECK (email like '%@%.%') NOT NULL,
  numero VARCHAR(10) PRIMARY KEY REFERENCES Telephone(numero)
  

);

CREATE TABLE Page_Web(

  url VARCHAR PRIMARY KEY,
  type VARCHAR NOT NULL,
  candidat INTEGER REFERENCES Candidat(id)
  CHECK (type in ('profesionnelle', 'personnelle'))

);

CREATE TABLE Publication(

  titre VARCHAR NOT NULL,
  ISBN NUMERIC(13) PRIMARY KEY,
  date DATE NOT NULL,
  contenu VARCHAR NOT NULL,
  candidat INTEGER REFERENCES Candidat(id)

);

CREATE TABLE CV(

  titre VARCHAR NOT NULL,
  statut VARCHAR NOT NULL,
  langue VARCHAR NOT NULL,
  date_creation DATE NOT NULL,
  date_dmj DATE NOT NULL,
  candidat INTEGER PRIMARY KEY REFERENCES Candidat(id)
 
);

CREATE TABLE Langues(

  nom VARCHAR PRIMARY KEY

);

CREATE TABLE Niveau(

  candidat INTEGER REFERENCES Candidat(id),
  langue VARCHAR REFERENCES Langues(nom),
  niveau VARCHAR(2) NOT NULL,
  PRIMARY KEY(candidat, langue)

);

CREATE TABLE Competences(

  nom VARCHAR PRIMARY KEY

);

CREATE TABLE Secteur(

  nom VARCHAR PRIMARY KEY

);


CREATE TABLE Experience_Profesionnelle(

  id SERIAL,
  titre_de_poste VARCHAR NOT NULL,
  date_debut Date NOT NULL, 
  date_fin Date NOT NULL, 
  fonction_assure VARCHAR NOT NULL, 
  nom_entreprise VARCHAR NOT NULL, 
  cv INTEGER REFERENCES CV(candidat),
  secteur VARCHAR REFERENCES Secteur(nom)
 
);

CREATE TABLE Associations(

  id SERIAL,
  nom VARCHAR NOT NULL, 
  date_debut DATE NOT NULL, 
  date_fin DATE NOT NULL, 
  cv INTEGER REFERENCES CV(candidat),
  secteur VARCHAR REFERENCES Secteur(nom)

);

CREATE TABLE Formation(

  id SERIAL,
  titre VARCHAR NOT NULL,
  type VARCHAR NOT NULL, 
  date_debut DATE NOT NULL, 
  date_fin DATE NOT NULL, 
  etablissement VARCHAR NOT NULL, 
  Pays VARCHAR NOT NULL, 
  Ville VARCHAR NOT NULL, 
  cv INTEGER REFERENCES CV(candidat),
  CHECK (type in ('profesionnelle','personnelle'))

);

CREATE TABLE Competences_CV(

  nom_competence VARCHAR REFERENCES Competences(nom),
  cv INTEGER REFERENCES CV(candidat),
  PRIMARY KEY(nom_competence, cv)

);

CREATE TABLE Candidat_Referents(

  candidat INTEGER REFERENCES Candidat(id), 
  referent VARCHAR(10) REFERENCES Referents(numero),
  PRIMARY KEY(candidat, referent)

);


