--toDigits :: Integer -> [Integer]
--toDigits 0 = []
--toDigits x 
--   |x > 0 = y:toDigits z 
--   |otherwise = []
--   where
--   y = mod x 10
--   z = div x 10
--reverse toDigits in the main

toDigits :: Integer -> [Integer]
toDigits x = reverse (toDigits1 x)

toDigits1 :: Integer -> [Integer]
toDigits1 x = if x > 0 then (mod x 10):toDigits1(div x 10) else [] 