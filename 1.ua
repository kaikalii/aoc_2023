Input ← ⊜□≠@\n. &fras "1.txt"

Nums ← {"zero"
        "one"
        "two"
        "three"
        "four"
        "five"
        "six"
        "seven"
        "eight"
        "nine"}

Digits ← ↧⊃(≥@0|≤@9)
Names ← ⬚0⊢⍉ ⬚0≡⊚ ⍉≡⬚@ ⌕Nums¤
Calc ← +⊃(×10⊢|⊢⇌) ▽≠0.
PartOne ← /+⊐≡(Calc Digits)
PartTwo ← /+⊐≡(Calc ⬚0↥ ⊃Names(∵⍣parse⋅⋅0))

PartOne Input
PartTwo Input
