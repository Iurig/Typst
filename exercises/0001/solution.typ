// Solution for exercise 0001 -- one possible translation of task.tex
#set page(width: 14cm, height: auto, margin: 1.2cm)
#set text(font: "New Computer Modern", size: 11pt)
#set heading(numbering: "1.1")
#set math.equation(numbering: "(1)")

= The Chevalley-Warning Theorem and the Cauchy-Davenport Lemma
We start with a _simplified_ version of the Cauchy-Davenport Lemma:

*Theorem 1.1 (Cauchy-Davenport Lemma).* <cauchy_davenport_lemma>
Let $p$ be a prime and $A$, $B$ be two nonempty subsets of $ZZ_p$, then
$|A + B| >= min(p, |A| + |B| - 1)$.

_Proof._ We use induction in $|B|$ here, where $|A| >= |B|$ is assumed.
- If $|B| = 1$, we can write $B = {b}$, and $A + B = A + b$.
- Otherwise, assume $A inter B$ is non-empty and proper to $B$, and apply
  the hypothesis to $A' = A union B$ and $B' = A inter B$.
#h(1fr) $qed$

= Lucas's Theorem
Let $m$ and $n$ be non-negative integers and $p$ be a prime. Then:
$ binom(m, n) equiv product_(i=0)^k binom(m_i, n_i) quad (mod p). $ <lucas>
As stated in Theorem 1.1, the bound is sharp (and @lucas is Lucas's theorem).
