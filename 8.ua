$ LR
$
$ 11A = (11B, XXX)
$ 11B = (XXX, 11Z)
$ 11Z = (11B, XXX)
$ 22A = (22B, XXX)
$ 22B = (22C, 22C)
$ 22C = (22Z, 22Z)
$ 22Z = (22B, 22B)
$ XXX = (XXX, XXX)
Input ←
Chars ← ⊂+@0⇡10+@A⇡26
# Returns turns, nodes, branches
Parse ← ⊃↙(≡⊃⊢(↘1)⊜(⊜∘∊:Chars.)≠@\n.↘2↘) ⊢⊚=@\n.
Step! ← (
  ⊃(⊗⊙⋅∘)⋅⊙∘      # Find branches
  ⊃(⊏⊙⋅⋅∘)⋅⊙⊙∘    # Select branches
  ⊃(^2=@R⊢:|↻1⋅∘) # Select next branch and rotate
  ⊙⊙⊙⊙(+1)        # Increment count
)
Done ← ¬/↧=@Z⊢⇌⍉
Args ← ⊃⋅(▽/↥⍉=@A.)⊙⊙⊙0
Part!! ← ∩∩; ⍢Step!^2Done ^1⊃⋅(▽/↥⍉=@A.)⊙⊙⊙0
PartI ← Part!!⊡⊢
PartII ← Part!!≡⊡∘

PartI Parse Input
PartII Parse Input
