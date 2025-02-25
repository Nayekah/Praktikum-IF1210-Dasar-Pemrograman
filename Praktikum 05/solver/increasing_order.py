def isSorted(arr):
    for i in range(len(arr) - 1):
        if arr[i] > arr[i + 1]:
            return False
    return True

def Rotasi(n, arr):
    if isSorted(arr):
        return 0
    for i in range(1, n):
        arr = [arr[-1]] + arr[:-1]
        if isSorted(arr):
            return i
    return "Tidak"

N = int(input())
A = list(map(int, input().strip().split()))

print(Rotasi(N, A))