zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

makeSublist :: a -> a -> [a]
makeSublist x y = [x, y] 

zip' :: [a] -> [a] -> [[a]]
zip' listA listB = zipWith makeSublist listA listB

map' :: (a -> b) -> [a] -> [b]
map' f [] = []
map' f (x:xs) = f x : map' f xs

listify :: a -> [a]
listify a = [a]

makeCollatzChain :: (Integral a) => a -> [a]
makeCollatzChain 1 = [1]
makeCollatzChain x
    | even x = x : makeCollatzChain(x `div` 2)
    | otherwise = x : makeCollatzChain((x*3) + 1)
-- howManyLongerThan :: a -> a -> b
howManyLongerThan compLength maxNum = length [startNum | startNum <- [1..(maxNum + 1)], length(makeCollatzChain startNum) > compLength]

