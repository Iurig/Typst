// Exercise 0003 — your personal macros. Edit this file.
// The thesis preamble line is above each task.
// Lesson 3 has everything you need.

// \newcommand{\Zb}{\mathbb{Z}}   (done, as an example)
#let Zb = $ZZ$

// \newcommand{\egz}{\operatorname{EGZ}}
#let egz = math.op("EGZ")

// \newcommand{\carac}{\operatorname{char}}
#let carac = math.op("char")

// \newcommand{\defeq}{\mathrel{\mathop:}=}
#let defeq = $:=$

// \newcommand{\cupdot}{\charfusion[\mathbin]{\cup}{\cdot}}
#let cupdot = $union.dot$

// \newcommand\inner[2]{\langle #1, #2 \rangle}
#let inner(x, y) = $lr(chevron.l #x, #y chevron.r)$

// \pmod{p} from amsmath: "  (mod p)" with a quad before it
#let pmod(n) = $quad (mod #n)$

// \newcommand{\equals}[1][]{\stackrel{\smash{\text{#1}}}{=}}
// (an OPTIONAL argument: make it a named one, `by`)
#let equals(by: none) = $limits(=)^by$

// \newcommand{\Re}{\operatorname{Re}}
// (careful: Typst's Re already means something else)
#let Re = math.op("Re")

// \newcommand{\norm}[1]{\left\lVert#1\right\rVert}
// (one of these needs no definition at all. Which?)
// this one, norm is already a math operator in typist
