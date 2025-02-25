x = int(input())
y = int(input())

fn = y // 3 + y // 4 - y // 12
fx = (x - 1) // 3 + (x - 1) // 4 - (x - 1) // 12

ans = fn - fx

if ans <= 0:
    print("Tidak Ada")
else:
    print(ans)