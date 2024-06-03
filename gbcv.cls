\ProvidesClass{gbcv}[2023/04/01 Custom class for a CV]

\LoadClass{article}

% Required packages
\RequirePackage[charter]{mathdesign}
\RequirePackage{xcolor}
\RequirePackage{longtable}
\RequirePackage{hyperref}
\RequirePackage{geometry}
\RequirePackage{setspace}
\RequirePackage{fontspec}
\RequirePackage{fancyhdr}
\RequirePackage{breakurl}
\RequirePackage{array}
\RequirePackage{footmisc}
\RequirePackage{tabularx}

% Custom configurations and commands based on the provided document
\geometry{margin=1in}
\setlength{\parindent}{0in}

\hypersetup{
  colorlinks,
  urlcolor=blue
}

\fancyhf{} % Clear header and footer
\renewcommand{\headrulewidth}{0pt}
\fancyhead[R]{\textit{Bradburd - Curriculum Vitae}}

\setmainfont[
  Path = /Library/Fonts/,
  UprightFont = Corbel,
  BoldFont = Corbelb,
  ItalicFont = Corbeli,
  Extension = .ttf
]{Corbel}

\newif\ifpm
\pmfalse

\newif\ifrpt
\rpttrue

%\newcommand{\contribution}[1]{\raggedleft\begin{minipage}{0.85\textwidth}\textit{\textcolor{gray}{#1}}\end{minipage}\par}

\newcommand{\explain}[1]{\textit{\textcolor{gray}{#1}}}

\newcommand{\contribution}[1]{%
  % Start the minipage and cancel out any hang indent
  \setlength{\parindent}{0pt}%
  \makebox[\linewidth][r]{
  \begin{minipage}{0.9\linewidth}
    % Align the contents to the right
    \raggedleft
    % Make the text italic and gray
    \explain{#1}%
  \end{minipage}%
  }
  % Finish off with a \par to reset paragraph settings
  \par
}

\newcolumntype{R}{>{\raggedleft\arraybackslash}p{0.295\textwidth}}

\newcommand\pubspace{3.2}
\newcommand\littlepubspace{1.9}
\newcommand\tinypubspace{1.0}
\newcommand{\bburd}[1]{{\underline{\smash{#1}}}}
\newcommand{\labbie}[1]{{*#1}}
\newcommand{\journal}[1]{{\textbf{#1}}}
\newcommand{\pubyear}[1]{{\textbf{#1}}}
\newcommand{\dohang}{\hangindent1cm\hangafter1 }

% Define the huge font size for name in CV
\newcommand{\cvname}[1]{%
  \begin{huge}
  \bfseries{#1}
  \end{huge}
}

% Defining the section with a line below it
\newcommand{\cvsection}[1]{%
  \section*{#1}
  \vspace{-0.6cm}
  \rule{470pt}{0.4pt}
}

\endinput