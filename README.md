# LaTeX-FIN-Seminarski
LaTeX class for term papers at the Faculty of Engineering
---
Generates pdf resembling ['example.pdf'](https://github.com/djordje34/LaTeX-FIN-Seminarski/blob/main/example.pdf). Contains required title page for term papers, table of contents with hyperref, and renewed commands which affect some packages captions to be written in Serbian cyrillic.

Define functions prior to any document title or section initialization - before **\maketitle** :
- \student{Student name}
- \nazivrada{Term/project name}
- \profesor{Professor's name}
- \predmet{Course name}
- \indeks{Student index in format ind/year (ex. 11/2011)}

Includes packages specific for programming and visualization use-case : 
- minted - [Docs and tutorial](https://www.overleaf.com/learn/latex/Code_Highlighting_with_minted)
- graphicx [Docs and tutorial](https://www.overleaf.com/learn/latex/Inserting_Images)
- xcolor [Docs and tutorial](https://www.overleaf.com/learn/latex/Using_colours_in_LaTeX)
