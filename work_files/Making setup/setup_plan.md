# Setup Plan

## Goal of this file

The purpose of this first task is to turn the setup implicit in `paper_v0.tex` into a direct weight-space setup, while keeping the cleaner notation and paper organization of `paper_v1.tex`. The immediate target is not yet a proof. The target is to state the first conjecture correctly, with the right objects, the right group action, and the right relation between the cyclic equations and the critical locus.

This plan is written from the instruction in `tasks_file.md` and should be used as the roadmap for the first block of work.

## High-level objective

We want to reformulate the saddle-point paper without using the residual-space lifting from `paper_v0.tex` / `paper_v1.tex`.

Instead, we work directly in weight space:

- define the rank-$r$ determinantal locus in parameter space;
- define the cyclic vanishing equations directly on the weight matrices;
- define their intersection;
- formulate a direct orbit-level relation between that intersection and the rank-$r$ critical locus;
- use that relation to motivate the stratification conjecture.

## Main objects to introduce

These are the objects that the setup must define before the first conjecture is stated.

1. Parameter space:
   - `\Omega = \prod_{\ell=1}^L \mathrm{Mat}_{d_\ell \times d_{\ell-1}}(\mathbb R)`.

2. Product map:
   - `\mu(W) = W_L \cdots W_1`.

3. Teacher data and singular decomposition:
   - `W^\ast = \Sigma_{YX}\Sigma_X^{-1}`;
   - `U = [U_S \; U_Q]`;
   - `P_S = U_SU_S^\top`, `P_Q = U_QU_Q^\top`.

4. Rank-$r$ determinantal locus in weight space:
   - preferred notation: `\Sigma_d^r := \{W \in \Omega : \operatorname{rk}(\mu(W)) = r\}`.
   - If the paper later wants the shorter notation `\Sigma_r`, it should be introduced as shorthand only after `\Sigma_d^r`.

5. Cyclic equations in weight space:
   - define prefix/suffix products, for example
     - `W_{<\ell} := W_L \cdots W_{\ell+1}`,
     - `W_{>\ell} := W_{\ell-1} \cdots W_1`,
     with one convention fixed once and used everywhere.
   - define the data-dependent closing map
     - `W_S^\perp := P_Q \Sigma_{YX}\Sigma_X^{-1}` or an equivalent symbol;
   - define the cyclic variety directly in weight space by the first-order critical equations:
     - candidate notation: `\Gamma_{d,S}`;
     - candidate defining equations:
       `W_{<\ell}^{\top} P_Q \Sigma_{YX}\Sigma_X^{-1} W_{>\ell}^{\top} = 0`
       or the equivalent formula coming from the exact gradient computation.

6. Rank-restricted cyclic locus:
   - `\Gamma_{d,S}^r := \Sigma_d^r \cap \Gamma_{d,S}`.

7. Critical locus:
   - `\mathcal C_{d,S}^r :=` rank-$r$ critical points whose student map is
     `U_S U_S^\top \Sigma_{YX}\Sigma_X^{-1}`.

8. Symmetry group:
   - start from the full base-change group `G_d = \prod_{\ell=0}^L \mathrm{GL}(d_\ell)`;
   - define the stabilizer of the data-dependent closing map;
   - likely notation:
     `G_d^\sigma := \operatorname{Stab}_{G_d}(\sigma)` with `\sigma` the fixed closing map;
   - one task will be to decide whether the correct acting group should instead be a hidden-layer subgroup or a mixed stabilizer subgroup.

## First conjecture to prepare

The conjecture should only be stated after the setup above is made precise.

### Provisional formulation

For fixed rank `r` and subset `S`, the orbit decomposition of the weight-space cyclic locus
`\Gamma_{d,S}^r`
under the appropriate stabilizer group induces an orbit decomposition, hence a stratification, of the critical locus
`\mathcal C_{d,S}^r`.

More concretely, the expected mechanism is:

1. define a direct map from `\Gamma_{d,S}^r` to `\mathcal C_{d,S}^r`;
2. show that this map is equivariant for the chosen symmetry group;
3. show that the induced map on orbit spaces is a bijection;
4. conclude that any orbit stratification of `\Gamma_{d,S}^r` gives a corresponding stratification of `\mathcal C_{d,S}^r`.

### What must be clarified before this conjecture is final

The current instruction mixes several notations and some of them still need correction:

1. `\Gamma_{d,S}` versus `\Gamma_{d,S}^r`:
   - the paper should distinguish the full cyclic locus from its rank-$r$ slice.

2. `\Gamma_{d,S}^r` versus `\mathcal C_{d,S}^r`:
   - these should not be conflated;
   - the conjecture should be about orbit spaces or equivariant images, not about equality of varieties.

3. Exact cyclic equations:
   - the placeholder formula in `tasks_file.md` must be replaced by the actual first-order equations derived from the gradient formula in the second-order DLN paper.

4. Acting group:
   - the instruction currently says “`G_d^\sigma` with `G_d` the stabilizer... into `G_d`”, which is not yet mathematically clean;
   - we need a precise definition of the subgroup and of its action on both spaces.

5. Rank and singular-direction data:
   - the statement should specify whether `S` is fixed once and for all, or whether the paper later unions over all `S` with `|S| = r`.

## Sequence of tasks needed to state the conjecture correctly

This is the actual execution order for the setup block.

### Task 1. Extract the exact notation to preserve from `paper_v1`

Goal:
- keep the notation dictionary from `paper_v1` whenever possible.

Deliverable:
- a clean list of symbols that the new paper will keep unchanged.

Main decisions:
- retain `\Omega`, `\mu`, `W^\ast`, `U_S`, `U_Q`, `P_S`, `P_Q`, `\Sigma_d^r`, `\mathcal C_{d,S}^r`;
- avoid introducing residual-space notation in the new setup.

### Task 2. Re-derive the first-order critical equations directly in weight space

Goal:
- rewrite the vanishing of the gradient with no residual-block parametrization.

Deliverable:
- a short note containing the exact equations `\nabla_{W_\ell}\mathcal L(W)=0` and their reformulation using `P_Q` / `U_Q`.

Reason:
- this is the mathematical foundation for defining `\Gamma_{d,S}` directly in weight space.

### Task 3. Define the three basic varieties cleanly in weight space

Goal:
- define `\Sigma_d^r`, `\Gamma_{d,S}`, and `\Gamma_{d,S}^r`.

Deliverable:
- a self-contained setup note with the three definitions and a few lines explaining their relation.

Reason:
- the first conjecture depends on these definitions being completely unambiguous.

### Task 4. Define the relevant symmetry group and its action

Goal:
- decide what the correct group is for the direct weight-space formulation.

Deliverable:
- a note that defines:
  - the ambient group;
  - the stabilizer subgroup attached to the data-dependent closing map;
  - the induced action on `\Gamma_{d,S}`, `\Gamma_{d,S}^r`, and `\mathcal C_{d,S}^r`.

Reason:
- the orbit-bijection conjecture cannot be stated before the group action is fixed.

### Task 5. Formulate the direct orbit-bijection conjecture

Goal:
- replace the old residual-space lifting statement by a direct weight-space statement.

Deliverable:
- a precise conjecture of the form:
  “the natural equivariant map induces a bijection between
  `\Gamma_{d,S}^r / G_d^\sigma`
  and
  `\mathcal C_{d,S}^r / G_d^\sigma`”
  or the corrected version once the acting group is finalized.

Reason:
- this is the central structural claim on which the later stratification program will rest.

### Task 6. State the stratification consequence

Goal:
- explain how a stratification of the cyclic locus gives a stratification of the critical locus.

Deliverable:
- a short proposition/conjecture template describing the induced stratification mechanism.

Reason:
- this closes the setup block and prepares the combinatorics section.

## Proposed file structure inside `work_files`

The purpose of this structure is to break the setup work into small, checkable files rather than one large draft.

```text
work_files/
  Making setup/
    setup_plan.md
    notation_to_keep.md
    gradient_equations_in_weight_space.tex
    direct_weight_space_varieties.tex
    symmetry_group_and_orbits.tex
    first_conjecture_draft.tex
    stratification_consequence.tex
```

Planning and task-organization documents should stay in `.md`. Mathematical writing, definitions, conjectures, equations, and draft statements intended for the paper should be written in `.tex`.

## Role of each proposed file

### `notation_to_keep.md`

Use this file to record which notation from `paper_v1` is kept unchanged and which symbols are renamed for the saddle-combinatorics paper.

### `gradient_equations_in_weight_space.tex`

Use this file to rewrite the gradient formulas and isolate the equations that will define the cyclic locus directly in weight space.

### `direct_weight_space_varieties.tex`

Use this file to define:
- `\Sigma_d^r`;
- `\Gamma_{d,S}`;
- `\Gamma_{d,S}^r`;
- `\mathcal C_{d,S}^r`;
and to record the minimal relations between them.

### `symmetry_group_and_orbits.tex`

Use this file to define the candidate symmetry group, the stabilizer of the closing map, and the orbit spaces that appear in the conjecture.

### `first_conjecture_draft.tex`

Use this file to write several versions of the first conjecture, starting from an informal statement and refining it until the variables, group action, and maps are fully precise.

### `stratification_consequence.tex`

Use this file to write the short “therefore” statement:
a stratification of the cyclic locus induces a stratification of the critical locus.

## Recommended execution order inside `work_files`

The files above should be completed in the following order:

1. `notation_to_keep.md`
2. `gradient_equations_in_weight_space.tex`
3. `direct_weight_space_varieties.tex`
4. `symmetry_group_and_orbits.tex`
5. `first_conjecture_draft.tex`
6. `stratification_consequence.tex`

## Minimal success criterion for this first goal

This first goal is complete once the following sentence can be written without ambiguity:

“Fix `r` and `S`. Let `\Gamma_{d,S}^r` be the rank-$r$ weight-space cyclic locus and let `\mathcal C_{d,S}^r` be the corresponding rank-$r$ critical locus. Then the natural equivariant correspondence between these two spaces induces a bijection on the relevant orbit spaces, hence any orbit stratification of `\Gamma_{d,S}^r` yields a stratification of `\mathcal C_{d,S}^r`.”

At that point the paper will have a correct setup for the first main conjecture.
