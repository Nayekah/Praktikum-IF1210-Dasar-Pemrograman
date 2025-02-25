def shortestDist(A, B):
    if not ('A' <= A <= 'Z' and 'A' <= B <= 'Z'):
        return "Tidak valid"
    else:
        distance = min(abs(ord(A) - ord(B)), 26 - abs(ord(A) - ord(B)))
        return distance

A = input().strip()
B = input().strip()

print(shortestDist(A, B))