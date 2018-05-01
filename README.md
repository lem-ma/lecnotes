# LaTeX class -- lecnotes
This is a neat, minimal LaTeX document class primarily intended to be used as a template for lecture notes. However, just with a tiny change on the `.cls` file, one would also be able to use it to write theses, reports et cetera.

The major commands (as of `v1.0`) in use are:
* `\theauthor{} \thedate{} \thesemester{} \theauthor{} \thedescription{} \thetitle{} \theschool{}`. These set the basic informations of the lecture notes, which names are self-explanatory.
* `\trivia{}{}{}`. One must include this right after `\begin{document}` so as to set the basics of the first few pages of a `lecnotes` document. The first and the second commands manage the beginning funny quote in page ii, but if one do not want it, one can be left blank simultaneously (but _not_ alternatively). The third argument is the preface (a long article possibly), which may contain several things (see `Example.tex` and `Example.pdf`).
* `\marg` add a predefined style of margin note. See `Example.pdf`.

Also, several usual environments derived from `amsthm` is also available (`theorem`, `lemma`, `definition`, `example`, etc.) 
