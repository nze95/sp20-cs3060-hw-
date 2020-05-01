module Main where
data Suit = Spade | Hearts deriving (Show)
data Rank = Ten | Jack | Queen | King | Ace deriving (Show)
type Card = (Rank, Suit)
type Hand = [Card]

value :: Rank -> Integer
value Ten = 1
value Jack = 2
value Queen = 3
value King = 4
value Ace = 5

cardValue :: Card -> Integer
cardValue (rank,suit) = value rank

lowerCard :: Card -> Card -> Card
lowerCard x y = if (cardValue x < cardValue y) then x else y

sumValue :: Hand -> Integer
sumValue c = sum (map cardValue c)

higherHand :: Hand -> Hand -> Hand
higherHand x y = if (totalValue x > totalValue y) then x else y

main = print()