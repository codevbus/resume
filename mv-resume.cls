% Required .cls options
\ProvidesClass{mv-resume}[2017/01/27 Resume class]
\NeedsTeXFormat{LaTeX2e}

% Load article class
\LoadClass{article}

% Package imports
\RequirePackage{xcolor}
\RequirePackage[quiet]{fontspec}
\RequirePackage[hmargin=1.15cm, vmargin=0.65cm]{geometry}
\RequirePackage{tikz}
\RequirePackage{titlesec}
\RequirePackage{textpos}

% Colors
\definecolor{white}{RGB}{255,255,255}
\definecolor{darkgray}{HTML}{4f4f4f}
\definecolor{gray}{HTML}{696969}
\definecolor{lightgray}{HTML}{8c8c8c}
\colorlet{textcolor}{gray}
\colorlet{sectionheader}{darkgray}
\colorlet{headercolor}{darkgray}
\colorlet{headertext}{white}

% Fonts
\setmainfont
[Mapping=tex-text, Color=gray, Path=fonts/,
BoldFont=NunitoSans-Bold.ttf,
ItalicFont=NunitoSans-Italic.ttf,
BoldItalicFont=NunitoSans-BoldItalic.ttf
]
{NunitoSans-Regular.ttf}

% Header
\newcommand{\headername}[2]{%
\begin{tikzpicture}[remember picture,overlay]
	\node [rectangle, fill=headercolor, anchor=north, minimum width=\paperwidth, minimum height=2.4cm] (box) at (current page.north){};
	\node [anchor=east,shift={(40mm, 3.5mm)}] (name) at (box.center) {%
		\fontsize{35pt}{45pt}\color{headertext}
		\fontspec[Path = fonts/]{NunitoSans-Regular}\selectfont #1
	}; \\[10pt]
	\node [anchor=north west] at (name.south west)  {%
		\fontsize{15pt}{20pt}\color{headertext}
		\fontspec[Path = fonts/]{NunitoSans-Light}\selectfont #2
	};
\end{tikzpicture}
}

% General section headings
\titleformat{\section}{\color{sectionheader}
\scschape\fontspec[Path = fonts/]{NunitoSans-Bold}\fontsize{14pt}{16pt}\selectfont \raggedright}

% General subsection headings
\titleformat{\subsection}{\color{textcolor}
\scschape\fontspec[Path = fonts/]{NunitoSans-Bold}\fontsize{10pt}{12pt}\selectfont \raggedright}

% About section
\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}
\newenvironment{about}{%
	\let\oldsection\section
	  \renewcommand{\section}[2]{%
		  \par\vspace{\baselineskip}\fontsize{12pt}{12pt}\color{headertext}\selectfont ##1
				\fontsize{8pt}{8pt}\color{textcolor}\selectfont ##2
			}
				\begin{textblock}{4.7}(-1, 2.0)
					\begin{flushright}
						\obeylines
					}{%
						\restorelines
					\end{flushright}
				\end{textblock}
				\let\section\oldsection
}

% Summary section
\newenvironment{summary}{%
	\begin{textblock}{13.5}(4.5, 0.8)
		\begin{flushleft}
			\obeylines
		}{%
		\restorelines
	\end{flushleft}
\end{textblock}
}

% Skills section
\newenvironment{skills}{%
	\begin{textblock}{13.5}(4.5, 3.8)
		\begin{flushleft}
		\obeylines
	}{%
		\restorelines
	\end{flushleft}
\end{textblock}
}

% Experience section
\newenvironment{experience}{%
	\begin{textblock}{18.0}(0.0, 15.5)
		\begin{flushleft}
		}{%
		\end{flushleft}
	\end{textblock}
}

% Experience items
\newenvironment{expitem}{%
}
