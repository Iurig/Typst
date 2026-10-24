# Demonstrated: mode switching, labels and references

Completed exercise 0001 unaided (translated a thesis passage): correct use of markup syntax (headings, emphasis, lists), inline vs display math, `#` to enter code (`#h(1fr) $qed$`, `#set`), labels after elements and `@` references to a numbered equation. Scored all six quiz questions correctly.

## Evidence
`exercises/0001/attempt.typ`, compiled cleanly on first inspection.

## Misconceptions surfaced
- Wrote `Pi_(i=0)^k` expecting the product operator; got the Greek letter with side scripts. Large operators are named words (`sum`, `product`, `integral`). Corrected in chat.
- Did not realise heading numbering is opt-in (`#set heading(numbering: ...)`); equation numbering was understood.

## Implications
- Lesson 2 (set rules, show rules, LaTeX look) can start immediately; they have already placed a set rule mid-document, so scoping of set rules is a live question to answer.
- Keep the operator-vs-letter distinction in the math lesson's retrieval practice.
