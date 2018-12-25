doubleMe x = x + x

doubleSmall x = if x < 100
    then x * 2
    else x

sum' :: (Num a) => [a] -> a

sum' [] = 0
sum' (head:rest) = head + (sum' rest)