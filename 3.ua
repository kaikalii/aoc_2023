Input ← ⊜∘ ≠@\n. &fras "3.txt"
Digits ← ↧⊃(≥@0|≤@9)

Sections ← ⊐/⊂ ≡(□⊜□) # Get contiguous 1d sections from a matrix

PartI ← (
  ⊃≠∘ ⊃Digits(≠@.).     # Part mask, num mask, input
  /↥/↥≡≡(⬚0↻) -1⇡3_3 ¤¤ # Rotate each part mask to fill neighbors
  +⊃↧⋅∘                 # Add to number masks that neighbor parts
  ∩(Sections±) ⊃.⊙∘     # Get number mask groups and number strings
  ▽ ⊐∵/↥ =2             # Get numbers that have a part neighbor
  /+ ⊐∵parse            # Parse and sum
)
PartII ← (
  ⊃(=@*)Digits. # Part mask, num mask, input
  # Part indices, num indices, input as numbers
  ⊃∩⊚⋅(
    ⊃∘(⊐/⊂ ⊐≡(□▽⊃⧻parse) Sections) # Copy numbers as much as their digits
    ⍜♭(⍜▽;.)                       # Replace chars with numbers
  )
  ⊃⊠(>0/↧≤1⌵-)⋅∘    # Get neighbors of each part
  ≡(□⊝≡⊡▽)⊓(∘|¤|¤¤) # Get lists of neighbors
  ▽=2∵⧻.            # Keep those with more than one neighbor
  /+∵(/×⊔)          # Get ratios and sum
)

PartI Input
PartII Input
