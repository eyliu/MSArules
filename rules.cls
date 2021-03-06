\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{rules}[2010/07/12 v0.0.1 Document class for typesetting a parliamentary authority]

\LoadClass{report}

\RequirePackage[letterpaper,margin=1.25in]{geometry}
\RequirePackage[colorlinks,linkcolor=blue]{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}

\titleclass\rule{straight}[\part]
\titleformat{\rule}[display]{\filcenter\Large\scshape}{Rule \therule}{0pt}{\filcenter\Large\scshape}
\titlespacing*{\rule}{0mm}{*4}{*2.3}[0mm]
\newcounter{rule}
\renewcommand\therule{\Roman{rule}}

\titlecontents{rule}
[1.5em]
{\bfseries}
{\contentslabel{2.3em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{.}\contentspage}

\makeatletter
\@addtoreset{section}{rule}
\makeatother
\titleformat{\section}[runin]{\normalfont\bfseries}
{\thesection.}{.5em}{}[\quad]
\renewcommand{\thesection}{\Alph{section}}

\titleformat{\subsection}[runin]{\normalfont}{\thesubsection.}{.5em}{\bfseries}[\quad]
\titlespacing{\subsection}{\parindent}{*2}{\wordsep}
\renewcommand{\thesubsection}{\arabic{subsection}}

\titleformat{\subsubsection}[runin]{\normalfont}{\thesubsubsection.}{.5em}{\bfseries}[\quad]
\titlespacing{\subsubsection}{2\parindent}{*2}{\wordsep}
\renewcommand{\thesubsubsection}{\alph{subsubsection}}

\titleformat{\paragraph}[runin]{\normalfont}{\theparagraph.}{.5em}{\bfseries}[\quad]
\titlespacing{\paragraph}{3\parindent}{*2}{\wordsep}
\renewcommand\theparagraph{\roman{paragraph}}
\newcommand{\subsubsubsection}[1]{\paragraph{#1}}

\titleformat{\subparagraph}[runin]{\normalfont}{(\thesubparagraph)}{.5em}{\bfseries}[\quad]
\titlespacing{\subparagraph}{4\parindent}{*2}{\wordsep}
\renewcommand\thesubparagraph{\alph{subparagraph}}
\newcommand{\subsubsubsubsection}[1]{\subparagraph{#1}}

\titleclass\subsubparagraph{straight}[\subparagraph]
\titleformat{\subsubparagraph}[runin]{\normalfont}{(\thesubsubparagraph)}{.5em}{\bfseries}[\quad]
\titlespacing{\subsubparagraph}{5\parindent}{*2}{\wordsep}
\newcounter{subsubparagraph}
\renewcommand{\thesubsubparagraph}{\roman{subsubparagraph}}
\newcommand{\subsubsubsubsubsection}[1]{\subsubparagraph{#1}}

\makeatletter
\@addtoreset{subsubparagraph}{subparagraph}
\makeatother

\renewcommand{\theenumi}{\Roman{enumi}}
\renewcommand{\theenumii}{\alph{enumii}}