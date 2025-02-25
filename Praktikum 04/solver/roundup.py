n = int(input())

if (n <= 0 or n > 100):
    print("Tidak valid")
else:
    arr = list(map(int, input("").split()))
    x = int(input())

    st = 1001
    nd = 1001

    for elmt in arr:
        if elmt > x:
            if elmt < st:
                nd = st
                st = elmt
            elif elmt < nd:
                nd = elmt

    if nd != 1001:
        print(nd)
    else:
        print(-1)