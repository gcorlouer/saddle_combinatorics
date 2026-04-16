import Mathlib.LinearAlgebra.Matrix.Rank

namespace SaddleLean

open Matrix

variable {K : Type*} [Field K]
variable {d0 dL : Type*} [Fintype d0] [DecidableEq d0]
variable [Fintype dL] [DecidableEq dL]

structure DistinguishedRankData (K : Type*) (d0 dL : Type*) [Field K]
    [Fintype d0] [DecidableEq d0] [Fintype dL] [DecidableEq dL] where
  closing : Matrix dL d0 K
  product : Matrix dL d0 K

inductive DistinguishedCoordinate
  | closing
  | endToEnd
  deriving DecidableEq, Repr

noncomputable def rho (W : DistinguishedRankData K d0 dL) : DistinguishedCoordinate → Nat
  | .closing => Matrix.rank W.closing
  | .endToEnd => Matrix.rank W.product

structure RankSlice (W : DistinguishedRankData K d0 dL) (r : Nat) : Prop where
  product_rank : Matrix.rank W.product = r

theorem fixed_arrow_constraint (W : DistinguishedRankData K d0 dL) :
    rho W .closing = Matrix.rank W.closing := by
  rfl

theorem rank_r_constraint (W : DistinguishedRankData K d0 dL) {r : Nat}
    (h : RankSlice W r) : rho W .endToEnd = r := by
  exact h.product_rank

theorem fixed_arrow_and_rank_constraints (W : DistinguishedRankData K d0 dL)
    {r : Nat} (h : RankSlice W r) :
    rho W .closing = Matrix.rank W.closing ∧ rho W .endToEnd = r := by
  constructor
  · exact fixed_arrow_constraint W
  · exact rank_r_constraint W h

end SaddleLean
