fourFactorial :: Integer
fourFactorial = 4 * 3 * 2 * 1

brokenFactorial :: Integer -> Integer
brokenFactorial n = n * brokenFactorial (n - 1)

factorial :: Integer -> Integer
factorial n =
  if n == 1
    then 1
    else n * factorial(n - 1)

factorialPM :: Integer -> Integer
factorialPM 1 = 1
factorialPM n = n * factorialPM (n - 1)

