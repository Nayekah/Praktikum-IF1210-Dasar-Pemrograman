module KonversiSuhu where

    konversiSuhu :: Float -> Char -> Float
    konversiSuhu t k
        | k == 'R' = 0.8*t
        | k == 'F' = (1.8*t) + 32
        | k == 'K' = t + 273.15