module SumKelipatanX where

    sumKelipatanX :: Int -> Int -> Int -> Int
    sumKelipatanX m n x
        | m > n = 0
        | mod m x == 0 = sumKelipatanX (m+1) n x + m
        | otherwise = sumKelipatanX (m+1) n x