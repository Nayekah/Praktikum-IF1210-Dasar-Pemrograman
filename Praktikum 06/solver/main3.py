import tester

tester.start("input.csv")

def sort(arr):
    for i in range(len(arr)):
        for j in range(0, len(arr) - i - 1):
            if int(arr[j]) > int(arr[j + 1]):
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
    return arr

file = open("input.csv", "r")
data = [line.strip("\n").split(",") for line in file]

lulus = 0
umur = []

for row in data[1:]:
    if int(row[3]) > 75:
        lulus += 1
    umur.append(row[2])

age_minima = sort(umur)

print(lulus)
print(age_minima[1])

file.close()
tester.end("input.csv")