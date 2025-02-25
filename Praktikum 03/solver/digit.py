digits = [0 for i in range(10)]
ct = 0

while ct < 100:
    num = int(input())

    if num < 0:
        break
    ct += 1

    strFmt = str(num)
    for digit in strFmt:
        intFmt = int(digit)
        digits[intFmt] += 1

print(ct)

for ans in range(10):
    if digits[ans] > 0:
        print(str(ans), ':', str(digits[ans]))