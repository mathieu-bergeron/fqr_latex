%Classe LaTex pour les normes de présentation FQR (Fonds québécois de recherche)
%Copyright (C) <2021>  <Mathieu Bergeron> <mathieu.bergeron@cmontmorency.qc.ca>
%
%This program is free software: you can redistribute it and/or modify
%it under the terms of the GNU Affero General Public License as
%published by the Free Software Foundation, either version 3 of the
%License, or (at your option) any later version.
%
%This program is distributed in the hope that it will be useful,
%but WITHOUT ANY WARRANTY; without even the implied warranty of
%MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%GNU Affero General Public License for more details.
%
%You should have received a copy of the GNU Affero General Public License
%along with this program.  If not, see <https://www.gnu.org/licenses/>.

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{fqr}

\newcommand{\langue}{french}
\DeclareOption{french}{\renewcommand{\langue}{french}}
\DeclareOption{english}{\renewcommand{\langue}{}}

\PassOptionsToClass{\langue}{article}
\ProcessOptions\relax

\LoadClass{article}

\tolerance=10000

\RequirePackage[T1]{fontenc} 
\RequirePackage[utf8]{inputenc}
\RequirePackage[\langue]{babel}
\RequirePackage{times}
\RequirePackage[hyphens]{url}
\RequirePackage[document]{ragged2e}

\newcommand{\nombreDePages}{\texttt{\textbackslash{}nombreDePages}}
\newcommand{\prenom}{\texttt{\textbackslash{}prenom}}
\newcommand{\nom}{\texttt{\textbackslash{}nom}}
\newcommand{\prenomNom}{\prenom~\nom}
\newcommand{\nomPrenom}{\nom,~\prenom}
\newcommand{\titreDocument}{\texttt{\textbackslash{}titreDocument}}

\RequirePackage{vmargin}
\setpapersize{USletter}
\setmarginsrb{2cm}{2cm}{2cm}{2cm}
             {0.75cm}{24pt}{1.27cm}{24pt}

\RequirePackage{fancyhdr}
\setlength{\headheight}{15.2pt}
\pagestyle{fancy}

\lhead{}
\chead{}
\rhead{\nomPrenom}

\lfoot{\titreDocument}
\cfoot{}
\rfoot{Page~\thepage~|~\nombreDePages{}}

\renewcommand{\headrulewidth}{0pt}

\renewcommand{\thesection}{\hbox to 12pt{\hfill\Alph{section}}\hbox to 2pt{\hfill}.}

