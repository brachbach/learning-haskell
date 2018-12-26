import Data.Char
-- import System.IO
-- import qualified Data.Text as T

-- main = do  
--     contents <- readFile "input.txt"  
--     putStr ((reactAllPairs contents))

poly = "CXxRrcWhHoOwWtTwSsRApPWwarlYyFWHhJjJjbBTsSQqtBTtbTtwfoEeivVTtIOLwftTFQqWlaFfAGgoOMmQqyYwWWDdwyYnNBNnGgBbwWbiIZAappFjJfPYypPPzTtWwrYyRBuUbjUuJlLKhbBdDAaHkNnKZzKuUkzOoSXxnNsZtTfFIiUuHhkrRvNbBgGneAaEsCcSYyDOodVAanzOoZNJKkpPoOjXaRrAmMfFDaAdtTOfBbFAaFaobBOIiAFfUulLWwlLoOEBbRfyGgYNnFPOopgGhHLll"

swapCase :: Char -> Char
swapCase letter = if letter == toUpper(letter)
    then toLower(letter)
    else toUpper(letter)
findPairs :: [Char] -> [Int]
findPairs polymer = [i | (letter, i) <- zip polymer [0..], i < (length polymer) - 1, polymer !! (i + 1) == swapCase letter]
removeNChars :: Int -> Int -> [Char] -> [Char]
removeNChars start n charArray = take start charArray ++ drop (start + n) charArray
reactFirstPair :: [Char] -> [Char] 
reactFirstPair polymer = removeNChars ((findPairs polymer) !! 0) 2 polymer
reactAllPairs :: [Char] -> [Char]
reactAllPairs polymer = if length (findPairs polymer) == 0
    then polymer
    else reactAllPairs(reactFirstPair polymer)