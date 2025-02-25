n = int(input())
arr = list(map(int, input("").split()))
ctopr = 0

for i in range(n):
    while arr[i] >= 10:
        digit = 0
        temp = arr[i]
        while temp > 0:
            digit += temp % 10
            temp //= 10
        arr[i] = digit
        ctopr += 1

print(ctopr)