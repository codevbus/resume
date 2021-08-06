%-----------
% Required
%-----------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mv_cv}[2020/01/11 resume]
\LoadClass{article}

%-----------
% Color
%-----------

\RequirePackage{color}
\RequirePackage{xcolor}

\definecolor{darkgray}{HTML}{606060}
\definecolor{gray}{HTML}{bfbfbf}
\definecolor{blue}{HTML}{3366ff}

%-----------
% Fonts
%-----------

\RequirePackage[quiet]{fontspec}

\defaultfontfeatures{Mapping=text-text}
\setmainfont{Liberation Mono}
 
%-----------
% Header
%-----------

\RequirePackage{tikz}
\RequirePackage{parskip}

\newcommand{\header}[2]{
    \begin{tikzpicture}[remember picture, overlay]
        \node [rectangle, fill=gray, anchor=north, minimum width=\paperwidth,
            minimum height=3cm] (box) at (current page.north){};
        \node [anchor=east, align=left, shift={(25mm, 0mm)}]
            (name) at (box){\color{blue}\fontsize{40}{48} \selectfont #1};
        \node [anchor=north, align=left, shift={(22.1mm, -7.5mm)}]
            (desc) at (name){\color{darkgray}\fontsize{12}{16} \selectfont #2};
    \end{tikzpicture}
    \vspace{-0.5cm}
}


%-----------
% Main
%-----------

\usepackage[textwidth=8.5in, right=0.25in, left=0.25in, bottom=0.25in]{geometry}
\RequirePackage{hyphenat}

\newcommand{\content}[1]{
    {\nohyphens{\fontsize{8}{10} \selectfont #1}}
}

\newenvironment{explist}
    {\vspace{-0.2cm}
     \begin{itemize}
    }
    {\end{itemize}}

\newcommand{\expitem}[4]{
    \vspace{0.1cm}
    \item[] {\color{darkgray}\fontsize{8}{10} \selectfont #1} | \textbf{\fontsize{8}{10} \selectfont #2}\vspace{0.1cm}\\
    \textit{\fontsize{8}{10} \selectfont #3}
    \begin{itemize}
        \item[]{\fontsize{8}{10} \selectfont #4}
    \end{itemize}
    \vspace{0.2cm}
}

\renewcommand*{\section}{
    \@startsection {section}{1}{\z@}
    {0.3cm}
    {0.1cm}
    {\color{blue}\normalfont\fontsize{10}{12}\bfseries}
}
