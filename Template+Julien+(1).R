######################################################################
######################################################################
##                                                                  ##
## Projet 4 - Réalisez une étude de santé publique avec R ou Python ##
##                                                                  ##
######################################################################
######################################################################





################# ETAPE 1 : Chargement des 4 fichiers ##################

population = read.csv("population.csv", fileEncoding = "UTF-8")

# Comme vous pouvez le voir dans les fichiers que vous venez d'importer, les unités sont différentes entre les différentes fichiers.
# Nous allons convertir les différentes unités pour harmoniser tous les fichiers.

############ ETAPE 2 : Analyse exploratoire des fichiers #############

############ 2.1 : Analyse exploratoire du fichier population

# Afficher les 5 premières lignes de la table
head(population)

# Multiplication de la colonne valeur par 1000


# Changement du nom de la colonne Valeur par Population


# Afficher les 5 premières lignes de la table


############ 2.2 : Analyse exploratoire du fichier disponibilité alimentaire

# Afficher les 5 premières lignes de la table


# Renomer les colonnes


# Remplacement des NaN dans le dataset par des 0


# Multiplication de toutes les lignes contenant des tonnes en Kg


# Afficher les 5 premières lignes de la table


############ 2.3 : Analyse exploratoire du fichier aide alimentaire

# Afficher les 5 premières lignes de la table


# Changement du nom de la colonne Pays bénéficiaire par Zone


# Changement du nom de la colonne Valeur par Aide_kg


# Multiplication de la colonne Aide_alimentaire par 1000


# Afficher les 5 premières lignes de la table



############ 2.4 : Analyse exploratoire du fichier sous nutrition

# Afficher les 5 premières lignes de la table


# Conversion de la colonne en numerique


# Puis remplacement des NaN en 0


# Changement du nom de la colonne Valeur par sous_nutrition


# Multiplication de la colonne sous_nutrition par 1000000


# Afficher les 5 premières lignes de la table


############ ETAPE 3 : Analyses #############
############ 3.1 - Proportion de personnes en sous nutrition

# Il faut tout d'abord faire une jointure entre la table population et la table sous nutrition, en ciblant l'année 2017 :


# Affichage du dataset


# Affichage du nombre de personnes en état de sous nutrition



############ 3.2 - Nombre théorique de personne qui pourrait être nourries
# Combien mange en moyenne un être humain ? Source => 

# On commence par faire une jointure entre le data frame population et Dispo_alimentaire afin d'ajouter dans ce dernier la population


# Création de la colonne dispo_kcal et calcul des kcal disponibles mondialement


# Calcul du nombre d'humains pouvant être nourris



############ 3.3 - Nombre théorique de personne qui pourrait être nourries avec les produits végétaux

# Transfert des données avec les végétaux dans un nouveau dataframe


# Calcul du nombre de kcal disponible pour les végétaux


# Calcul du nombre d'humains pouvant être nourris avec les végétaux


############ 3.4 - Utilisation de la disponibilité intérieure¶

# Calcul de la disponibilité totale


# Création d'une boucle for pour afficher les différentes valeurs en fonction des colonnes aliments pour animaux, pertes, nourritures, semences, traitement et autres utilisations


############ 3.5 - Utilisation des céréales

# Création d'une liste avec toutes les variables


# Création d'un dataframe avec les informations uniquement pour ces céréales


# Affichage de la proportion d'alimentation animale


# Affichage de la proportion d'alimentation animale



############ 3.6 - Pays avec la proportion de personnes sous-alimentée la plus forte en 2017

# Création de la colonne proportion par pays


# Affichage après  trie des 10 pires pays



############ 3.7 - Pays qui ont le plus bénéficié d'aide alimentaire depuis 2013

# Calcul du total de l'aide alimentaire par pays


# Affichage après trie des 10 pays qui ont bénéficié le plus de l'aide alimentaire


############ 3.8 - Evolution des 5 pays qui ont le plus bénéficiés de l'aide alimentaire entre 2013 et 2016

# Création d'un dataframe avec la zone, l'année et l'aide alimentaire puis groupby sur zone et année 


# Création d'une liste contenant les 5 pays qui ont le plus bénéficiées de l'aide alimentaire


# On filtre sur le dataframe avec notre liste


# Affichage des pays avec l'aide alimentaire par année


############ 3.9 - Pays avec le moins de disponibilité par habitant

# Calcul de la disponibilité en kcal par personne par jour par pays


# Affichage des 10 pays qui ont le moins de dispo alimentaire par personne 


############ 3.10 - Pays avec le plus de disponibilité par habitant

# Affichage des 10 pays qui ont le moins de dispo alimentaire par personne 



############ 3.11 - Exemple de la Thaïlande pour le Manioc¶

# Création d'un dataframe avec uniquement la Thaïlande


# Calcul de la sous nutrition en Thaïlande


# On calcule la proportion exportée en fonction de la proportion
############ ETAPE 6 - Analyse complémentaires #############






