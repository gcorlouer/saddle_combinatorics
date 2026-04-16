import SaddleLean.Basic

namespace SaddleLean

theorem critical_shift_identity (d0 dL r : Int) :
    d0 * dL - (dL - r) * (d0 + r) = r * (d0 - dL + r) := by
  simp [Int.sub_eq_add_neg, Int.mul_add, Int.mul_neg, Int.add_assoc,
    Int.add_left_comm, Int.add_comm, Int.mul_comm]
  omega

theorem hs_dimension_identity (S : Int) (d0 dL r : Int) :
    (S - (dL - r) * (d0 + r)) - r * (d0 - dL + r) = S - d0 * dL := by
  simp [Int.sub_eq_add_neg, Int.mul_add, Int.mul_neg, Int.add_assoc,
    Int.add_left_comm, Int.add_comm, Int.mul_comm]
  omega

end SaddleLean
