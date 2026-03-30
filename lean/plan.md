# Lean Verification Plan

## Goal

Machine-check as much of the paper as possible inside the root `lean/`
mathlib project, with proposition-by-proposition status tracking and explicit
paper annotations for results that have been checked.

## Formalization architecture

### Phase 0: Project scaffolding

- keep the formalization in the root `lean/` directory;
- maintain a clean `lake build` target;
- track paper coverage in `lean/coverage.md`;
- update the manuscript after each exact proposition-level Lean check.

### Phase 1: Array-level rank-pattern core

- finite sums for cumulative rank data;
- finite-difference inversion;
- forward/inverse transform wrappers;
- exact statement matching for the inversion proposition;
- eventual right-inverse/bijection strengthening.

Files:

- `SaddleLean/Basic.lean`
- `SaddleLean/ForwardInversion.lean`
- `SaddleLean/RankPattern.lean`

### Phase 2: Distinguished path coordinates in weight space

- define the distinguished path coordinates needed by the paper;
- model the closing and end-to-end coordinates with actual matrix rank from
  `mathlib`;
- verify the fixed-arrow/rank constraint proposition exactly at this level.

Files:

- `SaddleLean/DistinguishedCoordinates.lean`

### Phase 3: Interval and path infrastructure

- define admissible intervals and containment;
- define surviving paths and path support;
- set up the combinatorial interface needed for interval modules;
- expose reusable lemmas for later `Hom` and path-rank proofs.

Planned files:

- `SaddleLean/Intervals.lean`
- `SaddleLean/Paths.lean`

### Phase 4: Interval modules and multiplicity layer

- define interval modules in a concrete finite-dimensional form;
- prove the surviving-path criterion;
- prove the `Hom` criterion;
- derive the endomorphism-dimension formula;
- strengthen the multiplicity/rank dictionary toward the paper theorem.

Planned files:

- `SaddleLean/IntervalModule.lean`
- `SaddleLean/HomCriterion.lean`
- `SaddleLean/Multiplicity.lean`

### Phase 5: Fixed-arrow cyclic locus and rank constraints

- define the fixed-arrow representation data;
- connect distinguished path maps to weight-space data;
- prove visible product-level and rank-\(r\) constraints.

Planned files:

- `SaddleLean/CyclicLocus.lean`
- `SaddleLean/FixedArrowConstraints.lean`

### Phase 6: Group actions, stabilizers, and codimension support

- define the relevant stabilizer data abstractly enough for Lean;
- prove dimension formulas that can be handled with linear algebra;
- isolate the arithmetic/orbit ingredients of the codimension theorem.

Planned files:

- `SaddleLean/Stabilizers.lean`
- `SaddleLean/CodimSupport.lean`

### Phase 7: Structural classification theorems

- Nakayama and indecomposable classification;
- orbit classification for multiplicity patterns;
- rank-pattern stratification of the cyclic locus;
- transfer to the critical locus;
- full-rank recovery.

Planned files:

- `SaddleLean/Nakayama.lean`
- `SaddleLean/OrbitStratification.lean`
- `SaddleLean/CriticalLocus.lean`

## Current status

Checked exactly:

- inversion formula core;
- codimension arithmetic identities used after the geometric orbit-dimension
  input.

Checked only as supporting infrastructure:

- cumulative-sum and singleton lemmas for the rank-pattern calculus;
- paper-facing wrappers around the forward and inverse transforms.
- distinguished rank-coordinate infrastructure for the fixed-arrow proposition.

Still open:

- the interval-module `Hom` and `Ext` propositions;
- the actual multiplicity-rank bijection theorem at the paper level;
- the representation-theoretic cyclic-algebra layer;
- orbit correspondence and all stratification theorems;
- the group-dimension and orbit-codimension geometry behind Section 7.

## Immediate next tasks

1. Maintain `lean/coverage.md` as the source of truth for proposition status.
2. Strengthen the rank-pattern development from left-inverse to bijection-level
   statements.
3. Build interval/path infrastructure before attempting `Hom` and orbit
   theorems.
4. Only mark paper results as Lean-checked once the exact proposition-level
   statement has landed in `lean/`.
