// Solution for exercise 0004.
#import "@preview/ctheorems:2.0.0": *
#import thm-themes.ams: *
// the default ∎ already matches \renewcommand\qedsymbol{$\blacksquare$}
#show: thm-rules

#let Zb = $ZZ$
#let egz = math.op("EGZ")
#let pmod(n) = $quad (mod #n)$

#set page(width: 16cm, height: auto, margin: 1.5cm)
#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true)
#set heading(numbering: "1.1")

// \newtheorem{theorem}{Theorem}[chapter]: the chapter only.
// Lemma and proposition share the counter, so they need the
// same base-level, or the count restarts when it changes.
#let theorem = theorem.with(base-level: 1)
#let lemma = lemma.with(base-level: 1)
#let proposition = proposition.with(base-level: 1)
// \newtheorem{definition}{Definition}[chapter]: its own counter
#let definition = definition.with(
  counter: "Definition", base-level: 1,
)
// \newtheorem{corollary}{Corollary}[theorem] is the theme's
// default already (1.2.1), so corollary needs nothing.

= Algebra and Number Theory Results

== The Chevalley–Warning Theorem and the Cauchy–Davenport Lemma

#definition[
  For subsets $A, B$ of an abelian group, the _sumset_ is
  $A + B = {a + b : a in A, b in B}$.
]

#theorem[Cauchy–Davenport Lemma][
  Let $p$ be a prime and $A$, $B$ be two nonempty subsets of $Zb_p$, then
  $|A + B| >= min(p, |A| + |B| - 1)$.
] <cauchy_davenport_lemma>

#proof[
  We use induction in $|B|$ here, where $|A| >= |B|$ is assumed.
  - If $|B| = 1$, we can write $B = {b}$, and $A + B = A + b$, so
    $|A + B| = |A|$.
  - Otherwise, after a translation of $A$ we may assume $A inter B$ is
    nonempty and proper to $B$. The induction hypothesis applied to
    $A' = A union B$ and $B' = A inter B$ gives
    $|A + B| >= |A' + B'| >= min(p, |A| + |B| - 1)$. #qedhere
]

#theorem[Chevalley–Warning Theorem][
  For $j = 1, 2, ..., n$ let $P_j (x_1, ..., x_m)$ be a polynomial of
  degree $r_j$ over a finite field $F$ of characteristic $p$. If
  $sum_(j=1)^n r_j < m$ then the number $N$ of common zeros of
  $P_1, ..., P_n$ (in $F^m$) satisfies
  $ N equiv 0 pmod(p). $
] <chev>

#corollary[
  If $P_1, ..., P_n$ have one common zero, then they have another one.
] <chev_another>

#proof[
  By @chev, $N >= 1$ and $p divides N$, so
  $ N >= p >= 2. #qedhere $
]

== Lucas's Theorem

#theorem[Lucas's Theorem][
  Let $m$ and $n$ be non-negative integers and $p$ be a prime, with base $p$
  digits $m_i$ and $n_i$. Then
  $ binom(m, n) equiv product_(i=0)^k binom(m_i, n_i) pmod(p). $
] <lucas>

#remark[
  For $p = 2$, $binom(m, n)$ is odd if and only if every binary digit of
  $n$ is at most the corresponding digit of $m$.
]

= Previous Knowledge

== The Original Result

#definition[
  For a ring $R$ and integers $t, m >= 1$, $egz(t, R, m)$ is the smallest
  $l$ such that every sequence $S$ of size $l$ over $R$ has a subsequence
  $S'$ of size $t$ with $e_m (S') = 0$.
]

#theorem[Erdős–Ginzburg–Ziv Theorem][
  Given an integer $n >= 1$, $egz(n, Zb_n, 1) = 2n - 1$.
] <original_egz>

#proof[
  The sequence $(0^(n-1), 1^(n-1))$ shows the bound is sharp, and the
  general case follows from the prime one by induction on the prime factors
  of $n$. So take $n = p$ prime and order a sequence $S$ of size $2p - 1$ so that
  $s_1 <= dots.c <= s_(2p-1)$. If $s_i = s_(i+p-1)$ for some $i$, those $p$
  equal terms add to $0$. Otherwise the pairs $S_i = {s_i, s_(i+p-1)}$ have
  two elements each, and applying @cauchy_davenport_lemma $p - 2$ times gives
  $|S_1 + dots.c + S_(p-1)| >= p$. So some choice of one term from each pair
  adds to $-s_(2p-1)$, and with $s_(2p-1)$ that is $p$ terms adding to $0$.
]

This proof of @original_egz uses @cauchy_davenport_lemma. The other classical
route goes through @chev and @chev_another, and @lucas is what computes the
symmetric polynomials $e_m$ over $Zb_2$ in the next chapters.
