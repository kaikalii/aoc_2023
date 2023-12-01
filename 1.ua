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

Digits ← ∵⍣parse⋅⋅0
Names ← ⬚0⊢⍉ ≡⊚ ⍉ ≡⬚@.⌕ Nums¤
Calc ← +⊃(×10⊢|⊢⇌) ▽≠0.
PartOne ← /+⊐≡(Calc Digits)
PartTwo ← /+⊐≡(Calc ⬚0↥ ⊃Names Digits)

PartOne Input
PartTwo Input
