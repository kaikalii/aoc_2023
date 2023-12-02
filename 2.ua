Colors ← {" red" " green" " blue"}
Cube ← (
  ⊢⇌⊚=@ .                     # Find last space
  ⊟⊃(parse▽≠@ .↙|⊗:Colors □↘) # Parse count and color
)
Game ← (
  ↘+2 ⊚⌕@:.         # Remove game id
  ⊜(□⊜Cube≠@,.)≠@;. # Parse cubes
  ⊐/⊂               # Combine 
  ⊕/↥ ⍘⊟⇌⍉          # Get maxes
)
Counts ← ⊜Game ≠@\n. &fras "2.txt"

/++1⊚¬≡(/↥>)¤12_13_14 Counts # Part 1
/+≡/× Counts                 # Part 2
