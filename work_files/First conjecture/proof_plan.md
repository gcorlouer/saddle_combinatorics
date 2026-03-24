# First Conjecture Proof Plan

## Goal

This folder organizes the proof program for Conjecture A and Conjecture B in the direct weight-space setup.

We work with:

- the transpose-gradient equations
  \[
  (\nabla_{W_\ell}\mathcal L(W))^\top=0
  \qquad\Longleftrightarrow\qquad
  W_{<\ell}W_0W_{>\ell}=0;
  \]
- the closing map
  \[
  W_0=W_S=\Sigma_{XY}P_Q;
  \]
- the cyclic locus `\Gamma_{d,S}^r`;
- the critical locus `\mathcal C_{d,S}^r`.

## Strategy

The proof is intentionally split into two phases:

1. validate the statement;
2. prove the corrected and final form.

This is necessary because the quotient statement in Conjecture B depends on whether the critical locus is stable under the chosen acting group.

## File roles

- `task_0_validate_statement.tex`
  Check whether the current Conjecture B is well-posed and determine the final quotient statement.

- `task_1_group_action_lemmas.tex`
  Record the group actions and prove the basic equivariance lemmas.

- `task_2_endpoint_reduction.tex`
  Reduce Conjecture A to a statement about the endpoint orbit of the product map `\mu(W)`.

- `task_3_invariants_of_mu.tex`
  Extract all conditions on `\mu(W)` forced by the cyclic equations.

- `task_4_normalization_theorem.tex`
  Prove the key normalization theorem for the end-to-end map.

- `task_5_proof_of_conjecture_A.tex`
  Deduce Conjecture A from the normalization theorem.

- `task_6_corrected_statement_of_B.tex`
  Write the final cleaned statement of Conjecture B after Task 0 is complete.

- `task_7_uniqueness_of_critical_representative.tex`
  Prove uniqueness of the critical representative up to the correct stabilizer.

- `task_8_proof_of_conjecture_B.tex`
  Deduce the final orbit-bijection theorem.

- `examples_and_counterchecks.tex`
  Maintain small examples, edge cases, and sanity checks in parallel with the abstract work.

## Success criteria

This proof program is complete only when:

- the final version of Conjecture B is mathematically well-posed;
- Conjecture A is proved via a normalization theorem for `\mu(W)`;
- Conjecture B is proved from existence plus uniqueness of critical representatives;
- the examples for `L=2` and `L=3` support the final abstract statement;
- all uses of assumptions are explicitly tracked.
