% STUCOSREC_ARTICLE.CLS - VERSION 1.0
% Klemen Berkovič - Februar 11th. 2021
%
\NeedsTeXFormat{LaTeX2e}

\def\@classname{stucosrec}
\def\fileversion{V1.00}
\def\filedate{February 11, 2021}
\def\docdate {February 11, 2021}

\ProvidesClass{\@classname}[2021/02/04 Example LaTeX class]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Osnovni razred dokumenta
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[11pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Osnovni paketi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc} % omogoča uporabo slovenskih črk kodiranih v formatu UTF-8
\RequirePackage{babel} % Nastavitve za jezik
\RequirePackage[verbose=true]{geometry} % Za nastavljanje robov strani
\RequirePackage{graphicx}  % omogoča vlaganje slik različnih formatov
\RequirePackage{fancyhdr} % poskrbi, na primer, za glave strani
\RequirePackage{amsmath, amsfonts, amssymb} % dodatni matematicni simboli
\RequirePackage[hyphens]{url}
\RequirePackage{color} % Za barve
\RequirePackage[linesnumbered, boxed, resetcount]{algorithm2e} % Pseudokod, ki bo imel ostevilcene vrstice ter bo imel vsebino zapisano v okvirju
\RequirePackage[pdftex, colorlinks=true, citecolor=black, filecolor=black, linkcolor=black, urlcolor=black, pagebackref=false, pdfproducer={LaTeX}, pdfcreator={LaTeX}, hidelinks]{hyperref}
\RequirePackage{datetime}
\RequirePackage{float} % Nastavitve za pozicioniranje tabel in figur
\RequirePackage[font=bf]{caption} % Nstavitve naslovov figur, tabel...
\RequirePackage[switch]{lineno} % Za namene recenzij

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Opcije
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Za lazjo revizijo
\DeclareOption{review}{\def\@review{}}
% Definicija clanka
\DeclareOption{article}{%
	\PassOptionsToClass{twocolumn}{article}%
	\PassOptionsToPackage{english}{babel}%
	\def\@twocolumn{}%
	\def\@enlan{}%
}
\DeclareOption{clanek}{%
	\PassOptionsToClass{twocolumn}{article}%
	\PassOptionsToPackage{slovene}{babel}%
	\def\@twocolumn{}%
}
% Definicija abstrakta
\DeclareOption{abstract}{%
	\PassOptionsToClass{onecolumn}{article}%
	\PassOptionsToPackage{english}{babel}%
	\def\@enlan{}%
}
\DeclareOption{abstrakt}{%
	\PassOptionsToClass{onecolumn}{article}%
	\PassOptionsToPackage{slovene}{babel}%
}
\DeclareOption*{%
	\ClassWarning{\@clssname}{Unknown option ‘\CurrentOption’}%
}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Postavitev strani
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\geometry{
	a4paper,
	hcentering,
	textheight=720pt,
	textwidth=504pt,
	top=50pt,
	footskip=55pt,
	marginparwidth=0pt
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nastavitve za lomljenje vrstic
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\tolerance=350
\pretolerance=350
\setlength{\emergencystretch}{3em}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Odstranjevanje izdelave kazala
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\listoffigures{\ClassError{\string\listoffigures\space is not allowed}\@eha}
\def\listoftables{\ClassError{\string\listoftables\space is not allowed}\@eha}
\def\listofalgorithms{\ClassError{\string\listofalgorithms\space is not allowed}\@eha}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Stil strani
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{fancy}
\lhead{}
\chead{}
\rhead{}
\lfoot{\includegraphics[scale=.09]{StucosrecLogo.pdf}}
\cfoot{}
\rfoot{}
\renewcommand\headrulewidth{0pt}
\renewcommand\footrulewidth{0pt}
\fancyheadoffset{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Nastavitve fonta
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\IfFileExists{lmodern.sty}{}{\ClassWarning{\@classname}{lmodern package is missing; please upgrade}}
\RequirePackage{lmodern}

% font sizes with reduced leading
\renewcommand{\normalsize}{%
	\@setfontsize\normalsize\@xpt\@xipt
	\abovedisplayskip      7\p@ \@plus 2\p@ \@minus 5\p@
	\abovedisplayshortskip \z@ \@plus 3\p@
	\belowdisplayskip      \abovedisplayskip
	\belowdisplayshortskip 4\p@ \@plus 3\p@ \@minus 3\p@
}
\normalsize
\renewcommand{\small}{%
	\@setfontsize\small\@ixpt\@xpt
	\abovedisplayskip      6\p@ \@plus 1.5\p@ \@minus 4\p@
	\abovedisplayshortskip \z@  \@plus 2\p@
	\belowdisplayskip      \abovedisplayskip
	\belowdisplayshortskip 3\p@ \@plus 2\p@   \@minus 2\p@
}
\renewcommand{\footnotesize}{\@setfontsize\footnotesize\@ixpt\@xpt}
\renewcommand{\scriptsize}{\@setfontsize\scriptsize\@viipt\@viiipt}
\renewcommand{\tiny}{\@setfontsize\tiny\@vipt\@viipt}
\renewcommand{\large}{\@setfontsize\large\@xiipt{14}}
\renewcommand{\Large}{\@setfontsize\Large\@xivpt{16}}
\renewcommand{\LARGE}{\@setfontsize\LARGE\@xviipt{20}}
\renewcommand{\huge}{\@setfontsize\huge\@xxpt{23}}
\renewcommand{\Huge}{\@setfontsize\Huge\@xxvpt{28}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Pozicioniranje naslovov
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\providecommand{\section}{}
\renewcommand{\section}{%
	\@startsection{section}{1}{\z@}%
	{-2.0ex \@plus -0.5ex \@minus -0.2ex}%
	{ 1.5ex \@plus  0.3ex \@minus  0.2ex}%
	{\large\bf\raggedright}%
}

\providecommand{\subsection}{}
\renewcommand{\subsection}{%
	\@startsection{subsection}{2}{\z@}%
	{-1.8ex \@plus -0.5ex \@minus -0.2ex}%
	{ 0.8ex \@plus  0.2ex}%
	{\normalsize\bf\raggedright}%
}

\providecommand{\subsubsection}{}
\renewcommand{\subsubsection}{%
	\@startsection{subsubsection}{3}{\z@}%
	{-1.5ex \@plus -0.5ex \@minus -0.2ex}%
	{ 0.5ex \@plus  0.2ex}%
	{\normalsize\bf\raggedright}%
}

\providecommand{\paragraph}{}
\renewcommand{\paragraph}{%
	\@startsection{paragraph}{4}{\z@}%
	{1.5ex \@plus 0.5ex \@minus 0.2ex}%
	{-1em}%
	{\normalsize\bf}%
}

\providecommand{\subparagraph}{}
\renewcommand{\subparagraph}{%
	\@startsection{subparagraph}{5}{\z@}%
	{1.5ex \@plus 0.5ex \@minus 0.2ex}%
	{-1em}%
	{\normalsize\bf}%
}

\providecommand{\subsubsubsection}{}
\renewcommand{\subsubsubsection}{%
	\vskip5pt{\noindent\normalsize\rm\raggedright}%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% float placement
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\topfraction      }{0.85}
\renewcommand{\bottomfraction   }{0.4}
\renewcommand{\textfraction     }{0.1}
\renewcommand{\floatpagefraction}{0.7}

\newlength{\@abovecaptionskip}\setlength{\@abovecaptionskip}{7\p@}
\newlength{\@belowcaptionskip}\setlength{\@belowcaptionskip}{\z@}

\setlength{\abovecaptionskip}{\@abovecaptionskip}
\setlength{\belowcaptionskip}{\@belowcaptionskip}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Pozicioniranje naslovov
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% swap above/belowcaptionskip lengths for tables
\renewenvironment{table}
{\setlength{\abovecaptionskip}{\@belowcaptionskip}%
\setlength{\belowcaptionskip}{\@abovecaptionskip}%
\@float{table}}
{\end@float}

% for algorithms
\SetAlCapSkip{5pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% footnote formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\footnotesep }{6.65\p@}
\setlength{\skip\footins}{9\p@ \@plus 4\p@ \@minus 2\p@}
\renewcommand{\footnoterule}{\kern-3\p@ \hrule width 12pc \kern 2.6\p@}
\setcounter{footnote}{0}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% paragraph formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\parindent}{\z@}
\setlength{\parskip  }{5.5\p@}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Stil nastevanja
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setlength{\topsep       }{4\p@ \@plus 1\p@   \@minus 2\p@}
\setlength{\partopsep    }{1\p@ \@plus 0.5\p@ \@minus 0.5\p@}
\setlength{\itemsep      }{2\p@ \@plus 1\p@   \@minus 0.5\p@}
\setlength{\parsep       }{2\p@ \@plus 1\p@   \@minus 0.5\p@}
\setlength{\leftmargin   }{3pc}
\setlength{\leftmargini  }{\leftmargin}
\setlength{\leftmarginii }{2em}
\setlength{\leftmarginiii}{1.5em}
\setlength{\leftmarginiv }{1.0em}
\setlength{\leftmarginv  }{0.5em}
\def\@listi  {\leftmargin\leftmargini}
\def\@listii {\leftmargin\leftmarginii
\labelwidth\leftmarginii
\advance\labelwidth-\labelsep
\topsep  2\p@ \@plus 1\p@    \@minus 0.5\p@
\parsep  1\p@ \@plus 0.5\p@ \@minus 0.5\p@
\itemsep \parsep}
\def\@listiii{\leftmargin\leftmarginiii
\labelwidth\leftmarginiii
\advance\labelwidth-\labelsep
\topsep    1\p@ \@plus 0.5\p@ \@minus 0.5\p@
\parsep    \z@
\partopsep 0.5\p@ \@plus 0\p@ \@minus 0.5\p@
\itemsep \topsep}
\def\@listiv {\leftmargin\leftmarginiv
\labelwidth\leftmarginiv
\advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
\labelwidth\leftmarginv
\advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
\labelwidth\leftmarginvi
\advance\labelwidth-\labelsep}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Naslov in avtorji clanka
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\providecommand{\maketitle}{}
\renewcommand{\maketitle}{%
	\par
	\begingroup
	\renewcommand{\thefootnote}{\fnsymbol{footnote}}
	% for perfect author name centering
	\renewcommand{\@makefnmark}{\hbox to \z@{$^{\@thefnmark}$\hss}}
	% The footnote-mark was overlapping the footnote-text,
	% added the following to fix this problem               (MK)
	\long\def\@makefntext##1{%
		\parindent 1em\noindent
		\hbox to 1.8em{\hss $\m@th ^{\@thefnmark}$}##1
	}
	\ifdef{\@twocolumn}{\twocolumn[\@maketitle]}{\@maketitle}
	\@thanks
	\endgroup
	\setcounter{footnote}{0}
	\let\maketitle\relax
	\let\thanks\relax
}

% create title (includes both anonymized and non-anonymized versions)
\providecommand{\@maketitle}{}
\renewcommand{\@maketitle}{%
	\vbox{%
		\hsize\textwidth
		\linewidth\hsize
		\centering
		{\LARGE\sc \@title\par}
		\ifdef{\@review}{\@date\\}{}
		\def\And{%
			\end{tabular}\hfil\linebreak[0]\hfil%
			\begin{tabular}[t]{c}\bf\rule{\z@}{24\p@}\ignorespaces%
		}
		\def\AND{%
			\end{tabular}\hfil\linebreak[4]\hfil%
			\begin{tabular}[t]{c}\bf\rule{\z@}{24\p@}\ignorespaces%
		}
		\begin{tabular}[t]{c}\bf\rule{\z@}{24\p@}\@author\end{tabular}%
		\vskip 0.4in \@minus 0.1in \vskip 0.2in
	}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Handling graphics direcory
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\imagespath}[1]{\graphicspath{ {./}#1} }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Handling Keywords
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\keywordname{{\bfseries \emph{Keywords}}}%
\def\keywords#1{%
	\par\addvspace\medskipamount{%
		\rightskip=0pt plus1cm
		\def\and{%
			\ifhmode\unskip\nobreak\fi\ $\cdot$
		}%
		\noindent\keywordname\enspace\ignorespaces#1\par
	}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% add conference notice to bottom of first page
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\ftype@noticebox}{8}
\newcommand{\@notice}{%
	% give a bit of extra room back to authors on first page
	\enlargethispage{2\baselineskip}%
	\@float{noticebox}[b]%
	\footnotesize\@noticestring%
	\end@float%
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Handling abstract
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{abstract}{
	\centerline
	{\large \bfseries \scshape Abstract}
	\begin{bf}
}
{
	\end{bf}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Handling acknowledgment
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{acknowledgment}{\section*{\ifdef{\@enlan}{Acknowledgment}{Zahvala}}}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Stil bibliografije
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\bibliographystyle{acm}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Na zacetku dokumenta
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtBeginDocument{
	\ifdef{\@review}{\linenumbers}{}
}
	
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Na koncu dokumenta
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtEndDocument{}

\endinput
