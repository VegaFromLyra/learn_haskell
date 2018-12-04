f :: Ord a => a -> a -> Bool
f x y = if x > y then True else False

f1 :: a -> a
f1 x = x

tensDigit :: Integral a => a -> a
tensDigit x = d
  where (xLast, _) = x `divMod` 10
        (_, d)     = xLast `divMod` 10

hundredsDigit :: Integral a => a -> a
hundredsDigit x = d2
  where (xLast, _) = x `divMod` 100
        (_, d2)    = xLast `divMod` 10


foldBoolPatternMatch :: a -> a -> Bool -> a
foldBoolPatternMatch x _ False = x
foldBoolPatternMatch _ y True = y

foldBoolCase :: a -> a -> Bool -> a
foldBoolCase x y z =
  case z of
    False -> x
    True -> y

foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y z
  | z == False = x
  | otherwise = y


g :: (a -> b) -> (a, c) -> (b, c)
g f (x, y) = (f x, y)

