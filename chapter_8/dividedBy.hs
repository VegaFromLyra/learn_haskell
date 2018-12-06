data DividedResult a = Result a | DividedByZero deriving Show

dividedBy1 :: Integral a => a -> a -> DividedResult (a, a)
dividedBy1 num denom = go num denom 0
  where go n d count
          | d == 0 = DividedByZero
          | n < d = Result (count, n)
          | otherwise = go (n - d) d (count + 1)

data DividedResult' a = Result' (a, a) | DividedByZero' deriving Show

dividedBy2 :: Integer -> Integer -> DividedResult' Integer
dividedBy2 num denom = go num denom 0
  where go n d count
          | d == 0 = DividedByZero'
          | n < d = Result' (count, n)
          | otherwise = go (n - d) d (count + 1)

dividedBy3 :: Integral a => a -> a -> Maybe (a, a)
dividedBy3 num denom = sign num denom (go num denom 0)
  where go n d count
          | d == 0 = Nothing
          | abs n < abs d = Just (count, n)
          | otherwise = go ((abs n) - (abs d)) (abs d) (count + 1)
        sign _ _ Nothing = Nothing
        sign n d (Just(a,b)) = if (n * d) < 0 then negativeProduct else positiveProduct
          where negativeProduct = Just ((-1) * a, b)
                positiveProduct = Just (a, b)

