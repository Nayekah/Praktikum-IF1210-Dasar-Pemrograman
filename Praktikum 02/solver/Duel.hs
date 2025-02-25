module Duel where

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [String] -> String
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [String] -> [String]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
    isEmpty :: [String] -> Bool
-- isEmpty l true jika list of string l kosong
-- REALISASI
    isEmpty l = null l

    duel :: [String] -> [String]
    duel li
        | isEmpty li = [] -- Basis
        | head li == "desperado" = "BANG" : duel(tail li) -- Rekurens
        | otherwise = (head li) : (duel (tail li)) -- Rekurens