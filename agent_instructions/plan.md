# Detailed Execution Plan
# New plan
- Verify that each section in the paper is mathematically correct in Lean
- Look at the old plan to see what has been done before
- In the work_file folder go through each conjecture. For each conjecture verify that the tasks are mathematically correct by using lean
- You can create a new folder in the work_file for each conjecture with the lean code
- If some maths is wrong update this plan and work_files folder to decompose the new work into small manageable tasks for the given conjecture that you are trying to prove
- Your work is done once you have verified all the maths in Lean and written a proper literature review in the related work section

## Execution status on 2026-03-29

- Active branch constraint: `dev-lean`.
- Root Lean project moved to `lean/` and upgraded to a mathlib-based setup.
- Proposition coverage is now tracked in `lean/coverage.md`.
- Exact proposition-level Lean checks currently landed:
  - Proposition `Inversion formula`.
- Support-only Lean checks currently landed:
  - cumulative-sum infrastructure used by rank patterns;
  - paper-facing forward/inverse transform wrappers;
  - distinguished rank-coordinate infrastructure for the fixed-arrow/rank
    constraint proposition;
  - codimension arithmetic identities used after the orbit-dimension input.
- Remaining Lean work:
  - representation-theoretic formalization of the cyclic algebra and interval modules;
  - multiplicity-rank bijection at the paper level;
  - `Hom`/`\Ext^1` statements;
  - group/stabilizer dimension lemmas;
  - orbit correspondence and stratification theorems.

## Formalization section

This project now has a dedicated formalization workstream under the root
`lean/` folder. The goal is to machine-check as many named paper results as
possible and to mark the successfully checked results explicitly in the paper
after their proofs.

### Formalization principles

- Work only inside the repository on branch `dev-lean`.
- Keep the Lean development in the root `lean/` folder.
- Maintain a proposition-by-proposition status file in `lean/coverage.md`.
- Prefer exact paper-level statements over helper lemmas when the dependency
  cost is reasonable.
- If a paper theorem is too large, first formalize the infrastructure it
  depends on and record the theorem as `support-only` until the exact statement
  is complete.
- After an exact proposition-level check lands, add a brief sentence after the
  proof in `paper/draft.tex` stating that the proposition has been checked in
  Lean.

### Formalization phases

1. Project scaffolding and migration
   - maintain a clean `lake build`;
   - keep mathlib pinned in `lean/lakefile.lean`;
   - migrate previously checked code from the temporary workspace.
2. Rank-pattern combinatorics
   - finite sums;
   - inversion formula;
   - forward/inverse transforms;
   - strengthen toward bijection-level statements.
3. Distinguished path coordinates
   - formalize the closing and end-to-end coordinates;
   - prove the fixed-arrow/rank-\(r\) constraint proposition.
4. Interval and path infrastructure
   - admissible intervals;
   - containment and support lemmas;
   - surviving-path machinery.
5. Interval-module representation layer
   - interval modules;
   - `Hom` criterion;
   - endomorphism counts;
   - projectives and syzygies.
6. Weight-space cyclic data
   - fixed-arrow representation data;
   - visible product constraints;
   - compatibility with the rank-pattern layer.
7. Group-action and codimension support
   - stabilizers;
   - dimension formulas;
   - orbit-dimension inputs for codimension theorems.
8. Structural theorems
   - Nakayama property;
   - indecomposable classification;
   - multiplicity-pattern and rank-pattern stratifications;
   - transfer to the critical locus;
   - full-rank recovery.

### Immediate next Lean subtasks

1. Keep `lean/coverage.md` synchronized with paper progress.
2. Build exact proposition-level statements for the next low-cost targets:
   `Hom criterion`, `Endomorphism dimension`, and the strengthened
   multiplicity-rank bijection.
3. Introduce interval/path definitions before attempting the orbit theorems.
4. Annotate only the propositions that have been checked exactly in Lean.

# Old plan
## Global objective

Produce a full publishable draft of the paper
`Combinatorics of saddle points in deep linear networks`
in the direct weight-space formalism.

The current draft already contains:

- the direct weight-space setup;
- the orbit correspondence between the cyclic locus and the critical locus;
- the multiplicity-pattern classification of the fixed-arrow cyclic locus.
- Conjecture 3: replace multiplicity labels by cyclic rank-pattern labels;
- Conjecture 4: state and prove the main critical-locus stratification theorem in rank-pattern language;
- Conjecture 5: derive a correct codimension formula in the new weight-space setting;
- paper integration and polish.

## Execution rules for this run

- Stay on branch `dev-lean`.
- Do not touch parent folders.
- Keep a running decision log in `agent_log.md`.
- Work conjecture by conjecture in dedicated folders under `work_files/`.
- Keep task files focused; if a task grows too large, split it before continuing.
- After each meaningful task, record a short status note in the corresponding file and update this plan if the decomposition changes.

## Milestone 0: Audit and stabilization

Status: completed

Tasks completed:

1. Read `spec.md`, `plan.md`, and `implement.md`.
2. Verified the repository is already on branch `dev-lean`.
3. Audited the current live draft `paper/draft.tex`.
4. Audited `previous_versions/paper_v0.tex` and `previous_versions/paper_v1.tex`.
5. Audited the completed work in `work_files/First conjecture` and `work_files/Second conjecture`.

Outcome:

- The paper currently proves the orbit correspondence and the multiplicity-pattern stratification.
- The live manuscript still needs the rank-pattern bijection, the final critical-locus theorem, the codimension theorem, publication sections, citations, and a clean compile pass.

## Milestone 1: Conjecture 3

Folder: `work_files/Third conjecture`

Goal:

Prove that the fixed-arrow cyclic locus and its rank-`r` slice admit orbit stratifications indexed by admissible cyclic rank patterns, and prove the bijection between multiplicity patterns and rank patterns in the direct weight-space algebra.

Planned tasks:

1. `task_0_rank_pattern_setup.tex`
   Define admissible oriented paths, cyclic rank patterns, endpoint conventions, and the fixed-arrow compatibility constraints.
2. `task_1_forward_formula.tex`
   Prove the forward formula expressing rank data from multiplicity data by containment of intervals.
3. `task_2_inversion_formula.tex`
   Prove the inverse formula recovering multiplicities from rank data by finite differences.
4. `task_3_admissible_rank_patterns.tex`
   Define the rank-pattern set and prove the multiplicity-pattern/rank-pattern bijection.
5. `task_4_fixed_arrow_compatibility.tex`
   Translate the fixed closing-arrow condition and the open-chain rank condition into rank-pattern constraints.
6. `task_5_rank_pattern_orbit_stratification.tex`
   Rephrase the fixed-arrow orbit classification of the cyclic locus in rank-pattern coordinates.
7. `examples_depth3_rank_patterns.tex`
   Check the formulas explicitly for depth `L=3`, including the full-rank case recovering Simon's global-minimum picture.

Success criteria:

- A precise admissible rank-pattern set is defined.
- The multiplicity/rank bijection is proved rigorously.
- The fixed-arrow cyclic locus is stratified by `G_d^{W_0}`-orbits indexed by admissible cyclic rank patterns.
- The depth-3 checks validate the formulas.

## Milestone 2: Conjecture 4

Folder: `work_files/Fourth conjecture`

Goal:

State and prove the main theorem that the rank-`r` critical locus is stratified by admissible cyclic rank patterns through the orbit correspondence with the fixed-arrow cyclic locus.

Planned tasks:

1. `task_0_rank_r_labels.tex`
   Identify the subset of admissible rank patterns compatible with both the closing-arrow rank and the end-to-end rank `r`.
2. `task_1_transfer_to_critical_locus.tex`
   Combine the rank-pattern orbit stratification of the cyclic locus with the first-conjecture orbit bijection.
3. `task_2_main_stratification_theorem.tex`
   State and prove the final critical-locus stratification theorem in weight-space rank-pattern language.
4. `task_3_full_rank_recovery.tex`
   Prove the specialization to `r=d_L` recovers the orbit picture for global minima.
5. `examples_depth3_critical_strata.tex`
   Check the critical-locus statement in depth `3`.

Success criteria:

- The main result of the paper is written in the current formalism.
- Every nonempty rank-pattern stratum in the critical locus is identified as a single `H_S`-orbit.
- The full-rank case matches the global-minimum geometry.

## Milestone 3: Conjecture 5

Folder: `work_files/Fifth conjecture`

Goal:

Prove a correct codimension formula for the orbit strata and for the critical locus in the new weight-space setup.

Planned tasks:

1. `task_0_projectives_and_syzygies.tex`
   Compute projective covers, syzygies, and the resulting `Ext^1` criterion for indecomposable interval modules of `A_L^{wt}`.
2. `task_1_fixed_arrow_tangent_sequence.tex`
   Write the deformation-theoretic exact sequence for the fixed-arrow slice and derive the orbit-codimension formula under explicit hypotheses.
3. `task_2_codim_in_multiplicity_coordinates.tex`
   Express codimension in multiplicity coordinates using the `Ext^1` bilinear form.
4. `task_3_codim_in_rank_pattern_coordinates.tex`
   Rewrite the formula in rank-pattern coordinates and transfer it to the critical locus.
5. `examples_codimension_checks.tex`
   Validate the formula on low-depth examples and in the full-rank case.

Success criteria:

- The codimension statement is correct in the direct weight-space setup.
- All hypotheses are stated explicitly.
- The formulas are consistent with the full-rank/global-minimum case.

## Milestone 4: Paper integration

Goal:

Turn `paper/draft.tex` into a publishable manuscript.

Planned tasks:

1. Merge the completed conjecture blocks into the main draft.
2. Remove duplicated or superseded statements from the current draft.
3. Add a publication-grade abstract and introduction.
4. Add a related-work section citing Achour and Pepin Lehalleur, plus other references already present locally when relevant.
5. Add a contributions section.
6. Add a discussion/future-work section tied to saddle combinatorics and RLCT-style questions.
7. Add appendices for technical inversion and `Ext` computations when appropriate.
8. Add bibliography entries and make the manuscript self-contained.

Success criteria:

- The paper has a coherent structure from introduction to appendix.
- All theorem statements and proofs are aligned with the final conjecture blocks.
- The draft reads as a paper rather than as stitched working notes.

## Milestone 5: Validation and finish

Goal:

Compile and verify the full manuscript.

Planned tasks:

1. Compile `paper/draft.tex`.
2. Fix LaTeX errors, warnings, broken references, and theorem-numbering issues.
3. Check consistency of notation across all sections.
4. Re-read the depth-3 and full-rank examples against the main theorems.
5. Update this plan and `agent_log.md` with final completion notes.

Done means:

- All milestones above are executed.
- `paper/draft.tex` compiles into a complete manuscript.
- The draft contains abstract, introduction, related work, contributions, discussion, bibliography, and appendix material.
- Conjectures 3, 4, and 5 are replaced by proved statements in the manuscript.
