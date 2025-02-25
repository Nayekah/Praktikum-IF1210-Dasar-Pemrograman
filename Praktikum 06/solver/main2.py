import tester

tester.start("output.txt")
kalimat = input()

ctr = {'a': 0, 'i': 0, 'u': 0, 'e': 0, 'o': 0}
ct = 0
teks = ""

for chr in kalimat:
    if chr == ".":
        break
    teks += chr
    lower = chr.lower()
    if lower in ctr:
        ctr[lower] += 1
        ct += 1

if ct == 0:
    teks = "Tidak ada huruf"

file = open("output.txt", "w")

file.write(str(ctr['a']))
file.write(str(ctr['i']))
file.write(str(ctr['u']))
file.write(str(ctr['e']))
file.write(str(ctr['o']))
file.write("\n")
file.write(str(ct))
file.write("\n")
file.write(teks)

file.close()
tester.end("output.txt")