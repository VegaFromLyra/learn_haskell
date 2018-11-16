chk :: Eq b => (a -> b) -> a -> b -> Bool
chk aTob a b = ((aTob) a) == b


arith :: Num b
      => (a -> b)
      -> Integer
      -> a
      -> b
arith aTob num a = (aTob a) + (aTob a)
