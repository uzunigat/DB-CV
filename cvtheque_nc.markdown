<h1 align="center"> NOTE DE CLARIFICATION <\h1> <br>

**Réalisateur:**  Rodrigo Uriel ZUÑIGA TELLEZ<br>
**Client:** Youcef AMAROUCHE


<hr>

<h2 align="center"> CONTEXTE ET OBJECTIFS  </h2> <br> 

Réaliser une application web intégrant une base de données pour la gestion des CV.<br>
La base de données doit permettre de gérer des personnes, ainsi que l'ensemble des informations qui leur sont associées et qui sont nécessaires à la production d'un CV.
les liens suivants permettent d'avoir une idée du fonctionnement de la base de données avec une application Web:

*    [www.emploitic.com](www.emploitic.com)
*    [www.cadremploi.fr ](www.cadremploi.fr )
*    [www.keljob.com ](www.keljob.com )

<hr>

<h2 align="center"> LIVRABLES  <br> 

Les livraisons se feront semaine après semaine (2 jours avant le TD), tandis que dans chaque classe TD il y aura des interviews dédiées à répondre aux questions sur le sujet

*     Étape 1 à rendre 2 jours avant votre TD2 : NDC, MCD ( Maximum le 25 / 05 / 2020)

*     Étape 2 à rendre 2 jours avant votre TD3 : NDC, MCD, MLD, SQL CREATE et INSERT ( Maximum le 01 / 06 / 2020)

*     Étape 3 à rendre 2 jours avant votre TD4 : NDC, MCD, MLD, SQL CREATE et INSERT, SQL SELECT, Complément : Normalisation ( Maximum le 08 / 06 / 2020)

*     Étape 4 à rendre 2 jours avant votre TD5 : Révision complète du projet (v2) ( Maximum le 15 / 06 / 2020)

*     Étape 5 à rendre à la date du final : Révision complète du projet (v3) **Uniquement si on n'a pas validé l'étape 4**

<hr>

<h2 align="center"> DÉTAILS DU SYSTÈME  <br> 

On cherche à représenter différents objets au sein d'une base de données afin d'organiser la CV thèque.
Les differents objets qu'on veut répresenter sont:

* Candidats
* CV
* Referents
* Publication
* Formation
* Experience Profesionnelle
* Langues
* Competences
* Associations

Pour l'implementation de ces principaux classes on va utiliser autres classes qui vont servir à pouvoir obtenir facilement autres informations independents des personnes ou des CV:

* Telephone
* Secteur
* Page Web

<h4> Les candidats </h4> <br>

*     id
*     password
*     mail
*     numero

<h4> CV </h4> <br>

*     titre
*     statut
*     langue
*     date_creation
*     date_dmj
   

<h4> Referents </h4> <br>

*      nom
*      prenom
*      numero

<h4> Publication </h4> <br>

*     titre
*     numero_ISBN
*     date
*     contenu

<h4> Formation </h4> <br>

*     titre
*     type
*     date_debut
*     date_fin
*     etablissement
*     Pays
*     Ville

<h4> Experince Profesionnelle </h4> <br>

*     titre_de_poste
*     date_debut
*     date_fin
*     fonction_assure
*     secteur
*     nom_entreprise

<h4> Langues </h4> <br>

*     nom

<h4> Competences </h4> <br>

*     nom

<h4> Association </h4> <br>

*     nom
*     date_debut
*     date_fin
*     secteur

<h4> Telephone </h4> <br>

*     numero
*     type

<h4> Secteur </h4> <br>

*     nom


<h4> Page Web </h4> <br>

*     url
*     type
*     idCandidat

<hr>

<h2 align="center"> REQUÊTES  </h2> <br> 

*     Le nombre de candidats par domaine d'études

*     La liste des candidats ayant comme compétence base de données et plus de 5 ans d'expériences

*     Synthétiser le parcours de chaque candidat en précisant la liste de ses diplômes, la liste des postes occupés, le nombre d'expériences professionnelles acquises, les langues maîtrisées.

*     La recherche multicritères des candidats en fonction du nombre d'expériences professionnelles, de l'année d'obtention de dernier diplôme, du poste souhaité.

*     L'application doit aussi permettre l'ajout des candidats et des CV 

<hr>



