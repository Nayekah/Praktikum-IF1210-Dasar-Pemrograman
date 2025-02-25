def count_words(row):
    words = row.split()
    count = []

    for word in words:
        found = False
        for ct in count:
            if ct[0] == word:
                ct[1] += 1
                found = True
                break
        if not found:
            count.append([word, 1])

    return count
  
def find_common(list1, list2):
    common_words = []

    for freqs1 in list1:
        word1, freq1 = freqs1
        for freqs2 in list2:
            word2, freq2 = freqs2
            if word1 == word2:
                common_words.append((word1, freq1, freq2))

    return common_words

############################################################
import tester

tester.start("input.txt")
file = open("input.txt", "r")
row1 = file.readline().strip()
row2 = file.readline().strip()

list1 = count_words(row1)
list2 = count_words(row2)

common_words = find_common(list1, list2)
if not common_words:
    print("Tidak ada kata yang sama")
else:
    for word, freq1, freq2 in common_words:
        print("{},{},{}".format(word, freq1, freq2))

file.close()
tester.end("input.txt")