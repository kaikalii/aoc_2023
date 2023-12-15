Input ← &fras "15.txt"
Hash ← ∧(◿256×17+-@\0)⊙0
PartI ← /+⊜Hash≠@,.
# Parse into labels, operation, and focal lengths
Ops ← ⊜(
  regex"(.*)([-=])(.*)"
  °{⊙⊙∘}↘1⊢
  ⊓(□|=@=⊢|⍣⋕⋅⋅0)
)≠@,.
Step ← (|4
  ⊃(:⊙⋅∘)(⊂⋅⊙⋅∘) Hash°□. # Hash and prepare
  (
    ⍜(°□⊡|▽♭≡(¬≍∩⊢)⊙¤,:)⊙: # Remove lens
  | ⍜(°□⊡)(
      ⊃(⊢⊙≡⊢)⊙∘ :
      (⊂:;;|⍜⊡;⊙:⊗)∊,,
    )⊙: # Add lens
  )
)
PartII ← (
  Ops
  ∧Step ⊙⊙⊙(↯256□↯0_2 □0)    # Run
  ≡⍜°□(××+1⇡⧻. ∵°□⊢⇌⍉):+1⇡⧻. # Calculate focusing power
  /+≡(/+/+°□)                # Sum
)
PartI Input
PartII Input
