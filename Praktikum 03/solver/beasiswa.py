ip = float(input())
pot = float(input())

if ip >= 3.5:
    print(4)
elif ip < 3.5 and pot < 1:
    print(1)
elif pot >= 1 and pot < 5:
        if ip >= 2 and ip <3.5:
             print(3)
        elif ip < 2:
             print(2)
else:
     print(0)