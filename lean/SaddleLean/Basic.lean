import Std

namespace SaddleLean

def natSum : Nat → (Nat → Int) → Int
  | 0, _ => 0
  | n + 1, f => natSum n f + f n

def tailSum (N : Nat) (f : Nat → Int) (b : Nat) : Int :=
  natSum (N + 1) (fun v => if b ≤ v then f v else 0)

def rhoFrom (N : Nat) (m : Nat → Nat → Int) (a b : Nat) : Int :=
  natSum (a + 1) (fun u => tailSum N (fun v => m u v) b)

def rhoPrev (N : Nat) (m : Nat → Nat → Int) (a b : Nat) : Int :=
  match a with
  | 0 => 0
  | a + 1 => rhoFrom N m a b

def rankDiff (N : Nat) (m : Nat → Nat → Int) (a b : Nat) : Int :=
  (rhoFrom N m a b - rhoPrev N m a b) -
    (rhoFrom N m a (b + 1) - rhoPrev N m a (b + 1))

end SaddleLean
