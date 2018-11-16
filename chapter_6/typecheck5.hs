import Data.List (sort)

data Rocks =
  Rocks String deriving (Eq, Show)

data Yeah =
  Yeah Bool deriving (Eq, Show)

data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show)

rocks = Rocks "chases"
yeah = Yeah True
phew = Papu rocks yeah

phew' = Papu (Rocks "chases") (Yeah True)

truth = Papu (Rocks "chomskydoz") (Yeah True)

equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'

freud :: a -> a
freud x = x

myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX

jung :: Ord a => [a] -> a
jung xs = head (sort xs)

young :: [Char] -> Char
young xs = head (sort xs)

mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
signifier xs = head (mySort xs)
