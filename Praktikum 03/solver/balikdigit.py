digits = int(input())

def reverse(digit):
    if digit < 0:
        tanda = -1
        digit = abs(digit)
    else:
        tanda = 1
    
    reversed = 0
    while digit > 0:
        count = digit % 10
        reversed = (reversed * 10) + count
        digit //= 10
    
    return tanda * reversed

print(reverse(digits))