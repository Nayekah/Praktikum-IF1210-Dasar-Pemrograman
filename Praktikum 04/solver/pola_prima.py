n = int(input())
if (n < 1):
    print("Tidak valid")
else:
    prime = [0 for i in range(n)]
    now = 0
    x = 2
    while (now != n):
        found = False
        while (not found):
            prima = True
            for j in range(2, x-1):
                if (x % j == 0):
                    prima = False
            if (prima):
                found = True
                prime[now] = x
                x += 1
                now += 1
            else:
                x += 1

    for i in range(n):
        output = ""
        for j in range(i, 0, -1):
            output += str(prime[j]) + " "
        for j in range(n-i-1):
            output += str(prime[j]) + " "
        output += str(prime[n-i-1])
        print(output)