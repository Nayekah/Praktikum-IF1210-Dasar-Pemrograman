module ListOfCharacter where

-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Char: [ ] atau [e o List] atau [List o e]
   Definisi type List of Char
   Basis: List of Char kosong adalah list of Char
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Char di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Char di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
    konso :: Char -> [Char] -> [Char]
{- konso e lc menghasilkan sebuah list of character dari e (sebuah character)  
   dan lc (list of integer), dengan cc sebagai elemen pertama: e o lc -> lc' -}
-- REALISASI
    konso e lc = [e] ++ lc

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Char] -> Char
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Char] -> [Char]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [Char] -> Bool
-- isEmpty l true jika list of character l kosong
-- REALISASI
    isEmpty l = null l

    splitAltOdd :: [Char] -> [Char]
    splitAltOdd l
        | isEmpty l = [] -- Basis
        | mod (length l) 2 /= 0 = konso (head l) (splitAltOdd (tail l)) -- Rekurens
        | otherwise = splitAltOdd (tail l) -- Rekurens
    
    splitAltEven :: [Char] -> [Char]
    splitAltEven l
        | isEmpty l = [] -- Basis
        | mod (length l) 2 == 0 = konso (head l) (splitAltEven (tail l)) -- Rekurens
        | otherwise = splitAltEven (tail l) -- Rekurens
    
    splitAlternate :: [Char] -> ([Char],[Char])
    splitAlternate l
        | mod (length l) 2 /= 0 = (splitAltOdd l, splitAltEven l)
        | otherwise = (splitAltEven l, splitAltOdd l)