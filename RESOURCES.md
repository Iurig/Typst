# Typst Resources

## Knowledge

- [Official: Guide for LaTeX users](https://typst.app/docs/guides/guide-for-latex-users/)
  Maps LaTeX habits (documentclass, packages, environments, math, bibliographies) onto Typst. Use for: the first mental model, and whenever you think "how do I do X from LaTeX".
- [Official: Syntax reference](https://typst.app/docs/reference/syntax/)
  Exhaustive table of markup, math and code syntax and the function each one corresponds to. Use for: looking up what a symbol means and how `#`, `$`, `[ ]` switch modes.
- [Official: Tutorial](https://typst.app/docs/tutorial/)
  Four-chapter walkthrough: writing, formatting, advanced styling, making a template. Use for: a linear path through set rules, show rules and templates.
- [Official: Math reference](https://typst.app/docs/reference/math/)
  All math functions (`attach`, `frac`, `cases`, `mat`, `vec`, `binom`, `op`, …). Use for: translating amsmath/mathtools constructs.
- [Official: Symbols list](https://typst.app/docs/reference/symbols/sym/)
  Every named symbol (`ZZ`, `inter`, `union`, `subset.eq`, `plus.minus`…). Use for: finding the Typst name of a LaTeX symbol.
- [Official: Styling (set & show rules)](https://typst.app/docs/reference/styling/)
  The core of Typst formatting. Use for: anything that replaces `\renewcommand`, `\setlength`, or a package option.
- [Official: Bibliography](https://typst.app/docs/reference/model/bibliography/) and [cite](https://typst.app/docs/reference/model/cite/)
  BibTeX `.bib` files work directly; 80+ built-in CSL styles. Use for: replacing natbib/biblatex.
- [Typst Universe](https://typst.app/universe/)
  Official package and template index. Use for: theorem packages, CeTZ (TikZ replacement), slide packages, thesis templates.
- [tex2typst web app](https://qwinsi.github.io/tex2typst-webapp/)
  Converts LaTeX formulas to Typst math. Use for: bulk-migrating equations from the thesis; always check the output.
- [Typst CLI `typst --help`](https://typst.app/docs/reference/) (local)
  `typst compile`, `typst watch`, `typst init`, `typst fonts`, `typst eval`. Use for: the local feedback loop.

## Wisdom (Communities)

- [Typst Forum](https://forum.typst.app/)
  Official, moderated by the Typst team. Use for: "how do I replicate this LaTeX thing" questions and showing off templates. Best first stop.
- [Typst Discord](https://discord.gg/2uDybryKPe) (link from https://typst.app/docs/community)
  Official chat, where development is coordinated. Use for: quick questions and package authors' help.
- [Typst GitHub issues/discussions](https://github.com/typst/typst)
  Use for: checking whether a missing feature (e.g. margin changes mid-page) is a known limitation.

## Gaps

- No vetted resource yet for an ABNT-style (Brazilian academic) Typst thesis template; search Universe when lesson 8 approaches.
- Need to pick one theorem package (ctheorems vs theorion vs lemmify) after checking current maintenance status.
