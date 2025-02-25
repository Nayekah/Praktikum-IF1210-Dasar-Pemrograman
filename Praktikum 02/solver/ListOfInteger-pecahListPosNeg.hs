module ListOfInteger where

-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
    konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
    konso e li = [e] ++ li

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

    pecahPos :: [Int] -> [Int]
    pecahPos l
        | isEmpty l = [] -- Basis
        | head l >= 0 = konso (head l) (pecahPos (tail l)) -- Rekurens
        | otherwise = pecahPos (tail l) -- Rekurens
    
    pecahNeg :: [Int] -> [Int]
    pecahNeg l
        | isEmpty l = [] -- Basis
        | head l < 0 = konso (head l) (pecahNeg (tail l)) -- Rekurens
        | otherwise = pecahNeg (tail l) -- Rekurens
    
    pecahListPosNeg :: [Int] -> ([Int],[Int])
    pecahListPosNeg l = (pecahPos l, pecahNeg l)