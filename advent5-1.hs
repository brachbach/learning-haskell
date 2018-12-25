import Data.Char

swapCase :: Char -> Char
swapCase letter = if letter == toUpper(letter)
    then toLower(letter)
    else toUpper(letter)
findFirstPair :: [Char] -> Int
findFirstPair polymer = (take 1 [i | (letter, i) <- zip polymer [0..], polymer !! (i + 1) == swapCase letter]) !! 0
-- reactFirstPair :: [Char] -> [Char]
-- reactFirstPair polymer =  