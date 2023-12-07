⊜(⊃↙(⋕↘+1) ⊚=@ .)≠@\n. &fras "7.txt"
Hands ←
Bids ←

Pat ← ≍⊏⍏.°⊚⊛:
OfAKind ← =/↥°⊚⊛:
Hand ← ⬚0⊢⇌+1⊚[⊃(OfAKind2|Pat1_2_2|OfAKind3|Pat2_3|OfAKind4|OfAKind5)]

LabelsI ← "23456789TJQKA"
PartI ← /+×+1⇡⧻.⊏⍏≡Hand∩⊏,:⍏.≡(⊗:LabelsI)

LabelsII ← "J23456789TQKA"
Numeric ← ⊗:LabelsII
BestHand ← /↥≡Hand +⊞× ⇡⧻LabelsII ⊃(=0)¤
PartII ← /+×+1⇡⧻.⊏⍏≡BestHand ∩⊏,:⊃⍏⊙∘≡(⊗:LabelsII)

PartI Hands Bids
PartII Hands Bids
