import Lake
open Lake DSL

package «saddlelean» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.28.0"

@[default_target]
lean_lib SaddleLean where

@[default_target]
lean_exe saddlelean where
  root := `Main
