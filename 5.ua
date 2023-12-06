⊜□≠@\n. &fras $ 5.txt
⊜parse≠@ .↘7⊔⊢.
Seeds ←
⊜(□≡(⊜parse≠@ .⊔))∵(↧⊃(≥@0|≤@9)⊢⊔).
Tables ←
StageI ← (
  ⊙.
  ⊠(
    ⍘[⊙⊙∘]
    ⊃(⋅∘|+⋅⊙∘|-:⊙∘)
    ×↧⊃(≥⊙⋅⋅∘|≤⋅⊙⋅∘|⋅⋅∘)
  )
  +⬚0⊢⍜∩⍉⬚0≡▽ ≠0.
)
PartI ← /↧∧(StageI⊔)
PartI Tables Seeds

StageII ← ⬚0(|2
  ⊙.
  ≡(
    ⍘[⊙⊙∘]
    ⊃⊃⋅∘⋅+(-:)
    ×↧⊃(≥⊙⋅⋅∘|≤⋅⊙⋅∘|⋅⋅∘)
  )
  +⊢▽≠0.
)
Seeds
↯¯1_2
≡/[⊃⊙∘(+⊙⊙∘) ⊙(⊃-∘⌊÷2.)]
↯¯1_2
&p$"Spawning _ threads ..."⧻.
/↧wait≡spawn(
  /↧;;⍢(
    ⊙(-1)
    /↧∧(StageII⊔) Tables ⊃+⊙∘
    ⊃⋅⊙∘(⊂⊙⋅⋅∘)
  )⋅(>0) ⊓(∘|+1|[])⍘⊟
  &p$"Thread finished with _".
)
&fwa "Day 5 answers.txt" $"_\n_":
