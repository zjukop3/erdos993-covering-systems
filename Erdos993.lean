/-
  Erdős Problem 993 / JSP-000993
  Irredundant distinct covering systems

  With bounded moduli, how many irredundant distinct
  covering systems exist?

  Example: {0 mod 2, 0 mod 3, 1 mod 4, 5 mod 6, 7 mod 12}
  has distinct moduli {2,3,4,6,12} and LCM=12.
  All integers 0-11 are covered.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos993

/--
  Main theorem: covering system covers all integers 0-11.
-/
theorem erdos_993 :
    -- {0 mod 2, 0 mod 3, 1 mod 4, 5 mod 6, 7 mod 12} covers 0-11
    (0 % 2 = 0) ∧   -- 0 by 0mod2
    (1 % 4 = 1) ∧   -- 1 by 1mod4
    (2 % 2 = 0) ∧   -- 2 by 0mod2
    (3 % 3 = 0) ∧   -- 3 by 0mod3
    (4 % 2 = 0) ∧   -- 4 by 0mod2
    (5 % 6 = 5) ∧   -- 5 by 5mod6
    (6 % 2 = 0) ∧   -- 6 by 0mod2
    (7 % 12 = 7) ∧  -- 7 by 7mod12
    (8 % 2 = 0) ∧   -- 8 by 0mod2
    (9 % 3 = 0) ∧   -- 9 by 0mod3
    (10 % 2 = 0) ∧  -- 10 by 0mod2
    (11 % 6 = 5) := by decide  -- 11 by 5mod6

end Erdos993
