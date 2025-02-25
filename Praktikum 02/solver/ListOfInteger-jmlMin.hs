module ListOfInteger where

-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
    isEmpty l = null l

    isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
    isOneElmt l = (length l) == 1 
    
    min2 :: Int -> Int -> Int
    min2 a b
        | a < b = a
        | otherwise = b

    minList :: [Int] -> Int
    minList l
        | isOneElmt l = head l -- Basis
        | otherwise = min2 (head l) (minList (tail l)) -- Rekurens

    nbX :: Int -> [Int] -> Int
    nbX x l
        | isEmpty l = 0 -- Basis
        | x == head l = nbX x (tail l) + 1  -- Rekurens
        | otherwise = nbX x (tail l) -- Rekurens

    jmlMin :: [Int] -> (Int,Int)
    jmlMin l = (minList l, nbX (minList l) l)