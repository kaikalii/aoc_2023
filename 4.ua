Input ← &fras "4.txt"

Scores ← /+∊↘1∩(≡(parse⊢)regex"(\\d+)") ⍘⊟⊜□≠@|.

PartI ← /+⊜(/+ⁿ:2▽≥0.-1Scores) ≠@\n.

PartII ← (
  ⊜Scores ≠@\n. # Get scores
  ⊃⇡(+1⊚)⧻.     # Index and state
  ⬚0∧(
    ⊃∘(
      ⊃(>⇌⊃⇡↙⊙⋅∘)⋅⊙∘ # Mask of constributing previous
      /+⊃▽⋅∘         # Sum of previous
    )
    +⊂↯:0 # Add to state
  )
  /+⊙; # Sum
)

PartI Input
PartII Input
