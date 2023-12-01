Input ← ⊜□≠@\n. &fras "1.txt"

Nums ← {"zero" "one" "two" "three" "four"
        "five" "six" "seven" "eight""nine"}

Digits ← ∵⍣parse⋅⋅0
Names ← (
  ≡⌕Nums¤   # Find matching words
  ⬚0⊢⍉⬚0≡⊚⍉ # Get digits where they match
)
Calc ← +⊃(×10⊢|⊢⇌) ▽≠0.
PartOne ← /+⊐≡(Calc Digits)
PartTwo ← /+⊐≡(Calc ⬚0↥ ⊃Names Digits)

PartOne Input
PartTwo Input
