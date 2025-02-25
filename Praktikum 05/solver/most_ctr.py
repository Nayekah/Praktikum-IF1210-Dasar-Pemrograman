N = int(input())
A = list(map(int, input().strip().split()))
    
freq = {}
    
for num in A:
    if num in freq:
        freq[num] += 1
    else:
        freq[num] = 1
    
max_freq = 0
mode = 0
    
for num in freq:
    frqs = freq[num]
    if frqs > max_freq:
        max_freq = frqs
        mode = num
    elif frqs == max_freq:
        mode = min(mode, num)

print(mode)