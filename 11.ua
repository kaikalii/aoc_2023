Input ← &fras "11.txt"
Parse ← =@#⊜∘≠@\n.
UniquePairs ← ▽¬≡/≍.⊝≡(⊏⍏.)°¤⊠⊟.⊚
ExpHoriz ← ▽ ⊃(+1×¬≡/↥⊙(-1))∘:
ExpVert ← ⍜⊙⍉ExpHoriz
SumExpand ← (
  ⊙Parse
  ⊃(ExpVert|ExpHoriz) # Expand separately
  ∩(°⍉UniquePairs)    # Get unique pairs
  +∩(/+⌵/-⍉⊢) ⇌       # Sum distances
)
PartI ← SumExpand 2
PartII ← SumExpand 1e6
PartI Input
PartII Input
