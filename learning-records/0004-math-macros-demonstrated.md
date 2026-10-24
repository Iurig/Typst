# Demonstrated: math operators, `#let` macros, named arguments, import

Completed exercise 0003 unaided: wrote `macros.typ` with constants (`Zb`, `cupdot`), operators via `math.op` (`egz`, `carac`, upright `Re` shadowing ℜ), functions with hashed one-letter parameters (`inner(x, y)`, `pmod(n)`), and an optional argument as a named parameter (`equals(by: none)`). Chose the `:=` shorthand for `defeq` and correctly identified `norm` as built in. Output matched the solution on the first review.

## Evidence
`exercises/0003/macros.typ`, imported by `starter.typ`, compiled cleanly.

## Insight surfaced
- Noticed that `$limits(=)^by$` works without a hash and asked why. Answer: the rule is "one-letter names need `#`", not "parameters need `#`"; multi-letter names are looked up as variables. They are now reasoning from the name rule rather than memorising syntax.
- Called `norm` a "math operator". Minor vocabulary slip: it is a built-in function (`op` makes operators). The glossary distinction is function vs operator vs symbol.

## Implications
- Ready for Lesson 4 (theorem environments). They can now write `#let` functions with content arguments, which is what a hand-rolled theorem box or a package's `thmbox` configuration needs.
- Quiz: 5/7. All five new-material questions right. Both misses were the interleaved review questions:
  - Numbering pattern `"1"` on a subsection: missed. **Teaching gap, not a learner gap.** It was never taught: Lesson 2 only showed `"1.1"` in code, and the rule only appeared in chat feedback on exercise 0002. On 2026-10-24 the rule (counting symbols, prefix and suffix, "last symbol with its prefix is repeated") was added to reference 0002. Teach it properly in Lesson 4, where theorem numbering by chapter needs it. Have them predict outputs before compiling, and quiz it only after that.
  - Picked `prod` over `product`. They ruled out `Pi` correctly (record 0002's misconception is fixed), but default to TeX abbreviations. Teach the pattern: Typst names are full words (`product`, `integral`, `infinity`/`oo`, `union`, `inter`, `subset.eq`), so guess the English word, not the TeX command.
- Interleave in Lesson 4's quiz: one numbering-pattern question, one TeX-abbreviation-vs-word question, and one on the hash rule.
