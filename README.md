# Classe LaTeX pour les normes de présentation FQR (Fonds de recherche du Québec)

## Exemples d'utilisation

Redéfinir les commandes définissant le nombre de page, votre nom et le titre du document:

        \documentclass{fqr} 

        \renewcommand{\nombreDePages}{7}
        \renewcommand{\prenom}{Mathieu}
        \renewcommand{\nom}{Bergeron}
        \renewcommand{\titreDocument}{Description de projet -- recherche collégiale}

## Exemples de scripts


1. `compiler_collegial.sh`: produire le `.pdf` avec `xelatex` et `biber`
1. `extraire_bibliographie.sh`: extraire la bibliographie dans un document séparé

