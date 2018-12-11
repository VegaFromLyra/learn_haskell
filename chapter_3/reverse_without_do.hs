module Reverse where

rvrs :: String -> String
rvrs x = thirdWord ++ secondWord ++ firstWord
  where thirdWord = drop 9 x
        secondWord = take 4 (drop 5 x)
        firstWord = take 5 x

main :: IO ()
main = print $ rvrs "Curry is awesome"
