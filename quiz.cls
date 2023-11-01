\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{quiz}[Murphy's Law Pub Quiz Template]

\LoadClass[11pt,a4paper,oneside,landscape,twocolumn]{article} % Load base class with options

% Packages from the original template
\RequirePackage{german} 
\RequirePackage{fancyhdr}
\RequirePackage[T1]{fontenc}
\RequirePackage{tabularx}
\RequirePackage{graphicx}
\RequirePackage{ae}

\renewcommand{\rmdefault}{bch} % Schriftart auf "Charter" umstellen. 

\renewcommand{\topfraction}{1}
\renewcommand{\bottomfraction}{1}
\renewcommand{\textfraction}{0}
\renewcommand{\baselinestretch}{1.2}

% -------- Seiten- und Layouteinstellungen: ---------------------------
\addtolength{\parskip}{5pt}
\raggedbottom
\hoffset-1in \voffset-1in
\textheight190mm
\textwidth281mm
\oddsidemargin8mm
\columnsep26mm \columnseprule0mm
\topmargin2mm
\parindent0pt
\pagestyle{empty}

\newcommand{\mydate}{Mittwoch, 13.12.2010}
\newcounter{ctr_question}
%TODO change this to \item #2 \\[\dimexpr#1]
\newcommand{\qitem}[2][1.1cm]{
      \item {#2 } \vspace{#1} 
   }
    % als optionales 2. Argument kann beim Befehlsaufruf zusätzlicher Zwischenraum
    % (angegeben in mm) eingefügt werden
   
\newcommand{\qeitem}[2][0.8cm]{
      \qitem[#1]{ \textit{Schätzfrage:} #2 }
   }
   
\newcommand{\qmitem}[1][Titel: \\ Interpret: \\ Original-Interpret:]{
      \qitem{\textit{Musikfrage:} \\  \textbf{#1}}
   }

\newcounter{ctr_page}
\setcounter{ctr_page}{1}
\newcommand{\ctrpage}{\arabic{ctr_page}\addtocounter{ctr_page}{1}}
\newcommand{\header}{\begin{center}
    {\Large Murphy's Law Pub Quiz}
    \\ \hfill \vspace*{-0.6cm} \raisebox{0.3cm}[-1cm]{-- \ctrpage \ --}
     \hspace*{0.25cm}
    \\\mydate\\[0.75cm]
    \quad Teamname:\quad \hrulefill  \qquad\qquad\qquad
    \end{center}}

\newcommand{\hnewpage}{\newpage \header}

\newcommand{\limerick}[3]
{\vspace*{#1cm}\footnotesize \begin{tabular}{r}\hspace{#2cm} #3 \end{tabular} }
% Befehl zum Einfügen eines Limericks. Das erste Argument ist eine vertikale
% Verschiebung, das zweite eine horizontale Verschiebung und das dritte Argument
% ist der Limerick-Text (mit '\\' zur Zeilentrennung)
   

\newenvironment{page}
   {
      \hnewpage
      \begin{enumerate}
      \setcounter{enumi}{\value{ctr_question}}
   }
   {
      \setcounter{ctr_question}{\value{enumi}}
      \end{enumerate}
   }
   
   
\newcounter{ctr_qlitem}
\newcommand{\qlitem}[1]{
   (\alph{ctr_qlitem}) \addtocounter{ctr_qlitem}{1} #1 
}
%TODO change this to use tabularx
\newenvironment{qlenum}[2][ll]
   {
      \qitem[0mm]{#2} \\
      \setcounter{ctr_qlitem}{1}
      \begin{tabular}{#1}
   }
   {
      \end{tabular}
   }

\endinput