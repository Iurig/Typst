// Exercise 0004 — real theorem environments.
// Copy this file to attempt.typ and work there.
// Run:  typst watch attempt.typ   (or Tinymist preview)
//
// The text is from your thesis (prerequisites.tex, results.tex),
// slightly shortened, plus two definitions, a corollary and a
// remark so that every part of the preamble gets used.
// The math is already Typst. Your job is the environments.
// Each `// \begin{...}` / `// \end{...}` pair marks one.
//
// Your thesis preamble (main_ppgco_ufu.tex):
//   \newtheorem{theorem}{Theorem}[chapter]
//   \newtheorem{corollary}{Corollary}[theorem]
//   \newtheorem{lemma}[theorem]{Lemma}
//   \newtheorem{proposition}[theorem]{Proposition}
//   \theoremstyle{remark}
//   \newtheorem*{remark}{Remark}
//   \theoremstyle{definition}
//   \newtheorem{definition}{Definition}[chapter]
//   \renewcommand\qedsymbol{$\blacksquare$}
//
// Target numbering: Definition 1.1, Theorem 1.1, Theorem 1.2,
// Corollary 1.2.1, Theorem 1.3, Definition 2.1, Theorem 2.1.

#let Zb = $ZZ$
#let egz = math.op("EGZ")
#let pmod(n) = $quad (mod #n)$

#set page(width: 16cm, height: auto, margin: 1.5cm)
#set text(font: "New Computer Modern", size: 11pt)
#set par(justify: true)
#set heading(numbering: "1.1")

= Algebra and Number Theory Results

== The Chevalley–Warning Theorem and the Cauchy–Davenport Lemma

// \begin{definition}
For subsets $A, B$ of an abelian group, the _sumset_ is
$A + B = {a + b : a in A, b in B}$.
// \end{definition}

// \begin{theorem}[Cauchy-Davenport Lemma]\label{cauchy_davenport_lemma}
Let $p$ be a prime and $A$, $B$ be two nonempty subsets of $Zb_p$, then
$|A + B| >= min(p, |A| + |B| - 1)$.
// \end{theorem}

// \begin{proof}
We use induction in $|B|$ here, where $|A| >= |B|$ is assumed.
- If $|B| = 1$, we can write $B = {b}$, and $A + B = A + b$, so
  $|A + B| = |A|$.
- Otherwise, after a translation of $A$ we may assume $A inter B$ is
  nonempty and proper to $B$. The induction hypothesis applied to
  $A' = A union B$ and $B' = A inter B$ gives
  $|A + B| >= |A' + B'| >= min(p, |A| + |B| - 1)$.
// \qedhere at the end of that last item
// \end{proof}

// \begin{theorem}[Chevalley-Warning Theorem]\label{chev}
For $j = 1, 2, ..., n$ let $P_j (x_1, ..., x_m)$ be a polynomial of
degree $r_j$ over a finite field $F$ of characteristic $p$. If
$sum_(j=1)^n r_j < m$ then the number $N$ of common zeros of
$P_1, ..., P_n$ (in $F^m$) satisfies
$ N equiv 0 pmod(p). $
// \end{theorem}

// \begin{corollary}\label{chev_another}
If $P_1, ..., P_n$ have one common zero, then they have another one.
// \end{corollary}

// \begin{proof}
By Theorem 1.2, $N >= 1$ and $p divides N$, so
$ N >= p >= 2. $
// \qedhere at the end of that display
// \end{proof}

== Lucas's Theorem

// \begin{theorem}[Lucas's Theorem]\label{lucas}
Let $m$ and $n$ be non-negative integers and $p$ be a prime, with base $p$
digits $m_i$ and $n_i$. Then
$ binom(m, n) equiv product_(i=0)^k binom(m_i, n_i) pmod(p). $
// \end{theorem}

// \begin{remark}
For $p = 2$, $binom(m, n)$ is odd if and only if every binary digit of
$n$ is at most the corresponding digit of $m$.
// \end{remark}

= Previous Knowledge

== The Original Result

// \begin{definition}
For a ring $R$ and integers $t, m >= 1$, $egz(t, R, m)$ is the smallest
$l$ such that every sequence $S$ of size $l$ over $R$ has a subsequence
$S'$ of size $t$ with $e_m (S') = 0$.
// \end{definition}

// \begin{theorem}[Erdős-Ginzburg-Ziv Theorem]\label{original_egz}
Given an integer $n >= 1$, $egz(n, Zb_n, 1) = 2n - 1$.
// \end{theorem}

// \begin{proof}
The sequence $(0^(n-1), 1^(n-1))$ shows the bound is sharp, and the
general case follows from the prime one by induction on the prime factors
of $n$. So take $n = p$ prime and order a sequence $S$ of size $2p - 1$ so that
$s_1 <= dots.c <= s_(2p-1)$. If $s_i = s_(i+p-1)$ for some $i$, those $p$
equal terms add to $0$. Otherwise the pairs $S_i = {s_i, s_(i+p-1)}$ have
two elements each, and applying Theorem 1.1 $p - 2$ times gives
$|S_1 + dots.c + S_(p-1)| >= p$. So some choice of one term from each pair
adds to $-s_(2p-1)$, and with $s_(2p-1)$ that is $p$ terms adding to $0$.
// \end{proof}

This proof of Theorem 2.1 uses Theorem 1.1. The other classical
route goes through Theorem 1.2 and Corollary 1.2.1, and Theorem 1.3 is what
computes the symmetric polynomials $e_m$ over $Zb_2$ in the next chapters.
// Every hard-coded number in this file should become a reference.
// (Your thesis wrote bare \ref{lucas} here and there; Typst's
// @lucas always prints the word "Theorem" too.)
