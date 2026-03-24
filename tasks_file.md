# Some context
The folder saddle_combinatorics is the main folder for this project. 

The bulk of the work on which is project rely on is in paper_v0.tex and the main notation to use is described in paper_v1.tex. In this work we will reformulate paper_v0 to describe the combinatorics of saddle points. Therefore the previous versions of this work are paper_v0 and paper_v1. They are in the subfolder named previous_version.

The main papers that are useful for background are in the paper_background folder. 

The overall goal of this work will be to write a paper on the combinatorics of the saddles obtain from a stratification of the critical loci of saddle points of rank r. This is the same goal as paper_v0.tex (without the codimension computation formula) except that we are going to use a more straightforward approach that does not require the suspicious lifting of the cyclic variety to the critical loci.

When generating a new task you will create a new file in the work_file folder. You can generate subfolders that should roughly correspond to subsections of the paper. 

For more information about what a good research process look like you can consult the vibe_physics_the_ai_grad_student_anthropic.pdf paper. 
# Tasks
First we will generate some conjectures that we will prove. At a high level there are going to be three main results in the paper. 

## Setup folder

The setup is similar to the one described in the background section of paper_v1.tex except that we will not work with the residual space. Instead we will work on the weight space directly. 

The key change is that we will define the following objects:

$$\Sigma_r $$ the determinantal variety of parameters whose product is a student of rank r
$$\Gamma_d,S$$ the cyclic variety of parameters satisfying the set of cyclic vanishing equations from the zero of the gradient of loss (which should look something like $$W_{<l}\Sigma_x^-1\Sigma_XYW_>l = 0$$ for all l) 

And finally the variety $$\Gamma^r_{d,s}$$ which is the intersection of $$\Sigma_r$$ with $$\Gamma_d,S$$

The first conjecture is that:
A stratification of $$\Gamma_d,S$$ gives a stratification of $$C^d_{r,s}$$ which is only defined in terms of weight matrix mapping to $$W_S:=P_Q\Sigma_{XY}\Sigma_X^-1$$ and the set of equations from gradient of loss being 0 and not related to the space of residuals as was done in paper_v0.tex.

We have to show that the orbits of $$\Gamma^r_{d,s}$$ and $$C^d_{r,s}$$ under the group $$G_d^\sigma$$ with G_d is the stabilizer of the map P_Q\Sigma_{XY}\Sigma_X^-1 into G_d (product of GL(d_l) for all layers) are in bijections (this replaces the lifting statement from paper_v1 and v0). This will then allow to stratify $$\Gamma^r_{d,s}$$ to stratify the critical loci.


Instruction: Your first goal is to look at paper_v0 and read the following and make it into a clear sequence of tasks that should result in stating the conjecture correctly with the proper setup introduced. In particular you will suggest a structure of files in the work_files directory that will be suitable for you to decompose this complex goal into manageables tasks that you will complete in these separate files. You will write this plan in the Making setup folder in work_files of this file. 

# Making setup folder in work_files

## First conjecture

This block concerns Conjecture A and Conjecture B in the direct weight-space setup using the transpose-gradient convention
\[
(\nabla_{W_\ell}\mathcal L(W))^\top=0
\qquad\Longleftrightarrow\qquad
W_{<\ell}W_0W_{>\ell}=0,
\]
with
\[
W_0=W_S=\Sigma_{XY}P_Q.
\]

The workflow for this block is validate-then-prove. In particular, we do not assume at the start that the current formulation of Conjecture B is well-posed. We first check the group action, the orbit notation, and the stability of the critical locus, and only then do we commit to the final statement to prove.

### Main objective

The goal is to prove:

- Conjecture A: every orbit of the rank-$r$ cyclic locus meets the critical locus;
- Conjecture B: the resulting orbit correspondence gives the correct quotient-level bijection.

### Required decomposition

The work for the first conjecture is decomposed into the following files in `work_files/First conjecture`:

- `proof_plan.md`
- `task_0_validate_statement.tex`
- `task_1_group_action_lemmas.tex`
- `task_2_endpoint_reduction.tex`
- `task_3_invariants_of_mu.tex`
- `task_4_normalization_theorem.tex`
- `task_5_proof_of_conjecture_A.tex`
- `task_6_corrected_statement_of_B.tex`
- `task_7_uniqueness_of_critical_representative.tex`
- `task_8_proof_of_conjecture_B.tex`
- `examples_and_counterchecks.tex`

### Execution order

1. Validate whether Conjecture B is well-defined under the current group action.
2. Prove the basic equivariance facts for `\Gamma_{d,S}` and `\Gamma_{d,S}^r`.
3. Reduce Conjecture A to an endpoint normalization problem for `\mu(W)`.
4. Extract invariants of `\mu(W)` implied by the cyclic equations.
5. Compare these invariants to the model product `P_SW^\ast`.
6. Prove the normalization theorem for the end-to-end map.
7. Deduce Conjecture A.
8. Finalize the correct formulation of Conjecture B.
9. Prove uniqueness of the critical representative up to the correct stabilizer.
10. Deduce Conjecture B.
11. Throughout the process, maintain explicit low-dimensional examples and edge-case checks.

### Acceptance criteria

The first-conjecture block is complete only when:

- the final statement of Conjecture B is mathematically well-posed;
- the proof of Conjecture A is reduced to and completed by an explicit normalization theorem for `\mu(W)`;
- the proof of Conjecture B is reduced to existence plus uniqueness of critical representatives;
- the examples for `L=2` and `L=3` agree with the abstract statement;
- the use of the assumptions on rank, singular values, and bottlenecks is recorded explicitly.


# PLan first conjecture

## First conjecture

### Summary

Goal: produce a proof plan for Conjecture A and Conjecture B in the current direct weight-space setup, using the transpose-gradient convention
\[
(\nabla_{W_\ell}\mathcal L(W))^\top=0
\qquad\Longleftrightarrow\qquad
W_{<\ell}W_0W_{>\ell}=0,
\]
with
\[
W_0=W_S=\Sigma_{XY}P_Q.
\]

Default chosen: use a **validate-then-prove** workflow. In particular, do **not** assume the current formulation of Conjecture B is already well-posed. First check the group action and quotient notation, then either prove the current statement or replace it by the corrected slice/orbit statement and prove that instead.

Working style: optimize for **research workflow**, meaning short proof experiments, sanity checks, examples, and intermediate lemmas before full paper writeup.

### Important statement check before proving anything

Task 0. Check whether the current Conjecture B is even well-defined.

Success criterion:
- Determine whether \(\mathcal C_{d,S}^r\) is stable under \(G_d^{W_0}\).
- If yes, keep the current quotient notation.
- If no, replace Conjecture B by the corrected statement:
  \[
  \Gamma_{d,S}^r/G_d^{W_0}\cong \mathcal C_{d,S}^r/H_{S},
  \]
  where
  \[
  H_S:=\operatorname{Stab}_{G_d^{W_0}}(P_SW^\ast),
  \]
  or equivalently:
  every \(G_d^{W_0}\)-orbit in \(\Gamma_{d,S}^r\) meets \(\mathcal C_{d,S}^r\) in exactly one \(H_S\)-orbit.

Reason:
- The current proof route depends completely on whether the critical locus is actually stable under the acting group.

### Proof plan for Conjecture A

Task 1. Prove the basic equivariance facts.

Show:
- \(\Gamma_{d,S}\) is stable under \(G_d^{W_0}\).
- \(\Gamma_{d,S}^r\) is stable under \(G_d^{W_0}\).
- \(G_{\mathrm{hid}}\) preserves \(\mu(W)\), so hidden gauge alone cannot prove Conjecture A.

Deliverable:
- one short note collecting the action formulas for \(G_d\), \(G_{\mathrm{hid}}\), and \(G_d^{W_0}\);
- one lemma proving stability of \(\Gamma_{d,S}\) and \(\Gamma_{d,S}^r\).

Task 2. Isolate the true content of Conjecture A at the level of the end-to-end map.

Rewrite Conjecture A as:
- for every \(W\in \Gamma_{d,S}^r\), the matrix \(\mu(W)\) lies in the \(G_d^{W_0}\)-endpoint orbit of \(P_SW^\ast\).

More precisely:
- identify the endpoint group
  \[
  K_S:=\{(g_0,g_L)\in \mathrm{GL}(d_0)\times \mathrm{GL}(d_L): g_0W_0g_L^{-1}=W_0\},
  \]
- show that the question reduces to whether \(\mu(W)\) is in the \(K_S\)-orbit of \(P_SW^\ast\).

Deliverable:
- one reduction lemma: Conjecture A is equivalent to an endpoint normalization statement for \(\mu(W)\).

Task 3. Extract all constraints on \(\mu(W)\) forced by the cyclic equations.

From
\[
W_{<\ell}W_0W_{>\ell}=0,
\]
derive orbit-level invariants of \(\mu(W)\), such as:
- image/kernel constraints involving \(W_0\);
- rank constraints already implied by \(W\in\Sigma_d^r\);
- any factorization or annihilation conditions that depend only on \(\mu(W)\).

Deliverable:
- a list of necessary conditions on \(M=\mu(W)\) for membership in \(\Gamma_{d,S}^r\);
- a lemma separating “conditions on the full tuple \(W\)” from “conditions visible on the product \(M\)”.

Task 4. Compare those invariants with the model critical product \(P_SW^\ast\).

Goal:
- prove that the invariants from Task 3 characterize exactly the \(K_S\)-orbit of \(P_SW^\ast\), or at least force every admissible \(M\) into that orbit.

This is the core mathematical step.

Possible substeps:
- show \(P_SW^\ast\) satisfies the same invariants;
- show rank \(r\) plus the \(W_0\)-compatibility conditions determine the endpoint orbit;
- if needed, rewrite the problem in terms of image and kernel flags adapted to \(S\) and \(Q\).

Deliverable:
- one “normalization theorem” for the end-to-end map.

Task 5. Lift endpoint normalization back to the full parameter tuple.

Once Task 4 is proved:
- construct \(g\in G_d^{W_0}\) whose endpoint pair sends \(\mu(W)\) to \(P_SW^\ast\);
- verify that \(g\cdot W\in \Gamma_{d,S}^r\);
- conclude \(g\cdot W\in\mathcal C_{d,S}^r\).

Deliverable:
- a short proof of Conjecture A from the endpoint normalization theorem.

### Proof plan for Conjecture B

Task 6. Decide the final form of Conjecture B.

Case 1:
- if \(\mathcal C_{d,S}^r\) is stable under \(G_d^{W_0}\), keep the current statement.

Case 2:
- if not, replace it by the corrected slice statement
  \[
  \Gamma_{d,S}^r/G_d^{W_0}\cong \mathcal C_{d,S}^r/H_S.
  \]

Deliverable:
- a final cleaned statement of Conjecture B before proving it.

Task 7. Prove existence of orbit representatives in the critical locus.

This is exactly Conjecture A, so once A is proved:
- every \(G_d^{W_0}\)-orbit in \(\Gamma_{d,S}^r\) meets \(\mathcal C_{d,S}^r\).

Deliverable:
- a corollary from Conjecture A.

Task 8. Prove uniqueness of the representative up to the correct stabilizer.

Show:
- if \(W,W'\in \mathcal C_{d,S}^r\) lie in the same \(G_d^{W_0}\)-orbit inside \(\Gamma_{d,S}^r\), then the orbit element relating them must preserve the distinguished product \(P_SW^\ast\);
- therefore it belongs to \(H_S\), and the intersection of a \(G_d^{W_0}\)-orbit with \(\mathcal C_{d,S}^r\) is exactly one \(H_S\)-orbit.

Deliverable:
- a uniqueness lemma for the critical representative.

Task 9. Conclude the orbit-bijection theorem.

From Tasks 7 and 8:
- derive the corrected quotient bijection;
- if the original formulation survives Task 0, derive the original Conjecture B instead.

Deliverable:
- final theorem statement used later for stratification.

### Small research tasks that must happen in parallel

Task 10. Work out explicit toy examples.

Required examples:
- \(L=2\) and \(L=3\);
- one low-rank saddle case \(r<d_L\);
- one maximal-rank case \(r=d_L\).

Purpose:
- test the cyclic equations,
- test the \(G_d^{W_0}\)-action,
- detect counterexamples early.

Task 11. Check edge cases.

Required checks:
- \(r=0\),
- \(r=d_L\),
- distinct singular values assumption,
- no-bottleneck assumption.

Purpose:
- know exactly where the proof uses each assumption.

Task 12. Compare against the old residual-space proof pattern.

For each step above, record whether it is replacing one of the following:
- gauge-fixed slice,
- orbit saturation,
- bundle/slice uniqueness,
- principal slice locus.

Purpose:
- preserve useful old structure without reintroducing the residual parametrization.

### Suggested work decomposition in `work_files`

Create a new subfolder for this proof program and split the work into small files.

Suggested structure:
- `work_files/First conjecture/proof_plan.md`
- `work_files/First conjecture/task_0_validate_statement.tex`
- `work_files/First conjecture/task_1_group_action_lemmas.tex`
- `work_files/First conjecture/task_2_endpoint_reduction.tex`
- `work_files/First conjecture/task_3_invariants_of_mu.tex`
- `work_files/First conjecture/task_4_normalization_theorem.tex`
- `work_files/First conjecture/task_5_proof_of_conjecture_A.tex`
- `work_files/First conjecture/task_6_corrected_statement_of_B.tex`
- `work_files/First conjecture/task_7_uniqueness_of_critical_representative.tex`
- `work_files/First conjecture/task_8_proof_of_conjecture_B.tex`
- `work_files/First conjecture/examples_and_counterchecks.tex`

### Acceptance checks

The first-conjecture block is complete only when all of the following are true:
- the final statement of Conjecture B is mathematically well-posed;
- the proof of Conjecture A is reduced to, and completed by, an explicit endpoint normalization theorem;
- the proof of Conjecture B is reduced to existence plus uniqueness of critical representatives;
- the \(L=2\) and \(L=3\) toy examples agree with the abstract statement;
- the plan records exactly where the assumptions on rank, singular values, and bottlenecks are used.

### Assumptions and defaults used

- Use the current transpose-gradient convention:
  \[
  (\nabla_{W_\ell}\mathcal L(W))^\top=0.
  \]
- Use the current closing map:
  \[
  W_0=W_S=\Sigma_{XY}P_Q.
  \]
- Do not assume Conjecture B is correctly formulated until Task 0 is completed.
- Optimize for research progress first, paper polish second.
