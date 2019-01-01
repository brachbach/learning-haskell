zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' xs ys

makeSublist :: a -> b -> [c]
makeSublist a b = [a,b] 

zip' :: [a] -> [b] -> [c]
zip' listA listB = zipWith makeSublist listA listB
