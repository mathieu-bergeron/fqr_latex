# Classe LaTeX pour les normes de présentation FQR (Fonds de recherche du Québec)

## Exemples d'utilisation

### Utiliser la classe

        \documentclass{fqr} 

La langue est `french` par défaut, mais on peut aussi utiliser `english`:

        \documentclass[english]{fqr} 

### Définir vos infos

        \renewcommand{\nombreDePages}{7}
        \renewcommand{\prenom}{Mathieu}
        \renewcommand{\nom}{Bergeron}
        \renewcommand{\titreDocument}{Description de projet -- recherche collégiale}

## Exemples de scripts


1. `compiler_collegial.sh`: produire le `.pdf` avec `xelatex` et `biber`
1. `extraire_bibliographie.sh`: extraire la bibliographie dans un document séparé

