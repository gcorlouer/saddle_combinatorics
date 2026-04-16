import Mathlib.Data.Nat.Basic

namespace SaddleLean

structure Interval (L : Nat) where
  left : Nat
  right : Nat
  left_le_right : left ≤ right
  right_le_left_add : right ≤ left + L
  not_forbidden : left = 0 ∨ right < left + L

namespace Interval

variable {L : Nat}

def ContainedIn (I J : Interval L) : Prop :=
  J.left ≤ I.left ∧ I.right ≤ J.right

instance : LE (Interval L) where
  le := ContainedIn

theorem le_def (I J : Interval L) :
    I ≤ J ↔ J.left ≤ I.left ∧ I.right ≤ J.right := by
  rfl

theorem refl (I : Interval L) : I ≤ I := by
  exact ⟨le_rfl, le_rfl⟩

theorem trans {I J K : Interval L} (hIJ : I ≤ J) (hJK : J ≤ K) : I ≤ K := by
  rcases hIJ with ⟨h1, h2⟩
  rcases hJK with ⟨h3, h4⟩
  exact ⟨le_trans h3 h1, le_trans h2 h4⟩

theorem left_le (I : Interval L) : I.left ≤ I.right := I.left_le_right

theorem length_le (I : Interval L) : I.right ≤ I.left + L := I.right_le_left_add

end Interval

end SaddleLean
