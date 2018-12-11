let g :: a -> b -> c -> b

g 0 'c' "woot"

a -> b -> c -> b 0 'c' "woot"

b -> c -> b 'c' "woot"

c -> 'c' "woot"

"woot" -> 'c'
