%Copying and distribution of this file, with or without modification, are permitted in any medium without royalty provided the copyright notice and this notice are preserved.  This file is offered as-is, without any warranty.

\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{lecnotes}[2018/05/01 v1.0 by BAI Zhiyuan. Document class for writing lecture notes]
 
\LoadClass[a4paper,12pt,onecolumn,twoside]{book}
\RequirePackage{fancyhdr}
\RequirePackage{hyperref}
\RequirePackage{amsthm}

\newcommand\beginningquote[2]{
	\null\vfill
	\textit{#1}
	\begin{flushright}
		#2
	\end{flushright}
	\vfill\vfill\vfill
	\clearpage
}

\newcommand\preface[1]{
	\addcontentsline{toc}{chapter}{Preface}	
	\begin{center}{\huge{\textit{Preface}} \par}\end{center}
	{\null\normalsize #1}
	\clearpage
}

\newcommand{\myfrontpage}[6]{
\begin{titlepage}
	\center 
	\textsc{\LARGE #1}\\[0.6in] 
	\textsc{\large #2}\\[0.2in]
	\rule{\linewidth}{0.02in}\\[0.3in]
	{\huge\bfseries #3}\\[0.16in]
	\rule{\linewidth}{0.02in}\\[1in]
	\begin{minipage}{0.5\textwidth}
		\centering
		\large
		#6
	\end{minipage}
	\vfill\vfill\vfill
	{
		\large
		\textsc{#4}
		\\[0.4in] #5
	}
	\vfill
\end{titlepage}
}

\newcommand\staticmydate{}
\newcommand\staticmysemester{}
\newcommand\staticmyauthor{}
\newcommand\staticmydescription{}
\newcommand\staticmytitle{}
\newcommand\staticmyschool{}

\newcommand\thedate[1]{\renewcommand\staticmydate{#1}}
\newcommand\thesemester[1]{\renewcommand\staticmysemester{#1}}
\newcommand\theauthor[1]{\renewcommand\staticmyauthor{#1}}
\newcommand\thedescription[1]{\renewcommand\staticmydescription{#1}}
\newcommand\thetitle[1]{\renewcommand\staticmytitle{#1}}
\newcommand\theschool[1]{\renewcommand\staticmyschool{#1}}

\newcommand\trivia[3]{
	\frontmatter
	\pagestyle{empty}
	\myfrontpage{\staticmyschool}{\staticmysemester}{\staticmytitle}{\staticmyauthor}{\staticmydate}{\staticmydescription}
	\beginningquote{#1}{#2}
	\tableofcontents
	\clearpage
	\preface{#3}
	\mainmatter
	\pagestyle{headings}
}

\newcommand\marg[1]{\marginpar{\scriptsize{\textsl{#1}}}}

\theoremstyle{plain}
\newtheorem{example}{Example}[chapter]
\newtheorem{theorem}{Theorem}[chapter]
\newtheorem{conjecture}{Conjecture}[chapter]
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{axiom}[theorem]{Axiom}
\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definition}
\theoremstyle{remark}
\newtheorem{remark}[theorem]{Remark}
