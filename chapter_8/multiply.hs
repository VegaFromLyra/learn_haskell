multiply :: Integral a => a -> a -> a
multiply x y = sumTimes x (y - 1)
  where sumTimes p times
                  | times == 0 = p 
                  | otherwise = p + sumTimes p (times - 1)
