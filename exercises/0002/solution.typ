// Solution for exercise 0002 — the LaTeX look, applied to the lesson-1 translation.
// Every rule here is a *set* rule, a *show-set* rule or a *show* rule with a function.

// --- the LaTeX look (from the official guide for LaTeX users) ---
#set page(paper: "a4", margin: 1.75in)
#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true, leading: 0.55em, spacing: 0.55em,
         first-line-indent: (amount: 1.8em, all: true))   // all: true = \usepackage{indentfirst}
#show raw: set text(font: "New Computer Modern Mono")
#show math.equation: set text(weight: "regular")
#show heading: set block(above: 1.4em, below: 1em)

// --- numbering, so @references work ---
#set heading(numbering: "1.1")
#set math.equation(numbering: "(1)")

// --- a transformational show rule: level-1 headings behave like \chapter ---
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  it
}

= The Chevalley-Warning Theorem and the Cauchy-Davenport Lemma
We start with a _simplified_ version of the Cauchy-Davenport Lemma:

*Theorem 1.1 (Cauchy-Davenport Lemma).* Let $p$ be a prime and $A$, $B$ be two nonempty subsets of $ZZ_p$, then $|A+B| >= min(p, |A|+|B|-1)$.

_Proof._ We use induction in $|B|$ here, where $|A| >= |B|$ is assumed.

// a scoped set rule: only this block's list gets dashes
#[
  #set list(marker: [--])
  - If $|B|=1$, we can write $B={b}$, and $A+B=A+b$.
  - Otherwise, assume $A inter B$ is non-empty and proper to $B$, and apply the hypothesis to $A'=A union B$ and $B'=A inter B$.
]
#h(1fr) $qed$

- This list, outside the block, has the default bullet again.

= Lucas's Theorem
Let $m$ and $n$ be non-negative integers and $p$ be a prime. Then:
$ binom(m, n) equiv product_(i=0)^k binom(m_i, n_i) quad (mod p) $ <lucas_eq>

As stated in @lucas_eq, the bound is sharp. The code `typst watch` is now in Computer Modern Mono.
