arr = []
valid = True
while valid:
    num = int(input())
    if num == -9999:
        valid = False
    arr.append(num)

smallest = 1
operate = True
while operate:
    if smallest in arr:
        smallest += 1
    else:
        found = False
        for i in range(len(arr)):
            for j in range(i + 1, len(arr)):
                if arr[i] + arr[j] == smallest:
                    found = True
                    break
            if found:
                break

        if not found:
            break
        smallest += 1

print(smallest)