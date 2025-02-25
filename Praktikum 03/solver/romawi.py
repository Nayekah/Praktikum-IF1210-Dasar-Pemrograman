romans = {
    'I' : 1,
    'V' : 5,
    'X' : 10,
    'L' : 50,
    'C' : 100,
    'D' : 500,
    'M' : 1000
}
 
roman = str(input())

ans = 0
length = len(roman)

for i in range(length):
    ct = roman[i]
    if (i + 1 < length and romans[roman[i + 1]] > romans[ct]):
        ans -= romans[ct]
    else:
        ans += romans[ct] 

print(ans)