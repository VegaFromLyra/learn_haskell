module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n =
  case n of
    0 -> "zero"
    1 -> "one"
    2 -> "two"
    3 -> "three"
    4 -> "four"
    5 -> "five"
    6 -> "six"
    7 -> "seven"
    8 -> "eight"
    9 -> "nine"
    _ -> "bla?"

-- 123 -> [1, 2, 3]
digits :: Int -> [Int]
digits n = (reverse . repeat) n
  where repeat num
                | num <= 0 = []
                | otherwise = [ snd (divMod num 10) ] ++ repeat (fst (divMod num 10))

wordNumber :: Int -> String
wordNumber n = undefined
