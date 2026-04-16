# SaddleLean

Mathlib-based Lean 4 verification workspace for the paper draft.

## Build

From [lean](/Users/guime/projects/deep_linear_networks/saddle_combinatorics/lean):

```bash
lake build
```

## Roadmap

- [plan.md](/Users/guime/projects/deep_linear_networks/saddle_combinatorics/lean/plan.md)
  gives the formalization phases and dependency order.
- [coverage.md](/Users/guime/projects/deep_linear_networks/saddle_combinatorics/lean/coverage.md)
  tracks the paper proposition-by-proposition status.

## Verified core statements

- [`SaddleLean/ForwardInversion.lean`](/Users/guime/projects/deep_linear_networks/saddle_combinatorics/lean/SaddleLean/ForwardInversion.lean)
  proves the finite-sum lemmas behind the rank-pattern calculus, including the
  inversion identity recovering multiplicities from cumulative rank data.
- [`SaddleLean/RankPattern.lean`](/Users/guime/projects/deep_linear_networks/saddle_combinatorics/lean/SaddleLean/RankPattern.lean)
  packages the paper-facing `forwardRank` and `inverseMultiplicity` maps and
  proves that the inverse formula recovers the original multiplicity data.
- [`SaddleLean/Codim.lean`](/Users/guime/projects/deep_linear_networks/saddle_combinatorics/lean/SaddleLean/Codim.lean)
  verifies the arithmetic identities relating the cyclic and critical
  codimension formulas.
- [`SaddleLean/DistinguishedCoordinates.lean`](/Users/guime/projects/deep_linear_networks/saddle_combinatorics/lean/SaddleLean/DistinguishedCoordinates.lean)
  is the new mathlib module for the distinguished rank coordinates used in the
  fixed-arrow/rank constraint proposition.

## Coverage note

The current Lean development now has a root `lean/` project with `mathlib`.
The combinatorial rank-pattern core is checked, the codimension arithmetic
support is checked, and the distinguished-coordinate layer is in progress. The
larger structural theorems about the cyclic algebra, indecomposable
classification, orbit correspondence, and orbit stratifications still require a
substantial representation-theoretic and group-action development.
