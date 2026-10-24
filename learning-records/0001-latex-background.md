# Prior knowledge: fluent LaTeX author of a math thesis

Iuri wrote a full master's thesis in LaTeX (https://github.com/Iurig/Higher-Degree-EGZ) using an abntex2-derived class, amsmath/mathtools/amsthm with chapter-numbered theorem environments, custom `\newcommand` macros (`\Zb`, `\norm`, `\defeq`), cleveref, listings, tikz and BibTeX. They did this by adapting templates and web searching, not from deep TeX internals.

## Implications
- Do not teach typesetting concepts (floats, cross-refs, bibliographies, theorem numbering); teach only the Typst way of doing each, using LaTeX names as anchors.
- They are comfortable with math notation; exercises can use real theorems from the thesis.
- They are not a TeX programmer, so Typst scripting (functions, show rules) should be introduced gradually, with concrete payoffs (macros, theorem boxes), not as a language tour.
