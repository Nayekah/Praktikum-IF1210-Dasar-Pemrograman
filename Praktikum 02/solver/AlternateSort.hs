module AlternateSort where

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

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
    isEmpty l = null l

    isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
    isOneElmt l = (length l) == 1 

    getSmallest :: [Int] -> Int
    getSmallest l
        | isOneElmt l = head l -- Basis
        | head l <= getSmallest (tail l) = head l -- Rekurens
        | otherwise = getSmallest (tail l) -- Rekurens

    delElmt :: Int -> [Int] -> [Int]
    delElmt x l   
        | null l = [] -- Basis
        | head l == x = tail l -- Basis
        | otherwise = konso (head l) (delElmt x (tail l)) -- Rekurens

    sortList :: [Int] -> [Int]
    sortList l
        | isOneElmt l = l -- Basis
        | otherwise = konso (getSmallest l) (sortList (delElmt (getSmallest l) l)) -- Rekurens
    
    alternateSort :: [Int] -> [Int]
    alternateSort l =
        let li = sortList l
        in
            if length li <= 2 || isEmpty li then li -- Basis
            else [head li, last li] ++ alternateSort (tail (init li)) -- Rekurens