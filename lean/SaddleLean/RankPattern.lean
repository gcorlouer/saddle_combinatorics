import SaddleLean.ForwardInversion

namespace SaddleLean

def forwardRank (N : Nat) (m : Nat → Nat → Int) : Nat → Nat → Int :=
  rhoFrom N m

def prevBoundary (ρ : Nat → Nat → Int) (a b : Nat) : Int :=
  match a with
  | 0 => 0
  | a + 1 => ρ a b

def inverseMultiplicity (ρ : Nat → Nat → Int) (a b : Nat) : Int :=
  (ρ a b - prevBoundary ρ a b) - (ρ a (b + 1) - prevBoundary ρ a (b + 1))

theorem forward_formula (N : Nat) (m : Nat → Nat → Int) (a b : Nat) :
    forwardRank N m a b = natSum (a + 1) (fun u => tailSum N (fun v => m u v) b) := by
  rfl

theorem inverseMultiplicity_forwardRank (N : Nat) (m : Nat → Nat → Int) {a b : Nat}
    (ha : a ≤ N) (hb : b ≤ N) :
    inverseMultiplicity (forwardRank N m) a b = m a b := by
  simpa [forwardRank, inverseMultiplicity, prevBoundary, rankDiff, rhoPrev] using
    inversion_formula N m (a := a) (b := b) ha hb

end SaddleLean
