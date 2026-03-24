# Second Conjecture Plan

## Goal

This folder organizes the second-conjecture block for the saddle-combinatorics paper.

The purpose of the block is to:

- define the direct weight-space cyclic algebra;
- classify its indecomposable modules;
- rewrite that classification as the combinatorial labeling of the weight-space cyclic locus;
- prepare the formulation that will later be transported to the critical locus through the first conjecture.

The target of this block is the correct statement of the second conjecture, not yet its full proof.

## Working files

- `plan.md`
  Main roadmap for the second-conjecture block.

- `task_0_ambient_algebra.tex`
  Fix the cyclic quiver, the weight-space relations, and the algebra
  `A_L^{\mathrm{wt}}`.

- `task_1_representation_correspondence.tex`
  Identify quiver representations with relations and
  `A_L^{\mathrm{wt}}`-modules, and specialize the closing arrow to `W_0`.

- `task_2_weight_space_nakayama_algebra.tex`
  Prove finite-dimensionality, compute the indecomposable projectives, and
  record the Kupisch series.

- `task_3_classification_of_indecomposables.tex`
  Classify the indecomposable modules as admissible interval modules.

- `task_4_krull_schmidt_and_multiplicity_patterns.tex`
  Pass from indecomposables to arbitrary modules and define the multiplicity
  patterns.

- `task_5_second_conjecture_statement.tex`
  State the second conjecture in abstract-module and weight-space form.

- `examples_and_counterchecks.tex`
  Record the low-dimensional sanity checks that validate the setup.

## Locked definitions

We work with the cyclic quiver `Q=C_{L+1}` on vertices `0,\dots,L` and arrows

- `a_t : t-1 -> t` for `1 <= t <= L`,
- `a_0 : L -> 0`.

The direct weight-space relations are the length-`L` paths that pass through the
closing arrow:
\[
I_L^{\mathrm{wt}}
:=
\langle p_1,\dots,p_L\rangle,
\qquad
p_\ell
:=
a_{\ell-1}\cdots a_1\,a_0\,a_L\cdots a_{\ell+1}.
\]

The corresponding algebra is
\[
A_L^{\mathrm{wt}}
:=
kQ/I_L^{\mathrm{wt}}.
\]

The key difference from `paper_v0.tex` is that we do **not** impose
\[
p_0=a_L\cdots a_1=0.
\]
This path is the quiver version of the end-to-end map `\mu(W)`, so it must
survive in the weight-space formulation.

## Main structural expectation

The algebra `A_L^{\mathrm{wt}}` should be a cyclic monomial Nakayama algebra with
Kupisch series
\[
(L+1,L,\dots,L).
\]

Accordingly, the admissible indecomposable interval modules should be indexed by
\[
\mathcal I_L^{\mathrm{wt}}
:=
\{(i,j)\mid 0\le i\le j\le L\}
\cup
\{(i,j)\mid 1\le i\le L,\ 0\le j\le i-2\}.
\]

This splits into:

- the non-wrapping type-`A` family `0 <= i <= j <= L`;
- the wrapped family `1 <= i <= L`, `0 <= j <= i-2`, which passes through the
  closing arrow `L -> 0`.

The forbidden pairs are exactly
\[
(i,i-1),
\qquad
1\le i\le L,
\]
because they would require the excluded wrapped path of cyclic length `L`.

## Execution order

1. Fix the ambient algebra and notation.
2. Prove the module/representation correspondence.
3. Show that `A_L^{\mathrm{wt}}` is finite-dimensional and Nakayama.
4. Classify the indecomposable modules as admissible interval modules.
5. Define the multiplicity patterns and the corresponding decomposition theorem.
6. State the second conjecture in the final weight-space language.
7. Maintain explicit checks for `L=2` and `L=3` throughout.

## Defaults for the writeup

- Use a general field `k` for the algebraic statements, then return to
  `k=\mathbb R` when discussing DLNs.
- Use a hybrid presentation:
  - type-`A` language for the non-wrapping family;
  - projective-quotient/Nakayama language for the wrapped family.
- Do not state a "Gabriel theorem for `A_L^{\mathrm{wt}}`".
  Gabriel only explains the non-wrapping type-`A` part of the classification.
- Keep the dictionary with the first-conjecture block explicit:
  after fixing `a_0=W_0=\Sigma_{XY}P_Q`, the quiver relations must recover the
  direct weight-space cyclic locus `\Gamma_{d,S}` exactly.

## Success criteria

This block is complete when:

- the algebra `A_L^{\mathrm{wt}}` is defined unambiguously;
- the surviving and vanishing paths are recorded correctly;
- the indecomposable projectives and the Kupisch series are computed;
- the admissible indecomposable interval modules are listed with an exact index
  set;
- the multiplicity-pattern set `\mathcal M_d^+(A_L^{\mathrm{wt}})` is written
  down explicitly;
- the second conjecture is stated in both abstract-module and weight-space form;
- the `L=2` and `L=3` examples agree with the general formulas.
