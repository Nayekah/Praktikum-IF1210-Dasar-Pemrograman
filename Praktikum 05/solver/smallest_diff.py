N = int(input())
a = list(map(int, input().strip().split()))

selisihMinimum = float('inf')
    
for i in range(N):
    for j in range(i+1, N):
        selisih = abs(a[i] - a[j])
        if selisih < selisihMinimum:
            selisihMinimum = selisih
                
print(selisihMinimum)