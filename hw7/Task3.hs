myFunction :: [Integer] -> Integer
myFunction [] = 0
myFunction (h:t) = if (h > 0) then 1 + myFunction t else myFunction t
main = print()