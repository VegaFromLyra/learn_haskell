mTh x y z = x * y * z

mTh1 x y = \z -> x * y * z

mTh2 x = \y -> \z -> x * y * z

mTh3 = \x -> \y -> \z -> x * y * z

addOne = \x -> x + 1

addOneIfOdd n = case odd n of
  True -> (\x -> x + 1) n
  False -> n

addFive = \x -> \y -> (if x > y then y else x) + 5

mFlip1 f = \x -> \y -> f y x

mFlip2 f x y = f y x
