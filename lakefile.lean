import Lake
open Lake DSL

package "CS2" where
  -- add package configuration options here

lean_lib «CS2» where
  -- add library configuration options here

@[default_target]
lean_exe "cs2" where
  root := `Main
