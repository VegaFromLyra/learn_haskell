module Exercise where

addExclamation :: String -> String
addExclamation s = s ++ "!"

extract5thLetter :: String -> String
extract5thLetter s = head (drop 4 s) : ""

drop9Letters :: String -> String
drop9Letters s = drop 9 s

thirdLetter :: String -> Char
thirdLetter s = s !! 2

letterIndex :: Int -> Char
letterIndex index = "Vim is awesome" !! (index - 1)

reverse_this_sentence :: String
reverse_this_sentence = do
    let s = "Curry is awesome"
    let first_word = drop 9 s
    let second_word = take 2 (drop 6 s)
    let third_word = take 5 s
    first_word ++ " " ++ second_word ++ " " ++ third_word
