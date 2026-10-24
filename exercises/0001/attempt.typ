= The Chevalley-Warning Theorem and the Cauchy-Davenport Lemma
#set math.equation(numbering: "1.")
We start with a _simplified_ version of the Chauchy-Davenport Lemma:

*Theorem 1.1 (Chauchy-Davenport Lemma)* Let $p$ be a prime and $A$, $B$ be two nonempty subsets of $ZZ_p$, then $|A+B| <= min(p, |A|+|B|-1)$.

*proof* We use induction in $|B|$ here, where $|A|<=|B|$ is assumed.

- If $|B|=1$, we can write $|B|={b}$, and $A+B=A+b$.
- Otherwise, assume $A inter B$ is non-empty and proper to $B$, and apply the hypothesis to $A'=A union B$ and $B'=A inter B$.
#h(1fr) $qed$

= Luca's Theorem
Let $m$ and $n$ be non-negative integers and $p$ be a prime. Then:
$ binom(m, n) equiv product_(i=0)^k binom(m_i, n_i) quad (mod p) $ <lucas_eq>

As stated in @lucas_eq, the bound is sharp.
