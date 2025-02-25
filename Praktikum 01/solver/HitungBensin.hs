module HitungBensin where

    parameterBensin :: Int -> Int
    parameterBensin x
        | x == 1 = 0
        | mod x 2 == 0 = 1 + parameterBensin (div x 2)
        | otherwise = 1 + parameterBensin (3*x + 1)

    hitungBensin :: Int -> Int -> Int
    hitungBensin a b
        | a == b = parameterBensin a
        | otherwise = parameterBensin b + hitungBensin a (b-1)