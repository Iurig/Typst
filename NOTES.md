# Notes

- User: Iuri. Experienced LaTeX user (master's thesis in LaTeX, no AI, lots of templates and web searching). Mathematically fluent (combinatorics, finite fields, Erdős–Ginzburg–Ziv).
- Source of practice material: https://github.com/Iurig/Higher-Degree-EGZ (abntex2-based class `ppgco.cls`, amsthm with chapter-numbered theorems, cleveref, mathtools, tikz, listings, BibTeX with `alpha-ime.bst`).
- Typst is installed as a snap (user open to switching). It cannot read /tmp or scratchpad dirs, so compile only inside the workspace. Suggested Tinymist (VS Code) for live preview.
- Verified in Typst 0.15.1: referencing an unnumbered equation is a compile error; multi-letter identifiers in math error with "unknown variable".
- Exercises live in `exercises/NNNN/` with `task.*`, a `starter.typ`, and a `solution.typ` + `solution.png`. Lessons link to them with relative paths.
- Preferred teaching stance: lean on LaTeX analogies, show the compiled output, keep each lesson to one idea.
- Planned sequence (adjust to learning records): 1 three modes → 2 set/show rules and the LaTeX look → 3 math deep dive and personal macros → 4 theorem environments (ctheorems/theorion) and proofs → 5 cross-refs, figures, tables → 6 bibliography → 7 a notes template → 8 thesis-scale document structure (parts, chapters, include) → 9 CeTZ.
- Layout convention: `scratch/` holds throwaway experiments (safe to delete); the user's finished exercise answers go in `exercises/NNNN/attempt.typ` beside `task.*`, `starter.typ` and `solution.typ`. PDFs/PNGs are build outputs, not kept.
