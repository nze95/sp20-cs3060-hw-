import Data.Char
import Data.List


--(b)

lowerCharCount :: [Char] -> Integer
lowerCharCount [] = 0
lowerCharCount (h:t) = if (isLower h) then 1 + lowerCharCount t else lowerCharCount t

--(c)

longStrCount :: [[Char]] -> Integer
longStrCount [] = 0
longStrCount (h:t) = if (length h > 4) then 1 + bar t else bar t

main = print()