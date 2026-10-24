// Solution macros for exercise 0003.

#let Zb = $ZZ$

// an operator: upright, with operator spacing
#let egz = math.op("EGZ")
#let carac = math.op("char")

// ≔ is a named symbol; `:=` is also a built-in shorthand
#let defeq = $colon.eq$

// ⊍ exists as a symbol, so no \charfusion hack
#let cupdot = $union.dot$

// arguments need # inside $…$: a bare `a` is the letter a
#let inner(a, b) = $lr(chevron.l #a, #b chevron.r)$

// `mod` is a predefined operator
#let pmod(n) = $quad (mod #n)$

// an optional argument is a named one with a default
#let equals(by: none) = $limits(=)^#by$

// shadows the built-in Re (ℜ) on purpose
#let Re = math.op("Re")

// \norm: nothing to do. norm() is built into math mode.
