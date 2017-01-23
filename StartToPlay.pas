﻿program StartToPlay

uses crt;

{
//BUT : Gerer le nombre de personne au Start To Play
//ENTREE : Le nombre de personne qui entre et qui sort
//SORTIE : Indique si la salle est pleine

CONST
	MAX : 250

VAR
	nb, entree : ENTIER
	
DEBUT
	nb <- 0
	REPETER
		ECRIRE 'Entrez combien de personnes entre/sort ou 666 pour quitter'
		LIRE entree																						//Lecture du nombr ede personne qui entre( ou sort si le chiffre entré est négatif)
		SI entree <> 666 ALORS																			//Vérification si le chiffre entré n'est pas le chiffre de sortie du programme
		SI nb + entree > MAX ALORS																		//Vérification si il y a suffisament de place dans la salle
				ECRIRE 'ERREUR, il y a ' (nb + entree) - MAX & ' Personnes en trop qui veulent entrer'	//Si il y a trop de personne qui veulent entrer, le programme dis combien de personne en trop il y a
			SINON																						//Si il y a assez de place dans la salle
				nb <- nb + entree																		//Le nombre de personne dans la salle est mis à jour du nouveau nombre de personne dans la salle
				ECRIRE 'Ok, il y a désormais ' & nb & ' personnes dans la salle'						//Le programme confirme et donne le nombre de personne dans la salle
			FINSI
		FINSI
	JUSQUA nb = 666																						//Fin de la boucle si le chiffre de sortie à été entré
FIN
}