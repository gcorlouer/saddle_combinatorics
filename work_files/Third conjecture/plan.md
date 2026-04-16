# Third Conjecture Plan

## Goal

Replace multiplicity-pattern orbit labels by admissible cyclic rank-pattern labels in the direct weight-space cyclic locus.

## Task files

- `task_0_rank_pattern_setup.tex`
- `task_1_forward_formula.tex`
- `task_2_inversion_formula.tex`
- `task_3_admissible_rank_patterns.tex`
- `task_4_fixed_arrow_compatibility.tex`
- `task_5_rank_pattern_orbit_stratification.tex`
- `examples_depth3_rank_patterns.tex`

## Target output

At the end of this block we should have:

- a rank-pattern definition suited to `A_L^{\mathrm{wt}}`;
- a bijection between multiplicity patterns and admissible rank patterns;
- a fixed-arrow compatibility condition expressed in rank-pattern coordinates;
- an orbit stratification of `\Gamma_{d,S}` and `\Gamma_{d,S}^r` by admissible cyclic rank patterns.

## Current status

Proof text completed. Lean verification is in progress:

- the forward and inversion formulas are formalized in
  `work_files/Lean verification/SaddleLean/ForwardInversion.lean`;
- the paper-facing multiplicity/rank conversion is exposed in
  `work_files/Lean verification/SaddleLean/RankPattern.lean`;
- the fixed-arrow compatibility and orbit-stratification statements are still
  only verified in the manuscript, not yet in Lean.
