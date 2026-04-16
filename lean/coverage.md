# Lean Coverage Tracker

This file tracks the status of the named results in
[paper/draft.tex](/Users/guime/projects/deep_linear_networks/saddle_combinatorics/paper/draft.tex).

Status key:

- `checked`: exact paper-level statement has a Lean theorem in `lean/`.
- `support-only`: supporting lemmas are checked, but not the full paper result.
- `planned`: target identified but not yet formalized.

## Section 2

- `Gradient formula` (`prop:gradient-formula`): `planned`
- `Weight-space cyclic equations` (`prop:cyclic-equations`): `planned`

## Section 3

- `Equivariance of the product map`: `planned`
- `Stability of the cyclic locus`: `planned`
- `The critical locus is not G_d^{W_0}-stable for r>0`: `planned`
- `Endpoint projection`: `planned`
- `Endpoint reduction`: `planned`
- `Visible product-level constraints`: `planned`
- `Rank-r sharpening`: `planned`
- `Normalization theorem`: `planned`
- `Orbit-surjectivity`: `planned`
- `Direct weight-space orbit correspondence`: `planned`
- `Transfer of stratifications`: `planned`

## Section 4

- `The cyclic locus is a fixed-arrow representation variety`: `planned`
- `Surviving paths`: `planned`
- `Projective indecomposables`: `planned`
- `The weight-space algebra is Nakayama`: `planned`
- `Classification of indecomposables`: `planned`
- `Krull--Schmidt decomposition`: `planned`
- `Ambient and fixed-arrow orbit classification`: `planned`
- `Realized multiplicity patterns`: `planned`
- `Multiplicity-pattern stratification of the cyclic locus`: `planned`

## Section 5

- `Forward formula`: `support-only`
  Target: `SaddleLean.RankPattern`
  Note: the current file exposes the forward transform, but not yet the full
  module-theoretic paper statement.
- `Inversion formula`: `checked`
  Target: `SaddleLean.ForwardInversion`
  Note: checked as the exact finite-difference recovery statement for bounded
  admissible indices.
- `Multiplicity-rank bijection`: `support-only`
  Target: `SaddleLean.RankPattern`
  Note: one inverse direction is formalized; the full paper bijection remains
  open.
- `Fixed-arrow and rank-r constraints`: `support-only`
  Target: `SaddleLean.DistinguishedCoordinates`
- `Rank-pattern stratification of the cyclic locus`: `planned`

## Section 6

- `Main theorem: critical loci are stratified by cyclic rank patterns`: `planned`
- `Full-rank recovery`: `planned`

## Section 7

- `Hom criterion for interval modules`: `planned`
- `Endomorphism dimension`: `planned`
- `Dimension of G_d^{W_0}`: `planned`
- `Dimension of H_S`: `planned`
- `Codimension of the cyclic and critical strata`: `support-only`
  Target: `SaddleLean.Codim`
  Note: the arithmetic comparison terms are formalized, but not the orbit and
  stabilizer geometry needed for the full theorem.
- `Rank-pattern version`: `support-only`
- `Whole-locus codimension formulas`: `planned`
- `Full-rank case`: `planned`

## Appendices

- `First syzygy of an interval module`: `planned`
- `Ext^1-criterion`: `planned`
