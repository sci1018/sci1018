# -----------------------------------------------
# Pour créer le "livre" du book, il faut:
# -----------------------------------------------

#0) S'assurer d'avoir les bons packages installés
# 'bookdown', 'knitr', 'rmarkdown'
# plus tous les packages utilisés dans le cours lui-même

#1) Retirer les fichiers anciennement créés
bookdown::clean_book(TRUE)

#2) Appliquer la commande render avec les options nécessaires
options(bookdown.render.file_scope = FALSE); 
bookdown::render_book('index.Rmd', 'bookdown::gitbook')
# Note1: index.Rmd correspond à la page principale (de présentation) du site.
# Note2: cette commande a pour effet de créer les fichiers html du cours. Il sont placés dans le dossier docs/
# Il s'agit d'ouvrir le fichier docs/index.html pour faire apparaitre tout le site web du cours.


#--------------------------------------------------
# Si on modifie un seul fichier Rmd et qu'on veut voir le résultat sans avoir à re-rouler l'entièreté du cours, on fait:
#--------------------------------------------------

bookdown::preview_chapter('Module6/index.Rmd', 'bookdown::gitbook')

# Ceci générera un nouveau fichier index.html pour le module 6.
# Il faut déjà avoir préalablement créé l'entièreté du site pour utiliser cette fonction.


