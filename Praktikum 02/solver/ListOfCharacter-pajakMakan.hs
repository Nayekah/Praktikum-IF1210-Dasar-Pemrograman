module ListOfCharacter where

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

-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

   pajakMakan :: [Char] -> [Int] -> [Char]
   pajakMakan makanan harga
      | null makanan || null harga = [] -- Basis
      | ((head harga) + div (head harga) 10) <= 200 = konso (head makanan) (pajakMakan (tail makanan) (tail harga)) -- Rekurens
      | otherwise = pajakMakan (tail makanan) (tail harga) -- Rekurens