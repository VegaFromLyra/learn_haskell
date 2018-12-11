module Reverse where

rvrs :: String -> String
rvrs x = do
    let first_word = drop 9 x
    let second_word = take 2 (drop 6 x)
    let third_word = take 5 x
    first_word ++ " " ++ second_word ++ " " ++ third_word

main :: IO ()
main = print $ rvrs "Curry is awesome"
