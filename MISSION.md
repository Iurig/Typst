# Mission: Typst

## Why
Iuri wrote a master's thesis in LaTeX (combinatorics / number theory, ABNT template, amsthm, BibTeX) and never wants to reach for LaTeX again. LaTeX was too slow for everyday notes. The goal is to be able to produce everything that thesis needed, plus fast day-to-day math notes, in Typst instead.

## Success looks like
- Write math notes (definitions, theorems, proofs, displayed equations) from a cold start in under a minute, with no template hunting.
- Reproduce the thesis's structure in Typst: parts/chapters/sections, numbered theorem/lemma/corollary/definition environments, proofs with QED, cross-references, figures, tables, code listings, and a `.bib` bibliography with citations.
- Define personal math macros (e.g. `\Zb`, `\binom`, `\pmod`, `\norm`) as Typst functions and reuse them across documents.
- Build one personal "notes" template and one "paper/thesis" template and start new documents from them.
- Read a Typst Universe package's docs and use it without help (e.g. theorem packages, CeTZ for TikZ-style diagrams, slides).

## Constraints
- No live course or academic project right now, so practice material is reconstructed from the thesis (https://github.com/Iurig/Higher-Degree-EGZ) and self-chosen note topics.
- Local Typst 0.15.1 (snap, not a deliberate choice; could switch to the release binary). Work inside this workspace.
- Fonts available: New Computer Modern, so a "LaTeX look" is achievable.
- Curiosity-driven: keep lessons short, each with a compiled, visible result.

## Out of scope
- Writing and publishing packages/templates to Typst Universe (revisit later if interest appears).
- Slides (Touying/Polylux) until the paper/thesis workflow is solid.
- Typst's web app collaboration features; everything is local CLI + editor.
