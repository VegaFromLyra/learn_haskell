data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (TisAn a) == (TisAn a') = a == a'

data TwoIntegers =
  Two Integer Integer

instance Eq TwoIntegers where
  (Two a b) == (Two a' b') = a == a' && b == b'

data StringOrInt =
    TisAnInt   Int
  | TisAString String

data Pair a =
  Pair a a

instance Eq a => Eq (Pair a) where
  (Pair a1 a2) == (Pair a1' a2') = a1 == a1' && a2 == a2'

data Tuple a b =
  Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (Tuple a b) == (Tuple a' b') = a == a' && b == b'

data Which a =
    ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
  (ThisOne a | ThatOne b) == (ThisOne a' | ThatOne b') = (a == a') || (b == b')
