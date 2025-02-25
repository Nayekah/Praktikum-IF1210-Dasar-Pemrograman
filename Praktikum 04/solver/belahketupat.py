# Program BelahKetupat
# Input: N : integer
# Output: Jika N > 0 dan ganjil, gambar belah ketupat sesuai dengan N
#         Jika tidak, tampilkan pesan kesalahan: 

def GambarBelahKetupat(N):
# I.S. N > 0 dan N ganjil
# F.S. Gambar belah ketupat dengan panjang diagonal mendatar sebesar N
#      sesuai spesifikasi soal
    for i in range(N):
        if i < N // 2 + 1:
            print(" " * (N // 2 - i) + "*" * (2 * i + 1))
        else:
            print(" " * (i - N // 2) + "*" * (N - 2 * (i - N // 2)))

def IsValid(N):
# menghasilkan true jika N positif dan ganjil, false jika tidak
    return N > 0 and N % 2 != 0

# ALGORITMA PROGRAM UTAMA
N = int(input())
if IsValid(N): # lengkapi dengan pemanggilan fungsi IsValid
    # lengkapi dengan pemanggilan prosedur GambarBelahKetupat
    GambarBelahKetupat(N)
else: # N tidak positif atau N tidak ganjil
    print("Masukan tidak valid")
