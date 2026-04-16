import SaddleLean.Basic

namespace SaddleLean

theorem natSum_sub (n : Nat) (f g : Nat → Int) :
    natSum n (fun k => f k - g k) = natSum n f - natSum n g := by
  induction n with
  | zero =>
      simp [natSum]
  | succ n ih =>
      simp [natSum, ih]
      omega

theorem natSum_last_sub (n : Nat) (f : Nat → Int) :
    natSum (n + 1) f - natSum n f = f n := by
  simp [natSum]
  omega

theorem rho_row_difference (N : Nat) (m : Nat → Nat → Int) (a b : Nat) :
    rhoFrom N m a b - rhoPrev N m a b = tailSum N (fun v => m a v) b := by
  cases a with
  | zero =>
      simp [rhoFrom, rhoPrev, tailSum, natSum]
  | succ a =>
      simpa [rhoFrom, rhoPrev] using
        natSum_last_sub (a + 1) (fun u => tailSum N (fun v => m u v) b)

theorem tail_step_pointwise (f : Nat → Int) (b v : Nat) :
    (if b ≤ v then f v else 0) - (if b + 1 ≤ v then f v else 0) =
      if v = b then f b else 0 := by
  by_cases hv : v = b
  · subst v
    have h₂ : ¬ b + 1 ≤ b := by
      omega
    simp [h₂]
  · by_cases h₁ : b ≤ v
    · have h₂ : b + 1 ≤ v := by
        omega
      simp [h₁, h₂, hv]
    · have h₂ : ¬ b + 1 ≤ v := by
        omega
      simp [h₁, h₂, hv]

theorem tail_difference_as_singleton (N : Nat) (f : Nat → Int) (b : Nat) :
    tailSum N f b - tailSum N f (b + 1) =
      natSum (N + 1) (fun v => if v = b then f b else 0) := by
  have hsub :=
    natSum_sub (N + 1)
      (fun v => if b ≤ v then f v else 0)
      (fun v => if b + 1 ≤ v then f v else 0)
  have hfun :
      (fun v => (if b ≤ v then f v else 0) - (if b + 1 ≤ v then f v else 0)) =
        (fun v => if v = b then f b else 0) := by
    funext v
    simpa using tail_step_pointwise f b v
  calc
    tailSum N f b - tailSum N f (b + 1)
      = natSum (N + 1)
          (fun v => (if b ≤ v then f v else 0) - (if b + 1 ≤ v then f v else 0)) := by
            simpa [tailSum] using hsub.symm
    _ = natSum (N + 1) (fun v => if v = b then f b else 0) := by
          simp [hfun]

theorem natSum_singleton_lt (n b : Nat) (x : Int) :
    natSum n (fun v => if v = b then x else 0) = if b < n then x else 0 := by
  induction n with
  | zero =>
      simp [natSum]
  | succ n ih =>
      by_cases h : b < n
      · have hbne : ¬ b = n := by
          omega
        have hbne' : ¬ n = b := by
          omega
        have hlt : b < n + 1 := by
          omega
        simp [natSum, ih, h, hbne', hlt]
      · by_cases hb : b = n
        · subst b
          have hfalse : ¬ n < n := by
            omega
          have htrue : n < n + 1 := by
            omega
          simp [natSum, ih, hfalse, htrue]
        · have hfalse : ¬ b < n + 1 := by
            omega
          have hbne' : ¬ n = b := by
            omega
          simp [natSum, ih, h, hfalse, hbne']

theorem natSum_singleton (N b : Nat) (x : Int) :
    natSum (N + 1) (fun v => if v = b then x else 0) = if b ≤ N then x else 0 := by
  simpa [Nat.lt_succ_iff] using natSum_singleton_lt (N + 1) b x

theorem tail_difference (N : Nat) (f : Nat → Int) {b : Nat} (hb : b ≤ N) :
    tailSum N f b - tailSum N f (b + 1) = f b := by
  rw [tail_difference_as_singleton]
  simp [natSum_singleton, hb]

theorem inversion_formula (N : Nat) (m : Nat → Nat → Int) {a b : Nat}
    (_ha : a ≤ N) (hb : b ≤ N) :
    rankDiff N m a b = m a b := by
  unfold rankDiff
  rw [rho_row_difference, rho_row_difference]
  exact tail_difference N (fun v => m a v) hb

end SaddleLean
