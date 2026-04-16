# Fifth Conjecture Plan

## Goal

Derive the correct codimension formula for the cyclic orbit strata and for the critical locus in the direct weight-space setting.

## Task files

- `task_0_projectives_and_syzygies.tex`
- `task_1_fixed_arrow_tangent_sequence.tex`
- `task_2_codim_in_multiplicity_coordinates.tex`
- `task_3_codim_in_rank_pattern_coordinates.tex`
- `examples_codimension_checks.tex`

## Target output

At the end of this block we should have:

- a clean `Ext^1` computation for indecomposable interval modules of `A_L^{\mathrm{wt}}`;
- an orbit-codimension statement for the fixed-arrow cyclic slice under precise hypotheses;
- the corresponding multiplicity and rank-pattern formulas;
- the transferred codimension formula for the critical locus.

## Current status

Proof text completed. Lean verification currently covers the arithmetic
identities behind the codimension comparison in
`work_files/Lean verification/SaddleLean/Codim.lean`; the representation- and
orbit-theoretic dimension statements remain to be formalized.
