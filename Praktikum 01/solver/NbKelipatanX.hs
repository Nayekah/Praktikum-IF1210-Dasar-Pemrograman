module NbKelipatanX where

    nbKelipatanX :: Int -> Int -> Int -> Int
    nbKelipatanX m n x
        | m == n && mod m x == 0 = 1
        | m == n && mod m x /= 0 = 0
        | m /= n && mod m x == 0 = nbKelipatanX (m+1) n x + 1
        | m /= n && mod m x /= 0 = nbKelipatanX (m+1) n x