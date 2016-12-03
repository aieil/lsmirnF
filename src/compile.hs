module Compile (compMain) where



  --maintain a symbol table!
  --a variable is a pair of type and id.
  type Var = (String, Integer)
  -- elements:
  --declarations
  --assignments
  --control blocks

  -- takes a complete C  file and returns a complete VHDL file as strings.
  -- compMain :: String -> String
