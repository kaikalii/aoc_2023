Input ← ⊜∘ ≠@\n. &fras "3.txt"
# Part mask, num mask, input
Input ← |0.3 (⊃≠∘ ↧⊃(≥@0|≤@9|≠@.|∘) Input)

# Get contiguous 1d sections from a matrix
Sections ← ⊐/⊂ ≡(□⊜□)

PartI ← (|3
  /↥/↥≡≡(⬚0↻) -1⇡3_3 ¤¤ # Rotate each part mask to fill neighbors
  +⊃↧⋅∘                 # Add to number masks that neighbor parts
  ∩(Sections±) ⊃.⊙∘     # Get number mask groups and number strings
  ▽ ⊐∵/↥ =2             # Get numbers that have a part neighbor
  /+ ⊐∵parse            # Parse and sum
)
PartII ← (|3
  # Part indices, num indices, input as numbers
  ⊃∩⊚⋅(
    ⊃∘(
      Sections          # Get number strings
      ⊐/⊂ ⊐≡(□▽⊃⧻parse) # Copy each number as much as its digits
    )
    ⍜♭(⍜▽;.) # Replace chars with numbers
  )
  ⊃⊠(>0/↧≤1⌵-)⋅∘    # Get neighbors of each part
  ≡(□⊝≡⊡▽)⊓(∘|¤|¤¤) # Get lists of neighbors
  ▽>1∵⧻.            # Keep those with more than one neighbor
  /+∵(/×⊔)          # Get ratios and sum
)

PartI Input
PartII Input
