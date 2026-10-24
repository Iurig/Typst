# Demonstrated: set rules, show-set rules, show rules with a function, and scoping

In exercise 0002 Iuri independently wrote a transformational show rule (`show heading.where(level: 1): it => { pagebreak(weak: true); it }`), a show-set rule for `raw`, and scoped a `set list(marker: ...)` rule to one list with `#[ ... ]`, with the default restored afterwards. All document-wide rules were placed at the top of the file. Six quiz questions answered correctly.

## Evidence
`exercises/0002/attempt.typ`, compiled cleanly. Second iteration fixed heading numbering and the indent amount after feedback.

## Gaps surfaced
- Partial dictionary argument: wrote `first-line-indent: (all: true)` and expected an indent; did not notice that `amount` defaulted to 0. Worth a retrieval question later: dictionary arguments need every key you rely on.
- Forgot heading numbering after fixing equation numbering; treated the two as unrelated.
- Picked `leading` by feel rather than from the recipe and did not set `spacing`; the leading/spacing pair was not yet seen as one setting.
- Wrote `numbering: "1"` and did not know a one-symbol pattern repeats without separator ("11", "111"). Numbering patterns are templates, one symbol per level, separators included.

## Implications
- Ready for Lesson 3 (math and personal macros as `#let` functions): the `it => { ... }` function form is understood, so `#let` functions will be a small step.
- Keep interleaving one styling question in later quizzes (scope, show-set vs function, dictionary args).
