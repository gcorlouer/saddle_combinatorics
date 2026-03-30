# Notation To Keep

## Purpose

This file records the notation from `paper_v1.tex` that should be retained in the saddle-combinatorics project, together with a few conventions needed for the new direct weight-space setup.

The rule is:

- keep notation from `paper_v1.tex` whenever it is already clear and stable;
- avoid residual-space notation in the new setup block unless used only for comparison with the previous versions;
- make product conventions explicit once and reuse them everywhere.

## Notation kept from `paper_v1.tex`

The following notation should remain unchanged.

### Basic architecture

- `L`: depth of the deep linear network.
- `d = (d_0, \dots, d_L)`: dimension vector.
- `d_\ell`: width of layer `\ell`.
- `\Omega = \prod_{\ell=1}^L \mathrm{Mat}_{d_\ell \times d_{\ell-1}}(\mathbb R)`: parameter space.
- `\mathcal F \cong \mathrm{Mat}_{d_L \times d_0}(\mathbb R)`: function space.
- `\mu : \Omega \to \mathcal F`: product map, `\mu(W) = W_L \cdots W_1`.

### Data and teacher map

- `\Sigma_X = \mathbb E[XX^\top]`.
- `\Sigma_{YX} = \mathbb E[YX^\top]`.
- `W^\ast = \Sigma_{YX}\Sigma_X^{-1}`: teacher matrix.
- `r_{\max} = \operatorname{rk}(W^\ast)`.

### Singular-direction notation

- `S \subset \{1,\dots,r_{\max}\}` with `|S| = r`.
- `U = [U_S \; U_Q]`.
- `P_S = U_S U_S^\top`.
- `P_Q = U_Q U_Q^\top`.

### Geometric objects

- `\Sigma_d^r`: rank-`r` determinantal locus in parameter space.
- `\mathcal C_{d,S}^r`: rank-`r` critical locus associated with `S`.
- `G_d = \prod_{\ell=0}^L \mathrm{GL}(d_\ell)`: full base-change group.

## Notation that should not drive the new setup

The following notation may still be mentioned for comparison with the previous versions, but it should not be the organizing language of the new setup.

- residual space `\mathcal Z`;
- reduced dimension vector `d_r`;
- residual blocks `Z_\ell`;
- the lifting map `\iota : \mathcal Z \to \Omega`;
- the bundle-like description based on the residual slice.

These belong to the old formulation and should only appear later if we explicitly compare the new direct setup with the old one.

## Product conventions to fix once

The setup files should use the following convention for partial products:

- `W_{>\ell} := W_L \cdots W_{\ell+1}` in `\mathrm{Mat}_{d_L \times d_\ell}(\mathbb R)`;
- `W_{<\ell} := W_{\ell-1} \cdots W_1` in `\mathrm{Mat}_{d_{\ell-1} \times d_0}(\mathbb R)`.

With this convention,

- `\mu(W) = W_{>\ell} W_\ell W_{<\ell}`;
- `W_{>L} = I_{d_L}`;
- `W_{<1} = I_{d_0}`.

This convention should be preferred over informal phrases like “left product” and “right product”, which become ambiguous after transposing the gradient equations.

## New notation to introduce in the setup block

The direct weight-space formulation needs a few additional symbols.

### Data-dependent closing map

Use

- `W_0 = W_S := \Sigma_{XY} P_Q \in \mathrm{Mat}_{d_0 \times d_L}(\mathbb R)`.

This is the matrix that appears directly in the transpose-gradient form of the weight-space cyclic equations.

It is also useful to record the related map

- `\tau_S := W^{\ast\top} P_Q = \Sigma_X^{-1}\Sigma_{XY}P_Q`.

Then `W_0 = \Sigma_X \tau_S`.

### Weight-space cyclic loci

Use

- `\Gamma_{d,S}` for the locus cut out by the cyclic vanishing equations associated with `\sigma_S`;
- `\Gamma_{d,S}^r := \Sigma_d^r \cap \Gamma_{d,S}` for the rank-`r` part.

In the new convention, the cyclic equations are written from the transpose of the gradient:
\[
(\nabla_{W_\ell}\mathcal L(W))^\top = 0
\quad\Longleftrightarrow\quad
W_{<\ell} W_0 W_{>\ell}=0.
\]

## Preferred naming conventions

- Say “determinantal locus” or “rank-`r` determinantal variety” for `\Sigma_d^r`.
- Say “weight-space cyclic locus” for `\Gamma_{d,S}`.
- Say “rank-`r` weight-space cyclic locus” for `\Gamma_{d,S}^r`.
- Say “critical locus” only for `\mathcal C_{d,S}^r`, not for `\Gamma_{d,S}^r`.

## Style rules for later setup files

- Mathematical definitions and conjectures should be written in `.tex` files.
- Planning and bookkeeping stay in `.md`.
- Keep the notation table in the eventual paper close to `paper_v1.tex`.
- If a symbol from `paper_v0.tex` conflicts with `paper_v1.tex`, prefer the `paper_v1.tex` version unless there is a compelling reason to change it.
