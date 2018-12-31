-- not good enough at Haskell yet to get this to work, but should be able to get it eventually
-- in the meantime, I learned something from this exercise
-- type comparer (Num first Num second Bool isFirstGreater) => first -> second -> isFirstGreater
-- findMostest :: ([Num] things Num thing) => comparer -> things -> mostestThing
-- findMostest comparer [] = error "Can't find mostest of empty list"
-- findMostest comparer [thing] = thing
-- findMostest comparer (currentThing:otherThings)
--     | (comparer thing mostestSoFar) = thing
--     | otherwise = mostestSoFar
--     where mostestSoFar = findMostest otherThings

replicate' :: (Num numCopies, Ord numCopies) => el -> numCopies -> [el]
replicate' el numCopies
    | numCopies == 0 = []
    | otherwise = el:copiesListSoFar
    where copiesListSoFar = replicate' el (numCopies - 1) 