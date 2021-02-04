% STUCOSREC_ARTICLE.CLS - VERSION 1.0
% Klemen Berkovič - Februar 4th. 2021
%
\def\fileversion{V1.00}
\def\filedate{February 4, 2021}
\def\docdate {February 4, 2021}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{stucosrec-article}[2021/02/04 Example LaTeX class]

\LoadClass[twocolumn]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Osnovni paketi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[utf8]{inputenc} % omogoča uporabo slovenskih črk kodiranih v formatu UTF-8
\RequirePackage[slovene,english]{babel} % naloži, med drugim, slovenske delilne vzorce
\RequirePackage[a4paper, twoside=true]{geometry} % Za nastavljanje robov strani
\RequirePackage[pdftex]{graphicx}  % omogoča vlaganje slik različnih formatov
\RequirePackage{titlesec} % Nastavitve za stile naslovov
\RequirePackage{filecontents} % Nastavitve za fonte
\RequirePackage{fancyhdr} % poskrbi, na primer, za glave strani
\RequirePackage{amssymb} % dodatni simboli
\RequirePackage{amsmath} % eqref, npr.
\RequirePackage[hyphens]{url} 
\RequirePackage{comment} % Za komentarje
\RequirePackage{color} % Za barve
\RequirePackage{soul}
\RequirePackage{longtable} % Za tabele, ki se preslikajo na več strani
\RequirePackage[linesnumbered,boxed,resetcount]{algorithm2e} % Pseudokod, ki bo imel ostevilcene vrstice ter bo imel vsebino zapisano v okvirju
\RequirePackage[pdftex, colorlinks=true, citecolor=black, filecolor=black, linkcolor=black, urlcolor=black, pagebackref=false, pdfproducer={LaTeX}, pdfcreator={LaTeX}, hidelinks]{hyperref}
\RequirePackage{xmpincl}
\RequirePackage{datetime}
\RequirePackage{caption}
\RequirePackage{tocloft}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Postavitev strani
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\geometry{%
	top=30mm, bottom=30mm, 
	left=25mm, right=25mm, 
	textwidth=155mm,
	headsep=15mm
}
