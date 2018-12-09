inc :: Num a => a -> a
inc = (+1)

three = (inc . inc . inc) 0

increaseTimes :: (Eq a, Num a) => a -> a -> a
increaseTimes 0 n = n
increaseTimes times n = 1 + (increaseTimes (times - 1) n)

increaseTimes' :: (Eq a, Num a) => a -> a -> a
increaseTimes' 0 n = n
increaseTimes' times n = (inc . increaseTimes (times - 1)) n

applyTimes :: (Eq a, Num a) => a -> (b -> b) -> b -> b
applyTimes 0 f b = b
applyTimes n f b = f . applyTimes (n - 1) f $ b

{-applyTimes 5 (+1) 5 =-}
  {-(+1) . applyTimes 4 (+1) $ 5-}
  {-(+1) . (+1) . applyTimes 3 (+1) $ 5-}
  {-(+1) . (+1) . (+1) . applyTimes 2 (+1) $ 5-}
  {-(+1) . (+1) . (+1) . (+1) . applyTimes 1 (+1) $ 5-}
  {-(+1) . (+1) . (+1) . (+1) . (+1) . applyTimes 0 (+1) $ 5-}

