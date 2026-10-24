// Exercise 0002 — give this document the LaTeX look using set and show rules.
// Run:   typst watch starter.typ starter.pdf     (or use Tinymist's preview)
//
// Tasks (see the lesson for details):
//   0. This file does not compile yet. Read the error and fix it with one set rule
//      (it is the Lesson 1 trap). Then number headings "1.1" as well.
//   1. A4 paper, 1.75in margins, New Computer Modern 11pt.
//   2. Justified paragraphs, tighter leading, first-line indent on EVERY paragraph.
//   3. Equation numbering should be "(1)", not "1.".
//   4. show-set: raw text in "New Computer Modern Mono"; more space around headings.
//   5. show rule with a function: every level-1 heading starts a new page.
//   6. Scoped rule: ONLY the proof's list uses "--" as its marker.

#set math.equation(numbering: "(1)")
#set heading(numbering: "1")
#set page(paper: "a4", margin: 1.75in)
#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true, leading: 0.4em, first-line-indent: (amount: 1.7em, all: true), spacing: 0.5em)
#show heading: set block(below: 1em)
#show raw: set text(font: "New Computer Modern Mono")
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  it
}

= The Chevalley-Warning Theorem and the Cauchy-Davenport Lemma
We start with a _simplified_ version of the Cauchy-Davenport Lemma:

*Theorem 1.1 (Cauchy-Davenport Lemma).* Let $p$ be a prime and $A$, $B$ be two nonempty subsets of $ZZ_p$, then $|A+B| >= min(p, |A|+|B|-1)$.

_Proof._ We use induction in $|B|$ here, where $|A| >= |B|$ is assumed.
#[
  #set list(marker: [--])
  - If $|B|=1$, we can write $B={b}$, and $A+B=A+b$.
  - Otherwise, assume $A inter B$ is non-empty and proper to $B$, and apply the hypothesis to $A'=A union B$ and $B'=A inter B$.
]
#h(1fr) $qed$

- This list should keep the default bullet.

= Lucas's Theorem
Let $m$ and $n$ be non-negative integers and $p$ be a prime. Then:
$ binom(m, n) equiv product_(i=0)^k binom(m_i, n_i) quad (mod p) $ <lucas_eq>

As stated in @lucas_eq, the bound is sharp. The code `typst watch` should be in Computer Modern Mono.
