zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

makeSublist :: a -> a -> [a]
makeSublist x y = [x, y] 

zip' :: [a] -> [a] -> [[a]]
zip' listA listB = zipWith makeSublist listA listB
