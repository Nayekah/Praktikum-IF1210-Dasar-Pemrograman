module JamBangun where

    jamBangun :: Int -> Int -> Int -> (Bool,Int,Int,Int)
    jamBangun j m d =
        let ekspektasi = (7*3600) + (45*60)
            realita = (j*3600) + (m*60) + d
            selisih = abs(ekspektasi - realita)
        in
            if (j > 7 && m > 45 && d > 0) || j > 7 then (False, div selisih 3600, div (mod selisih 3600) 60, mod selisih 60)
            else if (j == 7 && m == 45 && d == 0) then (False, div selisih 3600, div (mod selisih 3600) 60, mod selisih 60)
            else (True, div selisih 3600, div (mod selisih 3600) 60, mod selisih 60)