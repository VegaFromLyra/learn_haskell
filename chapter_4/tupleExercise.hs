f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f firstTuple secondTuple =
  ((snd firstTuple, snd secondTuple), (fst firstTuple, fst secondTuple))

