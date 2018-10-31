data TisAnInteger =
  TisAn Integer

instance Eq TisAnInteger where
  (TisAn a) == (TisAn a') = a == a'


