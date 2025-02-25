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

    isEqual :: [Int] -> [Int] -> Bool
    isEqual l1 l2
        | isEmpty l1 && isEmpty l2 = True -- Basis
        | (isEmpty l1 && not (isEmpty l2)) || (not (isEmpty l1) && isEmpty l2) = False -- Basis
        | otherwise = (head l1 == head l2) && (isEqual (tail l1) (tail l2)) -- Rekurens