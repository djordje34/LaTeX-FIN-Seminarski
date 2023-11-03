\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{finsem}[Faculty of Engineering, University of Kragujevac]
\LoadClass[a4paper, oneside, 12pt]{article}
\RequirePackage{graphicx} % Required for inserting images
\RequirePackage[T2A]{fontenc}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{listings}
\RequirePackage{xcolor}
\RequirePackage[a4paper,margin=2.54cm]{geometry}
\RequirePackage{courier}
\RequirePackage{bm}
\RequirePackage{pdfpages}
\RequirePackage{flafter}
\RequirePackage{gensymb}
\RequirePackage{array}
\RequirePackage{minted}
\RequirePackage[utf8]{inputenc}
\RequirePackage[english, serbianc]{babel}
\RequirePackage{enumitem}
\RequirePackage{varwidth}
\RequirePackage{listings}
\RequirePackage{datetime2}
\RequirePackage[style=numeric, sorting=none, defernumbers=false]{biblatex}
\RequirePackage{csquotes}
\RequirePackage{pdfpages}

\newcolumntype{C}[1]{>{\centering\arraybackslash}m{#1}}

% Fix the \normalsize command
\renewcommand{\normalsize}{\fontsize{12}{14}\selectfont}

\renewcommand{\contentsname}{Садржај}
\renewcommand{\figurename}{Слика}

\newcommand\@newpublicfield[2][\@empty]{%
    \expandafter\newcommand\csname #2\endcsname[1]{%
        \expandafter\gdef\csname @#2\endcsname{##1}%
    }%
    \global\expandafter\let\csname @#2\endcsname#1%
}


%bibtex

\newcommand{\makebibliography}{%
    \clearpage%
    {\sloppy%
    \printbibliography[heading=bibintoc]}%
}

\@newpublicfield{profesor}
\@newpublicfield{student}
\@newpublicfield{indeks}
\@newpublicfield{nazivrada}
\@newpublicfield{predmet}
\@newpublicfield{tiprada}
\addbibresource{reference.bib}

\renewcommand{\maketitle}{%
\begin{titlepage}
\begin{center}
\Large
Универзитет у Крагујевцу\\\relax
Факултет инжењерских наука
\vspace{0.5cm}
\includegraphics[width=1.0\textwidth]{logofaks.png} % Update the file extension if needed

\LARGE
\textbf{\@predmet}

\vspace{0.5cm}
\Large
\@tiprada

\vspace{1.5cm}

\textbf{\@nazivrada}
\vfill
\large
\textbf{Професор:}
\hfill
\textbf{Студент:} \\\relax
Проф. др \@profesor
\hfill
\@student \space \@indeks
\vspace*{\fill}

\_\_.\_\_.2023.
\end{center}
\end{titlepage}
\tableofcontents
\clearpage}


