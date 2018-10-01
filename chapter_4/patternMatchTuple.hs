tupleFunc :: (Int, [a])
          -> (Int, [a])
          -> (Int, [a])
tupleFunc (a, b) (c, d) = ((a + c), (b ++ d))
