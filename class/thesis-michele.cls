%*************************************************************%
%************************* START CLASS ***********************%
%*************************************************************%

\LoadClass[twoside,openright]{report}
\NeedsTeXFormat{LaTeX2e}
\newcommand{\version}{2.0} % Change version number after editing (optional)

%-------------------------------------------------------------%
%------------------- USER-SPECIFIC VARIABLES -----------------%
%-------------------------------------------------------------%

\renewcommand*\title[1]
{
    \def\@title{#1}
    \hypersetup{pdftitle={#1}}
}
\newcommand*\subtitle[1]
{
    \def\@subtitle{#1}
}
\renewcommand*\author[1]
{
    \def\@author{#1}
    \hypersetup{pdfauthor={#1}}
}
\newcommand*\affiliation[1]
{
	\def\@affiliation{#1}
}
\newcommand*\studentNumber[1]
{
	\def\@studentNumber{#1}
}
\newcommand*\subject[1]
{
	\def\@subject{#1}
    \hypersetup{pdfsubject={#1}}
}
\newcommand*\keywords[1]
{
	\def\@keywords{#1}
    \hypersetup{pdfkeywords={#1}}
}
\newcommand*\coverimage[1]
{
	\def\@coverimage{#1}
}
\newcommand*\coverlogo[1]
{
	\def\@coverlogo{#1}
}
\newcommand*\titlelogo[1]
{
	\def\@titlelogo{#1}
}

%-------------------------------------------------------------%
%-------------------------- COVER PAGE -----------------------%
%-------------------------------------------------------------%

\newcommand*{\CoverPage}
{

\hypersetup{urlcolor=darkGray}

\begingroup
\thispagestyle{empty}
\BgThispage
\hbox % Horizontal box
{
	\parbox[b]{0.7\textwidth} % Paragraph box which restricts text to less than the width of the page
	{
		\vspace{3.5cm} % Adjust to need
		
		{\noindent{\fontsize{30}{34}\selectfont\textcolor{frontTextColor}{\bfseries \@title}} \\[0.3\baselineskip] \LARGE{\textcolor{frontTextColor}{\@subtitle}}} \\[4\baselineskip] % Title
		{\Large \textcolor{frontTextColor}{\textit{\@affiliation}}}\\[4\baselineskip] % Affiliation
		{\LARGE \textcolor{frontTextColor}{\textsc{\@author}}} % Author
		
		\vspace{0.55\textheight} % Whitespace between blocks
	}
	
	\begin{tikzpicture}[remember picture, overlay]
	    \node at (current page.south west)[anchor=south west,inner sep=2.5cm]
	    {
	        \includegraphics{\@coverlogo}
	    };
	\end{tikzpicture}
}
\endgroup

\pagebreak

}

%-------------------------------------------------------------%
%-------------------------- TITLE PAGE -----------------------%
%-------------------------------------------------------------%

\newcommand*{\TitlePage}
{

\hypersetup{urlcolor=darkGray}

\intentionallyBlank
\pagebreak

\begingroup
\thispagestyle{empty}

\vspace{2.5cm}
\begin{center}
	{{\fontsize{30}{34}\selectfont\bfseries \@title} \\[\baselineskip] \huge{\@subtitle}} \\[3\baselineskip]
	by \\[3\baselineskip]
	\Large{\textsc{\@author}} \\[2\baselineskip]
	\normalsize to obtain the degree of Master of Science \\
	at the \@affiliation, \\
	to be defended publicly on \dayofweekname{11}{10}{2018}, \formatdate{11}{10}{2018} at \formattime{10}{0}{0}.

	\vspace{\fill}

	\begin{tabular}{lll}
		Student number: & \@studentNumber \\
		Project duration: & \multicolumn{2}{l}{\formatdate{19}{3}{2018} -- \formatdate{11}{10}{2018}} \\
		Thesis committee: & Dr.\ P.\ Professor, & TU Delft, supervisor
	\end{tabular}
	
	\bigskip
	\bigskip
	
%	\textit{This thesis is confidential and cannot be made public until December 31, 2013.} \\[2\baselineskip]
	An electronic version of this thesis is available at \url{http://repository.tudelft.nl/}. \\[2\baselineskip]	
	Cover picture by Jet Propulsion Laboratory, depicting Mars Reconnaissance Orbiter during Aerobraking. Available at \url{https://goo.gl/tKorKM}.
	
	\vfill
\end{center}

\begin{tikzpicture}[remember picture, overlay]
    \node at (current page.south)[anchor=south,inner sep=2.5cm]
    {
        \includegraphics{\@titlelogo}
    };
\end{tikzpicture}

\endgroup

}

%-------------------------------------------------------------%
%--------------------------- PACKAGES ------------------------%
%-------------------------------------------------------------%

% Font
\RequirePackage{libertine} % Allows for textulc
\RequirePackage[default,osfigures,scale=0.85]{opensans} % Change font
\RequirePackage[T1]{fontenc}
\RequirePackage{courier}

% Figures, tables, equations and lists
\RequirePackage{array}
\RequirePackage{booktabs} % Allows for usage of top-, mid- and bottomrule
\RequirePackage[labelfont=bf,
				textfont=it,
				justification=centering]
				{caption} % Allows for caption customization
\RequirePackage{enumitem} % Allows for lists
\setlist[itemize]{itemsep=0pt}
\setlist[enumerate]{itemsep=0pt}
\RequirePackage{float} % Allows for image precise positioning
\RequirePackage{floatflt}
\RequirePackage[pdftex]{graphicx} % Allows for images
\RequirePackage{listings}
\RequirePackage{longtable}
\RequirePackage{marginnote}
\RequirePackage{multicol} % Allows for multiple columns
\setlength{\columnsep}{1cm}
\RequirePackage{multirow}
\RequirePackage{pdfpages}
\RequirePackage[figuresright]{rotating}
\RequirePackage{subcaption}
\RequirePackage{url} % Allows use of urls
\RequirePackage{wrapfig}

% Math
\RequirePackage{amsmath} % AMS Math Package (add [fleqn] to align all equations)
\RequirePackage{amssymb} % Math symbols such as \mathbb
\RequirePackage{amsthm} % Theorem Formatting
\RequirePackage[makeroom]{cancel} % Cross-out terms
\RequirePackage{empheq} % Bracketed equations
\RequirePackage{esint} % Volume integrals
\RequirePackage{mathrsfs}
\RequirePackage{mathtools}
\RequirePackage{relsize} % Increase or decrease symbol size
\RequirePackage{thmtools} % Allow for boxed theorems
\DeclareMathOperator{\arccot}{arccot}
\DeclareMathOperator{\diag}{diag}
\DeclareMathOperator{\erf}{erf}
\DeclareMathOperator{\sign}{sign}
\DeclareMathOperator{\trace}{trace}
\RequirePackage{xfrac}

% Page style
\RequirePackage[dvips,
				a4paper,
				margin=2.5cm,
				bottom=2.5cm,
				marginparsep=0.5cm]
				{geometry} % Sets margins and page size
\RequirePackage[pages=some]{background}
\backgroundsetup
{
	scale=1,
	opacity=1,
	angle=0,
	contents={\includegraphics[width=\paperwidth,height=\paperheight]{\@coverimage}}
}
\RequirePackage[pdftex,
				colorlinks=true,
				linkcolor=black,
            	pagebackref=false,
            	linktocpage=false,
            	plainpages=true,
            	bookmarksopen=true,
            	bookmarksnumbered=true,
            	pdfcreationdate={}]
            	{hyperref} % Allows for interaction
\RequirePackage{fancyhdr}
\RequirePackage{framed} % Background to text
\RequirePackage{mdframed} % Background to equations
\RequirePackage{multicol} % Columns
\RequirePackage{pdfcomment}
\RequirePackage[noindentafter,explicit]{titlesec}
\RequirePackage{titletoc}

% Special
\RequirePackage[linesnumbered,lined]{algorithm2e}
\RequirePackage{datetime}\usdate\settimeformat{ampmtime}
\RequirePackage{ifthen}
\RequirePackage[utf8]{inputenc}
\DeclareUnicodeCharacter{20AC}{\EUR{}}
%\renewcommand{\contentsname}{Table of Contents}

% Tikz
\RequirePackage{tikz}
\usetikzlibrary{calc}
\newcommand*\circled[1]{\tikz[baseline=(char.base)]{
            \node[shape=circle,draw,inner sep=2pt] (char) {#1};}}

% Symbols
\RequirePackage{marvosym}
\RequirePackage{pifont} % Checkmarks and ticks
\RequirePackage[nointegrals]{wasysym}

% Units
\RequirePackage{siunitx} % Allows for consistent SI units
\sisetup
{
	detect-all,
	range-units=single,
	list-units=single,
	retain-unity-mantissa=false
}
\DeclareSIUnit\arcmin{arcmin}
\DeclareSIUnit\arcsec{arcsec}
\DeclareSIUnit\atmosphere{atm}
\DeclareSIUnit\day{d}
\DeclareSIUnit\degree{deg}
\DeclareSIUnit\gee{g}
\DeclareSIUnit\ppm{ppm}
\DeclareSIUnit\year{yr}

% Referencing and bibliography
\RequirePackage[capitalize]{cleveref} % Allows for easy referencing
\crefname{algorithm}{Algorithm}{Algorithms}
%\crefname{alignat}{Eq.}{Eq.}
%\creflabelformat{alignat}{#2\textup{(#1)}#3}
%\creflabelformat{footnote}{#2\footnotemark{#1}#3}
%\crefname{subequation}{Eqs.}{Eqs.}
%\creflabelformat{subequation}{#2\textup{(#1)}#3}
\crefname{subsection}{Subsection}{Subsections}
\RequirePackage[round,comma,authoryear,sort&compress]{natbib}
\bibliographystyle{class/bibstyle-michele.bst}

%-------------------------------------------------------------%
%------------------------- NEW PARAMETER ---------------------%
%-------------------------------------------------------------%

% Trade off colors
\definecolor{to-green}{HTML}{8DC73E}
\definecolor{to-blue}{HTML}{00AEEF}
\definecolor{to-yellow}{HTML}{FFF200}
\definecolor{to-red}{HTML}{ED1B23}

% Highlight colors
\definecolor{hl-yellow}{RGB}{254,222,82}
\definecolor{hl-green}{RGB}{142,197,72}
\definecolor{hl-orange}{RGB}{245,150,96}
\definecolor{hl-blue}{RGB}{29,175,236}
\definecolor{hl-red}{RGB}{255,102,102}

% General colors
\definecolor{frontTextColor}{RGB}{255,253,251}
\definecolor{lightGray}{RGB}{141,142,146}
\definecolor{midGray}{RGB}{128,128,128}
\definecolor{darkGray}{RGB}{115,115,117}

% Counters
\newcounter{req-sc}\setcounter{req-sc}{1} % SC requirement count
\newcounter{req-ab}\setcounter{req-ab}{1} % AB requirement count
\newcounter{req-gnc}\setcounter{req-gnc}{1} % navigation requirement count
\newcounter{req-g}\setcounter{req-g}{1} % guidance requirement count
\newcounter{req-n}\setcounter{req-n}{1} % navigation requirement count
\newcounter{req-c}\setcounter{req-c}{1} % control requirement count

%-------------------------------------------------------------%
%-------------------------- NEW FORMATS ----------------------%
%-------------------------------------------------------------%

% Part
\titleformat{\part}[display]
			{\fontsize{30}{34}\selectfont\color{white}\flushright\bfseries}
			{\thepart}
			{0pt}
			{\thispagestyle{empty}\sc\titlerule\vspace{1ex}#1\BgThispage}

% Chapter
\newcommand{\hc}{\hspace{20pt}}
\colorlet{shadecolor}{darkGray}
\titleformat{\chapter}[display]
			{\fontsize{25}{28}\selectfont\color{white}\flushright\begin{shaded*}}
			{\thechapter}
			{1pt}
			{\bf#1\hc\end{shaded*}}
\titleformat{name=\chapter,numberless}[display]
			{\fontsize{25}{28}\selectfont\color{white}\flushright\begin{shaded*}}
			{}
			{-15pt}
			{\bf#1\end{shaded*}}
\titlespacing{\chapter}{0pt}{-5pt}{-5pt}

% Section 
\newcommand{\hs}{\hspace{10pt}}
\titleformat{\section}[hang]
			{\LARGE}
			{\thesection\hs\textcolor{midGray}{|}\hs}
			{0pt}
			{\bfseries#1}
\titlespacing{\section}{0pt}{17.5pt}{5pt}

% Subsection 
\newcommand{\hsu}{\hspace{7.5pt}}
\titleformat{\subsection}[hang]
			{\Large}
			{\thesubsection\hsu\textcolor{midGray}{|}\hsu}
			{0pt}
			{#1}
\titlespacing{\subsection}{0pt}{15pt}{5pt}

% Subsubsection
\titleformat{\subsubsection}[hang]
			{\large\color{darkGray}}
			{}
			{0pt}
			{\bf#1}
\titlespacing{\subsubsection}{0pt}{12.5pt}{5pt}

% Paragraph
\titleformat{\paragraph}[runin]
			{\normalsize\color{darkGray}}
			{}
			{0pt}
			{\sc#1}
\titlespacing{\paragraph}{0pt}{10pt}{5pt}

% Enumerate
\renewcommand{\labelitemi}{\color{darkGray}$\circ$}
\renewcommand{\labelitemii}{\color{darkGray}$\bullet$}

% Footnote
\renewcommand*{\thefootnote}{(\arabic{footnote})}
%\makeatletter
%\newcommand\footnoteref[1]{\protected@xdef\@thefnmark{\ref{#1}}\@footnotemark}
%\makeatother
\newcommand{\tableRef}[1]{\textsuperscript{\textcolor{darkGray}{(#1)}}}

% Numbering
\numberwithin{equation}{chapter}
\numberwithin{table}{chapter}
\numberwithin{figure}{chapter}

%-------------------------------------------------------------%
%-------------------------- PAGE STYLE -----------------------%
%-------------------------------------------------------------%

% Blank page
\newcommand{\intentionallyBlank}
{
	\newpage
	\thispagestyle{plain}
	\null
	\vfill
    \begin{center}
    \scshape Page Intentionally Left Blank
    \end{center}
    \vspace{\fill}
}

% Page style for title pages
\fancypagestyle{plain}
{
    \fancyhf{}
    \renewcommand*\headrulewidth{0pt}
    \renewcommand*\footrulewidth{0pt}
    \fancyfoot[C]{\thepage}
}

% Fancy style for the front matter
\fancypagestyle{frontmatter}
{
    \fancyhf{}
    % Roman page numbers on the top left and top right
    \pagenumbering{roman}
    \fancyhead[LE,RO]{\thepage}
    % Chapter name on the left (even) page
    \fancyhead[RE]{\nouppercase{\leftmark}}
    % Section name on the right (odd) page
    \fancyhead[LO]{\nouppercase{\leftmark}}
}

% Fancy style for the main matter
\fancypagestyle{mainmatter}
{
    \fancyhf{}
    % Page numbers on the top left and top right
    \fancyhead[LE,RO]{\thepage}
    % Chapter name on the left (even) page
    \fancyhead[RE]{\nouppercase{\leftmark}}
    % Section name on the right (odd) page
    \fancyhead[LO]{\nouppercase{\rightmark}}
}

% Remove the header and page number on empty pages
\def\cleardoublepage
{
    \clearpage
	\ifodd\c@page
	\else
	    \intentionallyBlank
	    \newpage
	\fi
}

% Unnumbered Chapter
\newcommand{\unnumberedChapter}[1]{\chapter*{#1}\markboth{#1}{}\addcontentsline{toc}{chapter}{#1}}

%-------------------------------------------------------------%
%---------------------- TEXT ENVIRONMENTS --------------------%
%-------------------------------------------------------------%

\newtheorem{prop}{Proposition}
\newtheorem{thm}{Theorem}[section]
\newtheorem{lem}[thm]{Lemma}
\theoremstyle{definition}
\newtheorem{dfn}{Definition}
\theoremstyle{remark}
\newtheorem*{rmk}{Remark}

%-------------------------------------------------------------%
%-------------------------- THEOREMS -------------------------%
%-------------------------------------------------------------%

\declaretheorem[style=definition,numberwithin=section,shaded={bgcolor=lightGray}]{theorem}
\declaretheorem[style=definition,numbered=no,title=Theorem,shaded={bgcolor=lightGray}]{theorem*} 
\theoremstyle{margin}

%-------------------------------------------------------------%
%------------------------- BACKGROUNDS -----------------------%
%-------------------------------------------------------------%

% Equations
\newenvironment{eqbg}{\begin{equation}}{\end{equation}}
\surroundwithmdframed[hidealllines=true,
    				  backgroundcolor=lightGray,
    				  skipbelow=5pt,
    				  skipabove=5pt]
    				  {eqbg}

% Subequations
\newenvironment{alignbg}[1]{\begin{alignat}{#1}}{\end{alignat}}
\surroundwithmdframed[hidealllines=true,
    				  backgroundcolor=lightGray,
    				  skipbelow=5pt,
    				  skipabove=5pt]
    				  {alignbg}

\newenvironment{proofbg}{\begin{proof}}{\end{proof}}
\surroundwithmdframed[hidealllines=true,
    				  backgroundcolor=lightGray,
    				  skipbelow=5pt,
    				  skipabove=5pt]
    				  {proofbg}

%-------------------------------------------------------------%
%---------------------------- OTHER --------------------------%
%-------------------------------------------------------------%

% Reference words
\makeatletter
    \newcommand*{\textlabel}[2]
    {
        \edef\@currentlabel{#1} % set target label
        \phantomsection % correct hyper reference link
        #1\label{#2} % print and store label
    }
\makeatother

% Time distribution
\newcommand{\setPercent}[1]{\hfill \textbf{\SI{#1}{\percent}}}
\newcommand{\setTime}[1]{\hfill \SI{#1}{\day}}

%-------------------------------------------------------------%
%----------------------- FLOATS VARIANTS ---------------------%
%-------------------------------------------------------------%

\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

%*************************************************************%
%************************** END CLASS ************************%
%*************************************************************%