n = int(input())
x = int(input())
arr = list(map(int, input("").split()))

a = 0
b = 0
c = x

for i in range(n):
    if (arr[i] == x):
        a = x
    if (abs(arr[i]-x) > abs(c-x)):
        c = arr[i]
    if (abs(arr[i]-x) < abs(b-x) and arr[i] != x):
        b = arr[i]

if (a == 0):
    print("TIDAK ADA")
else:
    print(a)
print(b)
print(c)