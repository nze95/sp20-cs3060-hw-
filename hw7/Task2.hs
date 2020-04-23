-- scan :: [Integer] -> [Integer]
-- scan [] = []
-- scan (h:t) = if (rem h 3 == 0) then h:scan t else scan t 
-- main = print()


scan x = (rem x 3 == 0)
main = do
   let y = filter scan [34,2,4,25,15,32]
   print y